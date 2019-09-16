%//////////////////////////////////////////////////
%/              HUE-NN CLASSIFIER                //
%//////////////////////////////////////////////////

function [ class ] = NN_Classifier( hue_image,hue_matrix )
x=hue_image(1);
y=hue_image(2);
z=hue_image(3);

distance(1)=sqrt((x-hue_matrix(1,1))^2+(y-hue_matrix(1,2))^2+(z-hue_matrix(1,3))^2);
pointer(1)=1;
distance(2)=sqrt((x-hue_matrix(2,1))^2+(y-hue_matrix(2,2))^2+(z-hue_matrix(2,3))^2);
pointer(2)=1;
distance(3)=sqrt((x-hue_matrix(3,1))^2+(y-hue_matrix(3,2))^2+(z-hue_matrix(3,3))^2);
pointer(3)=1;
distance(4)=sqrt((x-hue_matrix(4,1))^2+(y-hue_matrix(4,2))^2+(z-hue_matrix(4,3))^2);
pointer(4)=1;
distance(5)=sqrt((x-hue_matrix(5,1))^2+(y-hue_matrix(5,2))^2+(z-hue_matrix(5,3))^2);
pointer(5)=1;
distance(6)=sqrt((x-hue_matrix(6,1))^2+(y-hue_matrix(6,2))^2+(z-hue_matrix(6,3))^2);
pointer(6)=2;
distance(7)=sqrt((x-hue_matrix(7,1))^2+(y-hue_matrix(7,2))^2+(z-hue_matrix(7,3))^2);
pointer(7)=2;
distance(8)=sqrt((x-hue_matrix(8,1))^2+(y-hue_matrix(8,2))^2+(z-hue_matrix(8,3))^2);
pointer(8)=2;
distance(9)=sqrt((x-hue_matrix(9,1))^2+(y-hue_matrix(9,2))^2+(z-hue_matrix(9,3))^2);
pointer(9)=2;
distance(10)=sqrt((x-hue_matrix(10,1))^2+(y-hue_matrix(10,2))^2+(z-hue_matrix(10,3))^2);
pointer(10)=2;
distance(11)=sqrt((x-hue_matrix(11,1))^2+(y-hue_matrix(11,2))^2+(z-hue_matrix(11,3))^2);
pointer(11)=3;
distance(12)=sqrt((x-hue_matrix(12,1))^2+(y-hue_matrix(12,2))^2+(z-hue_matrix(12,3))^2);
pointer(12)=3;
distance(13)=sqrt((x-hue_matrix(13,1))^2+(y-hue_matrix(13,2))^2+(z-hue_matrix(13,3))^2);
pointer(13)=3;
distance(14)=sqrt((x-hue_matrix(14,1))^2+(y-hue_matrix(14,2))^2+(z-hue_matrix(14,3))^2);
pointer(14)=3;
distance(15)=sqrt((x-hue_matrix(15,1))^2+(y-hue_matrix(15,2))^2+(z-hue_matrix(15,3))^2);
pointer(15)=3;

for i=2:15
    for j=15:-1:i
        if distance(j-1)>distance(j)
            temp_dist=distance(j-1);
            temp_pointer=pointer(j-1);
            distance(j-1)=distance(j);
            pointer(j-1)=pointer(j);
            distance(j)=temp_dist;
            pointer(j)=temp_pointer;
        end
    end
end

class_1=0;
class_2=0;
class_3=0;
for i=1:3
    if pointer(i)==1
        class_1=class_1+1;
    end
    if pointer(i)==2
        class_2=class_2+1;
    end
    if pointer(i)==3
        class_3=class_3+1;
    end
end

classes=[class_1 class_2 class_3];
class=max(classes);

end

