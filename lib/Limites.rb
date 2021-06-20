

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

def verificarLimites(ubicacion, tamano)
    if (verificarCoordenada(ubicacion[0], tamano[0]))#=>True
        if (verificarCoordenada(ubicacion[1], tamano[1]))#=>True
            return true
        end
    end
    return false
end

def verificarLimites2(ubicacion,tamano)#=>[0,3 "E"][5,5]
    ubicacion[0]=verificarCoordenada2(ubicacion[0], tamano[0])#=>0
    ubicacion[1]=verificarCoordenada2(ubicacion[1], tamano[1])#=>3
    return ubicacion#=>[0,3 "E"]
end