%define the word to guess and the player's guesses




wordToGuess = selectWord('dictionary.txt');

wordToGuessChar = char(wordToGuess);
%creates the word to guess and as a character array

%define the number of guesses - for test it equals 6 though
maxGuesses = 6;
numberOfGuesses = 0;

%define the number of letters
numberOfLetters = 5;

%set index to 1
i = 1;

%loop and search for the directly matching letters
correctGuessedLetters = 0 ;
while numberOfGuesses < maxGuesses
    guess = lower(input('Guess the word: ','s'));
    guessChar = num2cell(guess);
        for i = 1:numberOfLetters
            if guess(i) == wordToGuessChar(i)
                correctGuessedLetters(i) = 1;
            else
                correctGuessedLetters(i) = 0;
            end
            
        end
  
        remainingToGuess = wordToGuessChar(~correctGuessedLetters);

        %search for letters in the wrong spot
        for i = 1:numberOfLetters
            if any(guess(i) == remainingToGuess) && ~correctGuessedLetters(i)
                remainingToGuess(remainingToGuess == guess(i))  
                correctGuessedLetters(i) = 2;
            end
        end
        correctGuessedLettersCell = num2cell(correctGuessedLetters);
        disp(guessChar);
        disp(correctGuessedLettersCell);
        numberOfGuesses = numberOfGuesses +1;
end



 

    