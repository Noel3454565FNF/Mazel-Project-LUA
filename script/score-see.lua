function onCreate()

    makeLuaText('score', 0, 700, 0, 100);
    addLuaText('score');
    setTextWidth('score', 1300);
    setTextSize('score', 50);
    setTextAlignment('score', 'center');

end

local ScoreADD = 0;
local ScoreColour = -1;

function goodNoteHit(membersIndex, noteData, noteType, isSustainNote)
    if noteType == '' then
        ScoreADD = ScoreADD + 100;
        ScoreColour = ScoreColour + 1;
        setTextString('score', getTextString('score') + 100);
    end
end

function onUpdate(elapsed)
    if ScoreColour == 0 then
        setTextColor('score', 1);

    elseif ScoreColour == 1 then
            setTextColor('score', 11);
            
    elseif ScoreColour == 2 then
            setTextColor('score', 1000);

    elseif ScoreColour == 3 then
            setTextColor('score', 18000);

    elseif ScoreColour == 4 then
        setTextColor('score', 36000);

    elseif ScoreColour == 5 then
        setTextColor('score', 72000);

    elseif ScoreColour == 6 then
        setTextColor('score', 144000);

    elseif ScoreColour == 7 then
        setTextColor('score', 288000);

    elseif ScoreColour == 8 then
        setTextColor('score', 576000);

    elseif ScoreColour >= 9 then
        ScoreColour = 0;

end

function noteMiss(membersIndex, noteData, noteType, isSustainNote)
    if noteType == '' then
        ScoreADD = ScoreADD - 100;
        ScoreColour = ScoreColour - 1;
        setTextString('score', getTextString('score') - 100);
    end
end

end