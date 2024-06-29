json.extract! registro_cuidador, :id, :data, :cuidador, :turno_entrada, :turno_saida, :assinatura, :refeicoes, :medicamentos, :atividades_diarias, :observacoes, :created_at, :updated_at
json.url registro_cuidador_url(registro_cuidador, format: :json)
