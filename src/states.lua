local states = {}

function states.gameStart()
    love.graphics.printf("My Game!!!", 0, 200, love.graphics.getWidth(), "center")
end

function states.gamePaused()
    love.graphics.printf("PAUSED", 0, love.graphics.getHeight() / 3, love.graphics.getWidth(), "center")
end

function states.gameOver()
    love.graphics.printf("GAME OVER!!", 0, 200, love.graphics.getWidth(), "center")
end

return states