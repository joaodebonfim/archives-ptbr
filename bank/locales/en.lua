local Translations = {
    success = {
        withdraw = 'Saque realizado com sucesso',
        deposit = 'Depósito realizado com sucesso',
        transfer = 'Transferência realizada com sucesso',
        account = 'Conta criada',
        rename = 'Conta renomeada',
        delete = 'Conta excluída',
        userAdd = 'Usuário adicionado',
        userRemove = 'Usuário removido',
        card = 'Cartão criado',
        give = '$%s em dinheiro entregue',
        receive = '$%s em dinheiro recebido',
    },
    error = {
        error = 'Ocorreu um erro',
        access = 'Sem autorização',
        account = 'Conta não encontrada',
        accounts = 'Número máximo de contas atingido',
        user = 'Usuário já adicionado',
        noUser = 'Usuário não encontrado',
        money = 'Dinheiro insuficiente',
        pin = 'PIN inválido',
        card = 'Cartão bancário não encontrado',
        amount = 'Quantidade inválida',
        toofar = 'Você está muito longe',
    },
    progress = {
        atm = 'Acessando caixa eletrônico',
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
