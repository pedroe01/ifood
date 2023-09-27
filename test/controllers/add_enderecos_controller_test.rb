require "test_helper"

class AddEnderecosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @add_endereco = add_enderecos(:one)
  end

  test "should get index" do
    get add_enderecos_url
    assert_response :success
  end

  test "should get new" do
    get new_add_endereco_url
    assert_response :success
  end

  test "should create add_endereco" do
    assert_difference("AddEndereco.count") do
      post add_enderecos_url, params: { add_endereco: { complemento: @add_endereco.complemento, endereco: @add_endereco.endereco, numero: @add_endereco.numero, tipo_endereco: @add_endereco.tipo_endereco } }
    end

    assert_redirected_to add_endereco_url(AddEndereco.last)
  end

  test "should show add_endereco" do
    get add_endereco_url(@add_endereco)
    assert_response :success
  end

  test "should get edit" do
    get edit_add_endereco_url(@add_endereco)
    assert_response :success
  end

  test "should update add_endereco" do
    patch add_endereco_url(@add_endereco), params: { add_endereco: { complemento: @add_endereco.complemento, endereco: @add_endereco.endereco, numero: @add_endereco.numero, tipo_endereco: @add_endereco.tipo_endereco } }
    assert_redirected_to add_endereco_url(@add_endereco)
  end

  test "should destroy add_endereco" do
    assert_difference("AddEndereco.count", -1) do
      delete add_endereco_url(@add_endereco)
    end

    assert_redirected_to add_enderecos_url
  end
end
