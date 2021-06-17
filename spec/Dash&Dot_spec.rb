require './lib/Dash&DotMain.rb'
require './lib/Direccion.rb'
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
end    