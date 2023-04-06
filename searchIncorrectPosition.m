%searchIncorrectPosition
%searches for letters in the incorrect position that are still in the word
%Nicholas Corker
%a1852681

function [correctGuessedLetters] = searchIncorrectPosition(guess, remainingToGuess, correctGuessedLetters)
    for i = 1:5
            if any(guess(i) == remainingToGuess) && ~correctGuessedLetters(i)
                remainingToGuess(remainingToGuess == guess(i));  
                correctGuessedLetters(i) = 2;
            end
    end
end


%comment version of loop in case it goes wrong
%for i = 1:numberOfLetters
            %if any(guess(i) == remainingToGuess) && ~correctGuessedLetters(i)
                %remainingToGuess(remainingToGuess == guess(i));  
                %correctGuessedLetters(i) = 2;
            %end
        %end