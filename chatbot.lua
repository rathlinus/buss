local input = get("input")
local sendBtn = get("button")

sendBtn.on_click(function()
    local userInput = input.get_content()
    fetch({
        url = "http://localhost:3000/chat",
        method = "POST",
        headers = { ["Content-Type"] = "application/json" },
        body = '{ "message": "' .. userInput .. '" }'
    }).then(function(response)
        get("div#chat-output").set_content(response.body)
    end)
end)
