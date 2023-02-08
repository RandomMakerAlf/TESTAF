local window = 0
local a = 0

function start (song)
	print("Song: " .. song .. " @ " .. bpm .. " downscroll: " .. downscroll)
	
	window = 240
end

function update(elapsed)
	a = a + 0.01
	
	setActorPos(-650 + ((math.cos(a) * 2) * window), getCenteredWindowY()-500 + (math.sin(2 * a) * window), "dad")
end

print("Mod Chart script loaded :)")