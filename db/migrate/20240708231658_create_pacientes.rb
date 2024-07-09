class CreatePacientes < ActiveRecord::Migration[7.1]
  def change
    create_table :pacientes do |t|
      t.string :nome_completo
      t.string :cpf
      t.date :data_nascimento
      t.string :enfermidade
      t.string :estado_civil
      t.text :endereco_completo

      t.timestamps
    end
  end
end
