-- Fetch ASCII art from the server
local function displayAsciiArt(asciiArt)
    local asciiElement = get("#ascii-art")
    if asciiElement then
      asciiElement.set_content("<pre>" .. asciiArt .. "</pre>")
    else
      print("Element #ascii-art not found")
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