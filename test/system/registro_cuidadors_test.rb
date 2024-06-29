require "application_system_test_case"

class RegistroCuidadorsTest < ApplicationSystemTestCase
  setup do
    @registro_cuidador = registro_cuidadors(:one)
  end

  test "visiting the index" do
    visit registro_cuidadors_url
    assert_selector "h1", text: "Registro cuidadors"
  end

  test "should create registro cuidador" do
    visit registro_cuidadors_url
    click_on "New registro cuidador"

    fill_in "Assinatura", with: @registro_cuidador.assinatura
    fill_in "Atividades diarias", with: @registro_cuidador.atividades_diarias
    fill_in "Cuidador", with: @registro_cuidador.cuidador
    fill_in "Data", with: @registro_cuidador.data
    fill_in "Medicamentos", with: @registro_cuidador.medicamentos
    fill_in "Observacoes", with: @registro_cuidador.observacoes
    fill_in "Refeicoes", with: @registro_cuidador.refeicoes
    fill_in "Turno entrada", with: @registro_cuidador.turno_entrada
    fill_in "Turno saida", with: @registro_cuidador.turno_saida
    click_on "Create Registro cuidador"

    assert_text "Registro cuidador was successfully created"
    click_on "Back"
  end

  test "should update Registro cuidador" do
    visit registro_cuidador_url(@registro_cuidador)
    click_on "Edit this registro cuidador", match: :first

    fill_in "Assinatura", with: @registro_cuidador.assinatura
    fill_in "Atividades diarias", with: @registro_cuidador.atividades_diarias
    fill_in "Cuidador", with: @registro_cuidador.cuidador
    fill_in "Data", with: @registro_cuidador.data
    fill_in "Medicamentos", with: @registro_cuidador.medicamentos
    fill_in "Observacoes", with: @registro_cuidador.observacoes
    fill_in "Refeicoes", with: @registro_cuidador.refeicoes
    fill_in "Turno entrada", with: @registro_cuidador.turno_entrada
    fill_in "Turno saida", with: @registro_cuidador.turno_saida
    click_on "Update Registro cuidador"

    assert_text "Registro cuidador was successfully updated"
    click_on "Back"
  end

  test "should destroy Registro cuidador" do
    visit registro_cuidador_url(@registro_cuidador)
    click_on "Destroy this registro cuidador", match: :first

    assert_text "Registro cuidador was successfully destroyed"
  end
end
