%set the number of guesses for the player in total
%opens a list dialogue box which allows the user to select a difficulty
%setting - the game scales the ammount of attempts depending on the user's
%difficulty selection


function [numberOfGuesses] = selectDifficulty %sets function parameters 
numberOfGuesses = 0; %defines number of guesses as 0
difficulty = {"Easy", "Medium", "Hard"}; %initialises difficulty options
difficultySelection = menu('Select A Difficulty', difficulty); %opens a menu gui element for the player to select their difficulty
%difficulty options are stored as numbers from 1-3 
        if difficultySelection == 1 %if loop depending on the user's selection, updates the number of guesses
            numberOfGuesses = 6;

        elseif difficultySelection == 2
            numberOfGuesses = 5;

        elseif difficultySelection == 3
            numberOfGuesses = 4;

        end %end of if loop
        
fprintf("You have %d guesses! \n", numberOfGuesses); %displays the amount of guesses to the user