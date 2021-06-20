

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
