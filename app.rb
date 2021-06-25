require 'sinatra'
require './config'
require './lib/Dash&DotMain.rb'
require './lib/ConvertString.rb'
get '/' do
    erb :bienvenida
end

post '/inicio' do
    datos=params[:datos_ingresados]
    if datos!=nil
        cad=Dash_Dot3(datos)
        @superficie=cad[0]
    end 
    erb :inicio
end