Given("visito la pagina de inicio") do
  visit '/'
  click_button('iniciar')
end

When("ingreso los datos de los 2 autos {string}") do |datos|
  fill_in('datos_ingresados', :with => datos)
end

When("presiono el boton {string}") do |ejecutar|
  click_button('ejecutar')
end

Then("debe mostrar la Superficie del Terreno {string}") do |string|
  expect(page.body).to match /#{string}/m
end
