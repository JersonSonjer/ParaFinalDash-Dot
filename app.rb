require 'sinatra'
require './config'
require './lib/Dash&DotMain.rb'

get '/' do
    erb :bienvenida
end

post '/inicio' do
    @posicionInicial=params[:datos_ingresados]
    @comandos=params[:datos_ingresados]
    @posicionFinal=params[:datos_ingresados]
    erb :inicio
end