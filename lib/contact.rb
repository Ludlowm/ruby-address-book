class Contact
  @@contacts = []
  attr_reader(:first_name,
  :last_name,
  :job_title,
  :company,
  :address_list,
  :phone_list,
  :email_list,
  :id)

  def Contact.save (contact)
    @@contacts.push(contact)
  end

  def initialize (parameters)
    @first_name = parameters.fetch("first_name")
    @last_name = parameters.fetch("last_name")
    @job_title = parameters.fetch("job_title")
    @company = parameters.fetch("company")
    @address_list = [Address.new(parameters.select{|k,v| k.include? "addr_"})]
    @phone_list = [Phone.new(parameters.select{|k,v| k.include? "ph_"})]
    @email_list = [Email.new(parameters.select{|k,v| k.include? "em_"})]
    @id = @@contacts.length
  end

  def Contact.all
    @@contacts
  end

  def update_person (params)
    case params.fetch("add")
    when "addr"
      @address_list.push(Address.new(params.select{|k,v| k.include? "addr_"}))
    when "em"
      @email_list.push(Email.new(params.select{|k,v| k.include? "em_"}))
    when "ph"
      @phone_list.push(Phone.new(params.select{|k,v| k.include? "ph_"}))
    end
  end
end

class Phone
  attr_reader(:number, :type)
  def initialize (parameters)
    @number = parameters.fetch("ph_number")
    @type = parameters.fetch("ph_type")
  end
end

class Email
  attr_reader(:address, :type)
  def initialize (parameters)
    @address = parameters.fetch("em_email")
    @type = parameters.fetch("em_type")
  end
end

class Address
  attr_reader(:street, :state, :type, :city, :zip)
  def initialize (parameters)
    @street = parameters.fetch("addr_street")
    @state = parameters.fetch("addr_state")
    @type = parameters.fetch("addr_type")
    @city = parameters.fetch("addr_city")
    @zip = parameters.fetch("addr_zip")
  end
end
