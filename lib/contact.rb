require('pry')

class Contact
  @@contacts = []
  attr_reader(:first_name,
  :last_name,
  :job_title,
  :company,
  :address_list,
  :phone_list,
  :email_list)

  def Contact.save (contact)
    @@contacts.push(contact)
  end

  def initialize (parameters)
    @first_name = parameters.fetch(:first_name)
    @last_name = parameters.fetch(:last_name)
    @job_title = parameters.fetch(:job_title)
    @company = parameters.fetch(:company)
    @address_list = [Address.new(parameters.fetch(:address_params))]
    @phone_list = [Phone.new(parameters.fetch(:phone_params))]
    @email_list = [Email.new(parameters.fetch(:email_params))]
  end

  def add_address (address)
    @address_list.push(address)
  end

  def add_email (email)
    @email_list.push(email)
  end

  def add_phone (phone)
    @phone_list.push(phone)
  end
end

class Phone
  attr_reader(:area_code, :number, :type)
  def initialize (parameters)
    @area_code = parameters.fetch(:area_code)
    @number = parameters.fetch(:number)
    @type = parameters.fetch(:type)
  end
end

class Email
  attr_reader(:address, :type)
  def initialize (parameters)
    @address = parameters.fetch(:address)
    @type = parameters.fetch(:type)
  end
end

class Address
  attr_reader(:street, :state, :type, :city, :zip)
  def initialize (parameters)
    @street = parameters.fetch(:street)
    @state = parameters.fetch(:state)
    @type = parameters.fetch(:type)
    @city = parameters.fetch(:city)
    @zip = parameters.fetch(:zip)
  end
end
