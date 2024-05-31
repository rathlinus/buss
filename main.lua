-- Lua code goes here

-- Get elements
local computer = get("#computer")
local wrapper = get("#wrapper")
local hud = get("#hud")
local gun = get("#gun")
local menu = get("#menu")
local ctrlMenu = get("#ctrlMenu")
local gameWorld = get("#gameWorld")
local iframe = get("#iframe")
local pause = get("#pause")

-- Pause or Play game music
pause.on_click(function()
  if iframe.src == "" then
    pause.set_content("Music On 🔊")
    iframe.set_src("https://www.youtube.com/embed/NxOzULkqTuA?autoplay=1&loop=1&playlist=NxOzULkqTuA")
  else
    pause.set_content("Music Off 🔈")
    iframe.set_src("")
  end
end)

-- Start Game
local start = false
get("#newGame").on_click(function()
  if not start then
    start = true
    menu.set_display("none")
  end
end)

-- Show Controls
local open = false
get("#controls").on_click(function()
  if not open then
    ctrlMenu.set_top("0")
    open = true
  end
end)

get("#closeCtrlMenu").on_click(function()
  if open then
    ctrlMenu.set_top("-100%")
    open = false
  end
end)

-- Game Loop
local function gameLoop()
  -- Player movement and shooting logic
  -- ...

  -- Request next frame
  setTimeout(gameLoop, 20)
end

gameLoop()