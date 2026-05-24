# archives-ptbr

# Configurar Webhook `server/main.lua` para Phone/Camera
---

Defina a seguinte variável para o seu webhook (por exemplo, um webhook de um canal do Discord ou do Imgur).

### Para usar o Discord:

* Clique em **Novo Webhook**
* Confirmar canal
* Clique em **Copiar URL do Webhook**
* Cole `webHook` em `server/main.lua`

```lua
local WebHook = ""
