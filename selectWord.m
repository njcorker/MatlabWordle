%Created by Nicholas Corker

%this is a function to select the dictionary word for the game - it is a
%five letter word taken from a dictionary txt and randomly chooses each
%iteration of the program

%there are approx 200 common 5 letter words in the dictionary file


function [wordToGuess, wordToGuessChar] = selectWord(dictionaryFile) %initialises select word function
   
    dictionaryText = fileread(dictionaryFile); %reads in dictionary as character arrays
    dictionaryWords = splitlines(dictionaryText); %splits text array into words
    dictionaryWords = dictionaryWords(1:end-1); %removes the empty line from the end

    selectRandom = randperm(length(dictionaryWords), 1); %selects a random word form the list
    randWord = dictionaryWords{selectRandom}; 
    wordToGuess = lower(randWord); %puts the word into lowercase
    wordToGuessChar = char(wordToGuess); %converts to character array
    
end