require 'rspec'
require 'contact'


describe(Phone) do
  describe('initialize') do
    it('creates a new phone number') do
      test_phone = Phone.new({
        :area_code => "503",
        :number => "5038675309",
        :type => "personal"
      })
      expect(test_phone.number).to(eq("8675309"))
    end
  end
end
# describe(Email) do
#   describe('initialize') do
#     it('creates a new email address') do
#       test_email = Email.new({
#         :address => "testemail@gmail.com",
#         :type => "work"
#       })
#       expect(test_email.address).to(eq("testemail@gmail.com"))
#     end
#   end
# end
