function dirVect3 = SoundDistance(intensity)
if ~isvector(intensity)
    error('Input must be a vector')
end

dirVect3 = [0; 0; 0];

% hypB = sqrt((pow(0.0975, 2) + pow(0.1175, 2)));
% dis12 = sqrt((pow(0.1175,2) + pow(hypB,2)));% distance between mic 1 and mic 2
dis12 = 0.218;
dis13 = dis12;                          % distance between mic 1 and mic 3
dis24 = 0.225;                         % distance between mic 2 and mic 4
dis34 = 0.23;                          % distance between mic 3 and mic 4
dis14 = 0.298;                            % distance between mic 1 and mic 4
dis23 = 0.33;                            % distance between mic 2 and mic 3
sourcePower = 4.071504079052372;%7.125132138341651;%2.267;
% sourcePower = 0.0225;                     % power of the source signal in Watts
% sourcePower = 0.0125892541179417;                     % power of the source signal in Watts
%c = 343.00;                             % speed of sound through air
% S1 = sqrt(1.9 / (4 * pi*intensity(1))); % distance from sound source
% S2 = sqrt(2.24 / (4 * pi*intensity(2))); % distance from sound source
% S3 = sqrt(1.88 / (4 * pi*intensity(3))); % distance from sound source
% S4 = sqrt(2.5 / (4 * pi*intensity(4))); % distance from sound source

% S1 = sqrt(1.81 / (4 * pi*intensity(1))); % distance from sound source
% S2 = sqrt(2.24 / (4 * pi*intensity(2))); % distance from sound source
% S3 = sqrt(1.88 / (4 * pi*intensity(3))); % distance from sound source
% S4 = sqrt(2.5 / (4 * pi*intensity(4))); % distance from sound source

S1 = sqrt((sourcePower * 1.4) / (4 * pi*intensity(1))); % distance from sound source
S2 = sqrt((sourcePower * 1.3) / (4 * pi*intensity(2))); % distance from sound source
S3 = sqrt((sourcePower * 0.85) / (4 * pi*intensity(3))); % distance from sound source
S4 = sqrt((sourcePower * 0.7) / (4 * pi*intensity(4))); % distance from sound source



% Mic4 = A Vertex, Mic1 = B Vertex
% Solve for Mic1 angle (B)
a = S1;
b = S4;
c = dis14;
value = (a^2 - b^2 + c^2) / (2*a*c);
% value = value/max(abs(value)); % Clamp[-1, +1]
% value = min(max(value,-1),1); % Clamp[-1, +1]
if (value < 0)
    value = pi - acos(value);
else
    value = acos(value);
end
angle1 = value;

% Solve for Mic4 angle (A)
value = (-a^2 + b^2 + c^2) / (2*b*c);
value = min(max(value,-1),1); % Clamp[-1, +1]
if (value < 0)
    value = pi - acos(value);
else
    value = acos(value);
end
angle4 = value;


% Mic2 = B vertex, Mic3 = A vertex
a = S2;
b = S3;
c = dis23;
value = (a^2 - b^2 + c^2) / (2*a*c);
value = min(max(value,-1),1); % Clamp[-1, +1]
if (value < 0)
    value = pi - acos(value);
else
    value = acos(value);
end
angle2 = value;


value = (-a^2 + b^2 + c^2) / (2*b*c);
value = min(max(value,-1),1); % Clamp[-1, +1]
if (value < 0)
    value = pi - acos(value);
else
    value = acos(value);
end
angle3 = value;



% Calculate in X-Y plane
if (angle2 > angle3)
    F = S2*sin(angle2);
    if (F < 0)
        phi = pi - acos(F/S2);
    else
        phi = acos(F/S2); 
    end
elseif (angle2 < angle3)
    F = S3*sin(angle3);
     if (F < 0)
         phi = pi - acos(F/S3);
     else
         phi = acos(F/S3);
     end
    
else
    F = S3*sin(angle3);
    phi = pi/2;   
end





% Calculate in Y-Z plane
if (angle1 > angle4)
    F = S1*sin(angle1);
    if (F < 0)
      	theta = pi - acos(F/S1);
    else
        theta = acos(F/S1);
    end

elseif (angle1 < angle4)
    F = S4*sin(angle4);

    if (F < 0)
        theta = pi - acos(F/S4);
    else
        theta = acos(F/S4);
    end 
else
    F = S1*sin(angle1);
    theta = pi/2;   
end

% X vector component
% phi = phi + pi/2;
dirVect3(1) = F * sin(theta) * cos(phi);

% Y vector component
dirVect3(2) = F * sin(theta) * sin(phi);


% Z vector component
dirVect3(3) = F * cos(theta);


% angle1 = acos((pow(dis14, 2) + pow(S1, 2) - pow(S4, 2)) / (2 * dis14*S4));
% angle2 = acos((pow(dis23, 2) + pow(S3, 2) - pow(S2, 2)) / (2 * dis23*S3));
% angle3 = acos((pow(dis23, 2) + pow(S2, 2) - pow(S3, 2)) / (2 * dis23*S2));
% angle4 = acos((pow(dis14, 2) + pow(S1, 2) - pow(S4, 2)) / (2 * dis14*S1));
disp(sprintf("Distance between source and mic 1: %f meters", S1));
disp(sprintf("Distance between source and mic 2: %f meters", S2));
disp(sprintf("Distance between source and mic 3: %f meters", S3));
disp(sprintf("Distance between source and mic 4: %f meters", S4));
disp(sprintf("Angle to the source from mic 1: %f degrees", angle1 * 180/pi));
disp(sprintf("Angle to the source from mic 2: %f degrees", angle2* 180/pi));
disp(sprintf("Angle to the source from mic 3: %f degrees", angle3* 180/pi));
disp(sprintf("Angle to the source from mic 4: %f degrees", angle4* 180/pi));
fprintf("Theta: %f\n", theta * 180/pi);
fprintf("Phi: %f\n\n", phi * 180/pi);
end
