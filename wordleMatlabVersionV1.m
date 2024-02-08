%%wordlePlusV1
%a game inspired by wordle with additional featuers/game difficulty

%this version of the program successfully uses a function selectWord to
%load in the word to guess, it also allows the user to select difficulty
%modes, and will allow the user to guess the word

%for guesses, it will tell the user if the letters are in the word and in
%the correct position, or not. it will not yet tell the user if their guess
%contains the correct letters but in the wrong positions

wordToGuess = selectWord('dictionary.txt');
wordStringForm = convertCharsToStrings(wordToGuess);
disp(wordStringForm);
disp(wordToGuess);

wordToGuessCell = num2cell(wordToGuess);
disp(wordToGuessCell);



numberOfGuesses = 6



i = numberOfGuesses; %set index to the number of guesses
for i = numberOfGuesses:-1:1 %from number of guesses to 1 decreasing by 1
    guess = input("What is your guess? ", 's'); %asks user for input
    guessCell = num2cell(guess); %converts input to cell array
    disp(guessCell); %displays the cell array for the user input
    compared = strcmp(wordToGuessCell, guessCell); %compares the two cell ...
    %arrays (user input and word to guess), 
    compared = num2cell(compared); %converts compared to a num2cell array
    disp(compared); %displays the array for compared contents
    tf = strcmp(wordToGuess, guessCell);
        if tf == 1
            fprintf("congratulation, you guessed the word: %s", wordToGuess{:})
        end
end
    

%note that after this attempt at creating a version I instead opted to
%create individual functions for specific tasks, tested them out in test
%cases through a series of drivers, and then implemented them together in a
%third versoin wordleMatlabVersionV3, which required very few changes given
%many processes are functionised


%incrementally developing functions to do certain tasks was better for me
%as it allowed me to pinpoint issues and test specific features of the
%game.
                
