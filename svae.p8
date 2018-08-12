pico-8 cartridge // http://www.pico-8.com
version 16
__lua__
bike = {}
bike.x = 0
bike.y = 0
bike.sx = 0
bike.sy = 0
bike.sprite = 0

moveamt = 0.5
maxspd = 6


function move()
	if bike.sx > maxspd then
		bike.sx = maxspd
	end
	if bike.sx < -1*maxspd then
		bike.sx = -1*maxspd
	end
	
	bike.x += moveamt * bike.sx
end

function _update()
	if btn(0) then
		bike.sx -= 1
	end
	if btn(1) then
		bike.sx += 1
	end
	
	move()
end

function _draw()
	cls()
	spr(bike.sprite,bike.x,bike.y)
end
__gfx__
50000000060000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
80000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
50000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
