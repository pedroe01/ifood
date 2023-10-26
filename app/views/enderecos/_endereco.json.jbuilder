json.extract! endereco, :id, :endereco, :tipo_endereco, :complemento, :numero, :cep, :created_at, :updated_at
json.url endereco_url(endereco, format: :json)
