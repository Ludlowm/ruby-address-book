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
      expect(test_phone.number).to(eq("5038675309"))
    end
  end
end

describe(Email) do
  describe('initialize') do
    it('creates a new email address') do
      test_email = Email.new({
        :address => "bobhendley@gmail.com",
        :type => "work"
      })
      expect(test_email.address).to(eq("bobhendley@gmail.com"))
    end
  end
end

describe(Address) do
  describe('initialize') do
    it('creates a new address') do
      test_address = Address.new({
        :street => "5679 Main Drive",
        :state => "MI",
        :type => "work",
        :city => "Kansas City",
        :zip => "87201"
      })
      expect(test_address.street).to(eq("5679 Main Drive"))
    end
  end
end

describe(Contact) do
  describe('initialize') do
    it('creates a new contact') do
      test_phone = Phone.new({
        :area_code => "503",
        :number => "5038675309",
        :type => "personal"
      })
      test_email = Email.new({
        :address => "bobhendley@gmail.com",
        :type => "work"
      })
      test_address = Address.new({
        :street => "5679 Main Drive",
        :state => "MI",
        :type => "work",
        :city => "Kansas City",
        :zip => "87201"
      })
      test_contact = Contact.new({
        :first_name => "Sylvester",
        :last_name => "James",
        :job_title => "Mayor",
        :company => "Kansas City",
        :mailing_address_list => [test_address],
        :phone_num_list => [test_phone],
        :email_list => [test_email]
      })
      expect(test_contact.first_name).to(eq("Sylvester"))
    end
  end
end
