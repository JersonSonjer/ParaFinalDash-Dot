
def verificarPuente(ubicacion, puente) #[3,5] [2,2,"N"]
    if (ubicacion[0]==puente[0])
        if (ubicacion[1]==puente[1])
            return true
        end
    end
    return false
end

def subirPuente(ubicacion, puente) #[2,3,"N"],["P",[3,1],[1,3]]
    if (verificarPuente(ubicacion,puente[1]))
        ubicacion=bajarPuente(ubicacion,puente[2])
    elsif (verificarPuente(ubicacion,puente[2]))
        ubicacion=bajarPuente(ubicacion,puente[1])
    end
    return ubicacion
end

def bajarPuente(ubicacion,puente) #[2,2,"N"] [3,1]
    ubicacion[0]=puente[0]
    ubicacion[1]=puente[1]
    return ubicacion #[3,1,"N"]
end

def cruzarPuentes(ubicacion, puentes)#[2,3,"N"],[["P",[3,1],[1,3]]]
    puentes.each do |elemento|#["P",[3,1],[1,3]]
        ubicacion=subirPuente(ubicacion, elemento)#[2,3,"N"],["P",[3,1],[1,3]]
    end
    return ubicacion#[2,3,"N"]
end
