%////////////////////////////////////////////
%/                HUE FUNCTION             //
%////////////////////////////////////////////

function [ ropes_f ] = hue( image )
s=size(image);
temp=sum(image);
m00=sum(temp);
m10=0;
m01=0;
for x=1:s(1)
    for y=1:s(2)
        m10=m10+x*image(x,y);
        m01=m01+y*image(x,y);
    end
end

if m00 ~= 0
    Xc = m10 / m00;
    Yc = m01 / m00;
else
    return;
end

M02=0;
M20=0;
M11=0;
M12=0;
M21=0;
M30=0;
M03=0;
for  x = 1 : s(1)
    for y = 1 : s(2)
        M20 = M20 + (x - Xc)^2 * image(x,y);
        M02 = M02 + (y - Yc)^2 * image(x,y);
        M11 = M11 + (x - Xc) * (y - Yc) * image(x,y);
        M30 = M30 + (x - Xc)^3 * image(x,y);
        M03 = M03 + (y - Yc)^3 * image(x,y);
        M12 = M12 + (x - Xc) * (y - Yc)^2 * image(x,y);
        M21 = M21 + (x - Xc)^2 * (y - Yc) * image(x,y);
    end
end
N20 = M20 / (m00^2);
N02 = M02 / (m00^2);
N11 = M11 / (m00^2);
N30 = M30 / (m00^2.5);
N03 = M03 / (m00^2.5);
N12 = M12 / (m00^2.5);
N21 = M21 / (m00^2.5);

ropes_f(1) =log(abs( N20 + N02));
ropes_f(2) = log(abs((N20 - N02)^2 + 4 * (N11^2)));
ropes_f(3) =log(abs((N30 - 3*N12)^2 + (3*N21 - N03)^2));
ropes_f(4) = log(abs((N30 + N12)^2 + (N21 + N03)^2));
ropes_f(5) = log(abs((N30 - 3*N12) * (N30 + N12) * ((N30 + N12)^2 - 3 * (N21 + N03)^2) + (3*N21 - N03) * (N21 + N03) * (3*(N30 + N12)^2 - (N21 + N03)^2)));
ropes_f(6) = log(abs((N20 - N02) * ((N30 +N12)^2 - (N21 + N03)^2) + 4 * N11 * (N30 + N12) * (N21 +N03)));
ropes_f(7) = log(abs((3 * N21 - N03) * (N30 + N12) * ((N30 + N12)^2 - 3 * (N21 + N03)^2) + (N30 - 3 * N12) * (N21 + N03) * ((N21 + N03)^2 - 3 * (N30 +N12)^2)));
end



