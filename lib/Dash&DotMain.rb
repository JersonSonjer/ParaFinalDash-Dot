require './lib/ConvertString.rb'

def Dash_Dot2(cad)#"5,5\n2,2 N\nIAIAIADA\n2,3 N\nIAA\nO 3,2\nO 1,2\nO 3,3"
    cadenas=dividir_cadena2(cad)#["5,5" ,"2,2 N" , "IAIAIADA" , "2,3 N","IAA", "O 3,2","O 1,2","O 3,3"]
    obstaculos=filtrarObstaculos(cadenas)#=>[["O",3,2],["O",1,2],["O",3,3]]

    #primer auto
    auto1=mover_auto2(tamano(cadenas[0]), ubicacion2(cadenas[1]), cadenas[2], obstaculos)
    #auto1=mover_auto2([ 5,5 , 2,2,"N" , "IAIAIADA" ,[["O",3,2],["O",1,2],["O",3,3]] )
    #auto1=[2,1,"O"]
    obstaculos.push(["O",auto1[0],auto1[1]]) #agregamos la posicion final del 1er auto como obstaculo
    #obstaculos => [["O",3,2],["O",1,2],["O",3,3],[2,1,"O"]]
    pos_final = ubicString(auto1)
    
    #segundo auto2
    auto2=mover_auto2(tamano(cadenas[0]), ubicacion2(cadenas[3]), cadenas[4], obstaculos)
    #auto2=mover_auto2([ 5,5, "2,3,N","IAA",[["O",3,2],["O",1,2],["O",3,3],[2,1,"O"]])
    #auto2=[2,2,"O"]
    pos_final2 = ubicString(auto2)#["2","2","O"]
    
    resp=unirString(cadenas, pos_final, pos_final2)
    return resp#["5,5" , "2,2,N" , "IAIAIADA", "4,1,S", "2,3 N" , "IAA", "2,1,O" ]
end