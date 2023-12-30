clc
clear all

fname = '../imageB_gaussianNoisy';
I = imread(strcat(rootPathI,fname,'.tif'));
ImWavelet = wdenoise2(I);
imwrite(uint16(ImWavelet), strcat(rootPath,fname,'_waveletDefault.tif'));%bayes method
