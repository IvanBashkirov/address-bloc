require_relative 'entry'

class AddressBook
  attr_accessor :entries

  def initialize
    self.entries = []
  end


  def add_entry(name, phone_number, email)
    index = 0
    entries.each do |entry|
      if name < entry.name
        break
      end
      index+= 1
    end
    entries.insert(index, Entry.new(name, phone_number, email))
  end

  def remove_entry(name, phone_number, email)
    entries.delete_if {|x| x.name == name and x.phone_number == phone_number and x.email == email}
  end
end
