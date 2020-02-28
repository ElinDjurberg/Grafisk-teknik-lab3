function [X, Y, Z]=spectra2xyz(reflectance, illumination)
%% LAB3, TASK2
%% Beräkna CIEXYZ tristimulusvärden
%
% Beräkna CIEXYZ-värdena av ett objekt under en viss ljuskälla.
%
% Tänk att om man vill räkna vitpunkten för en ljuskälla, bör objektet vara
% helt reflektivt i alla våglängder. Läs första stycket på sidan 66 i
% kompendiet.
%% Who has done it:
%
% Author: Same LiU-ID and name as in the Lisam submission
% Co-author: You can work in groups of max 2, this is the LiU-ID/name of
% the other member of the group
%Johnny Elm�r Jonel107
%ELin Djurberg elidj214
%
%% Syntax of the function
%      Input arguments:
%           reflectance: is a column vector specifying the reflectance
%           spectrum of an object
%           illumination: is a column vector specifying the intensity of a
%           light source
%      Output arguments:
%            X: The CIEX-value of the resulting color
%            Y: The CIEY-value of the resulting color
%            Z: The CIEZ-value of the resulting color
%
% You MUST NEVER change the first line
%
%% Basic version control (in case you need more than one attempt)
%
% Version: 1
% Date: today
%
% Gives a history of your submission to Lisam.
% Version and date for this function have to be updated before each
% submission to Lisam (in case you need more than one attempt)
%
%% General rules
%
% 1) Don't change the structure of the template by removing %% lines
%
% 2) Document what you are doing using comments
%
% 3) Before submitting make the code readable by using automatic indentation
%       ctrl-a / ctrl-i
%
% 4) your code should work for any given input arguments, if they are
%    fulfilling the conditions specified in the syntax of the function
%
% 5) In case a task requires that you have to submit more than one function
%       save every function in a single file and collect all of them in a
%       zip-archive and upload that to Lisam. NO RAR, NO GZ, ONLY ZIP!
%
% 6) Often you must do something else between the given commands in the
%       template
%
%% Here starts your code.
% Write the appropriate MATLAB commands right after each comment below.
%
%% Loading the useful data
%
%load spectra %this will give you all the data you need to write the code. 
T = load ('spectra.mat');
%The data and their size are specified in the document Lab_3.2_spectra2xyz.pdf.
%
%
%% Calculate the CIEXYZ values
% Read pages 68 to 71, specially Equation 6.8 and Example 6.2 in the course
% book to figure out how to calculate CIEXYZ
%
%H�mtar xyz v�rdena
x = T.xyz(:,1);
y = T.xyz(:,2);
z = T.xyz(:,3);

k= 100/(sum(illumination.*y));%calculate the normalization factor
X= k*sum(reflectance.*illumination.*x); % this gives the X-tristimulus value
Y= k*sum(reflectance.*illumination.*y); % this gives the Y-tristimulus value
Z= k*sum(reflectance.*illumination.*z); % this gives the Z-tristimulus value
%
%% Test your code
% Test your code in assignment 1.1 in the third part of this lab and make sure that it works as it should
% befor you continue