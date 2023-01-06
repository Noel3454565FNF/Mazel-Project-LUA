function onCreate()
   
    precacheImage('good-ending');
    precacheImage('normal-ending');
    precacheImage('bad-ending');
    makeLuaSprite('good-ending', 'good-ending', 0, 0);
    makeLuaSprite('normal-ending', 'normal-ending', 0, 0);
    makeLuaSprite('bad-ending', 'bad-ending', 0, 0);
    setObjectCamera('good-ending', 'other');
    setObjectCamera('normal-ending', 'other');
    setObjectCamera('bad-ending', 'other');

end

local thenGo = false;
local goDie = false;
function onUpdate(elapsed)
    if week == 'test1' and songName == 'test' then
        if inGameOver == true and keyPressed('space') then
            goDie = true;
        end

        if EndSongDetected == true and keyPressed('space') then
            theGo = true;
        end
    end
end

function onEndSong()
    if week == 'test1' and songName == 'test' then
        if misses == 0 then
            EndSongDetected = true;
            addLuaSprite('good-ending', true);
            return Function_Stop
        end
            if thenGo == true then
                return Function_Continue;
            end
        
        if misses >= 5 then
            EndSongDetected = true;
            addLuaSprite('bad-ending');
            return Function_Stop
        end
            if thenGo == true then
                return Function_Continue;
            end
    end
end

function onGameOver()
    if week == 'test1' and songName == 'test' and goDie == false then
        addLuaSprite('normal-ending', true);
        return Function_Stop
    end
        if goDie == true then
            removeLuaSprite('normal-ending');
            return Function_Continue;
        end
end