require 'sinatra'
require 'sinatra/reloader'
require './lib/contact'
require 'pry'
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

post('/new_contact') do
  Contact.save(Contact.new(params))
  erb(:index)
end

get('/inspect/:id') do
  params.fetch("id").to_i
  @contact = Contact.all[params.fetch("id").to_i]
  erb(:index)
end

post('/update') do
  @contact = Contact.all[params.fetch("id").to_i]
  binding.pry
  case params.fetch("add")
  when "addr"
    Contact.all[params.fetch("id").to_i].add_address(params)
  when "em"
    Contact.all[params.fetch("id").to_i].add_email(params)
  when "ph"
    Contact.all[params.fetch("id").to_i].add_phone(params)
  end
  erb(:index)
end

# post('/update_ph') do
#   binding.pry
#   Contact.all[params.fetch("id").to_i].add_phone(params)
#   @contact = Contact.all[params.fetch("id").to_i]
#   erb(:index)
# end
#
# post('/update_em') do
#   binding.pry
#   Contact.all[params.fetch("id").to_i].add_email(params)
#   @contact = Contact.all[params.fetch("id").to_i]
#   erb(:index)
# end
#
# post('/update_addr') do
#   binding.pry
#   Contact.all[params.fetch("id").to_i].add_address(params)
#   @contact = Contact.all[params.fetch("id").to_i]
#   erb(:index)
# end
