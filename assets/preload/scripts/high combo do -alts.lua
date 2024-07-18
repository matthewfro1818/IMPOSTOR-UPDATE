local animsA = {'singLEFT-alt', 'singDOWN-alt', 'singUP-alt', 'singRIGHT-alt', 'hey-alt', 'idle-alt'}
local animsB = {'singLEFT', 'singDOWN', 'singUP', 'singRIGHT', 'hey', 'idle'}
local hitCombo = 0

function goodNoteHit(i, d, t, s)
    if not isSustainNote then
		hitCombo = (hitCombo + 1)
    end
	if hitCombo >= 34 then -- the combo counter, you can edit the number to what you like.
	    characterPlayAnim('bf', animsA[d + 1]);
		triggerEvent('Alt Idle Animation', 'bf', '-alt');
	end
end

function noteMiss(id, direction, noteType, isSustainNote)
    if getProperty('songMisses')+ 1 then
		hitCombo = 0
	end
	if hitCombo == 0 then
	    triggerEvent('Alt Idle Animation', 'bf','');
		characterPlayAnim('bf', animsB[d + 1]);
    end
end