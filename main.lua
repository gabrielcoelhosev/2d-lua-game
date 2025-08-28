function love.load()
    -- {} em lua referesse a tabelas
    player = {}
    player.x = 400  -- posicao do player horizontalmente
    player.y = 200 -- posicao do player verticalmente
end

function love.update(dt) -- love.update altera cada frame
    if love.keyboard.isDown('right') then
        player.x = player.x + 3 -- a cada frame a posicao x ira aumantar 3 para a direita
    end

    if love.keyboard.isDown('left') then
        player.x = player.x - 3
    end

    if love.keyboard.isDown('up') then
        player.y = player.y - 3
    end

    if love.keyboard.isDown('down') then
        player.y = player.y + 3
    end


end

function love.draw()
                            -- tipo, posicao e largura
    love.graphics.circle("fill", player.x, player.y, 100)
end

