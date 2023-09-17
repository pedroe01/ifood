json.extract! produto, :id, :nome, :img, :descricao, :valor, :categoria, :created_at, :updated_at
json.url produto_url(produto, format: :json)
