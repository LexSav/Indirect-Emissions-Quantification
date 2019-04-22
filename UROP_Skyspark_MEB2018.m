%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% U OF U SKYSPARK ANALYSIS - 2018 MEB
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Year-long analysis for Merril Engieering Building, U OF U CAMPUS 

clear 
clc 
close all 

% Specified EPA emission factors for the area 
epaef_data = 'emissionsfactordata';
data = xlsread(epaef_data);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% JANUARY
% Pulls out data - EPA emission factor for January 
jan_avg_CO2 = mean(data(2:25,3)); % [lb/KWh]
jan_avg_SO2 = mean(data(2:25,7));
jan_avg_NOx = mean(data(2:25,11)); % averages the values over month long period 
% extracts consumption for the month 
month1 = 'EnergyUsage_Jan2018MEB';
jandata = xlsread(month1);
% averages the data for each day  of the month - January usage 
jd1 = mean(jandata(1:24,3)); 
jd2 = mean(jandata(25:48,3)); 
jd3 = mean(jandata(49:72,3));
jd4 = mean(jandata(73:96,3));
jd5 = mean(jandata(97:120,3));
jd6 = mean(jandata(121:144,3));
jd7 = mean(jandata(145:168,3));
jd8 = mean(jandata(169:192,3));
jd9 = mean(jandata(193:216,3));
jd10 = mean(jandata(217:240,3));
jd11 = mean(jandata(241:264,3));
jd12 = mean(jandata(265:288,3));
jd13 = mean(jandata(289:312,3));
jd14 = mean(jandata(313:336,3));
jd15 = mean(jandata(337:360,3));
jd16 = mean(jandata(361:384,3));
jd17 = mean(jandata(385:408,3));
jd18 = mean(jandata(409:432,3));
jd19 = mean(jandata(433:456,3));
jd20 = mean(jandata(457:480,3));
jd21 = mean(jandata(481:504,3));
jd22 = mean(jandata(505:528,3));
jd23 = mean(jandata(529:552,3));
jd24 = mean(jandata(553:576,3));
jd25 = mean(jandata(577:600,3));
jd26 = mean(jandata(601:624,3));
jd27 = mean(jandata(625:648,3));
jd28 = mean(jandata(649:672,3));
jd29 = mean(jandata(673:696,3));
jd30 = mean(jandata(697:720,3));
jd31 = mean(jandata(721:744,3));
% creates vector of daily averages
janusage = [jd1 jd2 jd3 jd4 jd5 jd6 jd7 jd8 jd9 jd10 jd11 jd12 jd13 jd14 jd15 jd16 jd17 jd18 jd19 jd20 jd21 jd22 jd23 jd24 jd25 jd26 jd27 jd28 jd29 jd30 jd31];
% calculates fref over the course of a month 
fref_CO2jan = janusage.*jan_avg_CO2;
fref_SO2jan = janusage.*jan_avg_SO2;
fref_NOxjan = janusage.*jan_avg_NOx;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% FEBRUARY
% avg EPA emission factor
feb_avg_CO2 = mean(data(26:50,3)); % [lb/kWh]
feb_avg_SO2 = mean(data(26:50,7));
feb_avg_NOx = mean(data(26:50,11));
% extracts consumption for the month [kWh]
month2 = 'EnergyUsage_Feb2018MEB';
febdata = xlsread(month2);
% averages the data for each day  of the month - Feb usage 
fd1 = mean(febdata(1:24,3)); 
fd2 = mean(febdata(25:48,3)); 
fd3 = mean(febdata(49:72,3));
fd4 = mean(febdata(73:96,3));
fd5 = mean(febdata(97:120,3));
fd6 = mean(febdata(121:144,3));
fd7 = mean(febdata(145:168,3));
fd8 = mean(febdata(169:192,3));
fd9 = mean(febdata(193:216,3));
fd10 = mean(febdata(217:240,3));
fd11 = mean(febdata(241:264,3));
fd12 = mean(febdata(265:288,3));
fd13 = mean(febdata(289:312,3));
fd14 = mean(febdata(313:336,3));
fd15 = mean(febdata(337:360,3));
fd16 = mean(febdata(361:384,3));
fd17 = mean(febdata(385:408,3));
fd18 = mean(febdata(409:432,3));
fd19 = mean(febdata(433:456,3));
fd20 = mean(febdata(457:480,3));
fd21 = mean(febdata(481:504,3));
fd22 = mean(febdata(505:528,3));
fd23 = mean(febdata(529:552,3));
fd24 = mean(febdata(553:576,3));
fd25 = mean(febdata(577:600,3));
fd26 = mean(febdata(601:624,3));
fd27 = mean(febdata(625:648,3));
fd28 = mean(febdata(649:672,3));
% creates vector of daily averages
febusage = [fd1 fd2 fd3 fd4 fd5 fd6 fd7 fd8 fd9 fd10 fd11 fd12 fd13 fd14 fd15 fd16 fd17 fd18 fd19 fd20 fd21 fd22 fd23 fd24 fd25 fd26 fd27 fd28];
% Flat rate emission factor for Feb [lbs]
fref_CO2feb = febusage.*feb_avg_CO2;
fref_SO2feb = febusage.*feb_avg_SO2;
fref_NOxfeb = febusage.*feb_avg_NOx;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% March 
% avg EPA emission factor
mar_avg_CO2 = mean(data(52:75,3)); % [lb/kWh]
mar_avg_SO2 = mean(data(52:75,7));
mar_avg_NOx = mean(data(52:75,11));
% extracts consumption for the month [kWh]
month3 = 'EnergyUsage_Mar2018MEB';
mardata = xlsread(month3);
% averages the data for each day  of the month - March usage 
md1 = mean(mardata(1:24,3)); 
md2 = mean(mardata(25:48,3)); 
md3 = mean(mardata(49:72,3));
md4 = mean(mardata(73:96,3));
md5 = mean(mardata(97:120,3));
md6 = mean(mardata(121:144,3));
md7 = mean(mardata(145:168,3));
md8 = mean(mardata(169:192,3));
md9 = mean(mardata(193:216,3));
md10 = mean(mardata(217:240,3));
md11 = mean(mardata(241:264,3));
md12 = mean(mardata(265:288,3));
md13 = mean(mardata(289:312,3));
md14 = mean(mardata(313:336,3));
md15 = mean(mardata(337:360,3));
md16 = mean(mardata(361:384,3));
md17 = mean(mardata(385:408,3));
md18 = mean(mardata(409:432,3));
md19 = mean(mardata(433:456,3));
md20 = mean(mardata(457:480,3));
md21 = mean(mardata(481:504,3));
md22 = mean(mardata(505:528,3));
md23 = mean(mardata(529:541,3)); % for the 2018 data set, data cuts of at 03/23/2018 at 13:00
% md24 = mean(mardata(553:576,3));
% md25 = mean(mardata(577:600,3));
% md26 = mean(mardata(601:624,3));
% md27 = mean(mardata(625:648,3));
% md28 = mean(mardata(649:672,3));
% md29 = mean(mardata(673:696,3));
% md30 = mean(mardata(697:720,3));
% md31 = mean(mardata(721:743,3));
% creates vector of daily averages
marusage = [md1 md2 md3 md4 md5 md6 md7 md8 md9 md10 md11 md12 md13 md14 md15 md16 md17 md18 md19 md20 md21 md22 md23]; 
% md24 md25 md26 md27 md28 md29 md30 md31];
% Flat rate emission factor for March [lbs]
fref_CO2mar = marusage.*mar_avg_CO2;
fref_SO2mar = marusage.*mar_avg_SO2;
fref_NOxmar = marusage.*mar_avg_NOx;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% April
apr_avg_CO2 = mean(data(77:100,3)); % [lb/kWh]
apr_avg_SO2 = mean(data(77:100,7));
apr_avg_NOx = mean(data(77:100,11));
% extracts consumption for the month [kWh]
month4 = 'EnergyUsage_Apr2018MEB';
aprdata = xlsread(month4);
% averages the data for each day  of the month - Apr usage 
% ad1 = mean(aprdata(1:24,3)); 
% ad2 = mean(aprdata(25:48,3)); 
% ad3 = mean(aprdata(49:72,3));
% ad4 = mean(aprdata(73:96,3)); % 2018 MEB data set cuts off data until
% 04/05
ad5 = mean(aprdata(111:120,3));
ad6 = mean(aprdata(121:144,3));
ad7 = mean(aprdata(145:168,3));
ad8 = mean(aprdata(169:192,3));
ad9 = mean(aprdata(193:216,3));
ad10 = mean(aprdata(217:240,3));
ad11 = mean(aprdata(241:264,3));
ad12 = mean(aprdata(265:288,3));
ad13 = mean(aprdata(289:312,3));
ad14 = mean(aprdata(313:336,3));
ad15 = mean(aprdata(337:360,3));
ad16 = mean(aprdata(361:384,3));
ad17 = mean(aprdata(385:408,3));
ad18 = mean(aprdata(409:432,3));
ad19 = mean(aprdata(433:456,3));
ad20 = mean(aprdata(457:480,3));
ad21 = mean(aprdata(481:504,3));
ad22 = mean(aprdata(505:528,3));
ad23 = mean(aprdata(529:552,3));
ad24 = mean(aprdata(553:576,3));
ad25 = mean(aprdata(577:600,3));
ad26 = mean(aprdata(601:624,3));
ad27 = mean(aprdata(625:648,3));
ad28 = mean(aprdata(649:672,3));
ad29 = mean(aprdata(673:696,3));
ad30 = mean(aprdata(697:720,3));
% creates vector of daily averages
aprusage = [ ad5 ad6 ad7 ad8 ad9 ad10 ad11 ad12 ad13 ad14 ad15 ad16 ad17 ad18 ad19 ad20 ad21 ad22 ad23 ad24 ad25 ad26 ad27 ad28 ad29 ad30];
% ad1 ad2 ad3 ad4
% flat rate emission factor for April 
fref_CO2apr = aprusage.*apr_avg_CO2; % [lbs]
fref_SO2apr = aprusage.*apr_avg_SO2;
fref_NOxapr = aprusage.*apr_avg_NOx;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% May
% avg EPA emission factor for May 
may_avg_CO2 = mean(data(102:125,3)); % [lb/kWh]
may_avg_SO2 = mean(data(102:125,7));
may_avg_NOx = mean(data(102:123,11));
% extracts consumption for the month [kWh]
month5 = 'EnergyUsage_May2018MEB';
maydata = xlsread(month5);
% averages the data for each day  of the month - May usage 
mad1 = mean(maydata(1:24,3)); 
mad2 = mean(maydata(25:48,3)); 
mad3 = mean(maydata(49:72,3));
mad4 = mean(maydata(73:96,3));
mad5 = mean(maydata(97:120,3));
mad6 = mean(maydata(121:144,3));
mad7 = mean(maydata(145:168,3));
mad8 = mean(maydata(169:192,3));
mad9 = mean(maydata(193:216,3));
mad10 = mean(maydata(217:240,3));
mad11 = mean(maydata(241:264,3));
mad12 = mean(maydata(265:288,3));
mad13 = mean(maydata(289:312,3));
mad14 = mean(maydata(313:336,3));
mad15 = mean(maydata(337:360,3));
mad16 = mean(maydata(361:384,3));
mad17 = mean(maydata(385:408,3));
mad18 = mean(maydata(409:432,3));
mad19 = mean(maydata(433:456,3));
mad20 = mean(maydata(457:480,3));
mad21 = mean(maydata(481:504,3));
mad22 = mean(maydata(505:528,3));
mad23 = mean(maydata(529:552,3));
mad24 = mean(maydata(553:576,3));
mad25 = mean(maydata(577:600,3));
mad26 = mean(maydata(601:624,3));
mad27 = mean(maydata(625:648,3));
mad28 = mean(maydata(649:672,3));
mad29 = mean(maydata(673:696,3));
mad30 = mean(maydata(697:720,3));
mad31 = mean(maydata(721:744,3));
% creates vector of daily averages
mayusage = [mad1 mad2 mad3 mad4 mad5 mad6 mad7 mad8 mad9 mad10 mad11 mad12 mad13 mad14 mad15 mad16 mad17 mad18 mad19 mad20 mad21 mad22 mad23 mad24 mad25 mad26 mad27 mad28 mad29 mad30 mad31];
% flat rate emission factor for May
fref_CO2may = mayusage.*may_avg_CO2; % [lbs]
fref_SO2may = mayusage.*may_avg_SO2;
fref_NOxmay = mayusage.*may_avg_NOx;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% June 
% avg EPA emission factor for June 
jun_avg_CO2 = mean(data(127:150,3)); % [lb/kWh]
jun_avg_SO2 = mean(data(127:150,7));
jun_avg_NOx = mean(data(127:150,11));
% extracts consumption for the month [kWh]
month6 = 'EnergyUsage_Jun2018MEB';
jundata = xlsread(month6);
% averages the data for each day  of the month - June usage 
jund1 = mean(jundata(1:24,3)); 
jund2 = mean(jundata(25:48,3)); 
jund3 = mean(jundata(49:72,3));
jund4 = mean(jundata(73:96,3));
jund5 = mean(jundata(97:120,3));
jund6 = mean(jundata(121:144,3));
jund7 = mean(jundata(145:168,3));
jund8 = mean(jundata(169:192,3));
jund9 = mean(jundata(193:216,3));
jund10 = mean(jundata(217:240,3));
jund11 = mean(jundata(241:264,3));
jund12 = mean(jundata(265:288,3));
jund13 = mean(jundata(289:312,3));
jund14 = mean(jundata(313:336,3));
jund15 = mean(jundata(337:360,3));
jund16 = mean(jundata(361:384,3));
jund17 = mean(jundata(385:408,3));
jund18 = mean(jundata(409:432,3));
jund19 = mean(jundata(433:456,3));
jund20 = mean(jundata(457:480,3));
jund21 = mean(jundata(481:504,3));
jund22 = mean(jundata(505:528,3));
jund23 = mean(jundata(529:552,3));
jund24 = mean(jundata(553:576,3));
jund25 = mean(jundata(577:600,3));
jund26 = mean(jundata(601:624,3));
jund27 = mean(jundata(625:648,3));
jund28 = mean(jundata(649:672,3));
jund29 = mean(jundata(673:696,3));
jund30 = mean(jundata(697:720,3));
% creates vector of daily averages
junusage = [jund1 jund2 jund3 jund4 jund5 jund6 jund7 jund8 jund9 jund10 jund11 jund12 jund13 jund14 jund15 jund16 jund17 jund18 jund19 jund20 jund21 jund22 jund23 jund24 jund25 jund26 jund27 jund28 jund29 jund30];
% flat rate emission factor for June 
fref_CO2jun = junusage.*jun_avg_CO2; % [lbs]
fref_SO2jun = junusage.*jun_avg_SO2;
fref_NOxjun = junusage.*jun_avg_NOx;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% July 
% avg EPA emission factor for July 
jul_avg_CO2 = mean(data(152:175,3)); % [lb/kWh]
jul_avg_SO2 = mean(data(152:175,7));
jul_avg_NOx = mean(data(152:175,11));
% extracts consumption for the month [kWh]
month7 = 'EnergyUsage_Jul2018MEB';
juldata = xlsread(month7);
% averages the data for each day  of the month - July usage 
jud1 = mean(juldata(1:24,3)); 
jud2 = mean(juldata(25:48,3)); 
jud3 = mean(juldata(49:72,3));
jud4 = mean(juldata(73:96,3));
jud5 = mean(juldata(97:120,3));
jud6 = mean(juldata(121:144,3));
jud7 = mean(juldata(145:168,3));
jud8 = mean(juldata(169:192,3));
jud9 = mean(juldata(193:216,3));
jud10 = mean(juldata(217:240,3));
jud11 = mean(juldata(241:264,3));
jud12 = mean(juldata(265:288,3));
jud13 = mean(juldata(289:312,3));
jud14 = mean(juldata(313:336,3));
jud15 = mean(juldata(337:360,3));
jud16 = mean(juldata(361:384,3));
jud17 = mean(juldata(385:408,3));
jud18 = mean(juldata(409:432,3));
jud19 = mean(juldata(433:456,3));
jud20 = mean(juldata(457:480,3));
jud21 = mean(juldata(481:504,3));
jud22 = mean(juldata(505:528,3));
jud23 = mean(juldata(529:552,3));
jud24 = mean(juldata(553:576,3));
jud25 = mean(juldata(577:600,3));
jud26 = mean(juldata(601:624,3));
jud27 = mean(juldata(625:648,3));
jud28 = mean(juldata(649:672,3));
jud29 = mean(juldata(673:696,3));
jud30 = mean(juldata(697:720,3));
jud31 = mean(juldata(721:744,3));
% creates vector of daily averages
julusage = [jud1 jud2 jud3 jud4 jud5 jud6 jud7 jud8 jud9 jud10 jud11 jud12 jud13 jud14 jud15 jud16 jud17 jud18 jud19 jud20 jud21 jud22 jud23 jud24 jud25 jud26 jud27 jud28 jud29 jud30 jud31];
% flat rate emission factor for July 
fref_CO2jul = julusage.*jul_avg_CO2; % [lbs]
fref_SO2jul = julusage.*jul_avg_SO2;
fref_NOxjul = julusage.*jul_avg_NOx;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% August 
% avg EPA emission factor for August  
aug_avg_CO2 = mean(data(177:200,3)); % [lb/kWh]
aug_avg_SO2 = mean(data(177:200,7));
aug_avg_NOx = mean(data(177:200,11));
% extracts consumption for the month [kWh]
month8 = 'EnergyUsage_Aug2018MEB';
augdata = xlsread(month8);
% averages the data for each day  of the month - August usage 
aud1 = mean(augdata(1:24,3)); 
aud2 = mean(augdata(25:48,3)); 
aud3 = mean(augdata(49:72,3));
aud4 = mean(augdata(73:96,3));
aud5 = mean(augdata(97:120,3));
aud6 = mean(augdata(121:144,3));
aud7 = mean(augdata(145:168,3));
aud8 = mean(augdata(169:192,3));
aud9 = mean(augdata(193:216,3));
aud10 = mean(augdata(217:240,3));
aud11 = mean(augdata(241:264,3));
aud12 = mean(augdata(265:288,3));
aud13 = mean(augdata(289:312,3));
aud14 = mean(augdata(313:336,3));
aud15 = mean(augdata(337:360,3));
aud16 = mean(augdata(361:384,3));
aud17 = mean(augdata(385:408,3));
aud18 = mean(augdata(409:432,3));
aud19 = mean(augdata(433:456,3));
aud20 = mean(augdata(457:480,3));
aud21 = mean(augdata(481:504,3));
aud22 = mean(augdata(505:528,3));
aud23 = mean(augdata(529:552,3));
aud24 = mean(augdata(553:576,3));
aud25 = mean(augdata(577:600,3));
aud26 = mean(augdata(601:624,3));
aud27 = mean(augdata(625:648,3));
aud28 = mean(augdata(649:672,3));
aud29 = mean(augdata(673:696,3));
aud30 = mean(augdata(697:720,3));
aud31 = mean(augdata(721:744,3));
% creates vector of daily averages
augusage = [aud1 aud2 aud3 aud4 aud5 aud6 aud7 aud8 aud9 aud10 aud11 aud12 aud13 aud14 aud15 aud16 aud17 aud18 aud19 aud20 aud21 aud22 aud23 aud24 aud25 aud26 aud27 aud28 aud29 aud30 aud31];
% flat rate emission factor for August 
fref_CO2aug = augusage.*aug_avg_CO2; % [lbs]
fref_SO2aug = augusage.*aug_avg_SO2;
fref_NOxaug = augusage.*aug_avg_NOx;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% September 
sep_avg_CO2 = mean(data(202:225,3)); % [lb/kWh]
sep_avg_SO2 = mean(data(202:225,7));
sep_avg_NOx = mean(data(202:225,11));
% extracts data for consumption (kWh) for each day
month9 = 'EnergyUsage_Sep2018MEB';
sepdata = xlsread(month9);
% averages the data for each day  of the month - September usage 
sd1 = mean(sepdata(1:24,3)); 
sd2 = mean(sepdata(25:48,3)); 
sd3 = mean(sepdata(49:72,3));
sd4 = mean(sepdata(73:96,3));
sd5 = mean(sepdata(97:120,3));
sd6 = mean(sepdata(121:144,3));
sd7 = mean(sepdata(145:168,3));
sd8 = mean(sepdata(169:192,3));
sd9 = mean(sepdata(193:216,3));
sd10 = mean(sepdata(217:240,3));
sd11 = mean(sepdata(241:264,3));
sd12 = mean(sepdata(265:288,3));
sd13 = mean(sepdata(289:312,3));
sd14 = mean(sepdata(313:336,3));
sd15 = mean(sepdata(337:360,3));
sd16 = mean(sepdata(361:384,3));
sd17 = mean(sepdata(385:408,3));
sd18 = mean(sepdata(409:432,3));
sd19 = mean(sepdata(433:456,3));
sd20 = mean(sepdata(457:480,3));
sd21 = mean(sepdata(481:504,3));
sd22 = mean(sepdata(505:528,3));
sd23 = mean(sepdata(529:552,3));
sd24 = mean(sepdata(553:576,3));
sd25 = mean(sepdata(577:600,3));
sd26 = mean(sepdata(601:624,3));
sd27 = mean(sepdata(625:648,3));
sd28 = mean(sepdata(649:672,3));
sd29 = mean(sepdata(673:696,3));
sd30 = mean(sepdata(697:720,3));
% creates vector of daily averages
sepusage = [sd1 sd2 sd3 sd4 sd5 sd6 sd7 sd8 sd9 sd10 sd11 sd12 sd13 sd14 sd15 sd16 sd17 sd18 sd19 sd20 sd21 sd22 sd23 sd24 sd25 sd26 sd27 sd28 sd29 sd30];
% flat rate emission factor for September  
fref_CO2sep = sepusage.*sep_avg_CO2; % [lbs]
fref_SO2sep = sepusage.*sep_avg_SO2;
fref_NOxsep = sepusage.*sep_avg_NOx;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% October 
% avg EPA emission factor for October   
oct_avg_CO2 = mean(data(227:250,3)); % [lb/kWh]
oct_avg_SO2 = mean(data(227:250,7));
oct_avg_NOx = mean(data(227:250,11));
% extracts data for consumption (kWh) for each day
month10 = 'EnergyUsage_Oct2018MEB';
octdata = xlsread(month10);
% averages the data for each day  of the month - October usage 
od1 = mean(octdata(1:24,3)); 
od2 = mean(octdata(25:48,3)); 
od3 = mean(octdata(49:72,3));
od4 = mean(octdata(73:96,3));
od5 = mean(octdata(97:120,3));
od6 = mean(octdata(121:144,3));
od7 = mean(octdata(145:168,3));
od8 = mean(octdata(169:192,3));
od9 = mean(octdata(193:216,3));
od10 = mean(octdata(217:240,3));
od11 = mean(octdata(241:264,3));
od12 = mean(octdata(265:288,3));
od13 = mean(octdata(289:312,3));
od14 = mean(octdata(313:336,3));
od15 = mean(octdata(337:360,3));
od16 = mean(octdata(361:384,3));
od17 = mean(octdata(385:408,3));
od18 = mean(octdata(409:432,3));
od19 = mean(octdata(433:456,3));
od20 = mean(octdata(457:480,3));
od21 = mean(octdata(481:504,3));
od22 = mean(octdata(505:528,3));
od23 = mean(octdata(529:552,3));
od24 = mean(octdata(553:576,3));
od25 = mean(octdata(577:600,3));
od26 = mean(octdata(601:624,3));
od27 = mean(octdata(625:648,3));
od28 = mean(octdata(649:672,3));
od29 = mean(octdata(673:696,3));
od30 = mean(octdata(697:720,3));
od31 = mean(octdata(721:744,3));
% creates vector of daily averages
octusage = [od1 od2 od3 od4 od5 od6 od7 od8 od9 od10 od11 od12 od13 od14 od15 od16 od17 od18 od19 od20 od21 od22 od23 od24 od25 od26 od27 od28 od29 od30 od31];
% flat rate emission factor for October  
fref_CO2oct = octusage.*oct_avg_CO2; % [lbs]
fref_SO2oct = octusage.*oct_avg_SO2;
fref_NOxoct = octusage.*oct_avg_NOx;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% November 
nov_avg_CO2 = mean(data(252:275,3)); % [lb/kWh]
nov_avg_SO2 = mean(data(252:275,7));
nov_avg_NOx = mean(data(252:275,11));
% extracts data for consumption (kWh) for each day
month11 = 'EnergyUsage_Nov2018MEB';
novdata = xlsread(month11);
% averages the data for each day  of the month - November usage 
nd1 = mean(novdata(1:24,3)); 
nd2 = mean(novdata(25:48,3)); 
nd3 = mean(novdata(49:72,3));
nd4 = mean(novdata(73:96,3));
nd5 = mean(novdata(97:120,3));
nd6 = mean(novdata(121:144,3));
nd7 = mean(novdata(145:168,3));
nd8 = mean(novdata(169:192,3));
nd9 = mean(novdata(193:216,3));
nd10 = mean(novdata(217:240,3));
nd11 = mean(novdata(241:264,3));
nd12 = mean(novdata(265:288,3));
nd13 = mean(novdata(289:312,3));
nd14 = mean(novdata(313:336,3));
nd15 = mean(novdata(337:360,3));
nd16 = mean(novdata(361:384,3));
nd17 = mean(novdata(385:408,3));
nd18 = mean(novdata(409:432,3));
nd19 = mean(novdata(433:456,3));
nd20 = mean(novdata(457:480,3));
nd21 = mean(novdata(481:504,3));
nd22 = mean(novdata(505:528,3));
nd23 = mean(novdata(529:552,3));
nd24 = mean(novdata(553:576,3));
nd25 = mean(novdata(577:600,3));
nd26 = mean(novdata(601:624,3));
nd27 = mean(novdata(625:648,3));
nd28 = mean(novdata(649:672,3));
nd29 = mean(novdata(673:696,3));
nd30 = mean(novdata(697:720,3));
% creates vector of daily averages
novusage = [nd1 nd2 nd3 nd4 nd5 nd6 nd7 nd8 nd9 nd10 nd11 nd12 nd13 nd14 nd15 nd16 nd17 nd18 nd19 nd20 nd21 nd22 nd23 nd24 nd25 nd26 nd27 nd28 nd29 nd30];
% flat rate emission factor for November  
fref_CO2nov = novusage.*nov_avg_CO2; % [lbs]
fref_SO2nov = novusage.*nov_avg_SO2;
fref_NOxnov = novusage.*nov_avg_NOx;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% December 
dec_avg_CO2 = mean(data(277:300,3)); % [lb/kWh]
dec_avg_SO2 = mean(data(277:300,7));
dec_avg_NOx = mean(data(277:300,11));
% extracts data for consumption (kWh) for each day
month12 = 'EnergyUsage_Dec2018MEB';
decdata = xlsread(month12);
% averages the data for each day  of the month - December usage 
dd1 = mean(decdata(1:24,3)); 
dd2 = mean(decdata(25:48,3)); 
dd3 = mean(decdata(49:72,3));
dd4 = mean(decdata(73:96,3));
dd5 = mean(decdata(97:120,3));
dd6 = mean(decdata(121:144,3));
dd7 = mean(decdata(145:168,3));
dd8 = mean(decdata(169:192,3));
dd9 = mean(decdata(193:216,3));
dd10 = mean(decdata(217:240,3));
dd11 = mean(decdata(241:264,3));
dd12 = mean(decdata(265:288,3));
dd13 = mean(decdata(289:312,3));
dd14 = mean(decdata(313:336,3));
dd15 = mean(decdata(337:360,3));
dd16 = mean(decdata(361:384,3));
dd17 = mean(decdata(385:408,3));
dd18 = mean(decdata(409:432,3));
dd19 = mean(decdata(433:456,3));
dd20 = mean(decdata(457:480,3));
dd21 = mean(decdata(481:504,3));
dd22 = mean(decdata(505:528,3));
dd23 = mean(decdata(529:552,3));
dd24 = mean(decdata(553:576,3));
dd25 = mean(decdata(577:600,3));
dd26 = mean(decdata(601:624,3));
dd27 = mean(decdata(625:648,3));
dd28 = mean(decdata(649:672,3));
dd29 = mean(decdata(673:696,3));
dd30 = mean(decdata(697:720,3));
dd31 = mean(decdata(721:744,3));
% creates vector of daily averages
decusage = [dd1 dd2 dd3 dd4 dd5 dd6 dd7 dd8 dd9 dd10 dd11 dd12 dd13 dd14 dd15 dd16 dd17 dd18 dd19 dd20 dd21 dd22 dd23 dd24 dd25 dd26 dd27 dd28 dd29 dd30 dd31];
% flat rate emission factor for December  
fref_CO2dec = decusage.*dec_avg_CO2; % [lbs]
fref_SO2dec = decusage.*dec_avg_SO2;
fref_NOxdec = decusage.*dec_avg_NOx;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fref_CO2_year = [fref_CO2jan fref_CO2feb fref_CO2mar fref_CO2apr fref_CO2may fref_CO2jun fref_CO2jul fref_CO2aug fref_CO2sep fref_CO2oct fref_CO2nov fref_CO2dec];
fref_SO2_year = [fref_SO2jan fref_SO2feb fref_SO2mar fref_SO2apr fref_SO2may fref_SO2jun fref_SO2jul fref_SO2aug fref_SO2sep fref_SO2oct fref_SO2nov fref_SO2dec];
fref_NOx_year = [fref_NOxjan fref_NOxfeb fref_NOxmar fref_NOxapr fref_NOxmay fref_NOxjun fref_NOxjul fref_NOxaug fref_NOxsep fref_NOxoct fref_NOxnov fref_NOxdec];
time_step3 = 1:1:365;

figure(1)
plot(time_step3,fref_CO2_year,'b')
xlim([1 365])
title('Flat Rate Emission Factor - Yearly Analysis for CO2')
xlabel('Days')
ylabel('fref [lbs]')

figure(2)
plot(time_step3,fref_SO2_year,'m')
xlim([1 365])
title('Flat Rate Emission Factor - Yearly Analysis for SO2')
xlabel('Days')
ylabel('fref [lbs]')

figure(3)
plot(time_step3,fref_NOx_year,'r')
xlim([1 365])
title('Flat Rate Emission Factor - Yearly Analysis for NOx')
xlabel('Days')
ylabel('fref [lbs]')

% 
