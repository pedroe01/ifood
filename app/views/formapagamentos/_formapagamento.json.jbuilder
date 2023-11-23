json.extract! formapagamento, :id, :forma_pagamento, :numero_cartao, :validade_cartao, :codseguranca, :nomeimpresso, :user_id, :created_at, :updated_at
json.url formapagamento_url(formapagamento, format: :json)
