clc;
clear;
test_im = imread('images\3.jpg');
if size(test_im,3) == 3
    test_im = rgb2gray(test_im);
end
test_im = imresize(test_im,[256 256]);
test_im = im2double(test_im);
test_im = imnoise(test_im,'gaussian',0,0.04);
fuzzy_edges = zeros(size(test_im));
hor_anfis = readfis('horizontal.fis');
ver_anfis = readfis('vertical.fis');
 
for i=2:size(test_im,1)-1
    for j=2:size(test_im,2)-1
        pxs = test_im(i-1:i+1,j-1:j+1);
        sm = sum(pxs(:));
        %reject smooth areas
        if(sm > 8 || sm < 1)
            fuzzy_edges(i,j) = 0;
        else
            pxs(5) = [];
            hor_anfis_output = evalfis(pxs,hor_anfis);
            ver_anfis_output = evalfis(pxs,ver_anfis);
            fuzzy_edges(i,j) = (hor_anfis_output+ver_anfis_output)/2;
        end
    end
end
figure;
subplot(1,4,1);imshow(test_im);
xlabel('Original image');
subplot(1,4,2);imshow(im2bw(fuzzy_edges));
xlabel('Neuro fuzzy');
subplot(1,4,3);imshow(edge(test_im,'canny'));
xlabel('Canny');
subplot(1,4,4);imshow(edge(test_im,'zerocross'));
xlabel('ZeroCrossing');