function onCreate()

    makeLuaText('score', 0, 700, 0, 100);
    addLuaText('score');
    setTextWidth('score', 1300);
    setTextSize('score', 50);
    setTextAlignment('score', 'center');

end

local ScoreADD = 0;

function goodNoteHit(membersIndex, noteData, noteType, isSustainNote)
    if noteType == '' then
        ScoreADD = ScoreADD + 100;
        setTextString('score', getTextString('score') + 100);
    end
end

function noteMiss(membersIndex, noteData, noteType, isSustainNote)
    if noteType == '' then
        ScoreADD = ScoreADD - 100;
        setTextString('score', getTextString('score') - 100);
    end
end