function love.load()
    -- {} em lua referesse a tabelas
    player = {}
    player.x = 400  -- posicao do player horizontalmente
    player.y = 200 -- posicao do player verticalmente
    player.speed = 4
    player.sprite = love.graphics.newImage('sprites/parrot.png')

    background = love.graphics.newImage('/sprites/background.png')
end

function love.update(dt) -- love.update altera cada frame
    if love.keyboard.isDown('right') then
        player.x = player.x + player.speed -- a cada frame a posicao x ira aumantar player.speed para a direita
    end

    if love.keyboard.isDown('left') then
        player.x = player.x - player.speed
    end

    if love.keyboard.isDown('up') then
        player.y = player.y - player.speed
    end

    if love.keyboard.isDown('down') then
        player.y = player.y + player.speed
    end


end

function love.draw()
                            -- tipo, posicao e largura
    love.graphics.draw(background, 0,0) --organizado por camadas, entoa background tem q vir antes de player por ex
    
    love.graphics.draw(player.sprite, player.x, player.y)
end

