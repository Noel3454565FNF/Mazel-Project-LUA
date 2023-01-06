local OK = 1;

function onCreate()

    if week == 'Full-ass-week' then
        OK = 0;
    end

    if songName == 'shitpost' then
        OK = 0;
    end

    if OK == 1 then
	makeLuaText('PollenCounter', 0, 700, 0, 100);
	addLuaText('PollenCounter');
	setTextWidth('PollenCounter', 1300);
	setTextSize('PollenCounter', 50);
	setTextAlignment('PollenCounter', 'center');
	setTextColor('PollenCounter', 10000000);
    makeAnimatedLuaSprite('Sting', 'Things/StingerInAss', 0, 0);
    addAnimationByPrefix('Sting', 'pain', 'StingerInAss Pain', 10, true);
    precacheSound('Honey');
    precacheSound('Pop');
    precacheSound('Pollen');
    precacheSound('Stinger');
    makeLuaSprite('CompteurHoney', 'Things/Compteurhoney', 530, -110);
    scaleObject('CompteurHoney', 0.500, 0.500);
    setScrollFactor('CompteurHoney', 0, 0);
    setObjectCamera('CompteurHoney', 'game');
    addLuaSprite('CompteurHoney', true);
    end
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
        PollenCount = PollenCount + getRandomInt(2, 5);
        setTextString('PollenCounter', PollenCount);
        playSound('Honey', 0.5);
    end

    if noteType == 'StingerNote' and noteData == 0 then
        makeAnimatedLuaSprite('Sting', 'Things/StingerInAss', defaultPlayerStrumX0, -100);
        setObjectCamera('Sting', 'hud');
        addAnimationByPrefix('Sting', 'pain', 'StingerInAss Pain', 24, true);
        addLuaSprite('Sting', true);
        runTimer('destroyThePain', 0.6);
        playSound('Stinger', 0.8);
        setProperty('health', getProperty('health') -0.400);
    end

    if noteType == 'StingerNote' and noteData == 1 then
        makeAnimatedLuaSprite('Sting', 'Things/StingerInAss', defaultPlayerStrumX1, -100);
        setObjectCamera('Sting', 'hud');
        addAnimationByPrefix('Sting', 'pain', 'StingerInAss Pain', 24, true);
        addLuaSprite('Sting', true);
        runTimer('destroyThePain', 0.6);
        playSound('Stinger', 0.8);
        setProperty('health', getProperty('health') -0.400);
    end

    if noteType == 'StingerNote' and noteData == 2 then
        makeAnimatedLuaSprite('Sting', 'Things/StingerInAss', defaultPlayerStrumX2, -100);
        setObjectCamera('Sting', 'hud');
        addAnimationByPrefix('Sting', 'pain', 'StingerInAss Pain', 24, true);
        addLuaSprite('Sting', true);
        runTimer('destroyThePain', 0.6);
        playSound('Stinger', 0.8);
        setProperty('health', getProperty('health') -0.400);
    end

    if noteType == 'StingerNote' and noteData == 3 then
        makeAnimatedLuaSprite('Sting', 'Things/StingerInAss', defaultPlayerStrumX3, -100);
        setObjectCamera('Sting', 'hud');
        addAnimationByPrefix('Sting', 'pain', 'StingerInAss Pain', 24, true);
        addLuaSprite('Sting', true);
        runTimer('destroyThePain', 0.6);
        playSound('Stinger', 0.8);
        setProperty('health', getProperty('health') -0.400);
    end
end


function onUpdate(elapsed)
	if PollenCount >= 5 and PollenCount <= 10 and keyJustPressed('space') then
		setProperty('health', getProperty('health') +0.200);
        setTextColor('PollenCounter', 255,0,0);
        PollenCount = 0;
        setTextString('PollenCounter', PollenCount);
        playSound('Pop', 1);
    end
        
    if PollenCount >= 11 and PollenCount <= 20 and keyJustPressed('space') then
        setProperty('health', getProperty('health') + getRandomFloat(0.150, 0.400));
        setTextColor('PollenCounter', 255,128,0);
        PollenCount = 0;
        setTextString('PollenCounter', PollenCount);
        playSound('Pop', 1);
    end

    if PollenCount >= 21 and PollenCount <= 40 and keyJustPressed('space') then
        HPregen = 8;
        PollenCount = 0;
        setTextString('PollenCounter', PollenCount);
        runTimer('itsRegen', 0.250, 8);
        setTextColor('PollenCounter', 255,128,0);
        playSound('Pop', 1);
    end

    if PollenCount >= 41 and PollenCount <= 50 and keyJustPressed('space') then
        setProperty('health', getProperty('health') +1);
        setTextColor('PollenCounter', 0,255,0);
        PollenCount = 0;
        setTextString('PollenCounter', PollenCount);
        playSound('Pop', 1);
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'itsRegen' and HPregen >= 1 then
        setProperty('health', getProperty('health') +0.100);
        HPregen = HPregen - 1;
    end

    if tag == 'destroyThePain' then
        removeLuaSprite('Sting', true);
    end
end