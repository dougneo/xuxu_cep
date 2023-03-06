require "test_helper"

class CepsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cep = ceps(:one)
  end

  test "should get index" do
    get ceps_url
    assert_response :success
  end

  test "should get new" do
    get new_cep_url
    assert_response :success
  end

  test "should create cep" do
    assert_difference("Cep.count") do
      post ceps_url, params: { cep: { bairro: @cep.bairro, cep: @cep.cep, localidade: @cep.localidade, logradouro: @cep.logradouro, uf: @cep.uf } }
    end

    assert_redirected_to cep_url(Cep.last)
  end

  test "should show cep" do
    get cep_url(@cep)
    assert_response :success
  end

  test "should get edit" do
    get edit_cep_url(@cep)
    assert_response :success
  end

  test "should update cep" do
    patch cep_url(@cep), params: { cep: { bairro: @cep.bairro, cep: @cep.cep, localidade: @cep.localidade, logradouro: @cep.logradouro, uf: @cep.uf } }
    assert_redirected_to cep_url(@cep)
  end

  test "should destroy cep" do
    assert_difference("Cep.count", -1) do
      delete cep_url(@cep)
    end

    assert_redirected_to ceps_url
  end
end
