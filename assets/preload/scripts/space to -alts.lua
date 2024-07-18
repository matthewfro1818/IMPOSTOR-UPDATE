local animsA = {'singLEFT-alt', 'singDOWN-alt', 'singUP-alt', 'singRIGHT-alt', 'hey-alt', 'idle-alt'}
local animsB = {'singLEFT', 'singDOWN', 'singUP', 'singRIGHT', 'hey', 'idle'}
local hitCombo = 0

function onUpdate()
	if keyboardJustPressed("SPACE") then -- space button
		hitCombo = (hitCombo + 1)
	elseif hitCombo == 2 then
		hitCombo = 0
	end
end

function goodNoteHit(i, d, t, s)
	if hitCombo == 0 then -- normal notes
		triggerEvent('Alt Idle Animation', 'bf','');
		characterPlayAnim('bf', animsB[d + 1]);
	elseif hitCombo == 1 then -- alt notes
		triggerEvent('Alt Idle Animation', 'bf', '-alt');
		characterPlayAnim('bf', animsA[d + 1]);
	end
end
