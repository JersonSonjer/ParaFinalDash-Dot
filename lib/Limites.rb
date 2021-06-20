

def verificarCoordenada(coord,limite)
    if ( (coord > 0) && (coord < limite-1) )#|| (coord==0) && (coord = =limite-1) )
        return true
    end
    if (coord==0) || (coord==limite-1)
        return true
    end
    
    return false
end

def verificarCoordenada2(coord, limite)
    if (coord <0)
        coord=0 
    end
    if (coord >= limite)
        coord=limite-1
    end
    return coord
end

def verificarLimites(ubicacion, tamano)
    if (verificarCoordenada(ubicacion[0], tamano[0]))
        if (verificarCoordenada(ubicacion[1], tamano[1]))
            return true
        end
    end
    return false
end