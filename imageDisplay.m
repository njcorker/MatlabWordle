%imageDisplay
%a matlab function to display an image which tells the user which letters
%they got right, wrong, or slightly right.

%Nicholas Corker
%a1852681


                                                                                                                                                                                                                                                              
function [letterImageAll] = imageDisplay(correctGuessedLetters, letterImageGuess, letterImageAll)
%read in the image files needed
A = imread('greenSquare.png'); %sets A to the correct letter image green
B = imread('yellowSquare.png'); %sets B to right letter wrong place yellow
C = imread('greySquare.png'); %sets C to wrong letter grey



%define j loop
j = 1;

for j = 1:length(correctGuessedLetters)

    if correctGuessedLetters(j) == 1
        letterImageGuess = cat(2,letterImageGuess, A);

    elseif correctGuessedLetters(j) == 2
        letterImageGuess = cat(2,letterImageGuess, B);

    elseif correctGuessedLetters(j) == 0
        letterImageGuess = cat(2,letterImageGuess, C);

    end
end

letterImageAll = cat(1, letterImageAll, letterImageGuess);
imshow(letterImageAll);

end