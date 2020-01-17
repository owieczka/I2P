%Load all images into a memory
flowerImg = double(imread('flower.png'))/255;
sunImg = double(imread('sun.png'))/255;
cloudImg = double(imread('cloud.png'))/255;

raindropImg = double(imread('raindrop.png'))/255;

%imagesc(flowerImg);

%Compose an image from little images
blankImage = ones(100,100,3); %Create an empty image

tic
%Fast Even more advence image composition with multiple flowers and the rain
myImage9 = blankImage;
myImage9(:,:,1) = 0.8;
myImage9(:,:,2) = 0.8;
TransparentColor = [1,1,1];
myImage9 = InsertImageTransparent4(myImage9,1,1,sunImg,TransparentColor); %Insert the sun
myImage9 = InsertImageTransparent4(myImage9,67,3,cloudImg,TransparentColor); %Insert first cloud
myImage9 = InsertImageTransparent4(myImage9,37,13,cloudImg,TransparentColor); %Insert second cloud

for flowerIdx = 1:30
  myImage9 = InsertImageTransparent4(myImage9,flowerIdx*5,80,flowerImg,TransparentColor); %Insert flowers
end
for rainDropIdx = 1:100
  myImage9 = InsertImageTransparent4(myImage9,randi([-100 200],1),randi([10 90],1),raindropImg,TransparentColor);
end
toc
figure(9); %Open second graphical window
imagesc(myImage9); %and show composed image