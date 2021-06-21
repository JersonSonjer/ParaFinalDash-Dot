
def sobreObstaculos(ubicacion, obstaculos)#=>[2,0 "O"] [["O",3,2],["O",1,2],["O",2,0]]
    obstaculos.each do |elemento|
        if (comparar(ubicacion,elemento))#=>[2,0 "O"],["O",2,0]
            ubicacion=retroceder(ubicacion)#=>[2,1 "O"]
        end
    end
    return ubicacion
end

def retroceder(ubicacion)#=>[2,0 "O"]
    if (ubicacion[2]=="N" || ubicacion[2]=="S")
        ubicacion[0]=retro_norte_sur(ubicacion[0], ubicacion[2])#=>3
    elsif (ubicacion[2]=="O" || ubicacion[2]=="E")
        ubicacion[1]=retro_oeste_este(ubicacion[1], ubicacion[2])
    end#0,O
    return ubicacion#=>[3,2 "N"]
end

def retro_norte_sur(y, direccion)#=>2,N
    if (direccion=='N')
        y = y + 1
        return y #=>3
    elsif (direccion=='S')
        y = y - 1
        return y
    end 
 end
 
 def retro_oeste_este(x, direccion)# 0, O
     if (direccion=='O')
         x = x + 1
         return x
     elsif (direccion=='E')
         x = x - 1
         return x #=>1
     end
  end

  def comparar(ubicacion,obstaculo)#=>[2,0 "O"],["O",2,0]
    if (obstaculo[1]==ubicacion[0] && obstaculo[2]==ubicacion[1])
        return true
    end
    return false
  end