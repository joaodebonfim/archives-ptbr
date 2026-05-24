local Translations = {
    progress = {
        refueling = 'Abastecendo...',
    },
    success = {
        refueled = 'Veículo abastecido',
    },
    error = {
        no_money = 'Você não tem dinheiro suficiente',
        no_vehicle = 'Nenhum veículo encontrado próximo',
        no_vehicles = 'Nenhum veículo próximo',
        no_jerrycan = 'Você não possui um galão',
        vehicle_full = 'O veículo já está com o tanque cheio',
        no_fuel_can = 'Você não possui combustível no galão',
        no_nozzle = 'Não há veículo próximo com a mangueira conectada',
        too_far = 'Você está muito longe da bomba, a mangueira foi devolvida',
        wrong_side = 'O tanque do veículo está do outro lado',
    },
    target = {
        put_fuel = 'Abastecer',
        get_nozzle = 'Pegar mangueira',
        buy_jerrycan = 'Comprar galão $%{price}',
        refill_jerrycan = 'Reabastecer galão $%{price}',
        refill_fuel = 'Reabastecer combustível',
        nozzle_put = 'Conectar mangueira',
        nozzle_remove = 'Remover mangueira',
        return_nozzle = 'Devolver mangueira',
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})