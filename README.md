# archives-ptbr

# Configurar Webhook `server/main.lua` para fotos
---

Defina a seguinte variável para o seu webhook (por exemplo, um webhook de um canal do Discord ou do Imgur).

### Para usar o Discord:

* Clique com o botão direito do mouse em um canal dedicado a fotos.
* Clique em **Editar canal**
* Clique em **Integrações**
* Clique em **Exibir Webhooks**
* Clique em **Novo Webhook**
* Confirmar canal
* Clique em **Copiar URL do Webhook**
* Cole `webHook` em `server/main.lua`

```lua
local WebHook = ""
