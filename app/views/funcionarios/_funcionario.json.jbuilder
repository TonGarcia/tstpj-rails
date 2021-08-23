json.extract! funcionario, :id, :nome_completo, :endereco, :especialidade_id, :data_admissao, :data_dispensa, :created_at, :updated_at
json.url funcionario_url(funcionario, format: :json)
