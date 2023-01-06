function onUpdate(elapsed)
	if inGameOver == true then
		loadSong('fracture', -1);
		return Function_Stop
	end
end