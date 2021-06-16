require 'sinatra'
require './config'

get '/' do
    erb :bienvenida
end

post '/inicio' do
    @posicionInicial=params[:comandos_auto]
    @comandos=params[:comandos_auto]
    @posicionFinal=params[:comandos_auto]
    erb :inicio
end