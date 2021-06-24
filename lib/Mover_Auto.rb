require './lib/Obstaculos.rb'
require './lib/Limites.rb'
def mover_auto3(tamano, ubicacion, cad_comandos, obstaculos, puentes)
    com=cad_comandos.chars#[5,5],[2,3,"N"],"AAAAD",[["O",3,2],["O",1,2],["O",3,3]],[["P",[3,1],[1,3]]]
    com.each do |elem|
        
        if(elem == 'I' || elem == 'D')
            ubicacion[2]=direccion(ubicacion[2], elem)#(N, elemnto I o D)
        end
        if (elem == 'A')
            ubicacion=avanzar(ubicacion,tamano)
            if (puentes != [])
                cruzarPuentes(ubicacion,puentes)#[2,3,"N"]
                
            end
            
            if (obstaculos != [])
                sobreObstaculos(ubicacion, obstaculos)
            end
        end
        ubicacion=verificarLimites2(ubicacion, tamano)
    end
    return ubicacion #[2,2,S]
end

def mover_auto2(tamano, ubicacion, cad_comandos, obstaculos)#[5,5],[2,2,"N"],"IAAA",[["O",3,2],["O",1,2],["O",2,0]]
    
    com=cad_comandos.chars
    com.each do |elem|
        if(elem == 'I' || elem == 'D')
            ubicacion[2]=direccion(ubicacion[2], elem)# "N", I => O   [2,2,"O"]
        end
        if (elem == 'A')
            ubicacion=avanzar(ubicacion,tamano)#=>[2,1,"O"],[5,5] =>[2,0 "O"]
            if (obstaculos != [])
                sobreObstaculos(ubicacion, obstaculos)#=>[2,1 "O"]
            end
            
        end
        ubicacion=verificarLimites2(ubicacion, tamano)# [2,1 "O"], [5,5] =>[2,1,"O"]
    end
    return ubicacion #[0,3 "E"]
end