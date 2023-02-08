local window = 0
local CUR_SECTION = 0
local cursection = 0
local gain = 1
local missed = false
local timemissed = 0
function start (song)
    print("j")
end

function update(elapsed)
    cursection = curBeat / 4
    if cursection >= 48.5 then
        if getHealth() - 0.005 > 0.025 then
            setHealth(getHealth() - (0.25 / gain) * elapsed)
        else
            if missed == false then
                setHealth(0.025)
            end
        end 
    end
    if gain > 1 then
        gain = gain - elapsed
    else
        gain = 1
    end
    if missed == true then
        timemissed = timemissed + elapsed
    end
    if timemissed > 1 then
        missed = false
        timemissed = 0
    end
end

function playerOneSing(noteData, SongPos, ArrowType)
    if cursection >= 48.5 then
        gain = gain + 0.5
    end
end
function playerOneMiss(noteData, SongPos, ArrowType)
    gain = 1
    missed = true
end
print("Mod Chart script loaded :)")
