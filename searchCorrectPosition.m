%searchCorrectPosition
%search for matches in the correct position
%Nicholas Corker


function [correctGuessedLetters] = searchCorrectPosition(i, numberOfLetters, guess, wordToGuessCell)
    for i = 1:5
            if guess(i) == wordToGuessCell(i)
                correctGuessedLetters(i) = 1;
            else
                correctGuessedLetters(i) = 0;
            end
            
    end
end 