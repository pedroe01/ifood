#Twilio::SmsService.new.call_generic_message
#Twilio::SmsService.new.call_notificacao_pedido(3)
#Twilio::SmsService.new.call_notificacao_entregador
module Twilio
  class SmsService
    TWILIO_ACCOUNT_SID = Rails.application.credentials.dig(:twilio_account_sid)
    TWILIO_AUTH_TOKEN  = Rails.application.credentials.dig(:twilio_auth_token)
    TWILIO_FROM_PHONE  = '+12256382358'
    TWILIO_TO_PHONE    = '+5511977177398'

    def call_generic_message
      @client = Twilio::REST::Client.new(TWILIO_ACCOUNT_SID, TWILIO_AUTH_TOKEN)
      message = @client.messages.create(
        body: 'Teste validação',
        from: TWILIO_FROM_PHONE,
        to:   TWILIO_TO_PHONE
      )
      puts message.sid
    end

    def call_notificacao_pedido(msg_idx)
      texts = [
        'Seu pedido está sendo preparado e logo sairá para entrega!',
        'O entregador está a caminho do estabelecimento para retirar seu pedido!',
        'Seu pedido saiu para entrega!',
        "Seu código de segurança é #{rand(1000..9999)}.",
        'Seu pedido foi entregue!',
      ]
      @client = Twilio::REST::Client.new(TWILIO_ACCOUNT_SID, TWILIO_AUTH_TOKEN)
      message = @client.messages.create(
        body: texts[msg_idx],
        from: TWILIO_FROM_PHONE,
        to:   TWILIO_TO_PHONE
      )
      puts message.sid
    end

    def call_notificacao_entregador
      @client = Twilio::REST::Client.new(TWILIO_ACCOUNT_SID, TWILIO_AUTH_TOKEN)
      message = @client.messages.create(
        body: 'Você possui uma entrega a ser realizada no restaurante x, endereço y.',
        from: TWILIO_FROM_PHONE,
        to:   TWILIO_TO_PHONE
      )
      puts message.sid
    end
  end
end
