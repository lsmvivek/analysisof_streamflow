close all;
clear all;
clc
k = 1;
j = 1;
precpleap = readmatrix("Leap.xlsx","Sheet","Sheet1");
potetleap = readmatrix("Leap.xlsx","Sheet","Sheet2");
dischleap = readmatrix("Leap.xlsx","Sheet","Sheet3");
maxtleap = readmatrix("Leap.xlsx","Sheet","Sheet4");
mintleap = readmatrix("Leap.xlsx","Sheet","Sheet5");

precpnotleap = readmatrix("Not Leap.xlsx","Sheet","Sheet1");
potetnotleap = readmatrix("Not Leap.xlsx","Sheet","Sheet2");
dischnotleap = readmatrix("Not Leap.xlsx","Sheet","Sheet3");
maxtnotleap = readmatrix("Not Leap.xlsx","Sheet","Sheet4");
mintnotleap = readmatrix("Not Leap.xlsx","Sheet","Sheet5");
for i = 0:55
    if (rem(i,4)==0)
        data_work_precp(:,i+1) = precpleap(:,j);
        data_work_potet(:,i+1) = potetleap(:,j);
        data_work_disch(:,i+1) = dischleap(:,j);
        data_work_mint(:,i+1) = mintleap(:,j);
        data_work_maxt(:,i+1) = maxtleap(:,j);
        j = j+1;
    else
        data_work_precp(:,i+1) = precpnotleap(:,k);
        data_work_potet(:,i+1) = potetnotleap(:,k);
        data_work_disch(:,i+1) = dischnotleap(:,k);
        data_work_mint(:,i+1) = mintnotleap(:,k);
        data_work_maxt(:,i+1) = maxtnotleap(:,k);

        k = k+1;
    end
end
filename = 'Unsplitted.xlsx';
writetable(table,filename);
xlswrite(filename,data_work_precp,1);
xlswrite(filename,data_work_potet,2);
xlswrite(filename,data_work_disch,3);
xlswrite(filename,data_work_maxt,4);
xlswrite(filename,data_work_mint,5);