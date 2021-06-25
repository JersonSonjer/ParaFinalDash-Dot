require './lib/ConvertString.rb'
require './lib/Mover_Auto.rb'
def Dash_Dot3(cad) #"5,5\n2,0 N\nAAA\n0,3 E\nAAA\nP 0,0 3,3\nP 0,4 4,0"
    cadenas=dividir_cadena2(cad)#["5,5" ,"2,0 N","AAA","0,3 E","AAA","P 0,0 3,3","P 0,4 4,0"]
    obstaculos=filtrarObstaculos(cadenas)
    puentes=filtrarPuentes(cadenas)#[P,[0,0],[3,3], P,[0,4],[4,0]]
    #primer auto
    auto1=mover_auto3(tamano(cadenas[0]), ubicacion2(cadenas[1]), cadenas[2], obstaculos, puentes)
    obstaculos.push(["O",auto1[0],auto1[1]]) #agregamos la posicion final del 1er auto como obstaculo
    pos_final = ubicString(auto1)
    #segundo auto2
    auto2=mover_auto3(tamano(cadenas[0]), ubicacion2(cadenas[3]), cadenas[4], obstaculos, puentes)
    pos_final2 = ubicString(auto2)
    resp=unirString(cadenas, pos_final, pos_final2)
    return resp
end


def Dash_Dot2(cad)#"5,5\n2,2 N\nIAIAIADA\n2,3 N\nIAA\nO 3,2\nO 1,2\nO 3,3"
    cadenas=dividir_cadena2(cad)#["5,5" ,"2,2 N" , "IAIAIADA" , "2,3 N","IAA", "O 3,2","O 1,2","O 3,3"]
    obstaculos=filtrarObstaculos(cadenas)#=>[["O",3,2],["O",1,2],["O",3,3]]

    #primer auto
    auto1=mover_auto2(tamano(cadenas[0]), ubicacion2(cadenas[1]), cadenas[2], obstaculos)
    #auto1=mover_auto2([ 5,5 , 2,2,"N" , "IAIAIADA" ,[["O",3,2],["O",1,2],["O",3,3]] )
    #auto1=[2,1,"O"]
    obstaculos.push(["O",auto1[0],auto1[1]]) #agregamos la posicion final del 1er auto como obstaculo
    #obstaculos => [["O",3,2],["O",1,2],["O",3,3],["O",2,1]]
    pos_final = ubicString(auto1)
    
    #segundo auto2
    auto2=mover_auto2(tamano(cadenas[0]), ubicacion2(cadenas[3]), cadenas[4], obstaculos)
    #auto2=mover_auto2([ 5,5, "2,3,N","IAA",[["O",3,2],["O",1,2],["O",3,3],[2,1,"O"]])
    #auto2=[2,2,"O"]
    pos_final2 = ubicString(auto2)#["2","2","O"]
    
    resp=unirString(cadenas, pos_final, pos_final2)
    return resp#["5,5" , "2,2,N" , "IAIAIADA", "4,1,S", "2,3 N" , "IAA", "2,1,O" ]
end