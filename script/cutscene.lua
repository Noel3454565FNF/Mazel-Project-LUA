local youCanGo = false;

function onUpdate(elapsed)
	if youCanGo == false and keyPressed('space') then
		youCanGo = true;
		startCountdown();
	end
end

function onStartCountdown()
	if youCanGo == false then
		makeLuaSprite('start', 'WarnP2', 0, 0);
		addLuaSprite('start', true);
		return Function_Stop
	end
		if keyPressed('space') then
			return Function_Continue;
	end
end