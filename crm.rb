require_relative "rolodex"
require_relative "contact"

class CRM
  attr_accessor :name
    

  def initialize(name)
    self.name = name
  end

  def main_menu
    puts "[1] Add a new contact"
    puts "[2] Modify an existing contact"
    puts "[3] Delete a contact"
    puts "[4] Display all the contacts"
    puts "[5] Display an attribute" 
    puts "[6] Exit"
    puts "Enter a number: "
    user_selected = gets.chomp.to_i
    call_option(user_selected) 
  end

  def call_option(user_selected)
    case user_selected
    when 1
      add_new_contact
    when 2
      modify_existing_contact
    when 3
      delete_contact
    when 4
      display_all_contacts
    when 5
      display_attribute
    when 6
      exit_application
    else
      puts "Entry not recognized. Please try again..."
      sleep 2
      main_menu
    end
  end

  def add_new_contact
  	puts "Please enter first name: "
  	fname = gets.chomp
  	puts "Please enter last name: "
  	lname = gets.chomp
  	puts "Please enter email address: "
  	email = gets.chomp
  	puts "Please enter a note: "
  	note = gets.chomp	
    contact = Contact.new(fname, lname, email, note)
    Rolodex.add_contact(contact)
    puts Rolodex.rolodex_contacts
    puts "Would you like add another contact? (Y/N)"
    another_contact = gets.chomp
    if another_contact.downcase == "y" 
      add_new_contact
    else
    main_menu 
    end
  end

  def modify_existing_contact
    puts "What the ID that you want to modify?"
    modify_id = gets.chomp.to_i
    Rolodex.modify_selected_contact(modify_id)
    main_menu    
  end
    
  def delete_contact
    puts "What is the ID of the record you wish to delete?"
    delete_id = gets.chomp.to_i
    Rolodex.delete_selected_contact(delete_id)
    main_menu
  end

  def display_all_contacts
    puts "ready to display all contacts?"
    Rolodex.rolodex_contacts.each {|contact| puts "ID: #{contact.id}, First Name: #{contact.fname}, Last Name: #{contact.lname}, Email: #{contact.email}, Notes: #{contact.note}"}
    main_menu  
  end

  def display_attribute
    puts "Which attribute would you like to see?"
    puts "[1] ID"
    puts "[2] First name"
    puts "[3] Last name"
    puts "[4] Email address"
    puts "[5] Notes"
    puts "---------------------"
    puts "[9] Return to main menu"
    attribute_selection = gets.chomp.to_i
    case attribute_selection
    when 1
      Rolodex.rolodex_contacts.each {|contact| puts contact.id}
      sleep 2
      display_attribute
    when 2
      Rolodex.rolodex_contacts.each {|contact| puts contact.fname}
      sleep 2
      display_attribute
    when 3
      Rolodex.rolodex_contacts.each {|contact| puts contact.lname}
      sleep 2
      display_attribute
    when 4
      Rolodex.rolodex_contacts.each {|contact| puts contact.email}
      sleep 2
      display_attribute
    when 5
      Rolodex.rolodex_contacts.each {|contact| puts contact.note}
      sleep 2
      display_attribute
    when 9
      main_menu
    else
      puts "Entry not recognized. Try again..."
      sleep 2
      display_attribute
    end
  end

  def exit_application
    exit
  end

end

my_crm = CRM.new("My CRM")

my_crm.main_menu




# puts contact.fname

#puts Rolodex.add_contact(contact)
# puts Rolodex.rolodex_contacts
#puts contact.email
#puts Rolodex.add_contact(contact)





	



	





