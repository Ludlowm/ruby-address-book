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
  describe('add_address') do
    it('adds an additional address to a given contact') do
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
      new_address = Address.new({
        :street => "123 Test St",
        :state => "MI",
        :type => "work",
        :city => "Kansas City",
        :zip => "87201"
      })
      test_contact.add_address(new_address)
      expect(test_contact.mailing_address_list[1].street).to(eq("123 Test St"))
    end
  end
  describe('add_email') do
    it('adds an additional email to a given contact') do
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
      new_email = Email.new({
        :address => "slymayor123@gmail.com",
        :type => "personal"
      })
      test_contact.add_email(new_email)
      expect(test_contact.email_list[1].address).to(eq("slymayor123@gmail.com"))
    end
  end
  describe('add_phone') do
    it('adds an additional phone number to a given contact') do
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
      new_phone = Phone.new({
        :area_code => "503",
        :number => "12345",
        :type => "work"
      })
      test_contact.add_phone(new_phone)
      expect(test_contact.phone_num_list[1].number).to(eq("12345"))
    end
  end
end
