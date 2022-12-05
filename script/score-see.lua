function onCreate()

    makeLuaText('score', 0, 500, 0, 0);
    addLuaText('score');

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