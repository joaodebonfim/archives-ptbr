# archives-ptbr

# Configurar Webhook `server/main.lua` para Phone/Camera
---

A câmera do celular apresentará erro de não setup. Para corrigir, siga o processo:

### Para usar o Discord:

* Clique em **Novo Webhook**
* Clique em **Copiar URL do Webhook**
* Cole `webHook` em `server/main.lua` (phone/server/main.lua)

```lua
local WebHook = ""
