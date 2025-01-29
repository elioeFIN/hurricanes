# basins/agencies: 1=WPAC (JMA), 2=NIO (IMD), 3=SWIO (Meteo-France), 4=AUS (BoM), 5=SPAC (FMS), 6=SATL (Brazilian Navy), 7=SPAC (MetService), 8=AUS (BMKG), 9=AUS (PNG-NWS)
# wind of RSMC forecast and data is multiplied by 1.12, if they use 10-minute sustained wind
# wind of RSMC forecast and data is multiplied by 1.06, if they use 3-minute sustained wind
# (to allow comparison with my 1-min sustained wind prediction)

# Shem 02 ... 07U/03P around 2021-12-11-21Z

rsmc_shem_2022_02 = [16.7,158.9,50.4;19.3,163.2,67.2;23.3,169.6,56.0;31.7,175.7,56.0];
my_shem_2022_02 = [16.4,159.0,55;    19.3,163.1,70;  22.9,167.7,65;  28.5,172.5,65];
btk_shem_2022_02 = [16.4,158.8,65;   20.1,163.8,55;  24.2,170.6,55;  30.6,179.0,55]; # JTWC best track
btk2_shem_2022_02 = [16.5,158.8,56.0;20.0,163.8,67.2;24.2,170.6,56.0;30.6,179.0,56.0]; # BoM spreadsheet (except days 3&4)
rsmcvect = rsmc_shem_2022_02;
myvect = my_shem_2022_02;
btkvect = btk_shem_2022_02;
btk2vect = btk2_shem_2022_02;
leadtimevect = [1;2;3;4];
basinvect = [4;4;4;4];

# Shem 03 ... RUBY around 2021-12-12-21Z

rsmc_shem_2022_03 = [19.6,163.0,72.8;22.9,169.3,67.2;29.3,175.4,56.0];
my_shem_2022_03 = [19.4,163.1,80;    23.0,169.4,70;  29.3,175.1,60];
btk_shem_2022_03 = [20.1,163.8,55;   24.2,170.6,55;  30.6,179.0,55]; # JTWC best track
btk2_shem_2022_03 = [20.0,163.8,67.2;24.2,170.6,56.0;30.6,179.0,56.0]; # BoM spreadsheet (except days 2&3)
rsmcvect = [rsmcvect;rsmc_shem_2022_03];
myvect = [myvect;my_shem_2022_03];
btkvect = [btkvect;btk_shem_2022_03];
btk2vect = [btk2vect;btk2_shem_2022_03];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;4;4;4];

# Wpac 23 ... RAI around 2021-12-13-21Z

rsmc_wpac_2021_23 = [8.5,134.4,67.2;9.3,129.8,89.6;10.2,124.6,95.2;11.1,120.1,78.4;12.2,115.6,89.6];
my_wpac_2021_23 = [8.6,134.4,70;    9.6,129.7,95;  10.4,124.7,90;  11.5,120.0,80;  12.5,115.6,90];
btk_wpac_2021_23 = [8.7,133.4,65;   9.4,128.9,125; 10.2,122.5,110; 10.7,117.4,90;  12.6,112.2,130]; # JTWC best track
btk2_wpac_2021_23 = [8.6,133.4,78.4;9.4,128.9,95.2;10.0,122.6,95.2;10.6,117.4,89.6;12.5,112.2,117.6]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2021_23];
myvect = [myvect;my_wpac_2021_23];
btkvect = [btkvect;btk_wpac_2021_23];
btk2vect = [btk2vect;btk2_wpac_2021_23];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 24 ... RAI around 2021-12-14-03Z

rsmc_wpac_2021_24 = [9.0,133.0,78.4;9.6,128.5,95.2; 10.1,123.2,78.4;11.3,118.7,78.4;12.6,114.8,84.0];
my_wpac_2021_24 = [9.1,132.6,80;    10.0,128.0,95;  10.5,122.9,80;  11.8,118.2,80;  13.0,114.0,90];
btk_wpac_2021_24 = [8.8,132.4,70;   9.7,127.6,150;  10.0,121.1,95;  11.0,115.9,100; 13.1,111.4,120]; # JTWC best track
btk2_wpac_2021_24 = [8.7,132.3,84.0;9.7,127.6,112.0;10.0,121.2,89.6;10.8,116.0,95.2;13.1,111.4,117.5]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2021_24];
myvect = [myvect;my_wpac_2021_24];
btkvect = [btkvect;btk_wpac_2021_24];
btk2vect = [btk2vect;btk2_wpac_2021_24];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 25 ... RAI around 2021-12-14-21Z

rsmc_wpac_2021_25 = [9.8,128.8,89.6;9.9,123.1,78.4; 10.9,118.2,84.0;12.2,113.3,89.6; 14.6,110.7,78.4];
my_wpac_2021_25 = [9.8,128.6,85;    10.2,123.3,80;  11.2,118.2,85;  12.8,113.3,95;   15.2,111.1,75];
btk_wpac_2021_25 = [9.4,128.9,125;  10.2,122.5,110; 10.7,117.4,90;  12.6,112.2,130;  15.9,110.7,75]; # JTWC best track
btk2_wpac_2021_25 = [9.4,128.9,95.2;10.0,122.6,95.2;10.6,117.4,89.6;12.5,112.2,117.6;16.1,110.7,89.6]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2021_25];
myvect = [myvect;my_wpac_2021_25];
btkvect = [btkvect;btk_wpac_2021_25];
btk2vect = [btk2vect;btk2_wpac_2021_25];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 26 ... RAI around 2021-12-15-21Z

rsmc_wpac_2021_26 = [9.8,122.8,84.0; 11.0,117.5,78.4;12.4,112.3,84.0; 15.0,110.4,61.6;17.9,111.1,44.8];
my_wpac_2021_26 = [9.9,123.2,110;    11.0,117.8,95;  12.6,112.6,100;  14.9,110.4,70;  18.1,111.3,40];
btk_wpac_2021_26 = [10.2,122.5,110;  10.7,117.4,90;  12.6,112.2,130;  15.9,110.7,75;  19.9,113.1,40]; # JTWC best track
btk2_wpac_2021_26 = [10.0,122.6,95.2;10.6,117.4,89.6;12.5,112.2,117.6;16.1,110.7,89.6;19.9,112.8,33.6]; # JMA best track (except day 5 wind)
rsmcvect = [rsmcvect;rsmc_wpac_2021_26];
myvect = [myvect;my_wpac_2021_26];
btkvect = [btkvect;btk_wpac_2021_26];
btk2vect = [btk2vect;btk2_wpac_2021_26];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 27 ... RAI around 2021-12-16-21Z
# day 5 JMA wind speed missing

rsmc_wpac_2021_27 = [10.7,116.9,95.2;12.3,111.7,89.6; 15.4,109.7,78.4;18.0,110.9,56.0];
my_wpac_2021_27 = [10.9,116.8,95;    12.9,111.7,95;   16.1,109.9,75;  18.7,111.1,45];
btk_wpac_2021_27 = [10.7,117.4,90;   12.6,112.2,130;  15.9,110.7,75;  19.9,113.1,40]; # JTWC best track
btk2_wpac_2021_27 = [10.6,117.4,89.6;12.5,112.2,117.6;16.1,110.7,89.6;19.9,112.8,33.6]; # JMA best track (except day 4 wind)
rsmcvect = [rsmcvect;rsmc_wpac_2021_27];
myvect = [myvect;my_wpac_2021_27];
btkvect = [btkvect;btk_wpac_2021_27];
btk2vect = [btk2vect;btk2_wpac_2021_27];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Wpac 28 ... RAI around 2021-12-17-03Z

rsmc_wpac_2021_28 = [11.0,115.4,89.6;12.9,110.6,84.0; 16.7,109.7,61.6;18.9,111.3,39.2];
my_wpac_2021_28 = [10.9,115.4,95;    13.0,110.8,90;   17.0,110.0,60;  19.4,111.7,40];
btk_wpac_2021_28 = [11.0,115.9,100;  13.1,111.4,120;  17.3,110.8,70;  20.6,113.8,35]; # JTWC best track
btk2_wpac_2021_28 = [10.8,116.0,95.2;13.1,111.4,117.6;17.2,110.9,78.4;20.8,114.0,33.6]; # JMA best track (except day 4 wind)
rsmcvect = [rsmcvect;rsmc_wpac_2021_28];
myvect = [myvect;my_wpac_2021_28];
btkvect = [btkvect;btk_wpac_2021_28];
btk2vect = [btk2vect;btk2_wpac_2021_28];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Shem 04 ... TD03F / 05P around 2022-01-08-21Z
# FMS 3-5 day wind speeds and 4-5 day positions are missing

rsmc_shem_2022_04 = [19.0,175.9,50.4;19.6,175.3,50.4;21.0,174.9,0];
my_shem_2022_04 = [19.4,176.0,45;19.9,175.0,55;22.0,175.0,0];
btk_shem_2022_04 = [20.0,177.1,45;20.7,174.3,45;21.8,173.7,0]; # JTWC best track
btk2_shem_2022_04 = btk_shem_2022_04; #placeholder
rsmcvect = [rsmcvect;rsmc_shem_2022_04];
myvect = [myvect;my_shem_2022_04];
btkvect = [btkvect;btk_shem_2022_04];
btk2vect = [btk2vect;btk2_shem_2022_04];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;5;5;5];

# Shem 05 ... TD03F / 05P around 2022-01-09-03Z

rsmc_shem_2022_05 = [18.9,175.9,50.4;19.5,175.2,50.4;21.1,175.0,0];
my_shem_2022_05 = [19.1,175.7,45;19.6,174.6,50;21.3,174.5,0];
btk_shem_2022_05 = [20.1,176.6,40;20.8,173.8,45;22.8,173.9,0]; # JTWC best track
btk2_shem_2022_05 = btk_shem_2022_05; #placeholder
rsmcvect = [rsmcvect;rsmc_shem_2022_05];
myvect = [myvect;my_shem_2022_05];
btkvect = [btkvect;btk_shem_2022_05];
btk2vect = [btk2vect;btk2_shem_2022_05];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;5;5;5];

# Shem 06 ... TIFFANY around 2022-01-10-21Z

rsmc_shem_2022_06 = [14.3,137.7,56.0;14.3,134.3,39.2;14.8,132.5,33.6;15.4,132.9,33.6; 16.3,134.0,33.6];
my_shem_2022_06 = [14.3,137.4,55;    14.4,133.2,35;  15.6,131.0,30;  15.8,130.9,30;   17.1,132.6,25];
btk_shem_2022_06 = [14.8,136.7,55;   15.1,131.8,25;  15.9,127.1,20;  17.0,125.2,25;   20.99,125.59,20]; # JTWC best track (except day 5)
btk2_shem_2022_06 = [14.7,137.1,50.4;15.1,131.6,22.4;16.0,126.8,22.4;17.38,125.1,22.4;20.99,125.59,22.4]; # BoM spreadsheet
rsmcvect = [rsmcvect;rsmc_shem_2022_06];
myvect = [myvect;my_shem_2022_06];
btkvect = [btkvect;btk_shem_2022_06];
btk2vect = [btk2vect;btk2_shem_2022_06];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 07 ... CODY around 2022-01-10-21Z
# FMS 3-5 day wind speeds and 4-5 day positions are missing

rsmc_shem_2022_07 = [21.8,173.6,50.4;24.3,175.5,50.4;26.7,177.9,0];
my_shem_2022_07 = [21.8,173.5,50;24.4,175.6,50;26.9,177.8,0];
btk_shem_2022_07 = [21.8,173.7,55;24.9,175.1,50;27.5,177.5,0]; # JTWC best track
btk2_shem_2022_07 = btk_shem_2022_07; #placeholder
rsmcvect = [rsmcvect;rsmc_shem_2022_07];
myvect = [myvect;my_shem_2022_07];
btkvect = [btkvect;btk_shem_2022_07];
btk2vect = [btk2vect;btk2_shem_2022_07];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;5;5;5];

# Shem 08 ... 01/93S around 2022-01-21-21Z
# (no MFR forecast)

# Shem 09 ... 01/93S around 2022-01-22-15Z

rsmc_shem_2022_09 = [15.8,45.2,28.0;  15.5,40.9,56.0;  16.3,38.3,39.2];
my_shem_2022_09 = [16.0,45.4,25;      15.6,40.3,45;    16.1,36.9,35];
btk_shem_2022_09 = [15.6,44.4,35;     16.4,38.7,45;    17.0,32.1,20]; # JTWC best track (days 1-2 only)
btk2_shem_2022_09 = [15.52,43.98,33.6;16.43,38.76,44.8;16.53,31.91,28.0]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2022_09];
myvect = [myvect;my_shem_2022_09];
btkvect = [btkvect;btk_shem_2022_09];
btk2vect = [btk2vect;btk2_shem_2022_09];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 10 ... BATSIRAI around 2022-01-28-03Z

rsmc_shem_2022_10 = [19.0,72.5,44.8;  19.3,69.1,39.2; 18.6,66.3,39.2;  18.6,63.3,44.8;  19.4,60.0,61.6];
my_shem_2022_10 = [19.1,72.6,45;      19.4,69.3,50;   19.0,66.2,50;    18.7,63.0,50;    19.2,59.5,50];
btk_shem_2022_10 = [18.3,71.6,55;     17.5,68.1,90;   16.3,64.5,90;    16.4,62.2,65;    18.1,58.3,105]; # JTWC best track
btk2_shem_2022_10 = [18.32,71.67,56.0;17.43,68.1,95.2;16.38,64.53,72.8;16.43,62.26,72.8;18.0,58.32,100.8]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2022_10];
myvect = [myvect;my_shem_2022_10];
btkvect = [btkvect;btk_shem_2022_10];
btk2vect = [btk2vect;btk2_shem_2022_10];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 11 ... BATSIRAI around 2022-01-28-15Z

rsmc_shem_2022_11 = [19.2,70.6,50.4;  18.5,67.0,56.0;   18.0,63.8,61.6; 18.7,60.8,72.8;  19.8,57.7,78.4];
my_shem_2022_11 = [19.1,70.7,50;      18.3,67.1,65;     17.9,63.6,70;   18.3,60.2,70;    19.4,57.2,65];
btk_shem_2022_11 = [17.9,69.8,75;     16.6,65.9,95;     15.8,63.2,75;   17.1,60.0,80;    18.8,56.7,125]; # JTWC best track
btk2_shem_2022_11 = [17.94,69.96,89.6;16.73,66.12,106.4;15.8,63.19,67.2;17.17,60.08,89.6;18.82,56.71,123.2]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2022_11];
myvect = [myvect;my_shem_2022_11];
btkvect = [btkvect;btk_shem_2022_11];
btk2vect = [btk2vect;btk2_shem_2022_11];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 12 ... BATSIRAI around 2022-01-30-03Z

rsmc_shem_2022_12 = [16.6,64.5,78.4;  16.7,61.2,72.8;  18.2,57.2,89.6;  19.2,54.9,100.8;19.6,53.6,89.6];
my_shem_2022_12 = [16.5,64.6,85;      16.9,61.3,85;    18.2,57.6,90;    19.1,54.8,100;  19.2,52.6,95];
btk_shem_2022_12 = [16.3,64.5,90;     16.4,62.2,65;    18.1,58.3,105;   19.0,55.7,115;  19.3,53.8,110]; # JTWC best track
btk2_shem_2022_12 = [16.38,64.53,72.8;16.43,62.26,72.8;18.0,58.32,100.8;19.0,55.7,100.8;19.24,53.8,100.4]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2022_12];
myvect = [myvect;my_shem_2022_12];
btkvect = [btkvect;btk_shem_2022_12];
btk2vect = [btk2vect;btk2_shem_2022_12];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 13 ... BATSIRAI around 2022-01-31-15Z

rsmc_shem_2022_13 = [17.3,59.6,78.4;  18.6,56.4,100.8;  18.8,54.0,117.6; 18.6,52.2,123.2;  19.5,49.9,112.0];
my_shem_2022_13 = [16.9,60.0,80;      18.5,56.8,95;     18.8,54.2,105;   19.0,52.5,115;    20.0,49.7,100];
btk_shem_2022_13 = [17.1,60.0,80;     18.8,56.7,125;    19.2,55.0,110;   19.4,52.5,115;    20.8,49.4,100]; # JTWC best track
btk2_shem_2022_13 = [17.17,60.08,89.6;18.82,56.71,123.2;19.17,54.97,95.2;19.36,52.52,106.4;20.65,49.3,100.8]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2022_13];
myvect = [myvect;my_shem_2022_13];
btkvect = [btkvect;btk_shem_2022_13];
btk2vect = [btk2vect;btk2_shem_2022_13];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 14 ... BATSIRAI around 2022-02-01-03Z

rsmc_shem_2022_14 = [18.0,59.1,78.4;  19.0,56.2,89.6; 18.9,53.0,106.4; 18.8,51.0,100.8;  19.1,47.9,44.8];
my_shem_2022_14 = [18.0,59.1,75;      18.9,55.9,90;   19.2,53.1,100;   19.5,50.8,105;    19.8,47.9,60];
btk_shem_2022_14 = [18.1,58.3,105;    19.0,55.7,115;  19.3,53.8,110;   19.9,51.3,105;    21.5,46.6,60]; # JTWC best track
btk2_shem_2022_14 = [18.0,58.32,100.8;19.0,55.7,100.8;19.24,53.8,100.8;19.78,51.21,100.8;21.3,46.8,56.0]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2022_14];
myvect = [myvect;my_shem_2022_14];
btkvect = [btkvect;btk_shem_2022_14];
btk2vect = [btk2vect;btk2_shem_2022_14];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 15 ... 16U/09P around 2022-02-01-15Z

rsmc_shem_2022_15 = [15.8,156.1,33.6;17.6,160.2,33.6];
my_shem_2022_15 = [15.7,156.3,35;    17.1,159.7,35];
btk_shem_2022_15 = [15.5,156.1,25;   17.6,160.0,20]; # JTWC best track
btk2_shem_2022_15 = [16.0,156.5,28.0;17.5,160.0,22.4]; # BoM spreadsheet, except day 2
rsmcvect = [rsmcvect;rsmc_shem_2022_15];
myvect = [myvect;my_shem_2022_15];
btkvect = [btkvect;btk_shem_2022_15];
btk2vect = [btk2vect;btk2_shem_2022_15];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;4;4];

# Shem 16 ... BATSIRAI around 2022-02-01-15Z

rsmc_shem_2022_16 = [18.5,57.0,95.2;   19.2,54.0,100.8; 19.0,51.7,106.4;  19.4,49.3,106.4; 20.6,44.8,22.4];
my_shem_2022_16 = [18.4,56.8,100;      19.0,53.9,100;   19.0,51.3,110;    19.7,48.2,90;    20.7,44.3,35];
btk_shem_2022_16 = [18.8,56.7,125;     19.2,55.0,110;   19.4,52.5,115;    20.8,49.4,100;   22.7,44.2,35]; # JTWC best track
btk2_shem_2022_16 = [18.82,56.71,123.2;19.17,54.97,95.2;19.36,52.52,106.4;20.65,49.3,100.8;22.76,44.41,35.84]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2022_16];
myvect = [myvect;my_shem_2022_16];
btkvect = [btkvect;btk_shem_2022_16];
btk2vect = [btk2vect;btk2_shem_2022_16];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 17 ... 16U/09P around 2022-02-03-03Z
# (no BoM forecast)

# Shem 18 ... BATSIRAI around 2022-02-03-03Z

rsmc_shem_2022_18 = [19.5,53.3,106.4; 20.0,50.2,112.0;  21.2,44.5,44.8;22.0,40.1,50.4;  22.9,38.3,56.0];
my_shem_2022_18 = [19.4,53.3,105;     19.6,50.0,110;    21.0,44.9,45;  22.1,40.4,50;    23.1,39.2,60];
btk_shem_2022_18 = [19.3,53.8,110;    19.9,51.3,105;    21.5,46.6,60;  23.0,42.4,40;    26.2,41.4,45]; # JTWC best track
btk2_shem_2022_18 = [19.24,53.8,100.8;19.78,51.21,100.8;21.3,46.8,56.0;23.06,42.06,39.2;25.76,41.53,50.4]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2022_18];
myvect = [myvect;my_shem_2022_18];
btkvect = [btkvect;btk_shem_2022_18];
btk2vect = [btk2vect;btk2_shem_2022_18];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 19 ... DOVI around 2022-02-09-21Z

rsmc_shem_2022_19 = [23.0,166.5,50.4;28.8,166.0,61.6];
my_shem_2022_19 = [23.2,166.6,60;29.6,166.1,55];
btk_shem_2022_19 = [23.8,166.4,80;31.8,166.2,65]; # JTWC best track
btk2_shem_2022_19 = btk_shem_2022_19; #placeholder
rsmcvect = [rsmcvect;rsmc_shem_2022_19];
myvect = [myvect;my_shem_2022_19];
btkvect = [btkvect;btk_shem_2022_19];
btk2vect = [btk2vect;btk2_shem_2022_19];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;5;5];

# Shem 20 ... DUMAKO around 2022-02-13-21Z

rsmc_shem_2022_20 = [16.4,53.5,50.4;  15.6,49.9,39.2];
my_shem_2022_20 = [16.6,53.4,50;      16.0,49.7,40];
btk_shem_2022_20 = [16.8,52.9,45;     17.1,48.4,30]; # JTWC best track
btk2_shem_2022_20 = [16.83,53.08,39.2;17.27,48.47,33.6]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2022_20];
myvect = [myvect;my_shem_2022_20];
btkvect = [btkvect;btk_shem_2022_20];
btk2vect = [btk2vect;btk2_shem_2022_20];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 21 ... DUMAKO around 2022-02-14-21Z

rsmc_shem_2022_21 = [16.4,49.1,22.4;16.3,44.1,22.4;    16.0,39.6,0];
my_shem_2022_21 = [16.2,49.1,30;    16.1,44.4,20;      15.4,39.7,0];
btk_shem_2022_21 = [17.1,48.4,30;     16.7,43.5,25;    17.87,39.08,0]; # JTWC best track (day 1 only, day 3 MFR)
btk2_shem_2022_21 = [17.27,48.47,33.6;16.78,42.65,16.8;17.87,39.08,0]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2022_21];
myvect = [myvect;my_shem_2022_21];
btkvect = [btkvect;btk_shem_2022_21];
btk2vect = [btk2vect;btk2_shem_2022_21];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 22 ... 05/13S around 2022-02-16-21Z

rsmc_shem_2022_22 = [14.1,64.0,44.8;   15.3,61.1,56.0;  16.9,58.3,72.8;  17.8,55.9,84.0; 18.2,53.5,95.2];
my_shem_2022_22 = [14.1,64.2,50;       15.5,61.3,60;    17.1,58.5,75;    17.7,56.2,90;   18.3,53.0,95];
btk_shem_2022_22 = [13.7,63.7,50;      15.1,60.5,75;    16.8,57.1,85;    17.6,54.6,115;  18.5,52.1,90]; # JTWC best track
btk2_shem_2022_22 = [13.57,63.68,48.16;15.23,60.58,67.2;16.73,57.23,78.4;17.5,54.53,95.2;18.43,51.96,89.6]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2022_22];
myvect = [myvect;my_shem_2022_22];
btkvect = [btkvect;btk_shem_2022_22];
btk2vect = [btk2vect;btk2_shem_2022_22];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 23 ... EMNATI around 2022-02-17-15Z

rsmc_shem_2022_23 = [14.7,61.7,61.6;  16.6,58.7,72.8;   17.8,56.1,100.8;  18.1,53.1,106.4;  19.2,49.5,106.4];
my_shem_2022_23 = [14.7,61.7,60;      16.7,58.7,70;     18.0,56.0,95;     18.3,53.1,105;    19.4,49.8,110];
btk_shem_2022_23 = [14.5,61.6,75;     16.3,58.3,75;     17.4,55.4,115;    18.2,52.7,95;     20.8,49.5,75]; # JTWC best track
btk2_shem_2022_23 = [14.55,61.61,67.2;16.32,58.12,69.44;17.61,55.12,106.4;18.06,52.66,87.36;20.71,49.47,84.0]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2022_23];
myvect = [myvect;my_shem_2022_23];
btkvect = [btkvect;btk_shem_2022_23];
btk2vect = [btk2vect;btk2_shem_2022_23];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 24 ... EMNATI around 2022-02-18-03Z

rsmc_shem_2022_24 = [15.7,60.1,67.2;  17.4,57.3,100.8; 18.1,54.7,112.0; 18.7,51.4,106.4; 19.8,47.7,67.2];
my_shem_2022_24 = [15.2,59.7,70;      16.9,56.8,95;    17.9,54.4,110;   18.2,51.4,100;   19.9,47.7,70];
btk_shem_2022_24 = [15.4,59.8,65;     17.1,56.6,100;   17.7,54.0,105;   19.1,51.2,90;    22.6,47.8,65]; # JTWC best track
btk2_shem_2022_24 = [15.46,59.47,67.2;17.04,56.56,89.6;17.5,54.04,87.36;19.26,51.19,89.6;22.56,47.68,78.4]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2022_24];
myvect = [myvect;my_shem_2022_24];
btkvect = [btkvect;btk_shem_2022_24];
btk2vect = [btk2vect;btk2_shem_2022_24];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 25 ... EMNATI around 2022-02-20-21Z

rsmc_shem_2022_25 = [19.2,51.8,106.4; 21.2,48.2,44.8;  24.7,43.7,39.2;  29.1,41.0,44.8;  32.6,41.3,50.4];
my_shem_2022_25 = [19.1,51.7,110;     21.6,48.1,75;    25.1,44.2,40;    28.7,41.3,45;    31.6,41.0,45];
btk_shem_2022_25 = [18.5,52.1,90;     21.6,48.8,75;    24.8,44.1,35;    28.9,41.4,50;    34.13,42.8,55]; # JTWC best track (except day 5 MFR)
btk2_shem_2022_25 = [18.43,51.96,89.6;21.51,48.73,84.0;24.53,44.08,44.8;28.61,41.39,50.4;34.13,42.8,56.0]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2022_25];
myvect = [myvect;my_shem_2022_25];
btkvect = [btkvect;btk_shem_2022_25];
btk2vect = [btk2vect;btk2_shem_2022_25];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 26 ... EMNATI around 2022-02-21-15Z

rsmc_shem_2022_26 = [21.0,49.4,106.4; 24.1,45.4,44.8;  28.0,42.1,50.4;  31.6,42.1,50.4;  33.5,43.3,50.4];
my_shem_2022_26 = [21.1,49.4,105;     24.7,45.7,45;    28.6,42.5,45;    32.1,42.3,50;    33.4,43.1,45];
btk_shem_2022_26 = [20.8,49.5,75;     24.3,45.2,45;    28.0,42.0,55;    32.6,42.6,45;    35.95,45.48,50]; # JTWC best track (days 1-3 only, day 5 MFR)
btk2_shem_2022_26 = [20.71,49.47,84.0;24.25,45.29,44.8;27.32,42.03,44.8;33.01,41.99,50.4;35.95,45.48,50.4]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2022_26];
myvect = [myvect;my_shem_2022_26];
btkvect = [btkvect;btk_shem_2022_26];
btk2vect = [btk2vect;btk2_shem_2022_26];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 27 ... EMNATI around 2022-02-21-21Z

rsmc_shem_2022_27 = [21.4,48.5,106.4; 24.7,44.6,44.8;  28.9,41.9,44.8;  32.0,42.7,50.4; 33.8,44.0,44.8];
my_shem_2022_27 = [21.5,48.5,95;      25.3,44.9,45;    29.2,42.2,45;    32.2,42.6,50;   34.0,43.4,40];
btk_shem_2022_27 = [21.6,48.8,75;     24.8,44.1,35;    28.9,41.4,50;    34.13,42.8,55;  36.39,45.74,50]; # JTWC best track (except days 4-5 MFR)
btk2_shem_2022_27 = [21.51,48.73,84.0;24.53,44.08,44.8;28.61,41.39,50.4;34.13,42.8,56.0;36.39,45.75,50.4]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2022_27];
myvect = [myvect;my_shem_2022_27];
btkvect = [btkvect;btk_shem_2022_27];
btk2vect = [btk2vect;btk2_shem_2022_27];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 28 ... EMNATI around 2022-02-22-21Z

rsmc_shem_2022_28 = [25.1,44.9,50.4;  28.4,42.0,50.4;  32.1,42.4,56.0; 33.8,43.4,50.4;  37.6,41.3,44.8];
my_shem_2022_28 = [25.0,45.1,45;      28.7,42.5,45;    32.0,42.5,45;   33.7,43.2,50;    37.1,41.1,40];
btk_shem_2022_28 = [24.8,44.1,35;     28.9,41.4,50;    34.13,42.8,55;  36.39,45.75,50;  39.08,44.36,40]; # JTWC best track (except days 3-5 MFR)
btk2_shem_2022_28 = [24.53,44.08,44.8;28.61,41.39,50.4;34.13,42.8,56.0;36.39,45.75,50.4;39.08,44.36,39.2]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2022_28];
myvect = [myvect;my_shem_2022_28];
btkvect = [btkvect;btk_shem_2022_28];
btk2vect = [btk2vect;btk2_shem_2022_28];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 29 ... ANIKA around 2022-02-25-21Z

rsmc_shem_2022_29 = [13.9,127.1,50.4;14.0,126.8,39.2;14.6,125.8,39.2;15.8,124.0,44.8;18.1,122.2,39.2];
my_shem_2022_29 = [13.9,127.3,50;    14.4,126.6,40;  15.0,125.4,40;  15.7,123.6,45;  17.6,120.5,40];
btk_shem_2022_29 = [14.2,126.8,35;   15.3,125.9,30;  17.5,123.7,20;  18.2,121.6,35;  20.4,121.1,35]; # JTWC best track
btk2_shem_2022_29 = [14.25,126.7,44.8;15.5,125.5,39.2;16.7,123.6,28.0;18.2,121.95,33.6;20.2,121.0,44.8]; # BoM spreadsheet
rsmcvect = [rsmcvect;rsmc_shem_2022_29];
myvect = [myvect;my_shem_2022_29];
btkvect = [btkvect;btk_shem_2022_29];
btk2vect = [btk2vect;btk2_shem_2022_29];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 30 ... ANIKA around 2022-02-26-21Z

rsmc_shem_2022_30 = [14.8,126.1,44.8;15.2,124.6,44.8;16.2,122.1,61.6; 18.2,120.2,72.8;21.0,120.9,56.0];
my_shem_2022_30 = [14.8,125.9,40;    15.3,124.4,40;  16.3,122.0,60;   18.7,120.2,70  ;21.3,120.5,50];
btk_shem_2022_30 = [15.3,125.9,30;   17.5,123.7,20;  18.2,121.6,35;   20.4,121.1,35  ;23.5,123.3,20]; # JTWC best track
btk2_shem_2022_30 = [15.5,125.5,39.2;16.7,123.6,28.0;18.2,121.95,33.6;20.2,121.0,44.8;22.7,123.4,33.6]; # BoM spreadsheet
rsmcvect = [rsmcvect;rsmc_shem_2022_30];
myvect = [myvect;my_shem_2022_30];
btkvect = [btkvect;btk_shem_2022_30];
btk2vect = [btk2vect;btk2_shem_2022_30];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 31 ... VERNON around 2022-02-27-03Z

rsmc_shem_2022_31 = [13.5,86.8,72.8;  15.5,85.3,89.6;  19.0,83.8,84.0;  23.0,81.2,61.6;  28.0,77.7,50.4];
my_shem_2022_31 = [13.2,87.0,80;      15.4,85.2,80;    18.9,83.5,80;    22.5,80.8,70;    27.2,77.6,50];
btk_shem_2022_31 = [13.8,87.8,45;     14.8,87.0,45;    17.7,84.6,50;    22.0,82.3,60;    27.2,80.3,45]; # JTWC best track
btk2_shem_2022_31 = [13.77,87.91,39.2;14.77,87.28,39.2;17.68,84.62,50.4;22.13,82.31,67.2;27.04,80.38,53.76]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2022_31];
myvect = [myvect;my_shem_2022_31];
btkvect = [btkvect;btk_shem_2022_31];
btk2vect = [btk2vect;btk2_shem_2022_31];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 32 ... VERNON around 2022-03-01-03Z

rsmc_shem_2022_32 = [18.6,83.9,61.6;  21.6,81.1,72.8;  25.3,78.6,56.0;   29.3,77.5,39.2;32.6,77.5,39.2];
my_shem_2022_32 = [17.8,84.3,55;      20.5,81.6,60;    24.0,79.0,50;     27.8,77.7,45;  31.4,76.3,35];
btk_shem_2022_32 = [17.7,84.6,50;     22.0,82.3,60;    27.2,80.3,45;     30.4,79.5,45;  32.5,79.5,40]; # JTWC best track (except day 5)
btk2_shem_2022_32 = [17.68,84.62,50.4;22.13,82.31,67.2;27.04,80.38,53.76;30.4,79.5,44.8;32.52,79.43,50.4]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2022_32];
myvect = [myvect;my_shem_2022_32];
btkvect = [btkvect;btk_shem_2022_32];
btk2vect = [btk2vect;btk2_shem_2022_32];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Nio 01 ... BOB 01 / 90B around 2022-03-04-15Z

rsmc_nio_2022_01 = [10.9,81.9,31.8;11.0,81.1,26.5];
my_nio_2022_01 = [10.9,82.1,30;11.3,81.3,25];
btk_nio_2022_01 = [11.4,83.4,40;10.8,81.0,20]; # JTWC best track
btk2_nio_2022_01 = [11.7,82.5,31.8;10.8,81.0,21.2]; # preliminary report of IMD (day 1 only)
rsmcvect = [rsmcvect;rsmc_nio_2022_01];
myvect = [myvect;my_nio_2022_01];
btkvect = [btkvect;btk_nio_2022_01];
btk2vect = [btk2vect;btk2_nio_2022_01];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Shem 33 ... GOMBE around 2022-03-08-21Z

rsmc_shem_2022_33 = [15.0,45.4,56.0;  15.5,43.1,72.8; 15.6,40.4,100.8; 15.4,38.9,33.6;  17.3,40.1,39.2];
my_shem_2022_33 = [15.1,44.7,55;      15.4,42.6,80;   15.5,39.3,70;    15.5,37.8,35;    16.9,38.3,30];
btk_shem_2022_33 = [15.3,44.4,50;     15.8,41.3,85;   15.1,38.4,40;    15.6,35.1,25;    17.1,35.4,20]; # JTWC best track (days 1-3 only)
btk2_shem_2022_33 = [15.33,44.31,56.0;15.59,41.2,84.0;15.02,38.22,22.4;15.25,35.26,22.4;16.7,35.27,16.8]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2022_33];
myvect = [myvect;my_shem_2022_33];
btkvect = [btkvect;btk_shem_2022_33];
btk2vect = [btk2vect;btk2_shem_2022_33];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 34 ... GOMBE around 2022-03-09-21Z

rsmc_shem_2022_34 = [15.5,41.5,106.4;15.3,39.0,33.6;  15.1,37.4,22.4;  16.5,38.2,22.4; 19.1,39.6,39.2];
my_shem_2022_34 = [15.6,41.3,100;    15.4,38.6,45;    15.7,37.3,25;    16.8,37.7,25;   19.1,38.8,45];
btk_shem_2022_34 = [15.8,41.3,85;    15.1,38.4,40;    15.6,35.1,25;    17.1,35.4,20;   18.3,37.4,20]; # JTWC best track (days 1-2 only)
btk2_shem_2022_34 = [15.59,41.2,84.0;15.02,38.22,22.4;15.25,35.26,22.4;16.7,35.27,16.8;18.53,37.0,22.4]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2022_34];
myvect = [myvect;my_shem_2022_34];
btkvect = [btkvect;btk_shem_2022_34];
btk2vect = [btk2vect;btk2_shem_2022_34];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 35 ... GOMBE around 2022-03-10-21Z

rsmc_shem_2022_35 = [15.3,38.5,39.2;  15.3,37.0,22.4;  16.8,37.1,28.0; 18.4,38.2,33.6; 20.4,40.0,39.2];
my_shem_2022_35 = [15.4,38.6,45;      16.0,37.0,25;    17.0,36.9,25;   18.8,38.0,35;   19.9,39.9,45];
btk_shem_2022_35 = [15.1,38.4,40;     15.6,35.1,25;    17.1,35.4,20;   18.3,37.4,20;   18.4,37.9,25]; # JTWC best track (day 1 only)
btk2_shem_2022_35 = [15.02,38.22,22.4;15.25,35.26,22.4;16.7,35.27,16.8;18.53,37.0,22.4;18.11,37.98,22.4]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2022_35];
myvect = [myvect;my_shem_2022_35];
btkvect = [btkvect;btk_shem_2022_35];
btk2vect = [btk2vect;btk2_shem_2022_35];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 36 ... GOMBE around 2022-03-11-03Z

rsmc_shem_2022_36 = [15.1,37.9,28.0;  15.7,36.7,22.4;  17.5,37.7,28.0;  19.3,39.4,39.2;  20.3,40.3,44.8];
my_shem_2022_36 = [15.2,38.0,35;      15.8,36.4,25;    17.5,37.6,30;    19.0,38.5,40;    20.1,39.5,45];
btk_shem_2022_36 = [15.1,37.3,30;     15.9,34.7,25;    17.4,35.7,20;    18.5,37.3,25;    17.9,37.8,25]; # operationally from U.S. sources (no JTWC btk values)
btk2_shem_2022_36 = [15.08,37.34,22.4;15.58,35.09,22.4;17.01,35.94,16.8;18.48,37.21,28.0;18.07,38.1,22.4]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2022_36];
myvect = [myvect;my_shem_2022_36];
btkvect = [btkvect;btk_shem_2022_36];
btk2vect = [btk2vect;btk2_shem_2022_36];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 37 ... GOMBE around 2022-03-11-15Z

rsmc_shem_2022_37 = [15.4,37.4,22.4; 16.8,36.9,22.4;  18.6,38.4,33.6;  19.9,39.6,39.2;  21.1,40.3,44.8];
my_shem_2022_37 = [15.3,37.5,25;     17.1,36.7,20;    18.6,37.9,30;    19.8,38.6,40;    20.3,39.0,40];
btk_shem_2022_37 = [15.3,35.8,25;    16.7,34.9,20;    18.2,36.7,20;    18.1,38.1,25;    17.8,37.6,25]; # operationally from U.S. sources (no JTWC btk values)
btk2_shem_2022_37 = [15.0,35.81,22.4;16.42,34.91,22.4;18.33,36.92,22.4;18.19,37.81,28.0;17.91,38.06,28.0]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2022_37];
myvect = [myvect;my_shem_2022_37];
btkvect = [btkvect;btk_shem_2022_37];
btk2vect = [btk2vect;btk2_shem_2022_37];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 38 ... GOMBE around 2022-03-11-21Z

rsmc_shem_2022_38 = [15.6,36.9,22.4;  17.1,37.1,22.4; 19.0,38.4,28.0; 19.7,39.4,39.2;  20.7,39.1,44.8];
my_shem_2022_38 = [15.7,36.6,25;      16.9,36.2,25;   18.8,37.1,25;   19.3,37.7,35;    19.6,38.6,35];
btk_shem_2022_38 = [15.6,35.1,25;     17.1,35.4,20;   18.3,37.4,20;   18.4,37.9,25;    17.9,37.4,25]; # operationally from U.S. sources (no JTWC btk values)
btk2_shem_2022_38 = [15.25,35.26,22.4;16.7,35.27,16.8;18.53,37.0,22.4;18.11,37.98,22.4;17.78,37.8,28.0]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2022_38];
myvect = [myvect;my_shem_2022_38];
btkvect = [btkvect;btk_shem_2022_38];
btk2vect = [btk2vect;btk2_shem_2022_38];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 39 ... 27U/20S around 2022-03-13-21Z

rsmc_shem_2022_39 = [15.5,99.8,44.8;15.9,95.8,50.4;16.7,91.3,39.2;17.3,87.5,28.0];
my_shem_2022_39 = [15.5,99.5,45;    16.1,95.5,50;  16.7,91.6,35;  17.3,88.4,25];
btk_shem_2022_39 = [16.7,98.8,65;   17.6,95.3,55;  19.6,92.6,40;  23.7,93.9,30]; # JTWC best track
btk2_shem_2022_39 = [16.6,98.7,56.0;17.5,95.5,56.0;20.0,92.5,44.8;23.7,93.8,33.6]; # BoM spreadsheet
rsmcvect = [rsmcvect;rsmc_shem_2022_39];
myvect = [myvect;my_shem_2022_39];
btkvect = [btkvect;btk_shem_2022_39];
btk2vect = [btk2vect;btk2_shem_2022_39];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;4;4;4;4];

# Nio 02 ... BOB 02 / 91B around 2022-03-20-09Z

rsmc_nio_2022_02 = [13.1,93.6,31.8;16.2,93.9,37.1];
my_nio_2022_02 = [13.0,93.7,35;    15.7,94.1,40];
btk_nio_2022_02 = [12.7,94.6,30;   16.1,94.7,25]; # operationally from U.S. sources (no JTWC btk values)
btk2_nio_2022_02 = [12.6,93.9,31.8;15.8,94.2,31.8]; # preliminary report of IMD
rsmcvect = [rsmcvect;rsmc_nio_2022_02];
myvect = [myvect;my_nio_2022_02];
btkvect = [btkvect;btk_nio_2022_02];
btk2vect = [btk2vect;btk2_nio_2022_02];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Shem 40 ... 28U / 93S around 2022-03-20-09Z

rsmc_shem_2022_40 = [14.4,111.4,44.8;15.5,109.3,50.4; 16.6,107.8,39.2;18.7,107.2,39.2;22.7,107.9,39.2];
my_shem_2022_40 = [14.5,111.2,45;    15.7,109.0,55;   16.8,107.4,45;  18.7,107.5,40;  22.9,107.7,40];
btk_shem_2022_40 = [15.3,111.1,60;   17.0,109.2,90;   19.1,108.5,65;  21.1,107.3,30;  26.5,107.2,40]; # JTWC best track
btk2_shem_2022_40 = [15.3,111.1,56.0;17.1,109.1,100.8;19.0,108.4,72.8;21.0,107.3,33.6;27.5,107.8,33.6]; # BoM spreadsheet
rsmcvect = [rsmcvect;rsmc_shem_2022_40];
myvect = [myvect;my_shem_2022_40];
btkvect = [btkvect;btk_shem_2022_40];
btk2vect = [btk2vect;btk2_shem_2022_40];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Nio 03 ... BOB 02 / 91B around 2022-03-20-21Z

rsmc_nio_2022_03 = [14.4,93.8,37.1;17.6,94.0,31.8];
my_nio_2022_03 = [14.2,94.1,40;    17.3,94.3,35];
btk_nio_2022_03 = [14.5,94.7,30;   17.8,94.2,25]; # operationally from U.S. sources (no JTWC btk values)
btk2_nio_2022_03 = [14.0,94.0,31.8;17.6,94.5,26.5]; # preliminary report of IMD
rsmcvect = [rsmcvect;rsmc_nio_2022_03];
myvect = [myvect;my_nio_2022_03];
btkvect = [btkvect;btk_nio_2022_03];
btk2vect = [btk2vect;btk2_nio_2022_03];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Shem 41 ... CHARLOTTE around 2022-03-22-03Z

rsmc_shem_2022_41 = [17.4,108.1,72.8;18.6,107.0,44.8;22.0,107.0,39.2;27.0,109.9,44.8];
my_shem_2022_41 = [17.3,107.9,80;    19.0,106.8,50;  22.2,107.6,40;  27.6,111.8,45];
btk_shem_2022_41 = [18.3,108.9,75;   19.9,107.4,35;  24.8,106.9,30;  29.4,108.6,35]; # JTWC best track
btk2_shem_2022_41 = [18.5,108.8,78.4;19.8,107.3,33.6;25.0,107.0,33.6;29.4,108.6,33.6]; # BoM spreadsheet, except day 4
rsmcvect = [rsmcvect;rsmc_shem_2022_41];
myvect = [myvect;my_shem_2022_41];
btkvect = [btkvect;btk_shem_2022_41];
btk2vect = [btk2vect;btk2_shem_2022_41];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;4;4;4;4];

# Shem 42 ... CHARLOTTE around 2022-03-22-09Z

rsmc_shem_2022_42 = [18.0,107.7,72.8;19.4,106.5,44.8;23.8,107.4,39.2;28.1,111.1,44.8];
my_shem_2022_42 = [17.8,107.3,65;    19.7,106.5,45;  24.0,108.0,40;  28.8,112.3,40];
btk_shem_2022_42 = [19.1,108.5,65;   21.1,107.3,30;  26.5,107.2,40;  28.4,108.9,35]; # JTWC best track
btk2_shem_2022_42 = [19.0,108.4,72.8;21.0,107.3,33.6;27.5,107.8,33.6;28.4,108.9,33.6]; # BoM spreadsheet, except day 4
rsmcvect = [rsmcvect;rsmc_shem_2022_42];
myvect = [myvect;my_shem_2022_42];
btkvect = [btkvect;btk_shem_2022_42];
btk2vect = [btk2vect;btk2_shem_2022_42];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;4;4;4;4];

# Shem 43 ... HALIMA around 2022-03-24-03Z

rsmc_shem_2022_43 = [13.8,74.8,78.4;   16.6,74.9,100.8;  21.1,76.0,78.4;  23.3,78.3,56.0;  23.8,80.4,44.8];
my_shem_2022_43 = [14.0,74.8,85;       16.9,75.0,100;    21.3,76.8,80;    23.5,79.4,60;    24.3,82.5,40];
btk_shem_2022_43 = [13.4,73.7,95;      15.5,73.5,90;     19.5,75.8,55;    21.9,79.8,45;    22.0,82.3,50]; # JTWC best track
btk2_shem_2022_43 = [13.37,73.61,100.8;15.27,73.58,106.4;19.51,75.89,61.6;21.75,79.53,56.0;21.93,82.37,50.4]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2022_43];
myvect = [myvect;my_shem_2022_43];
btkvect = [btkvect;btk_shem_2022_43];
btk2vect = [btk2vect;btk2_shem_2022_43];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 44 ... HALIMA around 2022-03-25-15Z

rsmc_shem_2022_44 = [17.7,73.9,128.8; 20.8,75.9,84.0; 21.7,78.7,56.0;  21.1,80.9,56.0; 20.5,82.1,56.0];
my_shem_2022_44 = [17.5,73.9,120;     20.4,76.4,85;   21.8,79.3,60;    21.3,81.3,55;   21.0,82.7,55];
btk_shem_2022_44 = [17.3,74.4,65;     21.0,77.9,45;   22.3,81.3,45;    21.4,82.5,40;   19.5,82.5,45]; # JTWC best track
btk2_shem_2022_44 = [17.28,74.63,67.2;20.81,77.9,56.0;22.34,81.23,56.0;21.3,82.53,50.4;19.52,82.42,44.8]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2022_44];
myvect = [myvect;my_shem_2022_44];
btkvect = [btkvect;btk_shem_2022_44];
btk2vect = [btk2vect;btk2_shem_2022_44];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 45 ... HALIMA around 2022-03-26-03Z

rsmc_shem_2022_45 = [19.4,75.4,100.8; 21.2,77.9,78.4;  21.1,80.1,61.6;  20.4,81.8,61.6;  19.3,82.9,72.8];
my_shem_2022_45 = [19.1,75.2,100;     20.7,78.2,75;    20.5,80.7,60;    19.6,82.1,55;    19.4,83.4,65];
btk_shem_2022_45 = [19.5,75.8,55;     21.9,79.8,45;    22.0,82.3,50;    20.2,82.2,45;    19.5,83.3,35]; # JTWC best track
btk2_shem_2022_45 = [19.51,75.89,61.6;21.75,79.53,56.0;21.93,82.37,50.4;20.37,82.01,50.4;19.44,83.25,44.8]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2022_45];
myvect = [myvect;my_shem_2022_45];
btkvect = [btkvect;btk_shem_2022_45];
btk2vect = [btk2vect;btk2_shem_2022_45];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 46 ... HALIMA around 2022-03-27-03Z

rsmc_shem_2022_46 = [21.6,80.2,56.0;  21.5,82.7,44.8;  20.1,82.6,44.8;  19.0,81.4,39.2;  18.7,80.7,33.6];
my_shem_2022_46 = [21.7,80.1,55;      21.3,82.8,45;    20.1,82.7,40;    19.3,81.9,35;    19.4,81.8,30];
btk_shem_2022_46 = [21.9,79.8,45;     22.0,82.3,50;    20.2,82.2,45;    19.5,83.3,35;    19.6,84.5,30]; # JTWC best track
btk2_shem_2022_46 = [21.75,79.53,56.0;21.93,82.37,50.4;20.37,82.01,50.4;19.44,83.25,44.8;19.54,84.23,39.2]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2022_46];
myvect = [myvect;my_shem_2022_46];
btkvect = [btkvect;btk_shem_2022_46];
btk2vect = [btk2vect;btk2_shem_2022_46];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 47 ... HALIMA around 2022-03-28-15Z

rsmc_shem_2022_47 = [21.4,82.6,56.0; 20.2,82.0,61.6;  19.5,83.0,61.6;  18.8,83.7,39.2; 17.9,81.5,28.0];
my_shem_2022_47 = [21.3,82.6,45;     20.0,82.2,45;    19.2,83.2,45;    18.5,83.7,35;   18.2,81.9,25];
btk_shem_2022_47 = [21.4,82.5,40;    19.5,82.5,45;    19.7,84.3,35;    19.4,84.6,25;   18.8,84.5,25]; # JTWC best track
btk2_shem_2022_47 = [21.3,82.53,50.4;19.52,82.42,44.8;19.55,84.01,44.8;19.25,84.5,33.6;18.83,84.33,33.6]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2022_47];
myvect = [myvect;my_shem_2022_47];
btkvect = [btkvect;btk_shem_2022_47];
btk2vect = [btk2vect;btk2_shem_2022_47];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 48 ... HALIMA around 2022-03-29-15Z

rsmc_shem_2022_48 = [20.0,81.8,56.0;  19.3,82.7,39.2;  18.9,82.3,33.6; 18.5,79.6,28.0;  18.5,75.2,22.4];
my_shem_2022_48 = [20.1,82.0,50;      19.3,83.1,35;    18.6,83.0,30;   18.4,81.0,25;    18.7,76.1,25];
btk_shem_2022_48 = [19.5,82.5,45;     19.7,84.3,35;    19.4,84.6,25;   18.8,84.5,25;    18.7,82.5,20]; # JTWC best track
btk2_shem_2022_48 = [19.52,82.42,44.8;19.55,84.01,44.8;19.25,84.5,33.6;18.83,84.33,33.6;19.0,82.1,33.6]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2022_48];
myvect = [myvect;my_shem_2022_48];
btkvect = [btkvect;btk_shem_2022_48];
btk2vect = [btk2vect;btk2_shem_2022_48];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 49 ... HALIMA around 2022-03-30-15Z

rsmc_shem_2022_49 = [19.0,83.0,44.8;  18.5,82.9,33.6; 18.3,81.2,33.6;  17.8,77.7,28.0;17.7,73.2,0];
my_shem_2022_49 = [19.0,83.2,40;      18.4,83.1,30;   18.5,81.5,30;    18.2,78.1,25;  18.2,73.7,0];
btk_shem_2022_49 = [19.7,84.3,35;     19.4,84.6,25;   18.8,84.5,25;    18.7,82.5,20;  18.73,79.83,0]; # JTWC best track (except day 5 MFR)
btk2_shem_2022_49 = [19.55,84.01,44.8;19.25,84.5,33.6;18.83,84.33,33.6;19.0,82.1,33.6;18.73,79.83,0]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2022_49];
myvect = [myvect;my_shem_2022_49];
btkvect = [btkvect;btk_shem_2022_49];
btk2vect = [btk2vect;btk2_shem_2022_49];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 50 ... HALIMA around 2022-03-31-15Z

rsmc_shem_2022_50 = [19.5,84.1,33.6; 19.6,82.6,33.6;  19.0,78.7,28.0];
my_shem_2022_50 = [19.2,84.1,35;     19.1,82.6,30;    18.9,79.0,30];
btk_shem_2022_50 = [19.4,84.6,25;    18.8,84.5,25;    18.7,82.5,20]; # JTWC best track
btk2_shem_2022_50 = [19.25,84.5,33.6;18.83,84.33,33.6;19.0,82.1,33.6]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2022_50];
myvect = [myvect;my_shem_2022_50];
btkvect = [btkvect;btk_shem_2022_50];
btk2vect = [btk2vect;btk2_shem_2022_50];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 51 ... 10F / 23P around 2022-04-04-21Z

rsmc_shem_2022_51 = [19.9,162.7,56.0;22.0,163.2,61.6];
my_shem_2022_51 = [19.7,161.8,60;    22.0,162.1,55];
btk_shem_2022_51 = [18.8,161.7,50;   21.7,164.1,55]; # JTWC best track
btk2_shem_2022_51 = btk_shem_2022_51; # placeholder
rsmcvect = [rsmcvect;rsmc_shem_2022_51];
myvect = [myvect;my_shem_2022_51];
btkvect = [btkvect;btk_shem_2022_51];
btk2vect = [btk2vect;btk2_shem_2022_51];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;5;5];

# Shem 52 ... FILI around 2022-04-05-03Z

rsmc_shem_2022_52 = [19.3,161.9,56.0;21.7,162.8,61.6;24.3,164.3,0];
my_shem_2022_52 = [19.3,161.3,55;    21.7,161.9,55;  24.2,163.0,0];
btk_shem_2022_52 = [19.3,162.2,60;   22.4,164.3,50;  25.3,165.8,0]; # JTWC best track
btk2_shem_2022_52 = btk_shem_2022_52; # placeholder
rsmcvect = [rsmcvect;rsmc_shem_2022_52];
myvect = [myvect;my_shem_2022_52];
btkvect = [btkvect;btk_shem_2022_52];
btk2vect = [btk2vect;btk2_shem_2022_52];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;5;5;5];

# Shem 53 ... FILI around 2022-04-05-09Z

rsmc_shem_2022_53 = [19.9,161.5,56.0;22.3,162.1,50.4;24.8,163.1,0];
my_shem_2022_53 = [19.8,161.6,55;    22.4,162.7,50;  24.8,164.9,0];
btk_shem_2022_53 = [19.8,162.8,55;   23.0,164.5,45;  25.8,166.4,0]; # JTWC best track
btk2_shem_2022_53 = btk_shem_2022_53; # placeholder
rsmcvect = [rsmcvect;rsmc_shem_2022_53];
myvect = [myvect;my_shem_2022_53];
btkvect = [btkvect;btk_shem_2022_53];
btk2vect = [btk2vect;btk2_shem_2022_53];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;5;5;5];

# Shem 54 ... FILI around 2022-04-05-21Z

rsmc_shem_2022_54 = [21.2,162.6,72.8;23.6,164.3,61.6;24.7,166.7,0];
my_shem_2022_54 = [21.3,163.1,65;    23.6,164.7,55;  24.6,167.3,0];
btk_shem_2022_54 = [21.7,164.1,55;   24.7,165.2,40;  25.9,167.8,0]; # JTWC best track
btk2_shem_2022_54 = btk_shem_2022_54; # placeholder
rsmcvect = [rsmcvect;rsmc_shem_2022_54];
myvect = [myvect;my_shem_2022_54];
btkvect = [btkvect;btk_shem_2022_54];
btk2vect = [btk2vect;btk2_shem_2022_54];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;5;5;5];

# Shem 55 ... FILI around 2022-04-06-03Z

rsmc_shem_2022_55 = [22.0,163.6,67.2;24.1,165.2,56.0;25.2,167.5,0];
my_shem_2022_55 = [22.1,163.9,60;    24.2,165.9,45;  24.8,168.4,0];
btk_shem_2022_55 = [22.4,164.3,50;   25.3,165.8,35;  25.8,168.3,0]; # JTWC best track
btk2_shem_2022_55 = btk_shem_2022_55; # placeholder
rsmcvect = [rsmcvect;rsmc_shem_2022_55];
myvect = [myvect;my_shem_2022_55];
btkvect = [btkvect;btk_shem_2022_55];
btk2vect = [btk2vect;btk2_shem_2022_55];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;5;5;5];

# Wpac 01 ... TD / 02W around 2022-04-07-03Z

rsmc_wpac_2022_01 = [4.8,146.0,39.2;6.3,144.7,44.8;10.2,141.0,56.0;13.6,137.8,67.2;15.6,135.9,78.4];
my_wpac_2022_01 = [5.1,146.1,35;    6.7,145.1,45;  10.3,141.4,65;  13.2,136.0,75;  15.7,136.8,75];
btk_wpac_2022_01 = [5.1,146.3,40;   7.1,144.4,40;  10.5,140.1,50;  12.5,136.5,55;  15.4,135.0,60]; # JTWC best track
btk2_wpac_2022_01 = [5.1,145.9,39.2;7.1,144.6,44.8;10.6,139.6,50.4;12.2,136.4,56.0;15.4,135.0,72.8]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2022_01];
myvect = [myvect;my_wpac_2022_01];
btkvect = [btkvect;btk_wpac_2022_01];
btk2vect = [btk2vect;btk2_wpac_2022_01];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 02 ... TD / 02W around 2022-04-07-15Z

rsmc_wpac_2022_02 = [5.8,145.3,39.2;8.0,143.0,44.8;11.3,139.5,56.0;14.5,136.9,67.2;16.8,135.9,78.4];
my_wpac_2022_02 = [5.5,145.4,40;    7.7,143.3,55;  11.2,139.2,65;  14.3,136.9,75;  17.1,135.8,80];
btk_wpac_2022_02 = [6.1,145.5,40;   8.7,142.6,45;  11.5,137.9,55;  13.7,135.8,55;  16.1,135.3,65]; # JTWC best track
btk2_wpac_2022_02 = [6.4,145.2,39.2;8.2,142.4,44.8;11.5,138.0,56.0;14.1,135.9,61.6;16.1,135.4,89.6]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2022_02];
myvect = [myvect;my_wpac_2022_02];
btkvect = [btkvect;btk_wpac_2022_02];
btk2vect = [btk2vect;btk2_wpac_2022_02];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 03 ... MALAKAS around 2022-04-08-15Z

rsmc_wpac_2022_03 = [8.6,142.5,56.0;12.1,138.1,72.8;14.9,135.2,89.6;16.9,135.1,95.2;19.5,136.3,95.2];
my_wpac_2022_03 = [8.7,142.9,55;    12.1,138.8,75;  15.3,135.9,90;  17.5,135.2,95;  19.8,135.7,85];
btk_wpac_2022_03 = [8.7,142.6,45;   11.5,137.9,55;  13.7,135.8,55;  16.1,135.3,65;  19.0,137.6,95]; # JTWC best track
btk2_wpac_2022_03 = [8.2,142.4,44.8;11.5,138.0,56.0;14.1,135.9,61.6;16.1,135.4,89.6;18.8,137.6,95.2]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2022_03];
myvect = [myvect;my_wpac_2022_03];
btkvect = [btkvect;btk_wpac_2022_03];
btk2vect = [btk2vect;btk2_wpac_2022_03];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 04 ... MALAKAS around 2022-04-09-09Z

rsmc_wpac_2022_04 = [11.7,139.2,56.0;14.2,136.0,78.4;16.5,135.2,95.2;18.8,136.9,95.2;21.5,138.0,89.6];
my_wpac_2022_04 = [11.6,139.4,60;    14.1,136.0,80;  16.5,135.3,95;  18.5,136.9,90;  21.8,138.0,70];
btk_wpac_2022_04 = [11.2,138.8,55;   13.1,136.1,55;  15.8,135.0,60;  17.9,137.0,90;  21.7,138.5,80]; # JTWC best track
btk2_wpac_2022_04 = [11.1,138.6,50.4;13.1,136.2,56.0;15.8,135.1,78.4;17.8,137.0,95.2;21.7,138.5,100.8]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2022_04];
myvect = [myvect;my_wpac_2022_04];
btkvect = [btkvect;btk_wpac_2022_04];
btk2vect = [btk2vect;btk2_wpac_2022_04];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 05 ... MALAKAS around 2022-04-09-15Z

rsmc_wpac_2022_05 = [12.2,138.3,61.6;14.6,135.3,84.0;16.8,135.2,95.2;19.2,136.6,95.2;22.3,138.3,84.0];
my_wpac_2022_05 = [12.0,138.4,65;    14.5,135.5,85;  16.8,135.3,95;  19.1,137.2,90;  22.7,138.6,75];
btk_wpac_2022_05 = [11.5,137.9,55;   13.7,135.8,55;  16.1,135.3,65;  19.0,137.6,95;  22.6,139.2,75]; # JTWC best track
btk2_wpac_2022_05 = [11.5,138.0,56.0;14.1,135.9,61.6;16.1,135.4,89.6;18.8,137.6,95.2;22.6,139.0,95.2]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2022_05];
myvect = [myvect;my_wpac_2022_05];
btkvect = [btkvect;btk_wpac_2022_05];
btk2vect = [btk2vect;btk2_wpac_2022_05];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 06 ... MALAKAS around 2022-04-09-21Z

rsmc_wpac_2022_06 = [12.6,137.3,67.2;14.9,135.1,84.0;17.2,135.8,95.2;19.6,137.0,89.6; 22.7,138.8,84.0];
my_wpac_2022_06 = [12.5,137.5,70;    15.0,135.4,90;  17.8,135.7,100; 20.3,136.9,90;   23.5,139.7,75];
btk_wpac_2022_06 = [12.0,137.0,55;   14.6,135.4,50;  16.5,135.8,80;  19.7,137.5,105;  24.5,139.6,70]; # JTWC best track
btk2_wpac_2022_06 = [11.8,137.1,56.0;14.8,135.6,67.2;16.7,135.9,89.6;19.8,137.5,100.8;24.3,140.0,89.6]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2022_06];
myvect = [myvect;my_wpac_2022_06];
btkvect = [btkvect;btk_wpac_2022_06];
btk2vect = [btk2vect;btk2_wpac_2022_06];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 07 ... MALAKAS around 2022-04-10-15Z

rsmc_wpac_2022_07 = [14.2,135.1,84.0;16.2,134.9,95.2;18.7,136.1,89.6;22.2,137.3,84.0;27.1,139.9,78.4];
my_wpac_2022_07 = [14.2,134.6,80;    16.3,134.4,95;  18.8,135.9,95;  21.9,137.6,80;  26.7,140.7,60];
btk_wpac_2022_07 = [13.7,135.8,55;   16.1,135.3,65;  19.0,137.6,95;  22.6,139.2,75;  30.2,143.9,45]; # JTWC best track
btk2_wpac_2022_07 = [14.1,135.9,61.6;16.1,135.4,89.6;18.8,137.6,95.2;22.6,139.0,95.2;30.0,143.7,44.8]; # JMA best track (except day 5 wind)
rsmcvect = [rsmcvect;rsmc_wpac_2022_07];
myvect = [myvect;my_wpac_2022_07];
btkvect = [btkvect;btk_wpac_2022_07];
btk2vect = [btk2vect;btk2_wpac_2022_07];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 08 ... MALAKAS around 2022-04-10-21Z

rsmc_wpac_2022_08 = [14.4,135.0,84.0;16.7,135.3,95.2;19.3,136.5,89.6; 22.9,138.0,84.0;27.9,141.6,78.4];
my_wpac_2022_08 = [14.4,134.9,80;    16.5,135.1,95;  19.2,136.4,95;   22.6,138.6,80;  27.8,142.5,65];
btk_wpac_2022_08 = [14.6,135.4,50;   16.5,135.8,80;  19.7,137.5,105;  24.5,139.6,70;  31.9,146.0,45]; # JTWC best track (except day 5)
btk2_wpac_2022_08 = [14.8,135.6,67.2;16.7,135.9,89.6;19.8,137.5,100.8;24.3,140.0,89.6;32.0,146.0,44.8]; # JMA best track (except day 5 wind)
rsmcvect = [rsmcvect;rsmc_wpac_2022_08];
myvect = [myvect;my_wpac_2022_08];
btkvect = [btkvect;btk_wpac_2022_08];
btk2vect = [btk2vect;btk2_wpac_2022_08];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 09 ... MALAKAS around 2022-04-11-15Z

rsmc_wpac_2022_09 = [16.4,135.3,84.0;18.9,136.8,95.2;22.5,138.5,84.0;28.1,142.4,72.8;35.0,152.1,0];
my_wpac_2022_09 = [16.4,135.2,90;    18.9,136.6,100; 22.8,139.0,85;  28.0,143.7,65;  34.9,153.6,0];
btk_wpac_2022_09 = [16.1,135.3,65;   19.0,137.6,95;  22.6,139.2,75;  30.2,143.9,45;  41.5,155.2,0]; # JTWC best track (except day 5 JMA)
btk2_wpac_2022_09 = [16.1,135.4,89.6;18.8,137.6,95.2;22.6,139.0,95.2;30.0,143.7,44.8;41.5,155.2,0]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2022_09];
myvect = [myvect;my_wpac_2022_09];
btkvect = [btkvect;btk_wpac_2022_09];
btk2vect = [btk2vect;btk2_wpac_2022_09];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 10 ... MALAKAS around 2022-04-11-21Z

rsmc_wpac_2022_10 = [17.0,135.8,84.0;19.7,137.3,95.2; 23.5,139.3,84.0;29.0,143.9,72.8;38.5,155.1,0];
my_wpac_2022_10 = [17.0,135.9,90;    19.7,137.6,95;   23.4,140.1,80;  29.1,145.5,65;  36.6,157.1,0];
btk_wpac_2022_10 = [16.5,135.8,80;   19.7,137.5,105;  24.5,139.6,70;  31.9,146.0,45;  44.9,158.7,0]; # JTWC btk (days 1-3), oper.U.S. (day 4), JMA (day 5)
btk2_wpac_2022_10 = [16.7,135.9,89.6;19.8,137.5,100.8;24.3,140.0,89.6;32.0,146.0,44.8;44.9,158.7,0]; # JMA best track (except day 4 wind)
rsmcvect = [rsmcvect;rsmc_wpac_2022_10];
myvect = [myvect;my_wpac_2022_10];
btkvect = [btkvect;btk_wpac_2022_10];
btk2vect = [btk2vect;btk2_wpac_2022_10];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 11 ... MALAKAS around 2022-04-12-15Z

rsmc_wpac_2022_11 = [19.3,137.1,100.8;23.3,139.1,84.0;29.1,144.2,72.8;37.4,154.4,0];
my_wpac_2022_11 = [18.9,136.9,105;    23.0,139.1,80;  28.9,145.5,65;  38.5,156.2,0];
btk_wpac_2022_11 = [19.0,137.6,95;    22.6,139.2,75;  30.2,143.9,45;  41.5,155.2,0]; # JTWC best track (except day 4 JMA)
btk2_wpac_2022_11 = [18.8,137.6,95.2; 22.6,139.0,95.2;30.0,143.7,44.8;41.5,155.2,0]; # JMA best track (except day 3 wind)
rsmcvect = [rsmcvect;rsmc_wpac_2022_11];
myvect = [myvect;my_wpac_2022_11];
btkvect = [btkvect;btk_wpac_2022_11];
btk2vect = [btk2vect;btk2_wpac_2022_11];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Shem 56 ... JASMINE around 2022-04-24-21Z

rsmc_shem_2022_56 = [20.9,40.2,67.2;  21.1,41.7,44.8;  19.5,43.4,33.6;  16.4,43.9,28.0;  15.0,43.8,22.4];
my_shem_2022_56 = [21.1,40.3,55;      21.3,42.1,40;    19.2,43.4,30;    16.7,43.6,30;    15.5,43.3,20];
btk_shem_2022_56 = [21.9,41.1,65;     23.9,44.8,35;    23.4,51.2,35;    21.2,53.2,25;    21.2,52.5,25]; # JTWC best track
btk2_shem_2022_56 = [22.01,41.12,67.2;23.87,44.74,39.2;23.57,51.03,39.2;20.91,53.33,33.6;21.0,52.5,28.0]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2022_56];
myvect = [myvect;my_shem_2022_56];
btkvect = [btkvect;btk_shem_2022_56];
btk2vect = [btk2vect;btk2_shem_2022_56];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Nio 04 ... BOB 03 / 02B around 2022-05-07-15Z

rsmc_nio_2022_04 = [13.0,88.6,53.0;15.4,86.4,63.6;17.2,85.4,53.0;18.5,85.5,42.4;19.3,86.0,31.8];
my_nio_2022_04 = [12.8,87.4,65;    14.8,85.3,65;  16.1,84.8,55;  17.7,85.5,45;  18.9,86.9,35];
btk_nio_2022_04 = [12.6,87.7,60;   14.3,84.8,55;  15.0,82.4,55;  15.8,81.1,35;  15.0,80.2,20]; # JTWC best track
btk2_nio_2022_04 = [12.6,87.7,53.0;14.3,84.8,58.3;15.0,82.4,53.0;15.8,81.1,31.8;15.0,80.2,21.2]; # days 1-4 wind from IMD prelim report, rest is JTWC btk
rsmcvect = [rsmcvect;rsmc_nio_2022_04];
myvect = [myvect;my_nio_2022_04];
btkvect = [btkvect;btk_nio_2022_04];
btk2vect = [btk2vect;btk2_nio_2022_04];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Nio 05 ... BOB 03 / 02B around 2022-05-07-21Z

rsmc_nio_2022_05 = [13.7,88.0,47.7;15.9,86.1,63.6;17.6,85.3,53.0;18.7,85.6,42.4;19.5,86.4,31.8];
my_nio_2022_05 = [13.3,87.5,60;    15.1,85.5,65;  17.0,85.1,55;  18.4,85.8,45;  19.7,87.5,30];
btk_nio_2022_05 = [13.1,87.2,60;   14.5,84.2,60;  15.2,81.8,45;  15.6,80.6,25;  14.7,80.3,20]; # JTWC best track
btk2_nio_2022_05 = [13.1,87.2,58.3;14.5,84.2,58.3;15.2,81.8,53.0;15.6,80.6,31.8;14.7,80.3,21.2]; # days 1+3+4 wind from IMD prelim report, rest JTWC btk
rsmcvect = [rsmcvect;rsmc_nio_2022_05];
myvect = [myvect;my_nio_2022_05];
btkvect = [btkvect;btk_nio_2022_05];
btk2vect = [btk2vect;btk2_nio_2022_05];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Shem 57 ... KARIM around 2022-05-07-21Z

rsmc_shem_2022_57 = [11.0,91.0,44.8;13.9,92.0,50.4;17.9,94.0,44.8;19.2,97.1,39.2];
my_shem_2022_57 = [10.9,91.0,50;    13.6,92.2,55;  17.6,93.8,45;  19.6,96.8,40];
btk_shem_2022_57 = [11.0,90.6,60;   13.9,91.1,60;  18.7,93.2,45;  18.8,97.9,35]; # JTWC best track
btk2_shem_2022_57 = [11.0,90.5,56.0;14.1,91.0,61.6;18.7,93.4,61.6;18.8,97.9,33.6]; # BoM spreadsheet (except day 4)
rsmcvect = [rsmcvect;rsmc_shem_2022_57];
myvect = [myvect;my_shem_2022_57];
btkvect = [btkvect;btk_shem_2022_57];
btk2vect = [btk2vect;btk2_shem_2022_57];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;4;4;4;4];

# Nio 06 ... BOB 03 / 02B around 2022-05-08-03Z

rsmc_nio_2022_06 = [14.1,87.3,63.6;16.3,85.8,58.3;18.0,85.3,47.7;18.9,85.9,37.1];
my_nio_2022_06 = [13.6,86.3,70;    15.3,85.5,60;  17.4,85.5,45;  18.8,86.2,45];
btk_nio_2022_06 = [13.7,86.2,60;   14.7,83.6,65;  15.5,81.6,40;  15.4,80.3,25]; # JTWC best track
btk2_nio_2022_06 = [13.7,86.2,58.3;14.7,83.6,63.6;15.5,81.6,26.5;15.4,80.3,26.5]; # days 1+3+4 wind from IMD prelim report, rest JTWC btk
rsmcvect = [rsmcvect;rsmc_nio_2022_06];
myvect = [myvect;my_nio_2022_06];
btkvect = [btkvect;btk_nio_2022_06];
btk2vect = [btk2vect;btk2_nio_2022_06];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Nio 07 ... ASANI around 2022-05-08-15Z

rsmc_nio_2022_07 = [15.4,86.5,63.6;17.2,85.5,53.0;18.4,85.6,42.4;19.3,86.6,31.8];
my_nio_2022_07 = [14.7,85.6,65;    16.1,84.6,50;  17.9,84.9,40;  19.7,86.3,35];
btk_nio_2022_07 = [14.3,84.8,55;   15.0,82.4,55;  15.8,81.1,35;  15.0,80.2,20]; # JTWC best track
btk2_nio_2022_07 = [14.3,84.8,58.3;15.0,82.4,53.0;15.8,81.1,31.8;15.0,80.2,21.2]; # days 1-3 wind from IMD prelim report, rest JTWC btk
rsmcvect = [rsmcvect;rsmc_nio_2022_07];
myvect = [myvect;my_nio_2022_07];
btkvect = [btkvect;btk_nio_2022_07];
btk2vect = [btk2vect;btk2_nio_2022_07];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Nio 08 ... ASANI around 2022-05-08-21Z

rsmc_nio_2022_08 = [15.9,86.1,63.6;17.6,85.4,47.7;18.6,85.8,42.4;19.7,87.2,26.5];
my_nio_2022_08 = [15.1,85.2,60;    16.9,84.9,50;  18.8,85.4,45;  20.3,87.1,35];
btk_nio_2022_08 = [14.5,84.2,60;   15.2,81.8,45;  15.6,80.6,25;  14.7,80.3,20]; # JTWC best track
btk2_nio_2022_08 = [14.5,84.2,58.3;15.2,81.8,53.0;15.6,80.6,26.5;14.7,80.3,21.2]; # days 2+3 wind from IMD prelim report, rest JTWC btk
rsmcvect = [rsmcvect;rsmc_nio_2022_08];
myvect = [myvect;my_nio_2022_08];
btkvect = [btkvect;btk_nio_2022_08];
btk2vect = [btk2vect;btk2_nio_2022_08];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Shem 58 ... KARIM around 2022-05-09-21Z

rsmc_shem_2022_58 = [18.0,93.2,50.4;17.7,95.7,39.2];
my_shem_2022_58 = [17.9,93.2,50;    17.3,96.0,35];
btk_shem_2022_58 = [18.7,93.2,45;   18.8,97.9,35]; # JTWC best track
btk2_shem_2022_58 = [18.7,93.4,61.6;18.8,97.9,33.6]; # BoM spreadsheet (except day 2)
rsmcvect = [rsmcvect;rsmc_shem_2022_58];
myvect = [myvect;my_shem_2022_58];
btkvect = [btkvect;btk_shem_2022_58];
btk2vect = [btk2vect;btk2_shem_2022_58];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;4;4];

# Nio 09 ... ASANI around 2022-05-09-21Z

rsmc_nio_2022_09 = [16.5,83.4,42.4;18.0,84.3,37.1];
my_nio_2022_09 = [16.2,83.1,45;    17.5,83.0,35];
btk_nio_2022_09 = [15.2,81.8,45;   15.6,80.6,25]; # JTWC best track
btk2_nio_2022_09 = [15.2,81.8,53.0;15.6,80.6,31.8]; # wind from IMD prelim report, position JTWC btk
rsmcvect = [rsmcvect;rsmc_nio_2022_09];
myvect = [myvect;my_nio_2022_09];
btkvect = [btkvect;btk_nio_2022_09];
btk2vect = [btk2vect;btk2_nio_2022_09];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Nio 10 ... ASANI around 2022-05-10-03Z

rsmc_nio_2022_10 = [16.8,82.9,47.7;18.3,84.7,31.8];
my_nio_2022_10 = [16.0,82.7,50;    17.1,82.7,35];
btk_nio_2022_10 = [15.5,81.6,40;   15.4,80.3,25]; # JTWC best track
btk2_nio_2022_10 = [15.5,81.6,42.4;15.4,80.3,26.5]; # day 2 wind from IMD prelim report, rest JTWC btk
rsmcvect = [rsmcvect;rsmc_nio_2022_10];
myvect = [myvect;my_nio_2022_10];
btkvect = [btkvect;btk_nio_2022_10];
btk2vect = [btk2vect;btk2_nio_2022_10];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Shem 59 ... GINA around 2022-05-18-21Z

rsmc_shem_2022_59 = [16.4,167.2,50.4;17.2,165.5,44.8;18.0,163.7,0];
my_shem_2022_59 = [16.5,167.3,45;    17.7,165.7,40;  19.0,165.0,0];
btk_shem_2022_59 = [17.6,168.1,35;   19.7,168.7,35;  20.5,171.1,0]; # JTWC best track
btk2_shem_2022_59 = btk_shem_2022_59; #placeholder
rsmcvect = [rsmcvect;rsmc_shem_2022_59];
myvect = [myvect;my_shem_2022_59];
btkvect = [btkvect;btk_shem_2022_59];
btk2vect = [btk2vect;btk2_shem_2022_59];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;5;5;5];

# Shem 60 ... GINA around 2022-05-19-03Z

rsmc_shem_2022_60 = [17.5,167.5,50.4;18.6,166.6,44.8;19.8,166.4,0];
my_shem_2022_60 = [17.3,167.3,40;    18.3,166.1,35;  20.1,166.6,0];
btk_shem_2022_60 = [18.3,167.8,35;   20.1,169.4,35;  20.6,171.5,0]; # JTWC best track
btk2_shem_2022_60 = btk_shem_2022_60; #placeholder
rsmcvect = [rsmcvect;rsmc_shem_2022_60];
myvect = [myvect;my_shem_2022_60];
btkvect = [btkvect;btk_shem_2022_60];
btk2vect = [btk2vect;btk2_shem_2022_60];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;5;5;5];

# Shem 61 ... GINA around 2022-05-19-09Z

rsmc_shem_2022_61 = [17.6,167.1,39.2;18.6,166.4,33.6;20.0,166.2,0];
my_shem_2022_61 = [17.5,167.1,35;    18.9,166.5,30;  20.4,166.8,0];
btk_shem_2022_61 = [18.7,167.6,35;   20.4,170.0,35;  20.9,171.5,0]; # JTWC best track
btk2_shem_2022_61 = btk_shem_2022_61; #placeholder
rsmcvect = [rsmcvect;rsmc_shem_2022_61];
myvect = [myvect;my_shem_2022_61];
btkvect = [btkvect;btk_shem_2022_61];
btk2vect = [btk2vect;btk2_shem_2022_61];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;5;5;5];

# Shem 62 ... GINA around 2022-05-19-21Z

rsmc_shem_2022_62 = [18.9,166.6,39.2;20.0,166.5,33.6;23.2,168.2,0];
my_shem_2022_62 = [18.7,166.9,35;    20.0,167.1,30;  22.9,169.0,0];
btk_shem_2022_62 = [19.7,168.7,35;   20.5,171.1,35;  22.1,171.5,0]; # JTWC best track
btk2_shem_2022_62 = btk_shem_2022_62; #placeholder
rsmcvect = [rsmcvect;rsmc_shem_2022_62];
myvect = [myvect;my_shem_2022_62];
btkvect = [btkvect;btk_shem_2022_62];
btk2vect = [btk2vect;btk2_shem_2022_62];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;5;5;5];

# Wpac 12 ... TD / 10W around 2022-08-21-21Z

rsmc_wpac_2022_12 = [17.2,124.0,39.2;19.1,120.9,44.8;21.3,117.0,50.4;23.6,111.9,39.2];
my_wpac_2022_12 = [17.4,123.8,40;    19.1,120.4,45;  21.4,116.7,50;  23.2,111.7,35];
btk_wpac_2022_12 = [16.3,123.2,50;   19.0,118.8,55;  20.8,113.0,50;  21.7,106.5,25]; # JTWC best track
btk2_wpac_2022_12 = [16.1,123.4,50.4;19.0,118.8,61.6;20.7,113.3,61.6;21.4,106.4,39.2]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2022_12];
myvect = [myvect;my_wpac_2022_12];
btkvect = [btkvect;btk_wpac_2022_12];
btk2vect = [btk2vect;btk2_wpac_2022_12];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Wpac 13 ... MA-ON around 2022-08-22-21Z

rsmc_wpac_2022_13 = [19.2,119.7,56.0;21.2,115.2,61.6;23.4,109.2,39.2];
my_wpac_2022_13 = [19.0,119.7,55;    20.8,115.0,65;  23.0,109.5,35];
btk_wpac_2022_13 = [19.0,118.8,55;   20.8,113.0,50;  21.7,106.5,25]; # JTWC best track
btk2_wpac_2022_13 = [19.0,118.8,61.6;20.7,113.3,61.6;21.4,106.4,39.2]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2022_13];
myvect = [myvect;my_wpac_2022_13];
btkvect = [btkvect;btk_wpac_2022_13];
btk2vect = [btk2vect;btk2_wpac_2022_13];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Wpac 14 ... MA-ON around 2022-08-23-21Z

rsmc_wpac_2022_14 = [20.8,114.0,67.2;22.3,107.6,50.4];
my_wpac_2022_14 = [20.9,113.8,65;    22.7,107.5,45];
btk_wpac_2022_14 = [20.8,113.0,50;   21.7,106.5,25]; # JTWC best track
btk2_wpac_2022_14 = [20.7,113.3,61.6;21.4,106.4,39.2]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2022_14];
myvect = [myvect;my_wpac_2022_14];
btkvect = [btkvect;btk_wpac_2022_14];
btk2vect = [btk2vect;btk2_wpac_2022_14];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Wpac 15 ... HINNAMNOR around 2022-08-30-15Z

rsmc_wpac_2022_15 = [25.0,128.2,123.2;22.3,126.2,123.2;22.5,125.7,117.6;24.6,125.8,117.6;27.6,125.3,112.0];
my_wpac_2022_15 = [24.9,128.1,135;    22.6,125.9,115;  22.8,125.0,95;   24.7,125.0,95;   27.3,124.5,95];
btk_wpac_2022_15 = [24.7,127.7,130;   21.3,125.5,120;  22.1,124.7,75;   24.4,124.8,85;   27.7,124.7,105]; # JTWC best track
btk2_wpac_2022_15 = [24.7,127.7,112.0;21.3,125.5,100.8;22.1,124.6,84.0; 24.3,124.9,89.6; 27.7,124.5,100.8]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2022_15];
myvect = [myvect;my_wpac_2022_15];
btkvect = [btkvect;btk_wpac_2022_15];
btk2vect = [btk2vect;btk2_wpac_2022_15];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 16 ... HINNAMNOR around 2022-08-31-09Z

rsmc_wpac_2022_16 = [22.1,125.6,123.2;22.2,125.0,123.2;23.5,124.8,112.0;26.3,124.0,106.4;29.1,124.3,95.2];
my_wpac_2022_16 = [22.3,125.5,120;    22.2,125.0,100;  23.8,124.1,95;   26.3,123.5,105;  29.1,123.8,105];
btk_wpac_2022_16 = [21.7,125.5,135;   22.0,125.0,80;   23.7,124.8,85;   27.1,124.8,105;  31.0,125.6,100]; # JTWC best track
btk2_wpac_2022_16 = [21.8,125.5,112.0;21.9,125.0,84.0; 23.8,124.7,84.0; 27.0,124.7,100.8;31.0,125.5,89.6]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2022_16];
myvect = [myvect;my_wpac_2022_16];
btkvect = [btkvect;btk_wpac_2022_16];
btk2vect = [btk2vect;btk2_wpac_2022_16];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 17 ... HINNAMNOR around 2022-08-31-15Z

rsmc_wpac_2022_17 = [21.5,125.4,117.6;22.0,124.6,106.4;24.0,124.6,112.0;26.7,123.5,106.4;30.2,124.6,95.2];
my_wpac_2022_17 = [21.7,125.3,105;    22.1,124.5,95;   24.3,124.3,100;  27.3,123.7,110;  30.5,124.9,110];
btk_wpac_2022_17 = [21.3,125.5,120;   22.1,124.7,75;   24.4,124.8,85;   27.7,124.7,105;  32.5,126.6,90]; # JTWC best track
btk2_wpac_2022_17 = [21.3,125.5,112.0;22.1,124.6,84.0; 24.3,124.9,89.6; 27.7,124.5,100.8;32.3,126.6,84.0]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2022_17];
myvect = [myvect;my_wpac_2022_17];
btkvect = [btkvect;btk_wpac_2022_17];
btk2vect = [btk2vect;btk2_wpac_2022_17];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 18 ... HINNAMNOR around 2022-09-01-09Z

rsmc_wpac_2022_18 = [22.1,125.0,123.2;23.7,124.8,106.4;27.0,124.4,112.0;30.7,125.3,100.8;37.4,131.5,89.6];
my_wpac_2022_18 = [21.8,124.9,110;    23.4,124.6,100;  26.3,124.2,110;  29.8,124.9,105;  36.2,131.4,80];
btk_wpac_2022_18 = [22.0,125.0,80;    23.7,124.8,85;   27.1,124.8,105;  31.0,125.6,100;  39.9,133.7,60]; # JTWC best track
btk2_wpac_2022_18 = [21.9,125.0,84.0; 23.8,124.7,84.0; 27.0,124.7,100.8;31.0,125.5,89.6; 39.8,133.6,67.2]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2022_18];
myvect = [myvect;my_wpac_2022_18];
btkvect = [btkvect;btk_wpac_2022_18];
btk2vect = [btk2vect;btk2_wpac_2022_18];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 19 ... TD / 14W around 2022-09-07-15Z

rsmc_wpac_2022_19 = [18.9,132.8,39.2;21.4,130.9,56.0;23.8,128.7,67.2;24.9,127.0,78.4;26.4,126.3,78.4];
my_wpac_2022_19 = [18.7,132.2,75;    20.9,130.1,105; 23.4,128.0,120; 24.4,126.4,115; 26.3,125.4,95];
btk_wpac_2022_19 = [17.4,130.9,40;   19.5,127.7,55;  21.7,125.5,75;  23.3,124.5,100; 24.9,124.0,85]; # JTWC best track
btk2_wpac_2022_19 = [17.1,131.0,44.8;19.4,127.7,61.6;21.7,125.5,84.0;23.4,124.3,89.6;24.9,124.0,84.0]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2022_19];
myvect = [myvect;my_wpac_2022_19];
btkvect = [btkvect;btk_wpac_2022_19];
btk2vect = [btk2vect;btk2_wpac_2022_19];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 20 ... MUIFA around 2022-09-09-15Z

rsmc_wpac_2022_20 = [21.6,125.3,78.4;22.8,123.9,89.6;23.8,123.3,89.6;24.3,123.8,78.4;25.4,124.0,72.8];
my_wpac_2022_20 = [21.7,125.3,90;    22.7,123.5,105; 24.0,122.9,95;  25.0,123.2,85;  27.0,123.1,55];
btk_wpac_2022_20 = [21.7,125.5,75;   23.3,124.4,100; 24.9,124.0,85;  26.8,123.9,85;  29.9,122.3,75]; # JTWC best track
btk2_wpac_2022_20 = [21.7,125.5,84.0;23.4,124.3,89.6;24.9,124.0,84.0;26.7,123.9,89.6;29.9,122.3,84.0]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2022_20];
myvect = [myvect;my_wpac_2022_20];
btkvect = [btkvect;btk_wpac_2022_20];
btk2vect = [btk2vect;btk2_wpac_2022_20];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 21 ... MUIFA around 2022-09-10-15Z

rsmc_wpac_2022_21 = [23.2,124.1,89.6;24.6,123.6,95.2;26.3,123.8,84.0;29.5,122.7,72.8;33.9,120.7,61.6];
my_wpac_2022_21 = [23.1,124.1,110;   24.3,123.5,100; 26.0,123.7,90;  29.4,123.0,65;  32.9,120.8,45];
btk_wpac_2022_21 = [23.3,124.4,100;  24.9,124.0,85;  26.8,123.9,85;  29.9,122.3,75;  35.3,120.4,40]; # JTWC best track
btk2_wpac_2022_21 = [23.4,124.3,89.6;24.9,124.0,84.0;26.7,123.9,89.6;29.9,122.3,84.0;35.2,120.4,44.8]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2022_21];
myvect = [myvect;my_wpac_2022_21];
btkvect = [btkvect;btk_wpac_2022_21];
btk2vect = [btk2vect;btk2_wpac_2022_21];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 22 ... MUIFA around 2022-09-11-15Z

rsmc_wpac_2022_22 = [24.7,124.0,95.2;25.6,124.3,89.6;27.7,124.0,84.0;32.1,122.1,67.2;36.2,121.6,50.4];
my_wpac_2022_22 = [24.9,124.3,95;    26.1,124.5,80;  29.1,123.8,70;  33.1,122.2,55;  37.8,120.6,25];
btk_wpac_2022_22 = [24.9,124.0,85;   26.8,123.9,85;  29.9,122.3,75;  35.3,120.4,40;  40.9,124.0,15]; # JTWC best track
btk2_wpac_2022_22 = [24.9,124.0,84.0;26.7,123.9,89.6;29.9,122.3,84.0;35.2,120.4,44.8;41.4,124.6,16.8]; # JMA best track (except day 5 wind)
rsmcvect = [rsmcvect;rsmc_wpac_2022_22];
myvect = [myvect;my_wpac_2022_22];
btkvect = [btkvect;btk_wpac_2022_22];
btk2vect = [btk2vect;btk2_wpac_2022_22];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 23 ... 15W around 2022-09-11-15Z

rsmc_wpac_2022_23 = [22.6,162.1,39.2;25.0,162.6,44.8;30.2,162.5,56.0;40.5,169.2,61.6];
my_wpac_2022_23 = [22.4,162.0,55;    24.7,162.8,75;  29.8,163.0,80;  39.2,169.4,70];
btk_wpac_2022_23 = [22.6,162.7,45;   25.9,162.9,60;  32.0,161.7,70;  45.4,168.2,50]; # JTWC best track
btk2_wpac_2022_23 = [22.6,162.7,56.0;25.9,163.0,67.2;31.9,161.9,78.4;45.0,167.7,50.4]; # JMA best track (except day 4 wind)
rsmcvect = [rsmcvect;rsmc_wpac_2022_23];
myvect = [myvect;my_wpac_2022_23];
btkvect = [btkvect;btk_wpac_2022_23];
btk2vect = [btk2vect;btk2_wpac_2022_23];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Wpac 24 ... MUIFA around 2022-09-11-21Z

rsmc_wpac_2022_24 = [25.2,124.1,89.6;26.8,123.8,84.0;29.6,122.8,78.4;34.6,120.6,61.6;37.4,120.8,0];
my_wpac_2022_24 = [25.2,124.2,90;    26.9,123.9,75;  30.5,122.6,60;  34.7,120.3,50;  36.9,120.1,0];
btk_wpac_2022_24 = [25.2,124.1,85;   27.2,123.5,85;  31.2,122.0,65;  36.5,120.6,35;  42.9,127.0,0]; # JTWC best track (except day 5 JMA)
btk2_wpac_2022_24 = [25.2,124.2,84.0;27.2,123.5,89.6;31.3,121.6,72.8;36.3,120.8,44.8;42.9,127.0,0]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2022_24];
myvect = [myvect;my_wpac_2022_24];
btkvect = [btkvect;btk_wpac_2022_24];
btk2vect = [btk2vect;btk2_wpac_2022_24];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 25 ... MUIFA around 2022-09-12-15Z

rsmc_wpac_2022_25 = [26.6,124.0,84.0;29.5,122.6,78.4;34.3,119.9,56.0;35.9,119.5,44.8];
my_wpac_2022_25 = [26.6,123.9,75;    29.7,122.4,60;  34.5,120.0,35;  36.2,119.6,20];
btk_wpac_2022_25 = [26.8,123.9,85;   29.9,122.3,75;  35.3,120.4,40;  40.9,124.0,15]; # JTWC best track
btk2_wpac_2022_25 = [26.7,123.9,89.6;29.9,122.3,84.0;35.2,120.4,44.8;41.4,124.6,16.8]; # JMA best track (except day 4 wind)
rsmcvect = [rsmcvect;rsmc_wpac_2022_25];
myvect = [myvect;my_wpac_2022_25];
btkvect = [btkvect;btk_wpac_2022_25];
btk2vect = [btk2vect;btk2_wpac_2022_25];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Wpac 26 ... 16W around 2022-09-13-15Z

rsmc_wpac_2022_26 = [23.4,139.4,39.2;24.4,136.2,44.8;25.8,133.0,56.0; 27.8,130.3,67.2; 30.9,128.5,67.2];
my_wpac_2022_26 = [23.5,139.4,45;    24.5,136.5,60;  26.0,133.5,75;   28.0,130.6,95;   30.7,128.5,85];
btk_wpac_2022_26 = [22.9,140.2,40;   23.5,137.3,75;  24.8,134.7,130;  27.6,132.0,125;  31.9,130.6,80]; # JTWC best track
btk2_wpac_2022_26 = [22.8,140.3,44.8;23.4,137.3,72.8;24.9,134.7,106.4;27.5,132.0,117.6;31.9,130.5,84.0]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2022_26];
myvect = [myvect;my_wpac_2022_26];
btkvect = [btkvect;btk_wpac_2022_26];
btk2vect = [btk2vect;btk2_wpac_2022_26];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 27 ... NANMADOL around 2022-09-13-21Z

rsmc_wpac_2022_27 = [23.7,139.1,44.8;24.4,135.3,56.0;26.0,132.2,67.2; 28.5,129.7,67.2; 31.5,128.1,67.2];
my_wpac_2022_27 = [23.6,139.1,55;    24.5,135.9,75;  25.8,132.7,100;  28.4,130.2,100;  31.7,128.3,80];
btk_wpac_2022_27 = [23.1,139.7,50;   23.4,136.3,90;  25.5,133.8,135;  28.6,131.4,115;  33.2,130.3,70]; # JTWC best track
btk2_wpac_2022_27 = [23.1,139.7,50.4;23.4,136.4,84.0;25.5,133.8,117.6;28.5,131.4,106.4;33.2,130.4,78.4]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2022_27];
myvect = [myvect;my_wpac_2022_27];
btkvect = [btkvect;btk_wpac_2022_27];
btk2vect = [btk2vect;btk2_wpac_2022_27];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 28 ... NANMADOL around 2022-09-14-15Z

rsmc_wpac_2022_28 = [24.0,136.5,56.0;25.3,133.5,67.2; 28.1,130.7,72.8; 31.9,129.6,72.8;36.4,135.2,67.2];
my_wpac_2022_28 = [23.7,136.9,70;    25.0,134.1,95;   27.8,131.2,100;  31.3,130.3,80;  33.5,132.1,50];
btk_wpac_2022_28 = [23.5,137.3,75;   24.8,134.7,130;  27.6,132.0,125;  31.9,130.6,80;  36.1,134.3,50]; # JTWC best track
btk2_wpac_2022_28 = [23.4,137.3,72.8;24.9,134.7,106.4;27.5,132.0,117.6;31.9,130.5,84.0;36.6,134.4,61.6]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2022_28];
myvect = [myvect;my_wpac_2022_28];
btkvect = [btkvect;btk_wpac_2022_28];
btk2vect = [btk2vect;btk2_wpac_2022_28];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 29 ... NANMADOL around 2022-09-15-15Z

rsmc_wpac_2022_29 = [25.2,134.0,84.0; 28.0,131.1,89.6; 31.9,129.5,84.0;36.1,134.5,61.6];
my_wpac_2022_29 = [25.0,134.1,105;    27.7,131.6,110;  31.4,130.2,95;  35.2,134.0,65];
btk_wpac_2022_29 = [24.8,134.7,130;   27.6,132.0,125;  31.9,130.6,80;  36.1,134.3,50]; # JTWC best track
btk2_wpac_2022_29 = [24.9,134.7,106.4;27.5,132.0,117.6;31.9,130.5,84.0;36.6,134.4,61.6]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2022_29];
myvect = [myvect;my_wpac_2022_29];
btkvect = [btkvect;btk_wpac_2022_29];
btk2vect = [btk2vect;btk2_wpac_2022_29];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Wpac 30 ... NORU around 2022-09-23-09Z

rsmc_wpac_2022_30 = [17.3,127.1,44.8;17.0,121.9,56.0; 17.5,115.3,56.0;17.0,109.3,72.8;17.1,104.2,39.2];
my_wpac_2022_30 = [17.3,127.1,50;    17.1,121.6,60;   17.3,115.8,65;  17.0,109.9,80;  17.1,104.4,50];
btk_wpac_2022_30 = [15.8,126.9,70;   15.0,122.4,130;  15.9,116.9,75;  15.6,111.2,130; 15.6,105.3,50]; # JTWC best track
btk2_wpac_2022_30 = [15.8,126.9,78.4;15.0,122.5,106.4;15.9,116.9,72.8;15.6,111.2,95.2;15.9,107.3,50.4]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2022_30];
myvect = [myvect;my_wpac_2022_30];
btkvect = [btkvect;btk_wpac_2022_30];
btk2vect = [btk2vect;btk2_wpac_2022_30];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Shem 001 ... 02 / 03S around 2022-10-06-15Z

rsmc_shem_2023_001 = [10.8,85.4,39.2;  13.2,85.7,44.8;  15.9,86.1,44.8;  15.6,83.9,33.6];
my_shem_2023_001 = [11.0,85.3,40;      14.1,86.2,40;    16.8,86.3,40;    16.5,84.4,35];
btk_shem_2023_001 = [10.5,84.7,35;     13.1,86.0,40;    15.5,87.0,25;    16.9,87.2,30]; # JTWC best track (except day 4)
btk2_shem_2023_001 = [10.43,84.93,33.6;13.36,86.01,39.2;16.46,87.33,44.8;16.9,87.2,28.0]; # MFR data table (except day 4)
rsmcvect = [rsmcvect;rsmc_shem_2023_001];
myvect = [myvect;my_shem_2023_001];
btkvect = [btkvect;btk_shem_2023_001];
btk2vect = [btk2vect;btk2_shem_2023_001];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Nio 11 ... BOB 09 / 05B around 2022-10-23-15Z

rsmc_nio_2022_11 = [20.7,89.7,53.0];
my_nio_2022_11 = [20.0,89.8,55];
btk_nio_2022_11 = [21.1,90.4,45]; # JTWC best track
btk2_nio_2022_11 = btk_nio_2022_11; # placeholder
rsmcvect = [rsmcvect;rsmc_nio_2022_11];
myvect = [myvect;my_nio_2022_11];
btkvect = [btkvect;btk_nio_2022_11];
btk2vect = [btk2vect;btk2_nio_2022_11];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;2];

# Nio 12 ... SITRANG around 2022-10-23-21Z

rsmc_nio_2022_12 = [21.4,90.1,53.0];
my_nio_2022_12 = [21.7,90.6,45];
btk_nio_2022_12 = [24.8,91.2,35]; # JTWC best track
btk2_nio_2022_12 = [24.8,91.2,42.4]; # wind from IMD prelim report, position JTWC btk
rsmcvect = [rsmcvect;rsmc_nio_2022_12];
myvect = [myvect;my_nio_2022_12];
btkvect = [btkvect;btk_nio_2022_12];
btk2vect = [btk2vect;btk2_nio_2022_12];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;2];

# Wpac 31 ... NALGAE around 2022-10-27-15Z

rsmc_wpac_2022_31 = [13.8,126.5,44.8;15.4,122.8,56.0;16.3,120.0,56.0;18.2,119.3,56.0;20.2,119.4,56.0];
my_wpac_2022_31 = [13.5,126.4,50;    14.9,122.4,75;  15.7,119.4,50;  17.2,119.1,45;  19.7,119.7,50];
btk_wpac_2022_31 = [13.0,125.3,50;   14.6,121.0,45;  15.4,117.5,45;  17.6,116.4,65;  19.9,115.6,55]; # JTWC best track
btk2_wpac_2022_31 = [13.3,125.5,50.4;14.7,121.1,56.0;15.9,117.3,50.4;17.9,116.4,67.2;19.8,115.5,61.6]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2022_31];
myvect = [myvect;my_wpac_2022_31];
btkvect = [btkvect;btk_wpac_2022_31];
btk2vect = [btk2vect;btk2_wpac_2022_31];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 32 ... NALGAE around 2022-10-27-21Z

rsmc_wpac_2022_32 = [13.9,125.3,44.8;15.5,121.6,56.0;16.5,119.3,56.0;18.7,119.2,56.0;20.4,119.3,56.0];
my_wpac_2022_32 = [13.7,125.0,60;    15.1,121.0,60;  16.0,118.6,50;  18.2,118.4,55;  20.0,119.0,45];
btk_wpac_2022_32 = [13.5,123.9,55;   15.8,119.9,40;  15.8,117.3,45;  18.1,116.1,75;  20.6,115.3,50]; # JTWC best track
btk2_wpac_2022_32 = [13.5,123.7,56.0;15.6,120.0,50.4;16.1,117.0,56.0;18.3,116.2,67.2;20.2,115.2,56.0]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2022_32];
myvect = [myvect;my_wpac_2022_32];
btkvect = [btkvect;btk_wpac_2022_32];
btk2vect = [btk2vect;btk2_wpac_2022_32];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 33 ... NALGAE around 2022-10-28-15Z

rsmc_wpac_2022_33 = [14.6,121.7,61.6;15.8,118.1,56.0;18.1,117.8,61.6;19.6,118.0,61.6;20.6,118.2,56.0];
my_wpac_2022_33 = [14.5,121.1,55;    15.8,117.9,45;  17.7,117.6,50;  19.2,118.0,55;  21.1,118.4,45];
btk_wpac_2022_33 = [14.6,121.0,45;   15.4,117.5,45;  17.6,116.4,65;  19.9,115.6,55;  21.4,114.6,40]; # JTWC best track
btk2_wpac_2022_33 = [14.7,121.1,56.0;15.9,117.3,50.4;17.9,116.4,67.2;19.8,115.5,61.6;21.4,114.3,39.2]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2022_33];
myvect = [myvect;my_wpac_2022_33];
btkvect = [btkvect;btk_wpac_2022_33];
btk2vect = [btk2vect;btk2_wpac_2022_33];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 34 ... NALGAE around 2022-10-31-21Z

rsmc_wpac_2022_34 = [19.7,114.9,61.6;21.0,112.7,44.8;21.1,110.2,0];
my_wpac_2022_34 = [19.9,115.0,55;    21.8,113.0,30;  21.9,110.8,0];
btk_wpac_2022_34 = [19.9,115.6,55;   21.9,114.0,30;  22.9,112.1,0]; # JTWC best track (except day 3)
btk2_wpac_2022_34 = [20.2,115.2,56.0;21.6,113.9,28.0;22.9,112.1,0]; # JMA best track (except day 2 wind and day 3 position)
rsmcvect = [rsmcvect;rsmc_wpac_2022_34];
myvect = [myvect;my_wpac_2022_34];
btkvect = [btkvect;btk_wpac_2022_34];
btk2vect = [btk2vect;btk2_wpac_2022_34];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Nio 13 ... BOB 09 / 96B around 2022-12-06-21Z

rsmc_nio_2022_13 = [9.6,84.6,37.1;11.0,82.3,47.7;12.4,80.4,37.1];
my_nio_2022_13 = [9.6,84.4,40;    11.1,81.4,45;  12.5,79.4,35];
btk_nio_2022_13 = [9.2,84.8,45;   10.6,82.1,55;  12.6,80.5,35]; # JTWC best track
btk2_nio_2022_13 = [9.2,84.6,37.1;10.6,82.3,53.0;12.5,80.3,37.1]; # IMD brief report
rsmcvect = [rsmcvect;rsmc_nio_2022_13];
myvect = [myvect;my_nio_2022_13];
btkvect = [btkvect;btk_nio_2022_13];
btk2vect = [btk2vect;btk2_nio_2022_13];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Nio 14 ... BOB 09 / 96B around 2022-12-07-03Z

rsmc_nio_2022_14 = [10.0,83.8,47.7;11.4,81.7,42.4;12.8,80.0,31.8];
my_nio_2022_14 = [9.9,83.8,45;     11.3,81.5,40;  12.6,79.4,30];
btk_nio_2022_14 = [9.4,84.5,55;    10.9,81.8,55;  12.8,79.9,30]; # JTWC best track
btk2_nio_2022_14 = [9.4,84.1,42.4; 11.0,81.7,53.0;12.9,79.7,31.8]; # IMD brief report
rsmcvect = [rsmcvect;rsmc_nio_2022_14];
myvect = [myvect;my_nio_2022_14];
btkvect = [btkvect;btk_nio_2022_14];
btk2vect = [btk2vect;btk2_nio_2022_14];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Nio 15 ... BOB 09 / 96B around 2022-12-07-15Z

rsmc_nio_2022_15 = [10.6,82.9,47.7;11.9,80.9,42.4;12.8,79.3,21.2];
my_nio_2022_15 = [10.5,82.8,45;    11.7,80.3,40;  12.4,79.1,20];
btk_nio_2022_15 = [10.2,82.8,55;   12.0,81.2,45;  12.9,78.8,15]; # JTWC best track
btk2_nio_2022_15 = [10.1,82.9,53.0;12.0,80.8,42.4;12.9,78.8,15.9]; # IMD brief report (except day 3)
rsmcvect = [rsmcvect;rsmc_nio_2022_15];
myvect = [myvect;my_nio_2022_15];
btkvect = [btkvect;btk_nio_2022_15];
btk2vect = [btk2vect;btk2_nio_2022_15];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Nio 16 ... MANDOUS around 2022-12-07-21Z

rsmc_nio_2022_16 = [10.9,82.3,47.7;12.5,80.8,31.8];
my_nio_2022_16 = [10.8,82.4,45;    12.4,80.7,30];
btk_nio_2022_16 = [10.6,82.1,55;   12.6,80.5,35]; # JTWC best track
btk2_nio_2022_16 = [10.6,82.3,53.0;12.5,80.3,37.1]; # IMD brief report
rsmcvect = [rsmcvect;rsmc_nio_2022_16];
myvect = [myvect;my_nio_2022_16];
btkvect = [btkvect;btk_nio_2022_16];
btk2vect = [btk2vect;btk2_nio_2022_16];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Shem 002 ... DARIAN around 2022-12-18-21Z

rsmc_shem_2023_002 = [13.0,94.2,61.6;14.1,94.4,67.2; 14.5,93.6,67.2;   14.8,91.6,50.4;  15.5,89.7,44.8];
my_shem_2023_002 = [12.8,93.9,60;    13.9,93.5,65;   14.4,92.0,60;     14.6,89.3,55;    15.4,86.3,55];
btk_shem_2023_002 = [12.9,93.4,75;   14.2,92.1,130;  13.5,89.1,125;    12.7,85.7,95;    12.3,83.3,120]; # JTWC best track
btk2_shem_2023_002 = [13.1,93.4,78.4;14.2,91.8,117.6;13.44,89.18,117.6;12.73,85.82,95.2;12.27,83.25,117.6]; # BoM best track (days 1-2), MFR data table (days 3-5)
rsmcvect = [rsmcvect;rsmc_shem_2023_002];
myvect = [myvect;my_shem_2023_002];
btkvect = [btkvect;btk_shem_2023_002];
btk2vect = [btk2vect;btk2_shem_2023_002];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 003 ... DARIAN around 2022-12-19-15Z

rsmc_shem_2023_003 = [13.5,93.5,84.0; 13.7,92.4,67.2;   13.6,89.7,72.8;   14.0,87.0,89.6;   15.2,85.5,78.4];
my_shem_2023_003 = [13.6,93.5,80;     14.1,91.8,65;     14.2,89.0,70;     14.9,86.4,80;     15.6,85.0,70];
btk_shem_2023_003 = [14.0,92.7,120;   13.7,89.9,135;    12.8,86.5,105;    12.4,83.8,115;    13.0,83.7,110]; # JTWC best track
btk2_shem_2023_003 = [14.1,92.5,100.8;13.64,89.98,134.4;12.83,86.67,106.4;12.32,83.73,112.0;12.92,83.61,106.4]; # BoM best track (day 1), MFR data table (days 2-5)
rsmcvect = [rsmcvect;rsmc_shem_2023_003];
myvect = [myvect;my_shem_2023_003];
btkvect = [btkvect;btk_shem_2023_003];
btk2vect = [btk2vect;btk2_shem_2023_003];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 004 ... DARIAN around 2022-12-19-21Z

rsmc_shem_2023_004 = [13.9,93.0,84.0; 13.9,90.9,67.2;   13.7,88.0,78.4;  14.2,85.1,89.6;   15.2,83.7,72.8];
my_shem_2023_004 = [14.1,92.8,75;     14.1,90.2,65;     13.7,87.1,75;    14.4,84.7,80;     15.5,83.5,70];
btk_shem_2023_004 = [14.2,92.1,130;   13.5,89.1,125;    12.7,85.7,95;    12.3,83.3,120;    13.5,84.1,95]; # JTWC best track
btk2_shem_2023_004 = [14.2,91.8,117.6;13.44,89.18,117.6;12.73,85.82,95.2;12.27,83.25,117.6;13.33,84.03,100.8]; # BoM best track (day 1), MFR data table (days 2-5)
rsmcvect = [rsmcvect;rsmc_shem_2023_004];
myvect = [myvect;my_shem_2023_004];
btkvect = [btkvect;btk_shem_2023_004];
btk2vect = [btk2vect;btk2_shem_2023_004];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 005 ... DARIAN around 2022-12-20-21Z

rsmc_shem_2023_005 = [14.0,89.1,123.2;  13.5,85.6,106.4; 13.6,82.4,95.2;   14.1,80.5,78.4;   15.2,80.2,72.8];
my_shem_2023_005 = [14.0,89.0,120;      13.6,85.4,105;   13.7,82.2,95;     14.2,80.5,90;     15.6,80.8,80];
btk_shem_2023_005 = [13.5,89.1,125;     12.7,85.7,95;    12.3,83.3,120;    13.5,84.1,95;     16.2,85.3,95]; # JTWC best track
btk2_shem_2023_005 = [13.44,89.18,117.6;12.73,85.82,95.2;12.27,83.25,117.6;13.33,84.03,100.8;15.95,85.05,89.6]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2023_005];
myvect = [myvect;my_shem_2023_005];
btkvect = [btkvect;btk_shem_2023_005];
btk2vect = [btk2vect;btk2_shem_2023_005];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 006 ... DARIAN around 2022-12-22-15Z

rsmc_shem_2023_006 = [12.4,83.5,112.0;  13.4,82.7,112.0;  15.4,83.6,106.4; 16.9,83.5,84.0;   18.0,80.5,61.6];
my_shem_2023_006 = [12.3,83.4,110;      13.3,82.6,105;    15.3,83.5,100;   17.3,83.5,80;     18.3,80.3,55];
btk_shem_2023_006 = [12.4,83.8,115;     13.0,83.7,110;    15.6,85.1,90;    16.9,84.9,110;    18.6,82.0,70]; # JTWC best track
btk2_shem_2023_006 = [12.32,83.73,112.0;12.92,83.61,106.4;15.54,85.03,84.0;16.75,84.84,112.0;18.22,81.77,78.4]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2023_006];
myvect = [myvect;my_shem_2023_006];
btkvect = [btkvect;btk_shem_2023_006];
btk2vect = [btk2vect;btk2_shem_2023_006];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 007 ... DARIAN around 2022-12-22-21Z

rsmc_shem_2023_007 = [12.5,82.7,112.0;  13.6,82.6,100.8;  15.8,83.9,89.6;  17.2,83.5,78.4;  18.8,79.6,56.0];
my_shem_2023_007 = [12.4,82.6,100;      13.7,82.7,95;     15.9,84.1,80;    17.8,83.8,70;    19.5,79.7,50];
btk_shem_2023_007 = [12.3,83.3,120;     13.5,84.1,95;     16.2,85.3,95;    17.1,84.3,100;   18.8,80.6,65]; # JTWC best track
btk2_shem_2023_007 = [12.27,83.25,117.6;13.33,84.03,100.8;15.95,85.05,89.6;17.04,84.24,95.2;18.69,80.33,72.8]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2023_007];
myvect = [myvect;my_shem_2023_007];
btkvect = [btkvect;btk_shem_2023_007];
btk2vect = [btk2vect;btk2_shem_2023_007];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 008 ... DARIAN around 2022-12-23-15Z

rsmc_shem_2023_008 = [12.9,82.8,117.6;  15.5,84.0,100.8; 16.6,83.9,84.0;   17.5,81.6,72.8;  19.9,76.7,56.0];
my_shem_2023_008 = [12.8,83.1,120;      15.9,84.0,95;    17.0,84.1,80;     18.2,81.3,70;    20.7,76.1,45];
btk_shem_2023_008 = [13.0,83.7,110;     15.6,85.1,90;    16.9,84.9,110;    18.6,82.0,70;    20.5,76.7,50]; # JTWC best track
btk2_shem_2023_008 = [12.92,83.61,106.4;15.54,85.03,84.0;16.75,84.84,112.0;18.22,81.77,78.4;20.7,76.32,56.0]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2023_008];
myvect = [myvect;my_shem_2023_008];
btkvect = [btkvect;btk_shem_2023_008];
btk2vect = [btk2vect;btk2_shem_2023_008];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 009 ... DARIAN around 2022-12-24-15Z

rsmc_shem_2023_009 = [16.0,84.8,95.2;  17.3,84.4,89.6;   18.8,82.2,72.8;  22.2,76.8,56.0; 25.2,71.9,44.8];
my_shem_2023_009 = [15.8,84.6,85;      17.2,83.9,75;     18.9,81.1,60;    21.9,75.8,50;   24.8,71.2,40];
btk_shem_2023_009 = [15.6,85.1,90;     16.9,84.9,110;    18.6,82.0,70;    20.5,76.7,50;   24.5,71.5,50]; # JTWC best track
btk2_shem_2023_009 = [15.54,85.03,84.0;16.75,84.84,112.0;18.22,81.77,78.4;20.7,76.32,56.0;24.44,71.48,44.8]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2023_009];
myvect = [myvect;my_shem_2023_009];
btkvect = [btkvect;btk_shem_2023_009];
btk2vect = [btk2vect;btk2_shem_2023_009];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 010 ... DARIAN around 2022-12-25-15Z

rsmc_shem_2023_010 = [16.9,84.7,78.4;   18.4,81.7,67.2;  21.5,76.5,56.0; 24.6,71.9,56.0;  28.1,69.3,50.4];
my_shem_2023_010 = [17.1,84.8,75;       18.8,82.0,60;    22.1,76.9,50;   25.2,71.7,50;    28.5,68.9,40];
btk_shem_2023_010 = [16.9,84.9,110;     18.6,82.0,70;    20.5,76.7,50;   24.5,71.5,50;    28.1,69.2,50]; # JTWC best track
btk2_shem_2023_010 = [16.75,84.84,112.0;18.22,81.77,78.4;20.7,76.32,56.0;24.44,71.48,44.8;28.53,69.04,50.4]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2023_010];
myvect = [myvect;my_shem_2023_010];
btkvect = [btkvect;btk_shem_2023_010];
btk2vect = [btk2vect;btk2_shem_2023_010];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 011 ... DARIAN around 2022-12-26-15Z

rsmc_shem_2013_011 = [18.6,81.6,84.0;  21.7,76.0,67.2; 24.8,71.2,56.0;  28.5,68.2,50.4;  32.7,68.0,44.8];
my_shem_2013_011 = [18.4,81.7,85;      21.7,75.9,60;   24.8,71.6,50;    28.5,68.6,50;    32.0,68.2,45];
btk_shem_2013_011 = [18.6,82.0,70;     20.5,76.7,50;   24.5,71.5,50;    28.1,69.2,50;    32.6,68.7,30]; # JTWC best track
btk2_shem_2013_011 = [18.22,81.77,78.4;20.7,76.32,56.0;24.44,71.48,44.8;28.53,69.04,50.4;32.52,68.67,39.2]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2013_011];
myvect = [myvect;my_shem_2013_011];
btkvect = [btkvect;btk_shem_2013_011];
btk2vect = [btk2vect;btk2_shem_2013_011];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 013 ... 05 / 08S around 2023-01-17-21Z

rsmc_shem_2023_013 = [13.8,52.0,44.8;  15.3,50.2,56.0;  16.4,49.6,39.2;  18.1,49.3,33.6;  19.8,50.2,44.8];
my_shem_2023_013 = [13.9,51.5,50;      15.0,49.6,45;    15.9,48.6,30;    17.8,47.8,30;    19.9,49.0,40];
btk_shem_2023_013 = [13.5,51.7,55;     15.8,48.7,30;    16.9,46.4,20;    18.6,45.0,20;    19.9,44.6,20]; # JTWC best track
btk2_shem_2023_013 = [13.48,51.83,61.6;15.58,48.97,33.6;17.17,46.23,28.0;18.77,45.16,22.4;20.06,45.09,28.0]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2023_013];
myvect = [myvect;my_shem_2023_013];
btkvect = [btkvect;btk_shem_2023_013];
btk2vect = [btk2vect;btk2_shem_2023_013];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 014 ... CHENESO around 2023-01-18-21Z

rsmc_shem_2023_014 = [15.3,48.9,39.2;  16.6,47.8,33.6;  18.1,46.9,28.0];
my_shem_2023_014 = [15.2,49.0,35;      16.3,48.1,25;    18.8,47.6,25];
btk_shem_2023_014 = [15.8,48.7,30;     16.9,46.4,20;    18.6,45.0,20]; # JTWC best track
btk2_shem_2023_014 = [15.58,48.97,33.6;17.17,46.23,28.0;18.77,45.16,22.4]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2023_014];
myvect = [myvect;my_shem_2023_014];
btkvect = [btkvect;btk_shem_2023_014];
btk2vect = [btk2vect;btk2_shem_2023_014];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 015 ... IRENE around 2023-01-18-21Z

rsmc_shem_2023_015 = [23.6,175.8,56.0];
my_shem_2023_015 = [23.7,175.3,50];
btk_shem_2023_015 = [25.1,176.5,35]; # JTWC best track
btk2_shem_2023_015 = btk_shem_2023_015; #placeholder
rsmcvect = [rsmcvect;rsmc_shem_2023_015];
myvect = [myvect;my_shem_2023_015];
btkvect = [btkvect;btk_shem_2023_015];
btk2vect = [btk2vect;btk2_shem_2023_015];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;5];

# Shem 016 ... CHENESO around 2023-01-24-03Z

rsmc_shem_2023_016 = [19.7,42.1,44.8;  20.1,41.9,56.0;  20.6,41.2,78.4;  22.3,39.9,95.2;  25.2,40.8,89.6];
my_shem_2023_016 = [20.0,42.2,55;      20.5,42.2,70;    21.0,40.9,75;    22.7,39.4,85;    25.4,40.2,75];
btk_shem_2023_016 = [20.2,43.0,65;     19.6,43.2,75;    21.1,42.2,50;    24.1,41.4,75;    27.7,43.8,55]; # JTWC best track
btk2_shem_2023_016 = [20.09,42.96,61.6;19.61,43.26,78.4;20.95,42.01,56.0;24.13,41.27,84.0;27.69,44.06,56.0]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2023_016];
myvect = [myvect;my_shem_2023_016];
btkvect = [btkvect;btk_shem_2023_016];
btk2vect = [btk2vect;btk2_shem_2023_016];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 017 ... CHENESO around 2023-01-26-03Z

rsmc_shem_2023_017 = [21.5,42.0,100.8; 23.8,40.5,112.0; 27.3,42.5,95.2;  30.9,47.4,78.4; 36.4,57.6,61.6];
my_shem_2023_017 = [21.3,42.3,95;      23.7,41.0,100;   27.5,42.9,80;    31.7,48.5,70;   37.9,60.0,60];
btk_shem_2023_017 = [21.1,42.2,50;     24.1,41.4,75;    27.7,43.8,55;    32.7,51.5,35;   40.2,62.2,45]; # JTWC best track (except day 5)
btk2_shem_2023_017 = [20.95,42.01,56.0;24.13,41.27,84.0;27.69,44.06,56.0;32.6,51.22,50.4;42.44,63.64,56.0]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2023_017];
myvect = [myvect;my_shem_2023_017];
btkvect = [btkvect;btk_shem_2023_017];
btk2vect = [btk2vect;btk2_shem_2023_017];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 018 ... FREDDY around 2023-02-06-21Z

rsmc_shem_2023_018 = [14.7,115.9,67.2;15.4,113.1,84.0;15.2,110.6,89.6;15.1,107.4,89.6;  15.7,103.6,78.4];
my_shem_2023_018 = [14.7,115.7,75;    15.5,112.2,95;  15.5,109.9,85;  15.8,106.6,90;    16.2,103.0,75];
btk_shem_2023_018 = [14.8,115.1,90;   16.0,112.1,70;  15.5,108.9,65;  14.7,105.6,70;    14.9,101.9,120]; # JTWC best track
btk2_shem_2023_018 = [14.8,115.0,84.0;15.9,111.9,78.4;15.5,109.2,56.0;14.75,105.88,72.8;14.9,101.9,106.4]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2023_018];
myvect = [myvect;my_shem_2023_018];
btkvect = [btkvect;btk_shem_2023_018];
btk2vect = [btk2vect;btk2_shem_2023_018];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 019 ... FREDDY around 2023-02-07-03Z

rsmc_shem_2023_019 = [15.2,115.3,72.8;  15.7,112.2,89.6;15.5,109.4,89.6;15.5,106.1,89.6;16.2,102.3,72.8];
my_shem_2023_019 = [15.2,115.1,85;      15.9,111.7,95;  15.9,109.1,90;  16.5,106.0,90;  16.9,102.3,65];
btk_shem_2023_019 = [15.1,114.5,90;     15.5,110.7,60;  15.4,108.2,65;  14.7,104.9,75;  15.0,101.1,110]; # JTWC best track
btk2_shem_2023_019 = [15.06,114.46,89.6;15.9,111.0,72.8;15.3,108.1,67.2;14.7,105.0,78.4;14.93,101.02,100.8]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2023_019];
myvect = [myvect;my_shem_2023_019];
btkvect = [btkvect;btk_shem_2023_019];
btk2vect = [btk2vect;btk2_shem_2023_019];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 020 ... FREDDY around 2023-02-07-21Z

rsmc_shem_2023_020 = [15.7,112.2,106.4;15.6,109.6,106.4;15.6,106.8,106.4; 16.3,103.0,89.6; 16.9,99.0,67.2];
my_shem_2023_020 = [15.7,112.1,95;     15.8,109.0,95;   15.7,106.0,95;    16.2,102.3,90;   16.8,98.6,65];
btk_shem_2023_020 = [16.0,112.1,70;    15.5,108.9,65;   14.7,105.6,70;    14.9,101.9,120;  15.1,98.0,100]; # JTWC best track
btk2_shem_2023_020 = [15.9,111.9,78.4; 15.5,109.2,56.0; 14.75,105.88,72.8;14.9,101.9,106.4;15.1,97.9,95.2]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2023_020];
myvect = [myvect;my_shem_2023_020];
btkvect = [btkvect;btk_shem_2023_020];
btk2vect = [btk2vect;btk2_shem_2023_020];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 021 ... FREDDY around 2023-02-08-03Z

rsmc_shem_2023_021 = [15.6,111.5,106.4;15.3,108.9,106.4;15.2,105.7,100.8;15.6,102.0,78.4;   15.8,97.9,56.0];
my_shem_2023_021 = [15.7,111.5,90;     15.9,108.4,90;   15.6,105.2,95;   16.1,101.2,80;     16.2,97.5,60];
btk_shem_2023_021 = [15.5,110.7,60;    15.4,108.2,65;   14.7,104.9,75;   15.0,101.1,110;    15.1,96.9,95]; # JTWC best track
btk2_shem_2023_021 = [15.9,111.0,72.8; 15.3,108.1,67.2; 14.7,105.0,78.4; 14.93,101.02,100.8;15.1,96.8,106.4]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2023_021];
myvect = [myvect;my_shem_2023_021];
btkvect = [btkvect;btk_shem_2023_021];
btk2vect = [btk2vect;btk2_shem_2023_021];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 022 ... 14U/12P around 2023-02-08-03Z

rsmc_shem_2023_022 = [17.7,153.2,72.8;22.3,157.7,89.6;27.0,164.5,78.4;29.5,170.1,61.6;32.6,174.5,50.4];
my_shem_2023_022 = [17.9,153.3,65;    22.2,157.6,80;  27.0,164.4,70;  29.5,169.9,60;  32.1,173.7,45];
btk_shem_2023_022 = [18.0,153.0,50;   22.0,157.7,85;  27.8,165.6,60;  30.9,171.8,45;  34.0,176.1,55]; # JTWC best track (except day 5)
btk2_shem_2023_022 = [17.8,152.8,56.0;21.8,157.8,78.4;27.8,165.7,67.2;30.7,171.9,44.8;34.0,176.1,56.0]; # BoM best track (days 1-3 only)
rsmcvect = [rsmcvect;rsmc_shem_2023_022];
myvect = [myvect;my_shem_2023_022];
btkvect = [btkvect;btk_shem_2023_022];
btk2vect = [btk2vect;btk2_shem_2023_022];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 023 ... FREDDY around 2023-02-08-21Z

rsmc_shem_2023_023 = [15.6,109.1,95.2;15.2,106.1,100.8; 15.5,102.7,89.6; 15.6,99.1,72.8;15.6,95.9,61.6];
my_shem_2023_023 = [15.9,109.1,75;    15.8,105.7,80;    16.0,102.2,80;   16.0,98.5,75;  16.4,95.5,55];
btk_shem_2023_023 = [15.5,108.9,65;   14.7,105.6,70;    14.9,101.9,120;  15.1,98.0,100; 15.4,93.5,85]; # JTWC best track
btk2_shem_2023_023 = [15.5,109.2,56.0;14.75,105.88,72.8;14.9,101.9,106.4;15.1,97.9,95.2;15.4,93.4,84.0]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2023_023];
myvect = [myvect;my_shem_2023_023];
btkvect = [btkvect;btk_shem_2023_023];
btk2vect = [btk2vect;btk2_shem_2023_023];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 024 ... DINGANI around 2023-02-09-21Z

rsmc_shem_2023_024 = [16.1,82.1,56.0;  16.6,77.7,56.0;  19.0,75.1,67.2; 20.9,74.0,67.2;22.2,70.6,56.0];
my_shem_2023_024 = [15.8,81.8,50;      16.2,77.1,55;    18.5,74.1,60;   19.8,72.2,55;  20.8,69.1,45];
btk_shem_2023_024 = [15.9,81.8,50;     15.9,77.3,50;    17.8,74.4,75;   20.5,73.0,70;  24.5,71.4,60]; # JTWC best track
btk2_shem_2023_024 = [15.63,81.83,50.4;15.92,77.38,56.0;17.7,74.45,78.4;20.2,73.0,78.4;24.32,71.31,56.0]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2023_024];
myvect = [myvect;my_shem_2023_024];
btkvect = [btkvect;btk_shem_2023_024];
btk2vect = [btk2vect;btk2_shem_2023_024];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 025 ... GABRIELLE around 2023-02-10-03Z

rsmc_shem_2023_025 = [27.1,165.3,67.2;29.9,171.0,61.6;33.1,175.6,56.0;36.4,177.0,61.6];
my_shem_2023_025 = [27.0,165.3,65;    29.2,170.3,55;  32.3,173.2,50;  35.4,174.0,55];
btk_shem_2023_025 = [27.8,165.6,60;   30.9,171.8,45;  34.0,176.1,55;  36.7,178.2,50]; # JTWC best track (days 1-2 only)
btk2_shem_2023_025 = [27.8,165.7,67.2;30.9,171.8,44.8;34.0,176.1,56.0;36.7,178.2,50.4]; # BoM best track (except day 2 JTWC btk & days 3-4 U.S. oper.)
rsmcvect = [rsmcvect;rsmc_shem_2023_025];
myvect = [myvect;my_shem_2023_025];
btkvect = [btkvect;btk_shem_2023_025];
btk2vect = [btk2vect;btk2_shem_2023_025];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;4;4;4;4];

# Shem 026 ... FREDDY around 2023-02-11-15Z

rsmc_shem_2023_026 = [15.2,99.3,100.8;15.5,95.3,78.4;  15.6,90.9,67.2;15.8,86.5,61.6;   16.0,81.5,61.6];
my_shem_2023_026 = [15.1,99.2,100;    15.6,94.9,75;    15.7,90.4,70;  16.2,86.0,75;     16.5,81.5,70];
btk_shem_2023_026 = [15.1,99.0,100;   15.4,94.9,90;    15.3,90.0,110; 14.9,85.0,130;    14.9,79.5,115]; # JTWC best track
btk2_shem_2023_026 = [15.1,99.0,95.2; 15.33,94.51,89.6;15.3,90.0,95.2;14.82,84.94,128.8;14.94,79.57,112.0]; # BoM best track (days 1-3), MFR data table (days 4-5)
rsmcvect = [rsmcvect;rsmc_shem_2023_026];
myvect = [myvect;my_shem_2023_026];
btkvect = [btkvect;btk_shem_2023_026];
btk2vect = [btk2vect;btk2_shem_2023_026];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 027 ... DINGANI around 2023-02-11-21Z

rsmc_shem_2023_027 = [17.7,74.5,78.4; 19.5,72.9,61.6;  21.8,70.8,50.4;  23.7,68.1,39.2;  25.3,65.4,33.6];
my_shem_2023_027 = [17.5,74.5,70;     19.6,72.5,60;    21.5,71.5,45;    24.0,69.2,35;    25.4,66.3,30];
btk_shem_2023_027 = [17.8,74.4,75;    20.5,73.0,70;    24.5,71.4,60;    28.7,68.3,40;    32.7,68.8,25]; # JTWC best track
btk2_shem_2023_027 = [17.7,74.45,78.4;20.29,72.97,78.4;24.32,71.31,56.0;28.92,68.11,44.8;32.3,68.6,28.0]; # MFR data table (except day 5)
rsmcvect = [rsmcvect;rsmc_shem_2023_027];
myvect = [myvect;my_shem_2023_027];
btkvect = [btkvect;btk_shem_2023_027];
btk2vect = [btk2vect;btk2_shem_2023_027];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 028 ... FREDDY around 2023-02-12-03Z

rsmc_shem_2023_028 = [15.4,97.1,89.6;15.5,92.6,67.2;15.7,88.0,61.6;   15.9,83.0,61.6;   16.4,78.1,61.6];
my_shem_2023_028 = [15.2,97.0,90;    15.5,92.4,70;  15.8,87.9,70;     16.2,83.4,75;     16.8,78.8,75];
btk_shem_2023_028 = [15.1,96.9,95;   15.4,92.4,80;  15.1,87.6,125;    14.8,82.3,130;    15.4,76.5,125]; # JTWC best track
btk2_shem_2023_028 = [15.1,96.8,95.2;15.3,92.5,84.0;15.14,87.58,123.2;14.72,82.29,128.8;15.31,76.62,123.2]; # BoM best track (days 1-2), MFR data table (days 3-5)
rsmcvect = [rsmcvect;rsmc_shem_2023_028];
myvect = [myvect;my_shem_2023_028];
btkvect = [btkvect;btk_shem_2023_028];
btk2vect = [btk2vect;btk2_shem_2023_028];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 029 ... DINGANI around 2023-02-13-21Z

rsmc_shem_2023_029 = [23.8,70.5,50.4;  28.5,67.1,50.4;  30.7,67.0,39.2];
my_shem_2023_029 = [23.9,70.8,50;      28.1,67.0,40;    29.9,67.3,35];
btk_shem_2023_029 = [24.5,71.4,60;     28.7,68.3,40;    32.7,68.8,25]; # JTWC best track
btk2_shem_2023_029 = [24.32,71.31,56.0;28.92,68.11,44.8;32.7,68.8,25.0]; # MFR data table (except day 3 JTWC btk)
rsmcvect = [rsmcvect;rsmc_shem_2023_029];
myvect = [myvect;my_shem_2023_029];
btkvect = [btkvect;btk_shem_2023_029];
btk2vect = [btk2vect;btk2_shem_2023_029];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 030 ... FREDDY around 2023-02-14-03Z

rsmc_shem_2023_030 = [15.2,87.9,84.0;   14.7,83.0,95.2;   14.7,78.4,100.8];
my_shem_2023_030 = [15.1,87.8,80;       14.7,82.9,90;     14.8,78.1,100];
btk_shem_2023_030 = [15.1,87.6,125;     14.8,82.3,130;    15.4,76.5,125]; # JTWC best track
btk2_shem_2023_030 = [15.14,87.58,123.2;14.72,82.29,128.8;15.31,76.62,123.3]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2023_030];
myvect = [myvect;my_shem_2023_030];
btkvect = [btkvect;btk_shem_2023_030];
btk2vect = [btk2vect;btk2_shem_2023_030];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;4;4;4];

# Shem 031 ... FREDDY around 2023-02-16-03Z

rsmc_shem_2023_031 = [15.0,77.0,112.0;  15.5,72.5,106.4; 15.8,68.6,106.4;  17.0,63.8,100.8;  18.0,56.2,112.0];
my_shem_2023_031 = [15.0,77.0,120;      15.6,72.2,115;   16.0,68.3,110;    17.1,63.1,110;    18.3,56.0,110];
btk_shem_2023_031 = [15.4,76.5,125;     16.0,71.4,115;   16.6,67.0,140;    18.1,60.6,130;    19.8,52.7,100]; # JTWC best track
btk2_shem_2023_031 = [15.31,76.62,123.3;16.0,71.54,117.6;16.63,67.04,134.4;18.03,60.63,134.4;19.72,52.84,100.8]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2023_031];
myvect = [myvect;my_shem_2023_031];
btkvect = [btkvect;btk_shem_2023_031];
btk2vect = [btk2vect;btk2_shem_2023_031];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 032 ... FREDDY around 2023-02-16-15Z

rsmc_shem_2023_032 = [15.5,74.3,123.2;  15.9,70.1,123.2;  16.7,65.7,112.0;  18.0,59.0,112.0;  19.3,51.7,112.0];
my_shem_2023_032 = [15.5,74.0,120;      15.6,69.8,120;    16.5,65.1,115;    18.0,59.0,110;    19.4,51.7,110];
btk_shem_2023_032 = [15.8,74.0,125;     16.2,69.2,115;    17.3,64.0,130;    18.9,56.7,115;    20.8,49.4,95]; # JTWC best track
btk2_shem_2023_032 = [15.78,73.97,123.2;16.12,69.29,117.6;17.32,63.99,134.4;18.84,56.77,123.2;20.68,49.35,89.6]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2023_032];
myvect = [myvect;my_shem_2023_032];
btkvect = [btkvect;btk_shem_2023_032];
btk2vect = [btk2vect;btk2_shem_2023_032];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 033 ... FREDDY around 2023-02-17-15Z

rsmc_shem_2023_033 = [16.1,69.6,123.2;  16.9,64.7,123.2;  18.4,58.3,123.2;  20.1,51.1,112.0; 21.3,44.3,39.2];
my_shem_2023_033 = [16.1,69.2,115;      16.6,63.7,120;    18.3,57.5,120;    20.1,50.0,105;   21.3,43.6,40];
btk_shem_2023_033 = [16.2,69.2,115;     17.3,64.0,130;    18.9,56.7,115;    20.8,49.4,95;    22.0,43.6,25]; # JTWC best track
btk2_shem_2023_033 = [16.12,69.29,117.6;17.32,63.99,134.4;18.84,56.77,123.2;20.68,49.35,89.6;21.89,43.52,28.0]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2023_033];
myvect = [myvect;my_shem_2023_033];
btkvect = [btkvect;btk_shem_2023_033];
btk2vect = [btk2vect;btk2_shem_2023_033];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 034 ... FREDDY around 2023-02-19-03Z

rsmc_shem_2023_034 = [17.9,60.8,140.0;  19.5,53.7,123.2;  20.8,47.0,56.0;  21.0,40.9,44.8; 19.9,35.7,67.2];
my_shem_2023_034 = [18.0,61.0,135;      19.4,53.7,115;    20.9,47.3,80;    20.9,41.1,45;   20.4,36.3,60];
btk_shem_2023_034 = [18.1,60.6,130;     19.8,52.7,100;    21.0,46.5,60;    22.1,41.4,45;   22.5,37.6,60]; # JTWC best track
btk2_shem_2023_034 = [18.03,60.63,134.4;19.72,52.84,100.8;21.48,46.62,44.8;22.3,41.42,44.8;22.26,37.43,61.6]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2023_034];
myvect = [myvect;my_shem_2023_034];
btkvect = [btkvect;btk_shem_2023_034];
btk2vect = [btk2vect;btk2_shem_2023_034];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 035 ... FREDDY around 2023-02-20-15Z

rsmc_shem_2023_035 = [20.6,50.0,123.2; 21.7,43.6,33.6;  21.1,38.4,56.0;  20.3,33.7,44.8;  21.1,30.9,28.0];
my_shem_2023_035 = [20.9,49.8,110;     22.1,43.8,35;    21.9,38.4,60;    21.1,33.5,40;    21.7,30.0,25];
btk_shem_2023_035 = [20.8,49.4,95;     22.0,43.6,25;    22.5,39.6,55;    22.5,35.5,50;    22.9,33.1,25]; # JTWC best track
btk2_shem_2023_035 = [20.68,49.35,89.6;21.89,43.52,28.0;22.58,39.78,61.6;22.34,35.37,61.6;22.76,33.17,22.4]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2023_035];
myvect = [myvect;my_shem_2023_035];
btkvect = [btkvect;btk_shem_2023_035];
btk2vect = [btk2vect;btk2_shem_2023_035];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 036 ... FREDDY around 2023-02-21-03Z

rsmc_shem_2023_036 = [21.4,46.5,61.6;  21.7,40.7,44.8; 20.9,35.6,67.2;  20.9,31.8,22.4];
my_shem_2023_036 = [21.4,46.2,65;      21.6,40.2,50;   21.2,35.1,65;    21.1,31.4,25];
btk_shem_2023_036 = [21.0,46.5,60;     22.1,41.4,45;   22.5,37.6,60;    22.7,34.0,40]; # JTWC best track
btk2_shem_2023_036 = [21.48,46.62,44.8;22.3,41.42,44.8;22.26,37.43,61.6;22.84,34.11,33.6]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2023_036];
myvect = [myvect;my_shem_2023_036];
btkvect = [btkvect;btk_shem_2023_036];
btk2vect = [btk2vect;btk2_shem_2023_036];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 037 ... FREDDY around 2023-02-21-15Z

rsmc_shem_2023_037 = [22.0,43.1,39.2;  21.8,38.7,56.0;  21.8,34.1,50.4;  22.6,31.5,33.6;  21.6,31.5,22.4];
my_shem_2023_037 = [21.7,43.1,35;      21.7,37.9,55;    21.7,33.7,50;    22.4,30.9,25;    22.1,29.8,20];
btk_shem_2023_037 = [22.0,43.6,25;     22.5,39.6,55;    22.5,35.5,50;    22.8,33.1,25;    21.3,33.2,20]; # JTWC best track
btk2_shem_2023_037 = [21.89,43.52,28.0;22.58,39.78,61.6;22.34,35.37,61.6;22.76,33.17,22.4;21.76,33.35,22.4]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2023_037];
myvect = [myvect;my_shem_2023_037];
btkvect = [btkvect;btk_shem_2023_037];
btk2vect = [btk2vect;btk2_shem_2023_037];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 038 ... FREDDY around 2023-02-22-15Z

rsmc_shem_2023_038 = [22.1,38.5,50.4;  21.7,33.9,39.2;  21.9,31.0,22.4;  20.4,30.2,22.4;  18.6,27.6,22.4];
my_shem_2023_038 = [22.5,38.8,55;      21.7,34.2,45;    23.1,31.2,25;    21.9,30.5,20;    20.1,29.1,20];
btk_shem_2023_038 = [22.5,39.6,55;     22.5,35.5,50;    22.8,33.1,25;    21.3,33.2,20;    21.3,31.5,15]; # JTWC best track
btk2_shem_2023_038 = [22.58,39.78,61.6;22.34,35.37,61.6;22.76,33.17,22.4;21.76,33.35,22.4;21.05,31.48,16.8]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2023_038];
myvect = [myvect;my_shem_2023_038];
btkvect = [btkvect;btk_shem_2023_038];
btk2vect = [btk2vect;btk2_shem_2023_038];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 039 ... ENALA around 2023-02-22-21Z

rsmc_shem_2023_039 = [19.5,70.9,61.6;  22.7,69.2,50.4;  25.4,66.9,44.8;  26.8,64.7,33.6; 27.3,63.5,28.0];
my_shem_2023_039 = [19.6,71.1,55;      23.7,69.9,45;    26.4,68.2,40;    28.2,66.0,30;   28.8,64.6,30];
btk_shem_2023_039 = [19.8,71.0,75;     23.4,69.5,65;    27.1,67.9,45;    28.8,66.8,45;   28.4,67.9,35]; # JTWC best track
btk2_shem_2023_039 = [19.49,71.04,72.8;23.47,69.64,56.0;26.68,68.19,56.0;28.8,66.65,56.0;28.44,67.91,44.8]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2023_039];
myvect = [myvect;my_shem_2023_039];
btkvect = [btkvect;btk_shem_2023_039];
btk2vect = [btk2vect;btk2_shem_2023_039];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 040 ... FREDDY around 2023-02-23-03Z

rsmc_shem_2023_040 = [21.9,36.7,61.6;  22.2,32.9,28.0;  21.2,31.3,22.4;  18.8,29.2,16.8;  18.1,26.0,16.8];
my_shem_2023_040 = [21.7,36.7,60;      21.6,32.8,25;    21.6,30.5,20;    19.4,28.2,15;    19.9,25.2,15];
btk_shem_2023_040 = [22.5,37.6,60;     22.7,34.0,40;    22.2,33.3,20;    21.1,32.5,15;    21.1,31.5,15]; # JTWC best track
btk2_shem_2023_040 = [22.26,37.43,61.6;22.84,34.11,33.6;22.41,33.42,22.4;21.31,32.89,28.0;20.73,31.19,16.8]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2023_040];
myvect = [myvect;my_shem_2023_040];
btkvect = [btkvect;btk_shem_2023_040];
btk2vect = [btk2vect;btk2_shem_2023_040];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 041 ... JUDY around 2023-02-27-21Z

rsmc_shem_2023_041 = [17.5,168.2,72.8;21.6,170.4,72.8;25.3,174.0,0];
my_shem_2023_041 = [17.3,168.2,75;    21.0,170.2,75;  24.5,173.9,0];
btk_shem_2023_041 = [17.0,168.2,85;   21.2,171.4,90;  24.8,175.7,0]; # JTWC best track
btk2_shem_2023_041 = btk_shem_2023_041; #placeholder
rsmcvect = [rsmcvect;rsmc_shem_2023_041];
myvect = [myvect;my_shem_2023_041];
btkvect = [btkvect;btk_shem_2023_041];
btk2vect = [btk2vect;btk2_shem_2023_041];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;5;5;5];

# Shem 042 ... KEVIN around 2023-03-02-21Z

rsmc_shem_2023_042 = [19.7,169.6,100.8;23.9,176.3,100.8;27.4,185.5,0];
my_shem_2023_042 = [19.3,169.4,90;     23.1,175.8,90;   27.2,185.6,0];
btk_shem_2023_042 = [19.7,170.0,115;   24.6,177.3,105;  29.0,188.1,0]; # JTWC best track
btk2_shem_2023_042 = btk_shem_2023_042; #placeholder
rsmcvect = [rsmcvect;rsmc_shem_2023_042];
myvect = [myvect;my_shem_2023_042];
btkvect = [btkvect;btk_shem_2023_042];
btk2vect = [btk2vect;btk2_shem_2023_042];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;5;5;5];

# Shem 043 ... KEVIN around 2023-03-03-03Z

rsmc_shem_2023_043 = [20.2,170.9,100.8;24.7,178.5,78.4;28.8,188.2,0];
my_shem_2023_043 = [20.3,170.9,100;    24.4,178.2,80;  28.4,188.2,0];
btk_shem_2023_043 = [20.8,171.4,135;   25.8,180.2,90;  29.6,190.1,0]; # JTWC best track
btk2_shem_2023_043 = btk_shem_2023_043; #placeholder
rsmcvect = [rsmcvect;rsmc_shem_2023_043];
myvect = [myvect;my_shem_2023_043];
btkvect = [btkvect;btk_shem_2023_043];
btk2vect = [btk2vect;btk2_shem_2023_043];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;5;5;5];

# Shem 044 ... FREDDY around 2023-03-04-15Z

rsmc_shem_2023_044 = [23.0,42.0,61.6;  23.5,42.3,67.2;  22.5,41.2,67.2; 20.5,40.0,72.8;  18.9,39.0,84.0];
my_shem_2023_044 = [22.7,41.9,60;      23.2,41.7,65;    22.3,40.9,70;   20.3,39.5,70;    19.4,39.2,80];
btk_shem_2023_044 = [23.1,42.1,40;     24.1,42.9,50;    23.1,42.1,90;   21.1,40.2,75;    19.7,39.0,55]; # JTWC best track
btk2_shem_2023_044 = [22.97,42.16,56.0;24.07,42.83,56.0;23.05,42.1,84.0;21.13,40.23,72.8;19.88,38.89,61.6]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2023_044];
myvect = [myvect;my_shem_2023_044];
btkvect = [btkvect;btk_shem_2023_044];
btk2vect = [btk2vect;btk2_shem_2023_044];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 045 ... FREDDY around 2023-03-06-03Z

rsmc_shem_2023_045 = [23.2,42.3,67.2;  21.7,41.3,72.8; 20.2,40.2,84.0;  19.1,39.4,100.8;17.9,38.5,95.2];
my_shem_2023_045 = [23.6,42.6,60;      22.0,41.6,75;   21.0,40.1,80;    19.9,39.3,75;   19.3,38.4,80];
btk_shem_2023_045 = [23.8,42.6,65;     22.2,41.0,95;   20.5,39.6,60;    19.0,38.5,70;   18.0,37.6,75]; # JTWC best track
btk2_shem_2023_045 = [23.87,42.55,67.2;22.22,41.0,89.6;20.68,39.68,67.2;19.1,38.48,67.2;18.17,37.61,78.4]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2023_045];
myvect = [myvect;my_shem_2023_045];
btkvect = [btkvect;btk_shem_2023_045];
btk2vect = [btk2vect;btk2_shem_2023_045];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 046 ... FREDDY around 2023-03-06-15Z

rsmc_shem_2023_046 = [22.8,41.7,67.2; 21.1,40.5,72.8;  19.6,39.5,78.4;  18.2,38.7,100.8;17.1,37.5,95.2];
my_shem_2023_046 = [23.1,42.0,60;     21.2,40.1,75;    19.8,39.1,75;    18.8,38.1,80;   18.6,36.4,75];
btk_shem_2023_046 = [23.1,42.1,90;    21.1,40.2,75;    19.7,39.0,55;    18.4,38.3,75;   18.0,37.4,95]; # JTWC best track
btk2_shem_2023_046 = [23.05,42.1,84.0;21.13,40.23,72.8;19.88,38.89,61.6;18.33,38.3,78.4;17.97,37.4,95.2]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2023_046];
myvect = [myvect;my_shem_2023_046];
btkvect = [btkvect;btk_shem_2023_046];
btk2vect = [btk2vect;btk2_shem_2023_046];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 047 ... FREDDY around 2023-03-08-03Z

rsmc_shem_2023_047 = [20.7,39.5,67.2;  19.1,37.9,72.8; 17.6,37.1,61.6;  17.4,36.0,33.6;  17.5,35.3,28.0];
my_shem_2023_047 = [20.7,39.2,85;      19.0,37.3,80;   18.1,36.2,70;    17.7,34.3,35;    17.4,32.2,25];
btk_shem_2023_047 = [20.5,39.6,60;     19.0,38.5,70;   18.0,37.6,75;    17.5,36.9,75;    16.9,35.1,30]; # JTWC best track
btk2_shem_2023_047 = [20.68,39.68,67.2;19.1,38.48,67.2;18.17,37.61,78.4;17.48,36.98,72.8;17.06,35.16,33.6]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2023_047];
myvect = [myvect;my_shem_2023_047];
btkvect = [btkvect;btk_shem_2023_047];
btk2vect = [btk2vect;btk2_shem_2023_047];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 048 ... FREDDY around 2023-03-08-15Z

rsmc_shem_2023_048 = [20.0,38.6,67.2;  18.5,37.2,84.0; 17.5,36.4,50.4; 17.5,35.6,22.4];
my_shem_2023_048 = [19.9,38.7,80;      18.7,36.9,75;   17.6,36.0,50;   18.7,33.3,25];
btk_shem_2023_048 = [19.7,39.0,55;     18.4,38.3,75;   18.0,37.4,95;   17.2,36.4,50]; # JTWC best track
btk2_shem_2023_048 = [19.88,38.89,61.6;18.33,38.3,78.4;17.97,37.4,95.2;17.18,36.28,44.8]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2023_048];
myvect = [myvect;my_shem_2023_048];
btkvect = [btkvect;btk_shem_2023_048];
btk2vect = [btk2vect;btk2_shem_2023_048];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 049 ... FREDDY around 2023-03-09-15Z

rsmc_shem_2023_049 = [18.5,37.2,95.2; 17.7,36.3,39.2; 16.9,34.5,22.4;  16.4,32.9,22.4];
my_shem_2023_049 = [18.1,37.3,80;     17.2,35.3,50;   16.7,33.6,25;    16.5,31.1,20];
btk_shem_2023_049 = [18.4,38.3,75;    18.0,37.4,95;   17.2,36.4,50;    16.5,34.4,20]; # JTWC best track
btk2_shem_2023_049 = [18.33,38.3,67.2;17.97,37.4,95.2;17.18,36.28,44.8;16.73,34.25,28.0]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2023_049];
myvect = [myvect;my_shem_2023_049];
btkvect = [btkvect;btk_shem_2023_049];
btk2vect = [btk2vect;btk2_shem_2023_049];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 050 ... FREDDY around 2023-03-10-03Z

rsmc_shem_2023_050 = [17.8,37.4,100.8; 17.6,36.4,28.0;  17.0,35.1,22.4];
my_shem_2023_050 = [18.0,37.8,90;      18.1,36.6,50;    17.9,35.8,35];
btk_shem_2023_050 = [18.0,37.6,75;     17.5,36.9,75;    16.9,35.1,30]; # JTWC best track
btk2_shem_2023_050 = [18.17,37.61,78.4;17.48,36.98,72.8;17.06,35.16,33.6]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2023_050];
myvect = [myvect;my_shem_2023_050];
btkvect = [btkvect;btk_shem_2023_050];
btk2vect = [btk2vect;btk2_shem_2023_050];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 051 ... FREDDY around 2023-03-10-15Z

rsmc_shem_2023_051 = [17.6,37.3,72.8; 17.3,36.7,44.8;  16.7,35.9,28.0;  16.7,36.9,22.4];
my_shem_2023_051 = [17.5,37.6,80;     17.6,36.3,55;    16.9,35.2,35;    17.1,35.2,20];
btk_shem_2023_051 = [18.0,37.4,95;    17.2,36.4,50;    16.5,34.3,20;    16.8,34.4,20]; # JTWC best track
btk2_shem_2023_051 = [17.97,37.4,95.2;17.18,36.28,44.8;16.73,34.25,28.0;15.2,33.77,16.8]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2023_051];
myvect = [myvect;my_shem_2023_051];
btkvect = [btkvect;btk_shem_2023_051];
btk2vect = [btk2vect;btk2_shem_2023_051];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 052 ... HERMAN around 2023-03-29-15Z

rsmc_shem_2023_052 = [15.2,105.3,56.0;16.3,106.8,33.6; 16.9,106.2,28.0;17.0,104.0,28.0;16.5,101.3,28.0];
my_shem_2023_052 = [15.3,105.4,50;    16.4,107.1,35;   17.0,106.7,25;  17.4,104.6,25;  16.5,101.7,25];
btk_shem_2023_052 = [15.8,105.3,90;   17.8,106.7,130;  19.4,107.2,80;  19.8,105.3,30;  19.5,103.8,20]; # JTWC best track
btk2_shem_2023_052 = [15.6,105.4,78.4;17.8,106.7,128.8;19.3,106.9,84.0;19.8,105.3,33.6;19.55,103.90,22.4]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2023_052];
myvect = [myvect;my_shem_2023_052];
btkvect = [btkvect;btk_shem_2023_052];
btk2vect = [btk2vect;btk2_shem_2023_052];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 053 ... HERMAN around 2023-03-29-21Z

rsmc_shem_2023_053 = [15.7,105.8,56.0; 16.7,106.7,33.6; 17.1,105.6,28.0;17.1,103.2,28.0;16.5,100.4,28.0];
my_shem_2023_053 = [15.8,105.9,50;     17.0,107.1,30;   17.7,105.7,25;  18.0,103.3,25;  17.1,100.4,25];
btk_shem_2023_053 = [16.3,105.8,110;   18.2,106.9,120;  19.9,106.7,60;  19.9,104.8,25;  19.3,103.4,25]; # JTWC best track (except day 5)
btk2_shem_2023_053 = [16.3,105.8,106.4;18.3,107.0,123.2;19.5,106.8,67.2;19.9,104.9,28.0;19.36,103.5,22.4]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2023_053];
myvect = [myvect;my_shem_2023_053];
btkvect = [btkvect;btk_shem_2023_053];
btk2vect = [btk2vect;btk2_shem_2023_053];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 054 ... HERMAN around 2023-03-30-15Z

rsmc_shem_2023_054 = [16.8,107.0,44.8; 17.5,106.5,33.6;17.4,104.3,33.6;17.0,101.4,33.6; 16.0,98.6,28.0];
my_shem_2023_054 = [17.2,107.2,60;     18.3,107.1,35;  18.3,105.1,35;  18.0,102.2,35;   16.3,98.9,30];
btk_shem_2023_054 = [17.8,106.7,130;   19.4,107.3,80;  19.8,105.3,30;  19.5,103.8,20;   18.9,101.0,25]; # JTWC best track (except day 5)
btk2_shem_2023_054 = [17.8,106.7,128.8;19.3,106.9,84.0;19.8,105.3,33.6;19.55,103.9,22.4;18.9,101.0,25.0]; # BoM best track (except day 5)
rsmcvect = [rsmcvect;rsmc_shem_2023_054];
myvect = [myvect;my_shem_2023_054];
btkvect = [btkvect;btk_shem_2023_054];
btk2vect = [btk2vect;btk2_shem_2023_054];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 055 ... HERMAN around 2023-03-30-21Z

rsmc_shem_2023_055 = [17.4,106.8,72.8; 17.9,105.9,33.6;17.8,103.4,33.6;17.0,100.4,33.6; 15.8,97.8,22.4];
my_shem_2023_055 = [17.5,107.1,80;     18.3,106.6,40;  18.4,104.2,40;  18.0,100.9,40;   16.4,97.8,30];
btk_shem_2023_055 = [18.2,106.9,120;   19.6,106.7,60;  19.9,104.8,25;  19.3,103.4,25;   18.5,100.3,25]; # JTWC best track (except days 4-5)
btk2_shem_2023_055 = [18.3,107.0,123.2;19.5,106.8,67.2;19.9,104.9,28.0;19.36,103.5,22.4;18.5,100.3,25.0]; # BoM best track (except day 5)
rsmcvect = [rsmcvect;rsmc_shem_2023_055];
myvect = [myvect;my_shem_2023_055];
btkvect = [btkvect;btk_shem_2023_055];
btk2vect = [btk2vect;btk2_shem_2023_055];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 056 ... HERMAN around 2023-03-31-15Z

rsmc_shem_2023_056 = [19.4,107.1,84.0;20.2,106.3,39.2;20.3,104.8,33.6; 19.6,102.3,33.6];
my_shem_2023_056 = [19.3,107.2,80;    20.3,106.7,40;  20.4,105.2,35;   19.2,102.4,35];
btk_shem_2023_056 = [19.4,107.2,80;   19.8,105.3,30;  19.5,103.8,20;   18.9,101.0,25]; # JTWC best track (except day 4)
btk2_shem_2023_056 = [19.3,106.9,84.0;19.8,105.3,33.6;19.55,103.9,22.4;18.9,101.0,25.0]; # BoM best track (except day 4)
rsmcvect = [rsmcvect;rsmc_shem_2023_056];
myvect = [myvect;my_shem_2023_056];
btkvect = [btkvect;btk_shem_2023_056];
btk2vect = [btk2vect;btk2_shem_2023_056];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;4;4;4;4];

# Shem 057 ... HERMAN around 2023-04-01-21Z

rsmc_shem_2023_057 = [20.1,105.5,33.6;19.4,103.9,33.6; 18.1,101.4,33.6];
my_shem_2023_057 = [20.0,105.8,35;    19.7,104.4,30;   19.0,102.6,25];
btk_shem_2023_057 = [19.9,104.8,25;   19.3,103.4,25;   18.5,100.3,25]; # JTWC best track (day 1 only)
btk2_shem_2023_057 = [19.9,104.9,28.0;19.36,103.5,22.4;18.5,100.3,25.0]; # BoM best track (except day 3)
rsmcvect = [rsmcvect;rsmc_shem_2023_057];
myvect = [myvect;my_shem_2023_057];
btkvect = [btkvect;btk_shem_2023_057];
btk2vect = [btk2vect;btk2_shem_2023_057];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;4;4;4];

# Shem 058 ... HERMAN around 2023-04-02-03Z

rsmc_shem_2023_058 = [19.8,105.0,33.6;18.9,103.1,33.6; 17.5,99.7,33.6];
my_shem_2023_058 = [20.4,106.1,35;    20.2,104.2,30;   18.9,101.6,30];
btk_shem_2023_058 = [20.0,104.4,20;   19.5,102.6,25;   18.6,98.7,20]; # JTWC best track (day 1 only)
btk2_shem_2023_058 = [20.0,104.4,28.0;19.25,102.7,22.4;18.6,98.7,22.4]; # BoM best track (except day 3)
rsmcvect = [rsmcvect;rsmc_shem_2023_058];
myvect = [myvect;my_shem_2023_058];
btkvect = [btkvect;btk_shem_2023_058];
btk2vect = [btk2vect;btk2_shem_2023_058];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;4;4;4];

# Shem 059(a) ... 23U / 98S around 2023-04-08-15Z ... relative to BoM

rsmc_shem_2023_059a = [11.8,127.0,44.8;13.3,123.5,56.0;15.3,120.8,78.4;17.4,119.3,95.2;  21.3,121.1,84.0];
my_shem_2023_059a = [12.0,126.9,40;    13.7,123.9,55;  15.9,120.9,75;  19.3,119.0,95;    21.1,120.3,80];
btk_shem_2023_059a = [12.5,125.5,45;   13.1,123.2,45;  15.1,120.5,70;  16.0,119.7,85;    19.6,119.1,135]; # JTWC best track
btk2_shem_2023_059a = [12.1,126.0,33.6;13.3,122.8,39.2;15.2,120.5,61.6;16.65,119.66,89.6;19.4,119.1,134.4]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2023_059a];
myvect = [myvect;my_shem_2023_059a];
btkvect = [btkvect;btk_shem_2023_059a];
btk2vect = [btk2vect;btk2_shem_2023_059a];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 059(b) ... 23U / 98S around 2023-04-08-15Z ... relative to BMKG

rsmc_shem_2023_059b = [11.2,127.0,33.6;12.8,124.1,44.8;14.6,121.7,61.6];
my_shem_2023_059b = [12.0,126.9,40;    13.7,123.9,55;  15.9,120.9,75];
btk_shem_2023_059b = [12.5,125.5,45;   13.1,123.2,45;  15.1,120.5,70]; # JTWC best track
btk2_shem_2023_059b = [12.1,126.0,33.6;13.3,122.8,39.2;15.2,120.5,61.6]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2023_059b];
myvect = [myvect;my_shem_2023_059b];
btkvect = [btkvect;btk_shem_2023_059b];
btk2vect = [btk2vect;btk2_shem_2023_059b];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;8;8;8];

# Shem 060(a) ... 23U / 18S around 2023-04-08-21Z ... relative to BoM

rsmc_shem_2023_060a = [12.1,125.9,44.8;13.7,122.6,67.2;15.4,120.2,89.6; 17.5,119.0,100.8;21.2,121.8,72.8];
my_shem_2023_060a = [12.6,125.5,45;    14.4,122.3,65;  16.2,119.4,105;  18.7,118.0,125;  22.0,120.4,65];
btk_shem_2023_060a = [12.5,124.8,45;   13.5,122.3,40;  15.4,120.2,70;   17.1,119.1,100;  20.5,119.9,100]; # JTWC best track
btk2_shem_2023_060a = [12.3,125.0,33.6;13.7,122.4,44.8;15.5,120.15,61.6;16.95,119.2,95.2;20.4,120.0,106.4]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2023_060a];
myvect = [myvect;my_shem_2023_060a];
btkvect = [btkvect;btk_shem_2023_060a];
btk2vect = [btk2vect;btk2_shem_2023_060a];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 060(b) ... 23U / 18S around 2023-04-08-21Z ... relative to BMKG

rsmc_shem_2023_060b = [12.4,125.5,44.8;14.1,122.4,50.4;15.9,119.9,61.6];
my_shem_2023_060b = [12.6,125.5,45;    14.4,122.3,65;  16.2,119.4,105];
btk_shem_2023_060b = [12.5,124.8,45;   13.5,122.3,40;  15.4,120.2,70]; # JTWC best track
btk2_shem_2023_060b = [12.3,125.0,33.6;13.7,122.4,44.8;15.5,120.15,61.6]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2023_060b];
myvect = [myvect;my_shem_2023_060b];
btkvect = [btkvect;btk_shem_2023_060b];
btk2vect = [btk2vect;btk2_shem_2023_060b];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;8;8;8];

# Shem 061 ... 23U / 18S around 2023-04-09-03Z

rsmc_shem_2023_061 = [12.2,124.9,50.4;13.9,122.0,72.8;15.4,119.9,95.2; 17.8,118.8,106.4;21.6,122.5,50.4];
my_shem_2023_061 = [13.3,123.9,60;    15.4,121.2,80;  17.2,119.6,110;  19.9,118.9,125;  24.3,123.7,40];
btk_shem_2023_061 = [12.5,124.2,40;   13.9,121.3,45;  15.6,119.9,70;   17.8,118.9,110;  21.4,121.3,75]; # JTWC best track
btk2_shem_2023_061 = [12.5,123.8,33.6;14.1,122.0,44.8;15.7,119.85,67.2;17.7,118.9,100.8;21.3,121.3,72.8]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2023_061];
myvect = [myvect;my_shem_2023_061];
btkvect = [btkvect;btk_shem_2023_061];
btk2vect = [btk2vect;btk2_shem_2023_061];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 062 ... 23U / 18S around 2023-04-09-09Z

rsmc_shem_2023_062 = [12.8,123.9,56.0;14.4,121.2,78.4;16.1,119.2,95.2;  18.8,118.9,112.0; 23.0,124.4,44.8];
my_shem_2023_062 = [13.7,122.9,70;    15.4,120.2,100; 17.1,118.6,120;   20.1,119.2,105;   25.0,125.0,40];
btk_shem_2023_062 = [12.8,123.6,40;   13.9,121.3,55;  15.8,119.8,75;    18.8,118.7,125;   22.0,123.4,65]; # JTWC best track
btk2_shem_2023_062 = [12.9,123.2,39.2;14.6,121.3,44.8;15.97,119.66,72.8;18.7,118.75,123.2;22.1,123.1,50.4]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2023_062];
myvect = [myvect;my_shem_2023_062];
btkvect = [btkvect;btk_shem_2023_062];
btk2vect = [btk2vect;btk2_shem_2023_062];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 063 ... 23U / 18S around 2023-04-09-15Z

rsmc_shem_2023_063 = [13.6,122.7,61.6;15.0,120.9,84.0;16.7,119.6,100.8; 20.3,120.8,95.2; 25.5,129.1,39.2];
my_shem_2023_063 = [14.3,122.1,65;    16.0,119.8,100; 18.0,118.9,125;   21.4,120.9,90;   26.3,128.6,40];
btk_shem_2023_063 = [13.1,123.2,40;   15.1,120.5,70;  16.0,119.7,85;    19.6,119.1,135;  22.2,125.4,45]; # JTWC best track
btk2_shem_2023_063 = [13.3,122.8,39.2;15.2,120.5,61.6;16.65,119.66,89.6;19.4,119.1,134.4;23.0,126.8,33.6]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2023_063];
myvect = [myvect;my_shem_2023_063];
btkvect = [btkvect;btk_shem_2023_063];
btk2vect = [btk2vect;btk2_shem_2023_063];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 064 ... 23U / 18S around 2023-04-09-21Z

rsmc_shem_2023_064 = [14.0,121.9,50.4;15.4,120.3,78.4; 17.5,119.4,106.4;21.5,122.0,78.4; 26.7,131.9,33.6];
my_shem_2023_064 = [14.4,121.2,65;    15.7,119.5,100;  17.8,118.4,125;  21.5,121.0,85;   27.6,131.6,35];
btk_shem_2023_064 = [13.5,122.3,40;   15.4,120.2,70;   17.1,119.1,100;  20.5,119.9,100;  22.7,128.3,35]; # JTWC best track
btk2_shem_2023_064 = [13.7,122.4,44.8;15.5,120.15,61.6;16.95,119.2,95.2;20.4,120.0,106.4;22.7,130.7,28.0]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2023_064];
myvect = [myvect;my_shem_2023_064];
btkvect = [btkvect;btk_shem_2023_064];
btk2vect = [btk2vect;btk2_shem_2023_064];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 065 ... 23U / 18S around 2023-04-10-15Z

rsmc_shem_2023_065 = [15.0,121.1,61.6;16.6,119.5,95.2;  19.2,119.8,112.0;23.2,127.2,39.2];
my_shem_2023_065 = [14.9,120.6,70;    17.3,119.1,110;   20.1,120.9,100;  24.8,130.0,35];
btk_shem_2023_065 = [15.1,120.5,70;   16.0,119.7,85;    19.6,119.1,135;  22.2,125.4,45]; # JTWC best track
btk2_shem_2023_065 = [15.2,120.5,61.6;16.65,119.66,89.6;19.4,119.1,134.4;23.0,126.8,33.6]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2023_065];
myvect = [myvect;my_shem_2023_065];
btkvect = [btkvect;btk_shem_2023_065];
btk2vect = [btk2vect;btk2_shem_2023_065];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;4;4;4;4];

# Shem 066 ... 23U / 18S around 2023-04-10-21Z

rsmc_shem_2023_066 = [15.3,120.8,67.2; 17.1,119.3,100.8;20.1,121.0,100.8;24.0,130.4,33.6];
my_shem_2023_066 = [15.3,120.5,75;     17.4,119.4,115;  20.4,121.7,100;  24.7,131.9,30];
btk_shem_2023_066 = [15.4,120.2,70;    17.1,119.1,100;  20.5,119.9,100;  22.7,128.3,35]; # JTWC best track
btk2_shem_2023_066 = [15.5,120.15,61.6;16.95,119.2,95.2;20.4,120.0,106.4;22.7,130.7,28.0]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2023_066];
myvect = [myvect;my_shem_2023_066];
btkvect = [btkvect;btk_shem_2023_066];
btk2vect = [btk2vect;btk2_shem_2023_066];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;4;4;4;4];

# Shem 067 ... ILSA around 2023-04-11-15Z

rsmc_shem_2023_067 = [16.5,119.3,89.6;  18.9,119.5,106.4;21.8,125.7,44.8];
my_shem_2023_067 = [16.8,119.5,95;      19.5,119.7,105;  23.0,126.7,40];
btk_shem_2023_067 = [16.0,119.7,85;     19.6,119.1,135;  22.2,125.4,45]; # JTWC best track
btk2_shem_2023_067 = [16.65,119.66,89.6;19.4,119.1,134.4;23.0,126.8,33.6]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2023_067];
myvect = [myvect;my_shem_2023_067];
btkvect = [btkvect;btk_shem_2023_067];
btk2vect = [btk2vect;btk2_shem_2023_067];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;4;4;4];

# Shem 068 ... ILSA around 2023-04-11-21Z

rsmc_shem_2023_068 = [17.1,119.3,95.2; 19.7,120.2,112.0;22.2,127.9,44.8];
my_shem_2023_068 = [17.3,119.2,110;    19.9,120.7,110;  22.6,129.0,40];
btk_shem_2023_068 = [17.1,119.1,100;   20.5,119.9,100;  22.7,128.3,35]; # JTWC best track
btk2_shem_2023_068 = [16.95,119.2,95.2;20.4,120.0,106.4;22.7,130.7,28.0]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2023_068];
myvect = [myvect;my_shem_2023_068];
btkvect = [btkvect;btk_shem_2023_068];
btk2vect = [btk2vect;btk2_shem_2023_068];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;4;4;4];

# Shem 069 ... ILSA around 2023-04-12-03Z

rsmc_shem_2023_069 = [17.4,119.0,106.4;20.2,121.4,84.0;22.4,130.8,39.2];
my_shem_2023_069 = [17.5,119.0,110;    20.2,121.9,100; 22.5,131.5,30];
btk_shem_2023_069 = [17.8,118.9,110;   21.4,121.3,75;  23.0,130.5,30]; # JTWC best track
btk2_shem_2023_069 = [17.7,118.9,100.8;21.3,121.3,72.8;23.0,130.5,28.0]; # BoM best track (except day 3)
rsmcvect = [rsmcvect;rsmc_shem_2023_069];
myvect = [myvect;my_shem_2023_069];
btkvect = [btkvect;btk_shem_2023_069];
btk2vect = [btk2vect;btk2_shem_2023_069];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;4;4;4];

# Shem 070 ... ILSA around 2023-04-12-15Z

rsmc_shem_2023_070 = [19.2,119.3,112.0;21.9,125.0,50.4];
my_shem_2023_070 = [18.9,119.4,125;    21.9,125.3,45];
btk_shem_2023_070 = [19.6,119.1,135;   22.2,125.4,45]; # JTWC best track
btk2_shem_2023_070 = [19.4,119.1,134.4;23.0,126.8,33.6]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2023_070];
myvect = [myvect;my_shem_2023_070];
btkvect = [btkvect;btk_shem_2023_070];
btk2vect = [btk2vect;btk2_shem_2023_070];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;4;4];

# Wpac 001 ... TD / 01W around 2023-04-19-15Z

rsmc_wpac_2023_001 = [9.4,156.6,39.2;10.4,154.3,50.4;11.0,151.7,39.2;11.6,148.4,0];
my_wpac_2023_001 = [8.3,156.5,35;    10.0,154.1,35;  10.6,151.4,20;  11.3,147.7,0];
btk_wpac_2023_001 = [9.7,156.4,45;   10.2,155.7,40;  10.3,153.0,15;  10.5,152.3,0]; # JTWC best track
btk2_wpac_2023_001 = [9.6,156.6,39.2;10.4,155.3,44.8;10.3,153.0,16.8;10.5,152.3,0]; # JMA best track (except days 3-4 JTWC btk)
rsmcvect = [rsmcvect;rsmc_wpac_2023_001];
myvect = [myvect;my_wpac_2023_001];
btkvect = [btkvect;btk_wpac_2023_001];
btk2vect = [btk2vect;btk2_wpac_2023_001];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Wpac 002 ... TD / 01W around 2023-04-19-21Z

rsmc_wpac_2023_002 = [9.4,155.9,44.8;10.7,153.9,39.2;11.2,151.1,0];
my_wpac_2023_002 = [8.7,155.9,40;    10.2,154.5,30;  11.1,152.2,0];
btk_wpac_2023_002 = [9.7,156.4,45;   10.2,154.8,30;  10.7,152.7,0]; # JTWC best track
btk2_wpac_2023_002 = [9.9,156.3,44.8;10.4,154.5,39.2;10.7,152.7,0]; # JMA best track (except day 3 JTWC btk)
rsmcvect = [rsmcvect;rsmc_wpac_2023_002];
myvect = [myvect;my_wpac_2023_002];
btkvect = [btkvect;btk_wpac_2023_002];
btk2vect = [btk2vect;btk2_wpac_2023_002];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Wpac 003 ... SANVU around 2023-04-20-15Z

rsmc_wpac_2023_003 = [10.5,154.5,39.2;11.6,152.6,39.2;12.2,149.9,0];
my_wpac_2023_003 = [11.0,154.7,35;    12.3,152.9,30;  12.9,150.6,0];
btk_wpac_2023_003 = [10.2,155.7,40;   10.3,153.0,15;  10.5,152.3,0]; # JTWC best track
btk2_wpac_2023_003 = [10.4,155.3,44.8;10.3,153.0,16.8;10.5,152.3,0]; # JMA best track (except days 2-3 JTWC btk)
rsmcvect = [rsmcvect;rsmc_wpac_2023_003];
myvect = [myvect;my_wpac_2023_003];
btkvect = [btkvect;btk_wpac_2023_003];
btk2vect = [btk2vect;btk2_wpac_2023_003];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Wpac 004 ... SANVU around 2023-04-20-21Z

rsmc_wpac_2023_004 = [10.8,154.4,39.2;11.9,152.1,0];
my_wpac_2023_004 = [10.9,154.4,35;    12.1,152.8,0];
btk_wpac_2023_004 = [10.2,154.8,30;   10.7,152.7,0]; # JTWC best track
btk2_wpac_2023_004 = [10.4,154.5,39.2;10.7,152.7,0]; # JMA best track (except day 2 JTWC btk)
rsmcvect = [rsmcvect;rsmc_wpac_2023_004];
myvect = [myvect;my_wpac_2023_004];
btkvect = [btkvect;btk_wpac_2023_004];
btk2vect = [btk2vect;btk2_wpac_2023_004];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Wpac 005 ... SANVU around 2023-04-21-15Z

rsmc_wpac_2023_005 = [11.3,154.1,39.2;11.6,151.9,0];
my_wpac_2023_005 = [11.2,154.4,35;    11.8,152.6,0];
btk_wpac_2023_005 = [10.3,153.0,15;   10.5,152.3,0]; # JTWC best track
btk2_wpac_2023_005 = btk_wpac_2023_005; #placeholder (nothing in JMA btk)
rsmcvect = [rsmcvect;rsmc_wpac_2023_005];
myvect = [myvect;my_wpac_2023_005];
btkvect = [btkvect;btk_wpac_2023_005];
btk2vect = [btk2vect;btk2_wpac_2023_005];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Wpac 006 ... SANVU around 2023-04-21-21Z

rsmc_wpac_2023_006 = [11.5,153.6,39.2;11.6,151.1,0];
my_wpac_2023_006 = [11.2,153.6,35;    11.6,151.8,0];
btk_wpac_2023_006 = [10.7,152.7,15;   10.5,152.2,0]; # JTWC best track
btk2_wpac_2023_006 = btk_wpac_2023_006; #placeholder (nothing in JMA btk)
rsmcvect = [rsmcvect;rsmc_wpac_2023_006];
myvect = [myvect;my_wpac_2023_006];
btkvect = [btkvect;btk_wpac_2023_006];
btk2vect = [btk2vect;btk2_wpac_2023_006];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Nio 01 ... BOB 02 / 91B around 2023-05-09-21Z

rsmc_nio_2023_01 = [10.9,87.5,47.7;13.1,87.4,68.9;15.3,88.6,84.8;18.7,91.3,79.5; 22.8,94.0,31.8];
my_nio_2023_01 = [10.8,87.8,45;    13.0,87.5,70;  15.1,88.7,85;  18.2,91.4,75;   22.5,94.2,30];
btk_nio_2023_01 = [10.7,88.4,30;   12.8,88.1,60;  14.9,88.9,105; 17.9,91.3,140;  23.8,95.8,45]; # JTWC best track
btk2_nio_2023_01 = [10.8,88.2,31.8;12.7,88.1,53.0;15.1,88.8,95.4;17.9,91.0,121.9;22.7,94.6,53.0]; # IMD prelim report
rsmcvect = [rsmcvect;rsmc_nio_2023_01];
myvect = [myvect;my_nio_2023_01];
btkvect = [btkvect;btk_nio_2023_01];
btk2vect = [btk2vect;btk2_nio_2023_01];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Nio 02 ... BOB 02 / 91B around 2023-05-10-03Z

rsmc_nio_2023_02 = [11.0,87.6,53.0;13.1,87.6,68.9;15.8,89.3,84.8; 20.0,92.2,68.9];
my_nio_2023_02 = [11.2,87.9,50;    13.2,87.7,70;  16.0,89.5,85;   19.7,92.3,70];
btk_nio_2023_02 = [11.1,88.2,35;   13.4,88.2,65;  15.3,89.2,110;  18.7,91.9,145]; # JTWC best track
btk2_nio_2023_02 = [11.2,88.1,37.1;13.2,88.1,68.9;15.4,89.1,106.0;18.7,91.5,121.9]; # IMD prelim report
rsmcvect = [rsmcvect;rsmc_nio_2023_02];
myvect = [myvect;my_nio_2023_02];
btkvect = [btkvect;btk_nio_2023_02];
btk2vect = [btk2vect;btk2_nio_2023_02];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Nio 03 ... BOB 02 / 91B around 2023-05-10-15Z

rsmc_nio_2023_03 = [12.2,87.8,53.0;14.4,88.4,74.2;17.5,90.5,79.5; 22.1,94.5,31.8];
my_nio_2023_03 = [12.1,87.7,50;    14.2,88.1,75;  17.2,90.4,80;   22.0,94.6,35];
btk_nio_2023_03 = [12.0,88.1,55;   14.5,88.5,95;  16.9,90.7,135;  21.0,93.3,100]; # JTWC best track
btk2_nio_2023_03 = [12.2,88.0,53.0;14.6,88.6,84.8;16.9,90.8,116.6;21.1,93.3,79.5]; # IMD prelim report
rsmcvect = [rsmcvect;rsmc_nio_2023_03];
myvect = [myvect;my_nio_2023_03];
btkvect = [btkvect;btk_nio_2023_03];
btk2vect = [btk2vect;btk2_nio_2023_03];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Nio 04 ... BOB 02 / 91B around 2023-05-10-21Z

rsmc_nio_2023_04 = [12.9,87.9,53.0;15.1,88.8,79.5;18.4,91.3,79.5; 23.5,95.7,31.8];
my_nio_2023_04 = [12.8,87.8,55;    15.0,88.8,80;  18.1,91.3,80;   23.3,95.9,30];
btk_nio_2023_04 = [12.8,88.1,60;   14.9,88.9,105; 17.9,91.3,140;  23.8,94.8,45]; # JTWC best track
btk2_nio_2023_04 = [12.7,88.1,53.0;15.1,88.8,95.4;17.9,91.0,121.9;22.7,94.6,53.0]; # IMD prelim report
rsmcvect = [rsmcvect;rsmc_nio_2023_04];
myvect = [myvect;my_nio_2023_04];
btkvect = [btkvect;btk_nio_2023_04];
btk2vect = [btk2vect;btk2_nio_2023_04];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Nio 05 ... BOB 02 / 01B around 2023-05-11-03Z

rsmc_nio_2023_05 = [13.2,88.0,58.3;15.9,89.4,79.5; 19.4,92.2,74.2];
my_nio_2023_05 = [13.5,88.2,65;    15.6,89.2,85;   19.0,92.0,85];
btk_nio_2023_05 = [13.4,88.2,65;   15.3,89.2,110;  18.7,91.9,145]; # JTWC best track
btk2_nio_2023_05 = [13.2,88.1,68.9;15.4,89.1,106.0;18.7,91.5,121.9]; # IMD prelim report
rsmcvect = [rsmcvect;rsmc_nio_2023_05];
myvect = [myvect;my_nio_2023_05];
btkvect = [btkvect;btk_nio_2023_05];
btk2vect = [btk2vect;btk2_nio_2023_05];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Nio 06 ... MOCHA around 2023-05-11-15Z

rsmc_nio_2023_06 = [14.5,88.5,79.5;17.5,90.5,90.1; 21.3,93.7,63.6];
my_nio_2023_06 = [14.2,88.5,80;    17.0,90.5,95;   20.8,93.6,80];
btk_nio_2023_06 = [14.5,88.5,95;   16.9,90.7,135;  21.0,93.3,100]; # JTWC best track
btk2_nio_2023_06 = [14.6,88.6,84.8;16.9,90.8,116.6;21.1,93.3,79.5]; # IMD prelim report
rsmcvect = [rsmcvect;rsmc_nio_2023_06];
myvect = [myvect;my_nio_2023_06];
btkvect = [btkvect;btk_nio_2023_06];
btk2vect = [btk2vect;btk2_nio_2023_06];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Nio 07 ... MOCHA around 2023-05-11-21Z

rsmc_nio_2023_07 = [15.2,89.0,84.8;18.3,91.2,90.1; 22.4,94.6,42.4];
my_nio_2023_07 = [14.8,88.8,85;    17.5,91.0,105;  21.8,93.5,70];
btk_nio_2023_07 = [14.9,88.9,105;  17.9,91.3,140;  23.8,94.8,45]; # JTWC best track
btk2_nio_2023_07 = [15.1,88.8,95.4;17.9,91.0,121.9;22.7,94.6,53.0]; # IMD prelim report
rsmcvect = [rsmcvect;rsmc_nio_2023_07];
myvect = [myvect;my_nio_2023_07];
btkvect = [btkvect;btk_nio_2023_07];
btk2vect = [btk2vect;btk2_nio_2023_07];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Nio 08 ... MOCHA around 2023-05-12-03Z

rsmc_nio_2023_08 = [15.9,89.4,90.1; 19.1,91.9,90.1; 23.5,95.5,26.5];
my_nio_2023_08 = [15.4,89.2,90;     18.8,91.5,110;  24.3,94.8,50];
btk_nio_2023_08 = [15.3,89.2,110;   18.7,91.9,145;  26.2,97.8,20]; # JTWC best track
btk2_nio_2023_08 = [15.4,89.1,106.0;18.7,91.5,121.9;23.9,97.8,26.5]; # IMD prelim report
rsmcvect = [rsmcvect;rsmc_nio_2023_08];
myvect = [myvect;my_nio_2023_08];
btkvect = [btkvect;btk_nio_2023_08];
btk2vect = [btk2vect;btk2_nio_2023_08];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Nio 09 ... MOCHA around 2023-05-12-15Z

rsmc_nio_2023_09 = [17.5,90.5,106.0;21.2,93.6,68.9];
my_nio_2023_09 = [17.2,90.4,110;    21.3,93.4,80];
btk_nio_2023_09 = [16.9,90.7,135;   21.0,93.3,100]; # JTWC best track
btk2_nio_2023_09 = [16.9,90.8,116.6;21.1,93.3,79.5]; # IMD prelim report
rsmcvect = [rsmcvect;rsmc_nio_2023_09];
myvect = [myvect;my_nio_2023_09];
btkvect = [btkvect;btk_nio_2023_09];
btk2vect = [btk2vect;btk2_nio_2023_09];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Nio 10 ... MOCHA around 2023-05-12-21Z

rsmc_nio_2023_10 = [18.3,91.2,106.0;22.3,94.5,53.0];
my_nio_2023_10 = [18.2,90.9,120;    22.9,94.2,55];
btk_nio_2023_10 = [17.9,91.3,140;   23.8,94.8,45]; # JTWC best track
btk2_nio_2023_10 = [17.9,91.0,121.9;22.7,94.6,53.0]; # IMD prelim report
rsmcvect = [rsmcvect;rsmc_nio_2023_10];
myvect = [myvect;my_nio_2023_10];
btkvect = [btkvect;btk_nio_2023_10];
btk2vect = [btk2vect;btk2_nio_2023_10];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Nio 11 ... MOCHA around 2023-05-13-15Z

rsmc_nio_2023_11 = [21.4,93.5,68.9];
my_nio_2023_11 = [21.5,93.3,90];
btk_nio_2023_11 = [21.0,93.3,100]; # JTWC best track
btk2_nio_2023_11 = [21.1,93.3,79.5]; # IMD prelim report
rsmcvect = [rsmcvect;rsmc_nio_2023_11];
myvect = [myvect;my_nio_2023_11];
btkvect = [btkvect;btk_nio_2023_11];
btk2vect = [btk2vect;btk2_nio_2023_11];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;2];

# Shem 071 ... FABIEN around 2023-05-14-21Z

rsmc_shem_2023_071 = [5.9,76.8,61.6;  8.0,74.8,84.0;   9.7,73.5,100.8;10.6,72.3,100.8;11.3,70.4,89.6];
my_shem_2023_071 = [6.1,76.7,80;      8.2,74.5,105;    9.3,73.4,105;  10.5,72.7,95;   10.6,71.3,90];
btk_shem_2023_071 = [5.8,76.8,90;     7.8,74.5,105;    8.9,73.0,65;   9.2,71.0,45;    9.9,69.6,45]; # JTWC best track
btk2_shem_2023_071 = [5.71,76.61,78.4;7.84,74.48,106.4;8.79,73.0,72.8;9.3,70.96,50.4; 9.88,69.4,61.6]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2023_071];
myvect = [myvect;my_shem_2023_071];
btkvect = [btkvect;btk_shem_2023_071];
btk2vect = [btk2vect;btk2_shem_2023_071];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 072 ... FABIEN around 2023-05-15-21Z

rsmc_shem_2023_072 = [8.2,74.6,89.6;   10.1,72.8,106.4;10.4,70.5,100.8;9.8,69.0,89.6; 9.6,68.9,61.6];
my_shem_2023_072 = [7.9,74.1,110;      9.3,72.5,105;   9.6,70.2,100;   9.4,68.7,90;   9.2,69.1,80];
btk_shem_2023_072 = [7.8,74.5,105;     8.9,73.0,65;    9.2,71.0,45;    9.9,69.6,45;   10.2,69.0,40]; # JTWC best track
btk2_shem_2023_072 = [7.84,74.48,106.4;8.79,73.0,72.8; 9.3,70.96,50.4; 9.88,69.4,61.6;10.6,69.06,44.8]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2023_072];
myvect = [myvect;my_shem_2023_072];
btkvect = [btkvect;btk_shem_2023_072];
btk2vect = [btk2vect;btk2_shem_2023_072];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 073 ... FABIEN around 2023-05-16-03Z

rsmc_shem_2023_073 = [8.9,73.9,95.2;  10.1,72.2,106.4;10.2,70.1,100.8;9.6,69.2,84.0;   9.5,69.4,44.8];
my_shem_2023_073 = [8.6,73.5,100;     9.5,71.9,100;   9.3,69.4,95;    8.9,68.1,75;     8.5,68.6,70];
btk_shem_2023_073 = [8.3,74.1,100;    8.9,72.5,55;    9.5,70.4,40;    9.9,69.4,50;     10.3,68.9,35]; # JTWC best track
btk2_shem_2023_073 = [8.28,74.1,100.8;8.83,72.45,61.6;9.46,70.33,50.4;10.05,69.38,61.6;10.56,68.98,44.8]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2023_073];
myvect = [myvect;my_shem_2023_073];
btkvect = [btkvect;btk_shem_2023_073];
btk2vect = [btk2vect;btk2_shem_2023_073];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 074 ... FABIEN around 2023-05-16-15Z

rsmc_shem_2023_074 = [9.3,73.1,100.8;9.7,71.1,89.6;  9.4,69.2,78.4; 9.1,69.1,67.2;   9.2,69.4,44.8];
my_shem_2023_074 = [9.3,73.1,100;    9.7,71.1,100;   9.2,69.0,90;   8.9,68.8,75;     9.0,69.2,70];
btk_shem_2023_074 = [8.8,73.4,80;    9.0,71.6,45;    9.8,69.8,40;   10.1,69.2,50;    10.8,68.8,30]; # JTWC best track
btk2_shem_2023_074 = [8.8,73.32,78.4;9.01,71.32,50.4;9.65,69.8,61.6;10.49,69.39,50.4;10.79,68.9,33.6]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2023_074];
myvect = [myvect;my_shem_2023_074];
btkvect = [btkvect;btk_shem_2023_074];
btk2vect = [btk2vect;btk2_shem_2023_074];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 075 ... FABIEN around 2023-05-16-21Z

rsmc_shem_2023_075 = [9.6,72.5,100.8;9.7,70.4,89.6; 9.4,69.1,78.4; 9.2,69.2,61.6;  9.4,69.5,44.8];
my_shem_2023_075 = [9.6,72.3,100;    9.6,70.1,95;   9.3,68.7,85;   9.2,68.1,75;    9.5,68.3,70];
btk_shem_2023_075 = [8.9,73.0,65;    9.2,71.0,45;   9.9,69.6,45;   10.2,69.0,40;   10.9,68.8,25]; # JTWC best track
btk2_shem_2023_075 = [8.79,73.0,72.8;9.3,70.96,50.4;9.88,69.4,61.6;10.6,69.06,44.8;10.82,68.75,28.0]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2023_075];
myvect = [myvect;my_shem_2023_075];
btkvect = [btkvect;btk_shem_2023_075];
btk2vect = [btk2vect;btk2_shem_2023_075];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 076 ... FABIEN around 2023-05-17-09Z

rsmc_shem_2023_076 = [9.8,71.9,84.0; 9.8,69.9,78.4;  9.7,69.8,56.0;   10.1,70.4,39.2;  11.1,70.7,33.6];
my_shem_2023_076 = [9.7,72.0,80;     9.7,69.9,80;    9.7,69.8,65;     10.0,70.1,55;    10.9,70.7,50];
btk_shem_2023_076 = [8.9,72.0,50;    9.7,70.0,40;    10.0,69.3,50;    10.5,68.8,30;    12.6,69.3,30]; # JTWC best track
btk2_shem_2023_076 = [8.8,71.88,50.4;9.55,69.94,56.0;10.11,69.52,56.0;10.63,68.99,39.2;12.52,69.29,33.6]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2023_076];
myvect = [myvect;my_shem_2023_076];
btkvect = [btkvect;btk_shem_2023_076];
btk2vect = [btk2vect;btk2_shem_2023_076];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 077 ... FABIEN around 2023-05-17-15Z

rsmc_shem_2023_077 = [9.7,71.0,61.6;  9.8,69.3,61.6; 10.2,69.6,50.4;  11.3,70.4,39.2; 12.4,70.0,33.6];
my_shem_2023_077 = [9.6,71.2,75;      9.3,69.1,65;   9.3,68.7,55;     9.7,68.6,45;    10.3,68.5,50];
btk_shem_2023_077 = [9.0,71.6,45;     9.8,69.8,40;   10.1,69.2,50;    10.8,68.8,30;   12.9,69.4,30]; # JTWC best track
btk2_shem_2023_077 = [9.01,71.23,50.4;9.65,69.8,61.6;10.49,69.39,50.4;10.79,68.9,33.6;13.01,69.35,33.6]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2023_077];
myvect = [myvect;my_shem_2023_077];
btkvect = [btkvect;btk_shem_2023_077];
btk2vect = [btk2vect;btk2_shem_2023_077];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 078 ... FABIEN around 2023-05-17-21Z

rsmc_shem_2023_078 = [9.7,70.5,61.6; 9.8,69.1,61.6; 10.5,69.7,44.8; 11.9,69.7,39.2;  13.2,68.7,33.6];
my_shem_2023_078 = [9.3,71.1,60;     9.3,69.3,55;   9.5,69.9,50;    10.0,69.7,40;    10.5,69.5,45];
btk_shem_2023_078 = [9.2,71.0,45;    9.9,69.6,45;   10.2,69.0,40;   10.9,68.8,25;    13.2,69.6,30]; # JTWC best track
btk2_shem_2023_078 = [9.3,70.96,50.4;9.88,69.4,61.6;10.6,69.06,44.8;10.82,68.75,28.0;13.23,69.57,28.0]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2023_078];
myvect = [myvect;my_shem_2023_078];
btkvect = [btkvect;btk_shem_2023_078];
btk2vect = [btk2vect;btk2_shem_2023_078];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 079 ... FABIEN around 2023-05-18-21Z

rsmc_shem_2023_079 = [9.7,69.2,56.0; 10.5,69.5,56.0; 11.6,69.9,50.4;  12.5,69.5,39.2;  12.9,68.8,33.6];
my_shem_2023_079 = [9.8,69.2,45;     10.1,68.9,45;   11.0,69.5,50;    11.1,68.7,40;    11.9,68.2,40];
btk_shem_2023_079 = [9.9,69.6,45;    10.2,69.0,40;   10.9,68.8,25;    13.2,69.6,30;    15.7,70.4,30]; # JTWC best track
btk2_shem_2023_079 = [9.88,69.4,61.6;10.6,69.06,44.8;10.82,68.75,28.0;13.23,69.57,28.0;15.61,70.38,28.0]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2023_079];
myvect = [myvect;my_shem_2023_079];
btkvect = [btkvect;btk_shem_2023_079];
btk2vect = [btk2vect;btk2_shem_2023_079];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 080 ... FABIEN around 2023-05-19-03Z

rsmc_shem_2023_080 = [10.0,69.3,44.8;  10.7,69.7,50.4;  11.7,69.9,39.2;  12.7,69.5,33.6;  12.9,68.5,28.0];
my_shem_2023_080 = [10.0,69.4,40;      10.4,69.6,45;    11.3,69.5,45;    12.2,69.2,30;    12.7,68.7,35];
btk_shem_2023_080 = [9.9,69.4,50;      10.3,68.9,35;    11.7,69.0,30;    13.8,70.1,30;    16.5,69.9,30]; # JTWC best track
btk2_shem_2023_080 = [10.05,69.38,61.6;10.56,68.98,44.8;11.56,69.13,28.0;13.79,70.15,33.6;16.33,70.0,28.0]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2023_080];
myvect = [myvect;my_shem_2023_080];
btkvect = [btkvect;btk_shem_2023_080];
btk2vect = [btk2vect;btk2_shem_2023_080];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 081 ... FABIEN around 2023-05-19-21Z

rsmc_shem_2023_081 = [10.8,69.2,50.4; 11.9,69.1,44.8;  13.4,69.1,33.6;  13.9,68.7,28.0;  14.6,67.2,28.0];
my_shem_2023_081 = [11.0,69.1,45;     11.8,68.7,50;    13.0,68.7,40;    13.1,68.3,30;    13.7,66.9,40];
btk_shem_2023_081 = [10.2,69.0,40;    10.9,68.8,25;    13.2,69.6,30;    15.7,70.4,30;    19.2,68.7,30]; # JTWC best track
btk2_shem_2023_081 = [10.6,69.06,44.8;10.82,68.75,28.0;13.23,69.57,28.0;15.61,70.38,28.0;19.5,68.22,28.0]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2023_081];
myvect = [myvect;my_shem_2023_081];
btkvect = [btkvect;btk_shem_2023_081];
btk2vect = [btk2vect;btk2_shem_2023_081];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 007 ... TD / 02W around 2023-05-20-03Z

rsmc_wpac_2023_007 = [7.0,148.4,44.8;9.3,146.5,61.6;12.1,145.5,78.4; 14.7,144.4,89.6; 16.0,142.0,95.2];
my_wpac_2023_007 = [7.1,148.6,45;    9.6,147.3,70;  12.5,146.8,80;   14.9,145.3,90;   16.5,143.0,95];
btk_wpac_2023_007 = [7.0,148.9,50;   9.0,147.4,85;  11.2,146.8,115;  13.0,145.6,105;  14.2,143.5,140]; # JTWC best track
btk2_wpac_2023_007 = [7.0,148.7,56.0;8.6,147.3,72.8;11.2,146.9,106.4;13.1,145.5,106.4;14.2,143.5,112.0]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2023_007];
myvect = [myvect;my_wpac_2023_007];
btkvect = [btkvect;btk_wpac_2023_007];
btk2vect = [btk2vect;btk2_wpac_2023_007];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 008 ... MAWAR around 2023-05-20-15Z

rsmc_wpac_2023_008 = [8.4,147.8,56.0;10.7,146.6,67.2;13.4,145.6,84.0; 15.2,143.6,95.2; 16.7,140.4,100.8];
my_wpac_2023_008 = [8.0,148.2,55;    10.7,147.2,75;  13.3,146.4,90;   15.5,144.6,95;   16.8,141.6,105];
btk_wpac_2023_008 = [8.0,147.8,65;   10.0,146.9,90;  12.2,146.0,135;  13.8,144.7,120;  14.7,141.5,155]; # JTWC best track
btk2_wpac_2023_008 = [7.6,147.9,61.6;9.8,146.9,84.0; 12.2,146.0,117.6;13.8,144.7,106.4;14.8,141.5,128.8]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2023_008];
myvect = [myvect;my_wpac_2023_008];
btkvect = [btkvect;btk_wpac_2023_008];
btk2vect = [btk2vect;btk2_wpac_2023_008];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 009 ... MAWAR around 2023-05-21-21Z

rsmc_wpac_2023_009 = [11.0,147.0,84.0; 13.1,145.9,95.2; 14.4,143.3,106.4;15.2,139.4,112.0;16.2,134.6,112.0];
my_wpac_2023_009 = [10.9,146.9,85;     13.1,145.8,95;   14.2,143.4,105;  14.8,139.3,110;  16.2,134.9,120];
btk_wpac_2023_009 = [10.5,146.8,100;   12.7,145.7,120;  14.1,144.2,125;  14.9,140.4,155;  16.0,134.9,140]; # JTWC best track
btk2_wpac_2023_009 = [10.5,146.9,106.4;12.5,145.7,117.6;14.1,144.1,106.4;14.9,140.4,128.8;16.0,134.9,128.8]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2023_009];
myvect = [myvect;my_wpac_2023_009];
btkvect = [btkvect;btk_wpac_2023_009];
btk2vect = [btk2vect;btk2_wpac_2023_009];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 010 ... MAWAR around 2023-05-22-21Z

rsmc_wpac_2023_010 = [12.7,145.4,100.8;13.7,143.0,112.0;14.6,139.1,117.6;15.6,134.1,123.2;17.2,129.7,123.2];
my_wpac_2023_010 = [12.7,145.4,115;    13.8,142.9,115;  14.7,139.2,125;  15.5,134.2,125;  17.0,129.7,130];
btk_wpac_2023_010 = [12.7,145.7,120;   14.1,144.2,125;  14.9,140.4,155;  16.0,134.9,140;  17.0,129.7,115]; # JTWC best track
btk2_wpac_2023_010 = [12.5,145.7,117.6;14.1,144.1,106.4;14.9,140.4,128.8;16.0,134.9,128.8;17.1,129.7,95.2]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2023_010];
myvect = [myvect;my_wpac_2023_010];
btkvect = [btkvect;btk_wpac_2023_010];
btk2vect = [btk2vect;btk2_wpac_2023_010];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 011 ... MAWAR around 2023-05-23-03Z

rsmc_wpac_2023_011 = [13.1,145.1,106.4;13.9,142.4,112.0;14.9,138.0,116.4;15.9,133.1,123.2;18.0,128.9,123.2];
my_wpac_2023_011 = [13.1,145.2,125;    14.0,142.5,120;  15.0,138.1,130;  15.7,132.8,135;  18.1,129.1,135];
btk_wpac_2023_011 = [13.0,145.6,105;   14.2,143.5,140;  15.1,139.2,165;  16.3,133.5,135;  17.2,128.7,110]; # JTWC best track
btk2_wpac_2023_011 = [13.1,145.5,106.4;14.2,143.5,112.0;15.1,139.2,128.8;16.4,133.5,117.6;17.2,128.7,95.2]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2023_011];
myvect = [myvect;my_wpac_2023_011];
btkvect = [btkvect;btk_wpac_2023_011];
btk2vect = [btk2vect;btk2_wpac_2023_011];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 012 ... MAWAR around 2023-05-23-15Z

rsmc_wpac_2023_012 = [13.7,143.9,123.2;14.5,140.3,112.0;15.7,135.5,123.2;17.0,130.3,128.8;19.1,126.4,117.6];
my_wpac_2023_012 = [13.7,144.0,130;    14.5,140.3,130;  15.5,135.5,140;  16.7,129.8,140;  18.6,126.4,130];
btk_wpac_2023_012 = [13.8,144.7,120;   14.7,141.5,155;  15.7,136.5,145;  16.8,130.9,125;  18.0,127.3,105]; # JTWC best track
btk2_wpac_2023_012 = [13.8,144.7,106.4;14.8,141.5,128.8;15.7,136.5,128.8;16.8,130.9,95.2; 18.0,127.4,95.2]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2023_012];
myvect = [myvect;my_wpac_2023_012];
btkvect = [btkvect;btk_wpac_2023_012];
btk2vect = [btk2vect;btk2_wpac_2023_012];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 013 ... MAWAR around 2023-05-23-21Z

rsmc_wpac_2023_013 = [13.9,143.4,117.6;14.9,139.4,112.0;16.1,134.1,123.2;17.6,129.2,128.8;19.6,125.8,117.6];
my_wpac_2023_013 = [13.9,143.4,120;    14.8,139.4,130;  15.8,134.2,140;  17.1,128.9,130;  19.2,125.8,120];
btk_wpac_2023_013 = [14.1,144.2,125;   14.9,140.4,155;  16.0,134.9,140;  17.0,129.7,115;  18.6,126.7,105]; # JTWC best track
btk2_wpac_2023_013 = [14.1,144.1,106.4;14.9,140.4,128.8;16.0,134.9,128.8;17.1,129.7,95.2; 18.6,126.7,95.2]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2023_013];
myvect = [myvect;my_wpac_2023_013];
btkvect = [btkvect;btk_wpac_2023_013];
btk2vect = [btk2vect;btk2_wpac_2023_013];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 014 ... MAWAR around 2023-05-24-21Z

rsmc_wpac_2023_014 = [15.1,140.0,112.0;16.2,134.4,117.6;17.4,129.2,123.2;19.1,125.6,117.6;20.5,123.5,100.8];
my_wpac_2023_014 = [15.0,139.9,135;    15.9,134.4,145;  17.0,129.3,130;  18.6,125.5,115;  20.8,123.9,100];
btk_wpac_2023_014 = [14.9,140.4,155;   16.0,134.9,140;  17.0,129.7,115;  18.6,126.7,105;  20.1,125.4,85]; # JTWC best track
btk2_wpac_2023_014 = [14.9,140.4,128.8;16.0,134.9,128.8;17.1,129.7,95.2; 18.6,126.7,95.2; 20.1,125.4,95.2]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2023_014];
myvect = [myvect;my_wpac_2023_014];
btkvect = [btkvect;btk_wpac_2023_014];
btk2vect = [btk2vect;btk2_wpac_2023_014];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 015 ... MAWAR around 2023-05-25-03Z

rsmc_wpac_2023_015 = [15.3,138.8,117.6;16.4,133.0,123.2;17.8,128.1,123.2;19.5,124.8,112.0;20.4,122.9,95.2];
my_wpac_2023_015 = [15.3,139.0,145;    16.3,133.2,140;  17.7,128.4,125;  19.3,125.2,105;  21.6,123.6,95];
btk_wpac_2023_015 = [15.1,139.2,165;   16.3,133.5,135;  17.2,128.7,110;  19.0,126.2,105;  20.4,125.1,80]; # JTWC best track
btk2_wpac_2023_015 = [15.1,139.2,128.8;16.4,133.5,117.6;17.2,128.7,95.2; 19.0,126.2,95.2; 20.3,125.1,89.6]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2023_015];
myvect = [myvect;my_wpac_2023_015];
btkvect = [btkvect;btk_wpac_2023_015];
btk2vect = [btk2vect;btk2_wpac_2023_015];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 016 ... MAWAR around 2023-05-25-15Z

rsmc_wpac_2023_016 = [15.8,136.1,123.2;17.0,130.3,123.2;18.3,126.1,112.0;19.7,123.8,100.8;20.4,123.3,89.6];
my_wpac_2023_016 = [15.6,136.2,150;    16.5,130.4,140;  17.7,126.0,125;  19.4,123.6,110;  20.5,122.9,90];
btk_wpac_2023_016 = [15.7,136.5,145;   16.8,130.9,125;  18.0,127.3,105;  19.7,125.6,90;   20.9,125.1,70]; # JTWC best track
btk2_wpac_2023_016 = [15.7,136.5,128.8;16.8,130.9,95.2; 18.0,127.4,95.2; 19.7,125.6,95.2; 20.8,125.0,78.4]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2023_016];
myvect = [myvect;my_wpac_2023_016];
btkvect = [btkvect;btk_wpac_2023_016];
btk2vect = [btk2vect;btk2_wpac_2023_016];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 017 ... MAWAR around 2023-05-25-21Z

rsmc_wpac_2023_017 = [16.2,134.7,123.2;17.3,129.4,123.2;19.1,125.8,112.0;20.4,123.8,100.8;20.9,123.7,89.6];
my_wpac_2023_017 = [16.0,135.1,150;    17.1,129.6,135;  19.0,125.9,115;  20.4,124.1,95;   21.4,123.8,75];
btk_wpac_2023_017 = [16.0,134.9,140;   17.0,129.7,115;  18.6,126.7,105;  20.1,125.4,85;   21.2,125.0,65]; # JTWC best track
btk2_wpac_2023_017 = [16.0,134.9,128.8;17.1,129.7,95.2; 18.6,126.7,95.2; 20.1,125.4,95.2; 21.2,125.0,78.4]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2023_017];
myvect = [myvect;my_wpac_2023_017];
btkvect = [btkvect;btk_wpac_2023_017];
btk2vect = [btk2vect;btk2_wpac_2023_017];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 018 ... MAWAR around 2023-05-26-15Z

rsmc_wpac_2023_018 = [16.8,130.8,123.2;18.3,126.8,117.6;19.9,124.7,106.4;20.8,123.8,89.6;21.8,124.6,78.4];
my_wpac_2023_018 = [16.8,131.2,140;    18.0,126.9,120;  19.9,124.8,95;   21.2,123.9,75;  22.1,125.0,60];
btk_wpac_2023_018 = [16.8,130.9,125;   18.0,127.3,105;  19.7,125.6,90;   20.9,125.1,70;  22.7,125.5,55]; # JTWC best track
btk2_wpac_2023_018 = [16.8,130.9,95.2; 18.0,127.4,95.2; 19.7,125.6,95.2; 20.8,125.0,78.4;22.7,125.4,72.8]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2023_018];
myvect = [myvect;my_wpac_2023_018];
btkvect = [btkvect;btk_wpac_2023_018];
btk2vect = [btk2vect;btk2_wpac_2023_018];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 019 ... MAWAR around 2023-05-26-21Z

rsmc_wpac_2023_019 = [17.0,129.7,117.6;18.6,126.3,112.0;20.2,124.3,100.8;21.4,123.9,84.0;22.5,124.8,72.8];
my_wpac_2023_019 = [17.0,129.5,140;    18.3,125.8,115;  20.0,123.9,95;   21.1,123.1,75;  22.7,124.4,60];
btk_wpac_2023_019 = [17.0,129.7,115;   18.6,126.7,105;  20.1,125.4,85;   21.2,125.0,65;  23.5,125.3,55]; # JTWC best track
btk2_wpac_2023_019 = [17.1,129.7,95.2; 18.6,126.7,95.2; 20.1,125.4,95.2; 21.2,125.0,78.4;23.6,125.6,67.2]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2023_019];
myvect = [myvect;my_wpac_2023_019];
btkvect = [btkvect;btk_wpac_2023_019];
btk2vect = [btk2vect;btk2_wpac_2023_019];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 020 ... MAWAR around 2023-05-27-03Z

rsmc_wpac_2023_020 = [17.4,128.6,112.0;19.0,125.7,106.4;20.3,124.2,100.8;21.6,124.4,84.0;23.0,125.4,72.8];
my_wpac_2023_020 = [17.4,128.4,125;    18.8,125.1,105;  20.3,123.7,90;   21.2,123.5,75;  23.1,124.7,60];
btk_wpac_2023_020 = [17.2,128.7,110;   19.0,126.2,105;  20.4,125.1,80;   21.5,125.1,65;  24.2,125.9,45]; # JTWC best track
btk2_wpac_2023_020 = [17.2,128.7,95.2; 19.0,126.2,95.2; 20.3,125.1,89.6; 21.4,125.1,78.4;24.1,125.8,56.0]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2023_020];
myvect = [myvect;my_wpac_2023_020];
btkvect = [btkvect;btk_wpac_2023_020];
btk2vect = [btk2vect;btk2_wpac_2023_020];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 021 ... MAWAR around 2023-05-27-21Z

rsmc_wpac_2023_021 = [18.5,126.2,106.4;19.9,124.1,95.2;20.5,123.5,84.0;21.8,123.4,72.8;23.4,123.4,61.6];
my_wpac_2023_021 = [18.5,125.9,110;    19.7,123.6,95;  20.6,122.5,80;  21.7,121.7,70;  23.1,123.3,55];
btk_wpac_2023_021 = [18.6,126.7,105;   20.1,125.4,85;  21.2,125.0,65;  23.5,125.3,55;  26.8,128.1,45]; # JTWC best track
btk2_wpac_2023_021 = [18.6,126.7,95.2; 20.1,125.4,95.2;21.2,125.0,78.4;23.6,125.6,67.2;26.9,128.1,56.0]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2023_021];
myvect = [myvect;my_wpac_2023_021];
btkvect = [btkvect;btk_wpac_2023_021];
btk2vect = [btk2vect;btk2_wpac_2023_021];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 022 ... MAWAR around 2023-05-28-21Z

rsmc_wpac_2023_022 = [20.0,125.0,89.6;20.6,124.2,84.0;22.1,124.0,72.8;24.6,124.6,61.6;26.2,126.2,50.4];
my_wpac_2023_022 = [20.0,125.0,95;    20.7,124.0,85;  22.3,123.4,65;  24.1,123.5,55;  25.9,126.1,40];
btk_wpac_2023_022 = [20.1,125.4,85;   21.2,125.0,65;  23.5,125.3,55;  26.8,128.1,45;  29.8,135.3,35]; # JTWC best track
btk2_wpac_2023_022 = [20.1,125.4,95.2;21.2,125.0,78.4;23.6,125.6,67.2;26.9,128.1,56.0;29.7,135.2,50.4]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2023_022];
myvect = [myvect;my_wpac_2023_022];
btkvect = [btkvect;btk_wpac_2023_022];
btk2vect = [btk2vect;btk2_wpac_2023_022];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 023 ... MAWAR around 2023-05-29-03Z

rsmc_wpac_2023_023 = [20.4,124.7,89.6;21.3,124.3,84.0;23.1,124.1,72.8;25.5,125.3,56.0;26.9,127.4,44.8];
my_wpac_2023_023 = [20.4,124.6,90;    21.3,123.8,75;  22.9,123.6,65;  24.8,123.8,55;  26.8,127.5,40];
btk_wpac_2023_023 = [20.4,125.1,80;   21.5,125.1,65;  24.2,125.9,45;  27.5,129.6,40;  30.7,137.6,35]; # JTWC best track
btk2_wpac_2023_023 = [20.3,125.1,89.6;21.4,125.1,78.4;24.1,125.8,56.0;27.4,129.4,50.4;30.6,137.8,33.6]; # JMA best track (except day 5 wind JTWC btk)
rsmcvect = [rsmcvect;rsmc_wpac_2023_023];
myvect = [myvect;my_wpac_2023_023];
btkvect = [btkvect;btk_wpac_2023_023];
btk2vect = [btk2vect;btk2_wpac_2023_023];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 024 ... MAWAR around 2023-05-29-21Z

rsmc_wpac_2023_024 = [21.1,125.0,84.0;22.7,125.2,78.4;25.1,126.3,67.2;26.3,128.8,56.0];
my_wpac_2023_024 = [21.3,124.9,75;    22.7,125.0,60;  24.8,125.8,55;  26.1,128.2,50];
btk_wpac_2023_024 = [21.2,125.0,65;   23.5,125.3,55;  26.8,128.1,45;  29.8,135.3,35]; # JTWC best track
btk2_wpac_2023_024 = [21.2,125.0,78.4;23.6,125.6,67.2;26.9,128.1,56.0;29.7,135.2,50.4]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2023_024];
myvect = [myvect;my_wpac_2023_024];
btkvect = [btkvect;btk_wpac_2023_024];
btk2vect = [btk2vect;btk2_wpac_2023_024];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Wpac 025 ... MAWAR around 2023-05-30-21Z

rsmc_wpac_2023_025 = [23.3,125.4,78.4;26.1,127.5,67.2;27.6,131.7,56.0];
my_wpac_2023_025 = [23.0,125.4,50;    25.4,126.9,45;  27.7,132.2,45];
btk_wpac_2023_025 = [23.5,125.3,55;   26.8,128.1,45;  29.8,135.3,35]; # JTWC best track
btk2_wpac_2023_025 = [23.6,125.6,67.2;26.9,128.1,56.0;29.7,135.2,50.4]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2023_025];
myvect = [myvect;my_wpac_2023_025];
btkvect = [btkvect;btk_wpac_2023_025];
btk2vect = [btk2vect;btk2_wpac_2023_025];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Wpac 026 ... TD/03W around 2023-06-06-03Z

rsmc_wpac_2023_026 = [15.0,133.5,39.2;16.1,131.5,50.4;17.0,129.9,61.6;18.4,129.5,67.2;20.5,129.5,67.2];
my_wpac_2023_026 = [14.9,133.6,40;    16.2,131.6,55;  17.2,129.7,65;  18.5,129.2,70;  20.3,129.1,75];
btk_wpac_2023_026 = [14.6,134.1,40;   15.9,131.8,65;  17.3,130.2,85;  19.1,129.9,90;  23.2,131.7,75]; # JTWC best track
btk2_wpac_2023_026 = [14.7,134.3,44.8;15.8,131.6,61.6;17.2,130.4,84.0;18.9,129.9,89.6;23.0,131.7,72.8]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2023_026];
myvect = [myvect;my_wpac_2023_026];
btkvect = [btkvect;btk_wpac_2023_026];
btk2vect = [btk2vect;btk2_wpac_2023_026];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 027 ... TD/03W around 2023-06-06-09Z

rsmc_wpac_2023_027 = [15.3,133.4,39.2;16.4,131.2,50.4;17.5,129.9,61.6;19.1,130.2,67.2;21.8,131.5,67.2];
my_wpac_2023_027 = [15.1,133.3,45;    16.3,131.1,65;  17.7,129.3,70;  18.8,129.6,75;  21.9,130.6,75];
btk_wpac_2023_027 = [15.0,133.6,45;   16.2,131.2,70;  17.9,130.0,85;  20.2,130.2,95;  24.2,132.2,70]; # JTWC best track
btk2_wpac_2023_027 = [15.0,133.8,44.8;16.0,131.1,67.2;17.8,130.1,84.0;19.9,130.2,89.6;24.2,132.6,67.2]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2023_027];
myvect = [myvect;my_wpac_2023_027];
btkvect = [btkvect;btk_wpac_2023_027];
btk2vect = [btk2vect;btk2_wpac_2023_027];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 028 ... GUCHOL around 2023-06-06-15Z

rsmc_wpac_2023_028 = [14.8,133.0,50.4;16.5,130.9,61.6;17.8,130.2,72.8;19.6,130.4,78.5;22.9,131.8,78.4];
my_wpac_2023_028 = [14.6,133.0,50;    16.7,131.0,75;  18.0,130.4,75;  19.2,130.9,75;  22.3,132.7,80];
btk_wpac_2023_028 = [15.3,133.0,50;   16.4,130.9,80;  18.2,130.0,75;  20.7,130.6,90;  25.5,133.6,50]; # JTWC best track
btk2_wpac_2023_028 = [15.1,133.2,50.4;16.3,130.8,78.4;18.1,129.9,84.0;20.7,130.5,84.0;25.6,133.8,61.6]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2023_028];
myvect = [myvect;my_wpac_2023_028];
btkvect = [btkvect;btk_wpac_2023_028];
btk2vect = [btk2vect;btk2_wpac_2023_028];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Nio 12 ... BIPARJOY around 2023-06-06-15Z

rsmc_nio_2023_12 = [13.3,65.9,58.3;14.5,65.7,68.9;15.8,65.5,79.5;17.4,65.1,84.8;19.2,64.7,79.5];
my_nio_2023_12 = [13.6,65.9,65;    15.1,65.5,75;  16.6,65.3,75;  18.6,64.7,80;  19.8,64.5,75];
btk_nio_2023_12 = [13.3,66.2,85;   14.2,66.0,75;  15.7,67.3,65;  17.2,67.3,105; 18.7,67.9,90]; # JTWC best track
btk2_nio_2023_12 = [13.3,66.2,68.9;14.4,66.0,79.5;15.5,67.1,68.9;17.1,67.3,84.8;18.6,67.7,95.4]; # IMD prelim report
rsmcvect = [rsmcvect;rsmc_nio_2023_12];
myvect = [myvect;my_nio_2023_12];
btkvect = [btkvect;btk_nio_2023_12];
btk2vect = [btk2vect;btk2_nio_2023_12];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Nio 13 ... BIPARJOY around 2023-06-06-21Z

rsmc_nio_2023_13 = [13.6,65.9,63.6;14.8,65.7,74.2;16.2,65.4,84.8;17.9,65.0,84.8;19.7,64.6,74.2];
my_nio_2023_13 = [13.4,66.2,85;    15.3,65.2,95;  16.6,64.6,85;  17.8,64.2,80;  19.0,63.6,70];
btk_nio_2023_13 = [13.5,66.1,80;   14.5,66.2,70;  16.3,67.4,70;  17.6,67.4,100; 19.0,67.8,85]; # JTWC best track
btk2_nio_2023_13 = [13.6,66.0,74.2;14.6,66.0,79.5;16.0,67.4,74.2;17.4,67.3,90.1;18.9,67.7,95.4]; # IMD prelim report
rsmcvect = [rsmcvect;rsmc_nio_2023_13];
myvect = [myvect;my_nio_2023_13];
btkvect = [btkvect;btk_nio_2023_13];
btk2vect = [btk2vect;btk2_nio_2023_13];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Wpac 029 ... GUCHOL around 2023-06-07-03Z

rsmc_wpac_2023_029 = [15.8,132.1,61.6;17.2,130.5,78.4;18.6,130.1,89.6;21.4,131.0,89.6;25.6,133.8,89.6];
my_wpac_2023_029 = [15.8,132.3,60;    17.3,130.7,80;  19.1,130.7,80;  21.6,132.0,85;  25.3,136.0,80];
btk_wpac_2023_029 = [15.9,131.8,65;   17.3,130.2,85;  19.1,129.9,90;  23.2,131.7,75;  28.1,136.6,50]; # JTWC best track
btk2_wpac_2023_029 = [15.8,131.6,61.6;17.2,130.4,84.0;18.9,129.9,89.6;23.0,131.7,72.8;27.9,136.9,61.6]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2023_029];
myvect = [myvect;my_wpac_2023_029];
btkvect = [btkvect;btk_wpac_2023_029];
btk2vect = [btk2vect;btk2_wpac_2023_029];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Nio 14 ... BIPARJOY around 2023-06-07-03Z

rsmc_nio_2023_14 = [13.9,66.2,68.9;15.1,65.8,79.5;16.5,65.3,84.8;18.3,64.9,79.5;20.2,64.5,79.5];
my_nio_2023_14 = [13.8,66.2,90;    15.1,65.5,95;  16.4,64.8,85;  18.0,64.6,80;  19.5,63.4,70];
btk_nio_2023_14 = [13.7,66.1,75;   14.8,66.4,65;  16.4,67.3,95;  17.8,67.7,95;  19.2,67.7,80]; # JTWC best track
btk2_nio_2023_14 = [13.9,66.0,79.5;14.7,66.2,79.5;16.5,67.4,79.5;17.9,67.4,95.4;19.2,67.7,95.4]; # IMD prelim report
rsmcvect = [rsmcvect;rsmc_nio_2023_14];
myvect = [myvect;my_nio_2023_14];
btkvect = [btkvect;btk_nio_2023_14];
btk2vect = [btk2vect;btk2_nio_2023_14];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Nio 15 ... BIPARJOY around 2023-06-07-15Z

rsmc_nio_2023_15 = [14.5,65.8,79.5;15.7,65.2,84.8;17.1,64.5,84.8;18.5,63.6,79.5;19.9,62.5,74.2];
my_nio_2023_15 = [14.8,66.0,90;    16.0,65.3,85;  17.5,65.0,80;  18.8,64.4,75;  20.1,64.0,60];
btk_nio_2023_15 = [14.2,66.0,75;   15.7,67.3,65;  17.2,67.3,105; 18.7,67.9,90;  19.9,67.2,90]; # JTWC best track
btk2_nio_2023_15 = [14.4,66.0,79.5;15.5,67.1,68.9;17.1,67.3,84.8;18.6,67.7,95.4;19.9,67.3,95.4]; # IMD prelim report
rsmcvect = [rsmcvect;rsmc_nio_2023_15];
myvect = [myvect;my_nio_2023_15];
btkvect = [btkvect;btk_nio_2023_15];
btk2vect = [btk2vect;btk2_nio_2023_15];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Nio 16 ... BIPARJOY around 2023-06-08-15Z

rsmc_nio_2023_16 = [15.6,65.6,90.1;16.9,65.2,84.8;18.3,64.8,79.5;19.7,64.4,74.2;21.2,64.0,68.9];
my_nio_2023_16 = [15.7,66.0,90;    17.0,65.9,85;  18.5,65.9,75;  19.6,66.0,75;  21.3,64.9,55];
btk_nio_2023_16 = [15.7,67.3,65;   17.2,67.3,105; 18.7,67.9,90;  19.9,67.2,90;  21.1,66.4,95]; # JTWC best track
btk2_nio_2023_16 = [15.5,67.1,68.9;17.1,67.3,84.8;18.6,67.7,95.4;19.9,67.3,95.4;21.3,66.5,90.1]; # IMD prelim report
rsmcvect = [rsmcvect;rsmc_nio_2023_16];
myvect = [myvect;my_nio_2023_16];
btkvect = [btkvect;btk_nio_2023_16];
btk2vect = [btk2vect;btk2_nio_2023_16];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Wpac 030 ... GUCHOL around 2023-06-09-21Z

rsmc_wpac_2023_030 = [21.3,130.8,78.4;25.1,134.5,72.8;30.1,140.2,61.6;35.7,149.6,0];
my_wpac_2023_030 = [21.4,130.8,85;    25.3,134.8,80;  30.9,141.4,65;  35.9,150.2,0];
btk_wpac_2023_030 = [22.0,130.8,80;   26.9,134.7,45;  32.3,141.7,45;  38.1,152.0,0]; # JTWC best track (except day 4 JMA)
btk2_wpac_2023_030 = [21.8,131.1,78.4;26.4,135.3,61.6;32.0,142.0,39.2;38.1,152.0,0]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2023_030];
myvect = [myvect;my_wpac_2023_030];
btkvect = [btkvect;btk_wpac_2023_030];
btk2vect = [btk2vect;btk2_wpac_2023_030];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Nio 17 ... BIPARJOY around 2023-06-09-21Z

rsmc_nio_2023_17 = [17.8,67.7,84.8;19.1,67.5,79.5;20.4,67.0,74.2;21.6,66.4,68.9;22.6,66.0,58.3];
my_nio_2023_17 = [17.5,67.8,80;    19.2,68.0,75;  20.4,67.4,65;  21.7,67.1,65;  22.6,66.8,55];
btk_nio_2023_17 = [17.6,67.4,100;  19.0,67.8,85;  20.3,67.2,85;  21.2,66.4,85;  22.2,66.7,60]; # JTWC best track
btk2_nio_2023_17 = [17.4,67.3,90.1;18.9,67.7,95.4;20.1,67.2,90.1;21.7,66.3,90.1;22.2,66.9,79.5]; # IMD prelim report
rsmcvect = [rsmcvect;rsmc_nio_2023_17];
myvect = [myvect;my_nio_2023_17];
btkvect = [btkvect;btk_nio_2023_17];
btk2vect = [btk2vect;btk2_nio_2023_17];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Nio 18 ... BIPARJOY around 2023-06-10-03Z

rsmc_nio_2023_18 = [18.1,67.8,90.1;19.5,67.7,84.8;20.7,67.4,79.5;22.0,67.0,68.9;23.2,66.8,58.3];
my_nio_2023_18 = [17.9,67.6,80;    19.4,67.6,75;  20.9,67.0,70;  22.2,66.6,65;  23.2,66.6,55];
btk_nio_2023_18 = [17.8,67.7,95;   19.2,67.7,80;  20.7,67.0,85;  21.3,66.3,85;  22.3,66.9,55]; # JTWC best track
btk2_nio_2023_18 = [17.9,67.4,95.4;19.2,67.7,95.4;20.6,67.0,90.1;21.8,66.3,84.8;22.4,67.0,74.2]; # IMD prelim report
rsmcvect = [rsmcvect;rsmc_nio_2023_18];
myvect = [myvect;my_nio_2023_18];
btkvect = [btkvect;btk_nio_2023_18];
btk2vect = [btk2vect;btk2_nio_2023_18];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Nio 19 ... BIPARJOY around 2023-06-10-15Z

rsmc_nio_2023_19 = [18.7,67.6,90.1;20.0,67.5,79.5;21.3,67.3,74.2;22.6,67.0,68.9;24.1,67.2,58.3];
my_nio_2023_19 = [18.8,67.6,85;    20.1,67.3,75;  21.4,66.7,70;  22.2,66.3,65;  24.1,67.1,45];
btk_nio_2023_19 = [18.7,67.9,90;   19.9,67.2,90;  21.1,66.4,95;  21.8,66.7,70;  22.8,68.2,55]; # JTWC best track
btk2_nio_2023_19 = [18.6,67.7,95.4;19.9,67.3,95.4;21.3,66.5,90.1;22.0,66.7,79.5;22.9,68.0,68.9]; # IMD prelim report
rsmcvect = [rsmcvect;rsmc_nio_2023_19];
myvect = [myvect;my_nio_2023_19];
btkvect = [btkvect;btk_nio_2023_19];
btk2vect = [btk2vect;btk2_nio_2023_19];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Nio 20 ... BIPARJOY around 2023-06-11-21Z

rsmc_nio_2023_20 = [20.5,67.4,84.8;21.5,67.5,79.5;22.8,68.2,74.2;24.0,69.6,42.4];
my_nio_2023_20 = [20.5,67.6,90;    21.7,67.3,80;  22.6,67.5,70;  24.0,69.4,45];
btk_nio_2023_20 = [20.3,67.2,85;   21.2,66.4,85;  22.2,66.7,60;  23.3,68.6,50]; # JTWC best track
btk2_nio_2023_20 = [20.1,67.2,90.1;21.7,66.3,90.1;22.2,66.9,79.5;23.3,68.6,63.6]; # IMD prelim report
rsmcvect = [rsmcvect;rsmc_nio_2023_20];
myvect = [myvect;my_nio_2023_20];
btkvect = [btkvect;btk_nio_2023_20];
btk2vect = [btk2vect;btk2_nio_2023_20];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Nio 21 ... BIPARJOY around 2023-06-12-03Z

rsmc_nio_2023_21 = [20.7,67.4,84.8;21.8,67.4,79.5;23.0,68.3,74.2;24.1,69.9,31.8];
my_nio_2023_21 = [20.9,67.4,80;    21.9,67.3,75;  22.6,67.5,65;  24.0,69.4,40];
btk_nio_2023_21 = [20.7,67.0,85;   21.3,66.3,85;  22.3,66.9,55;  23.5,69.0,45]; # JTWC best track
btk2_nio_2023_21 = [20.6,67.0,90.1;21.8,66.3,84.8;22.4,67.0,74.2;23.4,69.2,53.0]; # IMD prelim report
rsmcvect = [rsmcvect;rsmc_nio_2023_21];
myvect = [myvect;my_nio_2023_21];
btkvect = [btkvect;btk_nio_2023_21];
btk2vect = [btk2vect;btk2_nio_2023_21];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Nio 22 ... BIPARJOY around 2023-06-12-15Z

rsmc_nio_2023_22 = [21.2,67.2,84.8;22.4,67.7,79.5;23.5,68.7,53.0;24.5,70.3,15.9];
my_nio_2023_22 = [21.2,66.8,80;    21.9,66.9,70;  23.3,68.0,55;  24.5,69.9,35];
btk_nio_2023_22 = [21.1,66.4,95;   21.8,66.7,70;  22.8,68.2,55;  24.2,70.4,40]; # JTWC best track
btk2_nio_2023_22 = [21.3,66.5,90.1;22.0,66.7,79.5;22.9,68.0,68.9;24.2,70.3,37.1]; # IMD prelim report
rsmcvect = [rsmcvect;rsmc_nio_2023_22];
myvect = [myvect;my_nio_2023_22];
btkvect = [btkvect;btk_nio_2023_22];
btk2vect = [btk2vect;btk2_nio_2023_22];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Nio 23 ... BIPARJOY around 2023-06-12-21Z

rsmc_nio_2023_23 = [21.5,67.3,79.5;22.7,67.9,74.2;23.8,69.0,42.4];
my_nio_2023_23 = [21.2,66.9,80;    22.2,67.2,70;  23.7,68.8,50];
btk_nio_2023_23 = [21.2,66.4,85;   22.2,66.7,60;  23.3,68.6,50]; # JTWC best track
btk2_nio_2023_23 = [21.7,66.3,90.1;22.2,66.9,79.5;23.3,68.6,63.6]; # IMD prelim report
rsmcvect = [rsmcvect;rsmc_nio_2023_23];
myvect = [myvect;my_nio_2023_23];
btkvect = [btkvect;btk_nio_2023_23];
btk2vect = [btk2vect;btk2_nio_2023_23];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Nio 24 ... BIPARJOY around 2023-06-13-21Z

rsmc_nio_2023_24 = [22.9,67.5,79.5;23.9,69.3,53.0;25.1,71.7,21.2];
my_nio_2023_24 = [22.8,67.5,65;    24.1,69.6,50;  25.4,72.8,25];
btk_nio_2023_24 = [22.2,66.7,60;   23.3,68.6,50;  24.7,70.8,35]; # JTWC best track
btk2_nio_2023_24 = [22.2,66.9,79.5;23.3,68.6,63.6;24.6,70.9,31.8]; # IMD prelim report
rsmcvect = [rsmcvect;rsmc_nio_2023_24];
myvect = [myvect;my_nio_2023_24];
btkvect = [btkvect;btk_nio_2023_24];
btk2vect = [btk2vect;btk2_nio_2023_24];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Nio 25 ... BIPARJOY around 2023-06-14-03Z

rsmc_nio_2023_25 = [23.0,67.7,79.5;24.2,69.7,53.0;25.1,72.4,21.2];
my_nio_2023_25 = [22.8,67.4,70;    24.1,69.9,45;  25.2,72.7,25];
btk_nio_2023_25 = [22.3,66.9,55;   23.5,69.0,45;  25.1,71.1,30]; # JTWC best track
btk2_nio_2023_25 = [22.4,67.0,74.2;23.4,69.2,53.0;24.7,71.2,31.8]; # IMD prelim report
rsmcvect = [rsmcvect;rsmc_nio_2023_25];
myvect = [myvect;my_nio_2023_25];
btkvect = [btkvect;btk_nio_2023_25];
btk2vect = [btk2vect;btk2_nio_2023_25];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Nio 26 ... BIPARJOY around 2023-06-14-15Z

rsmc_nio_2023_26 = [23.5,68.5,63.6;24.8,70.8,21.2];
my_nio_2023_26 = [23.5,68.2,55;    24.8,70.6,40];
btk_nio_2023_26 = [22.8,68.2,55;   24.2,70.4,40]; # JTWC best track
btk2_nio_2023_26 = [22.9,68.0,68.9;24.2,70.3,37.1]; # IMD prelim report
rsmcvect = [rsmcvect;rsmc_nio_2023_26];
myvect = [myvect;my_nio_2023_26];
btkvect = [btkvect;btk_nio_2023_26];
btk2vect = [btk2vect;btk2_nio_2023_26];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Nio 27 ... BIPARJOY around 2023-06-14-21Z

rsmc_nio_2023_27 = [23.7,68.9,53.0;25.0,71.0,21.2];
my_nio_2023_27 = [23.6,68.5,55;    25.1,71.2,30];
btk_nio_2023_27 = [23.3,68.6,50;   24.7,70.8,35]; # JTWC best track
btk2_nio_2023_27 = [23.3,68.6,63.6;24.6,70.9,31.8]; # IMD prelim report
rsmcvect = [rsmcvect;rsmc_nio_2023_27];
myvect = [myvect;my_nio_2023_27];
btkvect = [btkvect;btk_nio_2023_27];
btk2vect = [btk2vect;btk2_nio_2023_27];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Wpac 031 ... DOKSURI around 2023-07-21-21Z

rsmc_wpac_2023_031 = [14.4,130.2,44.8;14.8,128.5,61.6;17.4,126.9,89.6; 20.8,124.5,106.4;23.9,122.0,100.8];
my_wpac_2023_031 = [14.5,130.1,45;    15.2,128.3,75;  17.3,126.9,90;   20.8,125.4,115;  25.2,123.3,95];
btk_wpac_2023_031 = [14.6,129.5,45;   15.1,127.0,90;  17.0,125.1,125;  19.0,121.5,120;  20.0,120.0,80]; # JTWC best track
btk2_wpac_2023_031 = [14.6,129.7,56.0;15.1,127.0,78.4;16.9,125.1,112.0;19.0,121.6,112.0;20.0,120.0,89.6]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2023_031];
myvect = [myvect;my_wpac_2023_031];
btkvect = [btkvect;btk_wpac_2023_031];
btk2vect = [btk2vect;btk2_wpac_2023_031];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 032 ... DOKSURI around 2023-07-22-21Z

rsmc_wpac_2023_032 = [15.2,127.7,78.4;17.2,125.8,106.4;19.9,123.3,112.0;22.6,120.9,95.2;25.9,118.5,61.6];
my_wpac_2023_032 = [15.3,127.5,75;    17.5,125.9,105;  20.0,123.5,105;  23.1,121.1,100; 27.0,119.5,65];
btk_wpac_2023_032 = [15.1,127.0,90;   17.0,125.1,125;  19.0,121.5,120;  20.0,120.0,80;  22.7,119.0,90]; # JTWC best track
btk2_wpac_2023_032 = [15.1,127.0,78.4;16.9,125.1,112.0;19.0,121.6,112.0;20.0,120.0,89.6;22.8,118.9,89.6]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2023_032];
myvect = [myvect;my_wpac_2023_032];
btkvect = [btkvect;btk_wpac_2023_032];
btk2vect = [btk2vect;btk2_wpac_2023_032];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 033 ... DOKSURI around 2023-07-23-15Z

rsmc_wpac_2023_033 = [16.3,125.9,95.2; 18.9,123.1,112.0;20.5,121.1,106.4;23.8,119.5,61.6;28.4,118.0,44.8];
my_wpac_2023_033 = [16.5,125.7,110;    18.8,122.9,130;  20.5,121.2,120;  24.4,119.8,75;  28.4,118.4,45];
btk_wpac_2023_033 = [16.5,125.8,125;   18.9,122.7,120;  19.6,120.6,90;   21.8,119.1,100; 27.4,117.9,45]; # JTWC best track
btk2_wpac_2023_033 = [16.5,125.8,100.8;18.9,122.7,112.0;19.5,120.6,89.6; 21.8,119.1,89.6;27.1,117.9,44.8]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2023_033];
myvect = [myvect;my_wpac_2023_033];
btkvect = [btkvect;btk_wpac_2023_033];
btk2vect = [btk2vect;btk2_wpac_2023_033];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 034 ... DOKSURI around 2023-07-23-21Z

rsmc_wpac_2023_034 = [17.1,125.3,100.8;19.1,122.0,112.0;21.0,120.3,100.8;24.4,118.8,61.6;28.5,117.6,39.2];
my_wpac_2023_034 = [17.1,124.8,115;    19.0,121.9,125;  21.0,120.0,105;  24.6,118.4,65;  29.0,116.8,40];
btk_wpac_2023_034 = [17.0,125.1,125;   19.0,121.5,120;  20.0,120.0,80;   22.7,119.0,90;  29.0,117.2,35]; # JTWC best track
btk2_wpac_2023_034 = [16.9,125.1,112.0;19.0,121.6,112.0;20.0,120.0,89.6; 22.8,118.9,89.6;28.9,117.0,39.2]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2023_034];
myvect = [myvect;my_wpac_2023_034];
btkvect = [btkvect;btk_wpac_2023_034];
btk2vect = [btk2vect;btk2_wpac_2023_034];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 035 ... DOKSURI around 2023-07-24-21Z

rsmc_wpac_2023_035 = [19.0,121.8,112.0;20.7,120.0,106.4;23.9,117.8,84.0;27.4,115.6,39.2;31.8,114.9,0];
my_wpac_2023_035 = [18.8,121.8,120;    20.5,120.1,110;  23.8,118.3,75;  27.8,116.3,40;  32.6,115.5,0];
btk_wpac_2023_035 = [19.0,121.5,120;   20.0,120.0,80;   22.7,119.0,90;  29.0,117.2,35;  33.8,114.4,0]; # JTWC best track (except day 5 JMA)
btk2_wpac_2023_035 = [19.0,121.6,112.0;20.0,120.0,89.6; 22.8,118.9,89.6;28.9,117.0,39.2;33.8,114.4,0]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2023_035];
myvect = [myvect;my_wpac_2023_035];
btkvect = [btkvect;btk_wpac_2023_035];
btk2vect = [btk2vect;btk2_wpac_2023_035];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 036 ... DOKSURI around 2023-07-25-15Z

rsmc_wpac_2023_036 = [20.0,120.7,106.4;22.6,118.7,95.2;26.4,116.0,0];
my_wpac_2023_036 = [20.1,120.6,105;    22.8,118.3,85;  26.3,116.5,0];
btk_wpac_2023_036 = [19.6,120.6,90;    21.8,119.1,100; 27.4,117.9,0]; # JTWC best track
btk2_wpac_2023_036 = [19.5,120.6,89.6; 21.8,119.1,89.6;27.1,117.9,0]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2023_036];
myvect = [myvect;my_wpac_2023_036];
btkvect = [btkvect;btk_wpac_2023_036];
btk2vect = [btk2vect;btk2_wpac_2023_036];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Wpac 037 ... DOKSURI around 2023-07-25-21Z

rsmc_wpac_2023_037 = [20.5,120.1,106.4;23.9,118.4,84.0;28.2,116.2,0];
my_wpac_2023_037 = [20.3,119.7,105;    23.8,118.0,80;  28.7,115.4,0];
btk_wpac_2023_037 = [20.0,120.0,80;    22.7,119.0,90;  29.0,117.2,0]; # JTWC best track
btk2_wpac_2023_037 = [20.0,120.0,89.6; 22.8,118.9,89.6;28.9,117.0,0]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2023_037];
myvect = [myvect;my_wpac_2023_037];
btkvect = [btkvect;btk_wpac_2023_037];
btk2vect = [btk2vect;btk2_wpac_2023_037];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Wpac 038 ... TD/06W around 2023-07-27-15Z

rsmc_wpac_2023_038 = [14.5,136.6,39.2;18.2,135.4,44.8;22.9,133.0,67.2;26.3,128.1,84.0; 28.0,123.6,89.6];
my_wpac_2023_038 = [14.5,136.1,40;    17.6,134.8,50;  22.6,133.1,85;  26.1,128.7,115;  28.4,124.4,100];
btk_wpac_2023_038 = [13.8,135.4,40;   16.9,133.2,50;  20.4,132.4,90;  23.5,131.0,115;  25.3,128.0,120]; # JTWC best track
btk2_wpac_2023_038 = [14.1,135.5,39.2;16.8,133.6,56.0;20.3,132.4,84.0;23.4,131.1,100.8;25.3,128.0,106.4]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2023_038];
myvect = [myvect;my_wpac_2023_038];
btkvect = [btkvect;btk_wpac_2023_038];
btk2vect = [btk2vect;btk2_wpac_2023_038];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 039 ... KHANUN around 2023-07-27-21Z

rsmc_wpac_2023_039 = [15.5,136.0,44.8;19.4,134.7,50.4;24.0,131.5,67.2;27.1,126.3,84.0; 29.9,122.1,89.6];
my_wpac_2023_039 = [15.6,135.5,45;    19.3,133.7,65;  23.9,130.8,90;  27.6,126.5,115;  30.3,123.0,95];
btk_wpac_2023_039 = [14.6,134.7,45;   17.8,132.9,55;  21.2,132.2,105; 24.1,130.2,115;  25.6,127.4,115]; # JTWC best track
btk2_wpac_2023_039 = [14.9,134.7,44.8;17.6,133.1,61.6;21.1,132.1,89.6;24.1,130.3,100.8;25.5,127.4,100.8]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2023_039];
myvect = [myvect;my_wpac_2023_039];
btkvect = [btkvect;btk_wpac_2023_039];
btk2vect = [btk2vect;btk2_wpac_2023_039];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 040 ... KHANUN around 2023-07-28-15Z

rsmc_wpac_2023_040 = [17.4,133.9,50.4;22.2,131.7,72.8;26.0,128.1,89.6; 28.1,123.5,89.6; 30.5,120.0,61.6];
my_wpac_2023_040 = [18.0,133.7,45;    22.7,131.6,65;  26.6,127.9,95;   28.7,123.4,100;  31.9,120.3,65];
btk_wpac_2023_040 = [16.9,133.2,50;   20.4,132.4,90;  23.5,131.0,115;  25.3,128.0,120;  26.2,125.6,100]; # JTWC best track
btk2_wpac_2023_040 = [16.8,133.6,56.0;20.3,132.4,84.0;23.4,131.1,100.8;25.3,128.0,106.4;26.2,125.6,100.8]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2023_040];
myvect = [myvect;my_wpac_2023_040];
btkvect = [btkvect;btk_wpac_2023_040];
btk2vect = [btk2vect;btk2_wpac_2023_040];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 041 ... KHANUN around 2023-07-28-21Z

rsmc_wpac_2023_041 = [18.3,133.3,56.0;22.8,131.1,78.4;26.1,127.5,89.6; 28.1,122.8,89.6; 29.4,119.7,56.0];
my_wpac_2023_041 = [18.9,132.9,50;    23.2,131.0,75;  27.1,127.7,90;   29.2,123.2,90;   31.8,120.7,55];
btk_wpac_2023_041 = [17.8,132.9,55;   21.1,132.2,105; 24.1,130.2,115;  25.6,127.4,115;  26.5,125.0,100]; # JTWC best track
btk2_wpac_2023_041 = [17.6,133.1,61.6;21.1,132.1,89.6;24.1,130.3,100.8;25.5,127.4,100.8;26.5,125.0,100.8]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2023_041];
myvect = [myvect;my_wpac_2023_041];
btkvect = [btkvect;btk_wpac_2023_041];
btk2vect = [btk2vect;btk2_wpac_2023_041];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 042 ... KHANUN around 2023-07-29-21Z

rsmc_wpac_2023_042 = [22.4,131.7,72.8;26.0,128.1,84.0; 27.5,124.0,89.6; 29.1,120.5,67.2; 30.5,118.2,44.8];
my_wpac_2023_042 = [22.1,131.9,75;    25.6,128.3,90;   27.4,124.8,95;   29.0,121.8,75;   30.3,119.4,40];
btk_wpac_2023_042 = [21.2,132.2,105;  24.1,130.2,115;  25.6,127.4,115;  26.5,125.0,100;  27.0,124.3,70]; # JTWC best track
btk2_wpac_2023_042 = [21.1,132.1,89.6;24.1,130.3,100.8;25.5,127.4,100.8;26.5,125.0,100.8;26.8,124.3,72.8]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2023_042];
myvect = [myvect;my_wpac_2023_042];
btkvect = [btkvect;btk_wpac_2023_042];
btk2vect = [btk2vect;btk2_wpac_2023_042];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 043 ... KHANUN around 2023-07-31-21Z

rsmc_wpac_2023_043 = [25.4,127.4,106.4;26.4,125.1,100.8;26.9,123.6,95.2;27.7,124.0,95.2;28.5,124.9,89.6];
my_wpac_2023_043 = [25.7,127.4,115;    26.6,125.3,105;  27.9,123.4,80;  29.0,123.0,65;  29.1,124.3,65];
btk_wpac_2023_043 = [25.6,127.4,115;   26.5,125.0,100;  27.0,124.3,70;  27.7,126.4,50;  27.9,128.9,50]; # JTWC best track
btk2_wpac_2023_043 = [25.5,127.4,100.8;26.5,125.0,100.8;26.8,124.3,72.8;27.7,126.4,61.6;28.0,128.9,56.0]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2023_043];
myvect = [myvect;my_wpac_2023_043];
btkvect = [btkvect;btk_wpac_2023_043];
btk2vect = [btk2vect;btk2_wpac_2023_043];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 044 ... KHANUN around 2023-08-02-21Z

rsmc_wpac_2023_044 = [26.9,123.9,89.6;27.2,125.7,78.4;28.0,128.4,78.4;28.7,130.7,78.4;30.1,132.6,78.4];
my_wpac_2023_044 = [26.8,123.6,85;    27.1,125.3,75;  28.4,128.1,65;  29.1,129.7,70;  31.2,130.8,65];
btk_wpac_2023_044 = [27.0,124.3,70;   27.7,126.4,50;  27.9,128.9,50;  27.7,131.0,50;  28.7,131.0,50]; # JTWC best track
btk2_wpac_2023_044 = [26.8,124.3,72.8;27.7,126.4,61.6;28.0,128.9,56.0;27.5,130.9,56.0;28.4,131.1,50.4]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2023_044];
myvect = [myvect;my_wpac_2023_044];
btkvect = [btkvect;btk_wpac_2023_044];
btk2vect = [btk2vect;btk2_wpac_2023_044];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 045 ... KHANUN around 2023-08-03-21Z

rsmc_wpac_2023_045 = [27.4,126.0,72.8;27.8,128.7,78.4;28.1,131.2,78.4;29.6,132.6,78.4;31.8,132.8,78.4];
my_wpac_2023_045 = [27.3,125.9,60;    28.0,128.7,55;  28.9,131.3,55;  30.6,131.5,75;  33.0,131.8,70];
btk_wpac_2023_045 = [27.7,126.4,50;   27.9,128.9,50;  27.7,131.0,50;  28.7,131.0,50;  30.4,129.8,50]; # JTWC best track
btk2_wpac_2023_045 = [27.7,126.4,61.6;28.0,128.9,56.0;27.5,130.9,56.0;28.4,131.1,50.4;30.4,129.7,56.0]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2023_045];
myvect = [myvect;my_wpac_2023_045];
btkvect = [btkvect;btk_wpac_2023_045];
btk2vect = [btk2vect;btk2_wpac_2023_045];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 046 ... KHANUN around 2023-08-04-03Z

rsmc_wpac_2023_046 = [27.7,126.7,72.8;27.8,129.4,78.4;28.5,131.7,78.4;29.7,132.4,78.4;31.4,132.1,78.4];
my_wpac_2023_046 = [27.6,126.6,55;    27.8,129.4,60;  28.9,132.0,60;  30.7,132.1,65;  33.6,132.2,60];
btk_wpac_2023_046 = [27.8,127.0,50;   27.8,129.7,50;  27.9,131.2,50;  29.0,130.9,45;  30.9,129.5,55]; # JTWC best track
btk2_wpac_2023_046 = [27.7,126.8,61.6;27.8,129.5,56.0;27.8,131.2,56.0;28.9,131.0,50.4;30.9,129.3,56.0]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2023_046];
myvect = [myvect;my_wpac_2023_046];
btkvect = [btkvect;btk_wpac_2023_046];
btk2vect = [btk2vect;btk2_wpac_2023_046];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 047 ... KHANUN around 2023-08-04-21Z

rsmc_wpac_2023_047 = [27.9,128.9,67.2;28.0,131.4,72.8;29.6,131.8,72.8;31.7,131.2,67.2;36.4,130.5,61.6];
my_wpac_2023_047 = [28.2,128.6,55;    28.4,131.3,60;  29.7,131.1,55;  32.2,130.3,50;  36.8,129.7,50];
btk_wpac_2023_047 = [27.9,128.9,50;   27.7,131.0,50;  28.7,131.0,50;  30.4,129.8,50;  33.6,128.7,55]; # JTWC best track
btk2_wpac_2023_047 = [28.0,128.9,56.0;27.5,130.9,56.0;28.4,131.1,50.4;30.4,129.7,56.0;33.4,128.6,56.0]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2023_047];
myvect = [myvect;my_wpac_2023_047];
btkvect = [btkvect;btk_wpac_2023_047];
btk2vect = [btk2vect;btk2_wpac_2023_047];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 048 ... LAN around 2023-08-08-21Z

rsmc_wpac_2023_048 = [24.9,144.7,56.0;26.3,143.3,67.2; 28.6,142.9,78.4;30.7,140.7,84.0;32.6,139.4,84.0];
my_wpac_2023_048 = [24.8,144.6,65;    26.1,143.3,75;   28.3,142.8,80;  30.3,140.9,80;  32.7,139.3,70];
btk_wpac_2023_048 = [25.0,144.6,65;   26.4,142.9,110;  28.2,142.3,90;  29.4,140.0,70;  31.4,137.9,85]; # JTWC best track
btk2_wpac_2023_048 = [25.0,144.7,67.2;26.4,142.9,100.8;28.2,142.4,95.2;29.3,140.0,84.0;31.2,138.1,78.4]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2023_048];
myvect = [myvect;my_wpac_2023_048];
btkvect = [btkvect;btk_wpac_2023_048];
btk2vect = [btk2vect;btk2_wpac_2023_048];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 049 ... LAN around 2023-08-09-21Z

rsmc_wpac_2023_049 = [26.2,142.9,72.8; 28.3,142.6,89.6;30.3,140.4,84.0;32.4,138.6,78.4;35.0,138.3,56.0];
my_wpac_2023_049 = [26.1,142.9,70;     28.4,142.6,90;  30.3,140.5,90;  33.3,138.7,70;  36.9,138.4,50];
btk_wpac_2023_049 = [26.4,142.9,110;   28.2,142.3,90;  29.4,140.0,70;  31.4,137.9,85;  33.4,136.1,75]; # JTWC best track
btk2_wpac_2023_049 = [26.4,142.9,100.8;28.2,142.4,95.2;29.3,140.0,84.0;31.2,138.1,78.4;33.3,136.0,67.2]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2023_049];
myvect = [myvect;my_wpac_2023_049];
btkvect = [btkvect;btk_wpac_2023_049];
btk2vect = [btk2vect;btk2_wpac_2023_049];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 050 ... LAN around 2023-08-10-15Z

rsmc_wpac_2023_050 = [28.0,142.3,95.2; 29.3,140.4,95.2;31.1,138.8,89.6;33.2,137.7,84.0;35.6,137.6,61.6];
my_wpac_2023_050 = [28.1,142.3,100;    29.6,140.5,100; 31.7,138.6,80;  34.7,137.4,60;  38.2,137.9,45];
btk_wpac_2023_050 = [27.9,142.6,105;   29.0,140.7,75;  30.8,138.5,85;  32.8,136.6,80;  36.2,134.7,45]; # JTWC best track
btk2_wpac_2023_050 = [27.9,142.6,100.8;29.1,140.7,89.6;30.7,138.6,84.0;32.8,136.6,67.2;36.0,134.7,50.4]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2023_050];
myvect = [myvect;my_wpac_2023_050];
btkvect = [btkvect;btk_wpac_2023_050];
btk2vect = [btk2vect;btk2_wpac_2023_050];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 051 ... LAN around 2023-08-10-21Z

rsmc_wpac_2023_051 = [28.3,142.1,100.8;29.3,140.1,95.2;31.3,138.2,89.6;33.0,137.2,84.0;36.2,137.3,61.6];
my_wpac_2023_051 = [28.1,141.9,115;    29.4,140.0,110; 31.5,137.8,100; 33.6,136.7,70;  38.4,136.6,55];
btk_wpac_2023_051 = [28.2,142.3,90;    29.4,140.0,70;  31.4,137.9,85;  33.4,136.1,75;  37.0,134.7,45]; # JTWC best track
btk2_wpac_2023_051 = [28.2,142.4,95.2; 29.3,140.0,84.0;31.2,138.1,78.4;33.3,136.0,67.2;37.0,134.8,44.8]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2023_051];
myvect = [myvect;my_wpac_2023_051];
btkvect = [btkvect;btk_wpac_2023_051];
btk2vect = [btk2vect;btk2_wpac_2023_051];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 052 ... LAN around 2023-08-11-15Z

rsmc_wpac_2023_052 = [29.1,140.3,100.8;30.3,137.9,95.2;32.1,136.3,84.0;35.4,135.5,67.2;40.7,136.0,50.4];
my_wpac_2023_052 = [29.3,140.4,95;     30.7,138.1,85;  33.2,136.8,70;  36.2,136.5,50;  42.0,138.1,45];
btk_wpac_2023_052 = [29.0,140.7,75;    30.8,138.5,85;  32.8,136.6,80;  36.2,134.7,45;  40.8,136.2,35]; # JTWC best track
btk2_wpac_2023_052 = [29.1,140.7,89.6; 30.7,138.6,84.0;32.8,136.6,67.2;36.0,134.7,50.4;40.6,136.6,44.8]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2023_052];
myvect = [myvect;my_wpac_2023_052];
btkvect = [btkvect;btk_wpac_2023_052];
btk2vect = [btk2vect;btk2_wpac_2023_052];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 053 ... SAOLA around 2023-08-24-15Z

rsmc_wpac_2023_053 = [20.0,123.8,61.6;17.8,123.4,89.6; 16.8,124.0,106.4;18.2,124.4,106.4;19.5,124.3,106.4];
my_wpac_2023_053 = [19.6,123.5,70;    17.7,122.9,95;   16.1,122.8,100;  17.9,123.9,105;  19.9,123.7,110];
btk_wpac_2023_053 = [19.5,123.6,90;   17.5,123.1,110;  16.2,123.2,115;  17.9,124.0,110;  19.3,122.7,135]; # JTWC best track
btk2_wpac_2023_053 = [19.6,123.6,72.8;17.6,123.0,100.8;16.2,123.2,106.4;17.9,124.0,95.2; 19.3,122.7,106.4]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2023_053];
myvect = [myvect;my_wpac_2023_053];
btkvect = [btkvect;btk_wpac_2023_053];
btk2vect = [btk2vect;btk2_wpac_2023_053];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 054 ... SAOLA around 2023-08-25-03Z

rsmc_wpac_2023_054 = [18.5,123.6,72.8;16.7,124.2,95.2; 17.3,125.5,106.4;19.5,124.7,106.4;21.6,122.2,106.4];
my_wpac_2023_054 = [18.4,123.6,80;    16.5,124.2,105;  17.5,125.5,105;  20.2,124.5,115;  22.8,121.9,110];
btk_wpac_2023_054 = [18.6,123.2,95;   16.8,122.9,115;  16.9,124.4,90;   18.6,123.3,100;  20.1,121.0,135]; # JTWC best track
btk2_wpac_2023_054 = [18.5,123.2,84.0;16.8,122.9,106.4;16.8,124.4,89.6; 18.5,123.5,95.2; 20.1,121.0,117.6]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2023_054];
myvect = [myvect;my_wpac_2023_054];
btkvect = [btkvect;btk_wpac_2023_054];
btk2vect = [btk2vect;btk2_wpac_2023_054];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 055 ... SAOLA around 2023-08-25-21Z

rsmc_wpac_2023_055 = [17.4,123.2,89.6; 16.8,124.4,106.4;18.4,124.9,112.0;20.8,123.3,112.0;22.8,121.2,112.0];
my_wpac_2023_055 = [17.5,123.0,100;    16.9,124.1,110;  18.6,124.4,125;  21.7,122.7,110;  24.0,119.9,110];
btk_wpac_2023_055 = [17.1,123.0,120;   16.0,123.8,100;  18.2,123.9,100;  19.9,121.8,140;  20.9,118.7,130]; # JTWC best track
btk2_wpac_2023_055 = [17.2,122.9,106.4;16.0,123.7,95.2; 18.3,123.8,95.2; 19.9,121.9,112.0;20.9,118.7,117.6]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2023_055];
myvect = [myvect;my_wpac_2023_055];
btkvect = [btkvect;btk_wpac_2023_055];
btk2vect = [btk2vect;btk2_wpac_2023_055];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 056 ... KOINU around 2023-10-01-03Z

rsmc_wpac_2023_056 = [19.3,128.0,67.2;20.8,125.8,78.4; 21.8,123.9,95.2;22.0,121.2,95.2;21.9,119.0,89.6];
my_wpac_2023_056 = [19.2,127.8,75;    21.0,125.6,90;   22.6,123.3,95;  22.9,120.4,100; 22.8,118.5,90];
btk_wpac_2023_056 = [19.1,127.4,105;  20.6,125.2,105;  22.2,123.5,105; 22.0,120.8,110; 21.8,117.7,90]; # JTWC best track
btk2_wpac_2023_056 = [19.2,127.3,84.0;20.5,125.1,100.8;22.2,123.5,95.2;22.0,120.8,89.6;21.8,117.7,84.0]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2023_056];
myvect = [myvect;my_wpac_2023_056];
btkvect = [btkvect;btk_wpac_2023_056];
btk2vect = [btk2vect;btk2_wpac_2023_056];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 057 ... KOINU around 2023-10-01-21Z

rsmc_wpac_2023_057 = [20.2,126.0,89.6; 21.9,124.0,95.2;22.6,121.7,89.6; 22.7,119.9,72.8;22.8,118.7,56.0];
my_wpac_2023_057 = [20.2,125.7,95;     21.8,123.5,110; 21.8,121.9,100;  22.7,119.5,85;  22.4,117.8,85];
btk_wpac_2023_057 = [20.3,125.6,110;   22.0,124.2,90;  21.9,121.2,120;  21.9,118.3,70;  21.2,115.7,105]; # JTWC best track
btk2_wpac_2023_057 = [20.2,125.5,100.8;22.1,124.0,95.2;22.0,121.2,100.8;21.9,118.3,72.8;21.2,115.7,95.2]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2023_057];
myvect = [myvect;my_wpac_2023_057];
btkvect = [btkvect;btk_wpac_2023_057];
btk2vect = [btk2vect;btk2_wpac_2023_057];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 058 ... KOINU around 2023-10-02-03Z

rsmc_wpac_2023_058 = [20.6,125.5,100.8;22.2,123.3,95.2;22.7,120.8,78.4;22.9,119.2,56.0;23.1,118.1,44.8];
my_wpac_2023_058 = [20.7,125.3,115;    22.0,123.1,115; 22.6,121.1,90;  23.8,118.6,80;  24.5,117.3,55];
btk_wpac_2023_058 = [20.6,125.2,105;   22.2,123.5,105; 22.0,120.8,110; 21.8,117.7,90;  21.1,115.4,100]; # JTWC best track
btk2_wpac_2023_058 = [20.5,125.1,100.8;22.2,123.5,95.2;22.0,120.8,89.6;21.8,117.7,84.0;21.2,115.4,95.2]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2023_058];
myvect = [myvect;my_wpac_2023_058];
btkvect = [btkvect;btk_wpac_2023_058];
btk2vect = [btk2vect;btk2_wpac_2023_058];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 059 ... KOINU around 2023-10-06-21Z

rsmc_wpac_2023_059 = [21.2,114.9,84.0;21.1,113.3,67.2;20.6,110.8,39.2];
my_wpac_2023_059 = [21.2,114.5,85;    21.0,112.8,65;  20.8,110.0,40];
btk_wpac_2023_059 = [21.4,114.9,85;   21.7,113.6,70;  20.9,111.8,25]; # JTWC best track
btk2_wpac_2023_059 = [21.4,114.9,84.0;21.8,113.7,61.6;20.9,111.8,25.0]; # JMA best track (except day 3 JTWC btk)
rsmcvect = [rsmcvect;rsmc_wpac_2023_059];
myvect = [myvect;my_wpac_2023_059];
btkvect = [btkvect;btk_wpac_2023_059];
btk2vect = [btk2vect;btk2_wpac_2023_059];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Wpac 060 ... BOLAVEN around 2023-10-07-21Z

rsmc_wpac_2023_060 = [10.4,151.0,61.6;11.9,147.8,84.0;15.0,145.1,95.2;18.7,142.8,100.8;21.2,143.0,106.4];
my_wpac_2023_060 = [10.5,150.8,55;    12.3,147.2,80;  15.7,143.8,100; 19.1,142.7,130;  21.6,143.2,125];
btk_wpac_2023_060 = [10.7,151.5,50;   13.0,147.5,60;  16.0,144.5,100; 19.7,142.9,165;  24.1,145.4,140]; # JTWC best track
btk2_wpac_2023_060 = [10.1,150.8,56.0;12.7,147.7,67.2;16.0,144.5,95.2;19.7,142.8,128.8;24.0,145.4,117.6]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2023_060];
myvect = [myvect;my_wpac_2023_060];
btkvect = [btkvect;btk_wpac_2023_060];
btk2vect = [btk2vect;btk2_wpac_2023_060];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 061 ... BOLAVEN around 2023-10-08-21Z

rsmc_wpac_2023_061 = [12.7,148.1,78.4;16.2,145.0,95.2;19.8,143.1,106.4;23.0,144.7,112.0;27.6,148.8,106.4];
my_wpac_2023_061 = [12.8,148.3,70;    16.0,144.8,100; 20.2,143.0,125;  23.8,145.0,135;  28.1,148.7,115];
btk_wpac_2023_061 = [13.0,147.5,60;   16.0,144.5,100; 19.7,142.9,165;  24.1,145.4,140;  31.2,153.2,90]; # JTWC best track
btk2_wpac_2023_061 = [12.7,147.7,67.2;16.0,144.5,95.2;19.7,142.8,128.8;24.0,145.4,117.6;31.3,153.5,95.2]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2023_061];
myvect = [myvect;my_wpac_2023_061];
btkvect = [btkvect;btk_wpac_2023_061];
btk2vect = [btk2vect;btk2_wpac_2023_061];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 062 ... BOLAVEN around 2023-10-09-03Z

rsmc_wpac_2023_062 = [13.4,147.2,84.0;17.3,144.2,100.8;20.7,143.1,112.0;24.1,145.6,112.0;29.6,150.7,100.8];
my_wpac_2023_062 = [13.4,146.8,80;    13.4,145.0,110;  21.0,143.1,135;  24.5,145.5,125;  29.9,151.4,100];
btk_wpac_2023_062 = [13.7,146.5,70;   17.1,144.0,135;  20.6,143.0,155;  25.6,146.9,125;  34.3,156.3,80]; # JTWC best track
btk2_wpac_2023_062 = [13.7,146.6,72.8;17.1,144.0,112.0;20.6,142.9,128.8;25.5,146.9,112.0;34.1,156.6,89.6]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2023_062];
myvect = [myvect;my_wpac_2023_062];
btkvect = [btkvect;btk_wpac_2023_062];
btk2vect = [btk2vect;btk2_wpac_2023_062];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 063 ... BOLAVEN around 2023-10-09-21Z

rsmc_wpac_2023_063 = [16.3,144.1,89.6;19.8,142.3,106.4;23.3,144.4,112.0;28.6,148.9,106.4;37.4,158.9,100.8];
my_wpac_2023_063 = [16.7,144.1,85;    20.3,142.4,120;  24.1,144.6,120;  29.7,148.8,95;   38.5,159.1,80];
btk_wpac_2023_063 = [16.0,144.5,100;  19.7,142.9,165;  24.1,145.4,140;  31.2,153.2,90;   42.4,167.8,55]; # JTWC best track
btk2_wpac_2023_063 = [16.0,144.5,95.2;19.7,142.8,128.8;24.0,145.4,117.6;31.3,153.5,95.2; 42.9,168.0,56.0]; # JMA best track (except day 5 wind JTWC btk)
rsmcvect = [rsmcvect;rsmc_wpac_2023_063];
myvect = [myvect;my_wpac_2023_063];
btkvect = [btkvect;btk_wpac_2023_063];
btk2vect = [btk2vect;btk2_wpac_2023_063];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 064 ... TD / 17W around 2023-11-12-21Z

rsmc_wpac_2023_064 = [6.6,139.2,39.2;6.8,138.0,39.2;7.8,136.7,44.8;9.1,133.1,44.8;10.9,129.0,50.4];
my_wpac_2023_064 = [6.4,139.3,30;    7.4,137.6,35;  8.2,135.3,35;  9.8,132.4,50;  11.4,128.2,45];
btk_wpac_2023_064 = [5.4,140.1,25;   5.8,138.6,20;  5.7,137.3,20;  6.9,135.7,15;  9.6,131.5,15]; # JTWC best track (days 1-2 only)
btk2_wpac_2023_064 = btk_wpac_2023_064; #placeholder
rsmcvect = [rsmcvect;rsmc_wpac_2023_064];
myvect = [myvect;my_wpac_2023_064];
btkvect = [btkvect;btk_wpac_2023_064];
btk2vect = [btk2vect;btk2_wpac_2023_064];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 065 ... TD / 17W around 2023-11-13-03Z

rsmc_wpac_2023_065 = [6.4,140.0,39.2;6.8,138.2,39.2;7.7,134.6,44.8;9.0,130.7,39.2;10.9,127.9,39.2];
my_wpac_2023_065 = [6.6,139.2,35;    7.2,136.5,40;  7.8,133.4,45;  9.5,131.1,45;  11.2,128.4,40];
btk_wpac_2023_065 = [5.3,140.0,25;   6.0,137.5,20;  5.9,136.6,20;  8.8,135.8,15;  9.6,130.0,15]; # JTWC best track (days 1-2 only)
btk2_wpac_2023_065 = btk_wpac_2023_065; #placeholder
rsmcvect = [rsmcvect;rsmc_wpac_2023_065];
myvect = [myvect;my_wpac_2023_065];
btkvect = [btkvect;btk_wpac_2023_065];
btk2vect = [btk2vect;btk2_wpac_2023_065];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Shem 001 ... MAL around 2023-11-14-21Z

rsmc_shem_2024_001 = [23.4,179.2,39.2;27.4,182.9,33.6;30.8,186.7,0];
my_shem_2024_001 = [23.3,179.0,50;    27.5,182.4,40;  31.1,187.2,0];
btk_shem_2024_001 = [23.8,180.7,55;   28.0,184.8,35;  30.4,187.6,0]; # operationally from U.S. sources
btk2_shem_2024_001 = btk_shem_2024_001; #placeholder
rsmcvect = [rsmcvect;rsmc_shem_2024_001];
myvect = [myvect;my_shem_2024_001];
btkvect = [btkvect;btk_shem_2024_001];
btk2vect = [btk2vect;btk2_shem_2024_001];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;5;5;5];

# Shem 002 ... MAL around 2023-11-15-03Z

rsmc_shem_2024_002 = [24.6,180.2,39.2;28.8,184.4,33.6;32.3,188.1,0];
my_shem_2024_002 = [24.8,180.5,55;    29.1,185.2,45;  32.9,190.6,0];
btk_shem_2024_002 = [24.9,180.2,50;   29.7,184.8,35;  30.5,188.5,0]; # operationally from U.S. sources
btk2_shem_2024_002 = btk_shem_2024_002; #placeholder
rsmcvect = [rsmcvect;rsmc_shem_2024_002];
myvect = [myvect;my_shem_2024_002];
btkvect = [btkvect;btk_shem_2024_002];
btk2vect = [btk2vect;btk2_shem_2024_002];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;5;5;5];

# Shem 003 ... MAL around 2023-11-15-21Z

rsmc_shem_2024_003 = [28.0,183.3,33.6;31.1,187.8,33.6];
my_shem_2024_003 = [28.1,183.6,40;    31.1,188.2,35];
btk_shem_2024_003 = [28.0,184.4,35;   30.4,187.6,25]; # operationally from U.S. sources
btk2_shem_2024_003 = btk_shem_2024_003; #placeholder
rsmcvect = [rsmcvect;rsmc_shem_2024_003];
myvect = [myvect;my_shem_2024_003];
btkvect = [btkvect;btk_shem_2024_003];
btk2vect = [btk2vect;btk2_shem_2024_003];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;5;5];

# Nio 28 ... BOB 05 / 07B around 2023-11-16-21Z

rsmc_nio_2023_28 = [21.6,89.5,37.1];
my_nio_2023_28 = [22.7,90.9,35];
btk_nio_2023_28 = [23.7,91.7,30]; # JTWC best track
btk2_nio_2023_28 = [23.3,91.3,31.8]; # IMD brief report
rsmcvect = [rsmcvect;rsmc_nio_2023_28];
myvect = [myvect;my_nio_2023_28];
btkvect = [btkvect;btk_nio_2023_28];
btk2vect = [btk2vect;btk2_nio_2023_28];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;2];

# Nio 29 ... BOB 06 / 95B around 2023-12-01-21Z

rsmc_nio_2023_29 = [11.6,83.1,37.1;13.1,81.1,42.4;14.9,80.4,47.7;16.9,81.4,37.1];
my_nio_2023_29 = [11.6,82.9,35;    13.0,80.9,45;  14.8,80.8,45;  16.6,80.6,30];
btk_nio_2023_29 = [10.5,83.6,30;   12.7,82.0,50;  14.3,80.2,66;  16.9,80.4,35]; # JTWC best track
btk2_nio_2023_29 = [11.1,82.7,31.8;12.8,81.6,47.7;14.5,80.3,53.0;16.8,80.4,31.8]; # IMD prelim report
rsmcvect = [rsmcvect;rsmc_nio_2023_29];
myvect = [myvect;my_nio_2023_29];
btkvect = [btkvect;btk_nio_2023_29];
btk2vect = [btk2vect;btk2_nio_2023_29];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Nio 30 ... BOB 06 / 08B around 2023-12-03-03Z

rsmc_nio_2023_30 = [13.5,81.0,47.7;15.5,80.7,47.7;17.5,82.3,26.5];
my_nio_2023_30 = [13.2,81.0,55;    15.1,80.3,50;  17.1,80.3,25];
btk_nio_2023_30 = [13.0,81.5,55;   14.8,80.1,60;  17.3,80.6,30]; # JTWC best track
btk2_nio_2023_30 = [13.1,81.2,47.7;14.9,80.2,53.0;17.4,80.5,21.8]; # IMD prelim report
rsmcvect = [rsmcvect;rsmc_nio_2023_30];
myvect = [myvect;my_nio_2023_30];
btkvect = [btkvect;btk_nio_2023_30];
btk2vect = [btk2vect;btk2_nio_2023_30];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Nio 31 ... MICHAUNG around 2023-12-03-09Z

rsmc_nio_2023_31 = [13.8,80.6,53.0;16.0,80.5,47.7;17.6,82.2,21.2];
my_nio_2023_31 = [13.5,81.3,55;    15.3,80.9,50;  17.0,81.4,30];
btk_nio_2023_31 = [13.5,81.0,55;   15.6,80.1,55;  18.3,81.1,25]; # JTWC best track
btk2_nio_2023_31 = [13.5,80.8,53.0;15.5,80.3,53.0;18.8,80.5,31.8]; # IMD prelim report
rsmcvect = [rsmcvect;rsmc_nio_2023_31];
myvect = [myvect;my_nio_2023_31];
btkvect = [btkvect;btk_nio_2023_31];
btk2vect = [btk2vect;btk2_nio_2023_31];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Nio 32 ... MICHAUNG around 2023-12-03-15Z

rsmc_nio_2023_32 = [14.3,80.5,53.0;16.4,80.7,42.4];
my_nio_2023_32 = [14.2,81.2,55;    16.0,81.3,45];
btk_nio_2023_32 = [13.9,80.6,60;   16.0,80.1,45]; # JTWC best track
btk2_nio_2023_32 = [14.0,80.5,58.3;16.0,80.3,42.4]; # IMD prelim report
rsmcvect = [rsmcvect;rsmc_nio_2023_32];
myvect = [myvect;my_nio_2023_32];
btkvect = [btkvect;btk_nio_2023_32];
btk2vect = [btk2vect;btk2_nio_2023_32];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Nio 33 ... MICHAUNG around 2023-12-04-03Z

rsmc_nio_2023_33 = [15.4,80.4,53.0;17.1,81.1,31.8];
my_nio_2023_33 = [15.3,80.5,55;    16.9,80.7,30];
btk_nio_2023_33 = [14.8,80.1,60;   17.3,80.6,30]; # JTWC best track
btk2_nio_2023_33 = [14.9,80.2,53.0;17.4,80.5,21.2]; # IMD prelim report
rsmcvect = [rsmcvect;rsmc_nio_2023_33];
myvect = [myvect;my_nio_2023_33];
btkvect = [btkvect;btk_nio_2023_33];
btk2vect = [btk2vect;btk2_nio_2023_33];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Nio 34 ... MICHAUNG around 2023-12-04-09Z

rsmc_nio_2023_34 = [15.8,80.4,53.0;17.4,81.4,26.5];
my_nio_2023_34 = [15.5,80.5,50;    17.4,81.0,25];
btk_nio_2023_34 = [15.6,80.1,55;   18.3,81.1,25]; # JTWC best track
btk2_nio_2023_34 = [15.5,80.3,53.0;18.3,81.1,26.5]; # IMD prelim report (except day 2 JTWC btk)
rsmcvect = [rsmcvect;rsmc_nio_2023_34];
myvect = [myvect;my_nio_2023_34];
btkvect = [btkvect;btk_nio_2023_34];
btk2vect = [btk2vect;btk2_nio_2023_34];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Shem 004 ... JASPER around 2023-12-05-09Z

rsmc_shem_2024_004 = [11.1,157.2,72.8;12.8,156.7,95.2;14.6,155.6,100.8;15.7,154.5,89.6;16.6,153.2,78.4];
my_shem_2024_004 = [11.2,156.3,65;    12.9,155.8,95;  14.7,154.7,95;   16.2,153.4,85;  17.7,152.2,65];
btk_shem_2024_004 = [11.0,157.2,70;   12.8,156.8,90;  14.5,156.5,115;  16.0,155.5,80;  16.1,154.0,55]; # operationally from U.S. sources
btk2_shem_2024_004 = [11.3,157.3,72.8;12.6,156.9,89.6;14.4,156.6,115.0;15.7,155.3,78.4;16.9,153.7,61.6]; # BoM spreadsheet (except days 3+4 wind)
rsmcvect = [rsmcvect;rsmc_shem_2024_004];
myvect = [myvect;my_shem_2024_004];
btkvect = [btkvect;btk_shem_2024_004];
btk2vect = [btk2vect;btk2_shem_2024_004];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 005 ... JASPER around 2023-12-06-03Z

rsmc_shem_2024_005 = [12.4,156.9,89.6;14.4,156.0,112.0;15.5,155.1,95.2; 16.4,153.6,72.8;17.2,151.9,72.8];
my_shem_2024_005 = [12.6,157.0,95;    14.6,156.5,100;  15.9,155.6,85;   16.9,154.2,70;  17.7,152.3,60];
btk_shem_2024_005 = [12.1,156.8,85;   14.2,156.6,120;  15.4,155.8,90;   16.1,154.2,55;  17.8,150.3,45]; # operationally from U.S. sources
btk2_shem_2024_005 = [12.0,156.9,84.0;14.2,156.6,117.6;15.5,155.9,100.8;16.3,154.2,61.6;17.7,150.4,50.4]; # BoM spreadsheet (except day 2 wind)
rsmcvect = [rsmcvect;rsmc_shem_2024_005];
myvect = [myvect;my_shem_2024_005];
btkvect = [btkvect;btk_shem_2024_005];
btk2vect = [btk2vect;btk2_shem_2024_005];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 006 ... JASPER around 2023-12-06-09Z

rsmc_shem_2024_006 = [13.2,156.9,100.8;15.1,156.3,117.6;16.3,155.1,89.6;16.9,153.2,67.2;17.5,151.6,67.2];
my_shem_2024_006 = [12.8,156.8,105;    14.9,156.3,105;  16.4,155.1,75;  17.0,153.1,65;  17.6,151.4,55];
btk_shem_2024_006 = [12.8,156.8,90;    14.5,156.5,115;  16.0,155.5,80;  16.1,154.0,55;  17.5,149.6,45]; # operationally from U.S. sources
btk2_shem_2024_006 = [12.6,156.9,89.6; 14.4,156.6,115.0;15.7,155.3,78.4;16.9,153.7,61.6;17.5,149.7,50.4]; # BoM spreadsheet (except days 2+3 wind)
rsmcvect = [rsmcvect;rsmc_shem_2024_006];
myvect = [myvect;my_shem_2024_006];
btkvect = [btkvect;btk_shem_2024_006];
btk2vect = [btk2vect;btk2_shem_2024_006];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 007 ... JASPER around 2023-12-06-15Z

rsmc_shem_2024_007 = [13.5,156.8,106.4;15.3,156.1,112.0;16.2,154.8,84.0;16.9,152.9,67.2;17.4,151.3,67.2];
my_shem_2024_007 = [13.4,156.7,105;    15.2,156.0,90;   16.4,154.3,70;  17.0,152.2,65;  17.1,150.3,55];
btk_shem_2024_007 = [13.1,156.7,95;    15.0,156.5,110;  15.8,155.2,70;  17.5,152.9,50;  16.7,149.1,45]; # operationally from U.S. sources
btk2_shem_2024_007 = [13.1,156.8,95.2; 14.9,156.4,112.0;15.9,155.2,72.8;17.3,152.5,56.0;17.0,148.9,50.4]; # BoM spreadsheet
rsmcvect = [rsmcvect;rsmc_shem_2024_007];
myvect = [myvect;my_shem_2024_007];
btkvect = [btkvect;btk_shem_2024_007];
btk2vect = [btk2vect;btk2_shem_2024_007];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 008 ... JASPER around 2023-12-07-09Z

rsmc_shem_2024_008 = [14.6,156.2,117.6;15.4,154.9,89.6;15.8,153.0,67.2;16.1,150.8,67.2;16.0,148.8,67.2];
my_shem_2024_008 = [14.6,156.0,100;    15.6,154.8,80;  15.9,153.1,65;  15.9,151.1,60;  16.2,149.5,60];
btk_shem_2024_008 = [14.5,156.5,115;   16.0,155.5,80;  16.1,154.0,55;  17.5,149.6,45;  15.9,147.2,60]; # operationally from U.S. sources
btk2_shem_2024_008 = [14.4,156.6,115.0;15.7,155.3,78.4;16.9,153.7,61.6;17.5,149.7,50.4;15.9,147.7,50.4]; # BoM spreadsheet (except days 1+2 wind)
rsmcvect = [rsmcvect;rsmc_shem_2024_008];
myvect = [myvect;my_shem_2024_008];
btkvect = [btkvect;btk_shem_2024_008];
btk2vect = [btk2vect;btk2_shem_2024_008];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 009 ... JASPER around 2023-12-07-15Z

rsmc_shem_2024_009 = [14.8,156.1,117.6;15.5,154.8,84.0;15.8,152.8,67.2;15.9,150.7,67.2;15.9,148.7,67.2];
my_shem_2024_009 = [14.8,155.8,100;    15.6,154.7,75;  15.9,153.0,65;  16.0,151.1,60;  15.6,149.0,75];
btk_shem_2024_009 = [15.0,156.5,110;   15.8,155.2,70;  17.5,152.9,50;  16.7,149.1,45;  15.5,147.3,50]; # operationally from U.S. sources
btk2_shem_2024_009 = [14.9,156.4,112.0;15.9,155.2,72.8;17.3,152.5,56.0;17.0,148.9,50.4;15.7,147.4,50.4]; # BoM spreadsheet
rsmcvect = [rsmcvect;rsmc_shem_2024_009];
myvect = [myvect;my_shem_2024_009];
btkvect = [btkvect;btk_shem_2024_009];
btk2vect = [btk2vect;btk2_shem_2024_009];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 010 ... JASPER around 2023-12-08-09Z

rsmc_shem_2024_010 = [15.4,155.7,89.6;16.0,153.8,67.2;16.2,151.7,61.6;15.7,149.9,61.6;15.7,147.7,72.8];
my_shem_2024_010 = [15.6,155.5,90;    16.0,153.6,70;  16.4,151.5,60;  15.7,149.5,65;  15.5,146.9,80];
btk_shem_2024_010 = [16.0,155.5,80;   16.1,154.0,55;  17.5,149.6,45;  15.9,147.2,60;  15.7,145.8,60]; # operationally from U.S. sources
btk2_shem_2024_010 = [15.7,155.3,78.4;16.9,153.7,61.6;17.5,149.7,50.4;15.9,147.7,50.4;15.9,145.8,61.6]; # BoM spreadsheet (except day 1 wind)
rsmcvect = [rsmcvect;rsmc_shem_2024_010];
myvect = [myvect;my_shem_2024_010];
btkvect = [btkvect;btk_shem_2024_010];
btk2vect = [btk2vect;btk2_shem_2024_010];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 011 ... JASPER around 2023-12-08-15Z

rsmc_shem_2024_011 = [15.9,155.3,84.0;16.5,152.6,67.2;16.7,150.1,61.6;16.3,147.9,67.2;16.7,145.1,67.2];
my_shem_2024_011 = [15.9,155.2,80;    16.4,153.2,60;  16.9,150.5,55;  16.5,148.1,65;  16.7,146.4,75];
btk_shem_2024_011 = [15.8,155.2,70;   17.5,152.9,50;  16.7,149.1,45;  15.5,147.3,50;  15.8,145.0,50]; # operationally from U.S. sources
btk2_shem_2024_011 = [15.9,155.2,72.8;17.3,152.5,56.0;17.0,148.9,50.4;15.7,147.4,50.4;15.9,144.95,44.8]; # BoM spreadsheet
rsmcvect = [rsmcvect;rsmc_shem_2024_011];
myvect = [myvect;my_shem_2024_011];
btkvect = [btkvect;btk_shem_2024_011];
btk2vect = [btk2vect;btk2_shem_2024_011];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 012 ... JASPER around 2023-12-08-21Z

rsmc_shem_2024_012 = [16.0,154.7,78.4;16.7,151.9,61.6;16.6,149.7,61.6;16.4,147.3,72.8;16.8,144.6,56.0];
my_shem_2024_012 = [16.4,154.8,70;    16.9,151.6,60;  16.4,149.2,55;  16.3,146.8,65;  16.5,144.0,60];
btk_shem_2024_012 = [15.9,154.9,60;   17.5,151.5,50;  16.6,148.5,50;  15.6,147.0,45;  15.9,144.4,40]; # operationally from U.S. sources
btk2_shem_2024_012 = [15.9,154.8,67.2;17.4,151.4,50.4;16.7,148.6,50.4;15.5,146.9,50.4;15.94,144.41,33.6]; # BoM spreadsheet
rsmcvect = [rsmcvect;rsmc_shem_2024_012];
myvect = [myvect;my_shem_2024_012];
btkvect = [btkvect;btk_shem_2024_012];
btk2vect = [btk2vect;btk2_shem_2024_012];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 013 ... JASPER around 2023-12-09-09Z

rsmc_shem_2024_013 = [16.8,153.3,61.6;17.2,150.1,56.0;16.4,148.0,61.6;16.2,145.5,72.8;16.1,143.1,44.8];
my_shem_2024_013 = [17.2,153.1,60;    17.5,149.9,50;  16.7,147.8,55;  16.7,144.8,55;  17.3,141.3,40];
btk_shem_2024_013 = [16.1,154.0,55;   17.5,149.6,45;  15.9,147.2,60;  15.7,145.8,60;  16.4,143.6,30]; # operationally from U.S. sources
btk2_shem_2024_013 = [16.9,153.7,61.6;17.5,149.7,50.4;15.9,147.7,50.4;15.9,145.8,61.6;16.0,143.5,28.0]; # BoM spreadsheet
rsmcvect = [rsmcvect;rsmc_shem_2024_013];
myvect = [myvect;my_shem_2024_013];
btkvect = [btkvect;btk_shem_2024_013];
btk2vect = [btk2vect;btk2_shem_2024_013];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 014 ... JASPER around 2023-12-10-15Z

rsmc_shem_2024_014 = [17.5,149.2,50.4;16.5,147.2,67.2;16.7,144.3,44.8; 16.3,141.6,28.0;15.2,139.2,39.2];
my_shem_2024_014 = [17.7,149.8,45;    17.2,147.4,50;  17.1,144.2,40;   16.6,141.4,25;  17.0,138.1,35];
btk_shem_2024_014 = [16.7,149.1,45;   15.5,147.3,50;  15.8,145.0,50;   15.8,143.3,25;  15.7,142.3,25]; # operationally from U.S. sources
btk2_shem_2024_014 = [17.0,148.9,50.4;15.7,147.4,50.4;15.9,144.95,44.8;15.9,143.3,22.4;15.8,142.4,16.8]; # BoM spreadsheet
rsmcvect = [rsmcvect;rsmc_shem_2024_014];
myvect = [myvect;my_shem_2024_014];
btkvect = [btkvect;btk_shem_2024_014];
btk2vect = [btk2vect;btk2_shem_2024_014];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 015 ... JASPER around 2023-12-11-03Z

rsmc_shem_2024_015 = [16.7,148.2,56.0;16.5,145.6,67.2;16.8,142.7,33.6;15.7,139.9,33.6;13.9,137.7,39.2];
my_shem_2024_015 = [17.0,147.5,40;    16.6,145.3,45;  17.2,142.8,25;  15.9,141.5,25;  15.5,137.9,40];
btk_shem_2024_015 = [16.3,147.9,55;   15.7,146.4,55;  16.2,144.3,35;  15.8,142.9,25;  16.1,141.4,25]; # operationally from U.S. sources
btk2_shem_2024_015 = [16.3,148.0,50.4;15.8,146.3,50.4;16.1,144.2,33.6;15.8,142.8,16.8;16.1,141.8,22.4]; # BoM spreadsheet
rsmcvect = [rsmcvect;rsmc_shem_2024_015];
myvect = [myvect;my_shem_2024_015];
btkvect = [btkvect;btk_shem_2024_015];
btk2vect = [btk2vect;btk2_shem_2024_015];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 016 ... JASPER around 2023-12-11-09Z

rsmc_shem_2024_016 = [16.4,147.7,56.0;16.4,144.9,56.0;16.4,142.1,33.6;15.1,139.3,33.6;13.5,137.4,39.2];
my_shem_2024_016 = [16.3,147.3,45;    15.9,144.6,40;  16.2,141.7,25;  14.1,139.3,30;  12.7,136.6,40];
btk_shem_2024_016 = [15.9,147.2,60;   15.7,145.8,60;  16.4,143.6,30;  15.7,142.5,25;  15.8,141.4,20]; # operationally from U.S. sources (except day 5)
btk2_shem_2024_016 = [15.9,147.7,50.4;15.9,145.8,61.6;16.0,143.5,28.0;15.8,142.5,16.8;15.8,141.4,22.4]; # BoM spreadsheet
rsmcvect = [rsmcvect;rsmc_shem_2024_016];
myvect = [myvect;my_shem_2024_016];
btkvect = [btkvect;btk_shem_2024_016];
btk2vect = [btk2vect;btk2_shem_2024_016];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 017 ... JASPER around 2023-12-11-21Z

rsmc_shem_2024_017 = [16.3,146.5,61.6;16.6,143.8,33.6;  16.1,141.5,28.0;14.8,139.0,33.6;13.5,137.0,44.8];
my_shem_2024_017 = [16.0,146.4,55;    16.4,143.4,30;    16.0,141.2,20;  14.7,138.7,30;  13.7,136.6,50];
btk_shem_2024_017 = [15.6,147.0,45;   15.9,144.4,40;    15.9,143.0,30;  15.7,142.1,25;  15.7,141.4,20]; # operationally from U.S. sources (except day 5)
btk2_shem_2024_017 = [15.5,146.9,50.4;15.94,144.41,33.6;15.8,143.2,22.4;15.9,142.3,22.4;15.7,141.4,22.4]; # BoM spreadsheet
rsmcvect = [rsmcvect;rsmc_shem_2024_017];
myvect = [myvect;my_shem_2024_017];
btkvect = [btkvect;btk_shem_2024_017];
btk2vect = [btk2vect;btk2_shem_2024_017];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 018 ... JASPER around 2023-12-12-03Z

rsmc_shem_2024_018 = [16.0,145.7,67.2;16.4,143.0,33.6;15.6,140.6,33.6;14.1,138.0,39.2;12.9,135.8,33.6];
my_shem_2024_018 = [16.0,145.6,55;    16.2,142.1,25;  15.7,140.2,25;  13.8,137.1,35;  12.6,135.1,35];
btk_shem_2024_018 = [15.7,146.4,55;   16.2,144.3,35;  15.8,142.9,25;  16.1,141.4,25;  16.3,142.0,20]; # operationally from U.S. sources (except day 5)
btk2_shem_2024_018 = [15.8,146.3,50.4;16.1,144.2,33.6;15.8,142.8,16.8;16.1,141.8,22.4;16.3,142.0,22.4]; # BoM spreadsheet
rsmcvect = [rsmcvect;rsmc_shem_2024_018];
myvect = [myvect;my_shem_2024_018];
btkvect = [btkvect;btk_shem_2024_018];
btk2vect = [btk2vect;btk2_shem_2024_018];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 019 ... JASPER around 2023-12-12-09Z

rsmc_shem_2024_019 = [16.0,145.0,61.6;16.3,142.3,33.6;15.3,140.0,33.6;13.6,137.3,39.2;12.7,135.3,33.6];
my_shem_2024_019 = [15.8,145.2,55;    16.1,142.6,25;  15.2,140.1,25;  14.1,138.1,35;  13.5,134.5,30];
btk_shem_2024_019 = [15.7,145.8,60;   16.4,143.6,30;  15.7,142.5,25;  15.8,141.4,20;  16.1,141.9,20]; # operationally from U.S. sources (except days 4+5)
btk2_shem_2024_019 = [15.9,145.8,61.6;16.0,143.5,28.0;15.8,142.5,16.8;15.8,141.4,22.4;16.1,141.9,22.4]; # BoM spreadsheet
rsmcvect = [rsmcvect;rsmc_shem_2024_019];
myvect = [myvect;my_shem_2024_019];
btkvect = [btkvect;btk_shem_2024_019];
btk2vect = [btk2vect;btk2_shem_2024_019];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 020 ... ALVARO around 2024-01-02-03Z

rsmc_shem_2024_020 = [21.6,48.8,44.8;  23.7,52.0,33.6;  26.6,56.4,28.0];
my_shem_2024_020 = [21.8,48.8,35;      24.3,52.1,35;    27.6,56.0,30];
btk_shem_2024_020 = [22.7,49.8,40;     26.3,54.2,35;    30.7,60.4,35]; # operationally from U.S. sources
btk2_shem_2024_020 = [22.21,49.72,56.0;26.55,54.18,56.0;30.35,60.47,50.4]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2024_020];
myvect = [myvect;my_shem_2024_020];
btkvect = [btkvect;btk_shem_2024_020];
btk2vect = [btk2vect;btk2_shem_2024_020];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 021 ... BELAL around 2024-01-13-03Z

rsmc_shem_2024_021 = [17.8,53.9,84.0;  20.1,55.0,106.4; 21.3,57.1,89.6;  21.6,60.0,84.0;  21.5,62.2,78.4];
my_shem_2024_021 = [17.6,54.1,75;      20.1,55.1,100;   21.3,57.2,95;    21.9,59.0,95;    22.4,61.2,80];
btk_shem_2024_021 = [18.1,53.5,70;     20.5,54.5,90;    22.1,57.8,65;    24.2,62.6,55;    24.0,64.9,45]; # operationally from U.S. sources
btk2_shem_2024_021 = [18.29,53.46,78.4;20.36,54.27,84.0;22.26,58.09,72.8;23.84,62.58,61.6;23.87,65.15,50.4]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2024_021];
myvect = [myvect;my_shem_2024_021];
btkvect = [btkvect;btk_shem_2024_021];
btk2vect = [btk2vect;btk2_shem_2024_021];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 022 ... BELAL around 2024-01-14-21Z

rsmc_shem_2024_022 = [21.6,56.5,89.6;  22.5,59.7,84.0;  22.3,62.4,84.0;  21.6,63.0,84.0; 21.7,62.0,84.0];
my_shem_2024_022 = [21.5,56.5,85;      22.3,59.6,75;    22.1,62.1,80;    21.4,62.7,80;   21.3,63.0,85];
btk_shem_2024_022 = [21.8,56.9,65;     23.3,61.1,55;    24.3,64.8,45;    23.6,65.1,35;   23.9,63.0,30]; # operationally from U.S. sources
btk2_shem_2024_022 = [21.54,56.88,72.8;23.45,61.53,67.2;23.91,64.61,50.4;23.6,64.98,44.8;23.62,63.0,28.0]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2024_022];
myvect = [myvect;my_shem_2024_022];
btkvect = [btkvect;btk_shem_2024_022];
btk2vect = [btk2vect;btk2_shem_2024_022];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 023 ... BELAL around 2024-01-15-03Z

rsmc_shem_2024_023 = [21.9,57.2,84.0;  22.5,60.5,84.0;  22.2,62.8,72.8;  21.6,62.8,67.2;  21.8,61.8,67.2];
my_shem_2024_023 = [22.0,57.2,85;      22.5,60.8,75;    22.3,63.6,70;    22.2,64.4,65;    23.1,63.4,60];
btk_shem_2024_023 = [22.1,57.8,65;     24.2,62.6,55;    24.0,64.9,45;    23.3,64.6,30;    24.3,62.4,25]; # operationally from U.S. sources
btk2_shem_2024_023 = [22.26,58.09,72.8;23.84,62.58,61.6;23.87,65.15,50.4;23.35,64.38,33.6;24.34,62.38,28.0]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2024_023];
myvect = [myvect;my_shem_2024_023];
btkvect = [btkvect;btk_shem_2024_023];
btk2vect = [btk2vect;btk2_shem_2024_023];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 024 ... ANGGREK around 2024-01-15-21Z ... relative to BoM (BMKG missing)

rsmc_shem_2024_024 = [9.3,94.1,56.0;10.5,94.4,67.2;12.0,94.3,61.6;12.6,94.5,50.4;12.5,94.8,39.2];
my_shem_2024_024 = [9.5,94.4,50;    10.3,94.9,60;  11.6,94.7,60;  12.4,94.1,45;  12.9,94.1,35];
btk_shem_2024_024 = [9.5,94.2,45;   10.6,94.0,45;  12.2,93.2,45;  12.7,92.4,55;  12.0,92.6,70]; # operationally from U.S. sources
btk2_shem_2024_024 = [9.6,94.0,44.8;10.5,94.0,39.2;12.2,93.4,50.4;12.4,92.8,56.0;12.1,92.3,67.2]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2024_024];
myvect = [myvect;my_shem_2024_024];
btkvect = [btkvect;btk_shem_2024_024];
btk2vect = [btk2vect;btk2_shem_2024_024];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 025 ... BELAL around 2024-01-16-03Z

rsmc_shem_2024_025 = [22.8,61.0,72.8;  22.8,63.7,67.2;  23.3,64.1,44.8;  23.5,62.2,28.0;  24.2,61.6,28.0];
my_shem_2024_025 = [23.0,61.6,65;      23.1,64.1,60;    23.0,64.0,45;    24.2,63.5,30;    26.2,65.4,30];
btk_shem_2024_025 = [24.2,62.6,55;     24.0,64.9,45;    23.3,64.6,30;    24.3,62.4,25;    25.88,59.73,35]; # operationally from U.S. sources (except day 5 MFR)
btk2_shem_2024_025 = [23.84,62.58,61.6;23.87,65.15,50.4;23.35,64.38,33.6;24.34,62.38,28.0;25.88,59.73,33.6]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2024_025];
myvect = [myvect;my_shem_2024_025];
btkvect = [btkvect;btk_shem_2024_025];
btk2vect = [btk2vect;btk2_shem_2024_025];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 026 ... ANGGREK around 2024-01-16-21Z ... relative to BoM (BMKG missing)

rsmc_shem_2024_026 = [10.8,94.5,56.0;12.6,93.9,50.4;13.3,93.4,44.8;13.0,92.7,33.6;12.6,91.7,33.6];
my_shem_2024_026 = [10.7,94.4,55;    12.3,93.9,55;  13.0,92.8,45;  12.8,91.8,35;  12.7,90.7,30];
btk_shem_2024_026 = [10.6,94.0,45;   12.2,93.2,45;  12.7,92.4,55;  12.0,92.6,70;  12.3,91.8,50]; # operationally from U.S. sources
btk2_shem_2024_026 = [10.5,94.0,39.2;12.2,93.4,50.4;12.4,92.8,56.0;12.1,92.3,67.2;12.3,91.7,39.2]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2024_026];
myvect = [myvect;my_shem_2024_026];
btkvect = [btkvect;btk_shem_2024_026];
btk2vect = [btk2vect;btk2_shem_2024_026];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 027 ... BELAL around 2024-01-17-03Z

rsmc_shem_2024_027 = [24.0,64.5,50.4;  23.8,63.0,33.6;  25.3,60.8,28.0];
my_shem_2024_027 = [24.2,64.8,50;      23.9,63.7,35;    25.8,61.8,30];
btk_shem_2024_027 = [24.0,64.9,45;     23.3,64.6,30;    24.3,62.4,25]; # operationally from U.S. sources
btk2_shem_2024_027 = [23.87,65.15,50.4;23.35,64.38,33.6;24.34,62.38,28.0]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2024_027];
myvect = [myvect;my_shem_2024_027];
btkvect = [btkvect;btk_shem_2024_027];
btk2vect = [btk2vect;btk2_shem_2024_027];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 028 ... ANGGREK around 2024-01-17-09Z

rsmc_shem_2024_028 = [12.1,94.0,61.6;13.3,93.5,50.4;13.3,92.9,44.8;12.7,91.5,39.2;12.7,90.0,33.6];
my_shem_2024_028 = [11.6,93.8,60;    12.7,93.4,50;  13.2,92.3,50;  13.0,91.1,35;  12.8,89.7,40];
btk_shem_2024_028 = [11.5,93.8,45;   12.4,92.9,60;  12.5,92.6,70;  12.0,92.2,70;  12.3,91.5,45]; # operationally from U.S. sources
btk2_shem_2024_028 = [11.3,93.7,39.2;12.6,93.1,56.0;12.5,92.5,67.2;12.1,92.0,56.0;12.2,91.5,39.2]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2024_028];
myvect = [myvect;my_shem_2024_028];
btkvect = [btkvect;btk_shem_2024_028];
btk2vect = [btk2vect;btk2_shem_2024_028];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 029 ... ANGGREK around 2024-01-17-21Z

rsmc_shem_2024_029 = [12.0,93.8,50.4;13.0,93.3,44.8;12.7,92.7,44.8;12.4,91.6,33.6;12.5,90.5,33.6];
my_shem_2024_029 = [12.0,93.5,50;    12.6,93.0,50;  12.6,92.2,50;  12.4,91.2,45;  12.4,90.2,45];
btk_shem_2024_029 = [12.2,93.2,45;   12.7,92.4,55;  12.0,92.6,70;  12.3,91.8,50;  12.6,91.4,40]; # operationally from U.S. sources
btk2_shem_2024_029 = [12.2,93.4,50.4;12.4,92.8,56.0;12.1,92.3,67.2;12.3,91.7,39.2;12.6,91.5,39.2]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2024_029];
myvect = [myvect;my_shem_2024_029];
btkvect = [btkvect;btk_shem_2024_029];
btk2vect = [btk2vect;btk2_shem_2024_029];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 030 ... ANGGREK around 2024-01-18-21Z

rsmc_shem_2024_030 = [12.8,92.9,50.4;12.5,92.4,50.4;11.8,92.4,39.2;11.6,92.6,33.6;11.9,92.4,33.6];
my_shem_2024_030 = [12.9,92.5,50;    12.6,91.9,50;  12.4,90.9,45;  11.9,90.8,40;  11.5,90.4,40];
btk_shem_2024_030 = [12.7,92.4,55;   12.0,92.6,70;  12.3,91.8,50;  12.6,91.4,40;  13.5,91.5,50]; # operationally from U.S. sources
btk2_shem_2024_030 = [12.4,92.8,56.0;12.1,92.3,67.2;12.3,91.7,39.2;12.6,91.5,39.2;13.6,91.3,44.8]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2024_030];
myvect = [myvect;my_shem_2024_030];
btkvect = [btkvect;btk_shem_2024_030];
btk2vect = [btk2vect;btk2_shem_2024_030];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 031 ... ANGGREK around 2024-01-19-09Z

rsmc_shem_2024_031 = [12.7,92.2,44.8;12.1,91.8,44.8;11.7,91.8,39.2;11.6,91.8,33.6;11.3,91.6,33.6];
my_shem_2024_031 = [12.5,92.1,50;    12.0,91.9,50;  11.8,91.3,45;  11.5,91.6,45;  11.4,91.8,40];
btk_shem_2024_031 = [12.5,92.6,70;   12.0,92.2,70;  12.3,91.5,45;  13.0,91.6,40;  14.1,91.1,65]; # operationally from U.S. sources
btk2_shem_2024_031 = [12.5,92.5,67.2;12.1,92.0,56.0;12.2,91.5,39.2;13.0,91.5,44.8;14.0,91.0,56.0]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2024_031];
myvect = [myvect;my_shem_2024_031];
btkvect = [btkvect;btk_shem_2024_031];
btk2vect = [btk2vect;btk2_shem_2024_031];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 032 ... ANGGREK around 2024-01-19-21Z

rsmc_shem_2024_032 = [12.2,91.9,50.4;11.7,91.5,39.2;11.6,91.8,33.6;11.7,92.0,33.6;11.9,92.2,33.6];
my_shem_2024_032 = [12.3,91.9,50;    11.8,91.1,45;  11.5,91.1,40;  11.3,91.6,45;  11.7,91.6,40];
btk_shem_2024_032 = [12.0,92.6,70;   12.3,91.8,50;  12.6,91.4,40;  13.5,91.5,50;  14.4,91.1,80]; # operationally from U.S. sources
btk2_shem_2024_032 = [12.1,92.3,67.2;12.3,91.7,39.2;12.6,91.5,39.2;13.6,91.3,44.8;14.5,91.0,84.0]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2024_032];
myvect = [myvect;my_shem_2024_032];
btkvect = [btkvect;btk_shem_2024_032];
btk2vect = [btk2vect;btk2_shem_2024_032];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 033 ... ANGGREK around 2024-01-21-09Z

rsmc_shem_2024_033 = [12.1,91.4,44.8;12.6,90.5,44.8;12.9,89.9,50.4;13.9,89.1,56.0;15.7,86.3,56.0];
my_shem_2024_033 = [12.0,91.6,60;    12.4,90.9,70;  13.5,89.9,70;  15.0,88.9,70;  16.8,86.5,60];
btk_shem_2024_033 = [12.3,91.5,45;   13.0,91.6,40;  14.1,91.1,65;  15.1,90.0,80;  16.9,86.5,105]; # operationally from U.S. sources
btk2_shem_2024_033 = [12.2,91.5,39.2;13.0,91.5,44.8;14.0,91.0,56.0;15.1,90.1,78.4;16.85,86.42,100.8]; # BoM best track (days 1-4), MFR data table (day 5)
rsmcvect = [rsmcvect;rsmc_shem_2024_033];
myvect = [myvect;my_shem_2024_033];
btkvect = [btkvect;btk_shem_2024_033];
btk2vect = [btk2vect;btk2_shem_2024_033];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 034 ... ANGGREK around 2024-01-21-21Z

rsmc_shem_2024_034 = [12.4,90.7,44.8;13.0,89.6,61.6;13.8,89.0,84.0;15.1,87.1,78.4;  17.1,83.7,67.2];
my_shem_2024_034 = [12.4,91.0,55;    13.0,90.3,70;  14.2,89.4,80;  15.8,87.7,70;    17.6,84.5,65];
btk_shem_2024_034 = [12.6,91.4,40;   13.5,91.5,50;  14.4,91.1,80;  16.0,88.4,90;    18.2,84.2,105]; # operationally from U.S. sources
btk2_shem_2024_034 = [12.6,91.5,39.2;13.6,91.3,44.8;14.5,91.0,84.0;15.88,88.51,95.2;18.16,83.95,100.8]; # BoM best track (days 1-3), MFR data table (day 4-5)
rsmcvect = [rsmcvect;rsmc_shem_2024_034];
myvect = [myvect;my_shem_2024_034];
btkvect = [btkvect;btk_shem_2024_034];
btk2vect = [btk2vect;btk2_shem_2024_034];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 035 ... 05U/90P around 2024-01-22-21Z

rsmc_shem_2024_035 = [17.0,153.6,44.8;17.9,150.8,50.4;19.7,146.7,56.0;21.7,145.3,33.6;22.2,146.3,28.0];
my_shem_2024_035 = [17.1,153.4,45;    18.0,150.8,55;  19.6,147.1,55;  22.4,146.2,30;  23.0,147.3,25];
btk_shem_2024_035 = [17.3,153.3,35;   17.8,150.0,50;  20.2,144.9,40;  22.6,142.2,25;  21.2,142.0,25]; # operationally from U.S. sources
btk2_shem_2024_035 = [17.2,152.9,44.8;17.7,150.2,44.8;19.6,145.2,33.6;22.6,142.2,25.0;21.2,142.0,25.0]; # BoM best track (except days 4-5)
rsmcvect = [rsmcvect;rsmc_shem_2024_035];
myvect = [myvect;my_shem_2024_035];
btkvect = [btkvect;btk_shem_2024_035];
btk2vect = [btk2vect;btk2_shem_2024_035];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 036 ... 05U/07P around 2024-01-23-03Z

rsmc_shem_2024_036 = [17.3,152.4,44.8;18.3,149.1,61.6;20.8,145.6,33.6;22.1,145.4,33.6;22.2,146.6,28.0];
my_shem_2024_036 = [17.5,152.9,45;    18.6,150.2,60;  21.0,146.4,35;  22.9,146.8,25;  23.2,147.7,20];
btk_shem_2024_036 = [17.3,153.0,40;   18.2,149.1,55;  21.2,143.7,30;  22.4,141.9,25;  21.1,142.4,25]; # operationally from U.S. sources
btk2_shem_2024_036 = [17.1,152.7,44.8;18.1,149.4,56.0;20.8,144.0,28.0;22.4,141.9,25.0;21.1,142.4,25.0]; # BoM best track (except days 4-5)
rsmcvect = [rsmcvect;rsmc_shem_2024_036];
myvect = [myvect;my_shem_2024_036];
btkvect = [btkvect;btk_shem_2024_036];
btk2vect = [btk2vect;btk2_shem_2024_036];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 037 ... 05U/07P around 2024-01-23-09Z
# day 3 btk missing !!!!!

rsmc_shem_2024_037 = [17.7,151.9,50.4;18.9,148.2,67.2;22.0,145.4,33.6;21.9,146.8,28.0];
my_shem_2024_037 = [17.9,151.9,45;    19.3,148.5,60;  21.9,144.9,25;  21.6,146.2,25];
btk_shem_2024_037 = [17.4,152.2,45;   18.7,148.0,60;  22.1,142.2,25;  21.5,142.5,25]; # operationally from U.S. sources
btk2_shem_2024_037 = [17.4,152.4,44.8;18.7,147.7,72.8;22.1,142.2,25;  21.5,142.5,25.0]; # BoM best track (except days 4-5)
rsmcvect = [rsmcvect;rsmc_shem_2024_037];
myvect = [myvect;my_shem_2024_037];
btkvect = [btkvect;btk_shem_2024_037];
btk2vect = [btk2vect;btk2_shem_2024_037];
leadtimevect = [leadtimevect;1;2;4;5]; # NOTE THE MISSING DAY 3 !!!!
basinvect = [basinvect;4;4;4;4];

# Shem 038 ... ANGGREK around 2024-01-23-09Z

rsmc_shem_2024_038 = [13.9,91.0,61.6;15.0,89.8,78.4;17.3,86.5,67.2;   19.7,82.7,56.0;  21.1,78.2,50.4];
my_shem_2024_038 = [13.8,91.6,55;    15.2,90.5,70;  17.8,86.7,65;     19.7,82.8,55;    21.1,78.1,60];
btk_shem_2024_038 = [14.1,91.1,65;   15.1,90.0,80;  16.9,86.5,105;    18.9,82.0,100;   20.4,76.4,90]; # operationally from U.S. sources
btk2_shem_2024_038 = [14.0,91.0,56.0;15.1,90.1,78.4;16.85,86.42,100.8;18.91,81.99,95.2;20.28,76.42,100.8]; # BoM best track (days 1-2), MFR data table (days 3-5)
rsmcvect = [rsmcvect;rsmc_shem_2024_038];
myvect = [myvect;my_shem_2024_038];
btkvect = [btkvect;btk_shem_2024_038];
btk2vect = [btk2vect;btk2_shem_2024_038];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 039 ... 05U/07P around 2024-01-23-21Z

rsmc_shem_2024_039 = [17.8,149.9,50.4;19.8,145.7,44.8;21.6,143.4,28.0;21.3,144.1,28.0];
my_shem_2024_039 = [18.1,150.4,45;    20.0,146.5,40;  22.1,143.7,25;  22.2,144.4,25];
btk_shem_2024_039 = [17.8,150.0,50;   20.2,144.9,40;  22.6,142.2,25;  21.2,142.0,25]; # operationally from U.S. sources
btk2_shem_2024_039 = [17.7,150.2,44.8;19.6,145.2,33.6;22.6,142.2,25.0;21.2,142.0,25.0]; # BoM best track (except days 3-4)
rsmcvect = [rsmcvect;rsmc_shem_2024_039];
myvect = [myvect;my_shem_2024_039];
btkvect = [btkvect;btk_shem_2024_039];
btk2vect = [btk2vect;btk2_shem_2024_039];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;4;4;4;4];

# Shem 040 ... KIRRILY around 2024-01-24-21Z

rsmc_shem_2024_040 = [19.6,145.9,44.8;21.5,143.0,28.0;20.8,141.5,28.0];
my_shem_2024_040 = [19.8,145.9,40;    22.0,142.9,25;  21.0,141.4,25];
btk_shem_2024_040 = [20.2,144.9,40;   22.6,142.2,25;  21.2,142.0,25]; # operationally from U.S. sources
btk2_shem_2024_040 = [19.6,145.2,33.6;22.6,142.2,25.0;21.2,142.0,25.0]; # BoM best track (day 1 only)
rsmcvect = [rsmcvect;rsmc_shem_2024_040];
myvect = [myvect;my_shem_2024_040];
btkvect = [btkvect;btk_shem_2024_040];
btk2vect = [btk2vect;btk2_shem_2024_040];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;4;4;4];

# Shem 041 ... ANGGREK around 2024-01-25-09Z

rsmc_shem_2024_041 = [17.1,86.5,106.4;  19.1,82.2,106.4; 20.3,76.8,106.4;  23.4,71.3,95.2;   27.9,70.6,72.8];
my_shem_2024_041 = [17.1,86.8,85;       18.7,82.4,90;    19.9,77.0,100;    22.6,71.9,90;     27.4,71.1,70];
btk_shem_2024_041 = [16.9,86.5,105;     18.9,82.0,100;   20.3,76.4,90;     23.7,71.1,105;    29.1,72.8,100]; # operationally from U.S. sources
btk2_shem_2024_041 = [16.85,86.42,100.8;18.91,81.99,95.2;20.28,76.42,100.8;23.73,71.07,106.4;28.95,72.6,89.6]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2024_041];
myvect = [myvect;my_shem_2024_041];
btkvect = [btkvect;btk_shem_2024_041];
btk2vect = [btk2vect;btk2_shem_2024_041];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 042 ... CANDICE around 2024-01-25-15Z

rsmc_shem_2024_042 = [26.5,60.7,56.0;  29.9,57.7,44.8;  34.0,56.7,33.6];
my_shem_2024_042 = [26.7,61.1,55;      30.3,58.6,45;    35.4,58.7,35];
btk_shem_2024_042 = [26.8,62.5,45;     29.7,59.7,25;    34.25,60.50,30]; # operationally from U.S. sources (except day 3 MFR)
btk2_shem_2024_042 = [26.27,61.94,61.6;29.53,59.84,39.2;34.25,60.50,28.0]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2024_042];
myvect = [myvect;my_shem_2024_042];
btkvect = [btkvect;btk_shem_2024_042];
btk2vect = [btk2vect;btk2_shem_2024_042];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 043 ... ANGGREK around 2024-01-25-21Z

rsmc_shem_2024_043 = [18.0,84.0,100.8;  19.1,79.2,100.8;  20.8,72.9,100.8;  25.4,68.2,72.8;   26.6,66.3,56.0];
my_shem_2024_043 = [18.0,84.3,105;      19.0,79.5,115;    21.0,73.5,115;    25.1,69.6,95;     27.7,69.2,65];
btk_shem_2024_043 = [18.2,84.2,105;     19.5,79.4,100;    21.7,73.2,115;    26.3,70.8,105;    30.6,76.1,90]; # operationally from U.S. sources
btk2_shem_2024_043 = [18.16,83.95,100.8;19.56,79.32,100.8;21.54,73.32,112.0;26.43,70.87,100.8;30.71,76.19,72.8]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2024_043];
myvect = [myvect;my_shem_2024_043];
btkvect = [btkvect;btk_shem_2024_043];
btk2vect = [btk2vect;btk2_shem_2024_043];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 044 ... ANGGREK around 2024-01-26-21Z

rsmc_shem_2024_044 = [19.2,79.0,117.6;  21.2,73.2,106.4;  25.3,69.8,95.2;   29.3,71.2,61.6;  30.8,75.2,50.4];
my_shem_2024_044 = [19.2,79.5,110;      21.1,73.7,115;    25.4,70.9,100;    29.7,72.9,70;    32.5,79.5,45];
btk_shem_2024_044 = [19.5,79.4,100;     21.7,73.2,115;    26.3,70.8,105;    30.6,76.1,90;    36.1,91.5,55]; # operationally from U.S. sources
btk2_shem_2024_044 = [19.56,79.32,100.8;21.54,73.32,112.0;26.43,70.87,100.8;30.71,76.19,72.8;36.47,91.85,56.0]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2024_044];
myvect = [myvect;my_shem_2024_044];
btkvect = [btkvect;btk_shem_2024_044];
btk2vect = [btk2vect;btk2_shem_2024_044];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 045 ... ANGGREK around 2024-01-27-21Z

rsmc_shem_2024_045 = [21.8,73.3,106.4;  26.6,70.4,95.2;   30.1,73.9,61.6;  32.7,82.5,50.4];
my_shem_2024_045 = [21.5,73.6,105;      26.0,70.8,90;     30.0,75.9,60;    34.6,88.1,40];
btk_shem_2024_045 = [21.7,73.2,115;     26.3,70.8,105;    30.6,76.1,90;    36.1,91.5,55]; # operationally from U.S. sources
btk2_shem_2024_045 = [21.54,73.32,112.0;26.43,70.87,100.8;30.71,76.19,72.8;36.47,91.85,56.0]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2024_045];
myvect = [myvect;my_shem_2024_045];
btkvect = [btkvect;btk_shem_2024_045];
btk2vect = [btk2vect;btk2_shem_2024_045];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 046 ... 05 / 09S around 2024-01-31-03Z

rsmc_shem_2024_046 = [19.9,65.7,39.2;20.6,67.3,33.6];
my_shem_2024_046 = [19.7,66.1,40;    20.0,67.1,45];
btk_shem_2024_046 = [19.5,66.2,35;   19.2,67.7,35]; # operationally from U.S. sources
btk2_shem_2024_046 = [19.5,66.2,33.6;19.2,67.7,33.6]; # MFR advisory init (day 1 only)
rsmcvect = [rsmcvect;rsmc_shem_2024_046];
myvect = [myvect;my_shem_2024_046];
btkvect = [btkvect;btk_shem_2024_046];
btk2vect = [btk2vect;btk2_shem_2024_046];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 047 ... NAT around 2024-02-05-21Z

rsmc_shem_2024_047 = [18.2,202.6,50.4;19.3,206.0,44.8;19.0,210.1,0];
my_shem_2024_047 = [17.6,202.3,45;    18.5,205.7,40;  18.2,210.3,0];
btk_shem_2024_047 = [17.4,204.1,45;   19.5,208.5,45;  19.4,212.5,0]; # operationally from U.S. sources
btk2_shem_2024_047 = btk_shem_2024_047; #placeholder
rsmcvect = [rsmcvect;rsmc_shem_2024_047];
myvect = [myvect;my_shem_2024_047];
btkvect = [btkvect;btk_shem_2024_047];
btk2vect = [btk2vect;btk2_shem_2024_047];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;5;5;5];

# Shem 048 ... 05F / 12P around 2024-02-08-03Z

rsmc_shem_2024_048 = [16.5,165.6,61.6;17.8,168.2,61.6;18.5,171.5,0];
my_shem_2024_048 = [16.8,165.7,45;    18.2,168.5,50;  19.5,172.4,0];
btk_shem_2024_048 = [16.3,165.1,35;   17.1,168.4,35;  19.2,174.2,0]; # operationally from U.S. sources
btk2_shem_2024_048 = [16.5,165.0,28.0;17.1,169.1,33.6;19.1,174.2,0]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2024_048];
myvect = [myvect;my_shem_2024_048];
btkvect = [btkvect;btk_shem_2024_048];
btk2vect = [btk2vect;btk2_shem_2024_048];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;5;5;5];

# Shem 049 ... 05F / 12P around 2024-02-08-09Z

rsmc_shem_2024_049 = [17.1,166.1,61.6;18.3,169.0,61.6;19.0,171.6,0];
my_shem_2024_049 = [17.1,166.5,50;    18.1,169.8,50;  18.6,173.3,0];
btk_shem_2024_049 = [16.9,165.4,35;   16.7,170.4,30;  18.9,175.0,0]; # operationally from U.S. sources
btk2_shem_2024_049 = [16.6,165.4,28.0;17.5,170.3,33.6;19.1,175.1,0]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2024_049];
myvect = [myvect;my_shem_2024_049];
btkvect = [btkvect;btk_shem_2024_049];
btk2vect = [btk2vect;btk2_shem_2024_049];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;5;5;5];

# Shem 050 ... 05F / 12P around 2024-02-08-21Z

rsmc_shem_2024_050 = [17.5,167.0,56.0;18.4,170.7,50.4;18.8,172.9,0];
my_shem_2024_050 = [17.2,166.6,45;    18.1,170.6,45;  18.9,172.8,0];
btk_shem_2024_050 = [17.3,167.3,35;   18.4,172.7,30;  18.7,176.0,0]; # operationally from U.S. sources
btk2_shem_2024_050 = [17.0,167.6,33.6;18.7,173.1,33.6;19.0,175.9,0]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2024_050];
myvect = [myvect;my_shem_2024_050];
btkvect = [btkvect;btk_shem_2024_050];
btk2vect = [btk2vect;btk2_shem_2024_050];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;5;5;5];

# Shem 051 ... 05F / 12P around 2024-02-09-03Z

rsmc_shem_2024_051 = [17.9,168.2,44.8;19.0,171.4,39.2;19.7,172.4,0];
my_shem_2024_051 = [17.8,168.3,35;    19.0,172.2,40;  20.0,173.4,0];
btk_shem_2024_051 = [17.1,168.4,35;   19.2,174.2,35;  18.9,176.0,0]; # operationally from U.S. sources
btk2_shem_2024_051 = [17.1,169.1,33.6;19.1,174.2,33.6;19.1,176.2,0]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2024_051];
myvect = [myvect;my_shem_2024_051];
btkvect = [btkvect;btk_shem_2024_051];
btk2vect = [btk2vect;btk2_shem_2024_051];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;5;5;5];

# Shem 052 ... 05F / 12P around 2024-02-09-09Z

rsmc_shem_2024_052 = [18.1,169.1,50.4;19.3,172.8,39.2;20.3,175.1,0];
my_shem_2024_052 = [18.2,169.0,35;    18.9,173.2,40;  19.9,174.8,0];
btk_shem_2024_052 = [16.7,170.4,30;   18.9,175.0,30;  19.2,176.6,0]; # operationally from U.S. sources
btk2_shem_2024_052 = [17.5,170.3,33.6;19.1,175.1,28.0;19.2,176.7,0];
rsmcvect = [rsmcvect;rsmc_shem_2024_052];
myvect = [myvect;my_shem_2024_052];
btkvect = [btkvect;btk_shem_2024_052];
btk2vect = [btk2vect;btk2_shem_2024_052];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;5;5;5];

# Shem 053 ... 05F / 12P around 2024-02-09-21Z

rsmc_shem_2024_053 = [18.8,170.4,44.8;19.4,173.5,50.4;19.6,174.3,0];
my_shem_2024_053 = [18.3,171.6,40;    18.9,174.9,35;  19.7,176.4,0];
btk_shem_2024_053 = [18.4,172.7,30;   18.7,176.0,25;  19.1,176.3,0]; # operationally from U.S. sources
btk2_shem_2024_053 = [18.7,173.1,33.6;19.0,175.9,28.0;19.0,176.2,0]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2024_053];
myvect = [myvect;my_shem_2024_053];
btkvect = [btkvect;btk_shem_2024_053];
btk2vect = [btk2vect;btk2_shem_2024_053];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;5;5;5];

# Shem 054 ... 05F / 12P around 2024-02-10-03Z

rsmc_shem_2024_054 = [18.4,173.4,39.2;19.2,176.7,33.6;19.8,178.3,0];
my_shem_2024_054 = [18.0,173.5,35;    18.6,176.7,30;  19.1,179.0,0];
btk_shem_2024_054 = [19.2,174.2,35;   18.9,176.0,25;  18.8,175.6,0]; # operationally from U.S. sources (except day 3 BoM)
btk2_shem_2024_054 = [19.1,174.2,33.6;19.1,176.2,28.0;18.8,175.6,0]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2024_054];
myvect = [myvect;my_shem_2024_054];
btkvect = [btkvect;btk_shem_2024_054];
btk2vect = [btk2vect;btk2_shem_2024_054];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;5;5;5];

# Shem 055 ... 05F / 12P around 2024-02-10-09Z

rsmc_shem_2024_055 = [18.5,173.9,39.2;18.6,176.3,33.6];
my_shem_2024_055 = [17.8,174.1,40;    18.0,177.1,30];
btk_shem_2024_055 = [18.9,175.0,30;   19.2,176.6,25]; # operationally from U.S. sources
btk2_shem_2024_055 = [19.1,175.1,28.0;19.2,176.7,28.0]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2024_055];
myvect = [myvect;my_shem_2024_055];
btkvect = [btkvect;btk_shem_2024_055];
btk2vect = [btk2vect;btk2_shem_2024_055];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;5;5];

# Shem 056 ... 05F / 12P around 2024-02-10-21Z

rsmc_shem_2024_056 = [19.7,178.4,33.6;20.1,181.4,33.6];
my_shem_2024_056 = [19.5,178.3,30;    19.9,181.4,30];
btk_shem_2024_056 = [18.7,176.0,25;   19.1,176.3,25]; # operationally from U.S. sources
btk2_shem_2024_056 = [19.0,175.9,28.0;19.0,176.2,28.0]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2024_056];
myvect = [myvect;my_shem_2024_056];
btkvect = [btkvect;btk_shem_2024_056];
btk2vect = [btk2vect;btk2_shem_2024_056];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;5;5];

# Shem 057 ... 07U / 93S around 2024-02-14-21Z

rsmc_shem_2024_057 = [15.0,137.9,0;16.6,135.8,0;17.8,132.3,0;18.6,129.3,0;18.6,127.4,0];
my_shem_2024_057 = [15.1,138.0,0;  16.8,136.0,0;18.1,132.6,0;18.9,129.5,0;18.8,127.9,0];
btk_shem_2024_057 = [15.5,137.5,0; 17.0,136.5,0;17.9,133.0,0;18.7,129.7,0;17.9,127.6,0]; # operationally from U.S. sources
btk2_shem_2024_057 = [15.6,137.8,0;16.9,136.3,0;18.2,133.1,0;18.7,129.4,0;18.1,128.3,0]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2024_057];
myvect = [myvect;my_shem_2024_057];
btkvect = [btkvect;btk_shem_2024_057];
btk2vect = [btk2vect;btk2_shem_2024_057];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 058 ... DJOUNGOU around 2024-02-15-21Z

rsmc_shem_2024_058 = [16.2,68.8,50.4;  16.9,73.9,67.2;  21.8,82.8,67.2;  28.4,91.9,56.0];
my_shem_2024_058 = [16.1,68.1,60;      16.7,72.8,80;    20.8,80.7,80;    27.2,90.0,65];
btk_shem_2024_058 = [16.2,66.6,65;     16.7,72.3,100;   21.6,81.0,120;   29.8,92.0,55]; # operationally from U.S. sources
btk2_shem_2024_058 = [15.96,66.75,56.0;16.75,71.86,95.2;21.4,80.72,123.2;28.76,91.58,61.6]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2024_058];
myvect = [myvect;my_shem_2024_058];
btkvect = [btkvect;btk_shem_2024_058];
btk2vect = [btk2vect;btk2_shem_2024_058];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 059 ... STD around 2024-02-16-21Z
# (no MdB warning)

# Shem 060 ... DJOUNGOU around 2024-02-16-21Z

rsmc_shem_2024_060 = [16.8,71.0,95.2;  21.0,79.3,95.2;  25.9,87.3,61.6];
my_shem_2024_060 = [16.8,70.8,100;     20.6,78.5,95;    25.4,86.3,65];
btk_shem_2024_060 = [16.7,72.3,100;    21.6,81.0,120;   29.8,92.0,55]; # operationally from U.S. sources
btk2_shem_2024_060 = [16.75,71.86,95.2;21.4,80.72,123.2;28.76,91.58,61.6]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2024_060];
myvect = [myvect;my_shem_2024_060];
btkvect = [btkvect;btk_shem_2024_060];
btk2vect = [btk2vect;btk2_shem_2024_060];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 061 ... STD around 2024-02-17-03Z

rsmc_shem_2024_061 = [26.0,39.5,36.5];
my_shem_2024_061 = [25.4,40.1,30];
btk_shem_2024_061 = [25.50,39.00,30.8]; # from Brazilian Navy
btk2_shem_2024_061 = btk_shem_2024_061; #placeholder
rsmcvect = [rsmcvect;rsmc_shem_2024_061];
myvect = [myvect;my_shem_2024_061];
btkvect = [btkvect;btk_shem_2024_061];
btk2vect = [btk2vect;btk2_shem_2024_061];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;6];

# Shem 062 ... STD around 2024-02-17-21Z
# (no MdB warning)

# Shem 063 ... DJOUNGOU around 2024-02-17-21Z

rsmc_shem_2024_063 = [21.1,79.3,78.4;  26.8,88.1,56.0];
my_shem_2024_063 = [21.1,79.7,100;     26.7,88.7,65];
btk_shem_2024_063 = [21.6,81.0,120;    29.8,92.0,55]; # operationally from U.S. sources
btk2_shem_2024_063 = [21.4,80.72,123.2;28.76,91.58,61.6]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2024_063];
myvect = [myvect;my_shem_2024_063];
btkvect = [btkvect;btk_shem_2024_063];
btk2vect = [btk2vect;btk2_shem_2024_063];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 064 ... TD around 2024-02-18-21Z
# (no MdB warning)

# Shem 065 ... AKARÁ around 2024-02-19-03Z

rsmc_shem_2024_065 = [31.0,42.5,42.5];
my_shem_2024_065 = [31.4,42.6,35];
btk_shem_2024_065 = [30.00,41.00,53.2]; # from Brazilian Navy
btk2_shem_2024_065 = btk_shem_2024_065; #placeholder
rsmcvect = [rsmcvect;rsmc_shem_2024_065];
myvect = [myvect;my_shem_2024_065];
btkvect = [btkvect;btk_shem_2024_065];
btk2vect = [btk2vect;btk2_shem_2024_065];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;6];

# Shem 066 ... 07 / 16S around 2024-02-19-03Z

rsmc_shem_2024_066 = [14.3,58.3,56.0;  15.6,59.5,72.8; 17.8,58.6,89.6;  20.1,57.2,67.2;  21.6,55.0,44.8];
my_shem_2024_066 = [14.2,58.3,50;      15.6,59.9,70;   17.8,59.0,85;    20.1,57.7,65;    21.6,55.9,50];
btk_shem_2024_066 = [14.0,57.6,50;     14.8,60.6,45;   19.3,59.1,55;    22.3,57.5,50;    23.8,58.0,35]; # operationally from U.S. sources
btk2_shem_2024_066 = [13.44,57.71,44.8;14.76,60.5,56.0;18.93,59.05,56.0;22.76,58.22,61.6;23.75,57.88,33.6]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2024_066];
myvect = [myvect;my_shem_2024_066];
btkvect = [btkvect;btk_shem_2024_066];
btk2vect = [btk2vect;btk2_shem_2024_066];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 067 ... AKARÁ around 2024-02-19-09Z
# (no MdB warning)

# Shem 068 ... ELEANOR around 2024-02-21-03Z

rsmc_shem_2024_068 = [18.8,60.0,67.2;  22.3,58.8,72.8;  23.5,57.2,44.8;  22.7,54.1,33.6];
my_shem_2024_068 = [18.6,60.2,60;      22.1,59.4,65;    23.6,58.2,45;    22.7,55.2,25];
btk_shem_2024_068 = [19.3,59.1,55;     22.3,57.5,50;    23.8,58.0,35;    22.5,54.8,25]; # operationally from U.S. sources
btk2_shem_2024_068 = [18.93,59.05,56.0;22.76,58.22,61.6;23.75,57.88,33.6;22.38,54.67,33.6]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2024_068];
myvect = [myvect;my_shem_2024_068];
btkvect = [btkvect;btk_shem_2024_068];
btk2vect = [btk2vect;btk2_shem_2024_068];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 069 ... LINCOLN around 2024-02-21-21Z

rsmc_shem_2024_069 = [17.5,116.8,44.8;20.3,113.5,61.6;24.9,114.0,39.2];
my_shem_2024_069 = [17.5,116.8,45;    20.3,113.4,60;  24.9,113.9,35];
btk_shem_2024_069 = [17.7,116.4,30;   19.5,113.4,35;  23.9,113.7,25]; # operationally from U.S. sources
btk2_shem_2024_069 = [17.4,116.5,28.0;20.0,113.4,33.6;24.6,113.8,16.8]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2024_069];
myvect = [myvect;my_shem_2024_069];
btkvect = [btkvect;btk_shem_2024_069];
btk2vect = [btk2vect;btk2_shem_2024_069];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;4;4;4];

# Shem 070 ... ELEANOR around 2024-02-21-21Z

rsmc_shem_2024_070 = [21.7,58.3,72.8; 23.3,58.1,50.4;  22.7,55.3,39.2;  20.9,50.6,22.4];
my_shem_2024_070 = [21.9,58.3,65;     23.4,58.1,40;    22.7,55.2,30;    20.7,50.4,20];
btk_shem_2024_070 = [21.8,57.6,55;    23.65,58.46,40;  22.4,56.3,25;    20.8,50.9,25]; # operationally from U.S. sources (except day 2)
btk2_shem_2024_070 = [21.97,58.1,61.6;23.65,58.46,39.2;22.36,56.29,33.6;20.66,51.35,22.4]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2024_070];
myvect = [myvect;my_shem_2024_070];
btkvect = [btkvect;btk_shem_2024_070];
btk2vect = [btk2vect;btk2_shem_2024_070];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 071 ... LINCOLN around 2024-02-22-21Z

rsmc_shem_2024_071 = [20.1,113.5,56.0;24.5,113.9,39.2];
my_shem_2024_071 = [20.3,113.4,45;    24.8,114.0,35];
btk_shem_2024_071 = [19.5,113.4,35;   23.9,113.7,25]; # operationally from U.S. sources
btk2_shem_2024_071 = [20.0,113.4,33.6;24.6,113.8,16.8]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2024_071];
myvect = [myvect;my_shem_2024_071];
btkvect = [btkvect;btk_shem_2024_071];
btk2vect = [btk2vect;btk2_shem_2024_071];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;4;4];

# Shem 072 ... ELEANOR around 2024-02-23-03Z

rsmc_shem_2024_072 = [24.0,57.3,39.2;  22.5,53.6,33.6];
my_shem_2024_072 = [23.7,56.9,40;      22.3,53.3,30];
btk_shem_2024_072 = [23.8,58.0,35;     22.5,54.8,25]; # operationally from U.S. sources
btk2_shem_2024_072 = [23.75,57.88,33.6;22.38,54.67,33.6]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2024_072];
myvect = [myvect;my_shem_2024_072];
btkvect = [btkvect;btk_shem_2024_072];
btk2vect = [btk2vect;btk2_shem_2024_072];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 073 ... LINCOLN around 2024-02-23-03Z

rsmc_shem_2024_073 = [21.3,113.0,56.0;25.8,114.2,33.6];
my_shem_2024_073 = [21.3,112.9,40;    25.8,114.1,30];
btk_shem_2024_073 = [20.2,113.3,35;   26.0,115.0,25]; # operationally from U.S. sources
btk2_shem_2024_073 = [21.0,113.2,39.2;25.4,114.0,16.8]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2024_073];
myvect = [myvect;my_shem_2024_073];
btkvect = [btkvect;btk_shem_2024_073];
btk2vect = [btk2vect;btk2_shem_2024_073];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;4;4];

# Shem 074 ... FILIPO around 2024-03-10-21Z

rsmc_shem_2024_074 = [20.8,35.9,61.6;  23.3,34.0,33.6;  27.7,35.4,50.4;  33.4,43.9,67.2; 38.4,57.4,56.0];
my_shem_2024_074 = [20.7,36.0,50;      23.1,33.9,30;    27.5,35.2,40;    33.0,43.2,55;   38.0,56.4,45];
btk_shem_2024_074 = [20.6,35.8,60;     24.5,33.8,35;    28.2,35.6,40;    35.3,45.9,50;   38.14,60.37,40]; # operationally from U.S. sources (except day 5 MFR)
btk2_shem_2024_074 = [20.51,36.07,61.6;23.98,33.59,39.2;28.25,35.16,56.0;35.1,45.73,84.0;38.14,60.37,39.2]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2024_074];
myvect = [myvect;my_shem_2024_074];
btkvect = [btkvect;btk_shem_2024_074];
btk2vect = [btk2vect;btk2_shem_2024_074];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 075 ... FILIPO around 2024-03-11-09Z

rsmc_shem_2024_075 = [21.5,35.0,61.6; 25.3,33.9,39.2;  29.9,38.4,67.2;  35.7,49.1,61.6];
my_shem_2024_075 = [21.6,35.0,45;     25.5,34.3,35;    30.2,39.1,55;    36.4,50.2,55];
btk_shem_2024_075 = [21.5,34.9,50;    26.0,33.1,35;    31.4,38.9,40;    37.23,52.88,60]; # operationally from U.S. sources (except day 4 MFR)
btk2_shem_2024_075 = [21.7,34.81,50.4;25.99,32.96,39.2;31.57,38.98,78.4;37.23,52.88,61.6]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2024_075];
myvect = [myvect;my_shem_2024_075];
btkvect = [btkvect;btk_shem_2024_075];
btk2vect = [btk2vect;btk2_shem_2024_075];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 076 ... 08U/18S around 2024-03-11-09Z

rsmc_shem_2024_076 = [13.7,106.7,50.4;15.4,110.9,44.8;16.9,113.3,50.4;18.0,113.9,50.4;19.3,113.4,61.6];
my_shem_2024_076 = [13.4,106.7,45;    15.2,111.4,45;  16.5,114.2,50;  17.6,114.5,55;  18.6,113.7,55];
btk_shem_2024_076 = [13.4,106.1,40;   14.9,110.8,35;  16.2,115.0,35;  17.8,114.8,35;  17.3,114.0,35]; # operationally from U.S. sources
btk2_shem_2024_076 = [13.5,106.1,44.8;15.2,111.2,39.2;16.1,114.9,39.2;17.5,115.3,33.6;17.3,114.1,33.6]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2024_076];
myvect = [myvect;my_shem_2024_076];
btkvect = [btkvect;btk_shem_2024_076];
btk2vect = [btk2vect;btk2_shem_2024_076];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 077 ... FILIPO around 2024-03-11-21Z

rsmc_shem_2024_077 = [23.6,33.8,39.2;  28.1,35.5,56.0;  34.0,44.2,72.8; 38.8,55.7,61.6];
my_shem_2024_077 = [23.4,34.0,35;      28.0,35.6,55;    34.4,44.8,65;   39.5,56.8,45];
btk_shem_2024_077 = [24.5,33.8,35;     28.2,35.6,40;    35.3,45.9,50;   38.14,60.37,40]; # operationally from U.S. sources (except day 4 MFR)
btk2_shem_2024_077 = [23.98,33.59,39.2;28.25,35.16,56.0;35.1,45.73,84.0;38.14,60.37,39.2]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2024_077];
myvect = [myvect;my_shem_2024_077];
btkvect = [btkvect;btk_shem_2024_077];
btk2vect = [btk2vect;btk2_shem_2024_077];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 078 ... 08U/18S around 2024-03-12-15Z

rsmc_shem_2024_078 = [15.1,112.1,44.8;16.3,114.7,44.8;17.5,114.4,56.0;  18.2,113.4,67.2;18.9,112.3,61.6];
my_shem_2024_078 = [14.9,112.2,40;    16.1,114.8,45;  17.1,114.8,55;    18.0,114.0,65;  18.7,113.6,75];
btk_shem_2024_078 = [15.3,111.5,35;   17.0,115.8,35;  17.9,114.2,35;    17.0,113.9,35;  17.1,112.8,35]; # operationally from U.S. sources
btk2_shem_2024_078 = [15.3,112.0,39.2;16.9,115.4,39.2;17.65,115.15,33.6;17.4,114.0,28.0;17.3,112.5,28.0]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2024_078];
myvect = [myvect;my_shem_2024_078];
btkvect = [btkvect;btk_shem_2024_078];
btk2vect = [btk2vect;btk2_shem_2024_078];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 079 ... 08U/18S around 2024-03-12-21Z

rsmc_shem_2024_079 = [15.4,113.1,44.8;16.7,115.0,44.8;17.7,114.4,56.0; 18.3,113.3,67.2;19.1,112.2,61.6];
my_shem_2024_079 = [15.4,113.4,40;    16.5,115.5,45;  17.6,115.1,55;   18.5,114.4,65;  19.6,114.8,75];
btk_shem_2024_079 = [15.3,112.2,35;   17.3,115.4,35;  17.8,114.8,35;   16.7,113.8,35;  17.4,112.7,35]; # operationally from U.S. sources
btk2_shem_2024_079 = [15.3,113.1,39.2;17.1,115.6,39.2;17.62,115.0,33.6;17.4,113.9,28.0;17.5,112.7,28.0]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2024_079];
myvect = [myvect;my_shem_2024_079];
btkvect = [btkvect;btk_shem_2024_079];
btk2vect = [btk2vect;btk2_shem_2024_079];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 080 ... 08U/18S around 2024-03-13-03Z

rsmc_shem_2024_080 = [15.5,114.5,39.2;16.8,116.5,44.8;17.5,115.5,61.6;17.9,114.6,67.2;19.0,113.5,67.2];
my_shem_2024_080 = [15.6,114.4,35;    16.8,116.5,45;  17.7,115.9,60;  18.2,115.2,65;  19.2,114.9,75];
btk_shem_2024_080 = [15.6,113.9,35;   17.7,115.2,30;  17.5,114.5,35;  17.1,114.2,35;  17.4,112.3,35]; # operationally from U.S. sources
btk2_shem_2024_080 = [15.4,113.5,39.2;17.3,115.6,39.2;17.4,114.7,33.6;17.3,113.7,28.0;17.8,112.8,33.6]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2024_080];
myvect = [myvect;my_shem_2024_080];
btkvect = [btkvect;btk_shem_2024_080];
btk2vect = [btk2vect;btk2_shem_2024_080];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 081 ... 08U/18S around 2024-03-13-09Z

rsmc_shem_2024_081 = [16.1,114.8,39.2;17.3,115.8,39.2;17.9,114.8,44.8;18.5,114.1,56.0;20.2,113.4,67.2];
my_shem_2024_081 = [15.8,114.8,35;    17.1,116.0,40;  17.7,115.1,45;  18.3,114.8,60;  19.7,113.9,75];
btk_shem_2024_081 = [16.2,115.0,35;   17.8,114.8,35;  17.3,114.0,35;  17.1,113.0,35;  17.0,112.2,30]; # operationally from U.S. sources
btk2_shem_2024_081 = [16.1,114.9,39.2;17.5,115.3,33.6;17.3,114.1,33.6;17.3,112.9,28.0;17.5,112.6,33.6]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2024_081];
myvect = [myvect;my_shem_2024_081];
btkvect = [btkvect;btk_shem_2024_081];
btk2vect = [btk2vect;btk2_shem_2024_081];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 082 ... 08U/18S around 2024-03-13-21Z

rsmc_shem_2024_082 = [16.4,116.2,39.2;17.4,116.0,39.2; 17.8,114.8,50.4;18.8,114.1,67.2;20.5,113.2,61.6];
my_shem_2024_082 = [16.3,115.9,40;    17.4,115.8,45;   17.9,114.7,50;  18.8,113.8,65;  20.2,112.7,75];
btk_shem_2024_082 = [17.3,115.4,35;   17.8,114.8,35;   16.7,113.8,35;  17.4,112.7,35;  18.1,111.9,30]; # operationally from U.S. sources
btk2_shem_2024_082 = [17.1,115.6,39.2;17.62,115.0,33.6;17.4,113.9,28.0;17.5,112.7,28.0;17.7,112.2,33.6]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2024_082];
myvect = [myvect;my_shem_2024_082];
btkvect = [btkvect;btk_shem_2024_082];
btk2vect = [btk2vect;btk2_shem_2024_082];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 083 ... 08U/18S around 2024-03-14-21Z

rsmc_shem_2024_083 = [17.9,115.4,33.6; 18.3,114.4,39.2;19.1,113.6,56.0;20.4,112.8,61.6;21.6,111.7,50.4];
my_shem_2024_083 = [18.1,115.1,35;     18.7,114.2,45;  19.4,113.3,50;  19.9,112.0,60;  20.3,110.4,65];
btk_shem_2024_083 = [17.8,114.8,35;    16.7,113.8,35;  17.4,112.7,35;  18.1,111.9,30;  17.8,110.9,30]; # operationally from U.S. sources
btk2_shem_2024_083 = [17.62,115.0,33.6;17.4,113.9,28.0;17.5,112.7,28.0;17.7,112.2,33.6;17.8,110.7,33.6]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2024_083];
myvect = [myvect;my_shem_2024_083];
btkvect = [btkvect;btk_shem_2024_083];
btk2vect = [btk2vect;btk2_shem_2024_083];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 084 ... 08U/18S around 2024-03-15-03Z

rsmc_shem_2024_084 = [17.9,114.8,33.6;18.2,113.7,39.2;19.1,112.8,50.4;19.8,111.8,56.0;20.2,110.4,50.4];
my_shem_2024_084 = [18.1,114.8,35;    18.5,113.9,40;  19.3,112.9,50;  19.9,111.7,55;  20.4,109.8,60];
btk_shem_2024_084 = [17.5,114.5,35;   17.1,114.2,35;  17.4,112.3,35;  18.5,111.8,30;  17.8,110.4,35]; # operationally from U.S. sources
btk2_shem_2024_084 = [17.4,114.7,33.6;17.3,113.7,28.0;17.8,112.8,33.6;18.0,112.0,33.6;17.7,110.2,33.6]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2024_084];
myvect = [myvect;my_shem_2024_084];
btkvect = [btkvect;btk_shem_2024_084];
btk2vect = [btk2vect;btk2_shem_2024_084];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 085 ... 08U/18S around 2024-03-15-21Z

rsmc_shem_2024_085 = [17.6,114.3,33.6;18.1,113.8,33.6;18.8,112.9,44.8;18.4,111.6,50.4;18.2,108.9,44.8];
my_shem_2024_085 = [17.6,114.1,35;    18.2,113.9,35;  18.5,113.3,40;  17.9,112.1,45;  17.3,110.7,55];
btk_shem_2024_085 = [16.7,113.8,35;   17.4,112.7,35;  18.1,111.9,30;  17.8,110.9,30;  17.9,107.9,60]; # operationally from U.S. sources
btk2_shem_2024_085 = [17.4,113.9,28.0;17.5,112.7,28.0;17.7,112.2,33.6;17.8,110.7,33.6;17.7,107.9,56.0]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2024_085];
myvect = [myvect;my_shem_2024_085];
btkvect = [btkvect;btk_shem_2024_085];
btk2vect = [btk2vect;btk2_shem_2024_085];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 086 ... 08U/18S around 2024-03-16-15Z

rsmc_shem_2024_086 = [17.4,113.3,33.6;17.8,113.3,33.6;17.6,112.7,33.6;17.1,110.6,39.2;17.0,107.4,50.4];
my_shem_2024_086 = [17.0,113.1,35;    17.4,113.1,40;  17.3,112.5,40;  16.5,109.9,40;  15.9,106.5,55];
btk_shem_2024_086 = [17.1,112.8,35;   17.2,112.1,30;  17.8,111.4,30;  17.8,108.8,50;  17.7,104.9,105]; # operationally from U.S. sources
btk2_shem_2024_086 = [17.3,112.5,28.0;17.6,112.4,33.6;17.9,111.4,33.6;17.7,108.7,50.4;17.8,104.7,95.2]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2024_086];
myvect = [myvect;my_shem_2024_086];
btkvect = [btkvect;btk_shem_2024_086];
btk2vect = [btk2vect;btk2_shem_2024_086];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 087 ... 08U/18S around 2024-03-17-21Z

rsmc_shem_2024_087 = [18.0,112.4,33.6;17.6,111.3,33.6;17.2,108.7,44.8;17.2,105.3,50.4; 18.0,100.5,56.0];
my_shem_2024_087 = [17.8,112.3,35;    17.5,111.3,35;  17.1,108.8,40;  17.1,104.9,45;   17.9,99.7,55];
btk_shem_2024_087 = [18.1,111.9,30;   17.8,110.9,30;  17.9,107.9,60;  17.8,103.8,115;  18.7,97.9,90]; # operationally from U.S. sources
btk2_shem_2024_087 = [17.7,112.2,33.6;17.8,110.7,33.6;17.7,107.9,56.0;17.8,103.7,100.8;18.8,97.9,95.2]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2024_087];
myvect = [myvect;my_shem_2024_087];
btkvect = [btkvect;btk_shem_2024_087];
btk2vect = [btk2vect;btk2_shem_2024_087];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 088 ... 08U/18S around 2024-03-18-03Z

rsmc_shem_2024_088 = [18.1,112.4,33.6;17.6,110.9,33.6;17.4,108.3,44.8;17.4,104.4,50.4; 18.4,98.8,56.0];
my_shem_2024_088 = [17.8,112.1,35;    17.4,110.8,35;  17.1,108.0,40;  17.1,104.2,45;   18.0,98.9,55];
btk_shem_2024_088 = [18.5,111.8,30;   17.8,110.4,35;  17.9,106.7,70;  17.9,102.6,115;  19.3,96.5,85]; # operationally from U.S. sources
btk2_shem_2024_088 = [18.0,112.0,33.6;17.7,110.2,33.6;17.9,106.9,72.8;17.8,102.6,106.4;19.2,96.3,89.6]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2024_088];
myvect = [myvect;my_shem_2024_088];
btkvect = [btkvect;btk_shem_2024_088];
btk2vect = [btk2vect;btk2_shem_2024_088];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 089 ... MEGAN around 2024-03-18-03Z

rsmc_shem_2024_089 = [16.8,136.1,39.2;17.1,133.5,28.0;16.6,130.1,28.0];
my_shem_2024_089 = [16.8,136.0,45;    17.4,133.7,25;  16.7,130.0,25];
btk_shem_2024_089 = [16.9,135.6,30;   17.9,133.4,20;  17.0,130.5,30]; # operationally from U.S. sources (except day 3 BoM)
btk2_shem_2024_089 = [17.0,136.2,28.0;17.9,133.4,28.0;17.0,130.5,28.0]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2024_089];
myvect = [myvect;my_shem_2024_089];
btkvect = [btkvect;btk_shem_2024_089];
btk2vect = [btk2vect;btk2_shem_2024_089];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;4;4;4];

# Shem 090 ... 08U/18S around 2024-03-18-09Z

rsmc_shem_2024_090 = [17.9,112.2,33.6;17.5,110.4,33.6;17.4,107.4,44.8;17.6,103.1,56.0; 18.8,97.3,56.0];
my_shem_2024_090 = [17.3,111.8,30;    16.8,110.0,35;  16.7,107.0,40;  16.6,102.5,50;   17.0,96.3,55];
btk_shem_2024_090 = [18.1,111.8,30;   17.7,109.6,40;  17.8,105.7,85;  18.1,100.9,105;  19.8,94.9,80]; # operationally from U.S. sources
btk2_shem_2024_090 = [18.0,111.7,33.6;17.7,109.6,39.2;17.9,105.8,78.4;18.1,101.0,106.4;19.9,94.7,84.0]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2024_090];
myvect = [myvect;my_shem_2024_090];
btkvect = [btkvect;btk_shem_2024_090];
btk2vect = [btk2vect;btk2_shem_2024_090];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 091 ... MEGAN around 2024-03-18-09Z

rsmc_shem_2024_091 = [17.0,135.7,33.6;17.0,132.7,28.0;16.5,129.4,22.4];
my_shem_2024_091 = [17.1,135.6,30;    17.2,133.0,25;  16.7,129.7,20];
btk_shem_2024_091 = [17.2,135.4,30;   17.6,132.9,20;  16.6,130.1,30]; # operationally from U.S. sources (day 3 BoM)
btk2_shem_2024_091 = [17.6,135.6,28.0;17.7,132.8,28.0;16.6,130.1,28.0]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2024_091];
myvect = [myvect;my_shem_2024_091];
btkvect = [btkvect;btk_shem_2024_091];
btk2vect = [btk2vect;btk2_shem_2024_091];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;4;4;4];

# Shem 092 ... 08U/18S around 2024-03-18-21Z

rsmc_shem_2024_092 = [17.3,111.1,33.6;17.2,108.4,44.8;17.2,104.7,50.4; 17.8,99.4,56.0;19.6,94.2,50.4];
my_shem_2024_092 = [17.1,111.1,35;    17.0,108.4,40;  17.2,104.8,45;   17.9,99.2,55;  20.8,93.6,45];
btk_shem_2024_092 = [17.8,110.9,30;   17.9,107.9,60;  17.8,103.8,115;  18.7,97.9,90;  21.4,92.4,60]; # operationally from U.S. sources
btk2_shem_2024_092 = [17.8,110.7,33.6;17.7,107.9,56.0;17.8,103.7,100.8;18.8,97.9,95.2;21.0,92.6,61.6]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2024_092];
myvect = [myvect;my_shem_2024_092];
btkvect = [btkvect;btk_shem_2024_092];
btk2vect = [btk2vect;btk2_shem_2024_092];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 093 ... 08U/18S around 2024-03-20-03Z

rsmc_shem_2024_093 = [17.4,107.0,50.4;17.5,102.6,67.2; 18.4,96.6,61.6;20.6,91.0,50.4;22.7,87.1,33.6];
my_shem_2024_093 = [17.5,107.1,45;    17.6,102.7,65;   18.8,96.5,60;  21.4,90.9,45;  25.2,86.6,30];
btk_shem_2024_093 = [17.9,106.7,70;   17.9,102.6,115;  19.3,96.5,85;  22.2,91.2,50;  24.0,87.2,25]; # operationally from U.S. sources
btk2_shem_2024_093 = [17.9,106.9,72.8;17.8,102.6,106.4;19.2,96.3,89.6;21.9,91.5,56.0;24.0,87.2,33.6]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2024_093];
myvect = [myvect;my_shem_2024_093];
btkvect = [btkvect;btk_shem_2024_093];
btk2vect = [btk2vect;btk2_shem_2024_093];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 094 ... NEVILLE around 2024-03-20-09Z

rsmc_shem_2024_094 = [17.4,106.5,61.6;17.5,101.6,72.8; 18.9,95.5,61.6;21.0,90.3,44.8;23.4,87.2,33.6];
my_shem_2024_094 = [17.6,106.3,60;    17.7,101.4,75;   19.2,95.5,60;  21.2,90.5,45;  23.3,86.6,35];
btk_shem_2024_094 = [17.8,105.7,85;   18.1,100.9,105;  19.8,94.9,80;  22.7,90.1,45;  24.2,86.8,30]; # operationally from U.S. sources
btk2_shem_2024_094 = [17.9,105.8,78.4;18.1,101.0,106.4;19.9,94.7,84.0;22.6,90.2,50.4;24.6,86.5,33.6]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2024_094];
myvect = [myvect;my_shem_2024_094];
btkvect = [btkvect;btk_shem_2024_094];
btk2vect = [btk2vect;btk2_shem_2024_094];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 095 ... NEVILLE around 2024-03-20-21Z

rsmc_shem_2024_095 = [17.6,103.9,78.4; 18.3,98.4,78.4;20.4,92.4,61.6;21.8,87.6,39.2;24.5,85.7,33.6];
my_shem_2024_095 = [17.7,103.7,70;     18.4,98.2,75;  20.8,92.5,60;  22.6,88.2,40;  25.3,85.7,30];
btk_shem_2024_095 = [17.8,103.8,115;   18.7,97.9,90;  21.4,92.4,60;  23.5,88.2,30;  26.6,86.6,25]; # operationally from U.S. sources
btk2_shem_2024_095 = [17.8,103.7,100.8;18.8,97.9,95.2;21.0,92.6,61.6;23.4,88.2,39.2;27.2,86.7,22.4]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2024_095];
myvect = [myvect;my_shem_2024_095];
btkvect = [btkvect;btk_shem_2024_095];
btk2vect = [btk2vect;btk2_shem_2024_095];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 096 ... NEVILLE around 2024-03-22-03Z

rsmc_shem_2024_096 = [18.8,96.6,106.4;20.6,90.9,67.2;22.1,86.0,33.6];
my_shem_2024_096 = [18.9,96.7,90;     20.8,90.7,55;  22.8,86.3,30];
btk_shem_2024_096 = [19.3,96.5,85;    22.2,91.2,50;  24.0,87.2,25]; # operationally from U.S. sources
btk2_shem_2024_096 = [19.2,96.3,89.6; 21.9,91.5,56.0;24.0,87.2,33.6]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2024_096];
myvect = [myvect;my_shem_2024_096];
btkvect = [btkvect;btk_shem_2024_096];
btk2vect = [btk2vect;btk2_shem_2024_096];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;4;4;4];

# Shem 097 ... GAMANE around 2024-03-27-03Z

rsmc_shem_2024_097 = [14.2,49.1,28.0;  15.9,50.2,33.6;  16.6,52.3,44.8;  17.6,54.1,33.6;  18.6,55.0,22.4];
my_shem_2024_097 = [14.1,49.2,50;      15.9,50.0,40;    16.5,52.2,45;    17.9,54.5,35;    19.6,56.2,25];
btk_shem_2024_097 = [13.9,48.8,40;     14.3,47.7,20;    16.0,51.0,20;    17.26,52.55,20;  16.51,51.97,15]; # operationally from U.S. sources (except days 4-5 MFR)
btk2_shem_2024_097 = [13.83,48.09,39.2;14.12,47.62,22.4;15.56,50.89,28.0;17.26,52.55,22.4;16.51,51.97,16.8]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2024_097];
myvect = [myvect;my_shem_2024_097];
btkvect = [btkvect;btk_shem_2024_097];
btk2vect = [btk2vect;btk2_shem_2024_097];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 098 ... 11U/21S around 2024-04-05-21Z

rsmc_shem_2024_098 = [13.2,119.2,61.6; 14.2,118.5,56.0; 15.1,117.1,39.2;16.3,114.4,33.6;17.5,111.3,33.6];
my_shem_2024_098 = [13.6,119.5,55;     14.8,118.9,55;   15.7,117.6,40;  17.2,114.8,35;  19.7,111.4,35];
btk_shem_2024_098 = [14.3,119.7,65;    15.9,118.9,115;  16.9,118.1,45;  18.6,116.1,40;  21.2,114.6,30]; # operationally from U.S. sources
btk2_shem_2024_098 = [14.1,119.85,72.8;15.8,119.0,123.2;16.7,118.1,56.0;18.4,116.3,50.4;21.0,114.7,39.2]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2024_098];
myvect = [myvect;my_shem_2024_098];
btkvect = [btkvect;btk_shem_2024_098];
btk2vect = [btk2vect;btk2_shem_2024_098];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 099 ... OLGA around 2024-04-06-21Z

rsmc_shem_2024_099 = [15.6,119.1,67.2; 16.7,117.2,44.8;18.0,114.1,39.2;19.7,110.7,33.6;20.0,108.2,33.6];
my_shem_2024_099 = [15.7,119.1,70;     16.7,117.3,45;  18.1,114.3,35;  20.0,110.8,30;  20.8,108.0,25];
btk_shem_2024_099 = [15.9,118.9,115;   16.9,118.1,45;  18.6,116.1,40;  21.2,114.6,30;  21.7,113.6,25]; # operationally from U.S. sources
btk2_shem_2024_099 = [15.8,119.0,123.2;16.7,118.1,56.0;18.4,116.3,50.4;21.0,114.7,39.2;22.2,113.6,28.0]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2024_099];
myvect = [myvect;my_shem_2024_099];
btkvect = [btkvect;btk_shem_2024_099];
btk2vect = [btk2vect;btk2_shem_2024_099];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 100 ... OLGA around 2024-04-07-21Z

rsmc_shem_2024_100 = [17.0,117.5,50.4;18.3,114.8,39.2;20.2,111.8,33.6;21.7,109.4,33.6];
my_shem_2024_100 = [17.1,117.7,70;    18.5,115.2,45;  20.5,112.2,30;  22.1,110.0,30];
btk_shem_2024_100 = [16.9,118.1,45;   18.6,116.1,40;  21.2,114.6,30;  21.7,113.6,25]; # operationally from U.S. sources
btk2_shem_2024_100 = [16.7,118.1,56.0;18.4,116.3,50.4;21.0,114.7,39.2;22.2,113.6,28.0]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2024_100];
myvect = [myvect;my_shem_2024_100];
btkvect = [btkvect;btk_shem_2024_100];
btk2vect = [btk2vect;btk2_shem_2024_100];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;4;4;4;4];

# Shem 101 ... OLGA around 2024-04-08-03Z

rsmc_shem_2024_101 = [17.3,117.0,50.4;18.9,114.5,39.2;20.8,111.9,33.6];
my_shem_2024_101 = [17.6,117.1,65;    19.3,115.0,40;  21.4,112.4,30];
btk_shem_2024_101 = [17.2,117.5,50;   18.9,116.1,35;  21.7,114.1,30]; # operationally from U.S. sources
btk2_shem_2024_101 = [17.2,117.5,50.4;18.9,116.1,50.4;21.7,114.0,28.0]; # BoM best track
rsmcvect = [rsmcvect;rsmc_shem_2024_101];
myvect = [myvect;my_shem_2024_101];
btkvect = [btkvect;btk_shem_2024_101];
btk2vect = [btk2vect;btk2_shem_2024_101];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;4;4;4];

# Shem 102 ... HIDAYA around 2024-05-02-03Z ... CERTIFIED

rsmc_shem_2024_102 = [9.1,42.9,56.0; 8.4,40.8,44.8];
my_shem_2024_102 = [9.2,42.8,55;     8.3,40.7,40];
btk_shem_2024_102 = [8.8,43.3,75;    7.9,40.6,60]; # operationally from U.S. sources
btk2_shem_2024_102 = [8.76,43.2,89.6;7.86,40.56,61.6]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2024_102];
myvect = [myvect;my_shem_2024_102];
btkvect = [btkvect;btk_shem_2024_102];
btk2vect = [btk2vect;btk2_shem_2024_102];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 103 ... HIDAYA around 2024-05-02-15Z ... CERTIFIED

rsmc_shem_2024_103 = [8.7,41.7,56.0;  7.4,39.5,33.6];
my_shem_2024_103 = [8.7,42.1,65;      7.7,39.6,35];
btk_shem_2024_103 = [8.2,42.0,75;     7.7,38.6,40]; # operationally from U.S. sources
btk2_shem_2024_103 = [8.23,41.85,89.6;7.72,39.08,22.4]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2024_103];
myvect = [myvect;my_shem_2024_103];
btkvect = [btkvect;btk_shem_2024_103];
btk2vect = [btk2vect;btk2_shem_2024_103];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 104 ... HIDAYA around 2024-05-03-03Z ... CERTIFIED

rsmc_shem_2024_104 = [8.3,40.9,50.4];
my_shem_2024_104 = [8.0,41.2,80];
btk_shem_2024_104 = [7.9,40.6,60]; # operationally from U.S. sources
btk2_shem_2024_104 = [7.86,40.56,61.6]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2024_104];
myvect = [myvect;my_shem_2024_104];
btkvect = [btkvect;btk_shem_2024_104];
btk2vect = [btk2vect;btk2_shem_2024_104];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;3];

# Shem 105 ... HIDAYA around 2024-05-03-15Z ... CERTIFIED

rsmc_shem_2024_105 = [7.1,39.9,44.8];
my_shem_2024_105 = [7.0,39.7,55];
btk_shem_2024_105 = [7.7,38.6,40]; # operationally from U.S. sources
btk2_shem_2024_105 = [7.72,39.08,22.4]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2024_105];
myvect = [myvect;my_shem_2024_105];
btkvect = [btkvect;btk_shem_2024_105];
btk2vect = [btk2vect;btk2_shem_2024_105];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;3];

# Shem 106 ... IALY around 2024-05-17-03Z ... CERTIFIED

rsmc_shem_2024_106 = [8.9,50.2,44.8;  9.1,48.6,56.0; 8.4,48.5,56.0;  7.5,48.9,44.8; 5.7,48.6,22.4];
my_shem_2024_106 = [9.1,49.8,45;      8.9,48.3,55;   7.7,47.9,50;    6.8,48.3,35;   5.7,47.5,20];
btk_shem_2024_106 = [8.0,49.2,40;     7.5,46.6,55;   6.3,44.5,55;    5.2,43.0,55;   3.7,41.9,45]; # operationally from U.S. sources
btk2_shem_2024_106 = [8.01,49.33,44.8;7.5,46.43,56.0;6.46,44.43,50.4;5.35,42.9,67.2;3.67,42.17,50.4]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2024_106];
myvect = [myvect;my_shem_2024_106];
btkvect = [btkvect;btk_shem_2024_106];
btk2vect = [btk2vect;btk2_shem_2024_106];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 107 ... IALY around 2024-05-18-03Z ... CERTIFIED

rsmc_shem_2024_107 = [7.7,47.3,56.0; 6.4,46.4,56.0;  4.8,46.7,39.2; 2.7,47.4,22.4];
my_shem_2024_107 = [7.5,47.3,50;     6.4,46.3,40;    4.4,46.2,30;   2.0,46.6,20];
btk_shem_2024_107 = [7.5,46.6,55;    6.3,44.5,55;    5.2,43.0,55;   3.7,41.9,45]; # operationally from U.S. sources
btk2_shem_2024_107 = [7.5,46.43,56.0;6.46,44.43,50.4;5.35,42.9,67.2;3.67,42.17,50.4]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2024_107];
myvect = [myvect;my_shem_2024_107];
btkvect = [btkvect;btk_shem_2024_107];
btk2vect = [btk2vect;btk2_shem_2024_107];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 108 ... 25S around 2024-05-19-21Z ... CERTIFIED
# (no Meteo-France forecast)

# Shem 109 ... IALY around 2024-05-20-03Z ... CERTIFIED

rsmc_shem_2024_109 = [3.8,44.2,44.8; 2.5,44.7,28.0];
my_shem_2024_109 = [4.1,43.7,40;     2.5,44.2,25];
btk_shem_2024_109 = [5.2,43.0,55;    3.7,41.9,45]; # operationally from U.S. sources
btk2_shem_2024_109 = [5.35,42.9,67.2;3.67,42.17,50.4]; # MFR data table
rsmcvect = [rsmcvect;rsmc_shem_2024_109];
myvect = [myvect;my_shem_2024_109];
btkvect = [btkvect;btk_shem_2024_109];
btk2vect = [btk2vect;btk2_shem_2024_109];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Nio 01 ... BOB 01 / 99B around 2024-05-24-09Z ... CERTIFIED

rsmc_nio_2024_01 = [17.6,89.5,37.1;20.1,89.6,58.3;22.7,89.6,47.7;24.9,90.4,26.5];
my_nio_2024_01 = [17.6,89.7,35;    20.0,89.9,55;  22.9,90.1,45;  25.1,90.9,20];
btk_nio_2024_01 = [18.0,89.3,30;   20.4,88.9,50;  23.2,89.3,45;  25.4,91.9,30]; # operationally from U.S. sources
btk2_nio_2024_01 = [18.2,89.7,31.8;20.2,89.2,53.0;23.0,89.2,37.1;25.1,91.8,21.2]; # IMD prelim report
rsmcvect = [rsmcvect;rsmc_nio_2024_01];
myvect = [myvect;my_nio_2024_01];
btkvect = [btkvect;btk_nio_2024_01];
btk2vect = [btk2vect;btk2_nio_2024_01];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Nio 02 ... BOB 01 / 99B around 2024-05-24-21Z ... CERTIFIED

rsmc_nio_2024_02 = [18.8,89.6,47.7;20.8,89.5,63.6;24.0,89.9,26.5];
my_nio_2024_02 = [18.7,89.7,45;    20.9,89.6,60;  24.2,89.9,25];
btk_nio_2024_02 = [18.9,89.1,35;   21.9,88.6,55;  24.2,90.4,40]; # operationally from U.S. sources
btk2_nio_2024_02 = [19.3,89.4,42.4;21.7,89.2,63.6;24.0,90.5,31.8]; # IMD prelim report
rsmcvect = [rsmcvect;rsmc_nio_2024_02];
myvect = [myvect;my_nio_2024_02];
btkvect = [btkvect;btk_nio_2024_02];
btk2vect = [btk2vect;btk2_nio_2024_02];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Nio 03 ... BOB 01 / 99B around 2024-05-25-03Z ... CERTIFIED

rsmc_nio_2024_03 = [19.9,89.6,53.0;22.5,89.5,47.7;24.7,90.1,21.2];
my_nio_2024_03 = [20.0,89.5,50;    22.6,89.7,45;  25.1,90.4,20];
btk_nio_2024_03 = [19.5,89.0,45;   22.6,88.9,50;  24.9,91.2,40]; # operationally from U.S. sources
btk2_nio_2024_03 = [19.5,89.4,53.0;22.5,89.2,47.7;24.4,91.1,21.2]; # IMD prelim report
rsmcvect = [rsmcvect;rsmc_nio_2024_03];
myvect = [myvect;my_nio_2024_03];
btkvect = [btkvect;btk_nio_2024_03];
btk2vect = [btk2vect;btk2_nio_2024_03];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Wpac 001 ... 01W/(AGHON) around 2024-05-25-03Z ... CERTIFIED

rsmc_wpac_2024_001 = [14.9,122.2,39.2;16.5,123.5,50.4;19.8,127.1,67.2;26.5,134.0,67.2;34.6,144.6,56.0];
my_wpac_2024_001 = [14.9,121.8,35;    17.3,123.3,45;  21.1,127.4,70;  27.1,133.4,60;  34.5,143.9,45];
btk_wpac_2024_001 = [14.1,121.4,55;   15.8,122.8,90;  18.5,125.5,75;  24.3,130.8,70;  28.2,134.8,55]; # operationally from U.S. sources
btk2_wpac_2024_001 = [14.1,121.4,56.0;15.8,122.8,84.0;18.5,125.5,72.8;24.3,130.9,67.2;28.0,134.7,50.4]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2024_001];
myvect = [myvect;my_wpac_2024_001];
btkvect = [btkvect;btk_wpac_2024_001];
btk2vect = [btk2vect;btk2_wpac_2024_001];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 002 ... 01W/(AGHON) around 2024-05-25-09Z ... CERTIFIED

rsmc_wpac_2024_002 = [14.7,121.7,39.2;17.0,123.4,50.4;20.7,127.1,67.2;25.4,133.9,67.2;29.0,138.3,56.0];
my_wpac_2024_002 = [14.5,121.3,35;    16.8,123.2,60;  19.9,126.0,70;  23.8,131.4,55;  26.8,135.6,45];
btk_wpac_2024_002 = [14.5,121.8,55;   16.2,123.5,95;  19.9,126.8,75;  25.2,131.8,60;  29.0,135.8,50]; # operationally from U.S. sources
btk2_wpac_2024_002 = [14.3,121.7,61.6;16.4,123.5,78.4;19.8,126.6,72.8;25.6,132.2,67.2;28.9,135.9,44.8]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2024_002];
myvect = [myvect;my_wpac_2024_002];
btkvect = [btkvect;btk_wpac_2024_002];
btk2vect = [btk2vect;btk2_wpac_2024_002];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Nio 04 ... BOB 01 / 99B around 2024-05-25-09Z ... CERTIFIED

rsmc_nio_2024_04 = [20.7,89.4,63.6;23.1,89.5,37.1;25.3,90.3,15.9];
my_nio_2024_04 = [20.5,89.5,60;    22.9,89.7,40;  25.1,90.5,15];
btk_nio_2024_04 = [20.4,88.9,50;   23.2,89.3,45;  25.4,91.9,30]; # operationally from U.S. sources
btk2_nio_2024_04 = [20.2,89.2,53.0;23.0,89.2,37.1;25.1,91.8,21.2]; # IMD prelim report
rsmcvect = [rsmcvect;rsmc_nio_2024_04];
myvect = [myvect;my_nio_2024_04];
btkvect = [btkvect;btk_nio_2024_04];
btk2vect = [btk2vect;btk2_nio_2024_04];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Nio 05 ... REMAL around 2024-05-25-21Z ... CERTIFIED

rsmc_nio_2024_05 = [22.0,89.3,63.6;24.3,90.3,26.5];
my_nio_2024_05 = [21.8,89.3,55;    24.2,90.7,30];
btk_nio_2024_05 = [21.9,88.6,55;   24.2,90.4,40]; # operationally from U.S. sources
btk2_nio_2024_05 = [21.7,89.2,63.6;24.0,90.5,31.8]; # IMD prelim report
rsmcvect = [rsmcvect;rsmc_nio_2024_05];
myvect = [myvect;my_nio_2024_05];
btkvect = [btkvect;btk_nio_2024_05];
btk2vect = [btk2vect;btk2_nio_2024_05];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Wpac 003 ... EWINIAR/(AGHON) around 2024-05-26-03Z ... CERTIFIED

rsmc_wpac_2024_003 = [16.3,123.2,50.4;19.4,126.2,61.6;23.9,131.1,67.2;27.7,135.6,56.0;31.7,140.8,44.8];
my_wpac_2024_003 = [16.0,122.6,65;    18.7,125.2,85;  22.5,129.0,80;  27.1,133.7,60;  31.2,138.9,40];
btk_wpac_2024_003 = [15.8,122.8,90;   18.5,125.5,75;  24.3,130.8,70;  28.2,134.8,55;  33.1,139.9,45]; # operationally from U.S. sources
btk2_wpac_2024_003 = [15.8,122.8,84.0;18.5,125.5,72.8;24.3,130.9,67.2;28.0,134.7,50.4;33.0,140.1,44.8]; # JMA best track (except day 5 wind)
rsmcvect = [rsmcvect;rsmc_wpac_2024_003];
myvect = [myvect;my_wpac_2024_003];
btkvect = [btkvect;btk_wpac_2024_003];
btk2vect = [btk2vect;btk2_wpac_2024_003];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Nio 06 ... REMAL around 2024-05-26-03Z ... CERTIFIED

rsmc_nio_2024_06 = [22.7,89.5,42.4;25.5,90.9,21.2];
my_nio_2024_06 = [22.4,89.3,45;    24.9,91.1,25];
btk_nio_2024_06 = [22.6,89.1,50;   24.9,91.2,40]; # operationally from U.S. sources
btk2_nio_2024_06 = [22.5,89.2,47.7;24.4,91.1,21.2]; # IMD prelim report
rsmcvect = [rsmcvect;rsmc_nio_2024_06];
myvect = [myvect;my_nio_2024_06];
btkvect = [btkvect;btk_nio_2024_06];
btk2vect = [btk2vect;btk2_nio_2024_06];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Wpac 004 ... EWINIAR/(AGHON) around 2024-05-26-09Z ... CERTIFIED

rsmc_wpac_2024_004 = [16.9,123.5,56.0;20.1,127.3,67.2;24.4,131.8,67.2;27.8,136.7,56.0;32.1,142.8,44.8];
my_wpac_2024_004 = [16.7,123.5,80;    19.9,127.0,100; 24.0,130.8,85;  28.2,135.3,60;  32.2,142.4,40];
btk_wpac_2024_004 = [16.2,123.5,95;   19.9,126.8,75;  25.2,131.8,60;  29.0,135.8,50;  34.2,142.8,45]; # operationally from U.S. sources
btk2_wpac_2024_004 = [16.4,123.5,78.4;19.8,126.6,72.8;25.6,132.2,67.2;28.9,135.9,44.8;34.9,143.2,44.8]; # JMA best track (except day 5 wind)
rsmcvect = [rsmcvect;rsmc_wpac_2024_004];
myvect = [myvect;my_wpac_2024_004];
btkvect = [btkvect;btk_wpac_2024_004];
btk2vect = [btk2vect;btk2_wpac_2024_004];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Nio 07 ... REMAL around 2024-05-26-09Z ... CERTIFIED

rsmc_nio_2024_07 = [23.5,89.8,31.8];
my_nio_2024_07 = [23.2,89.5,35];
btk_nio_2024_07 = [23.2,89.3,45]; # operationally from U.S. sources
btk2_nio_2024_07 = [23.0,89.2,37.7]; # IMD prelim report
rsmcvect = [rsmcvect;rsmc_nio_2024_07];
myvect = [myvect;my_nio_2024_07];
btkvect = [btkvect;btk_nio_2024_07];
btk2vect = [btk2vect;btk2_nio_2024_07];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;2];

# Wpac 005 ... EWINIAR/(AGHON) around 2024-05-27-03Z ... CERTIFIED

rsmc_wpac_2024_005 = [18.8,125.9,78.4;24.0,131.2,84.0;28.3,135.5,61.6;33.3,140.6,50.4;40.5,155.1,0];
my_wpac_2024_005 = [18.5,125.7,110;   23.6,130.5,100; 27.7,134.1,70;  32.3,139.9,50;  38.6,153.4,0];
btk_wpac_2024_005 = [18.5,125.5,75;   24.3,130.8,70;  28.2,134.8,55;  33.1,139.9,45;  39.1,155.1,0]; # operationally from U.S. sources (except day 5 JMA)
btk2_wpac_2024_005 = [18.5,125.5,72.8;24.3,130.9,67.2;28.0,134.7,50.4;33.0,140.1,44.8;39.1,155.1,0]; # JMA best track (except day 4 wind)
rsmcvect = [rsmcvect;rsmc_wpac_2024_005];
myvect = [myvect;my_wpac_2024_005];
btkvect = [btkvect;btk_wpac_2024_005];
btk2vect = [btk2vect;btk2_wpac_2024_005];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 006 ... EWINIAR/(AGHON) around 2024-05-27-09Z ... CERTIFIED

rsmc_wpac_2024_006 = [19.9,126.8,84.0;25.0,131.9,78.4;28.8,135.8,61.6;34.5,142.3,50.4;40.9,154.6,0];
my_wpac_2024_006 = [19.6,126.9,100;   24.5,131.6,90;  28.7,136.0,60;  33.9,143.1,50;  40.1,156.9,0];
btk_wpac_2024_006 = [19.9,126.8,75;   25.2,131.8,60;  29.0,135.8,50;  34.2,142.8,45;  40.5,159.2,0]; # operationally from U.S. sources (except day 5 JMA)
btk2_wpac_2024_006 = [19.8,126.6,72.8;25.6,132.2,67.2;28.9,135.9,44.8;34.9,143.2,44.8;40.5,159.2,0]; # JMA best track (except day 4 wind)
rsmcvect = [rsmcvect;rsmc_wpac_2024_006];
myvect = [myvect;my_wpac_2024_006];
btkvect = [btkvect;btk_wpac_2024_006];
btk2vect = [btk2vect;btk2_wpac_2024_006];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 007 ... EWINIAR/(AGHON) around 2024-05-27-21Z ... CERTIFIED

rsmc_wpac_2024_007 = [22.5,129.7,84.0;26.8,134.1,72.8;30.1,138.3,56.0;36.7,147.7,0];
my_wpac_2024_007 = [22.2,129.2,80;    26.6,133.4,65;  30.2,138.0,45;  35.7,146.7,0];
btk_wpac_2024_007 = [22.8,129.5,75;   27.4,133.9,55;  31.7,138.5,45;  38.0,150.9,0]; # operationally from U.S. sources (except day 4 JMA)
btk2_wpac_2024_007 = [23.0,129.3,72.8;27.5,134.0,56.0;31.4,137.7,44.8;38.0,150.9,0]; # JMA best track (except day 3 wind)
rsmcvect = [rsmcvect;rsmc_wpac_2024_007];
myvect = [myvect;my_wpac_2024_007];
btkvect = [btkvect;btk_wpac_2024_007];
btk2vect = [btk2vect;btk2_wpac_2024_007];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Wpac 008 ... EWINIAR/(AGHON) around 2024-05-28-21Z ... CERTIFIED

rsmc_wpac_2024_008 = [27.1,133.3,67.2;30.9,137.3,56.0;36.4,148.0,0];
my_wpac_2024_008 = [27.1,133.4,55;    30.7,137.4,35;  37.1,148.7,0];
btk_wpac_2024_008 = [27.4,133.9,55;   31.7,138.5,45;  38.0,150.9,0]; # operationally from U.S. sources (except day 3 JMA)
btk2_wpac_2024_008 = [27.5,134.0,56.0;31.4,137.7,44.8;38.0,150.9,0]; # JMA best track (except day 2 wind)
rsmcvect = [rsmcvect;rsmc_wpac_2024_008];
myvect = [myvect;my_wpac_2024_008];
btkvect = [btkvect;btk_wpac_2024_008];
btk2vect = [btk2vect;btk2_wpac_2024_008];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Wpac 009 ... EWINIAR/(AGHON) around 2024-05-29-03Z ... CERTIFIED

rsmc_wpac_2024_009 = [28.0,134.3,61.6;32.4,139.4,50.4;38.6,152.1,0];
my_wpac_2024_009 = [28.1,134.6,50;    32.4,140.2,40;  38.8,152.7,0];
btk_wpac_2024_009 = [28.2,134.8,55;   33.1,139.9,45;  39.1,155.1,0]; # operationally from U.S. sources (except day 3 JMA)
btk2_wpac_2024_009 = [28.0,134.7,50.4;33.0,140.1,44.8;39.1,155.1,0]; # JMA best track (except day 2 wind)
rsmcvect = [rsmcvect;rsmc_wpac_2024_009];
myvect = [myvect;my_wpac_2024_009];
btkvect = [btkvect;btk_wpac_2024_009];
btk2vect = [btk2vect;btk2_wpac_2024_009];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Wpac 010 ... EWINIAR/(AGHON) around 2024-05-29-21Z ... CERTIFIED

rsmc_wpac_2024_010 = [31.7,137.8,50.4;38.3,149.8,0];
my_wpac_2024_010 = [31.7,137.9,45;    38.5,150.2,0];
btk_wpac_2024_010 = [31.7,138.5,45;   38.0,150.9,0]; # operationally from U.S. sources (except day 2 JMA)
btk2_wpac_2024_010 = [31.4,137.7,44.8;38.0,150.9,0]; # JMA best track (except day 1 wind)
rsmcvect = [rsmcvect;rsmc_wpac_2024_010];
myvect = [myvect;my_wpac_2024_010];
btkvect = [btkvect;btk_wpac_2024_010];
btk2vect = [btk2vect;btk2_wpac_2024_010];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Wpac 011 ... 04W/(BUTCHOY) around 2024-07-20-21Z ... certification failed

rsmc_wpac_2024_011 = [18.8,110.8,39.2;20.9,108.7,0];
my_wpac_2024_011 = [18.5,110.3,45;    20.6,108.3,0];
btk_wpac_2024_011 = [18.8,110.2,50;   21.0,108.0,0]; # operationally from U.S. sources
btk2_wpac_2024_011 = [18.6,110.2,50.4;21.1,107.8,0]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2024_011];
myvect = [myvect;my_wpac_2024_011];
btkvect = [btkvect;btk_wpac_2024_011];
btk2vect = [btk2vect;btk2_wpac_2024_011];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Wpac 012 ... GAEMI/(CARINA) around 2024-07-20-21Z ... certification failed

rsmc_wpac_2024_012 = [17.9,125.6,56.0;19.5,125.0,72.8;21.7,124.4,84.0;25.0,122.8,95.2;27.2,119.2,89.6];
my_wpac_2024_012 = [17.9,125.1,50;    19.3,124.3,70;  21.4,123.8,95;  25.5,122.1,90;  28.3,118.8,60];
btk_wpac_2024_012 = [17.0,125.7,55;   19.1,125.0,70;  22.8,123.5,120; 24.7,121.4,95;  25.6,118.6,45]; # operationally from U.S. sources
btk2_wpac_2024_012 = [16.8,125.5,67.2;18.7,125.2,78.4;22.8,123.5,95.2;24.8,121.4,67.2;25.7,118.9,50.4]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2024_012];
myvect = [myvect;my_wpac_2024_012];
btkvect = [btkvect;btk_wpac_2024_012];
btk2vect = [btk2vect;btk2_wpac_2024_012];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 013 ... PRAPIROON/(BUTCHOY) around 2024-07-21-09Z ... CERTIFIED

rsmc_wpac_2024_013 = [19.8,109.3,39.2;21.5,108.6,0];
my_wpac_2024_013 = [19.8,109.3,35;    21.6,108.6,0];
btk_wpac_2024_013 = [20.1,108.7,55;   21.6,107.4,0]; # operationally from U.S. sources
btk2_wpac_2024_013 = [20.1,108.5,61.6;21.6,107.6,0]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2024_013];
myvect = [myvect;my_wpac_2024_013];
btkvect = [btkvect;btk_wpac_2024_013];
btk2vect = [btk2vect;btk2_wpac_2024_013];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Wpac 014 ... GAEMI/(CARINA) around 2024-07-21-09Z ... CERTIFIED

rsmc_wpac_2024_014 = [18.2,125.5,67.2;20.1,125.1,84.0;23.7,124.2,95.2; 26.1,121.6,89.6;28.9,119.7,89.6];
my_wpac_2024_014 = [18.2,125.4,60;    20.2,125.3,75;  24.1,124.2,95;   26.2,121.4,70;  28.4,119.4,50];
btk_wpac_2024_014 = [18.1,125.5,55;   20.8,125.2,90;  24.2,122.5,125;  25.1,119.8,60;  27.5,117.8,35]; # operationally from U.S. sources
btk2_wpac_2024_014 = [17.7,125.5,72.8;20.7,125.0,84.0;24.2,122.5,100.8;25.2,119.7,61.6;27.5,117.7,39.2]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2024_014];
myvect = [myvect;my_wpac_2024_014];
btkvect = [btkvect;btk_wpac_2024_014];
btk2vect = [btk2vect;btk2_wpac_2024_014];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 015 ... GAEMI/(CARINA) around 2024-07-21-21Z ... CERTIFIED

rsmc_wpac_2024_015 = [18.8,125.1,78.4;22.1,124.6,95.2;24.8,122.3,95.2;26.3,119.1,72.8;29.5,116.8,39.2];
my_wpac_2024_015 = [18.7,125.3,60;    22.0,124.7,95;  24.9,122.4,95;  26.3,119.7,60;  29.7,118.0,30];
btk_wpac_2024_015 = [19.1,125.0,70;   22.8,123.5,120; 24.7,121.4,95;  25.6,118.6,45;  29.5,116.5,25]; # operationally from U.S. sources
btk2_wpac_2024_015 = [18.7,125.2,78.4;22.8,123.5,95.2;24.8,121.4,67.2;25.7,118.9,50.4;27.9,115.9,25.0]; # JMA best track (except day 5 wind)
rsmcvect = [rsmcvect;rsmc_wpac_2024_015];
myvect = [myvect;my_wpac_2024_015];
btkvect = [btkvect;btk_wpac_2024_015];
btk2vect = [btk2vect;btk2_wpac_2024_015];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 016 ... GAEMI/(CARINA) around 2024-07-22-03Z ... CERTIFIED

rsmc_wpac_2024_016 = [19.7,125.3,78.4;23.3,124.0,95.2;25.4,120.9,89.6;26.6,118.0,61.6;29.7,115.1,0];
my_wpac_2024_016 = [19.8,125.4,65;    23.1,124.1,95;  25.3,121.0,80;  26.8,118.3,45;  30.7,116.2,0];
btk_wpac_2024_016 = [19.7,125.0,80;   23.5,123.3,120; 25.1,120.2,75;  26.5,118.3,35;  28.4,115.2,0]; # operationally from U.S. sources (except day 5 JMA)
btk2_wpac_2024_016 = [19.5,125.1,84.0;23.6,123.2,95.2;25.1,120.3,67.2;26.4,118.3,44.8;28.4,115.2,0]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2024_016];
myvect = [myvect;my_wpac_2024_016];
btkvect = [btkvect;btk_wpac_2024_016];
btk2vect = [btk2vect;btk2_wpac_2024_016];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 017 ... GAEMI/(CARINA) around 2024-07-22-09Z ... CERTIFIED

rsmc_wpac_2024_017 = [20.5,125.0,84.0;23.9,123.1,95.2; 25.5,120.2,78.4;27.3,117.6,50.4;29.7,115.6,0];
my_wpac_2024_017 = [20.7,125.1,70;    24.1,123.2,90;   25.5,120.0,65;  27.5,117.7,40;  30.2,115.6,0];
btk_wpac_2024_017 = [20.8,125.2,90;   24.2,122.5,125;  25.1,119.8,60;  27.5,117.8,35;  28.6,114.7,0]; # operationally from U.S. sources (except day 5 JMA)
btk2_wpac_2024_017 = [20.7,125.0,84.0;24.2,122.5,100.8;25.2,119.7,61.6;27.5,117.7,39.2;28.6,114.7,0]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2024_017];
myvect = [myvect;my_wpac_2024_017];
btkvect = [btkvect;btk_wpac_2024_017];
btk2vect = [btk2vect;btk2_wpac_2024_017];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 018 ... GAEMI/(CARINA) around 2024-07-22-21Z ... CERTIFIED

rsmc_wpac_2024_018 = [22.7,124.2,95.2;24.8,121.5,100.8;25.7,118.5,61.6;28.9,117.2,44.8;31.7,115.1,0];
my_wpac_2024_018 = [22.3,124.1,85;    24.6,121.2,85;   25.8,118.2,60;  28.7,117.0,30;  32.1,115.2,0];
btk_wpac_2024_018 = [22.8,123.5,120;  24.7,121.4,95;   25.6,118.6,45;  29.5,116.5,25;  29.6,113.6,0]; # operationally from U.S. sources (except day 5 JMA)
btk2_wpac_2024_018 = [22.8,123.5,95.2;24.8,121.4,67.2; 25.7,118.9,50.4;27.9,115.9,25.0;29.6,113.6,0]; # JMA best track (except day 4 wind)
rsmcvect = [rsmcvect;rsmc_wpac_2024_018];
myvect = [myvect;my_wpac_2024_018];
btkvect = [btkvect;btk_wpac_2024_018];
btk2vect = [btk2vect;btk2_wpac_2024_018];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 019 ... GAEMI/(CARINA) around 2024-07-23-21Z ... CERTIFIED

rsmc_wpac_2024_019 = [24.9,121.1,84.0;26.0,118.1,56.0;28.9,115.7,39.2;31.2,113.7,0];
my_wpac_2024_019 = [24.8,121.0,105;   26.2,118.1,60;  28.1,115.2,35;  30.7,112.7,0];
btk_wpac_2024_019 = [24.7,121.4,95;   25.6,118.6,45;  29.5,116.5,25;  29.6,113.6,0]; # operationally from U.S. sources (except day 4 JMA)
btk2_wpac_2024_019 = [24.8,121.4,67.2;25.7,118.9,50.4;27.9,115.9,25.0;29.6,113.6,0]; # JMA best track (except day 3 wind)
rsmcvect = [rsmcvect;rsmc_wpac_2024_019];
myvect = [myvect;my_wpac_2024_019];
btkvect = [btkvect;btk_wpac_2024_019];
btk2vect = [btk2vect;btk2_wpac_2024_019];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Wpac 020 ... GAEMI/(CARINA) around 2024-07-24-03Z ... CERTIFIED

rsmc_wpac_2024_020 = [25.4,120.3,78.4;27.3,117.9,56.0;30.3,115.6,0;33.4,113.8,0];
my_wpac_2024_020 = [25.4,120.6,100;   27.2,118.2,55;  30.4,116.1,0;32.1,114.1,0];
btk_wpac_2024_020 = [25.1,120.2,75;   26.5,118.3,35;  28.4,115.2,0;29.9,112.6,0]; # operationally from U.S. sources (except days 3-4 JMA)
btk2_wpac_2024_020 = [25.1,120.3,67.2;26.4,118.3,44.8;28.4,115.2,0;29.9,112.6,0]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2024_020];
myvect = [myvect;my_wpac_2024_020];
btkvect = [btkvect;btk_wpac_2024_020];
btk2vect = [btk2vect;btk2_wpac_2024_020];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Wpac 021 ... GAEMI/(CARINA) around 2024-07-24-09Z ... certification failed

rsmc_wpac_2024_021 = [25.9,120.3,72.8;27.8,117.4,50.4;30.0,114.4,0;31.1,113.2,0];
my_wpac_2024_021 = [25.9,120.1,80;    28.0,117.2,40;  30.0,114.7,0;31.9,113.0,0];
btk_wpac_2024_021 = [25.1,119.8,60;   27.5,117.8,35;  28.6,114.7,0;29.5,110.9,0]; # operationally from U.S. sources (except days 3-4 JMA)
btk2_wpac_2024_021 = [25.2,119.7,61.6;27.5,117.7,39.2;28.6,114.7,0;29.5,110.9,0]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2024_021];
myvect = [myvect;my_wpac_2024_021];
btkvect = [btkvect;btk_wpac_2024_021];
btk2vect = [btk2vect;btk2_wpac_2024_021];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Wpac 022 ... GAEMI/(CARINA) around 2024-07-24-21Z ... CERTIFIED

rsmc_wpac_2024_022 = [26.3,118.3,56.0;28.5,115.5,39.2;29.3,112.8,0];
my_wpac_2024_022 = [26.4,118.4,50;    29.3,115.6,20;  29.4,112.8,0];
btk_wpac_2024_022 = [25.6,118.6,45;   29.5,116.5,25;  29.6,113.6,0]; # operationally from U.S. sources (except day 3 JMA)
btk2_wpac_2024_022 = [25.7,118.9,50.4;27.9,115.9,25.0;29.6,113.6,0]; # JMA best track (except day 2 wind)
rsmcvect = [rsmcvect;rsmc_wpac_2024_022];
myvect = [myvect;my_wpac_2024_022];
btkvect = [btkvect;btk_wpac_2024_022];
btk2vect = [btk2vect;btk2_wpac_2024_022];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Wpac 023 ... GAEMI/(CARINA) around 2024-07-25-03Z ... CERTIFIED

rsmc_wpac_2024_023 = [27.2,118.0,50.4;29.2,115.4,0;31.4,113.3,0];
my_wpac_2024_023 = [27.1,117.8,40;    29.5,115.3,0;31.7,112.9,0];
btk_wpac_2024_023 = [26.5,118.3,35;   28.4,115.2,0;29.9,112.6,0]; # operationally from U.S. sources (except days 2-3 JMA)
btk2_wpac_2024_023 = [26.4,118.3,44.8;28.4,115.2,0;29.9,112.6,0]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2024_023];
myvect = [myvect;my_wpac_2024_023];
btkvect = [btkvect;btk_wpac_2024_023];
btk2vect = [btk2vect;btk2_wpac_2024_023];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Wpac 024 ... GAEMI/(CARINA) around 2024-07-25-09Z ... CERTIFIED

rsmc_wpac_2024_024 = [27.6,117.3,44.8;29.4,115.2,0;31.2,112.7,0];
my_wpac_2024_024 = [27.5,117.5,35;    29.7,115.5,0;30.8,112.2,0];
btk_wpac_2024_024 = [27.5,117.8,35;   28.6,114.7,0;29.5,110.9,0]; # operationally from U.S. sources (except days 2-3 JMA)
btk2_wpac_2024_024 = [27.5,117.7,39.2;28.6,114.7,0;29.5,110.9,0]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2024_024];
myvect = [myvect;my_wpac_2024_024];
btkvect = [btkvect;btk_wpac_2024_024];
btk2vect = [btk2vect;btk2_wpac_2024_024];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Wpac 025 ... 06W around 2024-08-07-09Z ... certification failed

rsmc_wpac_2024_025 = [28.7,144.7,39.2;33.1,145.9,44.8;38.1,146.3,50.4;41.5,148.0,50.4;45.2,151.3,39.2];
my_wpac_2024_025 = [28.5,144.3,40;    32.5,145.7,50;  37.0,145.9,55;  40.5,147.4,45;  44.0,150.0,20];
btk_wpac_2024_025 = [27.9,144.8,55;   32.1,146.0,60;  35.6,145.4,50;  37.6,143.9,50;  39.8,139.9,35]; # operationally from U.S. sources
btk2_wpac_2024_025 = [27.6,114.7,50.4;32.4,146.0,61.6;36.0,145.5,50.4;37.7,143.9,56.0;39.9,140.5,33.6]; # JMA best track (except day 5 wind)
rsmcvect = [rsmcvect;rsmc_wpac_2024_025];
myvect = [myvect;my_wpac_2024_025];
btkvect = [btkvect;btk_wpac_2024_025];
btk2vect = [btk2vect;btk2_wpac_2024_025];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 026 ... MARIA around 2024-08-08-21Z ... CERTIFIED

rsmc_wpac_2024_026 = [34.2,145.8,67.2;37.0,144.5,72.8;38.3,142.8,61.6;41.7,139.9,39.2;43.3,138.7,0];
my_wpac_2024_026 = [34.2,145.9,80;    36.8,144.5,65;  38.2,142.3,55;  40.6,139.8,35;  42.4,138.1,0];
btk_wpac_2024_026 = [33.9,145.9,50;   36.8,145.2,45;  38.4,142.6,55;  40.8,138.8,25;  42.2,139.0,0]; # operationally from U.S. sources (except day 5 JMA)
btk2_wpac_2024_026 = [34.2,146.0,61.6;36.9,145.0,56.0;38.3,142.6,56.0;41.1,139.2,25.0;42.2,139.0,0]; # JMA best track (except day 4 wind)
rsmcvect = [rsmcvect;rsmc_wpac_2024_026];
myvect = [myvect;my_wpac_2024_026];
btkvect = [btkvect;btk_wpac_2024_026];
btk2vect = [btk2vect;btk2_wpac_2024_026];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 027 ... MARIA around 2024-08-09-15Z ... CERTIFIED

rsmc_wpac_2024_027 = [36.2,144.9,72.8;37.6,142.9,61.6;39.8,138.5,44.8;40.9,137.0,39.2;41.6,136.3,0];
my_wpac_2024_027 = [36.1,144.9,50;    37.7,142.8,50;  39.6,139.0,30;  40.8,137.4,25;  41.4,135.8,0];
btk_wpac_2024_027 = [36.2,145.3,50;   37.8,143.3,55;  40.1,139.2,25;  43.1,139.7,20;  41.6,141.5,0]; # operationally from U.S. sources (except day 5 JMA)
btk2_wpac_2024_027 = [36.5,145.2,56.0;37.9,143.4,56.0;40.4,139.8,25.0;42.2,139.0,22.4;41.6,141.5,0]; # JMA best track (except days 3-4 wind)
rsmcvect = [rsmcvect;rsmc_wpac_2024_027];
myvect = [myvect;my_wpac_2024_027];
btkvect = [btkvect;btk_wpac_2024_027];
btk2vect = [btk2vect;btk2_wpac_2024_027];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 028 ... MARIA around 2024-08-10-21Z ... CERTIFIED

rsmc_wpac_2024_028 = [38.2,142.5,61.6;41.0,138.3,44.8;41.3,137.2,0];
my_wpac_2024_028 = [38.4,142.7,40;    41.1,139.0,20;  41.6,138.4,0];
btk_wpac_2024_028 = [38.4,142.6,55;   40.8,138.8,25;  42.2,139.0,0]; # operationally from U.S. sources (except day 3 JMA)
btk2_wpac_2024_028 = [38.3,142.6,56.0;41.1,139.4,25.0;42.2,139.0,0]; # JMA best track (except day 2 wind)
rsmcvect = [rsmcvect;rsmc_wpac_2024_028];
myvect = [myvect;my_wpac_2024_028];
btkvect = [btkvect;btk_wpac_2024_028];
btk2vect = [btk2vect;btk2_wpac_2024_028];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Wpac 029 ... AMPIL around 2024-08-13-09Z ... CERTIFIED

rsmc_wpac_2024_029 = [26.5,139.3,67.2;30.0,140.2,78.4;34.4,140.0,89.6;38.4,144.0,67.2;40.9,154.4,56.0];
my_wpac_2024_029 = [26.6,139.5,60;    30.0,140.1,75;  34.1,139.7,100; 37.6,143.6,75;  39.7,152.9,50];
btk_wpac_2024_029 = [26.8,140.7,60;   30.6,141.0,90;  34.1,141.1,110; 37.2,145.0,80;  40.8,155.4,60]; # operationally from U.S. sources
btk2_wpac_2024_029 = [26.8,140.9,67.2;30.6,141.1,78.4;34.1,141.1,95.2;37.3,145.6,78.4;40.5,155.3,61.6]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2024_029];
myvect = [myvect;my_wpac_2024_029];
btkvect = [btkvect;btk_wpac_2024_029];
btk2vect = [btk2vect;btk2_wpac_2024_029];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 030 ... AMPIL around 2024-08-14-21Z ... CERTIFIED

rsmc_wpac_2024_030 = [32.7,141.0,89.6;36.3,142.1,89.6;38.5,149.2,67.2;40.9,159.6,50.4;45.7,171.2,0];
my_wpac_2024_030 = [32.7,140.9,90;    36.3,142.0,100; 38.5,148.7,75;  40.8,159.4,55;  45.6,171.7,0];
btk_wpac_2024_030 = [32.5,140.8,100;  35.8,143.0,100; 38.6,149.8,65;  43.0,160.4,55;  50.7,170.4,0]; # operationally from U.S. sources (except day 5 JMA)
btk2_wpac_2024_030 = [32.6,140.8,95.2;35.9,142.9,95.2;38.3,150.1,67.2;43.1,160.7,56.0;50.7,170.4,0]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2024_030];
myvect = [myvect;my_wpac_2024_030];
btkvect = [btkvect;btk_wpac_2024_030];
btk2vect = [btk2vect;btk2_wpac_2024_030];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 031 ... SHANSHAN around 2024-08-22-09Z ... CERTIFIED

rsmc_wpac_2024_031 = [18.2,140.7,61.6;21.4,140.0,67.2;25.5,138.4,72.8;29.2,136.1,84.0;33.8,136.2,84.0];
my_wpac_2024_031 = [18.1,140.5,60;    21.2,139.6,70;  25.5,138.0,75;  29.1,135.7,90;  33.6,135.9,95];
btk_wpac_2024_031 = [17.8,141.2,60;   21.1,141.1,65;  25.9,137.8,70;  27.6,132.8,85;  28.5,130.4,110]; # operationally from U.S. sources
btk2_wpac_2024_031 = [17.8,141.4,67.2;21.7,141.0,72.8;25.7,137.6,72.8;27.5,132.8,72.8;28.5,130.4,95.2]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2024_031];
myvect = [myvect;my_wpac_2024_031];
btkvect = [btkvect;btk_wpac_2024_031];
btk2vect = [btk2vect;btk2_wpac_2024_031];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 032 ... YAGI/(ENTENG) around 2024-09-01-21Z ... CERTIFIED

rsmc_wpac_2024_032 = [18.2,122.2,44.8;19.4,120.1,50.4;18.9,117.6,56.0; 18.8,115.4,67.2; 20.2,112.8,78.4];
my_wpac_2024_032 = [18.1,121.9,45;    19.0,119.6,55;  18.8,117.6,80;   19.3,116.1,100;  20.9,113.8,110];
btk_wpac_2024_032 = [18.2,120.6,40;   18.9,118.5,60;  19.2,116.3,120;  19.2,113.0,135;  20.2,109.0,105]; # operationally from U.S. sources
btk2_wpac_2024_032 = [18.1,121.0,39.2;18.9,118.3,67.2;19.2,116.2,112.0;19.2,113.0,117.6;20.3,109.0,95.2]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2024_032];
myvect = [myvect;my_wpac_2024_032];
btkvect = [btkvect;btk_wpac_2024_032];
btk2vect = [btk2vect;btk2_wpac_2024_032];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 033 ... YAGI/(ENTENG) around 2024-09-02-03Z ... CERTIFIED

rsmc_wpac_2024_033 = [18.9,121.8,50.4;19.5,119.6,56.0;18.9,116.9,67.2; 19.2,114.4,78.4; 20.4,111.8,84.0];
my_wpac_2024_033 = [18.7,121.4,40;    19.4,119.0,65;  19.1,116.1,90;   19.4,113.7,110;  20.5,111.3,90];
btk_wpac_2024_033 = [18.4,119.6,40;   19.1,117.7,70;  19.0,115.8,140;  19.2,112.2,130;  20.3,108.2,115]; # operationally from U.S. sources
btk2_wpac_2024_033 = [18.2,119.6,44.8;19.0,117.6,78.4;19.0,115.8,117.6;19.2,112.2,117.6;20.5,108.1,95.2]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2024_033];
myvect = [myvect;my_wpac_2024_033];
btkvect = [btkvect;btk_wpac_2024_033];
btk2vect = [btk2vect;btk2_wpac_2024_033];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 034 ... YAGI/(ENTENG) around 2024-09-02-21Z ... CERTIFIED

rsmc_wpac_2024_034 = [19.0,118.7,56.0;19.0,116.5,72.8; 18.9,113.7,89.6; 20.1,110.6,95.2;21.5,107.3,67.2];
my_wpac_2024_034 = [18.9,118.8,45;    19.0,116.5,75;   19.1,114.0,105;  20.4,111.4,85;  22.1,108.1,60];
btk_wpac_2024_034 = [18.9,118.5,60;   19.2,116.3,120;  19.2,113.0,135;  20.2,109.0,105; 21.2,105.1,60]; # operationally from U.S. sources
btk2_wpac_2024_034 = [18.9,118.3,67.2;19.2,116.2,112.0;19.2,113.0,117.6;20.3,109.0,95.2;20.8,105.7,44.8]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2024_034];
myvect = [myvect;my_wpac_2024_034];
btkvect = [btkvect;btk_wpac_2024_034];
btk2vect = [btk2vect;btk2_wpac_2024_034];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 035 ... YAGI/(ENTENG) around 2024-09-03-09Z ... CERTIFIED

rsmc_wpac_2024_035 = [19.0,117.5,67.2;18.8,115.3,89.6; 19.5,112.3,106.4;21.0,109.0,72.8; 22.1,105.6,39.2];
my_wpac_2024_035 = [18.9,117.3,55;    18.8,115.0,85;   19.7,111.8,85;   21.0,108.5,65;   22.2,105.1,25];
btk_wpac_2024_035 = [19.1,117.4,80;   19.2,115.1,125;  19.7,111.3,125;  21.0,106.9,110;  21.5,104.2,35]; # operationally from U.S. sources
btk2_wpac_2024_035 = [19.2,117.4,89.6;19.3,115.1,117.6;19.8,111.3,117.6;21.0,107.0,100.8;21.3,104.9,39.2]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2024_035];
myvect = [myvect;my_wpac_2024_035];
btkvect = [btkvect;btk_wpac_2024_035];
btk2vect = [btk2vect;btk2_wpac_2024_035];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 036 ... YAGI/(ENTENG) around 2024-09-03-21Z ... CERTIFIED

rsmc_wpac_2024_036 = [19.1,116.2,78.4; 19.4,113.2,95.2; 20.3,109.2,106.4;21.2,105.5,61.6;21.3,100.3,0];
my_wpac_2024_036 = [19.1,116.1,80;     19.4,113.1,115;  20.3,109.3,95;   21.6,106.1,55;  22.5,101.8,0];
btk_wpac_2024_036 = [19.2,116.3,120;   19.2,113.0,135;  20.2,109.0,105;  21.2,105.1,60;  22.0,103.3,0]; # operationally from U.S. sources
btk2_wpac_2024_036 = [19.2,116.2,112.0;19.2,113.0,117.6;20.3,109.0,95.2; 20.8,105.7,44.8;22.1,103.5,0]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2024_036];
myvect = [myvect;my_wpac_2024_036];
btkvect = [btkvect;btk_wpac_2024_036];
btk2vect = [btk2vect;btk2_wpac_2024_036];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 037 ... YAGI/(ENTENG) around 2024-09-04-15Z ... CERTIFIED

rsmc_wpac_2024_037 = [19.4,114.3,112.0;20.4,110.5,112.0;21.5,106.3,67.2;21.3,101.4,0];
my_wpac_2024_037 = [19.4,114.3,125;    20.3,110.7,115;  21.5,106.9,60;  22.0,103.0,0];
btk_wpac_2024_037 = [19.3,114.1,125;   20.0,110.2,120;  21.0,105.9,75;  23.0,103.1,0]; # operationally from U.S. sources
btk2_wpac_2024_037 = [19.3,114.2,117.6;20.0,110.2,106.4;20.9,106.0,61.6;21.5,104.2,0]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2024_037];
myvect = [myvect;my_wpac_2024_037];
btkvect = [btkvect;btk_wpac_2024_037];
btk2vect = [btk2vect;btk2_wpac_2024_037];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Wpac 038 ... YAGI/(ENTENG) around 2024-09-04-21Z ... CERTIFIED

rsmc_wpac_2024_038 = [19.5,113.6,117.6;20.7,109.9,95.2;21.9,105.7,44.8;22.3,101.9,0];
my_wpac_2024_038 = [19.4,113.5,135;    20.6,109.9,105; 21.8,105.9,55;  22.4,103.1,0];
btk_wpac_2024_038 = [19.2,113.0,135;   20.2,109.0,105; 21.2,105.1,60;  22.0,103.3,0]; # operationally from U.S. sources
btk2_wpac_2024_038 = [19.2,113.0,117.6;20.3,109.0,95.2;20.8,105.7,44.8;22.1,103.5,0]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2024_038];
myvect = [myvect;my_wpac_2024_038];
btkvect = [btkvect;btk_wpac_2024_038];
btk2vect = [btk2vect;btk2_wpac_2024_038];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Wpac 039 ... YAGI/(ENTENG) around 2024-09-05-15Z ... CERTIFIED

rsmc_wpac_2024_039 = [20.3,110.7,123.2;21.6,106.8,67.2;22.0,103.0,0];
my_wpac_2024_039 = [20.3,110.7,100;    21.5,106.7,50;  22.0,102.7,0];
btk_wpac_2024_039 = [20.0,110.2,120;   21.0,105.9,75;  23.0,103.1,0]; # operationally from U.S. sources
btk2_wpac_2024_039 = [20.0,110.2,106.4;20.9,106.0,61.6;21.5,104.2,0]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2024_039];
myvect = [myvect;my_wpac_2024_039];
btkvect = [btkvect;btk_wpac_2024_039];
btk2vect = [btk2vect;btk2_wpac_2024_039];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Wpac 040 ... YAGI/(ENTENG) around 2024-09-05-21Z ... CERTIFIED

rsmc_wpac_2024_040 = [20.4,109.6,100.8;21.8,105.8,44.8;22.2,102.9,0];
my_wpac_2024_040 = [20.2,109.4,95;     21.5,105.8,50;  22.5,102.4,0];
btk_wpac_2024_040 = [20.2,109.0,105;   21.2,105.1,60;  22.0,103.3,0]; # operationally from U.S. sources
btk2_wpac_2024_040 = [20.3,109.0,95.2; 20.8,105.7,44.8;22.1,103.5,0]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2024_040];
myvect = [myvect;my_wpac_2024_040];
btkvect = [btkvect;btk_wpac_2024_040];
btk2vect = [btk2vect;btk2_wpac_2024_040];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Wpac 041 ... YAGI/(ENTENG) around 2024-09-06-15Z ... CERTIFIED

rsmc_wpac_2024_041 = [21.3,106.6,67.2;21.8,104.5,0];
my_wpac_2024_041 = [21.3,106.5,75;    21.8,103.6,0];
btk_wpac_2024_041 = [21.0,105.9,75;   23.0,103.1,0]; # operationally from U.S. sources
btk2_wpac_2024_041 = [20.9,106.0,61.6;21.5,104.2,0]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2024_041];
myvect = [myvect;my_wpac_2024_041];
btkvect = [btkvect;btk_wpac_2024_041];
btk2vect = [btk2vect;btk2_wpac_2024_041];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Wpac 042 ... 14W around 2024-09-10-03Z ... CERTIFIED

rsmc_wpac_2024_042 = [14.2,143.1,39.2;18.0,140.7,50.4;21.7,137.0,56.0;24.5,131.5,56.0;27.1,125.2,56.0];
my_wpac_2024_042 = [14.0,143.4,35;    17.6,141.1,60;  21.0,137.2,65;  23.9,131.7,75;  26.9,125.3,85];
btk_wpac_2024_042 = [13.7,142.3,35;   17.8,140.0,50;  22.2,136.9,40;  26.3,131.4,50;  29.7,127.1,75]; # operationally from U.S. sources
btk2_wpac_2024_042 = [13.9,143.2,44.8;18.0,140.0,50.4;22.1,136.9,44.8;26.4,131.6,56.0;29.6,127.2,84.0]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2024_042];
myvect = [myvect;my_wpac_2024_042];
btkvect = [btkvect;btk_wpac_2024_042];
btk2vect = [btk2vect;btk2_wpac_2024_042];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 043 ... BEBINCA around 2024-09-10-15Z ... CERTIFIED

rsmc_wpac_2024_043 = [16.0,141.7,44.8;20.5,139.3,50.4;24.3,133.8,56.0;27.8,127.4,61.6;30.4,123.2,61.6];
my_wpac_2024_043 = [15.8,141.8,40;    19.9,139.5,55;  23.5,134.4,65;  26.3,129.6,90;  29.6,123.9,105];
btk_wpac_2024_043 = [15.0,140.7,35;   20.0,139.0,50;  24.5,133.8,45;  28.2,129.2,65;  30.4,124.7,70]; # operationally from U.S. sources
btk2_wpac_2024_043 = [15.1,141.6,44.8;20.4,138.6,50.4;24.7,133.7,50.4;28.1,129.2,67.2;30.4,124.8,84.0]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2024_043];
myvect = [myvect;my_wpac_2024_043];
btkvect = [btkvect;btk_wpac_2024_043];
btk2vect = [btk2vect;btk2_wpac_2024_043];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 044 ... BEBINCA around 2024-09-10-21Z ... CERTIFIED

rsmc_wpac_2024_044 = [16.6,141.2,50.4;21.4,138.2,56.0;25.4,132.7,61.6;28.4,127.0,67.2;31.1,123.0,67.2];
my_wpac_2024_044 = [16.5,141.3,50;    21.4,138.5,60;  25.2,132.9,75;  27.6,127.5,100; 29.5,123.4,110];
btk_wpac_2024_044 = [16.0,140.3,45;   21.0,137.5,45;  25.2,132.7,45;  29.0,128.1,70;  30.5,123.3,70]; # operationally from U.S. sources
btk2_wpac_2024_044 = [16.4,140.8,44.8;21.1,137.6,44.8;25.3,132.6,56.0;28.9,128.0,72.8;30.6,123.3,78.4]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2024_044];
myvect = [myvect;my_wpac_2024_044];
btkvect = [btkvect;btk_wpac_2024_044];
btk2vect = [btk2vect;btk2_wpac_2024_044];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 045 ... BEBINCA around 2024-09-11-09Z ... CERTIFIED

rsmc_wpac_2024_045 = [18.2,139.9,61.6;23.4,136.2,67.2;26.4,130.7,78.4;29.2,125.7,78.4;30.8,121.4,61.6];
my_wpac_2024_045 = [18.0,139.8,40;    23.2,136.5,65;  26.0,131.6,95;  28.5,126.9,115; 30.2,121.8,85];
btk_wpac_2024_045 = [19.0,139.5,60;   23.7,135.4,40;  27.4,130.3,55;  30.1,126.1,75;  31.5,120.4,60]; # operationally from U.S. sources
btk2_wpac_2024_045 = [19.2,139.6,50.4;23.4,135.6,50.4;27.4,130.2,61.6;30.1,126.1,84.0;31.4,120.5,67.2]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2024_045];
myvect = [myvect;my_wpac_2024_045];
btkvect = [btkvect;btk_wpac_2024_045];
btk2vect = [btk2vect;btk2_wpac_2024_045];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 046 ... BEBINCA around 2024-09-12-03Z ... CERTIFIED

rsmc_wpac_2024_046 = [22.2,136.9,67.2;25.9,131.7,72.8;28.5,126.2,78.4;30.1,120.7,61.6;31.6,116.1,0];
my_wpac_2024_046 = [22.3,136.9,65;    26.2,131.7,75;  28.7,126.5,100; 30.7,121.2,100; 31.9,116.6,0];
btk_wpac_2024_046 = [22.2,136.9,40;   26.3,131.4,50;  29.7,127.1,75;  30.9,121.8,65;  32.6,117.0,0]; # operationally from U.S. sources
btk2_wpac_2024_046 = [22.1,136.9,44.8;26.4,131.6,56.0;29.6,127.2,84.0;31.0,121.8,72.8;32.4,117.2,0]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2024_046];
myvect = [myvect;my_wpac_2024_046];
btkvect = [btkvect;btk_wpac_2024_046];
btk2vect = [btk2vect;btk2_wpac_2024_046];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 047 ... BEBINCA around 2024-09-12-15Z ... CERTIFIED

rsmc_wpac_2024_047 = [24.3,134.5,67.2;27.6,128.7,78.4;29.2,123.1,84.0;30.6,117.9,0];
my_wpac_2024_047 = [24.7,134.5,55;    28.4,128.7,70;  30.2,123.0,90;  32.0,118.5,0];
btk_wpac_2024_047 = [24.5,133.8,45;   28.2,129.2,65;  30.4,124.7,70;  31.7,119.4,0]; # operationally from U.S. sources
btk2_wpac_2024_047 = [24.7,133.7,50.4;28.1,129.2,67.2;30.4,124.8,84.0;31.7,119.3,0]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2024_047];
myvect = [myvect;my_wpac_2024_047];
btkvect = [btkvect;btk_wpac_2024_047];
btk2vect = [btk2vect;btk2_wpac_2024_047];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Wpac 048 ... BEBINCA around 2024-09-14-15Z ... CERTIFIED

rsmc_wpac_2024_048 = [30.0,123.9,72.8;31.4,118.1,0];
my_wpac_2024_048 = [30.0,124.1,65;    31.4,118.6,0];
btk_wpac_2024_048 = [30.4,124.7,70;   31.7,119.4,0]; # operationally from U.S. sources
btk2_wpac_2024_048 = [30.4,124.8,84.0;31.7,119.3,0]; # JMA best track
rsmcvect = [rsmcvect;rsmc_wpac_2024_048];
myvect = [myvect;my_wpac_2024_048];
btkvect = [btkvect;btk_wpac_2024_048];
btk2vect = [btk2vect;btk2_wpac_2024_048];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Wpac 049 ... PULASAN/97W around 2024-09-16-03Z ... CERTIFIED

rsmc_wpac_2024_049 = [19.9,139.1,44.8;24.9,130.4,50.4;27.7,122.9,44.8;29.4,117.8,0];
my_wpac_2024_049 = [20.1,139.0,35;    25.2,130.0,45;  27.6,123.6,55;  30.0,117.6,0];
btk_wpac_2024_049 = [18.5,138.7,45;   23.1,131.7,55;  28.2,125.0,40;  31.9,120.3,0]; # operationally from U.S. sources
btk2_wpac_2024_049 = btk_wpac_2024_049; #placeholder
rsmcvect = [rsmcvect;rsmc_wpac_2024_049];
myvect = [myvect;my_wpac_2024_049];
btkvect = [btkvect;btk_wpac_2024_049];
btk2vect = [btk2vect;btk2_wpac_2024_049];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Wpac 050 ... KRATHON/(JULIAN) around 2024-09-28-03Z ... CERTIFIED

rsmc_wpac_2024_050 = [19.0,124.5,56.0;19.9,123.1,78.4;21.1,122.3,89.6;23.1,122.2,78.4;26.5,123.5,67.2];
my_wpac_2024_050 = [18.9,124.5,50;    20.0,123.4,80;  21.3,122.7,95;  23.6,123.1,110; 27.0,124.8,85];
btk_wpac_2024_050 = [18.7,124.3,65;   20.3,121.9,115; 20.6,119.6,130; 21.5,119.3,100; 22.4,120.0,75]; # operationally from U.S. sources
btk2_wpac_2024_050 = btk_wpac_2024_050; #placeholder
rsmcvect = [rsmcvect;rsmc_wpac_2024_050];
myvect = [myvect;my_wpac_2024_050];
btkvect = [btkvect;btk_wpac_2024_050];
btk2vect = [btk2vect;btk2_wpac_2024_050];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 051 ... KRATHON/(JULIAN) around 2024-09-30-03Z ... CERTIFIED

rsmc_wpac_2024_051 = [20.7,119.9,112.0;21.7,119.8,112.0;24.2,121.6,61.6];
my_wpac_2024_051 = [20.7,120.1,120;    21.8,120.1,110;  23.9,121.4,75];
btk_wpac_2024_051 = [20.6,119.6,130;   21.5,119.3,100;  22.4,120.0,75]; # operationally from U.S. sources
btk2_wpac_2024_051 = btk_wpac_2024_051; #placeholder
rsmcvect = [rsmcvect;rsmc_wpac_2024_051];
myvect = [myvect;my_wpac_2024_051];
btkvect = [btkvect;btk_wpac_2024_051];
btk2vect = [btk2vect;btk2_wpac_2024_051];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Wpac 052 ... 22W/(KRISTINE) around 2024-10-20-21Z ... certification failed

rsmc_wpac_2024_052 = [13.7,129.7,39.2;15.6,127.0,44.8;17.3,124.5,50.4;17.6,122.4,56.0;19.3,120.9,56.0];
my_wpac_2024_052 = [13.6,129.7,35;    15.4,127.2,40;  17.3,124.9,50;  17.3,122.6,70;  18.2,120.6,50];
btk_wpac_2024_052 = [13.3,128.3,35;   15.1,125.0,45;  17.2,122.2,45;  16.8,119.3,45;  17.2,115.0,60]; # operationally from U.S. sources
btk2_wpac_2024_052 = btk_wpac_2024_052; #placeholder
rsmcvect = [rsmcvect;rsmc_wpac_2024_052];
myvect = [myvect;my_wpac_2024_052];
btkvect = [btkvect;btk_wpac_2024_052];
btk2vect = [btk2vect;btk2_wpac_2024_052];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 053 ... 22W/(KRISTINE) around 2024-10-21-03Z ... certification failed

rsmc_wpac_2024_053 = [13.9,129.2,39.2;16.0,126.6,44.8;17.7,123.7,50.4;17.5,120.6,50.4;18.8,118.6,56.0];
my_wpac_2024_053 = [13.9,129.2,35;    16.2,126.2,45;  17.6,122.9,60;  17.7,120.6,50;  18.6,118.7,45];
btk_wpac_2024_053 = [13.6,127.4,35;   15.6,124.1,45;  17.0,121.2,45;  16.9,118.8,50;  17.0,113.5,60]; # operationally from U.S. sources
btk2_wpac_2024_053 = btk_wpac_2024_053; #placeholder
rsmcvect = [rsmcvect;rsmc_wpac_2024_053];
myvect = [myvect;my_wpac_2024_053];
btkvect = [btkvect;btk_wpac_2024_053];
btk2vect = [btk2vect;btk2_wpac_2024_053];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 054 ... 22W/(KRISTINE) around 2024-10-21-09Z ... certification failed

rsmc_wpac_2024_054 = [14.6,127.8,44.8;16.8,124.8,56.0;17.7,121.5,56.0;18.0,118.3,56.0;18.7,114.1,61.6];
my_wpac_2024_054 = [14.5,127.5,40;    16.4,124.0,55;  17.3,120.5,50;  17.4,116.6,55;  18.1,113.3,55];
btk_wpac_2024_054 = [14.0,126.6,35;   16.2,123.3,45;  16.9,120.4,40;  17.4,117.2,55;  17.1,112.2,55]; # operationally from U.S. sources
btk2_wpac_2024_054 = btk_wpac_2024_054; #placeholder
rsmcvect = [rsmcvect;rsmc_wpac_2024_054];
myvect = [myvect;my_wpac_2024_054];
btkvect = [btkvect;btk_wpac_2024_054];
btk2vect = [btk2vect;btk2_wpac_2024_054];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Nio 08 ... BOB 07 / 98B around 2024-10-22-21Z ... certification failed

rsmc_nio_2024_08 = [18.0,88.5,47.7;20.4,87.3,58.3;21.5,85.4,31.8];
my_nio_2024_08 = [17.8,88.4,45;    20.1,87.1,60;  21.3,85.5,30];
btk_nio_2024_08 = [18.1,88.7,55;   20.2,87.2,65;  21.2,86.2,30]; # operationally from U.S. sources
btk2_nio_2024_08 = [17.9,88.5,53.0;20.5,87.1,58.3;21.4,86.2,26.5]; # IMD prelim report
rsmcvect = [rsmcvect;rsmc_nio_2024_08];
myvect = [myvect;my_nio_2024_08];
btkvect = [btkvect;btk_nio_2024_08];
btk2vect = [btk2vect;btk2_nio_2024_08];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Wpac 055 ... TRAMI/(KRISTINE) around 2024-10-23-03Z ... certification failed

rsmc_wpac_2024_055 = [16.6,120.0,50.4;17.4,117.7,56.0;17.6,113.8,67.2;17.2,110.1,61.6;15.8,109.3,56.0];
my_wpac_2024_055 = [16.5,120.0,40;    17.1,117.4,50;  17.3,114.2,55;  16.7,110.9,55;  15.8,109.9,35];
btk_wpac_2024_055 = [17.0,121.2,45;   16.9,118.8,50;  17.0,113.5,60;  16.5,108.4,45;  15.5,107.9,25]; # operationally from U.S. sources
btk2_wpac_2024_055 = btk_wpac_2024_055; #placeholder
rsmcvect = [rsmcvect;rsmc_wpac_2024_055];
myvect = [myvect;my_wpac_2024_055];
btkvect = [btkvect;btk_wpac_2024_055];
btk2vect = [btk2vect;btk2_wpac_2024_055];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Nio 09 ... DANA around 2024-10-23-21Z ... certification failed

rsmc_nio_2024_09 = [20.5,87.3,58.3;21.3,85.8,26.5];
my_nio_2024_09 = [20.4,87.6,65;    21.4,86.3,35];
btk_nio_2024_09 = [20.2,87.2,65;   21.2,86.2,30]; # operationally from U.S. sources
btk2_nio_2024_09 = [20.5,87.1,58.3;21.4,86.2,26.5]; # IMD prelim report
rsmcvect = [rsmcvect;rsmc_nio_2024_09];
myvect = [myvect;my_nio_2024_09];
btkvect = [btkvect;btk_nio_2024_09];
btk2vect = [btk2vect;btk2_nio_2024_09];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Wpac 056 ... TRAMI/(KRISTINE) around 2024-10-24-21Z ... certification failed

rsmc_wpac_2024_056 = [17.7,115.1,67.2;17.3,110.7,61.6;16.4,109.4,56.0;16.3,109.9,50.4];
my_wpac_2024_056 = [17.5,115.0,60;    17.1,110.3,60;  16.1,108.8,45;  16.1,108.7,35];
btk_wpac_2024_056 = [17.2,115.0,60;   16.9,109.4,50;  15.3,107.8,30;  16.4,108.7,25]; # operationally from U.S. sources
btk2_wpac_2024_056 = btk_wpac_2024_056; #placeholder
rsmcvect = [rsmcvect;rsmc_wpac_2024_056];
myvect = [myvect;my_wpac_2024_056];
btkvect = [btkvect;btk_wpac_2024_056];
btk2vect = [btk2vect;btk2_wpac_2024_056];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Nio 10 ... DANA around 2024-10-24-21Z ... certification failed
# (nothing will be verifiable)

# Wpac 057 ... TRAMI/(KRISTINE) around 2024-10-25-03Z ... certification failed

rsmc_wpac_2024_057 = [17.4,113.7,67.2;17.1,109.8,56.0;16.2,109.7,50.4;16.0,110.5,50.4];
my_wpac_2024_057 = [17.3,113.9,55;    17.0,110.2,50;  16.4,109.8,35;  16.4,111.0,25];
btk_wpac_2024_057 = [17.0,113.5,60;   16.5,108.4,45;  15.5,107.9,25;  16.5,109.0,20]; # operationally from U.S. sources
btk2_wpac_2024_057 = btk_wpac_2024_057; #placeholder
rsmcvect = [rsmcvect;rsmc_wpac_2024_057];
myvect = [myvect;my_wpac_2024_057];
btkvect = [btkvect;btk_wpac_2024_057];
btk2vect = [btk2vect;btk2_wpac_2024_057];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Wpac 058 ... TRAMI/(KRISTINE) around 2024-10-26-21Z ... certification failed

rsmc_wpac_2024_058 = [16.0,108.8,39.2;15.9,109.8,0];
my_wpac_2024_058 = [16.2,108.7,35;    16.4,109.4,0];
btk_wpac_2024_058 = [15.3,107.8,30;   15.4,108.7,0]; # operationally from U.S. sources
btk2_wpac_2024_058 = btk_wpac_2024_058; #placeholder
rsmcvect = [rsmcvect;rsmc_wpac_2024_058];
myvect = [myvect;my_wpac_2024_058];
btkvect = [btkvect;btk_wpac_2024_058];
btk2vect = [btk2vect;btk2_wpac_2024_058];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Wpac 059 ... KONG-REY/(LEON) around 2024-10-26-21Z ... certification failed

rsmc_wpac_2024_059 = [17.0,131.1,50.4;17.5,128.6,61.6;19.3,126.7,84.0;21.3,125.1,95.2;25.0,123.2,95.2];
my_wpac_2024_059 = [16.9,131.1,45;    17.8,128.6,70;  19.5,126.9,85;  22.0,125.3,85;  25.5,124.2,85];
btk_wpac_2024_059 = [16.7,130.5,50;   17.0,127.9,70;  18.8,125.5,125; 21.0,122.8,115; 25.2,120.1,60]; # operationally from U.S. sources
btk2_wpac_2024_059 = btk_wpac_2024_059; #placeholder
rsmcvect = [rsmcvect;rsmc_wpac_2024_059];
myvect = [myvect;my_wpac_2024_059];
btkvect = [btkvect;btk_wpac_2024_059];
btk2vect = [btk2vect;btk2_wpac_2024_059];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 060 ... KONG-REY/(LEON) around 2024-10-28-03Z ... certification failed

rsmc_wpac_2024_060 = [17.8,127.3,67.2;19.4,125.0,89.6;21.5,122.6,106.4;25.0,119.8,56.0;28.8,122.9,0];
my_wpac_2024_060 = [17.9,127.0,70;    19.5,124.6,100; 21.4,122.1,100;  24.9,119.6,70;  28.7,122.3,0];
btk_wpac_2024_060 = [17.4,127.2,80;   19.1,124.9,130; 22.0,122.2,115;  26.7,120.6,55;  32.6,130.3,0]; # operationally from U.S. sources
btk2_wpac_2024_060 = btk_wpac_2024_060; #placeholder
rsmcvect = [rsmcvect;rsmc_wpac_2024_060];
myvect = [myvect;my_wpac_2024_060];
btkvect = [btkvect;btk_wpac_2024_060];
btk2vect = [btk2vect;btk2_wpac_2024_060];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 061 ... KONG-REY/(LEON) around 2024-10-28-09Z ... certification failed

rsmc_wpac_2024_061 = [18.4,126.4,78.4;19.7,124.4,100.8;22.6,121.9,106.4;26.1,119.9,50.4;29.9,124.1,0];
my_wpac_2024_061 = [18.2,126.3,80;    19.8,124.2,110;  22.8,121.5,105;  26.4,120.3,60;  30.2,125.7,0];
btk_wpac_2024_061 = [17.8,126.5,95;   19.8,124.2,125;  23.1,121.3,100;  28.3,121.5,50;  34.1,135.0,0]; # operationally from U.S. sources
btk2_wpac_2024_061 = btk_wpac_2024_061; #placeholder
rsmcvect = [rsmcvect;rsmc_wpac_2024_061];
myvect = [myvect;my_wpac_2024_061];
btkvect = [btkvect;btk_wpac_2024_061];
btk2vect = [btk2vect;btk2_wpac_2024_061];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 062 ... KONG-REY/(LEON) around 2024-10-28-21Z ... certification failed

rsmc_wpac_2024_062 = [18.9,125.1,89.6;21.2,122.9,106.4;24.4,119.9,67.2;28.5,121.2,44.8];
my_wpac_2024_062 = [19.0,125.1,95;    21.6,122.9,110;  25.0,120.2,75;  30.2,122.3,45];
btk_wpac_2024_062 = [18.8,125.5,125;  21.0,122.8,115;  25.2,120.1,60;  31.1,126.2,50]; # operationally from U.S. sources
btk2_wpac_2024_062 = btk_wpac_2024_062; #placeholder
rsmcvect = [rsmcvect;rsmc_wpac_2024_062];
myvect = [myvect;my_wpac_2024_062];
btkvect = [btkvect;btk_wpac_2024_062];
btk2vect = [btk2vect;btk2_wpac_2024_062];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Wpac 063 ... KONG-REY/(LEON) around 2024-10-30-03Z ... certification failed

rsmc_wpac_2024_063 = [22.1,122.2,117.6;26.2,120.2,56.0;30.2,124.7,44.8];
my_wpac_2024_063 = [22.0,122.2,125;    26.7,120.5,60;  30.3,125.2,50];
btk_wpac_2024_063 = [22.0,122.2,115;   26.7,120.6,55;  32.6,130.3,40]; # operationally from U.S. sources
btk2_wpac_2024_063 = btk_wpac_2024_063; #placeholder
rsmcvect = [rsmcvect;rsmc_wpac_2024_063];
myvect = [myvect;my_wpac_2024_063];
btkvect = [btkvect;btk_wpac_2024_063];
btk2vect = [btk2vect;btk2_wpac_2024_063];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Wpac 064 ... YINXING/(MARCE) around 2024-11-04-03Z ... CERTIFIED

rsmc_wpac_2024_064 = [15.9,128.5,61.6;18.5,126.2,72.8;18.9,124.9,78.4;18.9,122.2,78.4;18.8,118.5,78.4];
my_wpac_2024_064 = [15.9,128.3,75;    18.3,125.9,95;  18.9,124.6,100; 18.7,121.2,100; 18.8,117.4,85];
btk_wpac_2024_064 = [16.2,127.4,75;   18.0,124.7,95;  18.6,123.1,120; 18.2,119.3,90;  18.8,115.0,105]; # operationally from U.S. sources
btk2_wpac_2024_064 = btk_wpac_2024_064; #placeholder
rsmcvect = [rsmcvect;rsmc_wpac_2024_064];
myvect = [myvect;my_wpac_2024_064];
btkvect = [btkvect;btk_wpac_2024_064];
btk2vect = [btk2vect;btk2_wpac_2024_064];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 065 ... YINXING/(MARCE) around 2024-11-04-09Z ... CERTIFIED

rsmc_wpac_2024_065 = [16.8,127.3,67.2;18.7,125.5,78.4;18.9,124.2,78.4;18.9,121.0,78.4;18.9,117.6,78.4];
my_wpac_2024_065 = [16.8,127.0,80;    18.6,125.1,90;  18.9,123.7,85;  19.1,120.2,95;  19.0,116.4,80];
btk_wpac_2024_065 = [16.9,126.5,80;   18.1,124.4,100; 18.5,122.3,130; 18.4,118.1,90;  19.0,114.1,110]; # operationally from U.S. sources
btk2_wpac_2024_065 = btk_wpac_2024_065; #placeholder
rsmcvect = [rsmcvect;rsmc_wpac_2024_065];
myvect = [myvect;my_wpac_2024_065];
btkvect = [btkvect;btk_wpac_2024_065];
btk2vect = [btk2vect;btk2_wpac_2024_065];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 066 ... YINXING/(MARCE) around 2024-11-05-03Z ... CERTIFIED

rsmc_wpac_2024_066 = [18.3,124.9,84.0;18.9,123.5,89.6;19.1,120.7,89.6;19.5,117.9,89.6;19.2,116.2,78.4];
my_wpac_2024_066 = [18.3,124.8,90;    18.9,123.2,90;  19.2,120.3,90;  19.6,117.4,90;  19.7,116.0,60];
btk_wpac_2024_066 = [18.0,124.7,95;   18.6,123.1,120; 18.2,119.3,90;  18.8,115.0,105; 19.0,113.2,100]; # operationally from U.S. sources
btk2_wpac_2024_066 = btk_wpac_2024_066; #placeholder
rsmcvect = [rsmcvect;rsmc_wpac_2024_066];
myvect = [myvect;my_wpac_2024_066];
btkvect = [btkvect;btk_wpac_2024_066];
btk2vect = [btk2vect;btk2_wpac_2024_066];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 067 ... YINXING/(MARCE) around 2024-11-05-15Z ... CERTIFIED

rsmc_wpac_2024_067 = [18.4,124.2,89.6;18.7,122.3,84.0;18.6,118.8,78.4;18.6,116.4,72.8;17.5,114.8,61.6];
my_wpac_2024_067 = [18.4,124.0,90;    18.6,122.0,90;  18.6,118.3,75;  18.7,116.4,55;  17.8,114.3,40];
btk_wpac_2024_067 = [18.1,124.0,110;  18.6,121.5,115; 18.4,116.9,90;  19.1,113.6,110; 18.7,112.8,75]; # operationally from U.S. sources
btk2_wpac_2024_067 = btk_wpac_2024_067; #placeholder
rsmcvect = [rsmcvect;rsmc_wpac_2024_067];
myvect = [myvect;my_wpac_2024_067];
btkvect = [btkvect;btk_wpac_2024_067];
btk2vect = [btk2vect;btk2_wpac_2024_067];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 068 ... YINXING/(MARCE) around 2024-11-07-03Z ... CERTIFIED

rsmc_wpac_2024_068 = [18.3,119.3,84.0;18.6,115.2,72.8;18.9,113.0,67.2;17.7,111.0,39.2;16.0,109.1,0];
my_wpac_2024_068 = [18.4,119.3,95;    18.7,115.2,100; 18.9,112.9,90;  18.1,111.2,45;  16.3,110.0,0];
btk_wpac_2024_068 = [18.2,119.3,90;   18.8,115.0,105; 19.0,113.2,100; 17.0,111.3,40;  14.7,109.8,0]; # operationally from U.S. sources
btk2_wpac_2024_068 = btk_wpac_2024_068; #placeholder
rsmcvect = [rsmcvect;rsmc_wpac_2024_068];
myvect = [myvect;my_wpac_2024_068];
btkvect = [btkvect;btk_wpac_2024_068];
btk2vect = [btk2vect;btk2_wpac_2024_068];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 069 ... YINXING/(MARCE) around 2024-11-07-09Z ... CERTIFIED

rsmc_wpac_2024_069 = [18.4,118.2,78.4;18.8,114.4,78.4;18.9,112.7,72.8;17.5,110.1,44.8;14.4,108.3,0];
my_wpac_2024_069 = [18.3,118.3,105;   18.8,114.6,105; 19.2,112.9,85;  18.2,111.0,40;  14.9,110.0,0];
btk_wpac_2024_069 = [18.4,118.1,90;   19.0,114.1,110; 18.9,113.0,90;  16.3,110.8,40;  14.1,109.4,0]; # operationally from U.S. sources
btk2_wpac_2024_069 = btk_wpac_2024_069; #placeholder
rsmcvect = [rsmcvect;rsmc_wpac_2024_069];
myvect = [myvect;my_wpac_2024_069];
btkvect = [btkvect;btk_wpac_2024_069];
btk2vect = [btk2vect;btk2_wpac_2024_069];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 070 ... TORAJI/(NIKA) around 2024-11-09-21Z ... CERTIFIED

rsmc_wpac_2024_070 = [15.9,123.5,72.8;17.8,119.4,50.4;18.9,116.9,44.8;19.9,114.0,44.8;19.9,111.9,0];
my_wpac_2024_070 = [15.9,123.4,95;    17.8,119.1,60;  18.9,116.4,55;  20.1,113.6,40;  20.4,111.5,0];
btk_wpac_2024_070 = [15.9,123.3,80;   18.3,119.1,45;  20.0,117.1,45;  21.0,114.4,25;  21.0,113.0,0]; # operationally from U.S. sources
btk2_wpac_2024_070 = btk_wpac_2024_070; #placeholder
rsmcvect = [rsmcvect;rsmc_wpac_2024_070];
myvect = [myvect;my_wpac_2024_070];
btkvect = [btkvect;btk_wpac_2024_070];
btk2vect = [btk2vect;btk2_wpac_2024_070];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 071 ... TORAJI/(NIKA) around 2024-11-10-09Z ... CERTIFIED

rsmc_wpac_2024_071 = [16.7,121.4,67.2;18.7,117.7,50.4;19.9,114.9,44.8;20.7,113.1,0];
my_wpac_2024_071 = [16.7,121.1,65;    18.8,117.6,50;  19.8,115.1,35;  20.5,112.6,0];
btk_wpac_2024_071 = [17.0,121.1,70;   19.2,118.1,45;  20.5,115.6,45;  21.2,113.9,0]; # operationally from U.S. sources
btk2_wpac_2024_071 = btk_wpac_2024_071; #placeholder
rsmcvect = [rsmcvect;rsmc_wpac_2024_071];
myvect = [myvect;my_wpac_2024_071];
btkvect = [btkvect;btk_wpac_2024_071];
btk2vect = [btk2vect;btk2_wpac_2024_071];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Wpac 072 ... USAGI around 2024-11-11-21Z ... CERTIFIED

rsmc_wpac_2024_072 = [14.6,129.4,56.0;16.7,124.5,67.2;19.5,121.3,72.8;22.0,121.5,67.2;22.9,121.9,56.0];
my_wpac_2024_072 = [14.4,129.3,70;    16.6,124.4,95;  19.7,121.7,100; 21.8,122.0,75;  22.5,121.9,40];
btk_wpac_2024_072 = [14.7,128.9,60;   16.6,124.0,130; 19.8,120.5,70;  22.2,119.9,35;  22.1,119.8,20]; # operationally from U.S. sources
btk2_wpac_2024_072 = btk_wpac_2024_072; #placeholder
rsmcvect = [rsmcvect;rsmc_wpac_2024_072];
myvect = [myvect;my_wpac_2024_072];
btkvect = [btkvect;btk_wpac_2024_072];
btk2vect = [btk2vect;btk2_wpac_2024_072];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 073 ... MAN-YI around 2024-11-11-21Z ... CERTIFIED

rsmc_wpac_2024_073 = [14.4,146.4,50.4;13.4,140.9,50.4;12.8,134.5,67.2;14.2,128.7,78.4;16.7,125.7,78.4];
my_wpac_2024_073 = [14.2,146.6,50;    13.1,141.3,55;  12.7,135.0,75;  14.0,129.2,80;  16.2,125.7,70];
btk_wpac_2024_073 = [13.0,145.0,45;   11.6,139.5,40;  10.4,133.6,60;  12.0,127.8,115; 14.3,123.8,120]; # operationally from U.S. sources
btk2_wpac_2024_073 = btk_wpac_2024_073; #placeholder
rsmcvect = [rsmcvect;rsmc_wpac_2024_073];
myvect = [myvect;my_wpac_2024_073];
btkvect = [btkvect;btk_wpac_2024_073];
btk2vect = [btk2vect;btk2_wpac_2024_073];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 074 ... USAGI/(OFEL) around 2024-11-12-09Z ... CERTIFIED

rsmc_wpac_2024_074 = [15.7,126.6,67.2;18.1,122.4,72.8;20.8,120.5,67.2;22.7,121.4,61.6];
my_wpac_2024_074 = [15.7,126.4,70;    18.1,122.1,95;  20.7,120.3,80;  21.8,119.9,50];
btk_wpac_2024_074 = [15.6,126.5,75;   17.9,122.1,115; 21.1,119.4,45;  22.2,120.6,25]; # operationally from U.S. sources
btk2_wpac_2024_074 = btk_wpac_2024_074; #placeholder
rsmcvect = [rsmcvect;rsmc_wpac_2024_074];
myvect = [myvect;my_wpac_2024_074];
btkvect = [btkvect;btk_wpac_2024_074];
btk2vect = [btk2vect;btk2_wpac_2024_074];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Wpac 075 ... MAN-YI around 2024-11-12-09Z ... CERTIFIED

rsmc_wpac_2024_075 = [13.4,143.5,44.8;12.1,137.6,61.6;12.6,131.1,84.0;14.7,126.4,95.2;17.1,123.6,95.2];
my_wpac_2024_075 = [13.4,143.2,35;    12.2,137.1,60;  12.8,130.8,85;  14.6,125.8,100; 17.0,123.1,75];
btk_wpac_2024_075 = [12.3,142.6,35;   10.6,136.6,50;  10.9,130.4,90;  13.2,125.6,140; 15.8,121.9,130]; # operationally from U.S. sources
btk2_wpac_2024_075 = btk_wpac_2024_075; #placeholder
rsmcvect = [rsmcvect;rsmc_wpac_2024_075];
myvect = [myvect;my_wpac_2024_075];
btkvect = [btkvect;btk_wpac_2024_075];
btk2vect = [btk2vect;btk2_wpac_2024_075];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 076 ... USAGI/(OFEL) around 2024-11-14-03Z ... CERTIFIED

rsmc_wpac_2024_076 = [20.3,120.1,89.6;22.2,120.4,67.2];
my_wpac_2024_076 = [20.2,120.2,85;    21.9,120.3,75];
btk_wpac_2024_076 = [20.5,120.1,65;   22.4,120.3,30]; # operationally from U.S. sources
btk2_wpac_2024_076 = btk_wpac_2024_076; #placeholder
rsmcvect = [rsmcvect;rsmc_wpac_2024_076];
myvect = [myvect;my_wpac_2024_076];
btkvect = [btkvect;btk_wpac_2024_076];
btk2vect = [btk2vect;btk2_wpac_2024_076];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Wpac 077 ... MAN-YI around 2024-11-14-03Z ... CERTIFIED

rsmc_wpac_2024_077 = [11.0,132.1,78.4;12.7,127.0,100.8;15.1,123.2,106.4;17.9,118.9,72.8;18.7,114.8,67.2];
my_wpac_2024_077 = [11.0,131.9,70;    12.8,126.5,110;  15.4,122.9,100;  17.9,118.4,60;  18.3,114.0,50];
btk_wpac_2024_077 = [10.5,131.9,75;   12.5,126.7,135;  15.0,122.9,125;  18.0,118.1,65;  18.9,114.1,45]; # operationally from U.S. sources
btk2_wpac_2024_077 = btk_wpac_2024_077; #placeholder
rsmcvect = [rsmcvect;rsmc_wpac_2024_077];
myvect = [myvect;my_wpac_2024_077];
btkvect = [btkvect;btk_wpac_2024_077];
btk2vect = [btk2vect;btk2_wpac_2024_077];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 078 ... MAN-YI around 2024-11-14-09Z ... CERTIFIED

rsmc_wpac_2024_078 = [11.2,130.6,84.0;13.3,126.1,106.4;15.9,122.5,106.4;18.8,117.5,72.8;18.8,113.4,67.2];
my_wpac_2024_078 = [11.0,130.7,85;    13.1,126.0,125;  15.6,122.2,105;  17.8,117.3,65;  18.4,113.1,45];
btk_wpac_2024_078 = [10.9,130.4,90;   13.2,125.6,140;  15.8,121.9,130;  18.4,116.9,55;  18.8,113.0,30]; # operationally from U.S. sources
btk2_wpac_2024_078 = btk_wpac_2024_078; #placeholder
rsmcvect = [rsmcvect;rsmc_wpac_2024_078];
myvect = [myvect;my_wpac_2024_078];
btkvect = [btkvect;btk_wpac_2024_078];
btk2vect = [btk2vect;btk2_wpac_2024_078];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 079 ... MAN-YI/(PEPITO) around 2024-11-14-21Z ... CERTIFIED

rsmc_wpac_2024_079 = [12.1,127.9,95.2;14.3,123.9,106.4;17.1,119.7,78.4;18.3,115.2,61.6;17.6,111.1,50.4];
my_wpac_2024_079 = [11.9,127.9,95;    14.1,123.8,120;  16.9,119.6,65;  18.3,115.3,50;  17.9,111.8,35];
btk_wpac_2024_079 = [12.0,127.8,115;  14.3,123.8,120;  17.6,119.4,75;  18.5,115.2,50;  17.4,111.1,25]; # operationally from U.S. sources
btk2_wpac_2024_079 = btk_wpac_2024_079; #placeholder
rsmcvect = [rsmcvect;rsmc_wpac_2024_079];
myvect = [myvect;my_wpac_2024_079];
btkvect = [btkvect;btk_wpac_2024_079];
btk2vect = [btk2vect;btk2_wpac_2024_079];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 080 ... MAN-YI/(PEPITO) around 2024-11-15-15Z ... certified?

rsmc_wpac_2024_080 = [13.9,125.0,106.4;16.4,121.2,84.0;18.5,116.5,67.2;18.0,113.1,39.2];
my_wpac_2024_080 = [13.8,124.9,130;    16.2,121.0,85;  18.5,116.7,60;  18.2,113.5,40];
btk_wpac_2024_080 = [13.9,124.6,130;   16.6,120.7,90;  18.5,115.9,55;  18.1,112.1,25]; # operationally from U.S. sources
btk2_wpac_2024_080 = btk_wpac_2024_080; #placeholder
rsmcvect = [rsmcvect;rsmc_wpac_2024_080];
myvect = [myvect;my_wpac_2024_080];
btkvect = [btkvect;btk_wpac_2024_080];
btk2vect = [btk2vect;btk2_wpac_2024_080];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Wpac 081 ... MAN-YI/(PEPITO) around 2024-11-16-03Z ... CERTIFIED

rsmc_wpac_2024_081 = [14.8,122.9,117.6;18.0,118.3,61.6;18.7,114.4,56.0];
my_wpac_2024_081 = [14.8,122.8,120;    18.1,118.4,60;  18.9,114.5,55];
btk_wpac_2024_081 = [15.0,122.9,125;   18.0,118.1,65;  18.9,114.1,45]; # operationally from U.S. sources
btk2_wpac_2024_081 = btk_wpac_2024_081; #placeholder
rsmcvect = [rsmcvect;rsmc_wpac_2024_081];
myvect = [myvect;my_wpac_2024_081];
btkvect = [btkvect;btk_wpac_2024_081];
btk2vect = [btk2vect;btk2_wpac_2024_081];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Wpac 082 ... MAN-YI/(PEPITO) around 2024-11-16-09Z ... CERTIFIED

rsmc_wpac_2024_082 = [15.2,121.6,117.6;18.5,116.9,61.6;18.4,113.0,50.4];
my_wpac_2024_082 = [15.4,121.5,110;    18.5,116.7,65;  18.6,113.1,50];
btk_wpac_2024_082 = [15.8,121.9,130;   18.4,116.9,55;  18.8,113.0,30]; # operationally from U.S. sources
btk2_wpac_2024_082 = btk_wpac_2024_082; #placeholder
rsmcvect = [rsmcvect;rsmc_wpac_2024_082];
myvect = [myvect;my_wpac_2024_082];
btkvect = [btkvect;btk_wpac_2024_082];
btk2vect = [btk2vect;btk2_wpac_2024_082];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Shem 001 ... BHEKI around 2024-11-17-21Z ... CERTIFIED

rsmc_shem_2025_001 = [17.9,68.2,78.4;18.6,64.4,50.4;19.8,59.1,33.6;21.5,54.8,33.6;23.6,51.3,28.0];
my_shem_2025_001 = [17.7,68.4,70;    18.4,64.3,40;  19.5,59.2,35;  20.4,54.8,30;  22.1,49.5,20];
btk_shem_2025_001 = [17.6,68.5,75;   18.4,65.5,65;  19.6,59.7,35;  22.1,56.0,40;  22.7,53.2,35]; # operationally from U.S. sources
btk2_shem_2025_001 = btk_shem_2025_001; #placeholder
rsmcvect = [rsmcvect;rsmc_shem_2025_001];
myvect = [myvect;my_shem_2025_001];
btkvect = [btkvect;btk_shem_2025_001];
btk2vect = [btk2vect;btk2_shem_2025_001];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 002 ... 92S around 2024-12-08-15Z ... CERTIFIED
# (no MFR forecast)

# Shem 003 ... 04 / 04S around 2024-12-09-21Z ... CERTIFIED

rsmc_shem_2025_003 = [10.9,59.6,50.4;10.9,56.4,61.6;11.5,52.3,67.2;12.4,48.2,50.4;14.4,44.0,44.8];
my_shem_2025_003 = [10.6,59.9,50;    10.6,57.3,55;  11.6,53.4,65;  12.0,49.6,50;  13.2,46.4,35];
btk_shem_2025_003 = [10.5,59.8,60;   10.4,56.7,120; 10.9,52.2,125; 11.9,47.5,110; 13.2,42.8,115]; # operationally from U.S. sources
btk2_shem_2025_003 = btk_shem_2025_003; #placeholder
rsmcvect = [rsmcvect;rsmc_shem_2025_003];
myvect = [myvect;my_shem_2025_003];
btkvect = [btkvect;btk_shem_2025_003];
btk2vect = [btk2vect;btk2_shem_2025_003];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 004 ... CHIDO around 2024-12-10-09Z ... CERTIFIED

rsmc_shem_2025_004 = [10.8,58.0,67.2;11.3,54.2,89.6;12.2,49.9,78.4;14.0,45.6,56.0;16.0,40.4,44.8];
my_shem_2025_004 = [10.4,57.7,65;    10.6,54.1,90;  11.8,50.1,60;  12.8,46.4,50;  13.7,41.8,35];
btk_shem_2025_004 = [10.5,58.4,75;   10.7,54.5,135; 11.1,49.9,105; 12.6,45.4,115; 13.3,40.1,100]; # operationally from U.S. sources
btk2_shem_2025_004 = btk_shem_2025_004; #placeholder
rsmcvect = [rsmcvect;rsmc_shem_2025_004];
myvect = [myvect;my_shem_2025_004];
btkvect = [btkvect;btk_shem_2025_004];
btk2vect = [btk2vect;btk2_shem_2025_004];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 005 ... CHIDO around 2024-12-10-21Z ... CERTIFIED

rsmc_shem_2025_005 = [10.8,56.4,78.4;11.5,52.4,95.2;12.9,48.7,50.4;14.6,43.7,61.6;15.9,39.5,39.2];
my_shem_2025_005 = [10.5,56.7,90;    11.2,52.8,90;  12.8,48.6,55;  14.0,44.2,55;  14.8,40.3,35];
btk_shem_2025_005 = [10.4,56.7,120;  10.9,52.2,125; 11.9,47.5,110; 13.2,42.8,115; 14.0,37.2,50]; # operationally from U.S. sources
btk2_shem_2025_005 = btk_shem_2025_005; #placeholder
rsmcvect = [rsmcvect;rsmc_shem_2025_005];
myvect = [myvect;my_shem_2025_005];
btkvect = [btkvect;btk_shem_2025_005];
btk2vect = [btk2vect;btk2_shem_2025_005];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 006 ... CHIDO around 2024-12-12-09Z ... CERTIFIED

rsmc_shem_2025_006 = [11.0,50.4,123.2;12.4,46.2,89.6;13.6,41.8,100.8;15.1,36.7,28.0];
my_shem_2025_006 = [10.9,50.2,110;    12.3,45.8,85;  13.5,41.5,60;   14.7,37.2,25];
btk_shem_2025_006 = [11.1,49.9,105;   12.6,45.4,115; 13.3,40.1,100;  15.1,34.9,25]; # operationally from U.S. sources
btk2_shem_2025_006 = btk_shem_2025_006; #placeholder
rsmcvect = [rsmcvect;rsmc_shem_2025_006];
myvect = [myvect;my_shem_2025_006];
btkvect = [btkvect;btk_shem_2025_006];
btk2vect = [btk2vect;btk2_shem_2025_006];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 007 ... CHIDO around 2024-12-12-21Z ... CERTIFIED

rsmc_shem_2025_007 = [11.6,48.0,100.8;12.7,43.5,100.8;13.3,38.4,44.8;15.4,33.1,28.0];
my_shem_2025_007 = [11.5,48.0,105;    12.7,43.5,100;  13.6,38.6,50;  15.9,33.4,25];
btk_shem_2025_007 = [11.9,47.5,110;   13.2,42.8,115;  14.0,37.2,50;  16.6,33.0,20]; # operationally from U.S. sources
btk2_shem_2025_007 = btk_shem_2025_007; #placeholder
rsmcvect = [rsmcvect;rsmc_shem_2025_007];
myvect = [myvect;my_shem_2025_007];
btkvect = [btkvect;btk_shem_2025_007];
btk2vect = [btk2vect;btk2_shem_2025_007];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 008 ... CHIDO around 2024-12-14-21Z ... CERTIFIED

rsmc_shem_2025_008 = [13.7,37.8,33.6;16.1,33.2,28.0];
my_shem_2025_008 = [13.8,37.5,35;    16.2,32.9,20];
btk_shem_2025_008 = [14.0,37.2,50;   16.6,33.0,20]; # operationally from U.S. sources
btk2_shem_2025_008 = btk_shem_2025_008; #placeholder
rsmcvect = [rsmcvect;rsmc_shem_2025_008];
myvect = [myvect;my_shem_2025_008];
btkvect = [btkvect;btk_shem_2025_008];
btk2vect = [btk2vect;btk2_shem_2025_008];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Wpac 083 ... 28W/(ROMINA) around 2024-12-23-03Z ... CERTIFIED

rsmc_wpac_2024_083 = [11.4,111.1,39.2;11.0,109.5,0];
my_wpac_2024_083 = [11.4,111.2,35;    11.1,109.4,0];
btk_wpac_2024_083 = [11.5,112.3,30;   10.6,110.7,0]; # operationally from U.S. sources
btk2_wpac_2024_083 = btk_wpac_2024_083; #placeholder
rsmcvect = [rsmcvect;rsmc_wpac_2024_083];
myvect = [myvect;my_wpac_2024_083];
btkvect = [btkvect;btk_wpac_2024_083];
btk2vect = [btk2vect;btk2_wpac_2024_083];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Wpac 084 ... PABUK/(ROMINA) around 2024-12-23-09Z ... CERTIFIED

rsmc_wpac_2024_084 = [11.0,111.2,39.2;11.5,109.1,0];
my_wpac_2024_084 = [10.9,111.3,30;    11.2,109.0,0];
btk_wpac_2024_084 = [11.8,111.9,30;   9.6,110.3,0]; # operationally from U.S. sources
btk2_wpac_2024_084 = btk_wpac_2024_084; #placeholder
rsmcvect = [rsmcvect;rsmc_wpac_2024_084];
myvect = [myvect;my_wpac_2024_084];
btkvect = [btkvect;btk_wpac_2024_084];
btk2vect = [btk2vect;btk2_wpac_2024_084];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Wpac 085 ... PABUK/(ROMINA) around 2024-12-23-21Z ... CERTIFIED

rsmc_wpac_2024_085 = [10.6,110.7,39.2;10.7,107.7,0];
my_wpac_2024_085 = [10.8,110.7,25;    10.8,107.5,0];
btk_wpac_2024_085 = [11.1,111.2,30;   8.7,109.3,0]; # operationally from U.S. sources
btk2_wpac_2024_085 = btk_wpac_2024_085; #placeholder
rsmcvect = [rsmcvect;rsmc_wpac_2024_085];
myvect = [myvect;my_wpac_2024_085];
btkvect = [btkvect;btk_wpac_2024_085];
btk2vect = [btk2vect;btk2_wpac_2024_085];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Shem 009 ... 05 / 94S around 2025-01-07-21Z ... CERTIFIED

rsmc_shem_2025_009 = [14.9,68.9,39.2;15.1,61.5,50.4;15.0,55.1,61.6;14.4,49.2,44.8;15.1,44.9,72.8];
my_shem_2025_009 = [15.2,68.1,40;    15.2,61.8,55;  15.3,55.4,60;  15.0,48.7,40;  15.6,45.6,60];
btk_shem_2025_009 = [15.0,68.2,30;   13.6,60.1,40;  13.3,54.2,55;  12.9,49.0,75;  14.3,43.5,70]; # operationally from U.S. sources
btk2_shem_2025_009 = btk_shem_2025_009; #placeholder
rsmcvect = [rsmcvect;rsmc_shem_2025_009];
myvect = [myvect;my_shem_2025_009];
btkvect = [btkvect;btk_shem_2025_009];
btk2vect = [btk2vect;btk2_shem_2025_009];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 010 ... 05 / 94S around 2025-01-08-21Z ... CERTIFIED

rsmc_shem_2025_010 = [15.1,61.2,50.4;14.3,54.2,72.8;13.3,49.1,61.6;15.6,44.2,56.0;17.8,41.6,67.2];
my_shem_2025_010 = [14.9,61.6,45;    14.2,54.7,70;  13.6,49.5,50;  15.3,45.0,45;  18.7,42.8,55];
btk_shem_2025_010 = [13.6,60.1,40;   13.3,54.2,55;  12.9,49.0,75;  14.3,43.5,70;  15.5,40.2,70]; # operationally from U.S. sources
btk2_shem_2025_010 = btk_shem_2025_010; #placeholder
rsmcvect = [rsmcvect;rsmc_shem_2025_010];
myvect = [myvect;my_shem_2025_010];
btkvect = [btkvect;btk_shem_2025_010];
btk2vect = [btk2vect;btk2_shem_2025_010];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 011 ... DIKELEDI around 2025-01-09-21Z ... CERTIFIED

rsmc_shem_2025_011 = [13.6,54.3,89.6;12.9,49.8,72.8;14.7,43.9,67.2;16.8,41.4,72.8;20.8,40.1,78.4];
my_shem_2025_011 = [13.2,54.1,65;    13.0,48.9,50;  14.2,44.3,50;  16.4,40.7,60;  19.3,39.6,65];
btk_shem_2025_011 = [13.3,54.2,55;   12.9,49.0,75;  14.3,43.5,70;  15.5,40.2,70;  18.9,39.8,60]; # operationally from U.S. sources
btk2_shem_2025_011 = btk_shem_2025_011; #placeholder
rsmcvect = [rsmcvect;rsmc_shem_2025_011];
myvect = [myvect;my_shem_2025_011];
btkvect = [btkvect;btk_shem_2025_011];
btk2vect = [btk2vect;btk2_shem_2025_011];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 012 ... DIKELEDI around 2025-01-10-09Z ... CERTIFIED

rsmc_shem_2025_012 = [12.9,51.7,95.2;13.5,47.0,56.0;15.3,42.2,72.8;18.5,39.6,84.0;22.1,39.5,89.6];
my_shem_2025_012 = [12.8,51.3,75;    13.6,46.4,50;  15.1,42.3,50;  17.6,40.2,55;  21.3,38.7,70];
btk_shem_2025_012 = [12.6,51.7,80;   13.6,46.2,65;  14.9,41.1,80;  16.8,39.9,55;  21.7,41.1,70]; # operationally from U.S. sources
btk2_shem_2025_012 = btk_shem_2025_012; #placeholder
rsmcvect = [rsmcvect;rsmc_shem_2025_012];
myvect = [myvect;my_shem_2025_012];
btkvect = [btkvect;btk_shem_2025_012];
btk2vect = [btk2vect;btk2_shem_2025_012];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 013 ... DIKELEDI around 2025-01-10-21Z ... CERTIFIED

rsmc_shem_2025_013 = [12.7,49.2,78.4;13.9,44.2,61.6;15.7,40.6,72.8;19.2,39.0,84.0;23.5,40.2,89.6];
my_shem_2025_013 = [12.6,49.3,60;    14.3,44.7,55;  16.3,41.4,60;  19.2,39.9,65;  22.9,41.2,75];
btk_shem_2025_013 = [12.9,49.0,75;   14.3,43.5,70;  15.5,40.2,70;  18.9,39.8,60;  25.7,42.3,90]; # operationally from U.S. sources
btk2_shem_2025_013 = btk_shem_2025_013; #placeholder
rsmcvect = [rsmcvect;rsmc_shem_2025_013];
myvect = [myvect;my_shem_2025_013];
btkvect = [btkvect;btk_shem_2025_013];
btk2vect = [btk2vect;btk2_shem_2025_013];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 014 ... DIKELEDI around 2025-01-11-21Z ... CERTIFIED

rsmc_shem_2025_014 = [14.4,44.0,56.0;16.5,40.9,95.2;19.8,39.9,112.0;23.9,41.2,112.0;28.7,44.9,106.4];
my_shem_2025_014 = [14.5,44.3,70;    16.5,41.5,95;  19.6,40.9,95;   23.7,42.2,95;   28.5,45.3,85];
btk_shem_2025_014 = [14.3,43.5,70;   15.5,40.2,70;  18.9,39.8,60;   25.7,42.3,90;   32.2,49.0,75]; # operationally from U.S. sources
btk2_shem_2025_014 = btk_shem_2025_014; #placeholder
rsmcvect = [rsmcvect;rsmc_shem_2025_014];
myvect = [myvect;my_shem_2025_014];
btkvect = [btkvect;btk_shem_2025_014];
btk2vect = [btk2vect;btk2_shem_2025_014];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 015 ... DIKELEDI around 2025-01-12-09Z ... certification failed?

rsmc_shem_2025_015 = [15.7,42.3,72.8;18.1,40.6,106.4;21.3,40.7,117.6;26.6,43.9,117.6;28.3,48.3,72.8];
my_shem_2025_015 = [15.5,42.0,75;    17.8,40.2,110;  21.2,40.6,100;  25.9,43.1,90;   28.7,45.8,60];
btk_shem_2025_015 = [14.9,41.1,80;   16.8,39.9,55;   21.7,41.1,70;   28.9,44.7,100;  33.7,54.8,50]; # operationally from U.S. sources
btk2_shem_2025_015 = btk_shem_2025_015; #placeholder
rsmcvect = [rsmcvect;rsmc_shem_2025_015];
myvect = [myvect;my_shem_2025_015];
btkvect = [btkvect;btk_shem_2025_015];
btk2vect = [btk2vect;btk2_shem_2025_015];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 016 ... DIKELEDI around 2025-01-12-21Z ... CERTIFIED

rsmc_shem_2025_016 = [15.8,40.3,84.0;18.9,39.9,95.2;23.4,41.5,112.0;28.0,43.8,112.0;31.3,47.5,78.4];
my_shem_2025_016 = [15.9,40.6,85;    19.2,40.3,80;  23.6,41.9,90;   28.3,44.9,85;   31.2,47.5,65];
btk_shem_2025_016 = [15.5,40.2,70;   18.9,39.8,60;  25.7,42.3,90;   32.2,49.0,75;   35.0,61.9,45]; # operationally from U.S. sources
btk2_shem_2025_016 = btk_shem_2025_016; #placeholder
rsmcvect = [rsmcvect;rsmc_shem_2025_016];
myvect = [myvect;my_shem_2025_016];
btkvect = [btkvect;btk_shem_2025_016];
btk2vect = [btk2vect;btk2_shem_2025_016];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 017 ... DIKELEDI around 2025-01-14-21Z ... CERTIFIED

rsmc_shem_2025_017 = [25.4,42.2,106.4;30.4,47.3,100.8;33.0,56.2,67.2];
my_shem_2025_017 = [24.6,41.8,80;     29.4,46.7,75;   31.7,54.3,45];
btk_shem_2025_017 = [25.7,42.3,90;    32.2,49.0,75;   35.0,61.9,45]; # operationally from U.S. sources
btk2_shem_2025_017 = btk_shem_2025_017; #placeholder
rsmcvect = [rsmcvect;rsmc_shem_2025_017];
myvect = [myvect;my_shem_2025_017];
btkvect = [btkvect;btk_shem_2025_017];
btk2vect = [btk2vect;btk2_shem_2025_017];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 018 ... 11U/10S around 2025-01-18-21Z ... CERTIFIED

rsmc_shem_2025_018 = [];
my_shem_2025_018 = [];
btk_shem_2025_018 = []; # operationally from U.S. sources
btk2_shem_2025_018 = btk_shem_2025_018; #placeholder
rsmcvect = [rsmcvect;rsmc_shem_2025_018];
myvect = [myvect;my_shem_2025_018];
btkvect = [btkvect;btk_shem_2025_018];
btk2vect = [btk2vect;btk2_shem_2025_018];
leadtimevect = [leadtimevect;];
basinvect = [basinvect;];

# Shem 019 ... SEAN around 2025-01-19-21Z ... CERTIFIED

rsmc_shem_2025_019 = [];
my_shem_2025_019 = [];
btk_shem_2025_019 = []; # operationally from U.S. sources
btk2_shem_2025_019 = btk_shem_2025_019; #placeholder
rsmcvect = [rsmcvect;rsmc_shem_2025_019];
myvect = [myvect;my_shem_2025_019];
btkvect = [btkvect;btk_shem_2025_019];
btk2vect = [btk2vect;btk2_shem_2025_019];
leadtimevect = [leadtimevect;];
basinvect = [basinvect;];

# Shem 020 ... SEAN around 2025-01-20-03Z ... CERTIFIED

rsmc_shem_2025_020 = [];
my_shem_2025_020 = [];
btk_shem_2025_020 = []; # operationally from U.S. sources
btk2_shem_2025_020 = btk_shem_2025_020; #placeholder
rsmcvect = [rsmcvect;rsmc_shem_2025_020];
myvect = [myvect;my_shem_2025_020];
btkvect = [btkvect;btk_shem_2025_020];
btk2vect = [btk2vect;btk2_shem_2025_020];
leadtimevect = [leadtimevect;];
basinvect = [basinvect;];



##
##
## IN TOTAL

btkvect=(btkvect+btk2vect)/2;
# rsmcvect(:,3) = 5*floor(rsmcvect(:,3)/5+0.5);

x=3;

my3d = 12756/1.852/2*[ cos(myvect(:,1)/180*pi).*cos(myvect(:,2)/180*pi) , cos(myvect(:,1)/180*pi).*sin(myvect(:,2)/180*pi) , sin(myvect(:,1)/180*pi) ];
rsmc3d = 12756/1.852/2*[ cos(rsmcvect(:,1)/180*pi).*cos(rsmcvect(:,2)/180*pi) , cos(rsmcvect(:,1)/180*pi).*sin(rsmcvect(:,2)/180*pi) , sin(rsmcvect(:,1)/180*pi) ];
btk3d = 12756/1.852/2*[ cos(btkvect(:,1)/180*pi).*cos(btkvect(:,2)/180*pi) , cos(btkvect(:,1)/180*pi).*sin(btkvect(:,2)/180*pi) , sin(btkvect(:,1)/180*pi) ];

myposerror = sqrt( (my3d(:,1)-btk3d(:,1)).^2 + (my3d(:,2)-btk3d(:,2)).^2 + (my3d(:,3)-btk3d(:,3)).^2 );
rsmcposerror = sqrt( (rsmc3d(:,1)-btk3d(:,1)).^2 + (rsmc3d(:,2)-btk3d(:,2)).^2 + (rsmc3d(:,3)-btk3d(:,3)).^2 );
ourposdiff = sqrt( (rsmc3d(:,1)-my3d(:,1)).^2 + (rsmc3d(:,2)-my3d(:,2)).^2 + (rsmc3d(:,3)-my3d(:,3)).^2 );
myinterror = abs( myvect(:,3)-btkvect(:,3) );
rsmcinterror = abs( rsmcvect(:,3)-btkvect(:,3) );
ourintdiff = abs( rsmcvect(:,3)-myvect(:,3) );

[sum(myposerror.*(leadtimevect==1).*(basinvect==x))/sum(rsmcposerror.*(leadtimevect==1).*(basinvect==x)) , sum(myinterror.*(leadtimevect==1).*(basinvect==x))/sum(rsmcinterror.*(leadtimevect==1).*(basinvect==x)) , sum((leadtimevect==1).*(basinvect==x)) , sum((leadtimevect==1).*(basinvect==x).*(rsmcvect(:,3)>0))]
[sum(myposerror.*(leadtimevect==2).*(basinvect==x))/sum(rsmcposerror.*(leadtimevect==2).*(basinvect==x)) , sum(myinterror.*(leadtimevect==2).*(basinvect==x))/sum(rsmcinterror.*(leadtimevect==2).*(basinvect==x)) , sum((leadtimevect==2).*(basinvect==x)) , sum((leadtimevect==2).*(basinvect==x).*(rsmcvect(:,3)>0))]
[sum(myposerror.*(leadtimevect==3).*(basinvect==x))/sum(rsmcposerror.*(leadtimevect==3).*(basinvect==x)) , sum(myinterror.*(leadtimevect==3).*(basinvect==x))/sum(rsmcinterror.*(leadtimevect==3).*(basinvect==x)) , sum((leadtimevect==3).*(basinvect==x)) , sum((leadtimevect==3).*(basinvect==x).*(rsmcvect(:,3)>0))]
[sum(myposerror.*(leadtimevect==4).*(basinvect==x))/sum(rsmcposerror.*(leadtimevect==4).*(basinvect==x)) , sum(myinterror.*(leadtimevect==4).*(basinvect==x))/sum(rsmcinterror.*(leadtimevect==4).*(basinvect==x)) , sum((leadtimevect==4).*(basinvect==x)) , sum((leadtimevect==4).*(basinvect==x).*(rsmcvect(:,3)>0))]
[sum(myposerror.*(leadtimevect==5).*(basinvect==x))/sum(rsmcposerror.*(leadtimevect==5).*(basinvect==x)) , sum(myinterror.*(leadtimevect==5).*(basinvect==x))/sum(rsmcinterror.*(leadtimevect==5).*(basinvect==x)) , sum((leadtimevect==5).*(basinvect==x)) , sum((leadtimevect==5).*(basinvect==x).*(rsmcvect(:,3)>0))]