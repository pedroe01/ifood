require "application_system_test_case"

class AddEnderecosTest < ApplicationSystemTestCase
  setup do
    @add_endereco = add_enderecos(:one)
  end

  test "visiting the index" do
    visit add_enderecos_url
    assert_selector "h1", text: "Add enderecos"
  end

  test "should create add endereco" do
    visit add_enderecos_url
    click_on "New add endereco"

    fill_in "Complemento", with: @add_endereco.complemento
    fill_in "Endereco", with: @add_endereco.endereco
    fill_in "Numero", with: @add_endereco.numero
    fill_in "Tipo endereco", with: @add_endereco.tipo_endereco
    click_on "Create Add endereco"

    assert_text "Add endereco was successfully created"
    click_on "Back"
  end

  test "should update Add endereco" do
    visit add_endereco_url(@add_endereco)
    click_on "Edit this add endereco", match: :first

    fill_in "Complemento", with: @add_endereco.complemento
    fill_in "Endereco", with: @add_endereco.endereco
    fill_in "Numero", with: @add_endereco.numero
    fill_in "Tipo endereco", with: @add_endereco.tipo_endereco
    click_on "Update Add endereco"

    assert_text "Add endereco was successfully updated"
    click_on "Back"
  end

  test "should destroy Add endereco" do
    visit add_endereco_url(@add_endereco)
    click_on "Destroy this add endereco", match: :first

    assert_text "Add endereco was successfully destroyed"
  end
end
