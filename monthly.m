%% Calculating Montholy Climatology
 
%% Not Leap Year
clear all
close all
clc
j = 1;
notleap = readmatrix("Splitted.xlsx","Sheet","Sheet1");
leap = readmatrix("Splitted.xlsx","Sheet","Sheet2");
precpnotleap = zeros(12,42);
potetnotleap = zeros(12,42);
dischnotleap = zeros(12,42);
maxtnotleap = zeros(12,42);
mintnotleap = zeros(12,42);
for i = 1:365:14966
    %% Precipitation    
    precpnotleap(1,j) = sum(notleap(i:i+30,3),'omitnan');
    precpnotleap(2,j) = sum(notleap(i+31:i+58,3),'omitnan');
    precpnotleap(3,j) = sum(notleap(i+59:i+89,3),'omitnan');
    precpnotleap(4,j) = sum(notleap(i+90:i+119,3),'omitnan');
    precpnotleap(5,j) = sum(notleap(i+120:i+150,3),'omitnan');
    precpnotleap(6,j) = sum(notleap(i+151:i+180,3),'omitnan');
    precpnotleap(7,j) = sum(notleap(i+181:i+211,3),'omitnan');
    precpnotleap(8,j) = sum(notleap(i+212:i+242,3),'omitnan');
    precpnotleap(9,j) = sum(notleap(i+243:i+272,3),'omitnan');
    precpnotleap(10,j) = sum(notleap(i+273:i+303,3),'omitnan');
    precpnotleap(11,j) = sum(notleap(i+304:i+333,3),'omitnan');
    precpnotleap(12,j) = sum(notleap(i+334:i+364,3),'omitnan');
    %% Potential ET
    potetnotleap(1,j) = sum(notleap(i:i+30,4),'omitnan');
    potetnotleap(2,j) = sum(notleap(i+31:i+58,4),'omitnan');
    potetnotleap(3,j) = sum(notleap(i+59:i+89,4),'omitnan');
    potetnotleap(4,j) = sum(notleap(i+90:i+119,4),'omitnan');
    potetnotleap(5,j) = sum(notleap(i+120:i+150,4),'omitnan');
    potetnotleap(6,j) = sum(notleap(i+151:i+180,4),'omitnan');
    potetnotleap(7,j) = sum(notleap(i+181:i+211,4),'omitnan');
    potetnotleap(8,j) = sum(notleap(i+212:i+242,4),'omitnan');
    potetnotleap(9,j) = sum(notleap(i+243:i+272,4),'omitnan');
    potetnotleap(10,j) = sum(notleap(i+273:i+303,4),'omitnan');
    potetnotleap(11,j) = sum(notleap(i+304:i+333,4),'omitnan');
    potetnotleap(12,j) = sum(notleap(i+334:i+364,4),'omitnan');
    
    %% Discharge
    dischnotleap(1,j) = sum(notleap(i:i+30,5),'omitnan');
    dischnotleap(2,j) = sum(notleap(i+31:i+58,5),'omitnan');
    dischnotleap(3,j) = sum(notleap(i+59:i+89,5),'omitnan');
    dischnotleap(4,j) = sum(notleap(i+90:i+119,5),'omitnan');
    dischnotleap(5,j) = sum(notleap(i+120:i+150,5),'omitnan');
    dischnotleap(6,j) = sum(notleap(i+151:i+180,5),'omitnan');
    dischnotleap(7,j) = sum(notleap(i+181:i+211,5),'omitnan');
    dischnotleap(8,j) = sum(notleap(i+212:i+242,5),'omitnan');
    dischnotleap(9,j) = sum(notleap(i+243:i+272,5),'omitnan');
    dischnotleap(10,j) = sum(notleap(i+273:i+303,5),'omitnan');
    dischnotleap(11,j) = sum(notleap(i+304:i+333,5),'omitnan');
    dischnotleap(12,j) = sum(notleap(i+334:i+364,5),'omitnan');

    %% Max Temperature
    maxtnotleap(1,j) = mean(notleap(i:i+30,6),'omitnan');
    maxtnotleap(2,j) = mean(notleap(i+31:i+58,6),'omitnan');
    maxtnotleap(3,j) = mean(notleap(i+59:i+89,6),'omitnan');
    maxtnotleap(4,j) = mean(notleap(i+90:i+119,6),'omitnan');
    maxtnotleap(5,j) = mean(notleap(i+120:i+150,6),'omitnan');
    maxtnotleap(6,j) = mean(notleap(i+151:i+180,6),'omitnan');
    maxtnotleap(7,j) = mean(notleap(i+181:i+211,6),'omitnan');
    maxtnotleap(8,j) = mean(notleap(i+212:i+242,6),'omitnan');
    maxtnotleap(9,j) = mean(notleap(i+243:i+272,6),'omitnan');
    maxtnotleap(10,j) = mean(notleap(i+273:i+303,6),'omitnan');
    maxtnotleap(11,j) = mean(notleap(i+304:i+333,6),'omitnan');
    maxtnotleap(12,j) = mean(notleap(i+334:i+364,6),'omitnan');

    %% Min Temperature
    mintnotleap(1,j) = mean(notleap(i:i+30,7),'omitnan');
    mintnotleap(2,j) = mean(notleap(i+31:i+58,7),'omitnan');
    mintnotleap(3,j) = mean(notleap(i+59:i+89,7),'omitnan');
    mintnotleap(4,j) = mean(notleap(i+90:i+119,7),'omitnan');
    mintnotleap(5,j) = mean(notleap(i+120:i+150,7),'omitnan');
    mintnotleap(6,j) = mean(notleap(i+151:i+180,7),'omitnan');
    mintnotleap(7,j) = mean(notleap(i+181:i+211,7),'omitnan');
    mintnotleap(8,j) = mean(notleap(i+212:i+242,7),'omitnan');
    mintnotleap(9,j) = mean(notleap(i+243:i+272,7),'omitnan');
    mintnotleap(10,j) = mean(notleap(i+273:i+303,7),'omitnan');
    mintnotleap(11,j) = mean(notleap(i+304:i+333,7),'omitnan');
    mintnotleap(12,j) = mean(notleap(i+334:i+364,7),'omitnan');
    j = j+1;
end
%% 

filename = 'Not Leap.xlsx';
writetable(table,filename);
xlswrite(filename,precpnotleap,1);
xlswrite(filename,potetnotleap,2);
xlswrite(filename,dischnotleap,3);
xlswrite(filename,maxtnotleap,4);
xlswrite(filename,mintnotleap,5);

%% Leap Year

j = 1;
precpleapleap = zeros(12,14),'omitnan';
potetleap = zeros(12,14),'omitnan';
dischleap = zeros(12,14),'omitnan';
maxtleap = zeros(12,14),'omitnan';
mintleap = zeros(12,14),'omitnan';
for i =1:366:(size(leap,1)/366-1)*366+1
    %% Precipitation    
    precpleap(1,j) = sum(leap(i:i+30,3),'omitnan');
    precpleap(2,j) = sum(leap(i+31:i+59,3),'omitnan');
    precpleap(3,j) = sum(leap(i+60:i+90,3),'omitnan');
    precpleap(4,j) = sum(leap(i+91:i+120,3),'omitnan');
    precpleap(5,j) = sum(leap(i+121:i+151,3),'omitnan');
    precpleap(6,j) = sum(leap(i+152:i+181,3),'omitnan');
    precpleap(7,j) = sum(leap(i+182:i+212,3),'omitnan');
    precpleap(8,j) = sum(leap(i+213:i+243,3),'omitnan');
    precpleap(9,j) = sum(leap(i+244:i+273,3),'omitnan');
    precpleap(10,j) = sum(leap(i+274:i+304,3),'omitnan');
    precpleap(11,j) = sum(leap(i+305:i+334,3),'omitnan');
    precpleap(12,j) = sum(leap(i+335:i+365,3),'omitnan');
    %% Potential ET
        potetleap(1,j) = sum(leap(i:i+30,4),'omitnan');
    potetleap(2,j) = sum(leap(i+31:i+59,4),'omitnan');
    potetleap(3,j) = sum(leap(i+60:i+90,4),'omitnan');
    potetleap(4,j) = sum(leap(i+91:i+120,4),'omitnan');
    potetleap(5,j) = sum(leap(i+121:i+151,4),'omitnan');
    potetleap(6,j) = sum(leap(i+152:i+181,4),'omitnan');
    potetleap(7,j) = sum(leap(i+182:i+212,4),'omitnan');
    potetleap(8,j) = sum(leap(i+213:i+243,4),'omitnan');
    potetleap(9,j) = sum(leap(i+244:i+273,4),'omitnan');
    potetleap(10,j) = sum(leap(i+274:i+304,4),'omitnan');
    potetleap(11,j) = sum(leap(i+305:i+334,4),'omitnan');
    potetleap(12,j) = sum(leap(i+335:i+365,4),'omitnan');
    
    %% Discharge
    dischleap(1,j) = sum(leap(i:i+30,5),'omitnan');
    dischleap(2,j) = sum(leap(i+31:i+59,5),'omitnan');
    dischleap(3,j) = sum(leap(i+60:i+90,5),'omitnan');
    dischleap(4,j) = sum(leap(i+91:i+120,5),'omitnan');
    dischleap(5,j) = sum(leap(i+121:i+151,5),'omitnan');
    dischleap(6,j) = sum(leap(i+152:i+181,5),'omitnan');
    dischleap(7,j) = sum(leap(i+182:i+212,5),'omitnan');
    dischleap(8,j) = sum(leap(i+213:i+243,5),'omitnan');
    dischleap(9,j) = sum(leap(i+244:i+273,5),'omitnan');
    dischleap(10,j) = sum(leap(i+274:i+304,5),'omitnan');
    dischleap(11,j) = sum(leap(i+305:i+334,5),'omitnan');
    dischleap(12,j) = sum(leap(i+335:i+365,5),'omitnan');


    %% Max Temperature
    maxtleap(1,j) = mean(leap(i:i+30,5),'omitnan');
    maxtleap(2,j) = mean(leap(i+31:i+59,5),'omitnan');
    maxtleap(3,j) = mean(leap(i+60:i+90,5),'omitnan');
    maxtleap(4,j) = mean(leap(i+91:i+120,5),'omitnan');
    maxtleap(5,j) = mean(leap(i+121:i+151,5),'omitnan');
    maxtleap(6,j) = mean(leap(i+152:i+181,5),'omitnan');
    maxtleap(7,j) = mean(leap(i+182:i+212,5),'omitnan');
    maxtleap(8,j) = mean(leap(i+213:i+243,5),'omitnan');
    maxtleap(9,j) = mean(leap(i+244:i+273,5),'omitnan');
    maxtleap(10,j) = mean(leap(i+274:i+304,5),'omitnan');
    maxtleap(11,j) = mean(leap(i+305:i+334,5),'omitnan');
    maxtleap(12,j) = mean(leap(i+335:i+365,5),'omitnan');

    %% Min Temperature
    mintleap(1,j) = mean(leap(i:i+30,5),'omitnan');
    mintleap(2,j) = mean(leap(i+31:i+59,5),'omitnan');
    mintleap(3,j) = mean(leap(i+60:i+90,5),'omitnan');
    mintleap(4,j) = mean(leap(i+91:i+120,5),'omitnan');
    mintleap(5,j) = mean(leap(i+121:i+151,5),'omitnan');
    mintleap(6,j) = mean(leap(i+152:i+181,5),'omitnan');
    mintleap(7,j) = mean(leap(i+182:i+212,5),'omitnan');
    mintleap(8,j) = mean(leap(i+213:i+243,5),'omitnan');
    mintleap(9,j) = mean(leap(i+244:i+273,5),'omitnan');
    mintleap(10,j) = mean(leap(i+274:i+304,5),'omitnan');
    mintleap(11,j) = mean(leap(i+305:i+334,5),'omitnan');
    mintleap(12,j) = mean(leap(i+335:i+365,5),'omitnan');
    j = j+1;
end



filename2 = 'Leap.xlsx';
writetable(table,filename2);
xlswrite(filename2,precpleap,1);
xlswrite(filename2,potetleap,2);
xlswrite(filename2,dischleap,3);
xlswrite(filename2,maxtleap,4);
xlswrite(filename2,mintleap,5);

for i = 1:365:14965 
    i
end