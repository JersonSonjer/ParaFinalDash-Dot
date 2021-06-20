require './lib/Obstaculos.rb'
require './lib/Limites.rb'
def mover_auto2(tamano, ubicacion, cad_comandos, obstaculos)#[5,5],[0,0,"E"],"AAA"
    
    com=cad_comandos.chars
    com.each do |elem|
        if(elem == 'I' || elem == 'D')
            ubicacion[2]=direccion(ubicacion[2], elem)#
        end
        if (elem == 'A')
            ubicacion=avanzar(ubicacion,tamano)#=>[0,2,"E"],[5,5]#=>[0,3 "E"]
            if (obstaculos != [])
                sobreObstaculos(ubicacion, obstaculos)
            end
            
        end
        ubicacion=verificarLimites2(ubicacion, tamano)#=>[0,3 "E"][5,5] =>[0,3 "E"]
    end
    return ubicacion #[0,3 "E"]
end