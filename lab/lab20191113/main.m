%Load all images into a memory
flowerImg = double(imread('flower.png'))/255;
sunImg = double(imread('sun.png'))/255;
cloudImg = double(imread('cloud.png'))/255;

raindropImg = double(imread('raindrop.png'))/255;

%imagesc(flowerImg);

%Compose an image from little images
blankImage = ones(100,100,3); %Create an empty image

myImage = blankImage;
myImage(1:16,1:16,1:3) = sunImg; %Copy the sun
myImage(3:3+16-1,67:67+16-1,1:3)=cloudImg; %Insert first cloud
myImage(13:13+16-1,37:37+16-1,1:3)=cloudImg; %Insert second cloud
myImage(80:80+16-1,80:80+16-1,1:3)=flowerImg; %Inset flowers
myImage(80:80+16-1,20:20+16-1,1:3)=flowerImg;
myImage(80:80+16-1,40:40+16-1,1:3)=flowerImg;
figure(1); %Open first graphical window
imagesc(myImage); %and show created image

%More advence image composition
myImage2 = blankImage;
myImage2 = InsertImage(myImage2,1,1,sunImg); %Insert the sun
myImage2 = InsertImage(myImage2,67,3,cloudImg); %Insert first cloud
myImage2 = InsertImage(myImage2,37,13,cloudImg); %Insert second cloud
myImage2 = InsertImage(myImage2,80,80,flowerImg); %Insert flowers
myImage2 = InsertImage(myImage2,20,80,flowerImg); 
myImage2 = InsertImage(myImage2,40,80,flowerImg); 
figure(2); %Open second graphical window
imagesc(myImage2); %and show composed image

%More advence image composition with background color set to blue
myImage3 = blankImage;
myImage3(:,:,1) = 0.8;
myImage3(:,:,2) = 0.8;
myImage3 = InsertImage(myImage3,1,1,sunImg); %Insert the sun
myImage3 = InsertImage(myImage3,67,3,cloudImg); %Insert first cloud
myImage3 = InsertImage(myImage3,37,13,cloudImg); %Insert second cloud
myImage3 = InsertImage(myImage3,80,80,flowerImg); %Insert flowers
myImage3 = InsertImage(myImage3,20,80,flowerImg); 
myImage3 = InsertImage(myImage3,40,80,flowerImg); 
figure(3); %Open second graphical window
imagesc(myImage3); %and show composed image

%Even more advence image composition
myImage4 = blankImage;
myImage4(:,:,1) = 0.8;
myImage4(:,:,2) = 0.8;
TransparentColor = [1,1,1];
myImage4 = InsertImageTransparent(myImage4,1,1,sunImg,TransparentColor); %Insert the sun
myImage4 = InsertImageTransparent(myImage4,67,3,cloudImg,TransparentColor); %Insert first cloud
myImage4 = InsertImageTransparent(myImage4,37,13,cloudImg,TransparentColor); %Insert second cloud
myImage4 = InsertImageTransparent(myImage4,80,80,flowerImg,TransparentColor); %Insert flowers
myImage4 = InsertImageTransparent(myImage4,20,80,flowerImg,TransparentColor); 
myImage4 = InsertImageTransparent(myImage4,40,80,flowerImg,TransparentColor); 
figure(4); %Open second graphical window
imagesc(myImage4); %and show composed image


%Even more advence image composition with multiple flowers
myImage5 = blankImage;
myImage5(:,:,1) = 0.8;
myImage5(:,:,2) = 0.8;
TransparentColor = [1,1,1];
myImage5 = InsertImageTransparent(myImage5,1,1,sunImg,TransparentColor); %Insert the sun
myImage5 = InsertImageTransparent(myImage5,67,3,cloudImg,TransparentColor); %Insert first cloud
myImage5 = InsertImageTransparent(myImage5,37,13,cloudImg,TransparentColor); %Insert second cloud
for flowerIdx = 1:30
  myImage5 = InsertImageTransparent(myImage5,flowerIdx*5,80,flowerImg,TransparentColor); %Insert flowers
end
figure(5); %Open second graphical window
imagesc(myImage5); %and show composed image

%Even more advence image composition with multiple flowers
myImage6 = blankImage;
myImage6(:,:,1) = 0.8;
myImage6(:,:,2) = 0.8;
TransparentColor = [1,1,1];
myImage6 = InsertImageTransparent2(myImage6,1,1,sunImg,TransparentColor); %Insert the sun
myImage6 = InsertImageTransparent2(myImage6,67,3,cloudImg,TransparentColor); %Insert first cloud
myImage6 = InsertImageTransparent2(myImage6,37,13,cloudImg,TransparentColor); %Insert second cloud
for flowerIdx = 1:30
  myImage6 = InsertImageTransparent2(myImage6,flowerIdx*5,80,flowerImg,TransparentColor); %Insert flowers
end
figure(6); %Open second graphical window
imagesc(myImage6); %and show composed image

%Even more advence image composition with multiple flowers and the rain
myImage7 = blankImage;
myImage7(:,:,1) = 0.8;
myImage7(:,:,2) = 0.8;
TransparentColor = [1,1,1];
myImage7 = InsertImageTransparent2(myImage7,1,1,sunImg,TransparentColor); %Insert the sun
myImage7 = InsertImageTransparent2(myImage7,67,3,cloudImg,TransparentColor); %Insert first cloud
myImage7 = InsertImageTransparent2(myImage7,37,13,cloudImg,TransparentColor); %Insert second cloud
for flowerIdx = 1:30
  myImage7 = InsertImageTransparent2(myImage7,flowerIdx*5,80,flowerImg,TransparentColor); %Insert flowers
end
for rainDropIdx = 1:100
  myImage7 = InsertImageTransparent2(myImage7,randi([0 100],1),randi([10 90],1),raindropImg,TransparentColor);
end
figure(7); %Open second graphical window
imagesc(myImage7); %and show composed image

%Even more advence image composition with multiple flowers and the rain
myImage8 = blankImage;
myImage8(:,:,1) = 0.8;
myImage8(:,:,2) = 0.8;
TransparentColor = [1,1,1];
myImage8 = InsertImageTransparent3(myImage8,1,1,sunImg,TransparentColor); %Insert the sun
myImage8 = InsertImageTransparent3(myImage8,67,3,cloudImg,TransparentColor); %Insert first cloud
myImage8 = InsertImageTransparent3(myImage8,37,13,cloudImg,TransparentColor); %Insert second cloud
for flowerIdx = 1:30
  myImage8 = InsertImageTransparent3(myImage8,flowerIdx*5,80,flowerImg,TransparentColor); %Insert flowers
end
for rainDropIdx = 1:100
  myImage8 = InsertImageTransparent3(myImage8,randi([-100 200],1),randi([10 90],1),raindropImg,TransparentColor);
end
figure(8); %Open second graphical window
imagesc(myImage8); %and show composed image