Write a Pig UDF to filter the districts who have reached 80% of their objective.

REGISTER /home/acadgild/Downloads/Progress.jar;



X = LOAD '/user/acadgild/clean_data2/part-m-00000' using PigStorage(',');


datae = FOREACH X GENERATE $0,$1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13,$14,$15,$16,$17;


fil1= Filter datae by  progress.Progress($0,$1,(float)$2,(float)$3,(float)$4,(float)$5,(float)$6,(float)$7,(float)$8,(float)$9,(float)$10,(float)$11,(float)$12,(float)$13,(float)$14,(float)$15,(float)$16,(float)$17);



Store fil1 into 'ques2' USING PigStorage(',');