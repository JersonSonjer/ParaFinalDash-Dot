
def avanzar(ubicacion, tamano)#=>[0,2,"E"],[5,5]
    
    if (ubicacion[2] == 'N' || ubicacion[2] == 'S')
        ubicacion[0]=avanzar_norte_sur(ubicacion[0], ubicacion[2])
    end
    if (ubicacion[2] == 'O' || ubicacion[2] == 'E')
        ubicacion[1]=avanzar_oeste_este(ubicacion[1], ubicacion[2])#=>3
    end
    return ubicacion#=>[0,3 "E"]
end

def avanzar_oeste_este(x, di)#[y =>2, x =>2, O] 
    if (di == 'O')
        x = x - 1#=>2-1
        return x #=>1
    end
    if (di == 'E')
        x = x + 1
        return x# 3
    end
end

def avanzar_norte_sur(y, di)
    if (di == 'N')
        y = y - 1
        return y
    end
    if (di == 'S')
        y = y + 1
        return y
    end
end