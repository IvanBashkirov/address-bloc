require_relative 'entry'
require 'csv'

class AddressBook
  attr_accessor :entries

  def initialize
    self.entries = []
  end

  def iterative_search(name)
    @entries.each do |entry|
      return entry if entry.name == name
    end

    return nil
   end

  def binary_search(name)
    lower = 0
    upper = @entries.length - 1

    while lower <= upper

      mid = (lower + upper) / 2
      mid_name = @entries[mid].name

      if mid_name == name
        return @entries[mid]
      elsif mid_name > name
        upper = mid - 1
      else
        lower = mid + 1
      end
    end

    nil
  end

  def import_from_csv(file_name)
    csv_text = File.read(file_name)
    csv = CSV.parse(csv_text, headers: true, skip_blanks: true)
    csv.each do |row|
      row_hash = row.to_hash
      add_entry(row_hash['name'], row_hash['phone_number'], row_hash['email'])
    end
  end

  def add_entry(name, phone_number, email)
    index = 0
    entries.each do |entry|
      break if name < entry.name
      index += 1
    end
    entries.insert(index, Entry.new(name, phone_number, email))
  end

  def remove_entry(name, phone_number, email)
    entries.delete_if { |x| (x.name == name) && (x.phone_number == phone_number) && (x.email == email) }
  end
end
