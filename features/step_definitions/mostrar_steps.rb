Given("visito la pagina inicio e ingreso los datos de los 2 autos {string}") do |datos|
    visit '/'
    click_button('iniciar')
    fill_in('datos_ingresados', :with => datos)
end

When("comienzo el juego presionando en boton {string}") do |ejecutar|
    click_button('ejecutar')
end

Then("muestra el tamanio de la pista {string}") do |string|
    expect(page.body).to match /#{string}/m
end
#auto 1
Then("muestra datos del auto {string}") do |string|
    expect(page.body).to match /#{string}/m
end

Then("muestra el inicio {string}") do |string|
    expect(page.body).to match /#{string}/m
end

Then("muestra los comandos {string}") do |string|
    expect(page.body).to match /#{string}/m
end

Then("muestra la pos final {string}") do |string|
    expect(page.body).to match /#{string}/m
end
#auto 2
Then("datos del auto 2 {string}") do |string|
    expect(page.body).to match /#{string}/m
end

Then("inicio del auto 2 {string}") do |string|
    expect(page.body).to match /#{string}/m
end

Then("comandos del auto 2 {string}") do |string|
    expect(page.body).to match /#{string}/m
end

Then("la pos final del auto 2 {string}") do |string|
    expect(page.body).to match /#{string}/m
end