class Contact
    attr_accessor :first_name, :last_name, :email, :note
    attr_reader :id
  @@contacts = []
@@next_id=1
def initialize(first_name, last_name, email, note = "N/A")
    @first_name = first_name
    @last_name = last_name
    @email = email
    @note = note
    @id = @@next_id
     @@next_id= @@next_id+1
  end

def self.create(first_name, last_name, email, note)
      new_contact = Contact.new(first_name, last_name, email, note)
      @@contacts << new_contact
      new_contact
end


def self.all
@@contacts
end

  # This method should accept an id as an argument
  # and return the contact who has that id
  def self.find(id)
    @@contacts.each do |contact|
      if contact.id == id
    return contact
end
end
end

  def update(attribute, value)
     if attribute == 'first_name'
        self.first_name = value

    elsif attribute == 'last_name'
      self.last_name = value

    elsif attribute == 'email'
      self.email = value

    elsif attribute == 'note'
      self.note = value
end
end

def self.find_by(attribute, value)
 @@contacts.each do |contact|
   if attribute == 'first_name' && contact.first_name == value
      return contact
    elsif attribute == 'last_name' && contact.last_name == value
      return contact
    elsif attribute == 'email' && contact.email == value
      return contact
    elsif attribute == 'note' && contact.note == value
      return contact
  end
end
end

  def self.delete_all
    @@contacts.clear
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end

  # This method should delete the contact
  # HINT: Check the Array class docs for built-in methods that might be useful here
  def delete
    @@contacts.delete(self)
  end


end
