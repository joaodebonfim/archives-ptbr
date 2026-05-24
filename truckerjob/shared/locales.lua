Locales = {}

Locales['tr'] = {
    ui = {
        title = "TRUCKER JOB",
        description = "Teslimatları kabul et ve şehir genelinde yük taşıyarak para kazan",
        search_trailer = "Trailer Ara",
        search_truck = "Truck Ara",
        level = "Level",
        price = "Price",
        trailer = "TRAILER",
        truck = "TRUCK",
        job_name = "JOB NAME",
        adr = "ADR",
        km = "KM",
        per_km = "per KM",
        bonus = "BONUS",
        total = "TOTAL",
        locked = "Level %s Gerekli",
        step_trailer = "Trailer",
        step_truck = "Truck",
        speed = "Hız",
        capacity = "Kapasite",
        to = "→"
    },
    notify = {
        job_started = "Teslimat başladı! Trailer'ı işaretli konuma götür.",
        trailer_delivered = "Trailer teslim edildi! Alınan: $%s | Şimdi truck'ı geri götür!",
        return_truck = "Şimdi truck'ı depoya geri götür!",
        job_complete = "Görev tamamlandı! Toplam kazanç: $%s | XP: +%s",
        job_cancelled = "Görev iptal edildi!",
        vehicle_destroyed = "Aracın yok edildi! Görev iptal.",
        spawn_failed = "Araçlar spawn edilemedi",
        already_has_job = "Zaten aktif bir görevin var!",
        level_too_low_trailer = "Bu trailer için levelin çok düşük!",
        level_too_low_truck = "Bu truck için levelin çok düşük!",
        no_active_job = "Aktif görev bulunamadı!",
        level_up = "Level atladın! Artık level %s!",
        return_to_vehicle = "Aracına geri dön!",
        return_warning = "Araca %s saniye içinde dön!",
        welcome_back = "Tekrar hoş geldin!",
        left_vehicle_too_long = "Görev iptal - Araçtan çok uzun süre ayrıldın!",
        vehicle_damaged = "Araç hasar aldı! Mevcut ceza: %s%%",
        perfect_delivery = "Mükemmel teslimat! Kazanılan: $%s + Bonus XP",
        stop_to_deliver = "Teslim etmek için dur",
        stop_to_return = "Aracı teslim etmek için dur",
        trailer_lost = "Trailer kayboldu veya yok edildi! Görev iptal.",
        bring_trailer = "Trailer'ı teslimat noktasına getirmen gerekiyor!"
    }
}

Locales['en'] = {
    ui = {
        title = "Caminhoneiro",
        description = "Aceite entregas e ganhe dinheiro transportando mercadorias pela cidade",
        search_trailer = "Procure o Trailer",
        search_truck = "Procure o Caminhão",
        level = "Nível",
        price = "Preço",
        trailer = "TRAILER",
        truck = "TRUCK",
        job_name = "SERVIÇO",
        adr = "ENDEREÇO",
        km = "KM",
        per_km = "por KM",
        bonus = "BÔNUS",
        total = "TOTAL",
        locked = "Nível %s Conquistado",
        step_trailer = "Trailer",
        step_truck = "Caminhão",
        speed = "Velocidade",
        capacity = "Capacidade",
        to = "to"
    },
    notify = {
        job_started = "Entrega iniciada! Leve o trailer até o local marcado.",
        trailer_delivered = "Trailer entregue! Recebido: $%s. Agora devolva o caminhão!",
        return_truck = "Agora devolva o caminhão para a garagem!",
        job_complete = "Trabalho concluído! Total ganho: $%s. XP: +%s",
        job_cancelled = "Trabalho cancelado!",
        vehicle_destroyed = "Seu veículo foi destruído! Trabalho cancelado.",
        spawn_failed = "Falha ao spawnar os veículos",
        already_has_job = "Você já possui um trabalho ativo!",
        level_too_low_trailer = "Seu nível é muito baixo para este trailer!",
        level_too_low_truck = "Seu nível é muito baixo para este caminhão!",
        no_active_job = "Nenhum trabalho ativo encontrado!",
        level_up = "Subiu de nível! Você agora é nível %s!",
        return_to_vehicle = "Volte para o seu veículo!",
        return_warning = "Volte para o veículo em %s segundos!",
        welcome_back = "Bem-vindo de volta!",
        left_vehicle_too_long = "Trabalho cancelado - Você ficou muito tempo fora do veículo!",
        vehicle_damaged = "Veículo danificado! Penalidade atual: %s%%",
        perfect_delivery = "Entrega perfeita! Recebido: $%s + Bônus de XP",
        stop_to_deliver = "Pare para entregar",
        stop_to_return = "Pare para devolver o veículo",
        trailer_lost = "Trailer perdido ou destruído! Trabalho cancelado.",
        bring_trailer = "Você deve levar o trailer até o ponto de entrega!"
    }
}

function L(key, ...)
    local lang = cfg.lang or 'en'
    local locale = Locales[lang]
    if not locale then locale = Locales['en'] end
    
    local keys = {}
    for k in string.gmatch(key, "[^.]+") do
        table.insert(keys, k)
    end
    
    local value = locale
    for _, k in ipairs(keys) do
        if value[k] then
            value = value[k]
        else
            return key
        end
    end
    
    if type(value) == 'string' and select('#', ...) > 0 then
        return string.format(value, ...)
    end
    
    return value
end
