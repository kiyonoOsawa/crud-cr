require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?
require './models'

get '/' do
    @medicine = Medicine.all
    erb :index
end

get "/item/create" do
    erb :new
end

post "/item/create" do
    Medicine.create(name: params[:name], amount: params[:amount])
    redirect '/'
end
