
def sobreObstaculos(ubicacion, obstaculos)#=>[2,1 "O"] []
    obstaculos.each do |elemento|
        if (comparar(ubicacion,elemento))
            ubicacion=retroceder(ubicacion)
        end
    end
    return ubicacion
end