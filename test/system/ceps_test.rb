require "application_system_test_case"

class CepsTest < ApplicationSystemTestCase
  setup do
    @cep = ceps(:one)
  end

  test "visiting the index" do
    visit ceps_url
    assert_selector "h1", text: "Ceps"
  end

  test "should create cep" do
    visit ceps_url
    click_on "New cep"

    fill_in "Bairro", with: @cep.bairro
    fill_in "Cep", with: @cep.cep
    fill_in "Localidade", with: @cep.localidade
    fill_in "Logradouro", with: @cep.logradouro
    fill_in "Uf", with: @cep.uf
    click_on "Create Cep"

    assert_text "Cep was successfully created"
    click_on "Back"
  end

  test "should update Cep" do
    visit cep_url(@cep)
    click_on "Edit this cep", match: :first

    fill_in "Bairro", with: @cep.bairro
    fill_in "Cep", with: @cep.cep
    fill_in "Localidade", with: @cep.localidade
    fill_in "Logradouro", with: @cep.logradouro
    fill_in "Uf", with: @cep.uf
    click_on "Update Cep"

    assert_text "Cep was successfully updated"
    click_on "Back"
  end

  test "should destroy Cep" do
    visit cep_url(@cep)
    click_on "Destroy this cep", match: :first

    assert_text "Cep was successfully destroyed"
  end
end
