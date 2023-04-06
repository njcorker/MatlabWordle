%selectWord function test driver and test cases
%selectWord randomly selects a word from the given dictionary.txt file and
%sets it as a variable

%Nicholas Corker
%a1852681

%Test Case 1: Call a random word
%gives wordToGuess and wordToGuessChar

[wordToGuess, wordToGuessChar] = selectWord('dictionary.txt'); %call function
disp(wordToGuessChar); %display char array from test case
disp(wordToGuess); %display string

%test case 2:
[wordToGuess, wordToGuessChar] = selectWord('dictionary.txt'); %call function
disp(wordToGuessChar); %display char array from test case
disp(wordToGuess); %display string

%test case 3:
[wordToGuess, wordToGuessChar] = selectWord('dictionary.txt'); %call function
disp(wordToGuessChar); %display char array from test case
disp(wordToGuess); %display string

%if working each test case should have a different word to guess, and every
%time the tests are re-run it should be different
