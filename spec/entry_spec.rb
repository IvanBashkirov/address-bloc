require_relative '../models/entry'
RSpec.describe Entry do

   describe "attributes" do
     let(:entry) {entry = Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')}
     it "responds to name" do
       expect(entry).to respond_to(:name)
     end

     it "responds to phone number" do
       expect(entry).to respond_to(:phone_number)
     end

     it "responds to email" do
       expect(entry).to respond_to(:phone_number)
     end

     it "reports name" do
       expect(entry.name).to eq('Ada Lovelace')
     end

     it "reports phone number" do
       expect(entry.phone_number).to eq('010.012.1815')
     end

     it "reports email" do
       expect(entry.email).to eq("augusta.king@lovelace.com")
     end
   end

   describe "#to_s" do
     it "displays as a string" do
       entry = Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
       expected_string = "Name: Ada Lovelace\nPhone Number: 010.012.1815\nEmail: augusta.king@lovelace.com"

       expect(entry.to_s()).to eq(expected_string)

     end
   end
end