%wordleMatlabVersionV3

%This is a Matlab version of the popular... 
%word guessing game, Wordle.

%Nicholas Corker.
%a1852681

%Clears variables, windows, workspace, disables warnings etc.
close all
clc
clear workspace
warning('off', 'all');% A Warning would display when displaying docked figures.

%Ask the Player if they would like to read instructions.
showInstructions %call and run simple functions

%Read in the users difficulty selection.
maxGuesses = selectDifficulty; %determines maxGuesses.

%Randomly select wordToGuess from dictionary.txt.
[wordToGuess, wordToGuessChar] = selectWord('dictionary.txt');

%The dictionary used is the first 100 words of a dictionary available
%at https://github.com/charlesreid1/five-letter-words/blob/master/sgb-words.txt

%Define variables.
numberOfGuesses = 0; %Set number of guesses user has had.
numberOfLetters = 5; %Number of letters in wordToGuess.
i = 1; %Index for loop(s).
correctGuessedLetters = 0; %set correct letters to 0 at start.

%Define letterImage(s) - matrices used to display image.
letterImageGuess= [];
letterImageAll = [];

%Loop for game.
while numberOfGuesses < maxGuesses %Loop until exceed maxGuesses.

    %Sets figures to open in docked mode.
    set(0,'DefaultFigureWindowStyle','docked') 
    
    %Asks for guess and converts to lowercase.
    guess = lower(input('Guess the word: ','s')); 
    
    %while guess has too much or not enough letters
    while length(guess) > length(wordToGuess) | ...
       length(guess) < length(wordToGuess) %Checks guess letters.
            guess = input(['Your guess had too many or not enough letters! ' ...
                    'Please try to guess again. ' ...
                    'Guess the word: '], 's'); %Asks for antoher guess.
    end

    %Search for characters in the correct position using a function.
    correctGuessedLetters = searchCorrectPosition(i, numberOfLetters, ...
                            guess, wordToGuessChar);
    
    %Set the remaining characters to guess  (ie what hasnt been ...
    %guessed is stored in a new array remainingToGuess.
    remainingToGuess = wordToGuessChar(~correctGuessedLetters);

    %Search for letters in the wrong spot.
    correctGuessedLetters = searchIncorrectPosition(guess, remainingToGuess, ...
                            correctGuessedLetters); %Driver for function.
    disp(correctGuessedLetters); %Displays the correctly guessed letters array.

    %Call function imageDisplay to give the image breakdown of ...
    %correct letters.,
    letterImageAll = imageDisplay(correctGuessedLetters, ...
                     letterImageGuess, letterImageAll); %Call function to ...
                                                        %display image.

    numberOfGuesses = numberOfGuesses +1; %Increase guess counter.

    if guess == wordToGuess
       %Displays winning message.
       fprintf('Congratulations! \n');
       fprintf('You guessed the word in %d guess(es)! \n', numberOfGuesses);
       fprintf('The Word was %s!', wordToGuess);

       pause(10); %Pause before clearing game board.
       close all
       clear all
       clc

       return %Ends game.
    end
end

%Display losing message.
fprintf('You did not guess the word! ');
fprintf('The word was %s!', wordToGuess);

pause(10); %Pause before clearing game board.
close all
clear all
clc

%End of Game


