local window = 0
local CUR_SECTION = 0
local cursection = 0
local gain = 1
local missed = false
local timemissed = 0
local sand = "undefinedSprite1"
local road = "undefinedSprite2"
local gfcar = "undefinedSprite3"
local shaggycar = "undefinedSprite4"
local ogsandposX = 0
local ogroadposX = 0
local gfcarY = 0
local shaggycarY = 0
local speed = 2000
local tick = 0
function start (song)
    print("j")
    ogsandposX = getActorX(sand) - 4096
    ogroadposX = getActorX(road) - 4096
    gfcarY = getActorY(gfcar)
    shaggycarY = getActorY(shaggycar)
end

function update(elapsed)
    tick = tick + elapsed
    setActorX(getActorX(sand)+elapsed*speed,sand)
    if getActorX(sand) > ogsandposX + 4096 then
        setActorX(ogsandposX, sand)
    end
    setActorX(getActorX(road)+elapsed*(speed*2),road)
    if getActorX(road) > ogroadposX + 4096 then
        setActorX(ogroadposX, road)
    end
    setActorY(gfcarY - math.abs(math.sin(tick * 7)) * 2, gfcar)
    setActorY(shaggycarY - math.abs(math.sin((tick + 5) * 8)) * 2, shaggycar)
end
