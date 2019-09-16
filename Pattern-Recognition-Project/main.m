%\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
%\          йыдийас ейтекесгс пяоцяаллатос       \\                  
%\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

% амацмысг тым еийомым ейпаидеусгс йаи упокоцислым яопым HUE
pic1_1=imread('S1_1.tif');
hue1_1=hue(pic1_1);
pic1_2=imread('S1_2.tif');
hue1_2=hue(pic1_2);
pic1_3=imread('S1_3.tif');
hue1_3=hue(pic1_3);
pic1_4=imread('S1_4.tif');
hue1_4=hue(pic1_4);
pic1_5=imread('S1_5.tif');
hue1_5=hue(pic1_5);
pic2_1=imread('S2_1.tif');
hue2_1=hue(pic2_1);
pic2_2=imread('S2_2.tif');
hue2_2=hue(pic2_2);
pic2_3=imread('S2_3.tif');
hue2_3=hue(pic2_3);
pic2_4=imread('S2_4.tif');
hue2_4=hue(pic2_4);
pic2_5=imread('S2_5.tif');
hue2_5=hue(pic2_5);
pic3_1=imread('S3_1.tif');
hue3_1=hue(pic3_1);
pic3_2=imread('S3_2.tif');
hue3_2=hue(pic3_2);
pic3_3=imread('S3_3.tif');
hue3_3=hue(pic3_3);
pic3_4=imread('S3_4.tif');
hue3_4=hue(pic3_4);
pic3_5=imread('S3_5.tif');
hue3_5=hue(pic3_5);

% йяатале ломо тис тяеис пяытес яопес тым еийомым
ropes1_1=hue1_1(1:3);
ropes1_2=hue1_2(1:3);
ropes1_3=hue1_3(1:3);
ropes1_4=hue1_4(1:3);
ropes1_5=hue1_5(1:3);

ropes2_1=hue2_1(1:3);
ropes2_2=hue2_2(1:3);
ropes2_3=hue2_3(1:3);
ropes2_4=hue2_4(1:3);
ropes2_5=hue2_5(1:3);

ropes3_1=hue3_1(1:3);
ropes3_2=hue3_2(1:3);
ropes3_3=hue3_3(1:3);
ropes3_4=hue3_4(1:3);
ropes3_5=hue3_5(1:3);

%упокоцифоуле та йемтяа тым йахе йкасеым
kedroeides_1=(ropes1_1+ropes1_2+ropes1_3+ropes1_4+ropes1_5)./5;
kedroeides_2=(ropes2_1+ropes2_2+ropes2_3+ropes2_4+ropes2_5)./5;
kedroeides_3=(ropes3_1+ropes3_2+ropes3_3+ropes3_4+ropes3_5)./5;

%ейтекоуле тгм сумаятгсг тоу танимолгтг екавистгс апостасгс (ейпаидеусг)
class1_1=Euclidean_Classifier(pic1_1,kedroeides_1,kedroeides_2,kedroeides_3);
class1_2=Euclidean_Classifier(pic1_2,kedroeides_1,kedroeides_2,kedroeides_3);
class1_3=Euclidean_Classifier(pic1_3,kedroeides_1,kedroeides_2,kedroeides_3);
class1_4=Euclidean_Classifier(pic1_4,kedroeides_1,kedroeides_2,kedroeides_3);
class1_5=Euclidean_Classifier(pic1_5,kedroeides_1,kedroeides_2,kedroeides_3);

class2_1=Euclidean_Classifier(pic2_1,kedroeides_1,kedroeides_2,kedroeides_3);
class2_2=Euclidean_Classifier(pic2_2,kedroeides_1,kedroeides_2,kedroeides_3);
class2_3=Euclidean_Classifier(pic2_3,kedroeides_1,kedroeides_2,kedroeides_3);
class2_4=Euclidean_Classifier(pic2_4,kedroeides_1,kedroeides_2,kedroeides_3);
class2_5=Euclidean_Classifier(pic2_5,kedroeides_1,kedroeides_2,kedroeides_3);

class3_1=Euclidean_Classifier(pic3_1,kedroeides_1,kedroeides_2,kedroeides_3);
class3_2=Euclidean_Classifier(pic3_2,kedroeides_1,kedroeides_2,kedroeides_3);
class3_3=Euclidean_Classifier(pic3_3,kedroeides_1,kedroeides_2,kedroeides_3);
class3_4=Euclidean_Classifier(pic3_4,kedroeides_1,kedroeides_2,kedroeides_3);
class3_5=Euclidean_Classifier(pic3_5,kedroeides_1,kedroeides_2,kedroeides_3);


pinakas_3_ropwn=[ropes1_1 ;ropes1_2 ;ropes1_3 ;ropes1_4 ;ropes1_5;ropes2_1; ropes2_2 ;ropes2_3 ;ropes2_4 ;ropes2_5 ; ropes3_1 ;ropes3_2 ;ropes3_3;ropes3_4 ;ropes3_5];

%ейтекоуле тгм сумаятгсг тоу танимолгтг 3-мм (ейпаидеусг)
class1_1=NN_Classifier(hue1_1,pinakas_3_ropwn);
class1_2=NN_Classifier(hue1_2,pinakas_3_ropwn);
class1_3=NN_Classifier(hue1_3,pinakas_3_ropwn);
class1_4=NN_Classifier(hue1_4,pinakas_3_ropwn);
class1_5=NN_Classifier(hue1_5,pinakas_3_ropwn);

class2_1=NN_Classifier(hue2_1,pinakas_3_ropwn);
class2_2=NN_Classifier(hue2_2,pinakas_3_ropwn);
class2_3=NN_Classifier(hue2_3,pinakas_3_ropwn);
class2_4=NN_Classifier(hue2_4,pinakas_3_ropwn);
class2_5=NN_Classifier(hue2_5,pinakas_3_ropwn);

class3_1=NN_Classifier(hue3_1,pinakas_3_ropwn);
class3_2=NN_Classifier(hue3_2,pinakas_3_ropwn);
class3_3=NN_Classifier(hue3_3,pinakas_3_ropwn);
class3_4=NN_Classifier(hue3_4,pinakas_3_ropwn);
class3_5=NN_Classifier(hue3_5,pinakas_3_ropwn);


%ха тяеноуле тоус танимолгтес лас циа 40 туваиес еийомес поу ха лас дысеи г
%цеммгтяиа


pic0=imread('photo0.tif');
pic0=double(pic0)/255;
hue0=hue(pic0);
pic1=imread('photo1.tif');
pic1=double(pic1)/255;
hue1=hue(pic1);
pic2=imread('photo2.tif');
pic2=double(pic2)/255;
hue2=hue(pic2);
pic3=imread('photo3.tif');
pic3=double(pic3)/255;
hue3=hue(pic3);
pic4=imread('photo4.tif');
pic4=double(pic4)/255;
hue4=hue(pic4);
pic5=imread('photo5.tif');
pic5=double(pic5)/255;
hue5=hue(pic5);
pic6=imread('photo6.tif');
pic6=double(pic6)/255;
hue6=hue(pic6);
pic7=imread('photo7.tif');
pic7=double(pic7)/255;
hue7=hue(pic7);
pic8=imread('photo8.tif');
pic8=double(pic8)/255;
hue8=hue(pic8);
pic9=imread('photo9.tif');
pic9=double(pic9)/255;
hue9=hue(pic9);


%......... OMOIA циа тис упокоипес еийомес

class0=Euclidean_Classifier(pic0,kedroeides_1,kedroeides_2,kedroeides_3);
class1=Euclidean_Classifier(pic1,kedroeides_1,kedroeides_2,kedroeides_3);
class2=Euclidean_Classifier(pic2,kedroeides_1,kedroeides_2,kedroeides_3);
class3=Euclidean_Classifier(pic3,kedroeides_1,kedroeides_2,kedroeides_3);
class4=Euclidean_Classifier(pic4,kedroeides_1,kedroeides_2,kedroeides_3);
class5=Euclidean_Classifier(pic5,kedroeides_1,kedroeides_2,kedroeides_3);
class6=Euclidean_Classifier(pic6,kedroeides_1,kedroeides_2,kedroeides_3);
class7=Euclidean_Classifier(pic7,kedroeides_1,kedroeides_2,kedroeides_3);
class8=Euclidean_Classifier(pic8,kedroeides_1,kedroeides_2,kedroeides_3);
class9=Euclidean_Classifier(pic9,kedroeides_1,kedroeides_2,kedroeides_3);


class0=NN_Classifier(hue0,pinakas_3_ropwn);
class1=NN_Classifier(hue1,pinakas_3_ropwn);
class2=NN_Classifier(hue2,pinakas_3_ropwn);
class3=NN_Classifier(hue3,pinakas_3_ropwn);
class4=NN_Classifier(hue4,pinakas_3_ropwn);
class5=NN_Classifier(hue5,pinakas_3_ropwn);
class6=NN_Classifier(hue6,pinakas_3_ropwn);
class7=NN_Classifier(hue7,pinakas_3_ropwn);
class8=NN_Classifier(hue8,pinakas_3_ropwn);
class9=NN_Classifier(hue9,pinakas_3_ropwn);


