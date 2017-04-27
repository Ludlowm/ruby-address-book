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
  @contact = Contact.all[params.fetch("id").to_i]
  erb(:index)
end

post('/update') do
  Contact.all[params.fetch("id").to_i].update_person(params)
  @contact = Contact.all[params.fetch("id").to_i]
  erb(:index)
end
