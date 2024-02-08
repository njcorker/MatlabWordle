dictionaryText = fileread('dictionary.txt') %reads in dictionary as character arrays
    dictionaryWords = splitlines(dictionaryText); %splits text array into words
    dictionaryWords = dictionaryWords(1:end-1); %removes the empty line from the end

    selectRandom = randperm(length(dictionaryWords), 1);
    randword = dictionaryWords{selectRandom}
    wordToGuess = num2cell(randword)