

def verificarCoordenada(coord,limite)
    if ( (coord > 0) && (coord < limite-1) )#|| (coord==0) && (coord = =limite-1) )
        return true
    end
    if (coord==0) || (coord==limite-1)
        return true
    end
    
    return false
end

def verificarCoordenada2(coord, limite)#=>2 , 5
    if (coord <0)
        coord=0 
    end
    if (coord >= limite)
        coord=limite-1
    end
    return coord
end

def verificarLimites(ubicacion, tamano)#2,2 "O" , 5,5
    if (verificarCoordenada(ubicacion[0], tamano[0]))#=>True
        if (verificarCoordenada(ubicacion[1], tamano[1]))#=>True
            return true
        end
    end
    return false
end

def verificarLimites2(ubicacion,tamano)#=> [2,1 "O"], [5,5]
    ubicacion[0]=verificarCoordenada2(ubicacion[0], tamano[0])#=>2
    ubicacion[1]=verificarCoordenada2(ubicacion[1], tamano[1])#=>1
    return ubicacion#=>[2,1 "O"]
end