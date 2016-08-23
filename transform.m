fileID = fopen('predictions_val_gen_avg_max_l28.csv','w')
A ={'VideoName','ValueExtraversion', 'ValueAgreeableness', 'ValueConscientiousness', 'ValueNeurotisicm','ValueOpenness'};
fprintf(fileID, '%s,', A{1,1:end-1});
fprintf(fileID, '%s\n', A{1,end});
for i=2:2001
   for j=1:2000
       if strcmp(VideoName_test{i},VideoName{j})
            fprintf(fileID,'%s,%.14f,%.14f,%.14f,%.14f,%.14f\n',VideoName{j},ValueExtraversion(j),ValueAgreeableness(j),ValueConscientiousness(j),ValueNeurotisicm(j),ValueOpenness(j)); 
            break
       end
   end
end
