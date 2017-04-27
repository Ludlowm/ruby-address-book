class Contact
  @@contacts = []
  attr_reader(:first_name, :last_name, :job_title,:company,:mailing_address_list,:phone_num_list,:email_list)

  def initialize (parameters)
    @first_name = parameters.fetch(:first_name)
    @last_name = parameters.fetch(:last_name)
    @job_title = parameters.fetch(:job_title)
    @company = parameters.fetch(:company)
    @mailing_address_list = parameters.fetch(:mailing_address_list)
    @phone_num_list = parameters.fetch(:phone_num_list)
    @email_list = parameters.fetch(:email_list)
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
