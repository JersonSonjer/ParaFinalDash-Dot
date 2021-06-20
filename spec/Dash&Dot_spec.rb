require './lib/Dash&DotMain.rb'
require './lib/Direccion.rb'
require './lib/Mover.rb'
require './lib/ConvertString.rb'
require './lib/Limites.rb'
require './lib/Mover_Auto.rb'
RSpec.describe "juego de Dash & Dot"do

obstaculos=[]
#direccion
    it "Deberia devolver la direccion E para la dir S y comando I" do
    expect(direccion("S", "I")).to eq("E")
    end
    it "Deberia devolver la direccion E para la dir N y comando D" do
        expect(direccion("N", "D")).to eq("E")
    end
    it "Deberia devolver la direccion S para la dir E y comando D" do
        expect(direccion("E", "D")).to eq("S")
    end
    it "Deberia devolver la direccion S para la dir O y comando I" do
        expect(direccion("O", "I")).to eq("S")
    end

#avanzar
    it "Deberia devolver su cordenada x resultante 1" do
        expect(avanzar_oeste_este(2, "O")).to eq(1)
    end
    it "Deberia devolver su cordenada x resultante 3" do
        expect(avanzar_oeste_este(2, "E")).to eq(3)
    end
    it "Deberia devolver su cordenada x resultante 1" do
        expect(avanzar_norte_sur(2, "N")).to eq(1)
    end
    it "Deberia devolver su cordenada x resultante 3" do
        expect(avanzar_norte_sur(2, "S")).to eq(3)
    end
#dividir el string de entrada en tamanio, posicion Inicial y Comandos
    it "Deberia devolver un string separado en 3 segmentos" do
    expect(dividir_cadena2("5,5\n2,2 N\nIAIAIADA")).to eq(["5,5","2,2 N","IAIAIADA"])
    end
#Convierte coordenada de string a int
    it "Deberia devolver cordenadas de string a int" do
        expect(ubicacion2("2,2 N")).to eq([2,2,"N"])
    end
    it "Deberia devolver cordenadas de string a int" do
        expect(ubicacion2("2,2,N")).to eq([2,2,"N"])
    end
    it "Deberia devolver tamano de string a int" do
        expect(tamano("5,5")).to eq([5,5])
    end
    #limites
    it "Deberia devolver true si esta dentro de los limites" do
        expect(verificarCoordenada(2,5)).to eq(true)
    end
    it "Deberia devolver false ya que NO esta dentro de los limites" do
        expect(verificarCoordenada(-1,5)).to eq(false)
    end
    it "Deberia devolver false ya que NO esta dentro de los limites" do
        expect(verificarCoordenada(6,5)).to eq(false)
    end
    it "Deberia devolver true si esta dentro de los limites" do
        expect(verificarCoordenada(0,5)).to eq(true)
    end
    it "Deberia devolver true si esta dentro de los limites" do
        expect(verificarCoordenada(4,5)).to eq(true)
    end
    
    it "Deberia devolver la coordenada si esta dentro de los limites" do
        expect(verificarCoordenada2(0,5)).to eq(0)
    end
    it "Deberia devolver la coordenada si esta dentro de los limites" do
        expect(verificarCoordenada2(4,5)).to eq(4)
    end

    it "Deberia devolver false ya que NO esta dentro de los limites" do
        expect(verificarLimites([2,-1], [5,5])).to eq(false)
    end
    it "Deberia devolver false ya que sobresale de los limites" do
        expect(verificarLimites([6,2], [5,5])).to eq(false)
    end
#MoverAuto verificando limites sin enviar obstaculos
    it "Deberia devolver ubicacion final sin salir de los limites" do
        expect(mover_auto2([5,5],[2,2,"N"],"IAAA",obstaculos)).to eq([2,0,"O"])
    end
    it "Deberia devolver ubicacion final sin salir de los limites" do
        expect(mover_auto2([5,5],[0,0,"E"],"AAA",obstaculos)).to eq([0,3,"E"])
    end
    it "Deberia devolver ubicacion final sin salir de los limites inferior" do
        expect(mover_auto2([5,5],[2,2,"N"],"IAIAAA",obstaculos)).to eq([4,1,"S"])
    end
    it "Deberia devolver ubicacion final sin salir de los limites inferior" do
        expect(mover_auto2([5,5],[4,4,"N"],"AAA",obstaculos)).to eq([1,4,"N"])
    end
    #obstaculos
    it "Deberia retroceder un espacio el auto" do
        expect(retroceder([2,2,"N"])).to eq([3,2,"N"])
    end
    it "Deberia retroceder un espacio el auto" do
        expect(retroceder([2,2,"E"])).to eq([2,1,"E"])
    end
end    