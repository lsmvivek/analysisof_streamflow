clear all;
close all;
clc;
%% Splitting data into Leap & Not Leap Years
data = readmatrix('E:\OneDrive - Indian Institute of Science\Desktop\Short Project\MAtlab Code\data.xlsx');
j = 1;
k = 1;

for i = 1:20454
    if (rem((data(i,1)-1948),4)==0)
        leap(j,:) = data(i,:);
        j = j+1;
    else
        notleap(k,:) = data(i,:);
        k = k+1;
    end
end

filename = 'Splitted.xlsx';
writetable(table,filename);
xlswrite(filename,notleap,1);
xlswrite(filename,leap,2);