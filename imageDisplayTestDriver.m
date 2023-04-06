%imageDisplayTestDriver
%this is a test driver to test the functionality of the display image
%functionality

%Nicholas Corker
%a1852681

%Each test case builds on the previous
clear all %clear variables
set(0,'DefaultFigureWindowStyle','docked') %should set figures to open in docked mode for this test
warning('off', 'all'); %temporarily disables warnings as docking the figure presents a minor warning that doesnt cause any program issues

%Test Case 1:
correctGuessedLetters = [1 0 2 1 0] %random test matrix of guess number values
letterImageGuess = []; %empty matrix which is defined in the function
letterImageAll = []; %empty matrix which is defined within the function again
letterImageAll = imageDisplay(correctGuessedLetters, letterImageGuess, letterImageAll);

%Test case 2
%builds upon test 1 using cocatenation
correctGuessedLetters = [1 0 0 0 2]
letterImageAll = imageDisplay(correctGuessedLetters, letterImageGuess, letterImageAll);

%Test Case 3 - all green
correctGuessedLetters = [1 1 1 1 1]
letterImageAll = imageDisplay(correctGuessedLetters, letterImageGuess, letterImageAll);

%Test Case 4 - all yellow
correctGuessedLetters = [2 2 2 2 2] 
letterImageAll = imageDisplay(correctGuessedLetters, letterImageGuess, letterImageAll);

%Test Case 5 - all grey
correctGuessedLetters = [0 0 0 0 0]
letterImageAll = imageDisplay(correctGuessedLetters, letterImageGuess, letterImageAll);





