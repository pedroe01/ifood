require "application_system_test_case"

class FormapagamentosTest < ApplicationSystemTestCase
  setup do
    @formapagamento = formapagamentos(:one)
  end

  test "visiting the index" do
    visit formapagamentos_url
    assert_selector "h1", text: "Formapagamentos"
  end

  test "should create formapagamento" do
    visit formapagamentos_url
    click_on "New formapagamento"

    fill_in "Codseguranca", with: @formapagamento.codseguranca
    fill_in "Forma pagamento", with: @formapagamento.forma_pagamento
    fill_in "Nomeimpresso", with: @formapagamento.nomeimpresso
    fill_in "Numero cartao", with: @formapagamento.numero_cartao
    fill_in "User", with: @formapagamento.user_id
    fill_in "Validade cartao", with: @formapagamento.validade_cartao
    click_on "Create Formapagamento"

    assert_text "Formapagamento was successfully created"
    click_on "Back"
  end

  test "should update Formapagamento" do
    visit formapagamento_url(@formapagamento)
    click_on "Edit this formapagamento", match: :first

    fill_in "Codseguranca", with: @formapagamento.codseguranca
    fill_in "Forma pagamento", with: @formapagamento.forma_pagamento
    fill_in "Nomeimpresso", with: @formapagamento.nomeimpresso
    fill_in "Numero cartao", with: @formapagamento.numero_cartao
    fill_in "User", with: @formapagamento.user_id
    fill_in "Validade cartao", with: @formapagamento.validade_cartao
    click_on "Update Formapagamento"

    assert_text "Formapagamento was successfully updated"
    click_on "Back"
  end

  test "should destroy Formapagamento" do
    visit formapagamento_url(@formapagamento)
    click_on "Destroy this formapagamento", match: :first

    assert_text "Formapagamento was successfully destroyed"
  end
end
