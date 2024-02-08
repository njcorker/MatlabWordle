%searchCorrectPositionTestDriver
%test driver to test the search correct position functionality

%Nicholas Corker
%a1852681

%Test Case 1 - some matching letters
%define variables
i = 1
numberOfLetters = 5
guess = 'hello'
wordToGuessChar = 'helps'

%run function
correctGuessedLetters = searchCorrectPosition(i, numberOfLetters, guess, wordToGuessChar);
disp(correctGuessedLetters); %display output array


%test case 2 - no matching letters
i = 1
numberOfLetters = 5
guess = 'threes'
wordToGuessChar = 'ethyl'

%run function
correctGuessedLetters = searchCorrectPosition(i, numberOfLetters, guess, wordToGuessChar);
disp(correctGuessedLetters); %display output array
disp('only scans the first 5 characters despite guess having 6 letters');


%test case 3 - all matching letters
i = 1
numberOfLetters = 5
guess = 'maze'
wordToGuessChar = 'amaze'

%run function
correctGuessedLetters = searchCorrectPosition(i, numberOfLetters, guess, wordToGuessChar);
disp(correctGuessedLetters); %display output array