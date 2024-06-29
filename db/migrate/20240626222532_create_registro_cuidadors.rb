class CreateRegistroCuidadors < ActiveRecord::Migration[7.1]
  def change
    create_table :registro_cuidadors do |t|
      t.date :data
      t.string :cuidador
      t.string :turno_entrada
      t.string :turno_saida
      t.string :assinatura
      t.text :refeicoes
      t.text :medicamentos
      t.text :atividades_diarias
      t.text :observacoes

      t.timestamps
    end
  end
end
