function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an taco Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == '' then
            setPropertyFromGroup('unspawnNotes', i, 'texture', ''); --Change texture
            setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0'); --Default value is: 0.023, health gained on hit
            setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0'); --Default value is: 0.0475, health lost on miss
            setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', true);    
        end
    end
end