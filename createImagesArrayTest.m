%this is a test for the code required to print/display a set of images
%which tells the user whether or not they had their letters in the right
%positions

thing = [1     1     0     2    2] %this vector is a series of numbers which correspond to values which are given in the actual code of my main functions and game*

cellArray = num2cell(thing)
letterImage = []; %blank image array
%now that we have some ones and twos in the cell array(s) we can try and
%use them to display an image depending on  the image


A = imread('greenSquare.png'); %sets A to the correct letter image green
B = imread('yellowSquare.png'); %sets B to right letter wrong place yellow
C = imread('greySquare.png'); %sets C to wrong letter grey

%define the image vector letter image

disp(thing);
for i = 1:length(thing)
    if thing(i) == 1
        letterImage = cat(2,letterImage, A);
    elseif thing(i) == 2
        letterImage = cat(2,letterImage, B);
    elseif thing(i) == 0
        letterImage = cat(2,letterImage, C);
    end
end

imshow(letterImage);
%wordleImage = cat(2,letterImage);
%imshow(wordleImage);