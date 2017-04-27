class Contact

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

end

class Address

end
