%searchIncorrectPositionTestDriver
%test driver for searchIncorrectPosition functionality
%in this case we need to run searchCorrectPosition first

%Nicholas Corker
%a1852681

%Test Case 1 - random test
%define variables
i = 1
numberOfLetters = 5
guess = 'hello'
wordToGuessChar = 'holds'

%run function searchCorrectLetters
correctGuessedLetters = searchCorrectPosition(i, numberOfLetters, guess, wordToGuessChar);
disp(correctGuessedLetters); %display output array

%we also search for the letters not in the correctGuessedLetters, and
%assign to remainingToGuess
remainingToGuess = wordToGuessChar(~correctGuessedLetters);

%then we run the new function
correctGuessedLetters = searchIncorrectPosition(guess, remainingToGuess, correctGuessedLetters);
disp('New output with new function');
disp(correctGuessedLetters);


%Test Case 2 - all matching letters
%define variables
i = 1
numberOfLetters = 5
guess = 'hello'
wordToGuessChar = 'hello'

%run function searchCorrectLetters
correctGuessedLetters = searchCorrectPosition(i, numberOfLetters, guess, wordToGuessChar);
disp(correctGuessedLetters); %display output array

%we also search for the letters not in the correctGuessedLetters, and
%assign to remainingToGuess
remainingToGuess = wordToGuessChar(~correctGuessedLetters);

%then we run the new function
correctGuessedLetters = searchIncorrectPosition(guess, remainingToGuess, correctGuessedLetters);
disp('New output with new function');
disp(correctGuessedLetters);


%Test Case 3 - all letters in wrong position
%define variables
i = 1
numberOfLetters = 5
guess = 'hello'
wordToGuessChar = 'lloeh'

%run function searchCorrectLetters
correctGuessedLetters = searchCorrectPosition(i, numberOfLetters, guess, wordToGuessChar);
disp(correctGuessedLetters); %display output array

%we also search for the letters not in the correctGuessedLetters, and
%assign to remainingToGuess
remainingToGuess = wordToGuessChar(~correctGuessedLetters);

%then we run the new function
correctGuessedLetters = searchIncorrectPosition(guess, remainingToGuess, correctGuessedLetters);
disp('New output with new function');
disp(correctGuessedLetters);
