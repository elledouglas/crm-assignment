require_relative 'contact.rb'

class CRM

  def initialize(name)
    @name = name
  end

  def main_menu
    while true # repeat indefinitely
      print_main_menu
      user_selected = gets.to_i
      call_option(user_selected)
    end
  end

  def print_main_menu
    puts '[1] Add a new contact'
    puts '[2] Modify an existing contact'
    puts '[3] Delete a contact'
    puts '[4] Display all the contacts'
    puts '[5] Search by attribute'
    puts '[6] Exit'
    puts 'Enter a number: '
  end

  def call_option(user_selected)
    case user_selected
    when 1 then add_new_contact
    when 2 then modify_existing_contact
    when 3 then delete_a_contact
    when 4 then display_all_the_contacts
    when 5 then search_by_attribute
    when 6 then exit
    end
  end

  def add_new_contact
    print 'Enter First Name: '
    first_name = gets.chomp

    print 'Enter Last Name: '
    last_name = gets.chomp

    print 'Enter Email Address: '
    email = gets.chomp

    print 'Enter a Note: '
    notes = gets.chomp

    Contact.create(first_name, last_name, email, notes)
  end

  def modify_existing_contact
    print 'Enter the name of the contact: '
     value = gets.chomp
     contact_to_edit = Contact.find_by(value)
    print contact_to_edit

    print 'Enter the vlaue you want to change: '
      value_to_change = gets.chomp

    print 'Enter the new vlaue : '
      new_value_to_use = gets.chomp
      contact_to_edit.update(value_to_change, new_value_to_use)
  end

  def delete_contact
    print "Enter the name of the contact "
    contact_delete = gets.chomp
    contact_to_delete = Contact.find_by(contact_delete)

  end

  def display_all_contacts
    Contact.all
  end

  def search_by_attribute

  end


end


puts list = CRM.new("lol")

puts list.add_new_contact
puts list.display_all_contacts
puts list.delete_contact
