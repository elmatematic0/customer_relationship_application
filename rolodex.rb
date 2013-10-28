class Rolodex
	@rolodex_contacts = []
	@id = 1000

		def self.rolodex_contacts
			@rolodex_contacts
		end

		def self.id
			@id
		end

		def self.add_contact(contact)
			contact.id = @id
			@rolodex_contacts << contact
			puts id
			@id += 1
				end
		def self.delete_selected_contact(delete_id)
			@rolodex_contacts.find do |x| if x.id.to_i == delete_id 
				puts "are you sure you want to delete #{delete_id}? (Y/N)"
				final_delete = gets.chomp
					if final_delete.downcase == "y"
					rolodex_contacts.delete_if { |i| i.id.to_i == delete_id }
					end
				end
			end
		end

		def self.modify_selected_contact(modify_id)
			@rolodex_contacts.find do |x| if x.id.to_i == modify_id 
				puts "Are you sure you want to modify #{modify_id}? (Y/N)"
				final_modify = gets.chomp
					if final_modify.downcase == "y"
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
				          puts "Enter the new first name now: "
				          new_fname = gets.chomp
				          x.fname = new_fname

				        else
				          puts "Cancelling edit first name. Returning to main menu..."
				          sleep 3
				          main_menu
				        end
				    when 2
				      puts "You selected last name."
				      puts "Type 'yes' to confirm, or 'no' to cancel"
				      lname_modify = gets.chomp
				        if lname_modify.downcase == "yes"
				          puts "Enter the new last name now: "
				          new_lname = gets.chomp
				          x.lname = new_lname
				        else
				          puts "Cancelling edit last name. Returning to main menu..."
				          sleep 3
				          main_menu
				        end
				    when 3
				      puts "You selected email address"
				      puts "Type 'yes' to confirm, or 'no' to cancel"
				      email_modify = gets.chomp
				        if email_modify.downcase == "yes"
				          puts "Enter the new email now: "
				          new_email = gets.chomp
				          x.email = new_email
				        else
				          puts "Cancelling edit email address. Returning to main menu..."
				          sleep 3
				          main_menu
				        end
				    when 4
				      puts "You selected notes"
				      puts "Type 'yes' to confirm, or 'no' to cancel"
				      note_modify = gets.chomp
				        if note_modify.downcase == "yes"
				          puts "Enter the new note now: "
				          new_note = gets.chomp
				          x.note = new_note
				        else
				          puts "Cancelling edit notes. Returning to main menu..."
				          sleep 3
				          main_menu
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
				end
			end
		end	
end


