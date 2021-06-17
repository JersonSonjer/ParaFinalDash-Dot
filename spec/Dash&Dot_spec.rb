require './lib/Dash&DotMain.rb'
RSpec.describe "Juego Dash & Dot"do
    it "Deberia devolver la ubicacion inicial, comandos y ubicacion final" do
        expect(Dash_Dot("5,5-2,2N-IAIAIADA")).to eq("2,2N-IAIAIADA-4,2S")
    end
end 