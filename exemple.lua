function onCreate()

    precacheSound('sound');
end

local test = false;

function onUpdate(elapsed)
    if test == true then
        playSound('sound', 1);
    end
end
