require './lib/ConvertString.rb'

def Dash_Dot2(cad) 
    cadenas=dividir_cadena2(cad)
    obstaculos=filtrarObstaculos(cadenas)

    #primer auto
    auto1=mover_auto2(tamano(cadenas[0]), ubicacion2(cadenas[1]), cadenas[2], obstaculos)
    obstaculos.push(["O",auto1[0],auto1[1]]) #agregamos la posicion final del 1er auto como obstaculo
    pos_final = ubicString(auto1)
    # pos[0]=pos[0].to_s
    # pos[1]=pos[1].to_s
    # pos_final=pos[0]+','+pos[1]+' '+pos[2]
    
    #segundo auto2
    auto2=mover_auto2(tamano(cadenas[0]), ubicacion2(cadenas[3]), cadenas[4], obstaculos)
    pos_final2 = ubicString(auto2)
    
    resp=unirString(cadenas, pos_final, pos_final2)
    return resp
end