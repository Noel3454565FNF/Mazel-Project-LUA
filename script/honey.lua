function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an taco Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'honey' then
            setPropertyFromGroup('unspawnNotes', i, 'texture', 'custom-Note/honey'); --Change texture
            setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0.023'); --Default value is: 0.023, health gained on hit
            setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0.0475'); --Default value is: 0.0475, health lost on miss
            setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false);    
        end
    end
    precacheImage('Things/splash1');
    precacheImage('Things/splash2');
    precacheImage('Things/splash3');
    precacheImage('Things/splash4');
    precacheImage('Things/splash5');
    precacheImage('Things/splash6');
    precacheImage('Things/splash7');
    precacheImage('Things/splash8');
    precacheImage('Things/splash9');
    precacheImage('Things/splash10');
    makeLuaSprite('1', 'Things/splash1', getRandomInt(200, 900), getRandomInt(0, 900));
    makeLuaSprite('2', 'Things/splash2', getRandomInt(200, 900), getRandomInt(0, 900));
    makeLuaSprite('3', 'Things/splash3', getRandomInt(200, 900), getRandomInt(0, 900));
    makeLuaSprite('4', 'Things/splash4', getRandomInt(200, 900), getRandomInt(0, 900));
    makeLuaSprite('5', 'Things/splash5', getRandomInt(200, 900), getRandomInt(0, 900));
    makeLuaSprite('6', 'Things/splash6', getRandomInt(200, 900), getRandomInt(0, 900));
    makeLuaSprite('7', 'Things/splash7', getRandomInt(200, 900), getRandomInt(0, 900));
    makeLuaSprite('8', 'Things/splash8', getRandomInt(200, 900), getRandomInt(0, 900));
    makeLuaSprite('9', 'Things/splash9', getRandomInt(200, 900), getRandomInt(0, 900));
    makeLuaSprite('10', 'Things/splash10', getRandomInt(200, 900), getRandomInt(0, 900));
    setObjectCamera('1', 'other');
    setObjectCamera('2', 'other');
    setObjectCamera('3', 'other');
    setObjectCamera('4', 'other');
    setObjectCamera('5', 'other');
    setObjectCamera('6', 'other');
    setObjectCamera('7', 'other');
    setObjectCamera('8', 'other');
    setObjectCamera('9', 'other');
    setObjectCamera('10', 'other');
    makeLuaText('test', test, 700, 0, 400);
    addLuaText('test');
    setTextAlignment('test', 'center');
end

local YourFace = 0;
local splash1 = 0;
local splash2 = 0;
local splash3 = 0;
local splash4 = 0;
local splash5 = 0;
local splash6 = 0;
local splash7 = 0;
local splash8 = 0;
local splash9 = 0;
local splash10 = 0;

function noteMiss(membersIndex, noteData, noteType, isSustainNote)
    if noteType == 'honey' then
        YourFace = getRandomInt(1, 10);
    end

        if YourFace == 1 then
            splash1 = 1;
            setProperty('1.alpha', getProperty('1.alpha') + 1.000);
            addLuaSprite('1', true);
            runTimer('Bye1', 6, 5);
        end

        if YourFace == 2 then
            splash2 = 1;
            setProperty('2.alpha', getProperty('2.alpha') + 1.000);
            addLuaSprite('2', true);
            runTimer('Bye2', 6, 5);
        end

        if YourFace == 3 then
            splash3 = 1;
            setProperty('3.alpha', getProperty('3.alpha') + 1.000);
            addLuaSprite('3', true);
            runTimer('Bye3', 6, 5);
        end

        if YourFace == 4 then
            splash4 = 1;
            setProperty('4.alpha', getProperty('4.alpha') + 1.000);
            addLuaSprite('4', true);
            runTimer('Bye4', 6, 5);
        end

        if YourFace == 5 then
            splash5 = 1;
            setProperty('5.alpha', getProperty('5.alpha') + 1.000);
            addLuaSprite('5', true);
            runTimer('Bye5', 6, 5);
        end

        if YourFace == 6 then
            splash6 = 1;
            setProperty('6.alpha', getProperty('6.alpha') + 1.000);
            addLuaSprite('6', true);
            runTimer('Bye6', 6, 5);
        end

        if YourFace == 7 then
            splash7 = 1;
            setProperty('7.alpha', getProperty('7.alpha') + 1.000);
            addLuaSprite('7', true);
            runTimer('Bye7', 2, 5);
        end

        if YourFace == 8 then
            splash8 = 1;
            setProperty('8.alpha', getProperty('8.alpha') + 1.000);
            addLuaSprite('8', true);
            runTimer('Bye8', 6, 5);
        end

        if YourFace == 9 then
            splash9 = 1;
            setProperty('9.alpha', getProperty('9.alpha') + 1.000);
            addLuaSprite('9', true);
            runTimer('Bye9', 6, 5);
        end

        if YourFace == 10 then
            splash10 = 1;
            setProperty('10.alpha', getProperty('10.alpha') + 1.000);
            addLuaSprite('10', true);
            runTimer('Bye10', 6, 5);
        end
end


function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'Bye1' then
        setProperty('1.alpha', getProperty('1.alpha') - 0.200);
        splash1 = 0;
    end

    if tag == 'Bye2' then
        setProperty('2.alpha', getProperty('2.alpha') - 0.200);
        splash2 = 0;
    end

    if tag == 'Bye3' then
        setProperty('3.alpha', getProperty('3.alpha') - 0.200);
        splash3 = 0;
    end

    if tag == 'Bye4' then
        setProperty('4.alpha', getProperty('4.alpha') - 0.200);
        splash4 = 0;
    end

    if tag == 'Bye5' then
        setProperty('5.alpha', getProperty('5.alpha') - 0.200);
        splash5 = 0;
    end

    if tag == 'Bye6' then
        setProperty('6.alpha', getProperty('6.alpha') - 0.200);
        splash6 = 0;
    end

    if tag == 'Bye7' then
        setProperty('7.alpha', getProperty('7.alpha') - 0.200);
        splash7 = 0;
    end

    if tag == 'Bye8' then
        setProperty('8.alpha', getProperty('8.alpha') - 0.200);
        splash8 = 0;
    end

    if tag == 'Bye9' then
        setProperty('9.alpha', getProperty('9.alpha') - 0.200);
        splash9 = 0;
    end

    if tag == 'Bye10' then
        setProperty('10.alpha', getProperty('10.alpha') - 0.200);
        splash10 = 0;
    end
end

