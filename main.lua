-- Fetch ASCII art from the server
local function fetchAsciiArt(text, font)
    local url = "http://localhost:3000/ascii?text=" .. encodeURIComponent(text) .. "&font=" .. encodeURIComponent(font)
    local response = fetch({
      url = url,
      method = "GET"
    })
  
    if response.status == 200 then
      local asciiArt = response.body
      displayAsciiArt(asciiArt)
    else
      print("Error fetching ASCII art: " .. response.status)
    end
  end
  
  -- Display ASCII art on the page
  local function displayAsciiArt(asciiArt)
    local asciiElement = get("#ascii-art")
    if asciiElement then
      asciiElement.set_content("<pre>" .. asciiArt .. "</pre>")
    end
  end
  
  -- Example usage
  fetchAsciiArt("Hello, Bussin!", "standard")