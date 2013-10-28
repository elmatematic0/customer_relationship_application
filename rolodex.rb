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


end


