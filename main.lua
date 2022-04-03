-- Game, by Tom Millichamp 2022

--The following few lines are just for using the debugger
--remove once game is complete!
if os.getenv("LOCAL_LUA_DEBUGGER_VSCODE") == "1" then
    require("lldebugger").start()
end

--Screen properties set in conf.lua

STATE = {gameStart=false, gameOver=false, gamePaused=false, gameLevelUp=false}

states = require ("src/states")
require ("src/baddy")

function love.load()
    STATE.gameStart = true

    --example of creating a baddy & adding it to a table of baddies
    baddies = {}
    baddies [#baddies + 1] = Baddy.new(200,200,100)
end

function love.update(dt)
    --only update the gamePlay
    if STATE.gamePaused or STATE.gameStart or STATE.gameOver or STATE.gameLevelUp then
        return
    end

    for i, bad in ipairs(baddies) do
        bad:update(dt)
    end
end

function love.draw()

    if STATE.gameStart then
        states.gameStart()
        STATE.gameStart = false
        return
    elseif STATE.gameOver then
        states.gameOver()
        STATE.gameOver = false
        love.load()
    elseif STATE.gamePaused then
        states.gamePaused()
        return
    end 

    for i, bad in ipairs (baddies) do
        bad:draw()
    end
end

function love.keypressed(key)
    -- key constants - https://love2d.org/wiki/KeyConstant
end

function love.mousereleased(x, y, button)
    -- button constants - https://love2d.org/wiki/MouseConstant
end

--check if player has moved to another application window if so, pause the game
function love.focus(f)
    STATE.gamePaused = not f
end
