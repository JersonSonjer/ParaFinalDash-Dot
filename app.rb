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
        @pos_ini=cad[1]
        @comds=cad[2]
        @pos_fin=cad[3]
        @pos_ini2=cad[4]
        @comds2=cad[5]
        @pos_fin2=cad[6]
    end 
    erb :inicio
end