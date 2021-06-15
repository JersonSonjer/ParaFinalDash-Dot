require 'sinatra'
require './config'

get '/' do
    erb :bienvenida
end

post '/inicio' do
    @posicion=params[:comandos_auto]
    erb :inicio
end