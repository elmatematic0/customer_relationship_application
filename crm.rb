require_relative "rolodex"
require_relative "contact"

class CRM
  attr_accessor :name
    

  def initialize(name)
    @name = name
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
      puts "Try again. "
      main_menu
    end
  end

  def add_new_contact
  	puts "Please enter first name: "
  	fname = gets.chomp
  	puts "Please enter last name: "
  	lname = gets.chomp
  	puts "Please enter your email: "
  	email = gets.chomp
  	puts "Please enter a note: "
  	note = gets.chomp	
    contact = Contact.new(fname, lname, email, note)
  end

  def modify_existing_contact
    puts "Which attribute would you like to modify?"
    puts "[1] First Name?"
    puts "[2] Last Name?"
    puts "[3] Email Address"
    puts "[4] Notes?"
    puts "[5] To exit modify contacts and return to the main menu"
    user_selected_modified = gets.chomp.to_i 
    case user_selected_modified
    when 1
      puts "You selected first name."
      puts "Type 'yes' to confirm, or 'no' to cancel"
      fname_modify = gets.chomp
        if fname_modify.downcase == "yes"
          puts "OK. Modifying first name, now."
        else
          puts "Cancelling edit first name. Returning to modify existing contact..."
          sleep 3
          modify_existing_contact
        end
    when 2
      puts "You selected last name."
      puts "Type 'yes' to confirm, or 'no' to cancel"
      lname_modify = gets.chomp
        if lname_modify.downcase == "yes"
          puts "OK. Modifying last name, now."
        else
          puts "Cancelling edit last name. Returning to modify existing contact..."
          sleep 3
          modify_existing_contact
        end
    when 3
      puts "You selected email address"
      puts "Type 'yes' to confirm, or 'no' to cancel"
      email_modify = gets.chomp
      if email_modify.downcase == "yes"
          puts "OK. Modifying email address, now."
        else
          puts "Cancelling edit email address. Returning to modify existing contact..."
          sleep 3
          modify_existing_contact
        end
    when 4
      puts "You selected notes"
      puts "Type 'yes' to confirm or 'no' to cancel"
      notes_modify = gets.chomp
      if notes_modify.downcase == "yes"
          puts "OK. Modifying notes, now."
        else
          puts "Cancelling edit notes. Returning to modify existing contact..."
          sleep 3
          modify_existing_contact
        end
    when 5
      main_menu
    else
      puts "Entry not recognized. Enter 1 to try again, or 2 to return to the main menu. "
      modify_redirect = gets.chomp.to_i
        if modify_redirect == 1
          modify_existing_contact
        elsif modify_redirect == 2
          main_menu
        else
          puts "Entry not recognized. Returning to main menu."
          main_menu
        end
    end
  end


  def delete_contact
    puts "ready to delete a contact?"
  end

  def display_all_contacts
    puts "ready to display all contacts?"
  end

  def display_attribute
    puts "ready to display an attribute?"
  end

  def exit_application
    puts "ready to exit the application?"
  end

end

my_crm = CRM.new("My CRM")
my_crm.main_menu



#contact = Contact.new(fname,lname,email,note)
# puts contact.fname

#puts Rolodex.add_contact(contact)
# puts Rolodex.rolodex_contact
#puts contact.email
#puts Rolodex.add_contact(contact)





	



	





