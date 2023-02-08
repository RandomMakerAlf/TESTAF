local window = 0
local a = 0

function start (song)
	print("Song: " .. song .. " @ " .. bpm .. " downscroll: " .. downscroll)
	
	window = 240
end

function update (elapsed) -- example https://twitter.com/KadeDeveloper/status/1382178179184422918
	a = a + 0.01
	
	local currentBeat = (songPos / 1000) * (bpm / 60)
	setActorPos(-200 + ((math.cos(a) * 2) * window), getCenteredWindowY() + (math.sin(2 * a) * window), "dad")
	
	--[[if _G['mustHit'] == 0 then
		for i = 0,keyCount * 2 - 1 do
			setActorX(_G['defaultStrum' .. i .. 'X'] - ((math.cos(a) * 2) * window), i)
		end

		setStrumlineYButItWorks(_G['defaultStrum0Y'] - (math.sin(2 * a) * window))
    else
		for i = 0,keyCount * 2 - 1 do
			setActorX(_G['defaultStrum' .. i .. 'X'], i)
		end
		setStrumlineYButItWorks(_G['defaultStrum0Y'])
	end]]--
	--
	--for i=0,7 do
	--	setActorAngle(getActorAngle(i) + 15, i)
	--end
end
print("Mod Chart script loaded :)")