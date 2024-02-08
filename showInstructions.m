%displayInstructionsFunction
%this function displays the instructions on how to play wordle for any
%users who are unaware of how to
%Created by Nicholas Corker
%a1852681

function [instructions] = showInstructions
askInstructions = {"Yes, show me the instructions!", "No thanks, let me play."};
instructionsSelection = menu('Do you want to read the instructions and how to play? ', askInstructions); %asks the player in a menu box if they want to see the instructions
if instructionsSelection == 1
    imshow('instructions.png' ); %greenSquare is a temporary file which will be replaced by a proper isntruction manual
   
end


