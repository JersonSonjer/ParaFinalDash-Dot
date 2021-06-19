require './lib/Dash&DotMain.rb'
require './lib/Direccion.rb'
require './lib/Mover.rb'
require './lib/ConvertString.rb'
RSpec.describe "juego de Dash & Dot"do
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
end    