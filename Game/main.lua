-- Used this tutorial: http://osmstudios.com/tutorials/your-first-love2d-game-in-200-lines-part-1-of-3
-- Used this tutorial: https://dev.to/jeansberg/make-a-shooter-in-lualove2d---part-1
-- Collision detection taken from http://love2d.org/wiki/BoundingBox.lua

function love.load()
	player= {}
	player.x = 5
	player.y = -5
	player.w = 1
	player.h = 1
	player.speed = 4
	bunnyImage = love.graphics.newImage("graphics/bunny.png")
	bullet = {}
	bulletTimerMax = 0.2
	bulletStartSpeed = 100
	bulletMaxSpeed = 300
	canFire = false 
	bulletTimer = bulletTimerMax
	carrotImage = love.graphics.newImage("graphics/carrot.png")
end 

function love.update(dt)
	playerUpdate(dt)
end

function playerUpdate(dt)
	if love.keyboard.isDown("right") then 
		player.x = player.x + 5
	end

	if love.keyboard.isDown("left") then
		player.x = player.x - 5
	end

	if  love.keyboard.isDown("up") then
		player.y = player.y - 5
	end 

	if  love.keyboard.isDown("down") then
		player.y = player.y + 5
	end

	if love.keyboard.isDown("z") then
		BulletSpeed = 100
	end

    if(left) then
		bulletSpeed = bulletSpeed - player.speed/2
    elseif(right) then
		bulletSpeed = bulletSpeed + player.speed/2
	end
end




function love.draw()
	love.graphics.draw(bunnyImage, player.x, player.y, 0, player.w, player.h)
end 
