local Truc = 0;
function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an taco Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'flowerNote' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'custom-Note/bluep'); --Change texture
			Truc = getRandomInt(1, 3);
			if Truc == 1 then
				setPropertyFromGroup('unspawnNotes', i, 'texture', 'custom-Note/bluep'); --Change texture
                setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0.023'); --Default value is: 0.023, health gained on hit
                setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0.0475'); --Default value is: 0.0475, health lost on miss
                setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false);    
            end
			
			if Truc == 2 then
				setPropertyFromGroup('unspawnNotes', i, 'texture', 'custom-Note/redp'); --Change texture
                setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0.023'); --Default value is: 0.023, health gained on hit
                setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0.0475'); --Default value is: 0.0475, health lost on miss
                setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false);    
            end

			if Truc == 3 then
				setPropertyFromGroup('unspawnNotes', i, 'texture', 'custom-Note/whitep'); --Change texture
                setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0.023'); --Default value is: 0.023, health gained on hit
                setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0.0475'); --Default value is: 0.0475, health lost on miss
            end

			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0.023'); --Default value is: 0.023, health gained on hit
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0.0475'); --Default value is: 0.0475, health lost on miss
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has no penalties
			end
		end
	end

	makeLuaText('PollenCounter', 0, 700, 0, 100);
	addLuaText('PollenCounter');
	setTextWidth('PollenCounter', 1300);
	setTextSize('PollenCounter', 50);
	setTextAlignment('PollenCounter', 'center');
	setTextColor('PollenCounter', 9);
    precacheSound('Honey');
    precacheSound('Pop');
    precacheSound('Pollen');
    precacheSound('Stinger');

end


local PollenCount = 0;
local HPregen = 0;
function goodNoteHit(id, noteData, noteType, isSustainNote)
    if noteType == 'flowerNote' then
        PollenCount = PollenCount + 1;
        setTextString('PollenCounter', PollenCount);
        playSound('Pollen', 0.5);
    end

    if noteType == 'honey' then
        PollenCount = PollenCount + 4;
        setTextString('PollenCounter', PollenCount);
        playSound('Honey', 0.5);
    end
end

function noteMiss(membersIndex, noteData, noteType, isSustainNote)
    if noteType == 'flowerNote' then
		addLuaSprite('SplashPollen', true);
	end
end


function onUpdate(elapsed)
	if PollenCount >= 5 and PollenCount <= 10 and keyJustPressed('space') then
		setProperty('health', getProperty('health') +0.200);
        setTextColor('PollenCounter', 255,0,0);
        PollenCount = 0;
    end
        
    if PollenCount >= 11 and PollenCount <= 20 and keyJustPressed('space') then
        setProperty('health', getProperty('health') +0.400);
        setTextColor('PollenCounter', 255,128,0);
        PollenCount = 0;
    end

    if PollenCount >= 21 and PollenCount <= 40 and keyJustPressed('space') then
        HPregen = 8;
        PollenCount = 0;
        runTimer('itsRegen', 0.250, 8);
        setTextColor('PollenCounter', 255,128,0);
        PollenCount = 0;
    end

    if PollenCount >= 41 and PollenCount <= 50 and keyJustPressed('space') then
        setProperty('health', getProperty('health') +1);
        setTextColor('PollenCounter', 0,255,0);
        PollenCount = 0;
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'itsRegen' and HPregen >= 1 then
        setProperty('health', getProperty('health') +0.300);
        HPregen = HPregen - 1;
    end
end