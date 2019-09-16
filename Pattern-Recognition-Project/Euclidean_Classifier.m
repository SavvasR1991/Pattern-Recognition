%/////////////////////////////////////
%/  EUCLIDEAN CLASSIFIER FUNCTION   //
%/////////////////////////////////////

function [ class ] = Euclidean_Classifier( image,kedroeides_1,kedroeides_2,kedroeides_3 )

hue_of_image=hue(image);
x=hue_of_image(1);
y=hue_of_image(2);
z=hue_of_image(3);

distance_1=sqrt((x-kedroeides_1(1))^2+(y-kedroeides_1(2))^2+(z-kedroeides_1(3))^2);
distance_2=sqrt((x-kedroeides_2(1))^2+(y-kedroeides_2(2))^2+(z-kedroeides_2(3))^2);
distance_3=sqrt((x-kedroeides_3(1))^2+(y-kedroeides_3(2))^2+(z-kedroeides_3(3))^2);


if distance_2<distance_1 && distance_2<distance_3
    class=2;
else if distance_3<distance_1 && distance_3<distance_2
        class=3;
    else
        class=1;
    end
end        
end
