class Entry

  def initialize(name,phone_number,email)
    self.name = name
    self.phone_number = phone_number
    self.email = email
  end

  def to_s
    return "Name: #{name}\nPhone Number: #{phone_number}\nEmail: #{email}"
  end

  attr_accessor :name, :phone_number, :email
end
