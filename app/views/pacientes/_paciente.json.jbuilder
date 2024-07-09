json.extract! paciente, :id, :nome_completo, :cpf, :data_nascimento, :enfermidade, :estado_civil, :endereco_completo, :created_at, :updated_at
json.url paciente_url(paciente, format: :json)
