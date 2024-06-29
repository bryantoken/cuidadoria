require "test_helper"

class RegistroCuidadorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @registro_cuidador = registro_cuidadors(:one)
  end

  test "should get index" do
    get registro_cuidadors_url
    assert_response :success
  end

  test "should get new" do
    get new_registro_cuidador_url
    assert_response :success
  end

  test "should create registro_cuidador" do
    assert_difference("RegistroCuidador.count") do
      post registro_cuidadors_url, params: { registro_cuidador: { assinatura: @registro_cuidador.assinatura, atividades_diarias: @registro_cuidador.atividades_diarias, cuidador: @registro_cuidador.cuidador, data: @registro_cuidador.data, medicamentos: @registro_cuidador.medicamentos, observacoes: @registro_cuidador.observacoes, refeicoes: @registro_cuidador.refeicoes, turno_entrada: @registro_cuidador.turno_entrada, turno_saida: @registro_cuidador.turno_saida } }
    end

    assert_redirected_to registro_cuidador_url(RegistroCuidador.last)
  end

  test "should show registro_cuidador" do
    get registro_cuidador_url(@registro_cuidador)
    assert_response :success
  end

  test "should get edit" do
    get edit_registro_cuidador_url(@registro_cuidador)
    assert_response :success
  end

  test "should update registro_cuidador" do
    patch registro_cuidador_url(@registro_cuidador), params: { registro_cuidador: { assinatura: @registro_cuidador.assinatura, atividades_diarias: @registro_cuidador.atividades_diarias, cuidador: @registro_cuidador.cuidador, data: @registro_cuidador.data, medicamentos: @registro_cuidador.medicamentos, observacoes: @registro_cuidador.observacoes, refeicoes: @registro_cuidador.refeicoes, turno_entrada: @registro_cuidador.turno_entrada, turno_saida: @registro_cuidador.turno_saida } }
    assert_redirected_to registro_cuidador_url(@registro_cuidador)
  end

  test "should destroy registro_cuidador" do
    assert_difference("RegistroCuidador.count", -1) do
      delete registro_cuidador_url(@registro_cuidador)
    end

    assert_redirected_to registro_cuidadors_url
  end
end
