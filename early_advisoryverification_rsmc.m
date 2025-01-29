# basins/agencies: 1=WPAC (JMA), 2=NIO (IMD), 3=SWIO (Meteo-France), 4=AUS (BoM), 5=SPAC (FMS), 6=SATL (Brazilian Navy), 7=SPAC (MetService), 8=AUS (BMKG), 9=AUS (PNG-NWS)
# wind of RSMC forecast and data is multiplied by 1.12, if they use 10-minute sustained wind
# wind of RSMC forecast and data is multiplied by 1.06, if they use 3-minute sustained wind
# (to allow comparison with my 1-min sustained wind prediction)

# Shem 10 ... CHALANE before 2020-12-25-21Z

my_shem_2021_10 = [16.7,50.4,40;      18.0,45.5,25;  18.9,42.7,35;   19.1,37.7,45;    18.1,32.5,30];
rsmc_shem_2021_10 = [16.1,50.3,39.2;  17.7,46.8,22.4;19.7,42.9,33.6; 19.4,39.1,50.4;  18.9,34.6,33.6];
btk_shem_2021_10 = [17.5,49.8,35;     19.2,45.7,25;  19.9,42.0,45;   19.4,37.3,65;    19.7,29.2,25]; # JTWC post-season btk
btk2_shem_2021_10 = [17.68,49.93,33.6;19.02,46.03,28;19.9,41.93,39.2;19.62,37.18,61.6;19,30.23,28]; # MFR data table
myvect = my_shem_2021_10;
rsmcvect = rsmc_shem_2021_10;
btkvect = btk_shem_2021_10;
btk2vect = btk2_shem_2021_10;
leadtimevect = [1;2;3;4;5];
basinvect = [3;3;3;3;3];

# Shem 11 ... DANILO before 2021-01-02-21Z

my_shem_2021_11 = [13.4,74.4,40;      15.6,75.9,40;    16.1,75.0,40;    15.3,76.3,40;   15.0,73.2,55];
rsmc_shem_2021_11 = [14.0,75.2,50.4;  15.6,75.2,50.4;  16.1,74.4,56.0;  16.3,70.9,61.6;  16.3,66.6,78.4];
btk_shem_2021_11 = [13.0,75.3,60;     15.7,76.3,50;    16.6,76.3,55;    16.3,73.5,35;    16.7,69.0,35]; # JTWC post-season btk
btk2_shem_2021_11 = [12.94,75.31,61.6;15.54,76.52,50.4;16.48,76.89,50.4;16.27,73.37,33.6;16.67,69,33.6]; # MFR data table
myvect = [myvect;my_shem_2021_11];
rsmcvect = [rsmcvect;rsmc_shem_2021_11];
btkvect = [btkvect;btk_shem_2021_11];
btk2vect = [btk2vect;btk2_shem_2021_11];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 12 ... DANILO before 2021-01-03-21Z

my_shem_2021_12 = [15.3,76.8,55;      16.8,75.7,50;    16.4,72.0,55;    16.6,67.7,65;  17.6,61.8,90];
rsmc_shem_2021_12 = [15.8,76.5,56.0;  16.9,76.1,44.8;  16.5,73.1,39.2;  16.3,69.0,44.8;17.0,64.3,56.0];
btk_shem_2021_12 = [15.7,76.3,50;     16.6,76.3,55;    16.3,73.5,35;    16.7,69.0,35;  17.2,65.2,25]; # JTWC best track
btk2_shem_2021_12 = [15.54,76.52,50.4;16.48,76.89,50.4;16.27,73.37,33.6;16.67,69,33.6; 16.68,65.39,28]; # MFR data table
myvect = [myvect;my_shem_2021_12];
rsmcvect = [rsmcvect;rsmc_shem_2021_12];
btkvect = [btkvect;btk_shem_2021_12];
btk2vect = [btk2vect;btk2_shem_2021_12];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 13 ... DANILO before 2021-01-05-21Z

my_shem_2021_13 = [17.2,72.7,55;      17.1,68.0,60;  17.6,63.2,65;    18.3,60.0,55;    21.2,58.1,55];
rsmc_shem_2021_13 = [16.6,73.4,39.2;  16.8,68.4,33.6;17.1,63.6,33.6;  18.0,59.5,39.2;  18.9,56.1,39.2];
btk_shem_2021_13 = [16.3,73.5,35;     16.7,69.0,35;  17.2,65.2,25;    18.1,62.7,15;    19.2,59.1,15]; # JTWC post-season btk
btk2_shem_2021_13 = [16.27,73.37,33.6;16.67,69,33.6; 16.68,65.39,28  ;18.17,62.26,28  ;19.14,59.12,28]; # MFR data table
myvect = [myvect;my_shem_2021_13];
rsmcvect = [rsmcvect;rsmc_shem_2021_13];
btkvect = [btkvect;btk_shem_2021_13];
btk2vect = [btk2vect;btk2_shem_2021_13];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 14 ... 07/99S before 2021-01-16-21Z

my_shem_2021_14 = [13.3,59.5,40;      14.8,54.9,50;    16.1,51.2,55;    18.7,48.6,30;    18.9,44.6,25];
rsmc_shem_2021_14 = [13.2,59.7,44.8;  14.7,50.3,50.4;  15.8,51.3,61.6;  16.1,47.7,22.4;  18.3,43.5,33.6];
btk_shem_2021_14 = [13.3,59.7,45;     14.1,53.0,55;    15.3,50.4,50;    15.7,45.0,40;    17.8,40.6,55]; # JTWC post-season btk
btk2_shem_2021_14 = [13.24,59.65,39.2;13.95,53.16,50.4;15.07,50.03,61.6;15.68,44.97,39.2;17.77,40.53,50.4]; # MFR data table
myvect = [myvect;my_shem_2021_14];
rsmcvect = [rsmcvect;rsmc_shem_2021_14];
btkvect = [btkvect;btk_shem_2021_14];
btk2vect = [btk2vect;btk2_shem_2021_14];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 16 ... ELOISE before 2021-01-17-21Z

my_shem_2021_16 = [14.9,54.3,50;      15.6,51.4,65;    15.9,47.3,25;    18.1,43.3,40;    21.5,40.3,55];
rsmc_shem_2021_16 = [14.6,54.5,44.8;  15.6,51.6,61.6;  16.0,47.2,28.0;  18.5,43.4,33.6;  20.6,39.8,50.4];
btk_shem_2021_16 = [14.1,53.0,55;     15.3,50.4,50;    15.7,45.0,40;    17.8,40.6,55;    19.6,36.0,80]; # JTWC post-season btk
btk2_shem_2021_16 = [13.95,53.16,50.4;15.07,50.03,61.6;15.68,44.97,39.2;17.77,40.53,50.4;19.51,36.06,78.4]; # MFR data table
myvect = [myvect;my_shem_2021_16];
rsmcvect = [rsmcvect;rsmc_shem_2021_16];
btkvect = [btkvect;btk_shem_2021_16];
btk2vect = [btk2vect;btk2_shem_2021_16];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 17 ... ELOISE before 2021-01-18-21Z

my_shem_2021_17 = [15.3,49.9,65;      16.2,45.3,45;    18.5,41.6,45;    21.3,37.2,75;    23.0,33.6,60];
rsmc_shem_2021_17 = [15.6,49.9,44.8;  16.8,45.3,28.0;  19.1,41.8,56.0;  21.2,38.0,78.4;  23.5,34.6,72.8];
btk_shem_2021_17 = [15.3,50.4,50;     15.7,45.0,40;    17.8,40.6,55;    19.6,36.0,80;    21.6,32.4,45]; # JTWC post-season btk
btk2_shem_2021_17 = [15.07,50.03,61.6;15.68,44.97,39.2;17.77,40.53,50.4;19.51,36.06,78.4;21.46,32.23,33.6]; # MFR data table
myvect = [myvect;my_shem_2021_17];
rsmcvect = [rsmcvect;rsmc_shem_2021_17];
btkvect = [btkvect;btk_shem_2021_17];
btk2vect = [btk2vect;btk2_shem_2021_17];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 18 ... ELOISE before 2021-01-19-21Z

my_shem_2021_18 = [16.4,45.8,25;      18.7,41.8,45;    20.6,38.4,80;    22.9,34.6,100;   24.4,32.7,25];
rsmc_shem_2021_18 = [16.6,46.3,28.0;  18.5,42.5,44.8;  20.7,39.0,72.8;  23.3,36.0,100.8; 26.1,34.2,44.8];
btk_shem_2021_18 = [15.7,45.0,40;     17.8,40.6,55;    19.6,36.0,80;    21.6,32.4,45;    23.66,28.38,35]; # JTWC post-season btk (except day 5)
btk2_shem_2021_18 = [15.68,44.97,39.2;17.77,40.53,50.4;19.51,36.06,78.4;21.46,32.23,33.6;23.66,28.38,33.6]; # MFR data table
myvect = [myvect;my_shem_2021_18];
rsmcvect = [rsmcvect;rsmc_shem_2021_18];
btkvect = [btkvect;btk_shem_2021_18];
btk2vect = [btk2vect;btk2_shem_2021_18];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 19 ... ELOISE before 2021-01-20-21Z

my_shem_2021_19 = [17.8,40.6,55;      19.8,36.4,90;    21.7,33.6,65;    23.1,30.0,30;    22.7,28.0,0];
rsmc_shem_2021_19 = [17.6,40.9,61.6;  19.5,36.8,95.2;  21.5,33.5,39.2;  23.0,30.9,28.0;  22.5,27.8,0];
btk_shem_2021_19 = [17.8,40.6,55;     19.6,36.0,80;    21.6,32.4,45;    23.66,28.38,35;  24.82,23.88,0]; # JTWC post-season btk (except days 4&5)
btk2_shem_2021_19 = [17.77,40.53,50.4;19.51,36.06,78.4;21.46,32.23,33.6;23.66,28.38,33.6;24.82,23.88,0]; # MFR data table
myvect = [myvect;my_shem_2021_19];
rsmcvect = [rsmcvect;rsmc_shem_2021_19];
btkvect = [btkvect;btk_shem_2021_19];
btk2vect = [btk2vect;btk2_shem_2021_19];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 20 ... ELOISE before 2021-01-21-21Z

my_shem_2021_20 = [19.5,36.2,90;      21.1,32.8,55;    22.3,29.9,40];
rsmc_shem_2021_20 = [19.3,36.3,72.8;  20.7,32.9,39.2;  21.9,30.2,22.4];
btk_shem_2021_20 = [19.6,36.0,80;     21.6,32.4,45;    23.66,28.38,35]; # JTWC post-season btk (except day 3)
btk2_shem_2021_20 = [19.51,36.06,78.4;21.46,32.23,33.6;23.66,28.38,33.6]; # MFR data table
myvect = [myvect;my_shem_2021_20];
rsmcvect = [rsmcvect;rsmc_shem_2021_20];
btkvect = [btkvect;btk_shem_2021_20];
btk2vect = [btk2vect;btk2_shem_2021_20];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 21 ... 94P/11U before 2021-01-26-03Z
# wind speeds missing for 1-5 days and positions for 4-5 days

my_shem_2021_21 = [15.1,141.0,0;  15.2,140.2,0;14.7,140.2,0];
rsmc_shem_2021_21 = [15.5,140.8,0;15.5,140.7,0;15.1,140.9,0];
btk_shem_2021_21 = [15.2,140.8,0; 14.6,142.8,0;14.1,144.1,0]; # JTWC post-season btk
btk2_shem_2021_21 = [14.7,141.8,0;14.4,142.7,0;14.1,143.7,0]; # BoM spreadsheet
myvect = [myvect;my_shem_2021_21];
rsmcvect = [rsmcvect;rsmc_shem_2021_21];
btkvect = [btkvect;btk_shem_2021_21];
btk2vect = [btk2vect;btk2_shem_2021_21];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;4;4;4];

# Shem 22 ... 94P/11U before 2021-01-31-03Z
# wind speeds missing for 1-5 days and positions for 4-5 days

my_shem_2021_22 = [14.1,158.1,0;  16.7,165.4,0;21.1,168.8,0];
rsmc_shem_2021_22 = [14.1,157.6,0;16.8,164.3,0;20.4,167.3,0];
btk_shem_2021_22 = [14.1,158.5,0; 17.1,165.0,0;22.0,167.2,0]; # JTWC post-season btk
btk2_shem_2021_22 = [14.0,158.4,0;17.2,164.8,0;22.0,167.3,0]; # BoM spreadsheet
myvect = [myvect;my_shem_2021_22];
rsmcvect = [rsmcvect;rsmc_shem_2021_22];
btkvect = [btkvect;btk_shem_2021_22];
btk2vect = [btk2vect;btk2_shem_2021_22];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;4;4;4];

# Shem 23 ... LUCAS before 2021-01-31-21Z
# wind speeds missing for 1-5 days and positions for 4-5 days

my_shem_2021_23 = [15.9,163.6,0;  19.6,166.9,0;22.1,168.4,0];
rsmc_shem_2021_23 = [15.8,164.6,0;20.0,168.3,0;22.3,168.8,0];
btk_shem_2021_23 = [16.6,164.0,0; 20.9,167.6,0;22.7,166.4,0]; # JTWC post-season btk
btk2_shem_2021_23 = [17.0,163.5,0;20.2,167.5,0;22.7,166.4,0]; # BoM spreadsheet (except day 3)
myvect = [myvect;my_shem_2021_23];
rsmcvect = [rsmcvect;rsmc_shem_2021_23];
btkvect = [btkvect;btk_shem_2021_23];
btk2vect = [btk2vect;btk2_shem_2021_23];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;4;4;4];

# Shem 24 ... FARAJI before 2021-02-05-21Z

my_shem_2021_24 = [14.2,80.0,60;      14.1,80.6,65;  13.4,82.0,80;   13.3,83.6,85;     13.9,85.0,60];
rsmc_shem_2021_24 = [14.6,80.0,61.6;  14.8,80.5,84.0;14.2,82.4,95.2; 14.8,85.4,84.0;   16.0,87.1,78.4];
btk_shem_2021_24 = [14.7,79.6,80;     14.6,80.2,105; 14.3,82.6,140;  14.6,84.5,105;    15.8,85.3,90]; # JTWC post-season btk
btk2_shem_2021_24 = [14.57,79.78,72.8;14.57,80.2,112;14.22,82.41,140;14.75,84.52,110.8;15.79,85.22,89.6]; # MFR data table
myvect = [myvect;my_shem_2021_24];
rsmcvect = [rsmcvect;rsmc_shem_2021_24];
btkvect = [btkvect;btk_shem_2021_24];
btk2vect = [btk2vect;btk2_shem_2021_24];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 25 ... FARAJI before 2021-02-06-03Z

my_shem_2021_25 = [14.7,80.1,90;      14.7,81.5,105;  15.0,83.2,115;  16.2,84.6,105; 17.2,86.5,75];
rsmc_shem_2021_25 = [14.7,80.6,78.4;  14.8,81.6,95.2; 14.7,83.7,100.8;15.6,85.7,84.0;17.0,86.1,56.0];
btk_shem_2021_25 = [14.9,79.7,100;    14.4,80.9,105;  14.2,83.1,135;  14.9,84.8,95;  16.1,85.1,90]; # JTWC post-season btk
btk2_shem_2021_25 = [14.66,79.72,95.2;14.31,80.87,112;14.07,83.1,140; 15,84.95,95.2; 16.04,84.97,89.6]; # MFR data table
myvect = [myvect;my_shem_2021_25];
rsmcvect = [rsmcvect;rsmc_shem_2021_25];
btkvect = [btkvect;btk_shem_2021_25];
btk2vect = [btk2vect;btk2_shem_2021_25];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 26 ... FARAJI before 2021-02-06-21Z

my_shem_2021_26 = [14.7,80.3,105;   14.6,81.8,105;  15.0,83.9,90;     16.6,85.0,70;    18.1,84.1,55];
rsmc_shem_2021_26 = [15.2,80.0,95.2;14.8,81.2,95.2; 15.1,83.3,84.0;   15.5,83.6,61.6;  15.6,82.6,39.2];
btk_shem_2021_26 = [14.6,80.2,105;  14.3,82.6,140;  14.6,84.5,105;    15.8,85.3,90;    17.3,83.8,85]; # JTWC post-season btk
btk2_shem_2021_26 = [14.57,80.2,112;14.22,82.41,140;14.75,84.52,100.8;15.79,85.22,89.6;17.21,83.8,89.6]; # MFR data table
myvect = [myvect;my_shem_2021_26];
rsmcvect = [rsmcvect;rsmc_shem_2021_26];
btkvect = [btkvect;btk_shem_2021_26];
btk2vect = [btk2vect;btk2_shem_2021_26];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 27 ... FARAJI before 2021-01-07-21Z

my_shem_2021_27 = [14.3,82.4,95;     15.1,85.0,85;     16.0,86.1,65;    17.0,85.8,45;   17.6,84.3,30];
rsmc_shem_2021_27 = [14.4,82.3,100.8;15.0,84.8,84.0;   16.2,86.3,61.6;  16.8,85.8,44.8; 17.1,84.1,33.6];
btk_shem_2021_27 = [14.3,82.6,140;   14.6,84.5,105;    15.8,85.3,90;    17.3,83.8,85;   18.8,81.1,45]; # JTWC post-season btk
btk2_shem_2021_27 = [14.22,82.41,140;14.75,84.52,100.8;15.79,85.22,89.6;17.21,83.8,89.6;18.79,81.01,56]; # MFR data table
myvect = [myvect;my_shem_2021_27];
rsmcvect = [rsmcvect;rsmc_shem_2021_27];
btkvect = [btkvect;btk_shem_2021_27];
btk2vect = [btk2vect;btk2_shem_2021_27];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 28 ... FARAJI before 2021-02-10-21Z

my_shem_2021_28 = [16.3,84.2,55;     16.9,81.9,45;  17.3,80.0,50;    16.8,77.5,40;    15.7,73.4,50];
rsmc_shem_2021_28 = [16.6,84.0,56.0; 17.1,81.9,44.8;17.2,80.1,39.2;  16.5,77.7,33.6;  15.6,74.3,39.2];
btk_shem_2021_28 = [17.3,83.8,85;    18.8,81.1,45;  19.7,79.5,35;    19.5,74.9,20;    18.9,69.9,15]; # JTWC post-season btk
btk2_shem_2021_28 = [17.21,83.8,89.6;18.79,81.01,56;19.48,79.35,33.6;19.58,75.08,33.6;19.06,69.94,28]; # MFR data table
myvect = [myvect;my_shem_2021_28];
rsmcvect = [rsmcvect;rsmc_shem_2021_28];
btkvect = [btkvect;btk_shem_2021_28];
btk2vect = [btk2vect;btk2_shem_2021_28];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 29 ... FARAJI before 2021-02-12-21Z

my_shem_2021_29 = [19.4,78.5,45;      19.5,74.7,35;    18.5,69.9,35];
rsmc_shem_2021_29 = [18.9,78.5,33.6;  18.6,75.1,28.0;  18.1,70.6,28.0];
btk_shem_2021_29 = [19.7,79.5,35;     19.5,74.9,20;    18.9,69.9,15]; # JTWC post-season btk
btk2_shem_2021_29 = [19.48,79.35,33.6;19.58,75.08,33.6;19.06,69.94,28]; # MFR data table
myvect = [myvect;my_shem_2021_29];
rsmcvect = [rsmcvect;rsmc_shem_2021_29];
btkvect = [btkvect;btk_shem_2021_29];
btk2vect = [btk2vect;btk2_shem_2021_29];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 30 ... 11/93S before 2021-02-17-03Z

my_shem_2021_30 = [21.7,38.1,45;      23.6,38.0,60;  25.4,37.7,70;    28.3,38.7,80;   32.0,42.4,60];
rsmc_shem_2021_30 = [22.1,37.7,44.8;  23.5,37.7,61.6;24.8,37.1,84.0;  27.0,37.2,100.8;31.1,41.5,89.6];
btk_shem_2021_30 = [22.2,37.7,45;     24.1,37.2,60;  25.5,36.2,70;    28.7,37.6,55;   33.9,44.5,55]; # JTWC post-season btk
btk2_shem_2021_30 = [22.16,37.82,50.4;24.06,37.21,56;25.33,36.17,89.6;28.39,37.5,56;  34.24,44.73,61.6]; # MFR data table
myvect = [myvect;my_shem_2021_30];
rsmcvect = [rsmcvect;rsmc_shem_2021_30];
btkvect = [btkvect;btk_shem_2021_30];
btk2vect = [btk2vect;btk2_shem_2021_30];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 31 ... GUAMBE before 2021-02-18-03Z

my_shem_2021_31 = [23.8,36.5,60;    25.0,35.4,80;    27.5,35.9,70;  29.9,39.4,65];
rsmc_shem_2021_31 = [23.8,36.6,61.6;24.9,35.4,72.8;  27.4,35.9,89.6;30.3,40.9,100.8];
btk_shem_2021_31 = [24.1,37.2,60;   25.5,36.2,70;    28.7,37.6,55;  33.9,44.5,55]; # JTWC post-season btk
btk2_shem_2021_31 = [24.06,37.21,56;25.33,36.17,89.6;28.39,37.5,56; 34.24,44.73,61.6]; # MFR data table
myvect = [myvect;my_shem_2021_31];
rsmcvect = [rsmcvect;rsmc_shem_2021_31];
btkvect = [btkvect;btk_shem_2021_31];
btk2vect = [btk2vect;btk2_shem_2021_31];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 32 ... NIRAN before 2021-03-03-21Z
# wind speeds missing for 1-5 days and positions for 4-5 days

my_shem_2021_32 = [16.5,151.5,0;20.2,158.8,0;25.2,168.3,0];
rsmc_shem_2021_32 = [16.4,152.1,0;20.4,159.3,0;25.0,168.5,0];
btk_shem_2021_32 = [15.9,152.5,0;19.9,161.5,0;26.2,173.1,0]; # JTWC post-season btk
btk2_shem_2021_32 = [14.9,152.6,0;19.9,161.6,0;26.2,173.1,0]; # BoM spreadsheet (except day 3)
myvect = [myvect;my_shem_2021_32];
rsmcvect = [rsmcvect;rsmc_shem_2021_32];
btkvect = [btkvect;btk_shem_2021_32];
btk2vect = [btk2vect;btk2_shem_2021_32];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;4;4;4];

# Shem 33 ... NIRAN before 2021-03-04-21Z
# wind speeds missing for 1-5 days and positions for 4-5 days

my_shem_2021_33 = [19.4,160.2,0;  24.1,170.4,0];
rsmc_shem_2021_33 = [19.4,159.8,0;23.6,168.6,0];
btk_shem_2021_33 = [19.9,161.5,0; 26.2,173.1,0]; # JTWC post-season btk
btk2_shem_2021_33 = [19.9,161.6,0;26.2,173.1,0]; # BoM spreadsheet (day 1 only)
myvect = [myvect;my_shem_2021_33];
rsmcvect = [rsmcvect;rsmc_shem_2021_33];
btkvect = [btkvect;btk_shem_2021_33];
btk2vect = [btk2vect;btk2_shem_2021_33];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;4;4];

# Shem 34 ... HABANA before 2021-03-05-21Z

my_shem_2021_34 = [16.0,79.0,115;     16.7,81.3,110;   17.3,81.9,90;    18.3,78.9,90;    18.1,75.6,85];
rsmc_shem_2021_34 = [16.5,78.8,117.6; 17.2,80.4,100.8; 18.1,80.1,112.0; 18.0,77.9,117.6; 17.9,75.2,123.2];
btk_shem_2021_34 = [16.6,78.9,120;    17.4,80.4,100;   18.7,80.8,65;    17.9,78.1,85;    17.4,75.4,130]; # operationally from U.S. sources
btk2_shem_2021_34 = [16.43,78.7,117.6;17.53,80.73,89.6;18.58,80.83,67.2;17.89,78.11,78.4;17.31,75.41,112]; # MFR data table
myvect = [myvect;my_shem_2021_34];
rsmcvect = [rsmcvect;rsmc_shem_2021_34];
btkvect = [btkvect;btk_shem_2021_34];
btk2vect = [btk2vect;btk2_shem_2021_34];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 35 ... HABANA before 2021-03-06-21Z

my_shem_2021_35 = [17.2,80.1,110;     17.9,79.8,125;   17.9,76.8,135;   16.6,74.7,130;  16.8,73.3,130];
rsmc_shem_2021_35 = [17.3,80.3,100.8; 18.1,80.0,89.6;  18.0,76.9,106.4; 17.9,73.5,112.0;18.2,70.6,106.4];
btk_shem_2021_35 = [17.5,80.6,90;     18.5,80.6,70;    17.9,78.2,85;    17.4,75.5,125;  18.1,73.1,125]; # JTWC post-season btk
btk2_shem_2021_35 = [17.53,80.73,89.6;18.58,80.83,67.2;17.89,78.11,78.4;17.31,75.41,112;18.07,72.96,128.8]; # MFR data table
myvect = [myvect;my_shem_2021_35];
rsmcvect = [rsmcvect;rsmc_shem_2021_35];
btkvect = [btkvect;btk_shem_2021_35];
btk2vect = [btk2vect;btk2_shem_2021_35];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 36 ... HABANA before 2021-03-07-21Z

my_shem_2021_36 = [19.1,80.2,90;      18.9,77.0,105;   18.6,73.9,110;  19.0,72.2,105;    20.2,70.8,100];
rsmc_shem_2021_36 = [18.8,79.7,95.2;  18.5,76.9,106.4; 18.2,74.3,123.2;18.7,72.0,100.8;  20.4,71.3,72.8];
btk_shem_2021_36 = [18.5,80.6,70;     17.9,78.2,85;    17.4,75.5,125;  18.1,73.1,125;    19.9,70.9,110]; # JTWC post-season btk
btk2_shem_2021_36 = [18.58,80.83,67.2;17.89,78.11,78.4;17.31,75.41,112;18.07,72.96,128.8;19.68,70.78,112]; # MFR data table
myvect = [myvect;my_shem_2021_36];
rsmcvect = [rsmcvect;rsmc_shem_2021_36];
btkvect = [btkvect;btk_shem_2021_36];
btk2vect = [btk2vect;btk2_shem_2021_36];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 37 ... HABANA before 2021-03-08-21Z

my_shem_2021_37 = [18.1,78.1,90;      17.5,75.4,115;  18.2,73.3,120;    19.2,72.0,115;  21.3,72.5,85];
rsmc_shem_2021_37 = [18.0,78.0,95.2;  17.4,75.3,112.0;17.8,73.4,106.4;  19.2,72.7,112.0;21.0,73.5,84.0];
btk_shem_2021_37 = [17.9,78.2,85;     17.4,75.5,125;  18.1,73.1,125;    19.9,70.9,110;  21.4,70.0,75]; # JTWC post-season btk
btk2_shem_2021_37 = [17.89,78.11,78.4;17.31,75.41,112;18.07,72.96,128.8;19.68,70.78,112;21.31,70.05,72.8]; # MFR data table
myvect = [myvect;my_shem_2021_37];
rsmcvect = [rsmcvect;rsmc_shem_2021_37];
btkvect = [btkvect;btk_shem_2021_37];
btk2vect = [btk2vect;btk2_shem_2021_37];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 38 ... HABANA before 2021-03-09-21Z

my_shem_2021_38 = [17.4,75.3,90;     17.7,73.2,105;    18.9,71.9,100;  20.6,72.9,90;    21.8,73.9,70];
rsmc_shem_2021_38 = [17.4,75.1,106.4;17.8,73.0,112.0;  19.1,71.5,106.4;20.6,71.6,89.6;  21.8,72.9,67.2];
btk_shem_2021_38 = [17.4,75.5,125;   18.1,73.1,125;    19.9,70.9,110;  21.4,70.0,75;    22.2,71.1,55]; # JTWC post-season btk
btk2_shem_2021_38 = [17.31,75.41,112;18.07,72.96,128.8;19.68,70.78,112;21.31,70.05,72.8;22.33,71.12,63.84]; # MFR data table
myvect = [myvect;my_shem_2021_38];
rsmcvect = [rsmcvect;rsmc_shem_2021_38];
btkvect = [btkvect;btk_shem_2021_38];
btk2vect = [btk2vect;btk2_shem_2021_38];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 39 ... HABANA before 2021-03-10-21Z

my_shem_2021_39 = [17.8,73.1,120;      19.0,71.5,105;  20.1,71.1,85;    21.3,71.8,55;     21.2,71.3,30];
rsmc_shem_2021_39 = [17.8,73.2,123.2;  19.0,71.3,117.6;20.1,71.0,100.8; 20.5,71.8,72.8;   20.7,71.7,50.4];
btk_shem_2021_39 = [18.1,73.1,125;     19.9,70.9,110;  21.4,70.0,75;    22.2,71.1,55;     22.1,71.5,30]; # JTWC post-season btk
btk2_shem_2021_39 = [18.07,72.96,128.8;19.68,70.78,112;21.31,70.05,72.8;22.33,71.12,63.84;22.08,71.5,41.44]; # MFR data table
myvect = [myvect;my_shem_2021_39];
rsmcvect = [rsmcvect;rsmc_shem_2021_39];
btkvect = [btkvect;btk_shem_2021_39];
btk2vect = [btk2vect;btk2_shem_2021_39];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 40 ... HABANA before 2021-03-11-21Z

my_shem_2021_40 = [19.3,71.2,120;    20.6,70.9,100;   20.6,71.3,55;     20.5,70.3,45;    21.6,67.7,25];
rsmc_shem_2021_40 = [19.4,71.3,117.6;20.5,71.2,106.4; 20.6,70.9,61.6;   20.7,70.3,39.2;  21.4,67.9,28.0];
btk_shem_2021_40 = [19.9,70.9,110;   21.4,70.0,75;    22.2,71.1,55;     22.1,71.5,30;    23.0,70.1,25]; # JTWC post-season btk
btk2_shem_2021_40 = [19.68,70.78,112;21.31,70.05,72.8;22.33,71.12,63.84;22.08,71.5,41.44;22.99,70.23,33.6]; # MFR data table
myvect = [myvect;my_shem_2021_40];
rsmcvect = [rsmcvect;rsmc_shem_2021_40];
btkvect = [btkvect;btk_shem_2021_40];
btk2vect = [btk2vect;btk2_shem_2021_40];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 41 ... 98S/15 before 2021-03-27-21Z

my_shem_2021_41 = [10.7,69.0,35;8.9,70.8,30];
rsmc_shem_2021_41 = [10.4,68.6,28.0;8.8,70.4,22.4];
btk_shem_2021_41 = [10.7,69.0,25;8.5,70.2,20]; # operationally from U.S. sources (nothing in post-season file)
btk2_shem_2021_41 = [10.7,69.0,25;8.5,70.2,22.4]; #placeholder (nothing in MFR data table)
myvect = [myvect;my_shem_2021_41];
rsmcvect = [rsmcvect;rsmc_shem_2021_41];
btkvect = [btkvect;btk_shem_2021_41];
btk2vect = [btk2vect;btk2_shem_2021_41];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 42 ... 99S/22U before 2021-04-04-03Z
# wind speeds missing for 1-5 days and positions for 4-5 days

my_shem_2021_42 = [10.7,122.9,0;  12.2,120.3,0;14.5,116.7,0];
rsmc_shem_2021_42 = [10.7,122.8,0;12.1,120.0,0;14.5,116.7,0];
btk_shem_2021_42 = [10.7,122.4,0; 11.1,119.8,0;13.5,117.8,0]; # JTWC post-season btk
btk2_shem_2021_42 = [10.7,122.6,0;11.1,119.8,0;13.1,117.8,0]; # BoM spreadsheet
myvect = [myvect;my_shem_2021_42];
rsmcvect = [rsmcvect;rsmc_shem_2021_42];
btkvect = [btkvect;btk_shem_2021_42];
btk2vect = [btk2vect;btk2_shem_2021_42];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;4;4;4];

# Shem 43 ... 26S/22U before 2021-04-04-21Z
# wind speeds missing for 1-5 days and positions for 4-5 days

my_shem_2021_43 = [11.5,120.7,0;13.5,117.0,0;16.4,113.4,0];
rsmc_shem_2021_43 = [11.6,120.5,0;13.5,117.2,0;16.6,113.4,0];
btk_shem_2021_43 = [11.3,120.5,0;12.4,119.1,0;15.9,114.2,0]; # JTWC post-season btk
btk2_shem_2021_43 = [11.1,120.4,0;12.6,118.8,0;16.0,112.3,0]; # BoM spreadsheet
myvect = [myvect;my_shem_2021_43];
rsmcvect = [rsmcvect;rsmc_shem_2021_43];
btkvect = [btkvect;btk_shem_2021_43];
btk2vect = [btk2vect;btk2_shem_2021_43];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;4;4;4];

# Shem 44 ... SEROJA before 2021-04-05-21Z
# wind speeds missing for 1-5 days and positions for 4-5 days

my_shem_2021_44 = [13.1,117.9,0;15.7,114.6,0;17.9,111.7,0];
rsmc_shem_2021_44 = [12.8,117.6,0;15.4,114.1,0;18.0,111.2,0];
btk_shem_2021_44 = [12.4,119.1,0;15.9,114.2,0;18.4,110.8,0]; # JTWC post-season btk
btk2_shem_2021_44 = [12.6,118.8,0;15.6,114.1,0;18.7,111.3,0]; # BoM spreadsheet
myvect = [myvect;my_shem_2021_44];
rsmcvect = [rsmcvect;rsmc_shem_2021_44];
btkvect = [btkvect;btk_shem_2021_44];
btk2vect = [btk2vect;btk2_shem_2021_44];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;4;4;4];

# Shem 45 ... SEROJA before 2021-04-06-03Z
# wind speeds missing for 1-5 days and positions for 4-5 days

my_shem_2021_45 = [12.9,117.4,0;14.9,113.9,0;16.9,109.9,0];
rsmc_shem_2021_45 = [12.9,117.6,0;15.1,114.0,0;17.7,111.4,0];
btk_shem_2021_45 = [13.5,117.8,0;16.2,112.5,0;19.4,109.7,0]; # JTWC post-season btk
btk2_shem_2021_45 = [13.1,117.8,0;16.0,112.3,0;19.2,110.4,0]; # BoM spreadsheet
myvect = [myvect;my_shem_2021_45];
rsmcvect = [rsmcvect;rsmc_shem_2021_45];
btkvect = [btkvect;btk_shem_2021_45];
btk2vect = [btk2vect;btk2_shem_2021_45];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;4;4;4];

# Shem 46 ... SEROJA before 2021-04-06-21Z
# wind speeds missing for 1-5 days and positions for 4-5 days

my_shem_2021_46 = [14.3,116.2,0;17.1,113.0,0;20.1,111.0,0];
rsmc_shem_2021_46 = [14.4,115.7,0;16.8,112.8,0;19.3,110.8,0];
btk_shem_2021_46 = [15.9,114.2,0;18.4,110.8,0;20.4,108.4,0]; # JTWC post-season btk
btk2_shem_2021_46 = [15.6,114.1,0;18.7,111.3,0;20.5,108.3,0]; # BoM spreadsheet
myvect = [myvect;my_shem_2021_46];
rsmcvect = [rsmcvect;rsmc_shem_2021_46];
btkvect = [btkvect;btk_shem_2021_46];
btk2vect = [btk2vect;btk2_shem_2021_46];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;4;4;4];

# Shem 47 ... SEROJA before 2021-04-07-15Z
# wind speeds missing for 1-5 days and positions for 4-5 days

my_shem_2021_47 = [17.3,112.1,0;19.7,110.0,0;21.9,109.2,0];
rsmc_shem_2021_47 = [17.0,113.0,0;19.5,110.9,0;21.8,109.6,0];
btk_shem_2021_47 = [17.5,111.2,0;20.1,109.0,0;21.6,108.6,0]; # JTWC post-season btk
btk2_shem_2021_47 = [17.7,111.5,0;20.0,108.9,0;21.7,108.9,0]; # BoM spreadsheet
myvect = [myvect;my_shem_2021_47];
rsmcvect = [rsmcvect;rsmc_shem_2021_47];
btkvect = [btkvect;btk_shem_2021_47];
btk2vect = [btk2vect;btk2_shem_2021_47];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;4;4;4];

# Shem 48 ... SEROJA before 2021-04-07-21Z
# wind speeds missing for 1-5 days and positions for 4-5 days

my_shem_2021_48 = [17.5,110.5,0;  20.0,108.9,0;22.8,108.7,0];
rsmc_shem_2021_48 = [18.0,112.0,0;20.3,110.0,0;23.0,109.4,0];
btk_shem_2021_48 = [18.4,110.8,0; 20.4,108.4,0;22.8,109.6,0]; # JTWC post-season btk
btk2_shem_2021_48 = [18.7,111.3,0;20.5,108.3,0;22.4,109.7,0];
myvect = [myvect;my_shem_2021_48];
rsmcvect = [rsmcvect;rsmc_shem_2021_48];
btkvect = [btkvect;btk_shem_2021_48];
btk2vect = [btk2vect;btk2_shem_2021_48];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;4;4;4];

# Shem 49 ... SEROJA before 2021-04-08-03Z
# wind speeds missing for 1-5 days and positions for 4-5 days

my_shem_2021_49 = [18.0,110.6,0;  20.3,108.8,0;23.3,109.3,0];
rsmc_shem_2021_49 = [18.7,110.4,0;20.7,108.6,0;23.6,109.9,0];
btk_shem_2021_49 = [19.4,109.7,0; 20.5,108.0,0;24.3,110.5,0]; # JTWC post-season btk
btk2_shem_2021_49 = [19.2,110.4,0;20.5,107.9,0;24.3,110.5,0]; # BoM spreadsheet
myvect = [myvect;my_shem_2021_49];
rsmcvect = [rsmcvect;rsmc_shem_2021_49];
btkvect = [btkvect;btk_shem_2021_49];
btk2vect = [btk2vect;btk2_shem_2021_49];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;4;4;4];

# Wpac 01 ... 02W before 2021-04-13-21Z

my_wpac_2021_01 = [9.3,136.1,70;    10.3,133.3,85;   12.7,130.4,115;  14.4,130.0,125];
rsmc_wpac_2021_01 = [9.2,136.0,61.6;10.1,133.3,78.4; 12.3,130.0,95.2; 13.9,129.0,100.8];
btk_wpac_2021_01 = [8.6,135.2,70;   10.0,132.1,110;  12.6,128.4,165;  13.9,126.5,125]; # JTWC post-season btk
btk2_wpac_2021_01 = [8.7,135.3,78.4;10.0,132.1,100.8;12.6,128.4,134.4;13.9,126.5,117.6]; # JMA best track
myvect = [myvect;my_wpac_2021_01];
rsmcvect = [rsmcvect;rsmc_wpac_2021_01];
btkvect = [btkvect;btk_wpac_2021_01];
btk2vect = [btk2vect;btk2_wpac_2021_01];
leadtimevect = [leadtimevect;2;3;4;5];
basinvect = [basinvect;1;1;1;1];

# Wpac 02 ... SURIGAE before 2021-04-14-21Z

my_wpac_2021_02 = [10.4,132.4,80;     12.3,129.2,100;  14.7,128.9,120;  16.7,130.3,110];
rsmc_wpac_2021_02 = [10.2,132.1,72.8; 12.3,129.3,95.2; 13.8,127.2,106.4;15.4,127.5,112.0];
btk_wpac_2021_02 = [10.0,132.1,110;   12.6,128.4,165;  13.9,126.5,125;  15.1,126.2,115]; # JTWC post-season btk
btk2_wpac_2021_02 = [10.0,132.1,100.8;12.6,128.4,134.4;13.9,126.5,117.6;15.2,126.3,106.4]; # JMA best track
myvect = [myvect;my_wpac_2021_02];
rsmcvect = [rsmcvect;rsmc_wpac_2021_02];
btkvect = [btkvect;btk_wpac_2021_02];
btk2vect = [btk2vect;btk2_wpac_2021_02];
leadtimevect = [leadtimevect;2;3;4;5];
basinvect = [basinvect;1;1;1;1];

# Wpac 03 ... SURIGAE before 2021-04-15-15Z

my_wpac_2021_03 = [9.6,133.2,75;    11.2,129.6,100;  13.4,127.2,110;  15.1,126.2,115;  17.0,127.2,110];
rsmc_wpac_2021_03 = [9.7,132.8,72.8;11.3,129.5,95.2; 13.3,127.0,106.4;14.9,126.8,112.0;16.8,127.5,106.4];
btk_wpac_2021_03 = [9.4,133.1,95;   12.0,129.2,170;  13.6,126.8,125;  14.7,126.3,120;  16.4,125.9,120]; # JTWC post-season btk
btk2_wpac_2021_03 = [9.5,133.1,95.2;12.1,129.2,123.2;13.6,126.8,117.6;14.9,126.3,112.0;16.4,125.9,100.8]; # JMA best track
myvect = [myvect;my_wpac_2021_03];
rsmcvect = [rsmcvect;rsmc_wpac_2021_03];
btkvect = [btkvect;btk_wpac_2021_03];
btk2vect = [btk2vect;btk2_wpac_2021_03];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 04 ... SURIGAE before 2021-04-15-21Z

my_wpac_2021_04 = [9.8,132.3,85;      11.7,129.0,105;  13.6,127.2,120;  15.3,127.5,110;  17.6,128.8,100];
rsmc_wpac_2021_04 = [10.0,132.0,78.4; 11.9,128.7,100.8;13.8,126.7,112.0;15.3,127.0,112.0;17.0,127.8,100.8];
btk_wpac_2021_04 = [10.0,132.1,110;   12.6,128.4,165;  13.9,126.5,125;  15.1,126.2,115;  16.9,125.5,115]; # JTWC post-season btk
btk2_wpac_2021_04 = [10.0,132.1,100.8;12.6,128.4,134.4;13.9,126.5,117.6;15.2,126.3,106.4;17.0,125.5,100.8]; # JMA best track
myvect = [myvect;my_wpac_2021_04];
rsmcvect = [rsmcvect;rsmc_wpac_2021_04];
btkvect = [btkvect;btk_wpac_2021_04];
btk2vect = [btk2vect;btk2_wpac_2021_04];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 05 ... SURIGAE before 2021-04-19-09Z

my_wpac_2021_05 = [15.8,125.5,120;    17.7,124.7,105;  19.6,125.2,95;  21.6,127.0,80;  22.3,131.8,50];
rsmc_wpac_2021_05 = [15.9,125.9,112.0;17.7,124.6,100.8;19.3,124.3,95.2;21.5,127.4,84.0;22.5,131.5,72.8];
btk_wpac_2021_05 = [15.9,126.0,125;   18.1,124.9,115;  20.3,125.3,100; 22.9,129.2,75;  22.7,131.9,45]; # JTWC post-season btk
btk2_wpac_2021_05 = [15.9,126.0,100.8;18.2,125.0,100.8;20.3,125.4,95.2;23.1,128.9,67.2;22.7,131.8,50.4]; # JMA best track
myvect = [myvect;my_wpac_2021_05];
rsmcvect = [rsmcvect;rsmc_wpac_2021_05];
btkvect = [btkvect;btk_wpac_2021_05];
btk2vect = [btk2vect;btk2_wpac_2021_05];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 06 ... SURIGAE before 2021-04-19-21Z

my_wpac_2021_06 = [16.7,125.2,110;    18.5,124.5,100;  20.2,125.7,80;  21.4,129.7,65;  21.7,135.0,40];
rsmc_wpac_2021_06 = [16.6,125.0,106.4;18.4,123.7,100.8;20.3,125.0,89.6;22.6,129.1,78.4;22.5,133.4,72.8];
btk_wpac_2021_06 = [16.9,125.6,115;   19.3,124.8,105;  21.6,126.9,90;  23.2,130.5,55;  21.7,134.1,40]; # JTWC post-season btk
btk2_wpac_2021_06 = [17.0,125.5,100.8;19.3,124.8,95.2; 21.6,127.2,84.0;23.4,130.5,56.0;21.7,134.1,39.2]; # JMA best track
myvect = [myvect;my_wpac_2021_06];
rsmcvect = [rsmcvect;rsmc_wpac_2021_06];
btkvect = [btkvect;btk_wpac_2021_06];
btk2vect = [btk2vect;btk2_wpac_2021_06];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 07 ... SURIGAE before 2021-04-20-15Z

my_wpac_2021_07 = [18.2,124.6,110;    20.4,125.8,90;  22.1,129.6,65;  22.0,132.8,50;  22.1,138.7,0];
rsmc_wpac_2021_07 = [18.4,124.5,95.2; 19.9,125.2,89.6;21.9,128.9,67.2;21.3,133.2,56.0;22.7,139.8,0];
btk_wpac_2021_07 = [18.8,124.8,115;   21.1,126.1,95;  23.3,129.9,60;  22.2,132.8,40;  23.9,141.0,0]; # JTWC post-season btk (except day 5)
btk2_wpac_2021_07 = [18.8,124.8,100.8;20.9,126.2,89.6;23.4,129.8,60.6;22.2,132.8,44.8;23.9,141.0,0]; # JMA best track
myvect = [myvect;my_wpac_2021_07];
rsmcvect = [rsmcvect;rsmc_wpac_2021_07];
btkvect = [btkvect;btk_wpac_2021_07];
btk2vect = [btk2vect;btk2_wpac_2021_07];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 08 ... SURIGAE before 2021-04-21-15Z

my_wpac_2021_08 = [20.8,125.6,90;22.3,130.0,70;22.6,134.9,55;23.9,141.1,0;26.8,150.4,0];
rsmc_wpac_2021_08 = [20.7,126.0,84.0;22.3,129.9,67.2;21.5,133.8,56.0;22.1,140.4,0;23.7,146.5,0];
btk_wpac_2021_08 = [21.1,126.1,95;23.3,129.9,60;22.2,132.8,40;23.9,141.0,0;37.1,156.5,0]; # JTWC post-season btk (except days 4&5)
btk2_wpac_2021_08 = [20.9,126.2,89.6;23.4,129.8,60.6;22.2,132.8,44.8;23.9,141.0,0;37.1,156.5,0]; # JMA best track
myvect = [myvect;my_wpac_2021_08];
rsmcvect = [rsmcvect;rsmc_wpac_2021_08];
btkvect = [btkvect;btk_wpac_2021_08];
btk2vect = [btk2vect;btk2_wpac_2021_08];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Nio 01 ... 01A before 2021-05-14-21Z

my_nio_2021_01 = [14.1,71.6,70;    16.9,70.3,95;  19.6,68.8,110; 22.5,68.3,80];
rsmc_nio_2021_01 = [15.1,72.2,63.6;17.9,70.9,84.8;20.6,69.3,90.1;23.8,69.4,53.0];
btk_nio_2021_01 = [14.4,73.0,70;   17.8,72.0,115; 20.9,71.3,110; 24.2,73.2,45]; # JTWC post-season btk
btk2_nio_2021_01 = [14.5,72.6,63.6;17.5,72.0,90.1;20.9,71.1,90.1;24.1,73.0,31.8]; # IMD prelim report
myvect = [myvect;my_nio_2021_01];
rsmcvect = [rsmcvect;rsmc_nio_2021_01];
btkvect = [btkvect;btk_nio_2021_01];
btk2vect = [btk2vect;btk2_nio_2021_01];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Nio 02 ... TAUKTAE before 2021-05-15-15Z

my_nio_2021_02 = [16.7,71.8,85;    19.4,70.2,105;  22.6,70.0,100];
rsmc_nio_2021_02 = [16.4,71.5,79.5;19.4,70.1,90.1; 22.3,69.4,84.8];
btk_nio_2021_02 = [16.8,72.5,100;  20.0,71.4,100;  23.2,71.9,55]; # JTWC post-season btk
btk2_nio_2021_02 = [16.7,72.5,79.5;20.1,71.3,100.7;23.1,72.3,37.1]; # IMD prelim report
myvect = [myvect;my_nio_2021_02];
rsmcvect = [rsmcvect;rsmc_nio_2021_02];
btkvect = [btkvect;btk_nio_2021_02];
btk2vect = [btk2vect;btk2_nio_2021_02];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Nio 03 ... TAUKTAE before 2021-05-15-21Z

my_nio_2021_03 = [17.2,71.6,100;   20.5,70.4,120; 23.9,71.7,70];
rsmc_nio_2021_03 = [17.3,71.5,84.8;20.2,70.5,90.1;23.4,71.3,31.8];
btk_nio_2021_03 = [17.8,72.0,115;  20.9,71.3,110; 24.2,73.2,45]; # JTWC post-season btk
btk2_nio_2021_03 = [17.5,72.0,90.1;20.9,71.1,90.1;24.1,73.0,31.8]; # IMD prelim report
myvect = [myvect;my_nio_2021_03];
rsmcvect = [rsmcvect;rsmc_nio_2021_03];
btkvect = [btkvect;btk_nio_2021_03];
btk2vect = [btk2vect;btk2_nio_2021_03];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Nio 04 ... TAUKTAE before 2021-05-16-03Z

my_nio_2021_04 = [17.8,71.4,110;    21.2,71.3,90;  24.5,72.7,45];
rsmc_nio_2021_04 = [18.1,71.2,90.1; 21.0,70.6,90.1;24.2,71.7,21.2];
btk_nio_2021_04 = [18.3,71.8,120;   21.4,71.2,90;  25.0,74.3,30]; # JTWC post-season btk
btk2_nio_2021_04 = [18.5,71.5,106.0;21.5,71.2,68.9;24.5,73.3,26.5]; # IMD prelim report
myvect = [myvect;my_nio_2021_04];
rsmcvect = [rsmcvect;rsmc_nio_2021_04];
btkvect = [btkvect;btk_nio_2021_04];
btk2vect = [btk2vect;btk2_nio_2021_04];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Nio 05 ... TAUKTAE before 2021-05-16-21Z

my_nio_2021_05 = [21.1,71.0,110;   24.1,72.5,50];
rsmc_nio_2021_05 = [20.5,70.9,90.1;23.4,71.7,31.8];
btk_nio_2021_05 = [20.9,71.3,110;  24.2,73.2,45]; # JTWC best track
btk2_nio_2021_05 = [20.9,71.1,90.1;24.1,73.0,31.8]; # IMD prelim report
myvect = [myvect;my_nio_2021_05];
rsmcvect = [rsmcvect;rsmc_nio_2021_05];
btkvect = [btkvect;btk_nio_2021_05];
btk2vect = [btk2vect;btk2_nio_2021_05];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Nio 06 ... 93B before 2021-05-23-21Z

my_nio_2021_06 = [16.7,88.9,55;    19.4,87.4,85;  21.2,87.0,60];
rsmc_nio_2021_06 = [17.6,89.1,58.3;20.0,87.9,84.8;22.2,86.7,56.0];
btk_nio_2021_06 = [17.6,89.0,50;   20.4,87.8,65;  22.5,85.6,35]; # JTWC post-season btk
btk2_nio_2021_06 = [17.6,89.0,53.0;20.1,87.8,74.2;22.5,86.0,31.8]; # IMD prelim report
myvect = [myvect;my_nio_2021_06];
rsmcvect = [rsmcvect;rsmc_nio_2021_06];
btkvect = [btkvect;btk_nio_2021_06];
btk2vect = [btk2vect;btk2_nio_2021_06];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Nio 07 ... YAAS before 2021-05-24-21Z

my_nio_2021_07 = [19.7,87.4,65];
rsmc_nio_2021_07 = [20.3,87.6,90.1];
btk_nio_2021_07 = [20.4,87.8,65];  # JTWC post-season btk
btk2_nio_2021_07 = [20.1,87.8,74.2]; # IMD prelim report
myvect = [myvect;my_nio_2021_07];
rsmcvect = [rsmcvect;rsmc_nio_2021_07];
btkvect = [btkvect;btk_nio_2021_07];
btk2vect = [btk2vect;btk2_nio_2021_07];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;2];

# Nio 08 ... YAAS before 2021-05-25-03Z

my_nio_2021_08 = [20.6,86.8,70;    22.5,85.4,40];
rsmc_nio_2021_08 = [20.7,87.4,90.1;22.5,85.6,37.1];
btk_nio_2021_08 = [20.4,87.8,60;   23.4,85.6,25]; # JTWC best track
btk2_nio_2021_08 = [20.8,87.3,79.5;22.8,85.8,31.8]; # IMD prelim report
myvect = [myvect;my_nio_2021_08];
rsmcvect = [rsmcvect;rsmc_nio_2021_08];
btkvect = [btkvect;btk_nio_2021_08];
btk2vect = [btk2vect;btk2_nio_2021_08];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Shem 02 ... 07U/93P before 2021-12-10-15Z

my_shem_2022_02 = [12.0,156.5,40;    15.0,158.2,65;  18.4,161.5,75;  21.9,166.9,60;  27.5,173.5,55];
rsmc_shem_2022_02 = [12.1,156.6,39.2;15.0,158.3,61.6;18.5,161.6,72.8;21.6,166.9,56.0;25.9,172.7,56.0];
btk_shem_2022_02 = [11.5,156.6,30;   15.6,158.0,55;  19.2,162.3,55;  23.3,169.0,55;  28.4,176.5,50]; # JTWC best track
btk2_shem_2022_02 = [11.6,156.5,33.6;15.5,158.0,50.4;19.3,162.4,67.2;23.3,169.3,56.0;28.5,176.6,50.4]; # BoM spreadsheet
myvect = [myvect;my_shem_2022_02];
rsmcvect = [rsmcvect;rsmc_shem_2022_02];
btkvect = [btkvect;btk_shem_2022_02];
btk2vect = [btk2vect;btk2_shem_2022_02];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 03 ... 07U/93P before 2021-12-11-21Z

my_shem_2022_03 = [16.7,159.0,50;    19.4,163.1,70;  24.1,169.2,55;  32.8,175.3,55];
rsmc_shem_2022_03 = [16.7,158.9,50.4;19.3,163.2,67.2;23.3,169.6,56.0;31.7,175.7,56.0];
btk_shem_2022_03 = [16.4,158.8,65;   20.1,163.8,55;  24.2,170.6,55;  30.6,179.0,55]; # JTWC best track
btk2_shem_2022_03 = [16.5,158.8,56.0;20.0,163.8,67.2;24.2,170.6,55;  30.6,179.0,55]; # BoM spreadsheet (except days 3&4)
myvect = [myvect;my_shem_2022_03];
rsmcvect = [rsmcvect;rsmc_shem_2022_03];
btkvect = [btkvect;btk_shem_2022_03];
btk2vect = [btk2vect;btk2_shem_2022_03];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;4;4;4;4];

# Shem 04 ... 07U/03P before 2021-12-12-03Z

my_shem_2022_04 = [17.6,159.5,60;    20.1,164.3,70;  24.9,170.6,55];
rsmc_shem_2022_04 = [17.8,159.5,56.0;20.3,164.6,67.2;25.2,171.1,56.0];
btk_shem_2022_04 = [17.4,159.9,70;   21.1,165.4,50;  25.3,172.7,55]; # JTWC best track
btk2_shem_2022_04 = [17.4,159.7,67.2;21.3,165.4,61.6;25.2,172.0,56.0]; # BoM spreadsheet
myvect = [myvect;my_shem_2022_04];
rsmcvect = [rsmcvect;rsmc_shem_2022_04];
btkvect = [btkvect;btk_shem_2022_04];
btk2vect = [btk2vect;btk2_shem_2022_04];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;4;4;4];

# Shem 05 ... RUBY before 2021-12-12-21Z

my_shem_2022_05 = [19.5,163.0,75;    23.0,168.9,65;  29.9,175.3,55];
rsmc_shem_2022_05 = [19.6,163.0,72.8;22.9,169.3,67.2;29.3,175.4,56.0];
btk_shem_2022_05 = [20.1,163.8,55;   24.2,170.6,55;  30.6,179.0,55]; # JTWC best track
btk2_shem_2022_05 = [20.0,163.8,67.2;24.2,170.6,45;  30.6,179.0,55]; # BoM spreadsheet (except days 2&3)
myvect = [myvect;my_shem_2022_05];
rsmcvect = [rsmcvect;rsmc_shem_2022_05];
btkvect = [btkvect;btk_shem_2022_05];
btk2vect = [btk2vect;btk2_shem_2022_05];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;4;4;4];

# Wpac 33 ... 06W before 2021-12-12-21Z

my_wpac_2021_33 = [6.6,139.4,45;    8.5,134.5,65;  8.8,129.2,85;  9.0,122.9,75;   10.3,118.3,80];
rsmc_wpac_2021_33 = [6.8,139.5,44.8;8.6,134.4,67.2;9.0,129.3,89.6;9.5,123.5,72.8; 10.4,118.5,84.0];
btk_wpac_2021_33 = [6.7,138.6,45;   8.7,133.4,65;  9.4,128.9,125; 10.2,122.5,110; 10.7,117.4,90]; # JTWC post-season btk
btk2_wpac_2021_33 = [6.8,138.4,50.4;8.6,133.4,78.4;9.4,128.9,95.2;10.0,122.6,95.2;10.6,117.4,89.6]; # JMA best track
myvect = [myvect;my_wpac_2021_33];
rsmcvect = [rsmcvect;rsmc_wpac_2021_33];
btkvect = [btkvect;btk_wpac_2021_33];
btk2vect = [btk2vect;btk2_wpac_2021_33];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 34 ... RAI before 2021-12-13-21Z

my_wpac_2021_34 = [8.5,134.5,65;    9.4,130.0,90;  10.3,124.8,95;  11.4,120.1,80;  12.3,115.5,90];
rsmc_wpac_2021_34 = [8.5,134.4,67.2;9.3,129.8,89.6;10.2,124.6,95.2;11.1,120.1,78.4;12.2,115.6,89.6];
btk_wpac_2021_34 = [8.7,133.4,65;   9.4,128.9,125; 10.2,122.5,110; 10.7,117.4,90;  12.6,112.2,130]; # JTWC post-season btk
btk2_wpac_2021_34 = [8.6,133.4,78.4;9.4,128.9,95.2;10.0,122.6,95.2;10.6,117.4,89.6;12.5,112.2,117.6]; # JMA best track
myvect = [myvect;my_wpac_2021_34];
rsmcvect = [rsmcvect;rsmc_wpac_2021_34];
btkvect = [btkvect;btk_wpac_2021_34];
btk2vect = [btk2vect;btk2_wpac_2021_34];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 35 ... RAI before 2021-12-14-03Z

my_wpac_2021_35 = [9.1,133.0,75;    9.8,128.3,95;   10.3,122.8,80;  11.6,118.2,80;  12.8,113.2,85];
rsmc_wpac_2021_35 = [9.0,133.0,78.4;9.6,128.5,95.2; 10.1,123.2,78.4;11.3,118.7,78.4;12.6,114.8,84.0];
btk_wpac_2021_35 = [8.8,132.4,70;   9.7,127.6,150;  10.0,121.1,95;  11.0,115.9,100; 13.1,111.4,120]; # JTWC post-season btk
btk2_wpac_2021_35 = [8.7,132.3,84.0;9.7,127.6,112.0;10.0,121.2,89.6;10.8,116.0,95.2;13.1,111.4,117.5]; # JMA best track
myvect = [myvect;my_wpac_2021_35];
rsmcvect = [rsmcvect;rsmc_wpac_2021_35];
btkvect = [btkvect;btk_wpac_2021_35];
btk2vect = [btk2vect;btk2_wpac_2021_35];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 36 ... RAI before 2021-12-14-21Z

my_wpac_2021_36 = [9.8,128.7,90;    10.0,123.5,75;  11.1,118.2,80;  12.6,113.2,90;   15.0,110.8,70];
rsmc_wpac_2021_36 = [9.8,128.8,89.6;9.9,123.1,78.4; 10.9,118.2,84.0;12.2,113.3,89.6; 14.6,110.7,78.4];
btk_wpac_2021_36 = [9.4,128.9,125;  10.2,122.5,110; 10.7,117.4,90;  12.6,112.2,130;  15.9,110.7,75]; # JTWC post-season btk
btk2_wpac_2021_36 = [9.4,128.9,95.2;10.0,122.6,95.2;10.6,117.4,89.6;12.5,112.2,117.6;16.1,110.7,89.6]; # JMA best track
myvect = [myvect;my_wpac_2021_36];
rsmcvect = [rsmcvect;rsmc_wpac_2021_36];
btkvect = [btkvect;btk_wpac_2021_36];
btk2vect = [btk2vect;btk2_wpac_2021_36];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 37 ... RAI before 2021-12-15-21Z

my_wpac_2021_37 = [9.8,122.9,90;     11.1,117.5,80;  12.6,112.2,85;   15.0,110.2,65;  18.0,111.2,40];
rsmc_wpac_2021_37 = [9.8,122.8,84.0; 11.0,117.5,78.4;12.4,112.3,84.0; 15.0,110.4,61.6;17.9,111.1,44.8];
btk_wpac_2021_37 = [10.2,122.5,110;  10.7,117.4,90;  12.6,112.2,130;  15.9,110.7,75;  19.9,113.1,40]; # JTWC post-season btk
btk2_wpac_2021_37 = [10.0,122.6,95.2;10.6,117.4,89.6;12.5,112.2,117.6;16.1,110.7,89.6;19.9,112.8,33.6]; # JMA best track (except day 5 wind)
myvect = [myvect;my_wpac_2021_37];
rsmcvect = [rsmcvect;rsmc_wpac_2021_37];
btkvect = [btkvect;btk_wpac_2021_37];
btk2vect = [btk2vect;btk2_wpac_2021_37];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 38 ... RAI before 2021-12-16-03Z

my_wpac_2021_38 = [9.8,121.7,110;    11.2,116.4,105; 13.0,111.8,100;  16.1,110.7,65;  18.8,112.0,40];
rsmc_wpac_2021_38 = [9.9,121.7,89.6; 11.2,116.2,95.2;13.0,111.6,84.0; 16.1,110.6,61.6;18.9,111.8,44.8];
btk_wpac_2021_38 = [10.0,121.1,95;   11.0,115.9,100; 13.1,111.4,120;  17.3,110.8,70;  20.6,113.8,35]; # JTWC post-season btk
btk2_wpac_2021_38 = [10.0,121.2,89.6;10.8,116.0,95.2;13.1,111.4,117.6;17.2,110.9,78.4;20.8,114.0,28.0]; # JMA best track (except day 5 wind)
myvect = [myvect;my_wpac_2021_38];
rsmcvect = [rsmcvect;rsmc_wpac_2021_38];
btkvect = [btkvect;btk_wpac_2021_38];
btk2vect = [btk2vect;btk2_wpac_2021_38];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 39 ... RAI before 2021-12-16-21Z

my_wpac_2021_39 = [10.9,116.8,95;    12.9,111.6,90;   16.3,109.9,75;  19.0,111.2,45];
rsmc_wpac_2021_39 = [10.7,116.9,95.2;12.3,111.7,89.6; 15.4,109.7,78.4;18.0,110.9,56.0];
btk_wpac_2021_39 = [10.7,117.4,90;   12.6,112.2,130;  15.9,110.7,75;  19.9,113.1,40]; # JTWC post-season btk
btk2_wpac_2021_39 = [10.6,117.4,89.6;12.5,112.2,117.6;16.1,110.7,89.6;19.9,112.8,33.6]; # JMA best track (except day 4 wind)
myvect = [myvect;my_wpac_2021_39];
rsmcvect = [rsmcvect;rsmc_wpac_2021_39];
btkvect = [btkvect;btk_wpac_2021_39];
btk2vect = [btk2vect;btk2_wpac_2021_39];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Wpac 40 ... RAI before 2021-12-17-03Z

my_wpac_2021_40 = [11.0,115.3,95;13.1,110.6,85;17.3,109.9,55;19.6,111.6,40];
rsmc_wpac_2021_40 = [11.0,115.4,89.6;12.9,110.6,84.0;16.7,109.7,61.6;18.9,111.3,39.2];
btk_wpac_2021_40 = [11.0,115.9,100;13.1,111.4,120;17.3,110.8,70;20.6,113.8,35]; # JTWC post-season btk
btk2_wpac_2021_40 = [10.8,116.0,95.2;13.1,111.4,117.6;17.2,110.9,78.4;20.8,114.0,28.0]; # JMA best track (except day 4 wind)
myvect = [myvect;my_wpac_2021_40];
rsmcvect = [rsmcvect;rsmc_wpac_2021_40];
btkvect = [btkvect;btk_wpac_2021_40];
btk2vect = [btk2vect;btk2_wpac_2021_40];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Shem 06 ... TL / 90P before 2022-01-08-21Z
# wind speeds missing for 1-5 days and positions for 4-5 days

my_shem_2022_06 = [13.4,145.9,0;13.4,143.4,0;13.8,139.7,0];
rsmc_shem_2022_06 = [13.4,146.0,0;13.5,143.5,0;13.7,140.4,0];
btk_shem_2022_06 = [14.1,144.9,0;14.6,141.9,0;14.8,136.7,0]; # JTWC best track
btk2_shem_2022_06 = [14.0,144.9,0;14.6,142.0,0;14.7,137.1,0]; # BoM spreadsheet
myvect = [myvect;my_shem_2022_06];
rsmcvect = [rsmcvect;rsmc_shem_2022_06];
btkvect = [btkvect;btk_shem_2022_06];
btk2vect = [btk2vect;btk2_shem_2022_06];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;4;4;4];

# Shem 07 ... TD03F / 05P before 2022-01-08-21Z
# wind speeds missing for 3-5 days and positions for 4-5 days

my_shem_2022_07 = [19.5,176.7,40;20.0,174.5,55;22.5,175.1,0];
rsmc_shem_2022_07 = [19.0,175.9,50.4;19.6,175.3,50.4;21.0,174.9,0];
btk_shem_2022_07 = [20.0,177.1,45;20.7,174.3,45;21.8,173.7,0]; # JTWC best track
btk2_shem_2022_07 = btk_shem_2022_07; #placeholder
myvect = [myvect;my_shem_2022_07];
rsmcvect = [rsmcvect;rsmc_shem_2022_07];
btkvect = [btkvect;btk_shem_2022_07];
btk2vect = [btk2vect;btk2_shem_2022_07];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;5;5;5];

# Shem 08 ... TD03F / 05P before 2022-01-09-03Z
# wind speeds missing for 3-5 days and positions for 4-5 days

my_shem_2022_08 = [19.3,176.2,50;19.7,174.9,50;21.3,174.8,0];
rsmc_shem_2022_08 = [18.9,175.9,50.4;19.5,175.2,50.4;21.1,175.0,0];
btk_shem_2022_08 = [20.1,176.6,40;20.8,173.8,45;22.8,173.9,0]; # JTWC best track
btk2_shem_2022_08 = btk_shem_2022_08; #placeholder
myvect = [myvect;my_shem_2022_08];
rsmcvect = [rsmcvect;rsmc_shem_2022_08];
btkvect = [btkvect;btk_shem_2022_08];
btk2vect = [btk2vect;btk2_shem_2022_08];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;5;5;5];

# Shem 09 ... TD03F / 05P before 2022-01-09-21Z
# wind speeds missing for 3-5 days and positions for 4-5 days

my_shem_2022_09 = [20.4,175.2,50;21.9,175.2,45;24.8,176.9,0];
rsmc_shem_2022_09 = [20.7,175.6,44.8;22.1,175.5,50.4;25.3,177.8,0];
btk_shem_2022_09 = [20.7,174.3,45;21.8,173.7,55;24.9,175.1,0]; # JTWC best track
btk2_shem_2022_09 = btk_shem_2022_09; #placeholder
myvect = [myvect;my_shem_2022_09];
rsmcvect = [rsmcvect;rsmc_shem_2022_09];
btkvect = [btkvect;btk_shem_2022_09];
btk2vect = [btk2vect;btk2_shem_2022_09];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;5;5;5];

# Shem 10 ... TIFFANY before 2022-01-09-21Z

my_shem_2022_10 = [14.2,142.0,40;    14.0,138.5,50;  14.4,134.5,50;  15.2,132.2,35;  15.6,132.1,30];
rsmc_shem_2022_10 = [14.1,142.1,39.2;13.9,138.5,56.0;14.4,134.8,56.0;15.0,132.7,33.6;15.4,132.5,33.6];
btk_shem_2022_10 = [14.6,141.9,30;   14.8,136.7,55;  15.1,131.8,25;  15.9,127.1,20;  17.0,125.2,25]; # JTWC best track
btk2_shem_2022_10 = [14.6,142.0,33.6;14.7,137.1,50.4;15.1,131.6,22.4;16.0,126.8,22.4;17.38,125.1,22.4]; # BoM spreadsheet
myvect = [myvect;my_shem_2022_10];
rsmcvect = [rsmcvect;rsmc_shem_2022_10];
btkvect = [btkvect;btk_shem_2022_10];
btk2vect = [btk2vect;btk2_shem_2022_10];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 11 ... CODY before 2022-01-10-21Z
# wind speeds missing for 3-5 days and positions for 4-5 days

my_shem_2022_11 = [21.8,173.5,40;24.7,175.7,45;26.9,177.9,0];
rsmc_shem_2022_11 = [21.8,173.6,50.4;24.3,175.5,50.4;26.7,177.9,0];
btk_shem_2022_11 = [21.8,173.7,55;24.9,175.1,45;27.5,177.5,0]; # JTWC best track
btk2_shem_2022_11 = btk_shem_2022_11; #placeholder
myvect = [myvect;my_shem_2022_11];
rsmcvect = [rsmcvect;rsmc_shem_2022_11];
btkvect = [btkvect;btk_shem_2022_11];
btk2vect = [btk2vect;btk2_shem_2022_11];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;5;5;5];

# Shem 12 ... TIFFANY before 2022-01-10-21Z

my_shem_2022_12 = [14.2,137.4,55;    14.2,133.7,45;  15.8,130.6,35;  16.0,129.7,30;   17.4,132.0,25];
rsmc_shem_2022_12 = [14.3,137.7,56.0;14.3,134.3,39.2;14.8,132.5,33.6;15.4,132.9,33.6; 16.3,134.0,33.6];
btk_shem_2022_12 = [14.8,136.7,55;   15.1,131.8,25;  15.9,127.1,20;  17.0,125.2,25;   20.99,125.59,20]; # JTWC best track (except day 5)
btk2_shem_2022_12 = [14.7,137.1,50.4;15.1,131.6,22.4;16.0,126.8,22.4;17.38,125.1,22.4;20.99,125.59,22.4]; # BoM spreadsheet
myvect = [myvect;my_shem_2022_12];
rsmcvect = [rsmcvect;rsmc_shem_2022_12];
btkvect = [btkvect;btk_shem_2022_12];
btk2vect = [btk2vect;btk2_shem_2022_12];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 13 ... 01/93S before 2022-01-22-03Z

my_shem_2022_13 = [16.4,47.5,30;      15.2,44.3,30;    15.8,39.8,35];
rsmc_shem_2022_13 = [16.3,47.0,28.0;  14.9,44.1,33.6;  15.3,40.4,39.2];
btk_shem_2022_13 = [16.5,45.0,20;     16.0,42.1,45;    16.9,34.8,25]; # JTWC best track
btk2_shem_2022_13 = [16.43,46.26,22.4;16.09,42.09,44.8;16.29,35.41,33.6]; # MFR data table
myvect = [myvect;my_shem_2022_13];
rsmcvect = [rsmcvect;rsmc_shem_2022_13];
btkvect = [btkvect;btk_shem_2022_13];
btk2vect = [btk2vect;btk2_shem_2022_13];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 14 ... 01/93S before 2022-01-22-21Z

my_shem_2022_14 = [15.5,43.3,35;      15.9,39.1,35];
rsmc_shem_2022_14 = [15.6,43.5,39.2;  15.9,39.6,39.2];
btk_shem_2022_14 = [15.8,43.5,35;     16.6,37.1,35]; # JTWC best track
btk2_shem_2022_14 = [15.93,43.59,33.6;16.43,36.86,33.6]; # MFR data table
myvect = [myvect;my_shem_2022_14];
rsmcvect = [rsmcvect;rsmc_shem_2022_14];
btkvect = [btkvect;btk_shem_2022_14];
btk2vect = [btk2vect;btk2_shem_2022_14];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 15 ... 01/07S before 2022-01-23-21Z

my_shem_2022_15 = [15.6,37.9,30];
rsmc_shem_2022_15 = [15.6,38.0,33.6];
btk_shem_2022_15 = [16.6,37.1,35]; # JTWC best track
btk2_shem_2022_15 = [16.43,36.86,33.6]; # MFR data table
myvect = [myvect;my_shem_2022_15];
rsmcvect = [rsmcvect;rsmc_shem_2022_15];
btkvect = [btkvect;btk_shem_2022_15];
btk2vect = [btk2vect;btk2_shem_2022_15];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;3];

# Shem 16 ... 02/96S before 2022-01-26-21Z

my_shem_2022_16 = [17.7,78.0,45;     18.0,73.3,40;    19.5,69.7,50;    19.0,66.1,55;   18.9,61.9,65];
rsmc_shem_2022_16 = [17.8,78.0,44.8; 18.3,73.2,39.2;  19.4,69.2,50.4;  19.0,65.6,56.0; 18.7,61.4,72.8];
btk_shem_2022_16 = [18.4,77.8,65;    18.3,72.5,55;    17.8,69.1,80;    16.5,65.3,90;   16.0,62.8,65]; # JTWC best track
btk2_shem_2022_16 = [18.0,77.59,78.4;18.42,72.55,50.4;17.74,69.15,95.2;16.6,65.32,95.2;15.91,62.97,67.2]; # MFR data table
myvect = [myvect;my_shem_2022_16];
rsmcvect = [rsmcvect;rsmc_shem_2022_16];
btkvect = [btkvect;btk_shem_2022_16];
btk2vect = [btk2vect;btk2_shem_2022_16];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 17 ... 02/96S before 2022-01-27-03Z

my_shem_2022_17 = [17.9,76.3,45;      18.6,72.8,45;    19.9,69.2,50;   19.2,65.6,60;    19.0,61.4,70];
rsmc_shem_2022_17 = [17.9,76.2,44.8;  18.9,72.5,44.8;  19.4,68.5,50.4; 18.7,65.0,61.6;  18.7,61.6,72.8];
btk_shem_2022_17 = [18.9,76.0,45;     18.3,71.6,55;    17.5,68.1,90;   16.3,64.5,90;    16.4,62.2,65]; # JTWC best track
btk2_shem_2022_17 = [17.88,76.13,56.0;18.32,71.67,56.0;17.43,68.1,95.2;16.38,64.53,72.8;16.43,62.26,72.8]; # MFR data table
myvect = [myvect;my_shem_2022_17];
rsmcvect = [rsmcvect;rsmc_shem_2022_17];
btkvect = [btkvect;btk_shem_2022_17];
btk2vect = [btk2vect;btk2_shem_2022_17];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 18 ... BATSIRAI before 2022-01-27-21Z

my_shem_2022_18 = [19.4,73.4,50;      19.9,70.3,50;    19.1,67.2,45;   18.5,63.8,55;    19.3,61.0,65];
rsmc_shem_2022_18 = [19.5,73.3,50.4;  20.0,70.1,44.8;  18.7,66.7,44.8; 18.3,64.0,56.0;  19.0,60.9,67.2];
btk_shem_2022_18 = [18.3,72.5,55;     17.8,69.1,80;    16.5,65.3,90;   16.0,62.8,65;    17.5,59.1,90]; # JTWC best track
btk2_shem_2022_18 = [18.42,72.55,50.4;17.74,69.15,95.2;16.6,65.32,95.2;15.91,62.97,67.2;17.46,59.12,89.6]; # MFR data table
myvect = [myvect;my_shem_2022_18];
rsmcvect = [rsmcvect;rsmc_shem_2022_18];
btkvect = [btkvect;btk_shem_2022_18];
btk2vect = [btk2vect;btk2_shem_2022_18];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 19 ... BATSIRAI before 2022-01-28-03Z

my_shem_2022_19 = [19.0,72.7,45;      19.3,69.4,40;   19.0,66.4,40;    18.6,63.0,40;    19.1,59.5,50];
rsmc_shem_2022_19 = [19.0,72.5,44.8;  19.3,69.1,39.2; 18.6,66.3,39.2;  18.6,63.3,44.8;  19.4,60.0,61.6];
btk_shem_2022_19 = [18.3,71.6,55;     17.5,68.1,90;   16.3,64.5,90;    16.4,62.2,65;    18.1,58.3,105]; # JTWC best track
btk2_shem_2022_19 = [18.32,71.67,56.0;17.43,68.1,95.2;16.38,64.53,72.8;16.43,62.26,72.8;18.0,58.32,100.8]; # MFR data table
myvect = [myvect;my_shem_2022_19];
rsmcvect = [rsmcvect;rsmc_shem_2022_19];
btkvect = [btkvect;btk_shem_2022_19];
btk2vect = [btk2vect;btk2_shem_2022_19];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 20 ... BATSIRAI before 2022-01-28-21Z

my_shem_2022_20 = [19.2,69.9,50;      18.1,66.4,60;   18.2,63.3,65;    18.9,60.2,65;    19.9,56.6,70];
rsmc_shem_2022_20 = [19.3,69.9,50.4;  18.0,66.1,56.0; 17.9,63.1,61.6;  18.7,59.9,67.2;  19.8,56.3,78.4];
btk_shem_2022_20 = [17.8,69.1,80;     16.5,65.3,90;   16.0,62.8,65;    17.5,59.1,90;    18.9,56.1,120]; # JTWC best track
btk2_shem_2022_20 = [17.74,69.15,95.2;16.6,65.32,95.2;15.91,62.97,67.2;17.46,59.12,89.6;18.86,56.13,112.0]; # MFR data table
myvect = [myvect;my_shem_2022_20];
rsmcvect = [rsmcvect;rsmc_shem_2022_20];
btkvect = [btkvect;btk_shem_2022_20];
btk2vect = [btk2vect;btk2_shem_2022_20];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 21 ... BATSIRAI before 2022-01-29-21Z

my_shem_2022_21 = [17.1,65.5,85;     17.0,62.2,85;    17.9,58.5,95;    18.6,55.6,100;    19.2,53.5,110];
rsmc_shem_2022_21 = [17.3,65.7,84.0; 17.1,62.1,78.4;  17.9,58.3,95.2;  18.9,55.6,100.8;  19.5,54.0,100.8];
btk_shem_2022_21 = [16.5,65.3,90;    16.0,62.8,65;    17.5,59.1,90;    18.9,56.1,120;    19.3,54.5,105]; # JTWC best track
btk2_shem_2022_21 = [16.6,65.32,95.2;15.91,62.97,67.2;17.46,59.12,89.6;18.86,56.13,112.0;19.32,54.47,95.2]; # MFR data table
myvect = [myvect;my_shem_2022_21];
rsmcvect = [rsmcvect;rsmc_shem_2022_21];
btkvect = [btkvect;btk_shem_2022_21];
btk2vect = [btk2vect;btk2_shem_2022_21];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 22 ... BATSIRAI before 2022-01-30-03Z

my_shem_2022_22 = [16.5,64.6,80;      16.7,61.3,80;    18.2,57.4,85;    19.3,55.1,100;  19.4,53.2,95];
rsmc_shem_2022_22 = [16.6,64.5,78.4;  16.7,61.2,72.8;  18.2,57.2,89.6;  19.2,54.9,100.8;19.6,53.6,89.6];
btk_shem_2022_22 = [16.3,64.5,90;     16.4,62.2,65;    18.1,58.3,105;   19.0,55.7,115;  19.3,53.8,110]; # JTWC best track
btk2_shem_2022_22 = [16.38,64.53,72.8;16.43,62.26,72.8;18.0,58.32,100.8;19.0,55.7,100.8;19.24,53.8,100.8]; # MFR data table
myvect = [myvect;my_shem_2022_22];
rsmcvect = [rsmcvect;rsmc_shem_2022_22];
btkvect = [btkvect;btk_shem_2022_22];
btk2vect = [btk2vect;btk2_shem_2022_22];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 23 ... BATSIRAI before 2022-01-30-09Z

my_shem_2022_23 = [16.1,63.7,90;      16.7,60.4,90;    17.9,56.4,95;     18.6,53.9,95;    19.3,52.1,95];
rsmc_shem_2022_23 = [16.2,63.7,100.8; 16.7,60.3,100.8; 18.2,56.6,100.8;  19.0,54.3,106.4; 19.6,53.0,100.8];
btk_shem_2022_23 = [15.9,63.8,85;     16.8,61.0,70;    18.6,57.6,120;    19.1,55.3,110;   19.4,53.1,115]; # JTWC best track
btk2_shem_2022_23 = [15.84,63.83,72.8;16.74,61.09,78.4;18.51,57.57,112.0;18.95,55.35,95.2;19.26,53.05,100.8]; # MFR data table
myvect = [myvect;my_shem_2022_23];
rsmcvect = [rsmcvect;rsmc_shem_2022_23];
btkvect = [btkvect;btk_shem_2022_23];
btk2vect = [btk2vect;btk2_shem_2022_23];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 24 ... BATSIRAI before 2022-01-30-21Z

my_shem_2022_24 = [16.3,62.3,90;      17.5,58.5,100;   18.6,55.5,110;    18.9,52.9,120;   19.3,50.4,115];
rsmc_shem_2022_24 = [16.5,62.3,95.2;  17.6,58.4,106.4; 18.8,55.4,117.6;  19.2,52.9,123.2; 19.7,50.5,117.6];
btk_shem_2022_24 = [16.0,62.8,65;     17.5,59.1,90;    18.9,56.1,120;    19.3,54.5,105;   19.6,52.0,115]; # JTWC best track
btk2_shem_2022_24 = [15.91,62.97,67.2;17.46,59.12,89.6;18.86,56.13,112.0;19.32,54.47,95.2;19.48,51.94,106.4]; # MFR data table
myvect = [myvect;my_shem_2022_24];
rsmcvect = [rsmcvect;rsmc_shem_2022_24];
btkvect = [btkvect;btk_shem_2022_24];
btk2vect = [btk2vect;btk2_shem_2022_24];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 25 ... BATSIRAI before 2022-01-31-03Z

my_shem_2022_25 = [16.5,61.4,105;     18.0,58.1,115;   19.0,54.9,125;  19.0,52.5,125;   19.7,49.9,110];
rsmc_shem_2022_25 = [16.6,61.5,106.4; 18.1,57.9,117.6; 19.1,54.8,128.8;19.2,52.3,123.2; 19.8,49.9,112.0];
btk_shem_2022_25 = [16.4,62.2,65;     18.1,58.3,105;   19.0,55.7,115;  19.3,53.8,110;   19.9,51.3,105]; # JTWC best track
btk2_shem_2022_25 = [16.43,62.26,72.8;18.0,58.32,100.8;19.0,55.7,100.8;19.24,53.8,100.8;19.78,51.21,100.8]; # MFR data table
myvect = [myvect;my_shem_2022_25];
rsmcvect = [rsmcvect;rsmc_shem_2022_25];
btkvect = [btkvect;btk_shem_2022_25];
btk2vect = [btk2vect;btk2_shem_2022_25];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 26 ... BATSIRAI before 2022-01-31-21Z

my_shem_2022_26 = [17.2,59.7,80;      18.5,56.5,95;     18.5,53.8,100;   18.0,52.5,105;    18.9,49.6,95];
rsmc_shem_2022_26 = [17.3,59.6,84.0;  18.7,56.3,100.8;  18.7,53.7,106.4; 18.4,52.0,106.4;  19.0,49.6,100.8];
btk_shem_2022_26 = [17.5,59.1,90;     18.9,56.1,120;    19.3,54.5,105;   19.6,52.0,115;    21.0,48.3,90]; # JTWC best track
btk2_shem_2022_26 = [17.46,59.12,89.6;18.86,56.13,112.0;19.32,54.47,95.2;19.48,51.94,106.4;20.86,48.18,89.6]; # MFR data table
myvect = [myvect;my_shem_2022_26];
rsmcvect = [rsmcvect;rsmc_shem_2022_26];
btkvect = [btkvect;btk_shem_2022_26];
btk2vect = [btk2vect;btk2_shem_2022_26];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 27 ... BATSIRAI before 2022-02-01-03Z

my_shem_2022_27 = [18.0,59.1,80;      19.0,56.1,90;   19.1,53.0,100;   19.1,50.9,100;    19.5,47.9,55];
rsmc_shem_2022_27 = [18.0,59.1,78.4;  19.0,56.2,89.6; 18.9,53.0,106.4; 18.8,51.0,100.8;  19.1,47.9,44.8];
btk_shem_2022_27 = [18.1,58.3,105;    19.0,55.7,115;  19.3,53.8,110;   19.9,51.3,105;    21.5,46.6,60]; # JTWC best track
btk2_shem_2022_27 = [18.0,58.32,100.8;19.0,55.7,100.8;19.24,53.8,100.8;19.78,51.21,100.8;21.3,46.8,56.0]; # MFR data table
myvect = [myvect;my_shem_2022_27];
rsmcvect = [rsmcvect;rsmc_shem_2022_27];
btkvect = [btkvect;btk_shem_2022_27];
btk2vect = [btk2vect;btk2_shem_2022_27];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 28 ... 09P before 2022-02-01-15Z

my_shem_2022_28 = [15.8,156.1,35;    17.5,159.4,35];
rsmc_shem_2022_28 = [15.8,156.1,33.6;17.6,160.2,33.6];
btk_shem_2022_28 = [15.5,156.1,25;   17.6,160.0,20]; # JTWC best track
btk2_shem_2022_28 = [16.0,156.5,28.0;17.6,160.0,22.4]; # BoM spreadsheet, except day 2
myvect = [myvect;my_shem_2022_28];
rsmcvect = [rsmcvect;rsmc_shem_2022_28];
btkvect = [btkvect;btk_shem_2022_28];
btk2vect = [btk2vect;btk2_shem_2022_28];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;4;4];

# Shem 29 ... BATSIRAI before 2022-02-01-15Z

my_shem_2022_29 = [18.4,57.0,95;       19.0,53.9,100;   18.9,51.3,105;    19.4,48.6,95;    20.5,44.5,35];
rsmc_shem_2022_29 = [18.5,57.0,95.2;   19.2,54.0,100.8; 19.0,51.7,106.4;  19.4,49.3,106.4; 20.6,44.8,22.4];
btk_shem_2022_29 = [18.8,56.7,125;     19.2,55.0,110;   19.4,52.5,115;    20.8,49.4,100;   22.7,44.2,35]; # JTWC best track
btk2_shem_2022_29 = [18.82,56.71,123.2;19.17,54.97,95.2;19.36,52.52,106.4;20.65,49.3,100.8;22.76,44.41,35.84]; # MFR data table
myvect = [myvect;my_shem_2022_29];
rsmcvect = [rsmcvect;rsmc_shem_2022_29];
btkvect = [btkvect;btk_shem_2022_29];
btk2vect = [btk2vect;btk2_shem_2022_29];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 30 ... BATSIRAI before 2022-02-01-21Z

my_shem_2022_30 = [18.9,56.0,110;      19.5,53.2,100;   19.9,50.8,110;    20.6,47.4,80;    22.1,42.3,35];
rsmc_shem_2022_30 = [19.0,56.0,112.0;  19.6,53.2,95.2;  19.8,50.8,112.0;  20.3,47.6,50.4;  21.7,42.0,39.2];
btk_shem_2022_30 = [18.9,56.1,120;     19.3,54.5,105;   19.6,52.0,115;    21.0,48.3,90;    22.9,43.2,40]; # JTWC best track
btk2_shem_2022_30 = [18.86,56.13,112.0;19.32,54.47,95.2;19.48,51.94,106.4;20.86,48.18,89.6;23.07,43.0,39.2]; # MFR data table
myvect = [myvect;my_shem_2022_30];
rsmcvect = [rsmcvect;rsmc_shem_2022_30];
btkvect = [btkvect;btk_shem_2022_30];
btk2vect = [btk2vect;btk2_shem_2022_30];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 31 ... BATSIRAI before 2022-02-02-21Z

my_shem_2022_31 = [19.4,53.8,105;     19.8,50.7,110;    20.7,46.9,55;    21.7,40.9,50;   23.1,38.8,60];
rsmc_shem_2022_31 = [19.5,53.7,106.4; 20.0,50.6,112.0;  20.6,46.6,44.8;  21.9,40.8,50.4; 22.8,38.5,61.6];
btk_shem_2022_31 = [19.3,54.5,105;    19.6,52.0,115;    21.0,48.3,90;    22.9,43.2,40;   25.3,41.6,50]; # JTWC best track
btk2_shem_2022_31 = [19.32,54.47,95.2;19.48,51.94,106.4;20.86,48.18,89.6;23.07,43.0,39.2;25.34,41.64,52.64]; # MFR data table
myvect = [myvect;my_shem_2022_31];
rsmcvect = [rsmcvect;rsmc_shem_2022_31];
btkvect = [btkvect;btk_shem_2022_31];
btk2vect = [btk2vect;btk2_shem_2022_31];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 32 ... 09P before 2022-02-03-03Z
# (no BoM advisory)

# Shem 33 ... BATSIRAI before 2022-02-03-03Z

my_shem_2022_33 = [19.4,53.3,105;     19.8,50.0,110;    21.3,44.6,45;  22.1,40.1,50;     23.1,38.9,60];
rsmc_shem_2022_33 = [19.5,53.3,106.4; 20.0,50.2,112.0;  21.2,44.5,44.8;22.0,40.1,50.4;   22.9,38.3,56.0];
btk_shem_2022_33 = [19.3,53.8,110;    19.9,51.3,105;    21.5,46.6,60;  23.0,42.4,40;     26.2,41.4,45]; # JTWC best track
btk2_shem_2022_33 = [19.24,53.8,100.8;19.78,51.21,100.8;21.3,46.8,56.0;23.06,42.06,41.44;25.76,41.53,50.4]; # MFR data table
myvect = [myvect;my_shem_2022_33];
rsmcvect = [rsmcvect;rsmc_shem_2022_33];
btkvect = [btkvect;btk_shem_2022_33];
btk2vect = [btk2vect;btk2_shem_2022_33];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 34 ... BATSIRAI before 2022-02-03-09Z

my_shem_2022_34 = [19.2,53.1,110;      20.0,49.4,110;   21.1,43.4,45;    21.9,39.9,50;    23.2,39.2,65];
rsmc_shem_2022_34 = [19.3,52.9,112.0;  19.9,49.2,123.2; 21.1,43.8,39.2;  22.3,40.0,56.0;  23.8,38.3,72.8];
btk_shem_2022_34 = [19.4,53.1,115;     20.3,50.5,100;   22.2,45.2,45;    23.7,42.0,30;    27.0,41.3,45]; # JTWC best track
btk2_shem_2022_34 = [19.26,53.05,100.8;20.24,50.39,95.2;22.08,45.19,39.2;23.59,42.01,44.8;26.62,42.04,47.04]; # MFR data table
myvect = [myvect;my_shem_2022_34];
rsmcvect = [rsmcvect;rsmc_shem_2022_34];
btkvect = [btkvect;btk_shem_2022_34];
btk2vect = [btk2vect;btk2_shem_2022_34];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 35 ... BATSIRAI before 2022-02-03-21Z

my_shem_2022_35 = [19.9,51.7,115;      20.9,47.4,70;    22.5,41.8,45;   23.7,40.0,55;     25.2,39.1,65];
rsmc_shem_2022_35 = [19.8,51.6,117.6;  20.5,47.4,72.8;  22.0,41.9,44.8; 23.3,39.9,56.0;   25.0,39.2,61.6];
btk_shem_2022_35 = [19.6,52.0,115;     21.0,48.3,90;    22.9,43.2,40;   25.3,41.6,50;     29.4,42.0,35]; # JTWC best track
btk2_shem_2022_35 = [19.48,51.94,106.4;20.86,48.18,89.6;23.07,43.0,39.2;25.34,41.64,52.64;29.02,42.29,47.04]; # MFR data table
myvect = [myvect;my_shem_2022_35];
rsmcvect = [rsmcvect;rsmc_shem_2022_35];
btkvect = [btkvect;btk_shem_2022_35];
btk2vect = [btk2vect;btk2_shem_2022_35];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 36 ... BATSIRAI before 2022-02-04-21Z

my_shem_2022_36 = [20.6,48.2,75;      22.2,42.6,35;  23.5,41.0,45;      25.9,40.8,45;     29.1,40.5,45];
rsmc_shem_2022_36 = [20.6,48.1,72.8;  22.1,42.8,39.2;23.7,40.9,50.4;    25.8,40.5,56.0;   29.2,41.0,44.8];
btk_shem_2022_36 = [21.0,48.3,90;     22.9,43.2,40;  25.3,41.6,50;      29.4,42.0,35;     35.8,43.49,45]; # JTWC best track (except day 5 MFR)
btk2_shem_2022_36 = [20.86,48.18,89.6;23.07,43.0,39.2;25.34,41.64,52.64;29.02,42.29,47.04;35.8,43.49,44.8]; # MFR data table
myvect = [myvect;my_shem_2022_36];
rsmcvect = [rsmcvect;rsmc_shem_2022_36];
btkvect = [btkvect;btk_shem_2022_36];
btk2vect = [btk2vect;btk2_shem_2022_36];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 37 ... BATSIRAI before 2022-02-05-21Z
# (MFR didn't give wind speed forecast)

my_shem_2022_37 = [23.2,43.1,0;   25.3,40.9,0;  27.8,41.1,0;  34.6,46.6,0];
rsmc_shem_2022_37 = [23.0,43.3,0; 24.9,41.6,0;  27.4,41.7,0;  34.5,46.5,0];
btk_shem_2022_37 = [22.9,43.2,0;  25.3,41.6,0;  29.4,42.0,0;  35.8,43.49,0]; # JTWC best track (except day 4 MFR)
btk2_shem_2022_37 = [23.07,43.0,0;25.34,41.64,0;29.02,42.29,0;35.8,43.49,0]; # MFR data table
myvect = [myvect;my_shem_2022_37];
rsmcvect = [rsmcvect;rsmc_shem_2022_37];
btkvect = [btkvect;btk_shem_2022_37];
btk2vect = [btk2vect;btk2_shem_2022_37];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 38 ... BATSIRAI before 2022-02-06-21Z

my_shem_2022_38 = [25.2,41.1,45;       28.4,41.4,50;     34.1,43.4,40];
rsmc_shem_2022_38 = [25.1,41.1,44.8;   28.1,41.4,50.4;   33.3,42.8,39.2];
btk_shem_2022_38 = [25.3,41.6,50;      29.4,42.0,35;     35.8,43.49,45]; # JTWC best track (except day 3 MFR)
btk2_shem_2022_38 = [25.34,41.64,52.64;29.02,42.29,47.04;35.8,43.49,44.8]; # MFR data table
myvect = [myvect;my_shem_2022_38];
rsmcvect = [rsmcvect;rsmc_shem_2022_38];
btkvect = [btkvect;btk_shem_2022_38];
btk2vect = [btk2vect;btk2_shem_2022_38];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 39 ... 08F/92P before 2022-02-08-21Z

my_shem_2022_39 = [20.7,167.8,45;23.6,166.3,45];
rsmc_shem_2022_39 = [20.9,167.7,44.8;23.2,165.7,50.4];
btk_shem_2022_39 = [20.6,169.0,45;23.8,166.4,80]; # JTWC best track
btk2_shem_2022_39 = btk_shem_2022_39; #placeholder
myvect = [myvect;my_shem_2022_39];
rsmcvect = [rsmcvect;rsmc_shem_2022_39];
btkvect = [btkvect;btk_shem_2022_39];
btk2vect = [btk2vect;btk2_shem_2022_39];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;5;5];

# Shem 40 ... DOVI before 2022-02-09-21Z

my_shem_2022_40 = [23.3,167.3,55;29.5,166.8,60];
rsmc_shem_2022_40 = [23.0,166.5,50.4;28.8,166.0,61.6];
btk_shem_2022_40 = [23.8,166.4,80;31.8,166.2,65]; # JTWC best track
btk2_shem_2022_40 = btk_shem_2022_40; #placeholder
myvect = [myvect;my_shem_2022_40];
rsmcvect = [rsmcvect;rsmc_shem_2022_40];
btkvect = [btkvect;btk_shem_2022_40];
btk2vect = [btk2vect;btk2_shem_2022_40];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;5;5];

# Shem 41 ... DOVI before 2022-02-10-03Z

my_shem_2022_41 = [24.3,166.3,65;31.2,166.6,65];
rsmc_shem_2022_41 = [24.6,166.8,56.0;31.2,167.0,67.2];
btk_shem_2022_41 = [25.2,166.0,90;33.5,166.6,55]; # JTWC best track
btk2_shem_2022_41 = btk_shem_2022_41; #placeholder
myvect = [myvect;my_shem_2022_41];
rsmcvect = [rsmcvect;rsmc_shem_2022_41];
btkvect = [btkvect;btk_shem_2022_41];
btk2vect = [btk2vect;btk2_shem_2022_41];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;5;5];

# Shem 42 ... DOVI before 2022-02-10-21Z

my_shem_2022_42 = [29.7,165.5,80];
rsmc_shem_2022_42 = [30.1,165.7,56.0];
btk_shem_2022_42 = [31.8,166.2,65]; # JTWC best track
btk2_shem_2022_42 = btk_shem_2022_42; #placeholder
myvect = [myvect;my_shem_2022_42];
rsmcvect = [rsmcvect;rsmc_shem_2022_42];
btkvect = [btkvect;btk_shem_2022_42];
btk2vect = [btk2vect;btk2_shem_2022_42];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;5];

# Shem 43 ... DOVI before 2022-02-11-03Z

my_shem_2022_43 = [32.5,166.5,60];
rsmc_shem_2022_43 = [32.5,166.0,72.8];
btk_shem_2022_43 = [33.5,166.6,55]; # JTWC best track
btk2_shem_2022_43 = btk_shem_2022_43; #placeholder
myvect = [myvect;my_shem_2022_43];
rsmcvect = [rsmcvect;rsmc_shem_2022_43];
btkvect = [btkvect;btk_shem_2022_43];
btk2vect = [btk2vect;btk_shem_2022_43];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;7];

# Shem 44 ... 04/94S before 2022-02-12-21Z

my_shem_2022_44 = [15.2,59.3,40;      16.2,54.5,50;    16.1,50.3,55;    16.4,44.8,25;    17.9,40.5,0];
rsmc_shem_2022_44 = [15.3,59.3,39.2;  16.3,54.3,50.4;  16.0,50.1,56.0;  16.3,44.7,28.0;  17.9,40.4,0];
btk_shem_2022_44 = [15.7,58.3,45;     16.8,52.9,45;    17.1,48.4,30;    16.7,43.5,25;    17.87,39.08,0]; # JTWC best track (except day 4 U.S.oper. day 5 MFR)
btk2_shem_2022_44 = [15.75,58.32,44.8;16.83,53.08,39.2;17.27,48.47,33.6;16.78,42.65,16.8;17.87,39.08,0]; # MFR data table
myvect = [myvect;my_shem_2022_44];
rsmcvect = [rsmcvect;rsmc_shem_2022_44];
btkvect = [btkvect;btk_shem_2022_44];
btk2vect = [btk2vect;btk2_shem_2022_44];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 45 ... 04/94S before 2022-02-13-03Z

my_shem_2022_45 = [15.5,58.5,40;     16.2,53.5,50;    14.7,49.7,45];
rsmc_shem_2022_45 = [15.7,58.5,39.2; 16.3,53.6,44.8;  15.0,50.0,28.0];
btk_shem_2022_45 = [16.1,56.9,50;    16.9,51.8,45;    17.1,47.5,20]; # JTWC best track
btk2_shem_2022_45 = [16.23,56.8,50.4;16.93,51.78,39.2;17.34,47.01,22.4]; # MFR data table
myvect = [myvect;my_shem_2022_45];
rsmcvect = [rsmcvect;rsmc_shem_2022_45];
btkvect = [btkvect;btk_shem_2022_45];
btk2vect = [btk2vect;btk2_shem_2022_45];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 46 ... 04/94S before 2022-02-13-09Z

my_shem_2022_46 = [16.0,56.9,40;     16.7,52.1,45;   14.9,49.1,25];
rsmc_shem_2022_46 = [16.1,56.8,44.8; 16.5,52.1,50.4; 15.0,49.4,28.0];
btk_shem_2022_46 = [16.4,55.5,45;    16.9,50.6,45;   17.0,46.2,25]; # JTWC best track (days 1-2 only)
btk2_shem_2022_46 = [16.35,55.4,50.4;16.9,50.61,39.2;17.18,45.78,16.8]; # MFR data table
myvect = [myvect;my_shem_2022_46];
rsmcvect = [rsmcvect;rsmc_shem_2022_46];
btkvect = [btkvect;btk_shem_2022_46];
btk2vect = [btk2vect;btk2_shem_2022_46];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 47 ... DUMAKO before 2022-02-13-21Z

my_shem_2022_47 = [16.5,53.3,50;      15.9,49.5,40];
rsmc_shem_2022_47 = [16.4,53.5,50.4;  15.6,49.9,39.2];
btk_shem_2022_47 = [16.8,52.9,45;     17.1,48.4,30]; # JTWC best track
btk2_shem_2022_47 = [16.83,53.08,39.2;17.27,48.47,33.6]; # MFR data table
myvect = [myvect;my_shem_2022_47];
rsmcvect = [rsmcvect;rsmc_shem_2022_47];
btkvect = [btkvect;btk_shem_2022_47];
btk2vect = [btk2vect;btk2_shem_2022_47];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 48 ... DUMAKO before 2022-02-14-03Z

my_shem_2022_48 = [16.4,52.4,50;      15.3,48.3,35];
rsmc_shem_2022_48 = [16.5,52.4,50.4;  15.4,48.4,28.0];
btk_shem_2022_48 = [16.9,51.8,45;     17.1,47.5,20]; # JTWC best track
btk2_shem_2022_48 = [16.93,51.78,39.2;17.34,47.01,22.4]; # MFR data table
myvect = [myvect;my_shem_2022_48];
rsmcvect = [rsmcvect;rsmc_shem_2022_48];
btkvect = [btkvect;btk_shem_2022_48];
btk2vect = [btk2vect;btk2_shem_2022_48];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 49 ... DUMAKO before 2022-02-14-21Z

my_shem_2022_49 = [16.2,49.1,25;      16.2,44.5,20;    15.4,39.8,0];
rsmc_shem_2022_49 = [16.4,49.1,22.4;  16.3,44.1,22.4;  16.0,39.6,0];
btk_shem_2022_49 = [17.1,48.4,30;     16.7,43.5,25;    17.87,39.08,0]; # JTWC best track (day 1 only)
btk2_shem_2022_49 = [17.27,48.47,33.6;16.78,42.65,16.8;17.87,39.08,0]; # MFR data table
myvect = [myvect;my_shem_2022_49];
rsmcvect = [rsmcvect;rsmc_shem_2022_49];
btkvect = [btkvect;btk_shem_2022_49];
btk2vect = [btk2vect;btk2_shem_2022_49];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 50 ... DUMAKO before 2022-02-15-03Z (note that day 2 btk is missing from between)

my_shem_2022_50 = [16.3,47.7,25;      15.9,43.1,20;    15.8,39.8,20];
rsmc_shem_2022_50 = [16.2,47.8,22.4;  16.2,43.2,22.4;  16.0,39.3,16.8];
btk_shem_2022_50 = [17.1,47.5,20;     16.95,41.62,20;  17.94,38.19,30]; # JTWC best track (except days 2-3)
btk2_shem_2022_50 = [17.34,47.01,22.4;16.95,41.62,22.4;17.94,38.19,28.0]; # MFR data table
myvect = [myvect;my_shem_2022_50];
rsmcvect = [rsmcvect;rsmc_shem_2022_50];
btkvect = [btkvect;btk_shem_2022_50];
btk2vect = [btk2vect;btk2_shem_2022_50];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 51 ... 05/13S before 2022-02-16-21Z

my_shem_2022_51 = [14.0,64.0,45;       15.4,61.0,55;    17.1,58.2,70;    17.8,55.8,85;   18.3,52.9,95];
rsmc_shem_2022_51 = [14.1,64.0,44.8;   15.3,61.1,56.0;  16.9,58.3,72.8;  17.8,55.9,84.0; 18.2,53.5,95.2];
btk_shem_2022_51 = [13.7,63.7,50;      15.1,60.5,75;    16.8,57.1,85;    17.6,54.6,115;  18.5,52.1,90]; # JTWC best track
btk2_shem_2022_51 = [13.57,63.68,48.16;15.23,60.58,67.2;16.73,57.23,78.4;17.5,54.53,95.2;18.43,51.96,89.6]; # MFR data table
myvect = [myvect;my_shem_2022_51];
rsmcvect = [rsmcvect;rsmc_shem_2022_51];
btkvect = [btkvect;btk_shem_2022_51];
btk2vect = [btk2vect;btk2_shem_2022_51];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 52 ... EMNATI before 2022-02-17-03Z

my_shem_2022_52 = [14.0,63.7,50;       15.8,60.4,60;    16.7,58.1,70;    17.6,55.6,85;    17.8,53.5,95];
rsmc_shem_2022_52 = [14.0,63.6,44.8;   15.7,60.5,56.0;  17.2,57.6,72.8;  17.9,55.1,84.0;  18.2,52.9,95.2];
btk_shem_2022_52 = [13.7,63.2,65;      15.4,59.8,65;    17.1,56.6,100;   17.7,54.0,105;   19.1,51.2,90]; # JTWC best track
btk2_shem_2022_52 = [13.65,63.22,59.36;15.46,59.47,67.2;17.04,56.56,89.6;17.5,54.04,87.36;19.26,51.19,89.6]; # MFR data table
myvect = [myvect;my_shem_2022_52];
rsmcvect = [rsmcvect;rsmc_shem_2022_52];
btkvect = [btkvect;btk_shem_2022_52];
btk2vect = [btk2vect;btk2_shem_2022_52];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 53 ... EMNATI before 2022-02-17-21Z

my_shem_2022_53 = [15.2,60.8,65;      17.2,58.0,90;    18.0,56.0,110;  18.7,52.3,110;   20.3,48.9,110];
rsmc_shem_2022_53 = [15.2,60.9,61.6;  17.1,58.0,89.6;  17.9,55.5,112.0;18.5,52.5,106.4; 19.7,48.9,106.4];
btk_shem_2022_53 = [15.1,60.5,75;     16.8,57.1,85;    17.6,54.6,115;  18.5,52.1,90;    21.6,48.8,75]; # JTWC best track
btk2_shem_2022_53 = [15.23,60.58,67.2;16.73,57.23,78.4;17.5,54.53,95.2;18.43,51.96,89.6;21.51,48.73,84.0]; # MFR data table
myvect = [myvect;my_shem_2022_53];
rsmcvect = [rsmcvect;rsmc_shem_2022_53];
btkvect = [btkvect;btk_shem_2022_53];
btk2vect = [btk2vect;btk2_shem_2022_53];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 54 ... EMNATI before 2022-02-18-03Z

my_shem_2022_54 = [15.7,59.9,70;      17.4,57.0,100;   18.1,54.3,115;   18.5,51.2,105;   20.0,47.5,75];
rsmc_shem_2022_54 = [15.7,60.1,67.2;  17.4,57.3,100.8; 18.1,54.7,112.0; 18.7,51.4,106.4; 19.8,47.7,67.2];
btk_shem_2022_54 = [15.4,59.8,65;     17.1,56.6,100;   17.7,54.0,105;   19.1,51.2,90;    22.6,47.8,65]; # JTWC best track
btk2_shem_2022_54 = [15.46,59.47,67.2;17.04,56.56,89.6;17.5,54.04,87.36;19.26,51.19,89.6;22.56,47.68,78.4]; # MFR data table
myvect = [myvect;my_shem_2022_54];
rsmcvect = [rsmcvect;rsmc_shem_2022_54];
btkvect = [btkvect;btk_shem_2022_54];
btk2vect = [btk2vect;btk2_shem_2022_54];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 55 ... EMNATI before 2022-02-18-21Z

my_shem_2022_55 = [17.0,57.8,90;      18.0,55.4,105;  19.0,52.3,105;   20.6,48.5,90;    23.2,44.1,25];
rsmc_shem_2022_55 = [17.2,57.7,84.0;  18.1,55.2,112.0;18.8,52.2,106.4; 20.0,48.5,72.8;  22.5,44.0,33.6];
btk_shem_2022_55 = [16.8,57.1,85;     17.6,54.6,115;  18.5,52.1,90;    21.6,48.8,75;    24.8,44.1,35]; # JTWC best track
btk2_shem_2022_55 = [16.73,57.23,78.4;17.5,54.53,95.2;18.43,51.96,89.6;21.51,48.73,84.0;24.53,44.08,44.8]; # MFR data table
myvect = [myvect;my_shem_2022_55];
rsmcvect = [rsmcvect;rsmc_shem_2022_55];
btkvect = [btkvect;btk_shem_2022_55];
btk2vect = [btk2vect;btk2_shem_2022_55];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 56 ... EMNATI before 2022-02-19-21Z

my_shem_2022_56 = [18.0,54.6,95;     19.3,51.5,105;   21.2,48.1,80;    24.6,43.4,35;    27.7,41.4,50];
rsmc_shem_2022_56 = [18.0,54.7,100.8;19.1,51.4,112.0; 20.6,47.8,56.0;  23.9,42.9,33.6;  27.7,41.2,50.4];
btk_shem_2022_56 = [17.6,54.6,115;   18.5,52.1,90;    21.6,48.8,75;    24.8,44.1,35;    28.9,41.4,50]; # JTWC best track
btk2_shem_2022_56 = [17.5,54.53,95.2;18.43,51.96,89.6;21.51,48.73,84.0;24.53,44.08,44.8;28.61,41.39,50.4]; # MFR data table
myvect = [myvect;my_shem_2022_56];
rsmcvect = [rsmcvect;rsmc_shem_2022_56];
btkvect = [btkvect;btk_shem_2022_56];
btk2vect = [btk2vect;btk2_shem_2022_56];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 57 ... EMNATI before 2022-02-20-03Z

my_shem_2022_57 = [18.0,53.8,105;     19.5,50.7,105;   21.8,47.3,50;    25.1,42.8,45;    29.3,41.4,45];
rsmc_shem_2022_57 = [18.1,53.9,100.8; 19.5,50.6,106.4; 21.2,47.0,33.6;  24.6,42.3,44.8;  28.5,40.5,50.4];
btk_shem_2022_57 = [17.7,54.0,105;    19.1,51.2,90;    22.6,47.8,65;    25.4,43.7,35;    29.7,41.7,45]; # JTWC best track
btk2_shem_2022_57 = [17.5,54.04,87.36;19.26,51.19,89.6;22.56,47.68,78.4;25.02,43.26,44.8;30.05,41.36,50.4]; # MFR data table
myvect = [myvect;my_shem_2022_57];
rsmcvect = [rsmcvect;rsmc_shem_2022_57];
btkvect = [btkvect;btk_shem_2022_57];
btk2vect = [btk2vect;btk2_shem_2022_57];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 58 ... EMNATI before 2022-02-20-15Z

my_shem_2022_58 = [18.7,52.5,115;      20.9,49.0,110;   24.5,44.7,40;    27.7,41.6,50;    30.5,40.7,50];
rsmc_shem_2022_58 = [18.6,52.4,112.0;  20.2,49.0,112.0; 23.3,44.4,33.6;  26.6,41.3,44.8;  30.4,40.4,50.4];
btk_shem_2022_58 = [18.2,52.7,95;      20.8,49.5,75;    24.3,45.2,45;    28.0,42.0,55;    32.6,42.6,45]; # JTWC best track (except day 5)
btk2_shem_2022_58 = [18.06,52.66,87.36;20.71,49.47,84.0;24.25,45.29,44.8;27.32,42.03,44.8;33.01,41.99,50.4]; # MFR data table
myvect = [myvect;my_shem_2022_58];
rsmcvect = [rsmcvect;rsmc_shem_2022_58];
btkvect = [btkvect;btk_shem_2022_58];
btk2vect = [btk2vect;btk2_shem_2022_58];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 59 ... EMNATI before 2022-02-20-21Z

my_shem_2022_59 = [19.2,51.7,105;     21.5,48.3,75;    25.2,44.0,35  ;  29.2,41.0,45;    31.9,41.0,45];
rsmc_shem_2022_59 = [19.2,51.8,106.4; 21.2,48.2,44.8;  24.7,43.7,39.2;  29.1,41.0,44.8;  32.6,41.3,50.4];
btk_shem_2022_59 = [18.5,52.1,90;     21.6,48.8,75;    24.8,44.1,35  ;  28.9,41.4,50;    34.13,42.8,55]; # JTWC best track (except day 5)
btk2_shem_2022_59 = [18.43,51.96,89.6;21.51,48.73,84.0;24.53,44.08,44.8;28.61,41.39,50.4;34.13,42.8,56.0]; # MFR data table
myvect = [myvect;my_shem_2022_59];
rsmcvect = [rsmcvect;rsmc_shem_2022_59];
btkvect = [btkvect;btk_shem_2022_59];
btk2vect = [btk2vect;btk2_shem_2022_59];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 60 ... EMNATI before 2022-02-21-03Z

my_shem_2022_60 = [20.1,50.9,105;     22.8,47.5,65;    26.4,43.6,40;    30.0,41.1,45;    32.2,42.1,50];
rsmc_shem_2022_60 = [20.0,50.8,112.0; 22.4,47.4,44.8;  25.9,43.3,44.8;  29.9,41.0,44.8;  32.7,41.6,50.4];
btk_shem_2022_60 = [19.1,51.2,90;     22.6,47.8,65;    25.4,43.7,35;    29.7,41.7,45;    34.9,43.84,55]; # JTWC best track (except day 5)
btk2_shem_2022_60 = [19.26,51.19,89.6;22.56,47.68,78.4;25.02,43.26,44.8;30.05,41.36,50.4;34.9,43.84,56.0]; # MFR data table
myvect = [myvect;my_shem_2022_60];
rsmcvect = [rsmcvect;rsmc_shem_2022_60];
btkvect = [btkvect;btk_shem_2022_60];
btk2vect = [btk2vect;btk2_shem_2022_60];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 61 ... EMNATI before 2022-02-21-21Z

my_shem_2022_61 = [21.5,48.5,105;     25.2,44.6,35;    29.4,41.9,50;    32.4,42.4,50;   34.1,43.1,45];
rsmc_shem_2022_61 = [21.4,48.5,106.4; 24.7,44.6,44.8;  28.9,41.9,44.8;  32.0,42.7,50.4; 33.8,44.0,44.8];
btk_shem_2022_61 = [21.6,48.8,75;     24.8,44.1,35;    28.9,41.4,50;    34.13,42.8,55;  36.39,45.75,50]; # JTWC best track (except days 4-5)
btk2_shem_2022_61 = [21.51,48.73,84.0;24.53,44.08,44.8;28.61,41.39,50.4;34.13,42.8,56.0;36.39,45.75,50.4]; # MFR data table
myvect = [myvect;my_shem_2022_61];
rsmcvect = [rsmcvect;rsmc_shem_2022_61];
btkvect = [btkvect;btk_shem_2022_61];
btk2vect = [btk2vect;btk2_shem_2022_61];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 62 ... EMNATI before 2022-02-22-03Z

my_shem_2022_62 = [22.2,47.7,70;      26.0,43.5,40;    30.5,41.3,40;    33.4,42.7,50;   34.3,42.8,40];
rsmc_shem_2022_62 = [22.1,47.7,67.2;  25.6,43.6,39.2;  29.8,41.9,44.8;  32.8,43.4,50.4; 34.6,43.6,44.8];
btk_shem_2022_62 = [22.6,47.8,65;     25.4,43.7,35;    29.7,41.7,45;    34.9,43.84,55;  37.3,45.77,45]; # JTWC best track (except days 4-5)
btk2_shem_2022_62 = [22.56,47.68,78.4;25.02,43.26,44.8;30.05,41.36,50.4;34.9,43.84,56.0;37.3,45.77,44.8]; # MFR data table
myvect = [myvect;my_shem_2022_62];
rsmcvect = [rsmcvect;rsmc_shem_2022_62];
btkvect = [btkvect;btk_shem_2022_62];
btk2vect = [btk2vect;btk2_shem_2022_62];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 63 ... EMNATI before 2022-02-22-21Z

my_shem_2022_63 = [25.0,44.9,40;      28.8,42.1,40;    32.2,42.1,50;   33.7,43.0,50;    37.1,41.0,35];
rsmc_shem_2022_63 = [25.1,44.9,50.4;  28.4,42.0,50.4;  32.1,42.4,56.0; 33.8,43.4,50.4;  37.6,41.3,44.8];
btk_shem_2022_63 = [24.8,44.1,35;     28.9,41.4,50;    34.13,42.8,55;  36.39,45.75,50;  39.08,44.36,40]; # JTWC best track (except days 3-5)
btk2_shem_2022_63 = [24.53,44.08,44.8;28.61,41.39,50.4;34.13,42.8,56.0;36.39,45.75,50.4;39.08,44.36,39.2]; # MFR data table
myvect = [myvect;my_shem_2022_63];
rsmcvect = [rsmcvect;rsmc_shem_2022_63];
btkvect = [btkvect;btk_shem_2022_63];
btk2vect = [btk2vect;btk2_shem_2022_63];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 64 ... 22U/90S before 2022-02-24-21Z

my_shem_2022_64 = [13.2,93.8,45;    12.8,91.2,50;   13.3,89.9,50;    15.0,89.8,55;    18.5,89.8,65];
rsmc_shem_2022_64 = [13.4,93.8,44.8;12.7,90.7,50.4; 12.9,89.7,50.4;  14.6,89.5,56.0;  17.8,89.7,67.2];
btk_shem_2022_64 = [14.7,92.2,90;   12.9,87.5,80;   13.6,88.5,45;    14.0,87.4,45;    17.2,85.1,45]; # JTWC best track
btk2_shem_2022_64 = [14.7,92.2,95.2;12.99,87.6,78.4;13.91,88.89,39.2;14.09,87.41,39.2;17.03,85.25,47.04]; #1-day is BoM spreadsheet, rest are MFR data table
myvect = [myvect;my_shem_2022_64];
rsmcvect = [rsmcvect;rsmc_shem_2022_64];
btkvect = [btkvect;btk_shem_2022_64];
btk2vect = [btk2vect;btk2_shem_2022_64];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 65 ... ANIKA before 2022-02-25-21Z

my_shem_2022_65 = [13.9,127.2,50;     14.4,126.6,40;  15.1,125.3,35;  15.9,123.6,45;   18.2,120.0,40];
rsmc_shem_2022_65 = [13.9,127.1,50.4; 14.0,126.8,39.2;14.6,125.8,39.2;15.8,124.0,44.8; 18.1,122.2,39.2];
btk_shem_2022_65 = [14.2,126.8,35;    15.3,125.9,30;  17.5,123.7,20;  18.2,121.6,35;   20.4,121.1,35]; # JTWC best track
btk2_shem_2022_65 = [14.25,126.7,44.8;15.5,125.5,39.2;16.7,123.6,28.0;18.2,121.95,33.6;20.2,121.0,44.8]; # BoM spreadsheet
myvect = [myvect;my_shem_2022_65];
rsmcvect = [rsmcvect;rsmc_shem_2022_65];
btkvect = [btkvect;btk_shem_2022_65];
btk2vect = [btk2vect;btk2_shem_2022_65];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 66 ... VERNON before 2022-02-25-21Z

my_shem_2022_66 = [13.5,88.8,65;     13.9,88.3,70;    15.7,87.7,75;    19.3,87.3,85;     22.9,85.7,70];
rsmc_shem_2022_66 = [13.6,88.7,61.6; 14.1,88.4,50.4;  15.7,87.8,72.8;  19.1,87.5,84.0;   22.2,85.9,72.8];
btk_shem_2022_66 = [12.9,87.5,80;    13.6,88.5,45;    14.0,87.4,45;    17.2,85.1,45;     20.5,82.9,55]; # JTWC best track
btk2_shem_2022_66 = [12.99,87.6,78.4;13.91,88.89,39.2;14.09,87.41,39.2;17.03,85.25,47.04;20.67,82.87,61.6]; # MFR data table
myvect = [myvect;my_shem_2022_66];
rsmcvect = [rsmcvect;rsmc_shem_2022_66];
btkvect = [btkvect;btk_shem_2022_66];
btk2vect = [btk2vect;btk2_shem_2022_66];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 67 ... ANIKA before 2022-02-26-21Z

my_shem_2022_67 = [14.7,126.1,45;    15.2,124.6,45;  16.4,122.5,55;   18.7,120.7,65;  20.9,120.3,55];
rsmc_shem_2022_67 = [14.8,126.1,44.8;15.2,124.6,44.8;16.2,122.1,61.6; 18.2,120.2,72.8;21.0,120.9,56.0];
btk_shem_2022_67 = [15.3,125.9,30;   17.5,123.7,20;  18.2,121.6,35;   20.4,121.1,35;  23.5,123.3,20]; # JTWC best track
btk2_shem_2022_67 = [15.5,125.5,39.2;16.7,123.6,28.0;18.2,121.95,33.6;20.2,121.0,44.8;22.7,123.4,33.6]; # BoM spreadsheet
myvect = [myvect;my_shem_2022_67];
rsmcvect = [rsmcvect;rsmc_shem_2022_67];
btkvect = [btkvect;btk_shem_2022_67];
btk2vect = [btk2vect;btk2_shem_2022_67];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 68 ... VERNON before 2022-02-27-03Z

my_shem_2022_68 = [13.5,87.0,75;      15.6,85.2,85;    19.3,83.3,85;    23.1,80.6,70;    28.2,77.1,50];
rsmc_shem_2022_68 = [13.5,86.8,72.8;  15.5,85.3,89.6;  19.0,83.8,84.0;  23.0,81.2,61.6;  28.0,77.7,50.4];
btk_shem_2022_68 = [13.8,87.8,45;     14.8,87.0,45;    17.7,84.6,50;    22.0,82.3,60;    27.2,80.3,45]; # JTWC best track
btk2_shem_2022_68 = [13.77,87.91,39.2;14.77,87.28,39.2;17.68,84.62,50.4;22.13,82.31,67.2;27.04,80.38,53.76]; # MFR data table
myvect = [myvect;my_shem_2022_68];
rsmcvect = [rsmcvect;rsmc_shem_2022_68];
btkvect = [btkvect;btk_shem_2022_68];
btk2vect = [btk2vect;btk2_shem_2022_68];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 69 ... ANIKA before 2022-02-27-03Z

my_shem_2022_69 = [15.2,125.2,35;    15.9,123.3,45;   17.6,120.9,65  ;20.0,120.1,80;  22.9,122.9,35];
rsmc_shem_2022_69 = [14.8,125.6,39.2;15.6,123.9,44.8; 16.8,121.5,61.6;19.4,120.3,78.4;22.1,121.6,39.2];
btk_shem_2022_69 = [15.8,125.6,25;   17.7,123.2,20;   18.8,121.1,40  ;21.0,121.7,35;  24.8,126.8,25]; # JTWC best track (except day 5)
btk2_shem_2022_69 = [15.6,125.1,39.2;16.7,122.55,28.0;18.9,121.0,39.2;21.0,121.0,44.8;22.7,123.9,28.0]; # BoM spreadsheet
myvect = [myvect;my_shem_2022_69];
rsmcvect = [rsmcvect;rsmc_shem_2022_69];
btkvect = [btkvect;btk_shem_2022_69];
btk2vect = [btk2vect;btk2_shem_2022_69];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 70 ... VERNON before 2022-02-27-09Z

my_shem_2022_70 = [13.8,86.9,70;     16.3,85.0,75;    19.8,83.1,80;    23.7,80.3,65;   28.4,78.4,50];
rsmc_shem_2022_70 = [13.9,86.8,50.4; 16.6,85.1,61.6;  20.0,83.0,84.0;  24.1,80.0,67.2; 28.9,77.3,56.0];
btk_shem_2022_70 = [13.7,87.7,50;    15.5,86.6,45;    18.6,83.7,50;    23.2,81.5,50;   28.3,80.0,45]; # JTWC best track
btk2_shem_2022_70 = [13.46,87.8,44.8;15.66,86.61,44.8;18.54,83.91,56.0;23.3,81.48,67.2;28.23,79.93,53.76]; # MFR data table
myvect = [myvect;my_shem_2022_70];
rsmcvect = [rsmcvect;rsmc_shem_2022_70];
btkvect = [btkvect;btk_shem_2022_70];
btk2vect = [btk2vect;btk2_shem_2022_70];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 71 ... ANIKA before 2022-02-27-09Z

my_shem_2022_71 = [15.2,125.3,40;    16.0,123.1,50;   17.7,120.8,65  ;20.5,120.1,65];
rsmc_shem_2022_71 = [15.2,125.0,39.2;16.2,122.9,56.0; 18.0,120.7,72.8;20.9,120.9,67.2];
btk_shem_2022_71 = [16.3,125.2,25;   17.5,122.6,25;   19.4,120.6,40  ;22.4,122.6,30]; # JTWC best track
btk2_shem_2022_71 = [16.0,124.9,33.6;17.0,122.15,33.6;19.5,120.6,44.8;22.1,122.1,44.8]; # BoM spreadsheet
myvect = [myvect;my_shem_2022_71];
rsmcvect = [rsmcvect;rsmc_shem_2022_71];
btkvect = [btkvect;btk_shem_2022_71];
btk2vect = [btk2vect;btk2_shem_2022_71];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;4;4;4;4];

# Shem 72 ... VERNON before 2022-02-27-21Z

my_shem_2022_72 = [15.4,86.5,50;      18.4,84.7,70;     21.9,82.3,60;    26.2,79.4,45;    28.5,76.5,40];
rsmc_shem_2022_72 = [15.5,86.4,44.8;  18.6,84.6,78.4;   21.8,81.8,67.2;  25.9,78.7,61.6;  29.3,76.9,50.4];
btk_shem_2022_72 = [14.0,87.4,45;     17.2,85.1,45;     20.5,82.9,55;    26.0,80.8,45;    29.8,79.6,50]; # JTWC best track
btk2_shem_2022_72 = [14.09,87.41,39.2;17.03,85.25,47.04;20.67,82.87,61.6;25.84,80.84,56.0;29.61,79.56,50.4]; # MFR data table
myvect = [myvect;my_shem_2022_72];
rsmcvect = [rsmcvect;rsmc_shem_2022_72];
btkvect = [btkvect;btk_shem_2022_72];
btk2vect = [btk2vect;btk2_shem_2022_72];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 73 ... ANIKA before 2022-02-27-21Z

my_shem_2022_73 = [16.2,123.7,45;    17.4,121.8,60;   19.7,120.7,75  ;23.4,121.7,35];
rsmc_shem_2022_73 = [16.0,124.0,44.8;16.9,122.0,61.6; 19.5,120.7,89.6;22.9,122.0,39.2];
btk_shem_2022_73 = [17.5,123.7,20;   18.2,121.6,35;   20.4,121.1,35  ;23.5,123.3,20]; # JTWC best track
btk2_shem_2022_73 = [16.7,123.6,28.0;18.2,121.95,39.2;20.2,121.0,44.8;22.7,123.4,33.6]; # BoM spreadsheet
myvect = [myvect;my_shem_2022_73];
rsmcvect = [rsmcvect;rsmc_shem_2022_73];
btkvect = [btkvect;btk_shem_2022_73];
btk2vect = [btk2vect;btk2_shem_2022_73];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;4;4;4;4];

# Shem 74 ... VERNON before 2022-02-28-21Z

my_shem_2022_74 = [17.8,84.4,55;       20.6,81.4,65;    24.5,78.9,60;    28.2,76.9,45;    31.0,76.8,30];
rsmc_shem_2022_74 = [17.9,84.5,56.0;   20.7,81.7,67.2;  24.5,78.9,61.6;  28.6,76.8,44.8;  31.3,76.8,39.2];
btk_shem_2022_74 = [17.2,85.1,45;      20.5,82.9,55;    26.0,80.8,45;    29.8,79.6,50;    32.0,79.7,45]; # JTWC best track
btk2_shem_2022_74 = [17.03,85.25,47.04;20.67,82.87,61.6;25.84,80.84,56.0;29.61,79.56,50.4;31.82,79.6,47.04]; # MFR data table
myvect = [myvect;my_shem_2022_74];
rsmcvect = [rsmcvect;rsmc_shem_2022_74];
btkvect = [btkvect;btk_shem_2022_74];
btk2vect = [btk2vect;btk2_shem_2022_74];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 75 ... ANIKA before 2022-02-28-21Z

my_shem_2022_75 = [17.6,122.1,45;     19.7,121.5,60  ;22.0,122.2,35];
rsmc_shem_2022_75 = [17.4,122.0,39.2; 19.4,121.3,61.6;21.7,121.9,33.6];
btk_shem_2022_75 = [18.2,121.6,35;    20.4,121.1,35  ;23.5,123.3,20]; # JTWC best track
btk2_shem_2022_75 = [18.2,121.95,33.6;20.2,121.0,44.8;22.7,123.4,33.6]; # BoM spreadsheet
myvect = [myvect;my_shem_2022_75];
rsmcvect = [rsmcvect;rsmc_shem_2022_75];
btkvect = [btkvect;btk_shem_2022_75];
btk2vect = [btk2vect;btk2_shem_2022_75];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;4;4;4];

# Shem 76 ... VERNON before 2022-03-01-03Z

my_shem_2022_76 = [18.5,83.9,60;      21.4,81.1,65;    24.9,78.6,55;     28.8,77.6,40;    32.2,76.3,30];
rsmc_shem_2022_76 = [18.6,83.9,61.6;  21.6,81.1,72.8;  25.3,78.6,56.0;   29.3,77.5,39.2;  32.6,77.5,39.2];
btk_shem_2022_76 = [17.7,84.6,50;     22.0,82.3,60;    27.2,80.3,45;     30.4,79.5,45;    32.5,79.5,40]; # JTWC best track
btk2_shem_2022_76 = [17.68,84.62,50.4;22.13,82.31,67.2;27.04,80.38,53.76;30.61,79.65,44.8;32.52,79.43,50.4]; # MFR data table
myvect = [myvect;my_shem_2022_76];
rsmcvect = [rsmcvect;rsmc_shem_2022_76];
btkvect = [btkvect;btk_shem_2022_76];
btk2vect = [btk2vect;btk2_shem_2022_76];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 77 ... ANIKA before 2022-03-01-03Z

my_shem_2022_77 = [18.0,121.2,45    ;20.6,121.4,45;  22.5,121.7,30];
rsmc_shem_2022_77 = [18.0,121.2,44.8;20.3,121.0,50.4;22.1,121.5,33.6];
btk_shem_2022_77 = [18.8,121.1,40   ;21.0,121.7,35;  24.8,126.8,25]; # JTWC best track (except day 3)
btk2_shem_2022_77 = [18.9,121.0,39.2;21.0,121.6,44.8;22.7,123.9,28.0]; # BoM spreadsheet
myvect = [myvect;my_shem_2022_77];
rsmcvect = [rsmcvect;rsmc_shem_2022_77];
btkvect = [btkvect;btk_shem_2022_77];
btk2vect = [btk2vect;btk2_shem_2022_77];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;4;4;4];

# Shem 78 ... VERNON before 2022-03-01-21Z

my_shem_2022_78 = [20.0,82.4,50;      24.0,79.7,45;    28.2,78.3,40;    31.4,78.2,40;    34.4,78.4,30];
rsmc_shem_2022_78 = [20.2,82.5,44.8;  24.3,79.9,44.8;  28.6,78.0,39.2;  31.6,77.7,39.2;  35.0,78.6,44.8];
btk_shem_2022_78 = [20.5,82.9,55;     26.0,80.8,45;    29.8,79.6,50;    32.0,79.7,45;    34.42,80.19,45]; # JTWC best track (except day 5)
btk2_shem_2022_78 = [20.67,82.87,61.6;25.84,80.84,56.0;29.61,79.56,50.4;31.82,79.6,47.04;34.42,80.19,44.8]; # MFR data table
myvect = [myvect;my_shem_2022_78];
rsmcvect = [rsmcvect;rsmc_shem_2022_78];
btkvect = [btkvect;btk_shem_2022_78];
btk2vect = [btk2vect;btk2_shem_2022_78];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 79 ... 09/97S before 2022-03-06-03Z

my_shem_2022_79 = [  15.8,54.1,35;     15.8,52.6,55;   15.8,50.7,65;    16.0,48.6,30;    16.3,46.3,25];
rsmc_shem_2022_79 = [15.9,54.2,33.6;   15.8,52.7,50.4; 15.8,50.8,61.6;  15.9,48.8,33.6;  16.3,46.7,22.4];
btk_shem_2022_79 = [ 15.4,52.7,25;     15.6,50.3,35;   15.0,46.9,40;    15.5,43.5,55;    15.5,40.6,100]; # JTWC best track
btk2_shem_2022_79 = [15.25,52.48,25.76;15.5,50.25,44.8;14.87,46.77,33.6;15.37,43.57,61.6;15.43,40.56,95.2]; # MFR data table
myvect = [myvect;my_shem_2022_79];
rsmcvect = [rsmcvect;rsmc_shem_2022_79];
btkvect = [btkvect;btk_shem_2022_79];
btk2vect = [btk2vect;btk2_shem_2022_79];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 80 ... 09/97S before 2022-03-06-21Z

my_shem_2022_80 = [  16.0,51.5,35;   15.6,50.0,35;    15.7,47.2,30;    16.0,44.8,30;   17.1,44.5,30];
rsmc_shem_2022_80 = [15.9,51.5,33.6; 15.8,49.8,28.0;  15.6,47.5,28.0;  16.2,45.4,28.0; 17.6,45.6,28.0];
btk_shem_2022_80 = [ 15.6,51.1,35;   15.0,47.6,20;    15.3,44.4,50;    15.8,41.3,85;   15.1,38.4,40]; # JTWC best track
btk2_shem_2022_80 = [15.7,51.12,39.2;15.02,47.47,28.0;15.33,44.31,56.0;15.59,41.2,84.0;15.02,38.22,22.6]; # MFR data table
myvect = [myvect;my_shem_2022_80];
rsmcvect = [rsmcvect;rsmc_shem_2022_80];
btkvect = [btkvect;btk_shem_2022_80];
btk2vect = [btk2vect;btk2_shem_2022_80];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 81 ... GOMBE before 2022-03-07-21Z

my_shem_2022_81 = [  14.9,48.4,30;    14.9,45.7,40;    14.9,43.2,60;   14.9,41.5,80;    15.5,40.0,90];
rsmc_shem_2022_81 = [15.1,48.2,22.4;  14.8,45.8,39.2;  15.1,43.8,56.0; 15.4,41.9,78.4;  16.0,41.0,89.6];
btk_shem_2022_81 = [ 15.0,47.6,20;    15.3,44.4,50;    15.8,41.3,85;   15.1,38.4,40;    15.6,35.1,25]; # JTWC best track (except day 5)
btk2_shem_2022_81 = [15.02,47.47,28.0;15.33,44.31,56.0;15.59,41.2,84.0;15.02,38.22,22.4;15.25,35.26,22.4]; # MFR data table
myvect = [myvect;my_shem_2022_81];
rsmcvect = [rsmcvect;rsmc_shem_2022_81];
btkvect = [btkvect;btk_shem_2022_81];
btk2vect = [btk2vect;btk2_shem_2022_81];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 82 ... GOMBE before 2022-03-08-03Z

my_shem_2022_82 = [  14.7,47.4,30;    14.7,45.0,40;    15.1,42.4,65;    15.6,40.5,85;    16.6,39.8,85];
rsmc_shem_2022_82 = [14.8,47.8,22.4;  14.8,45.6,44.8;  14.9,43.5,56.0;  15.3,41.6,78.4;  16.1,40.9,89.6];
btk_shem_2022_82 = [ 15.0,46.9,40;    15.5,43.5,55;    15.5,40.6,100;   15.1,37.3,30;    15.9,34.7,25]; # JTWC best track
btk2_shem_2022_82 = [14.87,46.77,33.6;15.37,43.57,61.6;15.43,40.56,95.2;15.08,37.34,22.4;15.58,35.09,22.4]; # MFR data table
myvect = [myvect;my_shem_2022_82];
rsmcvect = [rsmcvect;rsmc_shem_2022_82];
btkvect = [btkvect;btk_shem_2022_82];
btk2vect = [btk2vect;btk2_shem_2022_82];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 83 ... GOMBE before 2022-03-08-21Z

my_shem_2022_83 = [15.0,45.0,55;      15.3,43.0,80;   15.4,39.6,75;    15.2,38.1,30;    17.0,39.1,30];
rsmc_shem_2022_83 = [15.0,45.4,56.0;  15.5,43.1,72.8; 15.6,40.4,100.8; 15.4,38.9,33.6;  17.3,40.1,39.2];
btk_shem_2022_83 = [15.3,44.4,50;     15.8,41.3,85;   15.1,38.4,40;    15.6,35.1,25;    17.1,35.4,20]; # JTWC best track (days 1-3 only)
btk2_shem_2022_83 = [15.33,44.31,56.0;15.59,41.2,84.0;15.02,38.22,22.4;15.25,35.26,22.4;16.7,35.27,16.8]; # MFR data table
myvect = [myvect;my_shem_2022_83];
rsmcvect = [rsmcvect;rsmc_shem_2022_83];
btkvect = [btkvect;btk_shem_2022_83];
btk2vect = [btk2vect;btk2_shem_2022_83];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 84 ... GOMBE before 2022-03-09-03Z

my_shem_2022_84 = [15.1,44.0,60;      15.4,41.5,80;     15.3,38.6,45;    15.8,37.9,25;    17.8,39.4,35];
rsmc_shem_2022_84 = [15.1,44.2,56.0;  15.5,41.9,84.0;   15.3,39.3,39.2;  15.6,38.6,28.0;  18.2,39.9,44.8];
btk_shem_2022_84 = [15.5,43.5,55;     15.5,40.6,100;    15.1,37.3,30;    15.9,34.7,25;    17.4,35.7,20]; # JTWC best track (days 1-3 only)
btk2_shem_2022_84 = [15.37,43.57,61.6;15.43,40.56,100.8;15.08,37.34,22.4;15.58,35.09,22.4;17.01,35.94,16.8]; # MFR data table
myvect = [myvect;my_shem_2022_84];
rsmcvect = [rsmcvect;rsmc_shem_2022_84];
btkvect = [btkvect;btk_shem_2022_84];
btk2vect = [btk2vect;btk2_shem_2022_84];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 85 ... GOMBE before 2022-03-09-09Z

my_shem_2022_85 = [15.3,43.2,75;      15.4,40.6,100;   15.3,38.4,35;    16.0,38.2,25;   18.2,38.6,45];
rsmc_shem_2022_85 = [15.3,43.3,72.8;  15.5,40.9,112.0; 15.3,38.6,33.6;  16.0,38.3,28.0; 18.3,39.5,44.8];
btk_shem_2022_85 = [15.6,42.8,70;     15.2,40.1,80;    15.4,36.9,20;    16.3,34.5,20;   17.7,36.0,20]; # JTWC best track (days 1-3 only)
btk2_shem_2022_85 = [15.68,42.77,67.2;15.27,40.11,72.8;14.97,36.55,22.4;16.0,34.94,22.4;17.69,36.63,16.8]; # MFR data table
myvect = [myvect;my_shem_2022_85];
rsmcvect = [rsmcvect;rsmc_shem_2022_85];
btkvect = [btkvect;btk_shem_2022_85];
btk2vect = [btk2vect;btk2_shem_2022_85];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 86 ... GOMBE before 2022-03-09-21Z

my_shem_2022_86 = [15.6,41.5,100;    15.3,38.8,40;    15.5,37.2,30;    16.9,38.0,30;   19.2,39.1,50];
rsmc_shem_2022_86 = [15.5,41.5,106.4;15.3,39.0,33.6;  15.1,37.4,22.4;  16.5,38.2,22.4; 19.1,39.6,39.2];
btk_shem_2022_86 = [15.8,41.3,85;    15.1,38.4,40;    15.6,35.1,25;    17.1,35.4,20;   18.3,37.4,20]; # JTWC best track (days 1-2 only)
btk2_shem_2022_86 = [15.59,41.2,84.0;15.02,38.22,22.4;15.25,35.26,22.4;16.7,35.27,16.8;18.53,37.0,22.4]; # MFR data table
myvect = [myvect;my_shem_2022_86];
rsmcvect = [rsmcvect;rsmc_shem_2022_86];
btkvect = [btkvect;btk_shem_2022_86];
btk2vect = [btk2vect;btk2_shem_2022_86];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 87 ... GOMBE before 2022-03-10-21Z

my_shem_2022_87 = [15.3,38.5,40;      15.7,36.9,25;    16.7,36.7,25;   18.3,37.8,30;   19.8,40.1,45];
rsmc_shem_2022_87 = [15.3,38.5,39.2;  15.3,37.0,22.4;  16.8,37.1,28.0; 18.4,38.2,33.6; 20.4,40.0,39.2];
btk_shem_2022_87 = [15.1,38.4,40;     15.6,35.1,25;    17.1,35.4,20;   18.3,37.4,20;   18.4,37.9,25]; # JTWC best track (day 1 only)
btk2_shem_2022_87 = [15.02,38.22,22.4;15.25,35.26,22.4;16.7,35.27,16.8;18.53,37.0,22.4;18.11,37.98,22.4]; # MFR data table
myvect = [myvect;my_shem_2022_87];
rsmcvect = [rsmcvect;rsmc_shem_2022_87];
btkvect = [btkvect;btk_shem_2022_87];
btk2vect = [btk2vect;btk2_shem_2022_87];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 88 ... GOMBE before 2022-03-11-03Z

my_shem_2022_88 = [15.2,37.9,40;      15.8,36.4,25;    17.6,37.6,30;    19.3,38.8,40;    20.4,39.8,40];
rsmc_shem_2022_88 = [15.1,37.9,28.0;  15.7,36.7,22.4;  17.5,37.7,28.0;  19.3,39.4,39.2;  20.3,40.3,44.8];
btk_shem_2022_88 = [15.1,37.3,30;     15.9,34.7,25;    17.4,35.7,20;    18.5,37.3,25;    17.9,37.8,25]; # JTWC best track (day 1 only)
btk2_shem_2022_88 = [15.08,37.34,22.4;15.58,35.09,22.4;17.01,35.94,16.8;18.48,37.21,28.0;18.07,38.1,22.4]; # MFR data table
myvect = [myvect;my_shem_2022_88];
rsmcvect = [rsmcvect;rsmc_shem_2022_88];
btkvect = [btkvect;btk_shem_2022_88];
btk2vect = [btk2vect;btk2_shem_2022_88];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 89 ... GOMBE before 2022-03-11-21Z

my_shem_2022_89 = [15.6,36.8,25;      17.0,36.9,25;   19.1,37.9,30;   19.7,38.5,40;    20.2,38.9,40];
rsmc_shem_2022_89 = [15.6,36.9,22.4;  17.1,37.1,22.4; 19.0,38.4,28.0; 19.7,39.4,39.2;  20.7,39.1,44.8];
btk_shem_2022_89 = [15.6,35.1,25;     17.1,35.4,20;   18.3,37.4,20;   18.4,37.9,25;    17.9,37.4,25]; # operationally from U.S. sources (no JTWC btk values)
btk2_shem_2022_89 = [15.25,35.26,22.4;16.7,35.27,16.4;18.53,37.0,22.4;18.11,37.98,22.4;17.78,37.8,28.0]; # MFR data table
myvect = [myvect;my_shem_2022_89];
rsmcvect = [rsmcvect;rsmc_shem_2022_89];
btkvect = [btkvect;btk_shem_2022_89];
btk2vect = [btk2vect;btk2_shem_2022_89];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 90 ... 27U/20S before 2022-03-13-21Z

my_shem_2022_90 = [15.4,99.8,40;    16.0,95.6,50;  16.7,91.4,35];
rsmc_shem_2022_90 = [15.5,99.8,44.8;15.9,95.8,50.4;16.7,91.3,39.2];
btk_shem_2022_90 = [16.7,98.8,65;   17.6,95.3,55;  19.6,92.6,40]; # JTWC best track
btk2_shem_2022_90 = [16.6,98.7,56.0;17.5,95.5,56.0;20.0,92.5,44.8]; # BoM spreadsheet
myvect = [myvect;my_shem_2022_90];
rsmcvect = [rsmcvect;rsmc_shem_2022_90];
btkvect = [btkvect;btk_shem_2022_90];
btk2vect = [btk2vect;btk2_shem_2022_90];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;4;4;4];

# Shem 91 ... 27U/20S before 2022-03-14-03Z

my_shem_2022_91 = [16.3,98.7,50;    16.7,94.9,50;  17.8,91.2,35];
rsmc_shem_2022_91 = [16.1,99.1,44.8;16.4,95.1,50.4;17.6,91.1,33.6];
btk_shem_2022_91 = [16.9,98.1,60;   17.9,94.5,45;  20.3,92.5,35]; # JTWC best track
btk2_shem_2022_91 = [16.8,98.0,56.0;17.8,94.7,44.8;20.4,92.8,44.8]; # BoM spreadsheet
myvect = [myvect;my_shem_2022_91];
rsmcvect = [rsmcvect;rsmc_shem_2022_91];
btkvect = [btkvect;btk_shem_2022_91];
btk2vect = [btk2vect;btk2_shem_2022_91];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;4;4;4];

# Shem 92 ... BILLY before 2022-03-15-03Z

my_shem_2022_92 = [17.3,94.2,50;    18.6,90.2,35];
rsmc_shem_2022_92 = [17.3,94.4,44.8;19.3,91.2,39.2];
btk_shem_2022_92 = [17.9,94.5,45;   20.3,92.5,35]; # JTWC best track
btk2_shem_2022_92 = [17.8,94.7,44.8;20.4,92.8,44.8]; # BoM spreadsheet
myvect = [myvect;my_shem_2022_92];
rsmcvect = [rsmcvect;rsmc_shem_2022_92];
btkvect = [btkvect;btk_shem_2022_92];
btk2vect = [btk2vect;btk2_shem_2022_92];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;4;4];

# Nio 01 ... BOB 02 / 91B before 2022-03-20-09Z

my_nio_2022_01 = [12.9,94.4,35    ;15.5,94.2,40];
rsmc_nio_2022_01 = [13.1,93.6,31.8;16.2,93.9,37.1];
btk_nio_2022_01 = [12.7,94.6,30;   16.1,94.7,25]; # operationally from U.S. sources (no JTWC btk values)
btk2_nio_2022_01 = [12.6,93.9,31.8;15.8,94.2,31.8]; # preliminary report of IMD
myvect = [myvect;my_nio_2022_01];
rsmcvect = [rsmcvect;rsmc_nio_2022_01];
btkvect = [btkvect;btk_nio_2022_01];
btk2vect = [btk2vect;btk2_nio_2022_01];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Shem 93 ... 28U / 21S before 2022-03-21-03Z

my_shem_2022_93 = [16.1,109.8,65;     17.0,108.0,55;  18.5,107.0,40;  21.3,107.4,40;  27.1,111.1,30];
rsmc_shem_2022_93 = [16.0,110.0,61.6; 16.9,108.8,44.8;18.3,107.7,39.2;21.4,107.8,39.2;25.7,110.0,44.8];
btk_shem_2022_93 = [16.7,109.4,90;    18.3,108.9,75;  19.9,107.4,35;  24.8,106.9,30;  29.4,108.6,35]; # JTWC best track
btk2_shem_2022_93 = [16.6,109.3,100.8;18.5,108.8,78.4;19.8,107.3,33.6;25.0,107.0,33.6;29.4,108.6,33.6]; # BoM spreadsheet, except day 5
myvect = [myvect;my_shem_2022_93];
rsmcvect = [rsmcvect;rsmc_shem_2022_93];
btkvect = [btkvect;btk_shem_2022_93];
btk2vect = [btk2vect;btk2_shem_2022_93];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Nio 02 ... BOB 02 / 91B before 2022-03-21-03Z

my_nio_2022_02 = [15.5,94.7,40;    18.9,95.9,30];
rsmc_nio_2022_02 = [15.1,93.8,37.1;18.4,94.1,26.5];
btk_nio_2022_02 = [15.1,94.8,30;   19.1,94.7,15]; # operationally from U.S. sources (no JTWC btk values)
btk2_nio_2022_02 = [14.9,94.2,31.8;19.0,94.6,21.2]; # preliminary report of IMD
myvect = [myvect;my_nio_2022_02];
rsmcvect = [rsmcvect;rsmc_nio_2022_02];
btkvect = [btkvect;btk_nio_2022_02];
btk2vect = [btk2vect;btk2_nio_2022_02];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Shem 94 ... CHARLOTTE before 2022-03-22-03Z

my_shem_2022_94 = [17.3,108.0,75;    18.8,106.9,50;  22.0,107.5,40;  27.7,111.8,50];
rsmc_shem_2022_94 = [17.4,108.1,72.8;18.6,107.0,44.8;22.0,107.0,39.2;27.0,109.9,44.8];
btk_shem_2022_94 = [18.3,108.9,75;   19.9,107.4,35;  24.8,106.9,30;  29.4,108.6,35]; # JTWC best track
btk2_shem_2022_94 = [18.5,108.8,78.4;19.8,107.3,33.6;25.0,107.0,33.6;29.4,108.6,33.6]; # BoM spreadsheet, except day 4
myvect = [myvect;my_shem_2022_94];
rsmcvect = [rsmcvect;rsmc_shem_2022_94];
btkvect = [btkvect;btk_shem_2022_94];
btk2vect = [btk2vect;btk2_shem_2022_94];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;4;4;4;4];

# Shem 95 ... 10 / 94S before 2022-03-22-03Z

my_shem_2022_95 = [12.4,77.7,40;      13.1,75.0,55;    14.2,73.8,90;     17.5,73.3,110;    22.2,75.4,85];
rsmc_shem_2022_95 = [12.5,77.7,39.2;  13.1,74.9,56.0;  13.9,73.3,89.6;   16.9,73.1,112.0;  21.3,74.6,95.2];
btk_shem_2022_95 = [12.5,77.2,30;     12.8,75.5,55;    13.4,73.7,95;     15.5,73.5,90;     19.5,75.8,55]; # JTWC best track
btk2_shem_2022_95 = [12.54,77.47,33.6;12.83,75.44,50.4;13.37,73.61,100.8;15.27,73.58,106.4;19.51,75.89,61.6]; # MFR data table
myvect = [myvect;my_shem_2022_95];
rsmcvect = [rsmcvect;rsmc_shem_2022_95];
btkvect = [btkvect;btk_shem_2022_95];
btk2vect = [btk2vect;btk2_shem_2022_95];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 96 ... CHARLOTTE before 2022-03-22-09Z

my_shem_2022_96 = [17.8,107.4,65;    19.5,106.5,45;  23.7,107.9,40;  28.9,112.9,45];
rsmc_shem_2022_96 = [18.0,107.7,72.8;19.4,106.5,44.8;23.8,107.4,39.2;28.1,111.1,44.8];
btk_shem_2022_96 = [19.1,108.5,65;   21.1,107.5,30;  26.5,107.2,40;  28.4,108.9,35]; # JTWC best track
btk2_shem_2022_96 = [19.0,108.4,72.8;21.0,107.3,33.6;27.5,107.8,33.6;28.4,108.9,33.6]; # BoM spreadsheet, except day 4)
myvect = [myvect;my_shem_2022_96];
rsmcvect = [rsmcvect;rsmc_shem_2022_96];
btkvect = [btkvect;btk_shem_2022_96];
btk2vect = [btk2vect;btk2_shem_2022_96];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;4;4;4;4];

# Shem 97 ... CHARLOTTE before 2022-03-23-03Z

my_shem_2022_97 = [19.9,107.7,50;    23.8,107.7,40;  29.4,110.8,35];
rsmc_shem_2022_97 = [19.6,107.2,50.4;23.8,106.9,39.2;28.9,110.2,44.8];
btk_shem_2022_97 = [19.9,107.4,35;   24.8,106.9,30;  29.4,108.6,35]; # JTWC best track
btk2_shem_2022_97 = [19.8,107.3,33.6;25.0,107.0,33.6;29.4,108.6,23.6]; # BoM spreadsheet, except day 3
myvect = [myvect;my_shem_2022_97];
rsmcvect = [rsmcvect;rsmc_shem_2022_97];
btkvect = [btkvect;btk_shem_2022_97];
btk2vect = [btk2vect;btk2_shem_2022_97];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;4;4;4];

# Shem 98 ... HALIMA before 2022-03-24-03Z

my_shem_2022_98 = [13.9,74.9,70;       16.7,75.1,95;     21.1,76.6,80;    23.3,79.3,55;    23.9,82.1,35];
rsmc_shem_2022_98 = [13.8,74.8,78.4;   16.6,74.9,100.8;  21.1,76.0,78.4;  23.3,78.3,56.0;  23.8,80.4,44.8];
btk_shem_2022_98 = [13.4,73.7,95;      15.5,73.5,90;     19.5,75.8,55;    21.9,79.8,45;    22.0,82.3,50]; # JTWC best track
btk2_shem_2022_98 = [13.37,73.61,100.8;15.27,73.58,106.4;19.51,75.89,61.6;21.75,79.53,56.0;21.93,82.37,50.4]; # MFR data table
myvect = [myvect;my_shem_2022_98];
rsmcvect = [rsmcvect;rsmc_shem_2022_98];
btkvect = [btkvect;btk_shem_2022_98];
btk2vect = [btk2vect;btk2_shem_2022_98];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 99 ... HALIMA before 2022-03-24-09Z

my_shem_2022_99 = [14.4,74.3,85;       17.3,74.5,100;   22.2,76.0,75;    23.9,78.4,55;   23.6,81.4,45];
rsmc_shem_2022_99 = [14.5,74.5,84.0;   17.6,74.8,106.4; 22.0,76.0,72.8;  23.5,79.0,50.4; 23.2,81.4,44.8];
btk_shem_2022_99 = [13.7,73.6,110;     16.3,73.8,75;    20.4,76.8,50;    22.0,80.4,45;   21.8,82.6,45]; # JTWC best track
btk2_shem_2022_99 = [13.56,73.52,112.0;16.17,74.01,84.0;20.09,76.76,56.0;22.21,80.5,56.0;21.8,82.63,50.4]; # MFR data table
myvect = [myvect;my_shem_2022_99];
rsmcvect = [rsmcvect;rsmc_shem_2022_99];
btkvect = [btkvect;btk_shem_2022_99];
btk2vect = [btk2vect;btk2_shem_2022_99];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 100 ... HALIMA before 2022-03-24-15Z

my_shem_2022_100 = [14.6,74.2,90;       18.3,74.8,100;   22.5,77.2,65;   23.7,79.6,45;    23.2,81.4,40];
rsmc_shem_2022_100 = [14.7,74.3,84.0;   18.7,75.0,112.0; 22.5,76.9,67.2; 23.4,79.6,50.4;  22.7,81.9,50.4];
btk_shem_2022_100 = [14.2,73.4,125;     17.3,74.4,65;    21.0,77.9,45;   22.3,81.3,45;    21.4,82.5,40]; # JTWC best track
btk2_shem_2022_100 = [14.13,73.43,117.6;17.28,74.63,67.2;20.81,77.9,56.0;22.34,81.23,56.0;21.3,82.53,50.4]; # MFR data table
myvect = [myvect;my_shem_2022_100];
rsmcvect = [rsmcvect;rsmc_shem_2022_100];
btkvect = [btkvect;btk_shem_2022_100];
btk2vect = [btk2vect;btk2_shem_2022_100];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 101 ... HALIMA before 2022-03-24-21Z

my_shem_2022_101 = [15.0,73.5,100;      19.0,74.1,100;  22.4,76.8,65;   23.3,80.3,50;    22.3,81.5,50];
rsmc_shem_2022_101 = [15.1,73.7,95.2;   19.2,74.5,100.8;22.3,77.1,61.6; 23.2,80.3,44.8;  22.0,82.4,56.0];
btk_shem_2022_101 = [14.7,73.4,110;     18.6,75.1,60;   21.4,79.1,45;   22.1,82.0,45;    20.8,82.3,40]; # JTWC best track
btk2_shem_2022_101 = [14.73,73.48,117.6;18.5,74.97,61.6;21.3,78.77,56.0;22.05,81.83,50.4;20.9,82.03,50.4]; # MFR data table
myvect = [myvect;my_shem_2022_101];
rsmcvect = [rsmcvect;rsmc_shem_2022_101];
btkvect = [btkvect;btk_shem_2022_101];
btk2vect = [btk2vect;btk2_shem_2022_101];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 102 ... HALIMA before 2022-03-25-15Z

my_shem_2022_102 = [17.4,73.8,120;     20.4,76.3,85;   22.0,79.5,60;    21.7,81.7,45;   21.3,83.5,55];
rsmc_shem_2022_102 = [17.7,73.9,128.8; 20.8,75.9,84.0; 21.7,78.7,56.0;  21.1,80.9,56.0; 20.5,82.1,56.0];
btk_shem_2022_102 = [17.3,74.4,65;     21.0,77.9,45;   22.3,81.3,45;    21.4,82.5,40;   19.5,82.5,45]; # JTWC best track
btk2_shem_2022_102 = [17.28,74.63,67.2;20.81,77.9,56.0;22.34,81.23,56.0;21.3,82.53,50.4;19.52,82.42,44.8]; # MFR data table
myvect = [myvect;my_shem_2022_102];
rsmcvect = [rsmcvect;rsmc_shem_2022_102];
btkvect = [btkvect;btk_shem_2022_102];
btk2vect = [btk2vect;btk2_shem_2022_102];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 103 ... HALIMA before 2022-03-26-03Z

my_shem_2022_103 = [19.2,75.3,95;      20.6,78.3,75;    20.8,80.6,60;    20.4,82.3,60;    19.9,84.0,70];
rsmc_shem_2022_103 = [19.4,75.4,100.8; 21.2,77.9,78.4;  21.1,80.1,61.6;  20.4,81.8,61.6;  19.3,82.9,72.8];
btk_shem_2022_103 = [19.5,75.8,55;     21.9,79.8,45;    22.0,82.3,50;    20.2,82.2,45;    19.5,83.3,35]; # JTWC best track
btk2_shem_2022_103 = [19.51,75.89,61.6;21.75,79.53,56.0;21.93,82.37,50.4;20.37,82.01,50.4;19.44,83.25,44.8]; # MFR data table
myvect = [myvect;my_shem_2022_103];
rsmcvect = [rsmcvect;rsmc_shem_2022_103];
btkvect = [btkvect;btk_shem_2022_103];
btk2vect = [btk2vect;btk2_shem_2022_103];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 104 ... HALIMA before 2022-03-26-09Z

my_shem_2022_104 = [20.1,76.0,75;      21.4,79.3,65;   20.3,81.5,55;   19.4,82.4,60;    18.7,83.4,60];
rsmc_shem_2022_104 = [20.1,76.0,72.8;  21.3,79.0,50.4; 20.6,81.4,50.4; 19.5,82.3,61.6;  19.3,82.4,50.4];
btk_shem_2022_104 = [20.4,76.8,50;     22.0,80.4,45;   21.8,82.6,45;   19.9,82.2,45;    19.6,83.9,35]; # JTWC best track
btk2_shem_2022_104 = [20.09,76.76,56.0;22.21,80.5,56.0;21.8,82.63,50.4;19.83,82.31,44.8;19.45,83.72,44.8]; # MFR data table
myvect = [myvect;my_shem_2022_104];
rsmcvect = [rsmcvect;rsmc_shem_2022_104];
btkvect = [btkvect;btk_shem_2022_104];
btk2vect = [btk2vect;btk2_shem_2022_104];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 105 ... HALIMA before 2022-03-26-15Z

my_shem_2022_105 = [20.7,77.2,60;     21.1,80.7,45;    20.4,81.5,45;   19.1,81.2,50;    19.2,81.7,40];
rsmc_shem_2022_105 = [20.6,77.1,56.0; 21.0,80.0,44.8;  20.1,80.9,39.2; 19.0,81.1,50.4;  18.8,80.8,39.2];
btk_shem_2022_105 = [21.0,77.9,45;    22.3,81.3,45;    21.4,82.5,40;   19.5,82.5,45;    19.7,84.3,35]; # JTWC best track
btk2_shem_2022_105 = [20.81,77.9,56.0;22.34,81.23,56.0;21.3,82.53,50.4;19.52,82.42,44.8;19.55,84.01,44.8]; # MFR data table
myvect = [myvect;my_shem_2022_105];
rsmcvect = [rsmcvect;rsmc_shem_2022_105];
btkvect = [btkvect;btk_shem_2022_105];
btk2vect = [btk2vect;btk2_shem_2022_105];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 106 ... HALIMA before 2022-03-27-03Z

my_shem_2022_106 = [21.7,80.2,55;      21.3,82.7,40;    20.1,82.5,40;    19.5,81.3,40;    19.5,81.6,30];
rsmc_shem_2022_106 = [21.6,80.2,56.0;  21.5,82.7,44.8;  20.1,82.6,44.8;  19.0,81.4,39.2;  18.7,80.7,33.6];
btk_shem_2022_106 = [21.9,79.8,45;     22.0,82.3,50;    20.2,82.2,45;    19.5,83.3,35;    19.5,83.3,35]; # JTWC best track
btk2_shem_2022_106 = [21.75,79.53,56.0;21.93,82.37,50.4;20.37,82.01,50.4;19.44,83.25,44.8;19.54,84.23,39.2]; # MFR data table
myvect = [myvect;my_shem_2022_106];
rsmcvect = [rsmcvect;rsmc_shem_2022_106];
btkvect = [btkvect;btk_shem_2022_106];
btk2vect = [btk2vect;btk2_shem_2022_106];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 107 ... HALIMA before 2022-03-27-09Z

my_shem_2022_107 = [21.9,80.8,45;     21.5,82.0,40;   19.9,81.5,35;    19.1,80.1,30;    17.8,80.1,30];
rsmc_shem_2022_107 = [21.8,80.8,44.8; 21.4,82.4,39.2; 19.9,81.6,33.6;  19.0,80.0,33.6;  18.1,79.1,28.0];
btk_shem_2022_107 = [22.0,80.4,45;    21.8,82.6,45;   19.9,82.2,45;    19.6,83.9,35;    19.5,84.6,30]; # JTWC best track
btk2_shem_2022_107 = [22.21,80.5,56.0;21.8,82.63,50.4;19.83,82.31,44.8;19.45,83.72,44.8;19.41,84.4,33.6]; # MFR data table
myvect = [myvect;my_shem_2022_107];
rsmcvect = [rsmcvect;rsmc_shem_2022_107];
btkvect = [btkvect;btk_shem_2022_107];
btk2vect = [btk2vect;btk2_shem_2022_107];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 108 ... HALIMA before 2022-03-28-09Z

my_shem_2022_108 = [21.5,82.4,40;     20.0,81.7,35;    18.9,81.9,35;    18.6,82.0,35;   18.6,80.1,25];
rsmc_shem_2022_108 = [21.5,82.2,39.2; 20.2,81.6,50.4;  19.3,81.8,39.2;  18.7,81.9,33.6; 18.2,80.8,22.4];
btk_shem_2022_108 = [21.8,82.6,45;    19.9,82.2,45;    19.6,83.9,35;    19.5,84.6,30;   18.8,84.8,25]; # JTWC best track
btk2_shem_2022_108 = [21.8,82.63,50.4;19.83,82.31,44.8;19.45,83.72,44.8;19.41,84.4,33.6;18.96,84.81,33.6]; # MFR data table
myvect = [myvect;my_shem_2022_108];
rsmcvect = [rsmcvect;rsmc_shem_2022_108];
btkvect = [btkvect;btk_shem_2022_108];
btk2vect = [btk2vect;btk2_shem_2022_108];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 109 ... HALIMA before 2022-03-28-15Z

my_shem_2022_109 = [21.2,82.5,50;     19.9,82.4,50;    19.6,82.9,50;    19.2,83.7,35;   18.8,81.3,25];
rsmc_shem_2022_109 = [21.4,82.6,56.0; 20.2,82.0,61.6;  19.5,83.0,61.6;  18.8,83.7,39.2; 17.9,81.5,28.0];
btk_shem_2022_109 = [21.4,82.5,40;    19.5,82.5,45;    19.7,84.3,35;    19.4,84.6,25;   18.8,84.5,25]; # JTWC best track
btk2_shem_2022_109 = [21.3,82.53,50.4;19.52,82.42,44.8;19.55,84.01,44.8;19.25,84.5,33.6;18.83,84.33,33.6]; # MFR data table
myvect = [myvect;my_shem_2022_109];
rsmcvect = [rsmcvect;rsmc_shem_2022_109];
btkvect = [btkvect;btk_shem_2022_109];
btk2vect = [btk2vect;btk2_shem_2022_109];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 110 ... HALIMA before 2022-03-29-09Z

my_shem_2022_110 = [20.3,82.0,45;      19.2,82.2,35;    18.3,81.8,35;   18.1,79.4,30;    18.5,75.3,25];
rsmc_shem_2022_110 = [20.4,81.8,50.4;  19.4,81.8,44.8;  18.6,81.7,33.6; 18.0,79.2,28.0;  17.9,75.8,22.4];
btk_shem_2022_110 = [19.9,82.2,45;     19.6,83.9,35;    19.5,84.6,30;   18.8,84.8,25;    19.2,83.4,25]; # JTWC best track
btk2_shem_2022_110 = [19.83,82.31,44.8;19.45,83.72,44.8;19.41,84.4,33.6;18.96,84.81,33.6;19.21,83.39,33.6]; # MFR data table
myvect = [myvect;my_shem_2022_110];
rsmcvect = [rsmcvect;rsmc_shem_2022_110];
btkvect = [btkvect;btk_shem_2022_110];
btk2vect = [btk2vect;btk2_shem_2022_110];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 111 ... HALIMA before 2022-03-29-15Z

my_shem_2022_111 = [20.1,81.9,50;      19.3,83.2,40;    18.8,83.0,35;   18.5,81.3,25;    18.4,77.0,25];
rsmc_shem_2022_111 = [20.0,81.8,56.0;  19.3,82.7,39.2;  18.9,82.3,33.6; 18.5,79.6,28.0;  18.5,75.2,22.4];
btk_shem_2022_111 = [19.5,82.5,45;     19.7,84.3,35;    19.4,84.6,25;   18.8,84.5,25;    18.7,82.5,20]; # JTWC best track
btk2_shem_2022_111 = [19.52,82.42,44.8;19.55,84.01,44.8;19.25,84.5,33.6;18.83,84.33,33.6;19.0,82.1,33.6]; # MFR data table
myvect = [myvect;my_shem_2022_111];
rsmcvect = [rsmcvect;rsmc_shem_2022_111];
btkvect = [btkvect;btk_shem_2022_111];
btk2vect = [btk2vect;btk2_shem_2022_111];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 112 ... HALIMA before 2022-03-30-09Z

my_shem_2022_112 = [18.9,82.7,40;      18.3,83.4,30;   18.4,83.1,25;    18.3,80.0,20;  17.7,74.5,25];
rsmc_shem_2022_112 = [19.2,82.6,33.6;  18.7,83.1,28.0; 18.6,82.1,28.0;  18.3,79.1,22.4;17.7,74.0,22.4];
btk_shem_2022_112 = [19.6,83.9,35;     19.5,84.6,30;   18.8,84.8,25;    19.2,83.4,25;  18.5,80.2,20]; # JTWC best track (except day 5)
btk2_shem_2022_112 = [19.45,83.72,44.8;19.41,84.4,33.6;18.96,84.81,33.6;19.21,83.39,33.6;18.42,80.27,22.4]; # MFR data table (except day 5 wind)
myvect = [myvect;my_shem_2022_112];
rsmcvect = [rsmcvect;rsmc_shem_2022_112];
btkvect = [btkvect;btk_shem_2022_112];
btk2vect = [btk2vect;btk2_shem_2022_112];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 113 ... HALIMA before 2022-03-30-15Z

my_shem_2022_113 = [19.1,83.1,35;      18.5,83.1,30;   18.8,81.5,25;    18.8,76.9,25;  19.4,72.6,0];
rsmc_shem_2022_113 = [19.0,83.0,44.8;  18.5,82.9,33.6; 18.3,81.2,33.6;  17.8,77.7,28.0;17.7,73.2,0];
btk_shem_2022_113 = [19.7,84.3,35;     19.4,84.6,25;   18.8,84.5,25;    18.7,82.5,20;  18.73,79.83,0]; # JTWC best track (except day 5)
btk2_shem_2022_113 = [19.55,84.01,44.8;19.25,84.5,33.6;18.83,84.33,33.6;19.0,82.1,33.6;18.73,79.83,0]; # MFR data table
myvect = [myvect;my_shem_2022_113];
rsmcvect = [rsmcvect;rsmc_shem_2022_113];
btkvect = [btkvect;btk_shem_2022_113];
btk2vect = [btk2vect;btk2_shem_2022_113];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 114 ... HALIMA before 2022-03-31-15Z

my_shem_2022_114 = [19.3,84.0,35;     19.4,82.7,35;    19.3,79.0,35];
rsmc_shem_2022_114 = [19.5,84.1,33.6; 19.6,82.6,33.6;  19.0,78.7,28.0];
btk_shem_2022_114 = [19.4,84.6,25;    18.8,84.5,25;    18.7,82.5,20]; # JTWC best track
btk2_shem_2022_114 = [19.25,84.5,33.6;18.83,84.33,33.6;19.0,82.1,33.6]; # MFR data table
myvect = [myvect;my_shem_2022_114];
rsmcvect = [rsmcvect;rsmc_shem_2022_114];
btkvect = [btkvect;btk_shem_2022_114];
btk2vect = [btk2vect;btk2_shem_2022_114];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 115 ... 10F / 23P before 2022-04-04-21Z

my_shem_2022_115 = [19.7,161.6,55;    22.3,162.4,55];
rsmc_shem_2022_115 = [19.9,162.7,56.0;22.0,163.2,61.6];
btk_shem_2022_115 = [18.8,161.7,50;   21.7,164.1,55]; # JTWC best track
btk2_shem_2022_115 = btk_shem_2022_115; #placeholder
myvect = [myvect;my_shem_2022_115];
rsmcvect = [rsmcvect;rsmc_shem_2022_115];
btkvect = [btkvect;btk_shem_2022_115];
btk2vect = [btk2vect;btk2_shem_2022_115];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;5;5];

# Shem 116 ... FILI before 2022-04-05-09Z

my_shem_2022_116 = [19.8,161.6,55;    22.5,162.9,55;  24.9,165.8,0];
rsmc_shem_2022_116 = [19.9,161.5,56.0;22.3,162.1,50.4;24.8,163.1,0];
btk_shem_2022_116 = [19.8,162.8,55;   23.0,164.5,45;  25.8,166.4,0]; # JTWC best track
btk2_shem_2022_116 = btk_shem_2022_116; #placeholder
myvect = [myvect;my_shem_2022_116];
rsmcvect = [rsmcvect;rsmc_shem_2022_116];
btkvect = [btkvect;btk_shem_2022_116];
btk2vect = [btk2vect;btk2_shem_2022_116];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;5;5;5];

# Shem 117 ... FILI before 2022-04-05-21Z

my_shem_2022_117 = [21.1,162.9,60;    23.5,164.5,50;  25.2,167.5,0];
rsmc_shem_2022_117 = [21.2,162.6,72.8;23.6,164.3,61.6;24.7,166.7,0];
btk_shem_2022_117 = [21.7,164.1,55;   24.7,165.2,40;  25.9,167.8,0]; # JTWC best track
btk2_shem_2022_117 = btk_shem_2022_117; #placeholder
myvect = [myvect;my_shem_2022_117];
rsmcvect = [rsmcvect;rsmc_shem_2022_117];
btkvect = [btkvect;btk_shem_2022_117];
btk2vect = [btk2vect;btk2_shem_2022_117];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;5;5;5];

# Shem 118 ... FILI before 2022-04-06-03Z

my_shem_2022_118 = [21.8,164.0,65;    24.0,166.1,50;  24.2,168.6,0];
rsmc_shem_2022_118 = [22.0,163.6,67.2;24.1,165.2,56.0;25.2,167.5,0];
btk_shem_2022_118 = [22.4,164.3,50;   25.3,165.8,35;  25.8,168.3,0]; # JTWC best track
btk2_shem_2022_118 = btk_shem_2022_118; #placeholder
myvect = [myvect;my_shem_2022_118];
rsmcvect = [rsmcvect;rsmc_shem_2022_118];
btkvect = [btkvect;btk_shem_2022_118];
btk2vect = [btk2vect;btk2_shem_2022_118];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;5;5;5];

# Wpac 01 ... TD / 95W before 2022-04-06-21Z

my_wpac_2022_01 = [4.6,146.9,35;    5.9,145.0,45;  8.9,143.2,55;  12.4,139.3,60;  14.9,134.6,60];
rsmc_wpac_2022_01 = [4.6,146.3,39.2;5.4,144.3,44.8;8.5,142.4,56.0;12.1,138.9,67.2;15.1,134.5,78.4];
btk_wpac_2022_01 = [4.3,146.5,35;   6.6,144.9,40;  9.6,141.7,50;  12.0,137.0,55;  14.6,135.4,50]; # JTWC best track
btk2_wpac_2022_01 = [4.5,146.3,33.6;6.7,144.9,44.8;9.4,141.2,44.8;11.8,137.1,56.0;14.8,135.6,67.2]; # JMA best track (except day 1 wind)
myvect = [myvect;my_wpac_2022_01];
rsmcvect = [rsmcvect;rsmc_wpac_2022_01];
btkvect = [btkvect;btk_wpac_2022_01];
btk2vect = [btk2vect;btk2_wpac_2022_01];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 02 ... TD / 02W before 2022-04-07-03Z

my_wpac_2022_02 = [5.0,145.9,35;    6.5,144.9,45;  10.4,140.7,55;  13.6,138.2,65;  15.7,135.4,65];
rsmc_wpac_2022_02 = [4.8,146.0,39.2;6.3,144.7,44.8;10.2,141.0,56.0;13.6,137.8,67.2;15.6,135.9,78.4];
btk_wpac_2022_02 = [5.1,146.3,40;   7.1,144.4,40;  10.5,140.1,50;  12.5,136.5,55;  15.4,135.0,60]; # JTWC best track
btk2_wpac_2022_02 = [5.1,145.9,39.2;7.1,144.6,44.8;10.6,139.6,50.4;12.2,136.4,56.0;15.4,135.0,72.8]; # JMA best track
myvect = [myvect;my_wpac_2022_02];
rsmcvect = [rsmcvect;rsmc_wpac_2022_02];
btkvect = [btkvect;btk_wpac_2022_02];
btk2vect = [btk2vect;btk2_wpac_2022_02];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 03 ... TD / 02W before 2022-04-07-15Z

my_wpac_2022_03 = [5.7,145.5,40;    7.8,143.4,50;  11.2,139.1,60;  14.6,136.6,70;  17.0,135.7,75];
rsmc_wpac_2022_03 = [5.8,145.3,39.2;8.0,143.0,44.8;11.3,139.5,56.0;14.5,136.9,67.2;16.8,135.9,78.4];
btk_wpac_2022_03 = [6.1,145.5,40;   8.7,142.6,45;  11.5,137.9,55;  13.7,135.8,55;  16.1,135.3,65]; # JTWC best track
btk2_wpac_2022_03 = [6.4,145.2,39.2;8.2,142.4,44.8;11.5,138.0,56.0;14.1,135.9,61.6;16.1,135.4,89.6]; # JMA best track
myvect = [myvect;my_wpac_2022_03];
rsmcvect = [rsmcvect;rsmc_wpac_2022_03];
btkvect = [btkvect;btk_wpac_2022_03];
btk2vect = [btk2vect;btk2_wpac_2022_03];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 04 ... TD / 02W before 2022-04-07-21Z

my_wpac_2022_04 = [6.0,145.0,40;    8.5,142.5,50;  12.1,138.8,60;  15.8,136.1,70;  18.0,135.7,70];
rsmc_wpac_2022_04 = [5.7,145.2,39.2;8.6,142.4,44.8;12.1,139.4,56.0;15.8,136.6,67.2;17.7,136.0,78.4];
btk_wpac_2022_04 = [6.6,144.9,40;   9.6,141.7,50;  12.0,137.0,55;  14.6,135.4,50;  16.5,135.8,80]; # JTWC best track
btk2_wpac_2022_04 = [6.7,144.9,44.8;9.4,141.2,44.8;11.8,137.1,56.0;14.8,135.6,67.2;16.7,135.9,89.6]; # JMA best track
myvect = [myvect;my_wpac_2022_04];
rsmcvect = [rsmcvect;rsmc_wpac_2022_04];
btkvect = [btkvect;btk_wpac_2022_04];
btk2vect = [btk2vect;btk2_wpac_2022_04];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 05 ... MALAKAS before 2022-04-08-15Z

my_wpac_2022_05 = [8.6,142.8,60;    12.1,138.4,75;  15.4,135.3,90;  17.5,135.0,95;  19.9,135.7,85];
rsmc_wpac_2022_05 = [8.6,142.5,56.0;12.1,138.1,72.8;14.9,135.2,89.6;16.9,135.1,95.2;19.5,136.3,95.2];
btk_wpac_2022_05 = [8.7,142.6,45;   11.5,137.9,55;  13.7,135.8,55;  16.1,135.3,65;  19.0,137.6,95]; # JTWC best track
btk2_wpac_2022_05 = [8.2,142.4,44.8;11.5,138.0,56.0;14.1,135.9,61.6;16.1,135.4,89.6;18.8,137.6,95.2]; # JMA best track
myvect = [myvect;my_wpac_2022_05];
rsmcvect = [rsmcvect;rsmc_wpac_2022_05];
btkvect = [btkvect;btk_wpac_2022_05];
btk2vect = [btk2vect;btk2_wpac_2022_05];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 06 ... MALAKAS before 2022-04-09-15Z

my_wpac_2022_06 = [12.2,138.2,65;    14.6,135.2,85;  17.0,135.1,95;  19.2,137.0,95;  22.7,138.2,75];
rsmc_wpac_2022_06 = [12.2,138.3,61.6;14.6,135.3,84.0;16.8,135.2,95.2;19.2,136.6,95.2;22.3,138.3,84.0];
btk_wpac_2022_06 = [11.5,137.9,55;   13.7,135.8,55;  16.1,135.3,65;  19.0,137.6,95;  22.6,139.2,75]; # JTWC best track
btk2_wpac_2022_06 = [11.5,138.0,56.0;14.1,135.9,61.6;16.1,135.4,89.6;18.8,137.6,95.2;22.6,139.0,95.2]; # JMA best track
myvect = [myvect;my_wpac_2022_06];
rsmcvect = [rsmcvect;rsmc_wpac_2022_06];
btkvect = [btkvect;btk_wpac_2022_06];
btk2vect = [btk2vect;btk2_wpac_2022_06];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 07 ... MALAKAS before 2022-04-09-21Z

my_wpac_2022_07 = [12.5,137.2,70;    14.9,135.2,85;  17.7,135.5,95;  20.1,136.7,90;   23.2,139.4,75];
rsmc_wpac_2022_07 = [12.6,137.3,67.2;14.9,135.1,84.0;17.2,135.8,95.2;19.6,137.0,89.6; 22.7,138.8,84.0];
btk_wpac_2022_07 = [12.0,137.0,55;   14.6,135.4,50;  16.5,135.8,80;  19.7,137.5,105;  24.5,139.6,70]; # JTWC best track
btk2_wpac_2022_07 = [11.8,137.1,56.0;14.8,135.6,67.2;16.7,135.9,89.6;19.8,137.5,100.8;24.3,140.0,89.6]; # JMA best track
myvect = [myvect;my_wpac_2022_07];
rsmcvect = [rsmcvect;rsmc_wpac_2022_07];
btkvect = [btkvect;btk_wpac_2022_07];
btk2vect = [btk2vect;btk2_wpac_2022_07];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 08 ... MALAKAS before 2022-04-10-21Z

my_wpac_2022_08 = [14.4,135.0,85;    16.6,135.2,95;  19.3,136.6,90;  22.5,138.4,80;  28.0,142.5,70];
rsmc_wpac_2022_08 = [14.4,135.0,84.0;16.7,135.3,95.2;19.3,136.5,89.6;22.9,138.0,84.0;27.9,141.6,78.4];
btk_wpac_2022_08 = [14.6,135.4,50;   16.5,135.8,80;  19.7,137.5,105; 24.5,139.6,70;  31.9,146.0,45]; # JTWC best track (except day 5)
btk2_wpac_2022_08 = [14.8,135.6,67.2;16.7,135.9,89.6;19.8,137.5,100.8;24.3,140.0,89.6;32.0,146.0,44.8]; # JMA best track (except day 5 wind)
myvect = [myvect;my_wpac_2022_08];
rsmcvect = [rsmcvect;rsmc_wpac_2022_08];
btkvect = [btkvect;btk_wpac_2022_08];
btk2vect = [btk2vect;btk2_wpac_2022_08];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 09 ... MALAKAS before 2022-04-11-21Z

my_wpac_2022_09 = [17.0,135.9,85;    19.7,137.5,90;   23.3,140.0,80;  29.0,145.0,70;  37.3,157.2,0];
rsmc_wpac_2022_09 = [17.0,135.8,84.0;19.7,137.3,95.2; 23.5,139.3,84.0;29.0,143.9,72.8;38.5,155.1,0];
btk_wpac_2022_09 = [16.5,135.8,80;   19.7,137.5,105;  24.5,139.6,70;  31.9,146.0,45;  44.9,158.7,0]; # JTWC best track (days 1-3), oper.U.S.data (day 4), JMA (day 5)
btk2_wpac_2022_09 = [16.7,135.9,89.6;19.8,137.5,100.8;24.3,140.0,89.6;32.0,146.0,44.8;44.9,158.7,0]; # JMA best track
myvect = [myvect;my_wpac_2022_09];
rsmcvect = [rsmcvect;rsmc_wpac_2022_09];
btkvect = [btkvect;btk_wpac_2022_09];
btk2vect = [btk2vect;btk2_wpac_2022_09];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 10 ... MALAKAS before 2022-04-12-15Z

my_wpac_2022_10 = [19.2,137.0,100;    23.2,139.1,80;  29.0,145.7,70  ;38.6,156.8,0];
rsmc_wpac_2022_10 = [19.3,137.1,100.8;23.3,139.1,84.0;29.1,144.2,72.8;37.4,154.4,0];
btk_wpac_2022_10 = [19.0,137.6,95;    22.6,139.2,75;  30.2,143.9,45;  41.5,155.2,0]; # JTWC best track (days 1-3), JMA (day 4)
btk2_wpac_2022_10 = [18.8,137.6,95.2; 22.6,139.0,95.2;30.0,143.7,44.8;41.5,155.2,0]; # JMA best track (except day 3 wind)
myvect = [myvect;my_wpac_2022_10];
rsmcvect = [rsmcvect;rsmc_wpac_2022_10];
btkvect = [btkvect;btk_wpac_2022_10];
btk2vect = [btk2vect;btk2_wpac_2022_10];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Shem 119 ... JASMINE before 2022-04-24-21Z

my_shem_2022_119 = [21.2,40.2,55;      21.9,42.0,40;    19.0,43.1,30;    16.2,43.5,25;    15.5,43.1,25];
rsmc_shem_2022_119 = [20.9,40.2,67.2;  21.1,41.7,44.8;  19.5,43.4,33.6;  16.4,43.9,28.0;  15.0,43.8,22.4];
btk_shem_2022_119 = [21.9,41.1,65;     23.9,44.8,35;    23.4,51.2,35;    21.2,53.2,25;    21.2,52.5,25]; # JTWC best track
btk2_shem_2022_119 = [22.01,41.12,67.2;23.87,44.74,39.2;23.57,51.03,39.2;20.91,53.33,33.6;21.0,52.5,28.0]; # MFR data table
myvect = [myvect;my_shem_2022_119];
rsmcvect = [rsmcvect;rsmc_shem_2022_119];
btkvect = [btkvect;btk_shem_2022_119];
btk2vect = [btk2vect;btk2_shem_2022_119];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 120 ... JASMINE before 2022-04-25-21Z

my_shem_2022_120 = [23.4,43.7,45];
rsmc_shem_2022_120 = [23.1,43.5,50.4];
btk_shem_2022_120 = [23.9,44.8,35]; # JTWC best track
btk2_shem_2022_120 = [23.87,44.74,39.2]; # MFR data table
myvect = [myvect;my_shem_2022_120];
rsmcvect = [rsmcvect;rsmc_shem_2022_120];
btkvect = [btkvect;btk_shem_2022_120];
btk2vect = [btk2vect;btk2_shem_2022_120];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;3];

# Shem 121 ... 34U/98S before 2022-04-25-21Z

my_shem_2022_121 = [12.0,100.6,35;    11.1,100.1,35;  10.4,99.0,30;   9.6,97.5,30];
rsmc_shem_2022_121 = [11.9,100.5,33.6;11.1,99.9,33.6; 10.1,98.7,33.6; 9.4,97.5,33.6];
btk_shem_2022_121 = [12.6,104.4,30;   13.4,107.3,25;  14.8,112.1,30;  14.0,111.7,20]; # operationally from U.S. sources (no JTWC btk)
btk2_shem_2022_121 = [14.0,104.6,39.2;13.0,107.4,28.0;14.0,111.5,28.0;14.0,111.7,22.4]; # BoM spreadsheet, except day 4
myvect = [myvect;my_shem_2022_121];
rsmcvect = [rsmcvect;rsmc_shem_2022_121];
btkvect = [btkvect;btk_shem_2022_121];
btk2vect = [btk2vect;btk2_shem_2022_121];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;4;4;4;4];

# Nio 03 ... BOB 03 / 02B before 2022-05-07-21Z

my_nio_2022_03 = [13.1,87.3,70;    15.0,85.3,60;  16.9,84.8,50;  18.2,85.5,40;  19.9,87.6,35];
rsmc_nio_2022_03 = [13.7,88.0,47.7;15.9,86.1,63.6;17.6,85.3,53.0;18.7,85.6,42.4;19.5,86.4,31.8];
btk_nio_2022_03 = [13.1,87.2,60;   14.5,84.2,60;  15.2,81.8,45;  15.6,80.6,25;  14.7,80.3,20]; # JTWC best track
btk2_nio_2022_03 = btk_nio_2022_03; #placeholder (IMD prelim report has no btk)
myvect = [myvect;my_nio_2022_03];
rsmcvect = [rsmcvect;rsmc_nio_2022_03];
btkvect = [btkvect;btk_nio_2022_03];
btk2vect = [btk2vect;btk2_nio_2022_03];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Shem 122 ... KARIM before 2022-05-07-21Z

my_shem_2022_122 = [11.2,91.1,50;    14.2,91.9,55;  18.5,93.4,45;  20.1,96.2,35];
rsmc_shem_2022_122 = [11.0,91.0,44.8;13.9,92.0,50.4;17.9,94.0,44.8;19.2,97.1,39.2];
btk_shem_2022_122 = [11.0,90.6,60;   13.9,91.1,60;  18.7,93.2,45;  18.8,97.9,35]; # JTWC best track
btk2_shem_2022_122 = [11.0,90.5,56.0;14.1,91.0,61.6;18.7,93.4,61.6;18.8,97.9,33.6]; # BoM spreadsheet (except day 4)
myvect = [myvect;my_shem_2022_122];
rsmcvect = [rsmcvect;rsmc_shem_2022_122];
btkvect = [btkvect;btk_shem_2022_122];
btk2vect = [btk2vect;btk2_shem_2022_122];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;4;4;4;4];

# Shem 123 ... KARIM before 2022-05-08-03Z

my_shem_2022_123 = [11.4,91.1,60;    14.2,92.4,60;  18.0,94.8,50];
rsmc_shem_2022_123 = [12.2,91.2,50.4;15.4,91.9,50.4;18.9,94.4,44.8];
btk_shem_2022_123 = [11.6,90.7,60;   15.4,91.6,60;  19.4,94.0,50]; # JTWC best track
btk2_shem_2022_123 = [11.9,90.7,61.6;15.1,91.4,67.2;19.4,93.7,61.6]; # BoM spreadsheet
myvect = [myvect;my_shem_2022_123];
rsmcvect = [rsmcvect;rsmc_shem_2022_123];
btkvect = [btkvect;btk_shem_2022_123];
btk2vect = [btk2vect;btk2_shem_2022_123];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;4;4;4];

# Nio 04 ... BOB 03 / 02B before 2022-05-08-03Z

my_nio_2022_04 = [13.6,86.5,75;    15.7,85.4,70;  17.8,85.2,60;  19.0,85.6,50];
rsmc_nio_2022_04 = [14.1,87.3,63.6;16.3,85.8,58.3;18.0,85.3,47.7;18.9,85.9,37.1];
btk_nio_2022_04 = [13.7,86.2,60;   14.7,83.6,65;  15.5,81.6,40;  15.4,80.3,25]; # JTWC best track
btk2_nio_2022_04 = [13.7,86.2,58.3;14.7,83.6,63.6;15.5,81.6,42.4;15.4,80.3,26.5]; # wind of days 1&4 from IMD prelim report, rest JTWC btk
myvect = [myvect;my_nio_2022_04];
rsmcvect = [rsmcvect;rsmc_nio_2022_04];
btkvect = [btkvect;btk_nio_2022_04];
btk2vect = [btk2vect;btk2_nio_2022_04];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Shem 124 ... KARIM before 2022-05-08-15Z

my_shem_2022_124 = [13.6,91.0,65;    16.9,92.6,55;  19.8,95.7,40];
rsmc_shem_2022_124 = [13.0,91.0,67.2;16.9,92.4,50.4;18.5,95.2,44.8];
btk_shem_2022_124 = [13.2,90.9,60;   17.8,92.7,50;  19.0,96.7,40]; # JTWC best track
btk2_shem_2022_124 = [13.2,90.9,61.6;17.7,92.7,61.6;18.8,96.6,39.2]; # BoM spreadsheet (except day 3)
myvect = [myvect;my_shem_2022_124];
rsmcvect = [rsmcvect;rsmc_shem_2022_124];
btkvect = [btkvect;btk_shem_2022_124];
btk2vect = [btk2vect;btk2_shem_2022_124];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;4;4;4];

# Nio 05 ... ASANI before 2022-05-08-15Z

my_nio_2022_05 = [15.2,85.7,70;    16.6,84.6,55;  18.4,84.5,45;  19.9,86.2,35];
rsmc_nio_2022_05 = [15.4,86.5,63.6;17.2,85.5,53.0;18.4,85.6,42.4;19.3,86.6,31.8];
btk_nio_2022_05 = [14.3,84.8,55;   15.0,82.4,55;  15.8,81.1,35;  15.0,80.2,20]; # JTWC best track
btk2_nio_2022_05 = [14.3,84.8,58.3;15.0,82.4,53.0;15.8,81.1,31.8;15.0,80.2,21.2]; # wind of days 1-3 from IMD prelim report, rest is JTWC btk
myvect = [myvect;my_nio_2022_05];
rsmcvect = [rsmcvect;rsmc_nio_2022_05];
btkvect = [btkvect;btk_nio_2022_05];
btk2vect = [btk2vect;btk2_nio_2022_05];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Shem 125 ... KARIM before 2022-05-09-21Z

my_shem_2022_125 = [18.2,91.5,50;    18.2,97.1,40];
rsmc_shem_2022_125 = [18.0,93.2,50.4;17.7,95.7,39.2];
btk_shem_2022_125 = [18.7,93.2,45;   18.8,97.9,35]; # JTWC best track
btk2_shem_2022_125 = [18.7,93.4,61.6;18.8,97.9,33.6]; # BoM spreadsheet (except day 2)
myvect = [myvect;my_shem_2022_125];
rsmcvect = [rsmcvect;rsmc_shem_2022_125];
btkvect = [btkvect;btk_shem_2022_125];
btk2vect = [btk2vect;btk2_shem_2022_125];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;4;4];

# Nio 06 ... ASANI before 2022-05-09-21Z

my_nio_2022_06 = [16.1,82.9,45;    17.5,82.9,35];
rsmc_nio_2022_06 = [16.5,83.4,42.4;18.0,84.3,37.1];
btk_nio_2022_06 = [15.2,81.8,45;   15.6,80.6,25]; # JTWC best track
btk2_nio_2022_06 = [15.2,81.8,53.0;15.6,80.6,31.8]; # winds from IMD prelim report, positions JTWC btk
myvect = [myvect;my_nio_2022_06];
rsmcvect = [rsmcvect;rsmc_nio_2022_06];
btkvect = [btkvect;btk_nio_2022_06];
btk2vect = [btk2vect;btk2_nio_2022_06];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Nio 07 ... ASANI before 2022-05-10-03Z

my_nio_2022_07 = [16.1,83.0,50;    17.2,83.2,35];
rsmc_nio_2022_07 = [16.8,82.9,47.7;18.3,84.7,31.8];
btk_nio_2022_07 = [15.5,81.6,40;   15.4,80.3,25]; # JTWC best track
btk2_nio_2022_07 = [15.5,81.6,42.4;15.4,80.3,26.5]; # day 2 wind from IMD prelim report, rest from JTWC btk
myvect = [myvect;my_nio_2022_07];
rsmcvect = [rsmcvect;rsmc_nio_2022_07];
btkvect = [btkvect;btk_nio_2022_07];
btk2vect = [btk2vect;btk2_nio_2022_07];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Shem 126 ... 11F/26P before 2022-05-18-21Z

my_shem_2022_126 = [16.6,167.5,35;    17.8,165.7,35;  19.8,164.9,0];
rsmc_shem_2022_126 = [16.4,167.2,50.4;17.2,165.5,44.8;18.0,163.7,0];
btk_shem_2022_126 = [17.6,168.6,35;   19.7,168.7,35;  20.5,171.1,0]; # JTWC best track
btk2_shem_2022_126 = btk_shem_2022_126; #placeholder
myvect = [myvect;my_shem_2022_126];
rsmcvect = [rsmcvect;rsmc_shem_2022_126];
btkvect = [btkvect;btk_shem_2022_126];
btk2vect = [btk2vect;btk2_shem_2022_126];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;5;5;5];

# Shem 127 ... GINA before 2022-05-19-03Z

my_shem_2022_127 = [17.0,167.1,35;    18.1,165.6,40;  20.4,166.0,0];
rsmc_shem_2022_127 = [17.5,167.5,50.4;18.6,166.6,44.8;19.8,166.4,0];
btk_shem_2022_127 = [18.3,167.8,35;   20.1,169.4,35;  20.6,171.5,0]; # JTWC best track
btk2_shem_2022_127 = btk_shem_2022_127; #placeholder
myvect = [myvect;my_shem_2022_127];
rsmcvect = [rsmcvect;rsmc_shem_2022_127];
btkvect = [btkvect;btk_shem_2022_127];
btk2vect = [btk2vect;btk2_shem_2022_127];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;5;5;5];

# Shem 128 ... GINA before 2022-05-19-09Z

my_shem_2022_128 = [17.6,167.1,35;    19.1,166.5,35;  22.0,167.9,0];
rsmc_shem_2022_128 = [17.6,167.1,39.2;18.6,166.4,33.6;20.0,166.2,0];
btk_shem_2022_128 = [18.7,167.6,35;   20.4,170.0,35;  20.9,171.5,0]; # JTWC best track
btk2_shem_2022_128 = btk_shem_2022_128; #placeholder
myvect = [myvect;my_shem_2022_128];
rsmcvect = [rsmcvect;rsmc_shem_2022_128];
btkvect = [btkvect;btk_shem_2022_128];
btk2vect = [btk2vect;btk2_shem_2022_128];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;5;5;5];

# Shem 129 ... GINA before 2022-05-19-21Z

my_shem_2022_129 = [18.4,166.9,35;    19.9,167.1,30;  22.7,170.2,0];
rsmc_shem_2022_129 = [18.9,166.6,39.2;20.0,166.5,33.6;23.2,168.2,0];
btk_shem_2022_129 = [19.7,168.7,35;   20.5,171.1,35;  22.1,171.5,0]; # JTWC best track
btk2_shem_2022_129 = btk_shem_2022_129; #placeholder
myvect = [myvect;my_shem_2022_129];
rsmcvect = [rsmcvect;rsmc_shem_2022_129];
btkvect = [btkvect;btk_shem_2022_129];
btk2vect = [btk2vect;btk2_shem_2022_129];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;5;5;5];

# Wpac 11 ... TD / 10W before 2022-08-21-21Z

my_wpac_2022_11 = [17.3,124.0,40;    19.0,120.2,45;  21.2,115.9,50;  23.3,111.2,35];
rsmc_wpac_2022_11 = [17.2,124.0,39.2;19.1,120.9,44.8;21.3,117.0,50.4;23.6,111.9,39.2];
btk_wpac_2022_11 = [16.3,123.2,50;   19.0,118.8,55;  20.8,113.0,50;  21.7,106.5,25]; # JTWC best track
btk2_wpac_2022_11 = [16.3,123.3,56.0;19.0,118.8,61.6;20.7,113.3,61.6;21.4,106.4,39.2]; # JMA best track
myvect = [myvect;my_wpac_2022_11];
rsmcvect = [rsmcvect;rsmc_wpac_2022_11];
btkvect = [btkvect;btk_wpac_2022_11];
btk2vect = [btk2vect;btk2_wpac_2022_11];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Wpac 12 ... MA-ON before 2022-08-22-21Z

my_wpac_2022_12 = [19.0,119.9,50;    20.9,115.1,55;  23.1,109.7,30];
rsmc_wpac_2022_12 = [19.2,119.7,56.0;21.2,115.2,61.6;23.4,109.2,39.2];
btk_wpac_2022_12 = [19.0,118.8,50;   20.8,113.0,50;  21.7,106.5,25]; # JTWC best track
btk2_wpac_2022_12 = [19.0,118.8,61.6;20.7,113.3,61.6;21.4,106.4,39.2]; # JMA best track
myvect = [myvect;my_wpac_2022_12];
rsmcvect = [rsmcvect;rsmc_wpac_2022_12];
btkvect = [btkvect;btk_wpac_2022_12];
btk2vect = [btk2vect;btk2_wpac_2022_12];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Wpac 13 ... MA-ON before 2022-08-23-09Z

my_wpac_2022_13 = [20.1,117.7,60;    22.3,111.9,60;  24.0,106.1,0];
rsmc_wpac_2022_13 = [20.0,117.7,67.2;22.3,112.0,56.0;23.8,105.7,0];
btk_wpac_2022_13 = [19.7,116.5,55;   21.8,109.9,35;  21.8,102.7,0]; # JTWC best track (except day 3)
btk2_wpac_2022_13 = [19.4,116.0,61.6;21.6,109.7,56.0;21.8,102.7,0]; # JMA best track (except day 3)
myvect = [myvect;my_wpac_2022_13];
rsmcvect = [rsmcvect;rsmc_wpac_2022_13];
btkvect = [btkvect;btk_wpac_2022_13];
btk2vect = [btk2vect;btk2_wpac_2022_13];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Wpac 14 ... MA-ON before 2022-08-23-21Z

my_wpac_2022_14 = [20.9,113.9,65;    22.7,108.0,35];
rsmc_wpac_2022_14 = [20.8,114.0,67.2;22.3,107.6,50.4];
btk_wpac_2022_14 = [20.8,113.0,50;   21.7,106.5,25]; # JTWC best track
btk2_wpac_2022_14 = [20.7,113.3,61.6;21.4,106.4,39.2]; # JMA best track
myvect = [myvect;my_wpac_2022_14];
rsmcvect = [rsmcvect;rsmc_wpac_2022_14];
btkvect = [btkvect;btk_wpac_2022_14];
btk2vect = [btk2vect;btk2_wpac_2022_14];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Wpac 15 ... HINNAMNOR before 2022-08-30-15Z

my_wpac_2022_15 = [25.0,128.1,140;    22.5,126.0,120;  22.8,125.1,105;  24.6,125.2,95;   27.5,125.0,90];
rsmc_wpac_2022_15 = [25.0,128.2,123.2;22.3,126.2,123.2;22.5,125.7,117.6;24.6,125.8,117.6;27.6,125.3,112.0];
btk_wpac_2022_15 = [24.7,127.7,130;   21.3,125.5,120;  22.1,124.7,75;   24.4,124.8,85;   27.7,124.7,105]; # JTWC best track
btk2_wpac_2022_15 = [24.7,127.7,112.0;21.3,125.5,112.0;22.1,124.6,84.0; 24.3,124.9,89.6; 27.7,124.5,100.8]; # JMA best track
myvect = [myvect;my_wpac_2022_15];
rsmcvect = [rsmcvect;rsmc_wpac_2022_15];
btkvect = [btkvect;btk_wpac_2022_15];
btk2vect = [btk2vect;btk2_wpac_2022_15];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 16 ... HINNAMNOR before 2022-08-31-09Z

my_wpac_2022_16 = [22.4,125.4,115;    22.1,124.7,100;  23.8,124.2,95;   26.4,123.4,100;  29.4,124.2,110];
rsmc_wpac_2022_16 = [22.1,125.6,123.2;22.2,125.0,123.2;23.5,124.8,112.0;26.3,124.0,106.4;29.1,124.3,95.2];
btk_wpac_2022_16 = [21.7,125.5,135;   22.0,125.0,80;   23.7,124.8,85;   27.1,124.8,105;  31.0,125.6,100]; # JTWC best track
btk2_wpac_2022_16 = [21.8,125.5,112.0;21.9,125.0,84.0; 23.8,124.7,84.0; 27.0,124.7,100.8;31.0,125.5,89.6]; # JMA best track
myvect = [myvect;my_wpac_2022_16];
rsmcvect = [rsmcvect;rsmc_wpac_2022_16];
btkvect = [btkvect;btk_wpac_2022_16];
btk2vect = [btk2vect;btk2_wpac_2022_16];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 17 ... HINNAMNOR before 2022-08-31-15Z

my_wpac_2022_17 = [21.6,125.2,110;    22.1,124.6,100;  24.3,124.4,100;  27.5,123.6,105;  30.6,125.2,105];
rsmc_wpac_2022_17 = [21.5,125.4,117.6;22.0,124.6,106.4;24.0,124.6,112.0;26.7,123.5,106.4;30.2,124.6,95.2];
btk_wpac_2022_17 = [21.3,125.5,120;   22.1,124.7,75;   24.4,124.8,85;   27.7,124.7,105;  32.5,126.6,90]; # JTWC best track
btk2_wpac_2022_17 = [21.3,125.5,112.0;22.1,124.6,84.0; 24.3,124.9,89.6; 27.7,124.5,100.8;32.3,126.6,84.0]; # JMA best track
myvect = [myvect;my_wpac_2022_17];
rsmcvect = [rsmcvect;rsmc_wpac_2022_17];
btkvect = [btkvect;btk_wpac_2022_17];
btk2vect = [btk2vect;btk2_wpac_2022_17];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 18 ... HINNAMNOR before 2022-09-01-09Z

my_wpac_2022_18 = [21.9,125.0,110;    23.4,124.7,105;  26.5,124.3,110;  30.2,124.4,105;  36.9,131.9,85];
rsmc_wpac_2022_18 = [22.1,125.0,123.2;23.7,124.8,106.4;27.0,124.4,112.0;30.7,125.3,100.8;37.4,131.5,89.6];
btk_wpac_2022_18 = [22.0,125.0,80;    23.7,124.8,85;   27.1,124.8,105;  31.0,125.6,100;  39.9,133.7,60]; # JTWC best track
btk2_wpac_2022_18 = [21.9,125.0,84.0; 23.8,124.7,84.0; 27.0,124.7,100.8;31.0,125.5,89.6; 39.8,133.6,67.2]; # JMA best track
myvect = [myvect;my_wpac_2022_18];
rsmcvect = [rsmcvect;rsmc_wpac_2022_18];
btkvect = [btkvect;btk_wpac_2022_18];
btk2vect = [btk2vect;btk2_wpac_2022_18];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 19 ... TD / 14W before 2022-09-07-15Z

my_wpac_2022_19 = [18.6,132.6,75;    20.9,130.5,105; 23.6,128.2,120; 24.5,126.4,110; 26.4,125.5,95];
rsmc_wpac_2022_19 = [18.9,132.8,39.2;21.4,130.9,56.0;23.8,128.7,67.2;24.9,127.0,78.4;26.4,126.3,78.4];
btk_wpac_2022_19 = [17.4,130.9,40;   19.5,127.7,55;  21.7,125.5,75;  23.3,124.4,100; 24.9,124.0,85]; # JTWC best track
btk2_wpac_2022_19 = [17.1,131.0,44.8;19.4,127.7,61.6;21.7,125.5,84.0;23.4,124.3,89.6;24.9,124.0,84.0]; # JMA best track
myvect = [myvect;my_wpac_2022_19];
rsmcvect = [rsmcvect;rsmc_wpac_2022_19];
btkvect = [btkvect;btk_wpac_2022_19];
btk2vect = [btk2vect;btk2_wpac_2022_19];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 20 ... MUIFA before 2022-09-09-15Z

my_wpac_2022_20 = [21.6,125.2,95;    22.6,123.3,110; 23.8,122.7,105; 24.7,122.9,85;  26.7,123.2,60];
rsmc_wpac_2022_20 = [21.6,125.3,78.4;22.8,123.9,89.6;23.8,123.3,89.6;24.3,123.8,78.4;25.4,124.0,72.8];
btk_wpac_2022_20 = [21.7,125.5,75;   23.3,124.4,100; 24.9,124.0,85;  26.8,123.9,85;  29.9,122.3,75]; # JTWC best track
btk2_wpac_2022_20 = [21.7,125.5,84.0;23.4,124.3,89.6;24.9,124.0,84.0;26.7,123.9,89.6;29.9,122.3,84.0]; # JMA best track
myvect = [myvect;my_wpac_2022_20];
rsmcvect = [rsmcvect;rsmc_wpac_2022_20];
btkvect = [btkvect;btk_wpac_2022_20];
btk2vect = [btk2vect;btk2_wpac_2022_20];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 21 ... MUIFA before 2022-09-10-15Z

my_wpac_2022_21 = [23.1,124.0,100;   24.5,123.3,110; 25.8,123.5,95;  29.0,123.1,75;  33.0,121.0,50];
rsmc_wpac_2022_21 = [23.2,124.1,89.6;24.6,123.6,95.2;26.3,123.8,84.0;29.5,122.7,72.8;33.9,120.7,61.6];
btk_wpac_2022_21 = [23.3,124.4,100;  24.9,124.0,85;  26.8,123.9,85;  29.9,122.3,75;  35.3,120.4,40]; # JTWC best track
btk2_wpac_2022_21 = [23.4,124.3,89.6;24.9,124.0,84.0;26.7,123.9,89.6;29.9,122.3,84.0;35.2,120.4,44.8]; # JMA best track
myvect = [myvect;my_wpac_2022_21];
rsmcvect = [rsmcvect;rsmc_wpac_2022_21];
btkvect = [btkvect;btk_wpac_2022_21];
btk2vect = [btk2vect;btk2_wpac_2022_21];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 22 ... MUIFA before 2022-09-11-15Z

my_wpac_2022_22 = [25.0,124.3,100;   26.3,124.4,85;  29.3,123.8,75;  33.7,122.3,50;  38.1,120.3,25];
rsmc_wpac_2022_22 = [24.7,124.0,95.2;25.6,124.3,89.6;27.7,124.0,84.0;32.1,122.1,67.2;36.2,121.6,50.4];
btk_wpac_2022_22 = [24.9,124.0,85;   26.8,123.9,85;  29.9,122.3,75;  35.3,120.4,40;  40.9,124.0,15]; # JTWC best track
btk2_wpac_2022_22 = [24.9,124.0,84.0;26.7,123.9,89.6;29.9,122.3,84.0;35.2,120.4,44.8;41.4,124.6,22.4]; # JMA best track (except day 5 wind)
myvect = [myvect;my_wpac_2022_22];
rsmcvect = [rsmcvect;rsmc_wpac_2022_22];
btkvect = [btkvect;btk_wpac_2022_22];
btk2vect = [btk2vect;btk2_wpac_2022_22];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 23 ... 15W before 2022-09-11-15Z

my_wpac_2022_23 = [22.5,162.0,55;    24.9,162.7,75;  30.3,163.0,80;  39.6,168.9,65];
rsmc_wpac_2022_23 = [22.6,162.1,39.2;25.0,162.6,44.8;30.2,162.5,56.0;40.5,169.2,61.6];
btk_wpac_2022_23 = [22.6,162.7,45;   25.9,162.9,60;  32.0,161.7,70;  45.4,168.2,50]; # JTWC best track
btk2_wpac_2022_23 = [22.6,162.7,56.0;25.9,163.0,67.2;31.9,161.9,70;  45.0,167.7,50.4]; # JMA best track (except day 4 wind)
myvect = [myvect;my_wpac_2022_23];
rsmcvect = [rsmcvect;rsmc_wpac_2022_23];
btkvect = [btkvect;btk_wpac_2022_23];
btk2vect = [btk2vect;btk2_wpac_2022_23];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Wpac 24 ... MUIFA before 2022-09-11-21Z

my_wpac_2022_24 = [25.3,124.2,90;    26.9,124.0,80;  30.4,123.0,70;  35.2,120.6,40;  37.0,120.4,0];
rsmc_wpac_2022_24 = [25.2,124.1,89.6;26.8,123.8,84.0;29.6,122.8,78.4;34.6,120.6,61.6;37.4,120.8,0];
btk_wpac_2022_24 = [25.2,124.1,85;   27.2,123.5,85;  31.2,122.0,65;  36.5,120.6,35;  42.9,127.0,0]; # JTWC best track (except day 5 JMA)
btk2_wpac_2022_24 = [25.2,124.2,84.0;27.2,123.5,89.6;31.3,121.6,72.8;36.3,120.8,44.8;42.9,127.0,0]; # JMA best track
myvect = [myvect;my_wpac_2022_24];
rsmcvect = [rsmcvect;rsmc_wpac_2022_24];
btkvect = [btkvect;btk_wpac_2022_24];
btk2vect = [btk2vect;btk2_wpac_2022_24];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 25 ... MUIFA before 2022-09-12-15Z

my_wpac_2022_25 = [26.6,124.0,75;    29.6,122.6,65;  34.7,120.3,40;  37.1,119.9,25];
rsmc_wpac_2022_25 = [26.6,124.0,84.0;29.5,122.6,78.4;34.3,119.9,56.0;35.9,119.5,44.8];
btk_wpac_2022_25 = [26.8,123.9,85;   29.9,122.3,75;  35.3,120.4,40;  40.9,124.0,15]; # JTWC best track
btk2_wpac_2022_25 = [26.7,123.9,89.6;29.9,122.3,84.0;35.2,120.4,44.8;41.4,124.6,22.4]; # JMA best track (except day 4 wind)
myvect = [myvect;my_wpac_2022_25];
rsmcvect = [rsmcvect;rsmc_wpac_2022_25];
btkvect = [btkvect;btk_wpac_2022_25];
btk2vect = [btk2vect;btk2_wpac_2022_25];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Wpac 26 ... 16W before 2022-09-13-15Z

my_wpac_2022_26 = [23.5,139.4,45;    24.7,136.6,60;  26.2,133.7,80;   28.1,130.8,90;   30.6,128.6,85];
rsmc_wpac_2022_26 = [23.4,139.4,39.2;24.4,136.2,44.8;25.8,133.0,56.0; 27.8,130.3,67.2; 30.9,128.5,67.2];
btk_wpac_2022_26 = [22.9,140.2,40;   23.5,137.3,75;  24.8,134.7,130;  27.6,132.0,125;  31.9,130.6,80]; # JTWC best track
btk2_wpac_2022_26 = [22.8,140.3,44.8;23.4,137.3,72.8;24.9,134.7,106.4;27.5,132.0,117.6;31.9,130.5,84.0]; # JMA best track
myvect = [myvect;my_wpac_2022_26];
rsmcvect = [rsmcvect;rsmc_wpac_2022_26];
btkvect = [btkvect;btk_wpac_2022_26];
btk2vect = [btk2vect;btk2_wpac_2022_26];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 27 ... NANMADOL before 2022-09-13-21Z

my_wpac_2022_27 = [23.6,139.1,50;    24.6,135.9,75;  26.0,132.8,90;   28.5,130.3,100;  32.0,128.2,85];
rsmc_wpac_2022_27 = [23.7,139.1,44.8;24.4,135.3,56.0;26.0,132.2,67.2; 28.5,129.7,67.2; 31.5,128.1,67.2];
btk_wpac_2022_27 = [23.1,139.7,50;   23.4,136.3,90;  25.5,133.8,135;  28.6,131.4,115;  33.2,130.3,70]; # JTWC best track
btk2_wpac_2022_27 = [23.1,139.7,50.4;23.4,136.4,84.0;25.5,133.8,117.6;28.5,131.4,106.4;33.2,130.4,78.4]; # JMA best track
myvect = [myvect;my_wpac_2022_27];
rsmcvect = [rsmcvect;rsmc_wpac_2022_27];
btkvect = [btkvect;btk_wpac_2022_27];
btk2vect = [btk2vect;btk2_wpac_2022_27];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 28 ... NANMADOL before 2022-09-14-15Z

my_wpac_2022_28 = [23.9,136.8,70;    25.1,134.0,90;   27.8,131.1,100;  31.2,130.2,90;  33.6,132.1,60];
rsmc_wpac_2022_28 = [24.0,136.5,56.0;25.3,133.5,67.2; 28.1,130.7,72.8; 31.9,129.6,72.8;36.4,135.2,67.2];
btk_wpac_2022_28 = [23.5,137.3,75;   24.8,134.7,130;  27.6,132.0,125;  31.9,130.6,80;  36.1,134.3,50]; # JTWC best track
btk2_wpac_2022_28 = [23.4,137.3,72.8;24.9,134.7,106.4;27.5,132.0,117.6;31.9,130.5,84.0;36.6,134.4,61.6]; # JMA best track
myvect = [myvect;my_wpac_2022_28];
rsmcvect = [rsmcvect;rsmc_wpac_2022_28];
btkvect = [btkvect;btk_wpac_2022_28];
btk2vect = [btk2vect;btk2_wpac_2022_28];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 29 ... NANMADOL before 2022-09-15-15Z

my_wpac_2022_29 = [25.0,133.9,110;    27.8,131.5,110;  31.4,130.1,95;  35.2,133.6,60];
rsmc_wpac_2022_29 = [25.2,134.0,84.0; 28.0,131.1,89.6; 31.9,129.5,84.0;36.1,134.5,61.6];
btk_wpac_2022_29 = [24.8,134.7,130;   27.6,132.0,125;  31.9,130.6,80;  36.1,134.3,50]; # JTWC best track
btk2_wpac_2022_29 = [24.9,134.7,106.4;27.5,132.0,117.6;31.9,130.5,84.0;36.6,134.4,61.6]; # JMA best track
myvect = [myvect;my_wpac_2022_29];
rsmcvect = [rsmcvect;rsmc_wpac_2022_29];
btkvect = [btkvect;btk_wpac_2022_29];
btk2vect = [btk2vect;btk2_wpac_2022_29];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Wpac 30 ... NORU before 2022-09-23-09Z

my_wpac_2022_30 = [17.2,127.4,50;    17.0,121.8,65;   17.3,115.9,60;  16.9,110.0,80;  17.3,104.3,45];
rsmc_wpac_2022_30 = [17.3,127.1,44.8;17.0,121.9,56.0; 17.5,115.3,56.0;17.0,109.3,72.8;17.1,104.2,39.2];
btk_wpac_2022_30 = [15.8,126.9,70;   15.0,122.4,130;  15.9,116.9,75;  15.6,111.2,130; 15.6,105.3,50]; # JTWC best track
btk2_wpac_2022_30 = [15.8,126.9,78.4;15.0,122.5,106.4;15.9,116.9,72.8;15.6,111.2,95.2;15.9,107.3,50.4]; # JMA best track
myvect = [myvect;my_wpac_2022_30];
rsmcvect = [rsmcvect;rsmc_wpac_2022_30];
btkvect = [btkvect;btk_wpac_2022_30];
btk2vect = [btk2vect;btk2_wpac_2022_30];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Shem 001 ... 02 / 03S before 2022-10-06-15Z

my_shem_2023_001 = [11.0,85.2,35;      14.1,86.1,40;    16.9,86.2,40;    16.4,83.9,35];
rsmc_shem_2023_001 = [10.8,85.4,39.2;  13.2,85.7,44.8;  15.9,86.1,44.8;  15.6,83.9,33.6];
btk_shem_2023_001 = [10.5,84.7,35;     13.1,86.0,40;    15.5,87.0,25;    16.9,87.2,30]; # JTWC best track (except day 4)
btk2_shem_2023_001 = [10.43,84.93,33.6;13.36,86.01,39.2;16.46,87.32,44.8;16.9,87.2,28.0]; # MFR data table (except day 4)
myvect = [myvect;my_shem_2023_001];
rsmcvect = [rsmcvect;rsmc_shem_2023_001];
btkvect = [btkvect;btk_shem_2023_001];
btk2vect = [btk2vect;btk2_shem_2023_001];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Nio 08 ... SITRANG before 2022-10-23-21Z

my_nio_2022_08 = [21.7,90.7,50];
rsmc_nio_2022_08 = [21.4,90.1,53.0];
btk_nio_2022_08 = [24.8,91.2,35]; # JTWC best track
btk2_nio_2022_08 = [24.8,91.2,42.4]; # wind from IMD prelim report, position JTWC btk
myvect = [myvect;my_nio_2022_08];
rsmcvect = [rsmcvect;rsmc_nio_2022_08];
btkvect = [btkvect;btk_nio_2022_08];
btk2vect = [btk2vect;btk2_nio_2022_08];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;2];

# Wpac 31 ... TD / 93W before 2022-10-26-15Z

my_wpac_2022_31 = [12.7,130.8,40;    13.7,127.0,50;  15.2,123.8,60;  17.6,122.5,65;  19.5,121.8,65];
rsmc_wpac_2022_31 = [12.6,130.9,39.2;13.8,127.1,44.8;15.1,123.9,56.0;16.9,122.6,67.2;18.6,121.7,67.2];
btk_wpac_2022_31 = [12.1,129.6,30;   13.0,125.3,50;  14.6,121.0,45;  15.4,117.5,45;  17.6,116.4,65]; # JTWC best track
btk2_wpac_2022_31 = [11.1,130.5,39.2;13.3,125.5,50.4;14.7,121.1,56.0;15.9,117.3,50.4;17.9,116.4,67.2]; # JMA best track
myvect = [myvect;my_wpac_2022_31];
rsmcvect = [rsmcvect;rsmc_wpac_2022_31];
btkvect = [btkvect;btk_wpac_2022_31];
btk2vect = [btk2vect;btk2_wpac_2022_31];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 32 ... TD / 93W before 2022-10-26-21Z

my_wpac_2022_32 = [12.5,129.6,40;    14.1,125.6,45;  15.6,122.4,55;  16.6,119.8,60;  19.1,119.8,60];
rsmc_wpac_2022_32 = [12.6,129.8,39.2;14.0,125.8,44.8;15.5,122.8,56.0;16.5,120.2,61.6;18.8,119.9,61.6];
btk_wpac_2022_32 = [12.1,128.8,35;   13.5,123.9,55;  15.8,119.9,40;  15.8,117.3,45;  18.1,116.1,75]; # JTWC best track
btk2_wpac_2022_32 = [11.3,129.6,44.8;13.5,123.7,56.0;15.6,120.0,50.4;16.1,117.0,56.0;18.3,116.2,67.2]; # JMA best track
myvect = [myvect;my_wpac_2022_32];
rsmcvect = [rsmcvect;rsmc_wpac_2022_32];
btkvect = [btkvect;btk_wpac_2022_32];
btk2vect = [btk2vect;btk2_wpac_2022_32];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 33 ... NALGAE before 2022-10-27-15Z

my_wpac_2022_33 = [13.3,126.4,50;    14.8,122.4,70;  15.6,119.5,40;  16.9,119.3,45;  19.5,119.7,45];
rsmc_wpac_2022_33 = [13.8,126.5,44.8;15.4,122.8,56.0;16.3,120.0,56.0;18.2,119.3,56.0;20.2,119.4,56.0];
btk_wpac_2022_33 = [13.0,125.3,50;   14.6,121.0,45;  15.4,117.5,45;  17.6,116.4,65;  19.9,115.6,55]; # JTWC best track
btk2_wpac_2022_33 = [13.3,125.5,50.4;14.7,121.1,56.0;15.9,117.3,50.4;17.9,116.4,67.2;19.8,115.5,61.6]; # JMA best track
myvect = [myvect;my_wpac_2022_33];
rsmcvect = [rsmcvect;rsmc_wpac_2022_33];
btkvect = [btkvect;btk_wpac_2022_33];
btk2vect = [btk2vect;btk2_wpac_2022_33];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 34 ... NALGAE before 2022-10-27-21Z

my_wpac_2022_34 = [13.5,125.1,55;    15.0,121.2,75;  15.7,118.6,50;  18.0,118.3,45;  19.8,119.3,55];
rsmc_wpac_2022_34 = [13.9,125.3,44.8;15.5,121.6,56.0;16.5,119.3,56.0;18.7,119.2,56.0;20.4,119.3,56.0];
btk_wpac_2022_34 = [13.5,123.9,55;   15.8,119.9,40;  15.8,117.3,45;  18.1,116.1,75;  20.6,115.3,50]; # JTWC best track
btk2_wpac_2022_34 = [13.5,123.7,56.0;15.6,120.0,50.4;16.1,117.0,56.0;18.3,116.2,67.2;20.2,115.2,56.0]; # JMA best track
myvect = [myvect;my_wpac_2022_34];
rsmcvect = [rsmcvect;rsmc_wpac_2022_34];
btkvect = [btkvect;btk_wpac_2022_34];
btk2vect = [btk2vect;btk2_wpac_2022_34];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 35 ... NALGAE before 2022-10-28-15Z

my_wpac_2022_35 = [14.5,121.3,50;    15.6,118.2,45;  17.7,117.9,55;  19.4,118.2,50;  21.4,119.0,50];
rsmc_wpac_2022_35 = [14.6,121.7,61.6;15.8,118.1,56.0;18.1,117.8,61.6;19.6,118.0,61.6;20.6,118.2,56.0];
btk_wpac_2022_35 = [14.6,121.0,45;   15.4,117.5,45;  17.6,116.4,65;  19.9,115.6,55;  21.4,114.6,40]; # JTWC best track
btk2_wpac_2022_35 = [14.7,121.1,56.0;15.9,117.3,50.4;17.9,116.4,67.2;19.8,115.5,61.6;21.4,114.3,39.2]; # JMA best track
myvect = [myvect;my_wpac_2022_35];
rsmcvect = [rsmcvect;rsmc_wpac_2022_35];
btkvect = [btkvect;btk_wpac_2022_35];
btk2vect = [btk2vect;btk2_wpac_2022_35];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 36 ... NALGAE before 2022-10-28-21Z

my_wpac_2022_36 = [14.9,119.7,45;    16.1,116.8,45;  18.4,116.7,55;  20.0,116.4,55;  21.0,116.0,45];
rsmc_wpac_2022_36 = [15.2,119.8,56.0;16.2,117.4,61.6;18.4,117.0,67.2;19.8,116.8,61.6;21.1,116.7,56.0];
btk_wpac_2022_36 = [15.8,119.9,40;   15.8,117.3,45;  18.1,116.1,75;  20.6,115.3,50;  21.9,114.0,30]; # JTWC best track
btk2_wpac_2022_36 = [15.6,120.0,50.4;16.1,117.0,56.0;18.3,116.2,67.2;20.2,115.2,56.0;21.6,113.9,28.0]; # JMA best track (except day 5 wind)
myvect = [myvect;my_wpac_2022_36];
rsmcvect = [rsmcvect;rsmc_wpac_2022_36];
btkvect = [btkvect;btk_wpac_2022_36];
btk2vect = [btk2vect;btk2_wpac_2022_36];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 37 ... NALGAE before 2022-10-31-21Z

my_wpac_2022_37 = [19.9,115.1,55;    21.8,112.9,35;  22.2,110.7,0];
rsmc_wpac_2022_37 = [19.7,114.9,61.6;21.0,112.7,44.8;21.1,110.2,0];
btk_wpac_2022_37 = [20.6,115.3,50;   21.9,114.0,30;  22.9,112.1,0]; # JTWC best track (except day 3)
btk2_wpac_2022_37 = [20.2,115.2,56.0;21.6,113.9,28.0;22.9,112.1,0]; # JMA best track (except day 2 wind and day 3 position)
myvect = [myvect;my_wpac_2022_37];
rsmcvect = [rsmcvect;rsmc_wpac_2022_37];
btkvect = [btkvect;btk_wpac_2022_37];
btk2vect = [btk2vect;btk2_wpac_2022_37];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Nio 09 ... BOB 09 / 96B before 2022-12-06-21Z

my_nio_2022_09 = [9.6,83.6,40;    11.3,80.6,45;  12.8,78.1,30];
rsmc_nio_2022_09 = [9.6,84.6,37.1;11.0,82.3,47.7;12.4,80.4,37.1];
btk_nio_2022_09 = [9.2,84.8,45;   10.6,82.1,55;  12.6,80.5,35]; # JTWC best track
btk2_nio_2022_09 = [9.2,84.6,37.1;10.6,82.3,53.0;12.5,80.3,37.1]; # IMD brief report
myvect = [myvect;my_nio_2022_09];
rsmcvect = [rsmcvect;rsmc_nio_2022_09];
btkvect = [btkvect;btk_nio_2022_09];
btk2vect = [btk2vect;btk2_nio_2022_09];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Nio 10 ... BOB 09 / 96B before 2022-12-07-03Z

my_nio_2022_10 = [9.9,83.5,45;     11.2,80.9,45;  12.5,78.6,30];
rsmc_nio_2022_10 = [10.0,83.8,47.7;11.4,81.7,42.4;12.8,80.0,31.8];
btk_nio_2022_10 = [9.4,84.5,55;    10.9,81.8,55;  12.8,79.9,30]; # JTWC best track
btk2_nio_2022_10 = [9.4,84.1,42.4; 11.0,81.7,53.0;12.9,79.7,31.8]; # IMD brief report
myvect = [myvect;my_nio_2022_10];
rsmcvect = [rsmcvect;rsmc_nio_2022_10];
btkvect = [btkvect;btk_nio_2022_10];
btk2vect = [btk2vect;btk2_nio_2022_10];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Nio 11 ... BOB 09 / 96B before 2022-12-07-21Z

my_nio_2022_11 = [10.5,82.7,45;    12.1,80.9,40];
rsmc_nio_2022_11 = [10.9,82.3,47.7;12.5,80.8,31.8];
btk_nio_2022_11 = [10.6,82.1,55;   12.6,80.5,35]; # JTWC best track
btk2_nio_2022_11 = [10.6,82.3,53.0;12.5,80.3,37.1]; # IMD brief report
myvect = [myvect;my_nio_2022_11];
rsmcvect = [rsmcvect;rsmc_nio_2022_11];
btkvect = [btkvect;btk_nio_2022_11];
btk2vect = [btk2vect;btk2_nio_2022_11];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Nio 12 ... MANDOUS before 2022-12-08-03Z

my_nio_2022_12 = [11.2,81.4,45;    13.0,79.9,25];
rsmc_nio_2022_12 = [11.3,81.7,42.4;12.6,79.9,21.2];
btk_nio_2022_12 = [10.9,81.8,55;   12.8,79.9,30]; # JTWC best track
btk2_nio_2022_12 = [11.0,81.7,53.0;12.9,79.7,31.8]; # IMD brief report
myvect = [myvect;my_nio_2022_12];
rsmcvect = [rsmcvect;rsmc_nio_2022_12];
btkvect = [btkvect;btk_nio_2022_12];
btk2vect = [btk2vect;btk2_nio_2022_12];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Nio 13 ... MANDOUS before 2022-12-08-15Z

my_nio_2022_13 = [12.0,80.6,40;    13.1,79.3,20];
rsmc_nio_2022_13 = [11.9,80.7,42.4;13.0,79.4,21.2];
btk_nio_2022_13 = [12.0,81.2,45;   12.9,78.8,15]; # JTWC best track
btk2_nio_2022_13 = [12.0,80.8,42.4;12.9,78.8,15.9]; # IMD brief report (except day 2)
myvect = [myvect;my_nio_2022_13];
rsmcvect = [rsmcvect;rsmc_nio_2022_13];
btkvect = [btkvect;btk_nio_2022_13];
btk2vect = [btk2vect;btk2_nio_2022_13];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Nio 14 ... MANDOUS before 2022-12-08-21Z

my_nio_2022_14 = [12.3,80.3,35];
rsmc_nio_2022_14 = [12.4,80.3,37.1];
btk_nio_2022_14 = [12.6,80.5,35]; # JTWC best track
btk2_nio_2022_14 = [12.5,80.3,37.1]; # IMD brief report
myvect = [myvect;my_nio_2022_14];
rsmcvect = [rsmcvect;rsmc_nio_2022_14];
btkvect = [btkvect;btk_nio_2022_14];
btk2vect = [btk2vect;btk2_nio_2022_14];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;2];

# Wpac 38 ... TD / 29W before 2022-12-10-21Z

my_wpac_2022_38 = [18.4,127.4,35;    19.2,129.6,0];
rsmc_wpac_2022_38 = [18.2,127.3,39.2;19.1,130.2,0];
btk_wpac_2022_38 = [19.2,128.4,50;   19.1,131.2,0]; # JTWC best track
btk2_wpac_2022_38 = [19.0,128.1,44.8;19.1,131.2,0]; # JMA best track (day 1 only)
myvect = [myvect;my_wpac_2022_38];
rsmcvect = [rsmcvect;rsmc_wpac_2022_38];
btkvect = [btkvect;btk_wpac_2022_38];
btk2vect = [btk2vect;btk2_wpac_2022_38];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Shem 002 ... DARIAN before 2022-12-18-21Z

my_shem_2023_002 = [12.9,94.1,65;    14.0,93.8,65;   14.6,92.4,65;     14.7,89.7,60;    15.5,88.1,55];
rsmc_shem_2023_002 = [13.0,94.2,61.6;14.1,94.4,67.2; 14.5,93.6,67.2;   14.8,91.6,50.4;  15.5,89.7,44.8];
btk_shem_2023_002 = [12.9,93.4,75;   14.2,92.1,130;  13.5,89.1,125;    12.7,85.7,95;    12.3,83.3,120]; # JTWC best track
btk2_shem_2023_002 = [13.1,93.4,78.4;14.2,91.8,117.6;13.44,89.18,117.6;12.73,85.82,95.2;12.27,83.25,117.6]; # BoM best track (days 1-2), MFR data table (days 3-5)
myvect = [myvect;my_shem_2023_002];
rsmcvect = [rsmcvect;rsmc_shem_2023_002];
btkvect = [btkvect;btk_shem_2023_002];
btk2vect = [btk2vect;btk2_shem_2023_002];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 003 ... DARIAN before 2022-12-19-03Z

my_shem_2023_003 = [13.3,94.0,65;    14.3,93.3,65;   14.4,91.6,65;     14.8,88.2,60;   15.4,84.7,55];
rsmc_shem_2023_003 = [12.9,94.3,67.2;13.7,94.1,67.2; 13.8,92.6,67.2;   14.2,90.4,50.4; 15.2,88.6,44.8];
btk_shem_2023_003 = [13.4,93.2,95;   14.2,91.2,130;  13.2,88.2,115;    12.6,85.2,90;   12.3,82.9,115]; # JTWC best track
btk2_shem_2023_003 = [13.7,93.1,84.0;14.2,91.2,123.2;13.27,88.27,117.6;12.49,85.1,95.2;12.3,83.0,117.6]; # BoM best track (days 1-2), MFR data table (days 3-5)
myvect = [myvect;my_shem_2023_003];
rsmcvect = [rsmcvect;rsmc_shem_2023_003];
btkvect = [btkvect;btk_shem_2023_003];
btk2vect = [btk2vect;btk2_shem_2023_003];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 004 ... DARIAN before 2022-12-19-15Z

my_shem_2023_004 = [13.6,93.5,80;     14.2,92.1,65;     14.4,89.3,70;     15.0,86.7,70;     15.8,85.9,55];
rsmc_shem_2023_004 = [13.5,93.5,84.0; 13.7,92.4,67.2;   13.6,89.7,72.8;   14.0,87.0,89.6;   15.2,85.5,78.4];
btk_shem_2023_004 = [14.0,92.7,120;   13.7,89.9,135;    12.8,86.5,105;    12.4,83.8,115;    13.0,83.7,110]; # JTWC best track
btk2_shem_2023_004 = [14.1,92.5,100.8;13.64,89.98,134.4;12.83,86.67,106.4;12.32,83.73,112.0;12.92,83.61,106.4]; # BoM best track (day 1), MFR data table (days 2-5)
myvect = [myvect;my_shem_2023_004];
rsmcvect = [rsmcvect;rsmc_shem_2023_004];
btkvect = [btkvect;btk_shem_2023_004];
btk2vect = [btk2vect;btk2_shem_2023_004];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 005 ... DARIAN before 2022-12-19-21Z

my_shem_2023_005 = [14.1,93.0,70;     14.1,90.7,65;     14.0,87.7,75;    14.8,85.3,75;     15.9,84.5,70];
rsmc_shem_2023_005 = [13.9,93.0,84.0; 13.9,90.9,67.2;   13.7,88.0,78.4;  14.2,85.1,89.6;   15.2,83.7,72.8];
btk_shem_2023_005 = [14.2,92.1,130;   13.5,89.1,125;    12.7,85.7,95;    12.3,83.3,120;    13.5,84.1,95]; # JTWC best track
btk2_shem_2023_005 = [14.2,91.8,117.6;13.44,89.18,117.6;12.73,85.82,95.2;12.27,83.25,117.6;13.33,84.03,100.8]; # BoM best track (day 1), MFR data table (days 2-5)
myvect = [myvect;my_shem_2023_005];
rsmcvect = [rsmcvect;rsmc_shem_2023_005];
btkvect = [btkvect;btk_shem_2023_005];
btk2vect = [btk2vect;btk2_shem_2023_005];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 006 ... DARIAN before 2022-12-20-03Z

my_shem_2023_006 = [14.3,91.9,80;     14.0,88.8,70;     13.9,85.5,80;   14.6,82.8,80;   15.5,82.0,70];
rsmc_shem_2023_006 = [14.0,91.9,78.4; 13.5,89.2,72.8;   13.0,86.0,84.0; 13.3,84.0,84.0; 14.7,83.8,67.2];
btk_shem_2023_006 = [14.2,91.2,130;   13.2,88.2,115;    12.6,85.2,90;   12.3,82.9,115;  14.2,84.4,90]; # JTWC best track
btk2_shem_2023_006 = [14.2,91.2,123.2;13.27,88.27,117.6;12.49,85.1,95.2;12.3,83.0,117.6;14.37,84.54,95.2]; # BoM best track (day 1), MFR data table (days 2-5)
myvect = [myvect;my_shem_2023_006];
rsmcvect = [rsmcvect;rsmc_shem_2023_006];
btkvect = [btkvect;btk_shem_2023_006];
btk2vect = [btk2vect;btk2_shem_2023_006];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 007 ... DARIAN before 2022-12-20-15Z

my_shem_2023_007 = [14.2,90.2,90;       13.7,86.8,85;     13.8,83.7,90;     14.4,82.1,85;     15.9,82.3,70];
rsmc_shem_2023_007 = [14.2,90.1,100.8;  13.7,86.7,100.8;  13.6,83.2,95.2;   14.0,81.0,84.0;   15.0,80.3,72.8];
btk_shem_2023_007 = [13.7,89.9,135;     12.8,86.5,105;    12.4,83.8,115;    13.0,83.7,110;    15.6,85.1,90]; # JTWC best track
btk2_shem_2023_007 = [13.64,89.98,134.4;12.83,86.67,106.4;12.32,83.73,112.0;12.92,83.61,106.4;15.54,85.03,84.0]; # MFR data table
myvect = [myvect;my_shem_2023_007];
rsmcvect = [rsmcvect;rsmc_shem_2023_007];
btkvect = [btkvect;btk_shem_2023_007];
btk2vect = [btk2vect;btk2_shem_2023_007];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 008 ... DARIAN before 2022-12-20-21Z

my_shem_2023_008 = [14.0,89.0,120;      13.6,85.3,105;   13.7,82.1,100;    14.3,80.6,85;     15.7,81.0,70];
rsmc_shem_2023_008 = [14.0,89.1,123.2;  13.5,85.6,106.4; 13.6,82.4,95.2;   14.1,80.5,78.4;   15.2,80.2,72.8];
btk_shem_2023_008 = [13.5,89.1,125;     12.7,85.7,95;    12.3,83.3,120;    13.5,84.1,95;     16.2,85.3,95]; # JTWC best track
btk2_shem_2023_008 = [13.44,89.18,117.6;12.73,85.82,95.2;12.27,83.25,117.6;13.33,84.03,100.8;15.95,85.05,89.6]; # MFR data table
myvect = [myvect;my_shem_2023_008];
rsmcvect = [rsmcvect;rsmc_shem_2023_008];
btkvect = [btkvect;btk_shem_2023_008];
btk2vect = [btk2vect;btk2_shem_2023_008];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 009 ... DARIAN before 2022-12-21-15Z

my_shem_2023_009 = [12.7,86.7,120;      13.2,83.5,115;    14.1,82.3,110;    16.5,82.5,90;    18.0,82.2,60];
rsmc_shem_2023_009 = [13.1,87.0,123.2;  13.1,83.6,134.4;  13.9,82.1,123.2;  15.7,82.5,89.6;  17.1,82.5,56.0];
btk_shem_2023_009 = [12.8,86.5,105;     12.4,83.8,115;    13.0,83.7,110;    15.6,85.1,90;    16.9,84.9,110]; # JTWC best track
btk2_shem_2023_009 = [12.83,86.67,106.4;12.32,83.73,112.0;12.92,83.61,106.4;15.54,85.03,84.0;16.75,84.84,112.0]; # MFR data table
myvect = [myvect;my_shem_2023_009];
rsmcvect = [rsmcvect;rsmc_shem_2023_009];
btkvect = [btkvect;btk_shem_2023_009];
btk2vect = [btk2vect;btk2_shem_2023_009];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 010 ... DARIAN before 2022-12-22-21Z

my_shem_2023_010 = [12.3,82.7,105;      13.7,82.7,105;    15.8,84.0,95;    17.9,84.0,70;    19.5,79.5,50];
rsmc_shem_2023_010 = [12.5,82.7,112.0;  13.6,82.6,100.8;  15.8,83.9,89.6;  17.2,83.5,78.4;  18.8,79.6,56.0];
btk_shem_2023_010 = [12.3,83.3,120;     13.5,84.1,95;     16.2,85.3,95;    17.1,84.3,100;   18.8,80.6,65]; # JTWC best track
btk2_shem_2023_010 = [12.27,83.25,117.6;13.33,84.03,100.8;15.95,85.05,89.6;17.04,84.24,95.2;18.69,80.33,72.8]; # MFR data table
myvect = [myvect;my_shem_2023_010];
rsmcvect = [rsmcvect;rsmc_shem_2023_010];
btkvect = [btkvect;btk_shem_2023_010];
btk2vect = [btk2vect;btk2_shem_2023_010];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 011 ... DARIAN before 2022-12-23-15Z

my_shem_2023_011 = [12.8,83.1,115;      15.8,84.0,100;   16.6,84.0,80;     18.1,81.4,75;    20.4,76.3,50];
rsmc_shem_2023_011 = [12.9,82.8,117.6;  15.5,84.0,100.8; 16.6,83.9,84.0;   17.5,81.6,72.8;  19.9,76.7,56.0];
btk_shem_2023_011 = [13.0,83.7,110;     15.6,85.1,90;    16.9,84.9,110;    18.6,82.0,70;    20.5,76.7,50]; # JTWC best track
btk2_shem_2023_011 = [12.92,83.61,106.4;15.54,85.03,84.0;16.75,84.84,112.0;18.22,81.77,78.4;20.7,76.32,56.0]; # MFR data table
myvect = [myvect;my_shem_2023_011];
rsmcvect = [rsmcvect;rsmc_shem_2023_011];
btkvect = [btkvect;btk_shem_2023_011];
btk2vect = [btk2vect;btk2_shem_2023_011];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 012 ... DARIAN before 2022-12-23-21Z

my_shem_2023_012 = [13.2,83.2,110;      15.9,84.2,90;    16.9,84.0,75;    18.7,80.6,60;    21.8,74.4,45];
rsmc_shem_2023_012 = [13.4,83.1,112.0;  16.0,84.1,95.2;  17.1,83.8,78.4;  18.9,80.4,56.0;  22.2,74.3,44.8];
btk_shem_2023_012 = [13.5,84.1,95;      16.2,85.3,95;    17.1,84.3,100;   18.8,80.6,65;    21.4,75.2,50]; # JTWC best track
btk2_shem_2023_012 = [13.33,84.03,100.8;15.95,85.05,89.6;17.04,84.24,95.2;18.69,80.33,72.8;21.36,74.84,56.0]; # MFR data table
myvect = [myvect;my_shem_2023_012];
rsmcvect = [rsmcvect;rsmc_shem_2023_012];
btkvect = [btkvect;btk_shem_2023_012];
btk2vect = [btk2vect;btk2_shem_2023_012];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 013 ... DARIAN before 2022-12-24-15Z

my_shem_2023_013 = [15.8,84.6,85;      17.2,83.8,80;     18.7,81.0,60;    22.0,75.6,50;   24.9,70.7,40];
rsmc_shem_2023_013 = [16.0,84.8,95.2;  17.3,84.4,89.6;   18.8,82.2,72.8;  22.2,76.8,56.0; 25.2,71.9,44.8];
btk_shem_2023_013 = [15.6,85.1,90;     16.9,84.9,110;    18.6,82.0,70;    20.5,76.7,50;   24.5,71.5,50]; # JTWC best track
btk2_shem_2023_013 = [15.54,85.03,84.0;16.75,84.84,112.0;18.22,81.77,78.4;20.7,76.32,56.0;24.44,71.48,44.8]; # MFR data table
myvect = [myvect;my_shem_2023_013];
rsmcvect = [rsmcvect;rsmc_shem_2023_013];
btkvect = [btkvect;btk_shem_2023_013];
btk2vect = [btk2vect;btk2_shem_2023_013];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 014 ... DARIAN before 2022-12-24-21Z

my_shem_2023_014 = [16.1,85.0,85;      17.2,84.5,80;    19.3,81.7,60;    22.6,76.3,45;    25.9,71.2,40];
rsmc_shem_2023_014 = [16.3,85.0,89.6;  17.4,84.6,84.0;  19.0,81.8,67.2;  22.5,76.4,50.4;  26.3,71.0,44.8];
btk_shem_2023_014 = [16.2,85.3,95;     17.1,84.3,100;   18.8,80.6,65;    21.4,75.2,50;    25.4,70.6,45]; # JTWC best track
btk2_shem_2023_014 = [15.95,85.05,89.6;17.04,84.24,95.2;18.69,80.33,72.8;21.36,74.84,56.0;25.43,70.64,44.8]; # MFR data table
myvect = [myvect;my_shem_2023_014];
rsmcvect = [rsmcvect;rsmc_shem_2023_014];
btkvect = [btkvect;btk_shem_2023_014];
btk2vect = [btk2vect;btk2_shem_2023_014];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 015 ... DARIAN before 2022-12-25-15Z

my_shem_2013_015 = [17.0,84.9,65;       18.7,82.0,55;    21.9,76.7,45;   25.2,71.7,45;    28.5,68.9,35];
rsmc_shem_2013_015 = [16.9,84.7,78.4;   18.4,81.7,67.2;  21.5,76.5,56.0; 24.6,71.9,56.0;  28.1,69.3,50.4];
btk_shem_2013_015 = [16.9,84.9,110;     18.6,82.0,70;    20.5,76.7,50;   24.5,71.5,50;    28.1,69.2,50]; # JTWC best track
btk2_shem_2013_015 = [16.75,84.84,112.0;18.22,81.77,78.4;20.7,76.32,56.0;24.44,71.48,44.8;28.53,69.04,50.4]; # MFR data table
myvect = [myvect;my_shem_2013_015];
rsmcvect = [rsmcvect;rsmc_shem_2013_015];
btkvect = [btkvect;btk_shem_2013_015];
btk2vect = [btk2vect;btk2_shem_2013_015];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 016 ... DARIAN before 2022-12-25-21Z

my_shem_2013_016 = [17.2,84.0,85;      19.6,80.7,65;    22.7,75.0,50;    26.1,70.6,50;    29.2,68.7,45];
rsmc_shem_2013_016 = [17.4,84.2,84.0;  19.4,80.5,61.6;  22.4,74.9,50.4;  25.4,70.6,44.8;  28.9,68.4,44.8];
btk_shem_2013_016 = [17.1,84.3,100;    18.8,80.6,65;    21.4,75.2,50;    25.4,70.6,45;    29.0,68.7,45]; # JTWC best track
btk2_shem_2013_016 = [17.04,84.24,95.2;18.69,80.33,72.8;21.36,74.84,56.0;25.43,70.64,44.8;29.45,68.65,44.8]; # MFR data table
myvect = [myvect;my_shem_2013_016];
rsmcvect = [rsmcvect;rsmc_shem_2013_016];
btkvect = [btkvect;btk_shem_2013_016];
btk2vect = [btk2vect;btk2_shem_2013_016];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 017 ... DARIAN before 2022-12-26-15Z

my_shem_2013_017 = [18.2,81.7,95;      21.8,75.8,65;   24.7,71.4,55;    28.5,68.6,50;    32.1,68.1,40];
rsmc_shem_2013_017 = [18.6,81.6,84.0;  21.7,76.0,67.2; 24.8,71.2,56.0;  28.5,68.2,50.4;  32.7,68.0,44.8];
btk_shem_2013_017 = [18.6,82.0,70;     20.5,76.7,50;   24.5,71.5,50;    28.1,69.2,50;    32.6,68.7,30]; # JTWC best track
btk2_shem_2013_017 = [18.22,81.77,78.4;20.7,76.32,56.0;24.44,71.48,44.8;28.53,69.04,50.4;32.52,68.67,39.2]; # MFR data table
myvect = [myvect;my_shem_2013_017];
rsmcvect = [rsmcvect;rsmc_shem_2013_017];
btkvect = [btkvect;btk_shem_2013_017];
btk2vect = [btk2vect;btk2_shem_2013_017];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 018 ... 05/08S before 2023-01-17-21Z

my_shem_2023_018 = [13.7,51.6,40;      14.8,50.0,40;    15.6,49.3,35;    17.5,48.3,30;    19.6,49.6,40];
rsmc_shem_2023_018 = [13.8,52.0,44.8;  15.3,50.2,56.0;  16.4,49.6,39.2;  18.1,49.3,33.6;  19.8,50.2,44.8];
btk_shem_2023_018 = [13.5,51.7,55;     15.8,48.7,30;    16.9,46.4,20;    18.6,45.0,20;    19.9,44.6,20]; # JTWC best track
btk2_shem_2023_018 = [13.48,51.83,61.6;15.58,48.97,33.6;17.17,46.23,28.0;18.77,45.16,22.4;20.06,45.09,28.0]; # MFR data table
myvect = [myvect;my_shem_2023_018];
rsmcvect = [rsmcvect;rsmc_shem_2023_018];
btkvect = [btkvect;btk_shem_2023_018];
btk2vect = [btk2vect;btk2_shem_2023_018];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 019 ... 05/08S before 2023-01-18-03Z

my_shem_2023_019 = [14.2,51.2,65;     15.5,48.9,35;    17.4,47.8,30;    18.6,47.6,30;    20.7,51.0,50];
rsmc_shem_2023_019 = [14.1,51.2,50.4; 15.2,49.3,33.6;  17.1,48.7,33.6;  18.8,49.4,33.6;  20.2,50.3,50.4];
btk_shem_2023_019 = [14.0,51.0,60;    16.0,47.7,25;    17.2,46.1,20;    18.5,44.2,20;    20.4,44.7,20]; # JTWC best track
btk2_shem_2023_019 = [13.8,51.15,61.6;15.93,48.15,28.0;17.67,46.16,28.0;19.05,44.78,28.0;20.3,44.86,28.0]; # MFR data table
myvect = [myvect;my_shem_2023_019];
rsmcvect = [rsmcvect;rsmc_shem_2023_019];
btkvect = [btkvect;btk_shem_2023_019];
btk2vect = [btk2vect;btk2_shem_2023_019];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 020 ... CHENESO before 2023-01-18-21Z

my_shem_2023_020 = [15.2,49.0,35;      16.3,48.1,25;    18.9,47.6,25];
rsmc_shem_2023_020 = [15.3,48.9,39.2;  16.6,47.8,33.6;  18.1,46.9,28.0];
btk_shem_2023_020 = [15.8,48.7,30;     16.9,46.4,20;    18.6,45.0,20]; # JTWC best track
btk2_shem_2023_020 = [15.58,48.97,33.6;17.17,46.23,28.0;18.77,45.16,22.4]; # MFR data table
myvect = [myvect;my_shem_2023_020];
rsmcvect = [rsmcvect;rsmc_shem_2023_020];
btkvect = [btkvect;btk_shem_2023_020];
btk2vect = [btk2vect;btk2_shem_2023_020];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 021 ... IRENE before 2023-01-18-21Z

my_shem_2023_021 = [23.8,175.2,50];
rsmc_shem_2023_021 = [23.6,175.8,56.0];
btk_shem_2023_021 = [25.1,176.5,35]; # JTWC best track
btk2_shem_2023_021 = btk_shem_2023_021; # placeholder
myvect = [myvect;my_shem_2023_021];
rsmcvect = [rsmcvect;rsmc_shem_2023_021];
btkvect = [btkvect;btk_shem_2023_021];
btk2vect = [btk2vect;btk2_shem_2023_021];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;5];

# Shem 022 ... CHENESO before 2023-01-23-21Z

my_shem_2023_022 = [20.1,43.0,45;      20.2,42.8,65;    20.3,41.5,80;    21.8,39.3,95;   24.3,40.2,85];
rsmc_shem_2023_022 = [20.0,43.1,44.8;  19.7,43.3,61.6;  20.0,42.3,78.4;  22.1,40.8,95.2; 25.2,41.5,89.6];
btk_shem_2023_022 = [20.0,43.0,65;     19.5,43.1,80;    20.7,42.4,55;    23.2,41.7,60;   26.6,42.3,65]; # JTWC best track
btk2_shem_2023_022 = [19.98,42.81,50.4;19.51,43.09,72.8;20.59,42.31,56.0;23.3,41.47,67.2;26.47,42.58,61.6]; # MFR data table
myvect = [myvect;my_shem_2023_022];
rsmcvect = [rsmcvect;rsmc_shem_2023_022];
btkvect = [btkvect;btk_shem_2023_022];
btk2vect = [btk2vect;btk2_shem_2023_022];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 023 ... CHENESO before 2023-01-24-03Z

my_shem_2023_023 = [19.9,42.2,60;      20.5,42.1,70;    21.0,41.3,75;    22.7,39.4,85;    25.6,40.4,80];
rsmc_shem_2023_023 = [19.7,42.1,44.8;  20.1,41.9,56.0;  20.5,41.2,78.4;  22.3,39.9,95.2;  25.2,40.8,89.6];
btk_shem_2023_023 = [20.2,43.0,65;     19.6,43.2,75;    21.1,42.2,50;    24.1,41.4,75;    27.7,43.8,55]; # JTWC best track
btk2_shem_2023_023 = [20.09,42.96,61.6;19.61,43.26,78.4;20.95,42.01,56.0;24.13,41.27,78.4;27.69,44.06,56.0]; # MFR data table
myvect = [myvect;my_shem_2023_023];
rsmcvect = [rsmcvect;rsmc_shem_2023_023];
btkvect = [btkvect;btk_shem_2023_023];
btk2vect = [btk2vect;btk2_shem_2023_023];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 024 ... CHENESO before 2023-01-24-21Z

my_shem_2023_024 = [20.4,43.2,90;      21.3,42.5,90;    23.4,41.1,100;  25.8,41.1,95;    29.2,45.3,75];
rsmc_shem_2023_024 = [20.2,43.1,95.2;  20.8,42.3,95.2;  23.1,40.3,112.0;25.6,40.7,106.4; 28.5,44.4,78.4];
btk_shem_2023_024 = [19.5,43.1,80;     20.7,42.4,55;    23.2,41.7,60;   26.6,42.3,65;    31.9,49.4,40]; # JTWC best track
btk2_shem_2023_024 = [19.51,43.09,72.8;20.59,42.31,56.0;23.3,41.47,67.2;26.47,42.58,61.6;31.69,49.53,50.4]; # MFR data table
myvect = [myvect;my_shem_2023_024];
rsmcvect = [rsmcvect;rsmc_shem_2023_024];
btkvect = [btkvect;btk_shem_2023_024];
btk2vect = [btk2vect;btk2_shem_2023_024];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 025 ... CHENESO before 2023-01-25-21Z

my_shem_2023_025 = [20.7,42.6,90;      22.9,41.1,95;   26.0,42.2,90;    29.7,46.5,70;    34.1,55.3,60];
rsmc_shem_2023_025 = [20.8,42.6,89.6;  23.2,40.6,112.0;26.0,41.6,100.8; 29.5,44.9,78.4;  34.1,53.6,61.6];
btk_shem_2023_025 = [20.7,42.4,55;     23.2,41.7,60;   26.6,42.3,65;    31.9,49.4,40;    36.8,59.1,45]; # JTWC best track (except day 5)
btk2_shem_2023_025 = [20.59,42.31,56.0;23.3,41.47,67.2;26.47,42.58,61.6;31.69,49.53,50.4;39.3,60.0,50.4]; # MFR data table
myvect = [myvect;my_shem_2023_025];
rsmcvect = [rsmcvect;rsmc_shem_2023_025];
btkvect = [btkvect;btk_shem_2023_025];
btk2vect = [btk2vect;btk2_shem_2023_025];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 026 ... CHENESO before 2023-01-26-03Z

my_shem_2023_026 = [21.4,42.3,100;     23.8,40.9,105;   27.5,43.0,90;    31.7,47.9,75;   37.9,59.3,60];
rsmc_shem_2023_026 = [21.5,42.0,100.8; 23.8,40.5,112.0; 27.3,42.5,95.2;  30.9,47.4,78.4; 36.4,57.6,61.6];
btk_shem_2023_026 = [21.1,42.2,50;     24.1,41.4,75;    27.7,43.8,55;    32.7,51.5,35;   40.2,62.2,45]; # JTWC best track (except day 5)
btk2_shem_2023_026 = [20.95,42.01,56.0;24.13,41.27,84.0;27.69,44.06,56.0;32.6,51.22,50.4;42.44,63.64,56.0]; # MFR data table
myvect = [myvect;my_shem_2023_026];
rsmcvect = [rsmcvect;rsmc_shem_2023_026];
btkvect = [btkvect;btk_shem_2023_026];
btk2vect = [btk2vect;btk2_shem_2023_026];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 027 ... CHENESO before 2023-01-26-21Z

my_shem_2023_027 = [23.0,41.1,75;     26.5,42.6,85;    31.1,47.8,60;    36.9,59.0,50;  48.9,74.1,50];
rsmc_shem_2023_027 = [23.1,40.9,95.2; 26.4,42.1,100.8; 30.7,47.3,78.4;  36.4,58.1,67.2;46.8,72.6,56.0];
btk_shem_2023_027 = [23.2,41.7,60;    26.6,42.3,65;    31.9,49.4,40;    36.8,59.1,45;  52.1,71.8,55]; # JTWC best track (except day 4 U.S. oper., day 5 MFR)
btk2_shem_2023_027 = [23.3,41.47,67.2;26.47,42.58,61.6;31.69,49.53,50.4;39.3,60.0,50.4;52.1,71.8,56.0]; # MFR data table
myvect = [myvect;my_shem_2023_027];
rsmcvect = [rsmcvect;rsmc_shem_2023_027];
btkvect = [btkvect;btk_shem_2023_027];
btk2vect = [btk2vect;btk2_shem_2023_027];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 028 ... CHENESO before 2023-01-27-21Z

my_shem_2023_028 = [26.5,42.5,65;      31.0,48.7,50;    36.2,61.0,45];
rsmc_shem_2023_028 = [26.6,42.6,78.4;  30.9,48.7,56.0;  35.7,59.2,50.4];
btk_shem_2023_028 = [26.6,42.3,65;     31.9,49.4,40;    36.8,59.1,45]; # JTWC best track (except day 3)
btk2_shem_2023_028 = [26.47,42.58,61.6;31.69,49.53,50.4;39.3,60.0,50.4]; # MFR data table
myvect = [myvect;my_shem_2023_028];
rsmcvect = [rsmcvect;rsmc_shem_2023_028];
btkvect = [btkvect;btk_shem_2023_028];
btk2vect = [btk2vect;btk2_shem_2023_028];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 029 ... FREDDY before 2023-02-06-21Z

my_shem_2023_029 = [14.7,115.8,75;    15.6,112.3,90;  15.5,109.9,85;  15.8,106.7,85;  16.1,103.2,75];
rsmc_shem_2023_029 = [14.7,115.9,67.2;15.4,113.1,84.0;15.2,110.6,89.6;15.1,107.4,89.6;15.7,103.6,78.4];
btk_shem_2023_029 = [14.8,115.1,90;   16.0,112.1,70;  15.5,108.9,65;  14.7,105.6,70;  14.9,101.9,120]; # JTWC best track
btk2_shem_2023_029 = [14.7,115.3,84.0;15.9,112.3,84.0;15.6,109.2,56.0;14.7,106.0,67.2;14.9,102.1,112.0]; # BoM best track
myvect = [myvect;my_shem_2023_029];
rsmcvect = [rsmcvect;rsmc_shem_2023_029];
btkvect = [btkvect;btk_shem_2023_029];
btk2vect = [btk2vect;btk2_shem_2023_029];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 030 ... FREDDY before 2023-02-07-03Z

my_shem_2023_030 = [15.1,115.2,85;    15.8,111.9,90;  15.8,109.2,90;  16.5,106.0,85;   16.8,102.6,70];
rsmc_shem_2023_030 = [15.2,115.3,72.8;15.7,112.2,89.6;15.5,109.4,89.6;15.5,106.1,89.6; 16.2,102.3,72.8];
btk_shem_2023_030 = [15.1,114.5,90;   15.5,110.7,60;  15.4,108.2,65;  14.7,104.9,75;   15.0,101.1,110]; # JTWC best track
btk2_shem_2023_030 = [15.1,114.5,84.0;15.9,111.2,84.0;15.3,108.2,61.6;14.7,105.15,84.0;15.0,101.1,112.0]; # BoM best track
myvect = [myvect;my_shem_2023_030];
rsmcvect = [rsmcvect;rsmc_shem_2023_030];
btkvect = [btkvect;btk_shem_2023_030];
btk2vect = [btk2vect;btk2_shem_2023_030];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 031 ... FREDDY before 2023-02-07-09Z

my_shem_2023_031 = [15.6,113.5,90;     15.8,110.4,95;   15.8,107.8,90;   16.1,104.2,85;   16.7,100.2,65];
rsmc_shem_2023_031 = [15.7,113.6,100.8;15.8,110.7,106.4;15.6,108.1,106.4;16.0,104.7,100.8;16.6,100.9,84.0];
btk_shem_2023_031 = [15.5,113.7,90;    15.4,110.3,55;   15.3,107.6,65;   14.7,103.9,90;   15.1,100.0,100]; # JTWC best track
btk2_shem_2023_031 = [15.6,113.5,89.6; 15.4,110.2,61.6; 15.0,107.5,61.6; 14.7,104.1,84.0; 15.1,99.9,112.0]; # BoM best track
myvect = [myvect;my_shem_2023_031];
rsmcvect = [rsmcvect;rsmc_shem_2023_031];
btkvect = [btkvect;btk_shem_2023_031];
btk2vect = [btk2vect;btk2_shem_2023_031];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 032 ... 11U / 94S before 2023-02-07-09Z

my_shem_2023_032 = [15.6,94.5,30;    16.5,90.3,40;    16.1,86.1,55;    15.8,82.2,60;    16.7,78.3,65];
rsmc_shem_2023_032 = [15.7,94.4,39.2;16.6,90.1,44.8;  16.0,86.2,56.0;  15.3,82.4,61.6;  15.8,79.4,67.2];
btk_shem_2023_032 = [15.4,94.3,25;   16.7,89.1,40;    16.2,83.7,40;    15.6,79.4,55;    16.8,75.5,65]; # JTWC best track
btk2_shem_2023_032 = [15.4,94.3,28.0;16.77,89.08,44.8;16.03,83.96,44.8;15.54,79.35,56.0;16.68,75.57,67.2]; # BoM best track (day 1), MFR data table (days 2-5)
myvect = [myvect;my_shem_2023_032];
rsmcvect = [rsmcvect;rsmc_shem_2023_032];
btkvect = [btkvect;btk_shem_2023_032];
btk2vect = [btk2vect;btk2_shem_2023_032];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 033 ... FREDDY before 2023-02-07-21Z

my_shem_2023_033 = [15.6,112.1,105;    15.8,109.0,95;   15.7,105.9,100;  16.2,102.3,85;   16.7,98.8,65];
rsmc_shem_2023_033 = [15.7,112.2,106.4;15.6,109.6,106.4;15.6,106.8,106.4;16.3,103.0,89.6; 16.9,99.0,67.2];
btk_shem_2023_033 = [16.0,112.1,70;    15.5,108.9,65;   14.7,105.6,70;   14.9,101.9,120;  15.1,98.0,100]; # JTWC best track
btk2_shem_2023_033 = [15.9,112.3,84.0; 15.6,109.2,56.0; 14.7,106.0,67.2; 14.9,102.1,112.0;15.1,97.9,106.4]; # BoM best track
myvect = [myvect;my_shem_2023_033];
rsmcvect = [rsmcvect;rsmc_shem_2023_033];
btkvect = [btkvect;btk_shem_2023_033];
btk2vect = [btk2vect;btk2_shem_2023_033];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 034 ... FREDDY before 2023-02-08-03Z

my_shem_2023_034 = [15.7,111.4,90;     15.9,108.5,90;   15.7,105.2,90;   16.3,101.1,75;   16.2,97.4,60];
rsmc_shem_2023_034 = [15.6,111.5,106.4;15.3,108.9,106.4;15.2,105.7,100.8;15.6,102.0,78.4; 15.8,97.9,56.0];
btk_shem_2023_034 = [15.5,110.7,60;    15.4,108.2,65;   14.7,104.9,75;   15.0,101.1,110;  15.1,96.9,95]; # JTWC best track
btk2_shem_2023_034 = [15.9,111.2,84.0; 15.3,108.2,61.6; 14.7,105.15,84.0;15.0,101.1,112.0;15.1,96.9,112.0]; # BoM best track
myvect = [myvect;my_shem_2023_034];
rsmcvect = [rsmcvect;rsmc_shem_2023_034];
btkvect = [btkvect;btk_shem_2023_034];
btk2vect = [btk2vect;btk2_shem_2023_034];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 035 ... 14U/12P before 2023-02-08-03Z

my_shem_2023_035 = [17.8,153.2,60;    22.1,157.3,80;  27.0,164.3,65;  29.7,169.6,55;  31.4,174.1,45];
rsmc_shem_2023_035 = [17.7,153.2,72.8;22.3,157.7,89.6;27.0,164.5,78.4;29.5,170.1,61.6;32.6,174.5,50.4];
btk_shem_2023_035 = [18.0,153.0,50;   22.0,157.7,85;  27.8,165.6,60;  30.9,171.8,45;  34.0,176.1,55]; # JTWC best track (except day 5)
btk2_shem_2023_035 = [17.8,152.8,56.0;21.8,157.8,78.4;27.8,165.7,67.2;30.7,171.9,44.8;34.0,176.1,56.0]; # BoM best track (days 1-3 only)
myvect = [myvect;my_shem_2023_035];
rsmcvect = [rsmcvect;rsmc_shem_2023_035];
btkvect = [btkvect;btk_shem_2023_035];
btk2vect = [btk2vect;btk2_shem_2023_035];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 036 ... FREDDY before 2023-02-08-09Z

my_shem_2023_036 = [15.8,110.3,95;     15.7,107.4,95;   15.9,104.1,85;  16.4,100.5,75;  16.3,96.8,55];
rsmc_shem_2023_036 = [15.6,110.4,106.4;15.3,107.8,106.4;15.4,104.3,95.2;15.7,100.9,72.8;15.9,97.4,56.0];
btk_shem_2023_036 = [15.4,110.3,55;    15.3,107.6,65;   14.7,103.9,90;  15.1,100.0,100; 15.3,95.8,90]; # JTWC best track
btk2_shem_2023_036 = [15.4,110.2,61.6; 15.0,107.5,61.6; 14.7,104.1,84.0;15.1,99.9,106.4;15.25,95.8,106.4]; # BoM best track
myvect = [myvect;my_shem_2023_036];
rsmcvect = [rsmcvect;rsmc_shem_2023_036];
btkvect = [btkvect;btk_shem_2023_036];
btk2vect = [btk2vect;btk2_shem_2023_036];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 037 ... GABRIELLE before 2023-02-08-09Z
# (5-day best track is missing!)

my_shem_2023_037 = [18.6,153.2,70;    23.2,158.4,80;  27.3,164.9,65;  29.4,170.4,55];
rsmc_shem_2023_037 = [18.7,153.5,72.8;23.7,159.0,84.0;28.1,165.7,67.2;30.0,171.2,56.0];
btk_shem_2023_037 = [19.1,153.9,60;   23.3,159.6,90;  28.6,167.0,60;  31.8,173.1,55]; # JTWC best track
btk2_shem_2023_037 = [18.8,153.6,56.0;23.4,160.0,89.6;28.6,166.8,67.2;31.8,173.1,56.0]; # BoM best track (days 1-3 only)
myvect = [myvect;my_shem_2023_037];
rsmcvect = [rsmcvect;rsmc_shem_2023_037];
btkvect = [btkvect;btk_shem_2023_037];
btk2vect = [btk2vect;btk2_shem_2023_037];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;4;4;4;4];

# Shem 038 ... FREDDY before 2023-02-08-21Z

my_shem_2023_038 = [15.8,109.2,80;    15.7,105.9,85;   15.9,102.2,80;   16.0,98.7,70;   16.2,95.7,55];
rsmc_shem_2023_038 = [15.6,109.1,95.2;15.2,106.1,100.8;15.5,102.7,89.6; 15.6,99.1,72.8; 15.6,95.9,61.6];
btk_shem_2023_038 = [15.5,108.9,65;   14.7,105.6,70;   14.9,101.9,120;  15.1,98.0,100;  15.4,93.5,85]; # JTWC best track
btk2_shem_2023_038 = [15.6,109.2,56.0;14.7,106.0,67.2; 14.9,102.1,112.0;15.1,97.9,106.4;15.5,93.6,89.6]; # BoM best track
myvect = [myvect;my_shem_2023_038];
rsmcvect = [rsmcvect;rsmc_shem_2023_038];
btkvect = [btkvect;btk_shem_2023_038];
btk2vect = [btk2vect;btk2_shem_2023_038];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 039 ... DINGANI before 2023-02-09-21Z

my_shem_2023_039 = [15.9,81.7,45;      16.3,77.2,65;    18.5,74.4,65;   20.2,72.5,50;    21.1,69.5,45];
rsmc_shem_2023_039 = [16.1,82.1,56.0;  16.6,77.7,56.0;  19.0,75.1,67.2; 20.9,74.0,67.2;  22.2,70.6,56.0];
btk_shem_2023_039 = [15.9,81.8,50;     15.9,77.3,50;    17.8,74.4,75;   20.5,73.0,70;    24.5,71.4,60]; # JTWC best track
btk2_shem_2023_039 = [15.63,81.83,50.4;15.92,77.38,56.0;17.7,74.45,78.4;20.29,72.97,78.4;24.32,71.31,56.0]; # MFR data table
myvect = [myvect;my_shem_2023_039];
rsmcvect = [rsmcvect;rsmc_shem_2023_039];
btkvect = [btkvect;btk_shem_2023_039];
btk2vect = [btk2vect;btk2_shem_2023_039];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 040 ... FREDDY before 2023-02-09-21Z

my_shem_2023_040 = [14.9,105.7,60;    15.2,102.3,75;   15.7,98.8,65;   16.6,94.9,55;  16.6,91.4,50];
rsmc_shem_2023_040 = [15.1,106.1,61.6;15.3,102.6,67.2; 15.6,99.1,67.2; 16.0,95.1,61.6;15.9,91.2,61.6];
btk_shem_2023_040 = [14.7,105.6,70;   14.9,101.9,120;  15.1,98.0,100;  15.4,93.5,85;  15.2,88.8,115]; # JTWC best track
btk2_shem_2023_040 = [14.7,106.0,67.2;14.9,102.1,112.0;15.1,97.9,106.4;15.5,93.6,89.6;15.2,88.85,106.4]; # BoM best track (days 1-4), MFR data table (day 5)
myvect = [myvect;my_shem_2023_040];
rsmcvect = [rsmcvect;rsmc_shem_2023_040];
btkvect = [btkvect;btk_shem_2023_040];
btk2vect = [btk2vect;btk2_shem_2023_040];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 041 ... GABRIELLE before 2023-02-10-03Z

my_shem_2023_041 = [27.0,165.3,65;    29.3,170.6,50;  32.2,173.2,50;  35.3,173.4,50];
rsmc_shem_2023_041 = [27.1,165.3,67.2;29.9,171.0,61.6;33.1,175.6,56.0;36.4,177.0,61.6];
btk_shem_2023_041 = [27.8,165.6,60;   30.9,171.8,45;  34.0,176.1,55;  36.7,178.2,50]; # JTWC best track (days 1-2 only)
btk2_shem_2023_041 = [27.8,165.7,67.2;30.9,171.8,44.8;34.0,176.1,56.0;36.7,178.2,50.4]; # BoM best track (except day 2 JTWC btk, day 3-4 U.S. oper.)
myvect = [myvect;my_shem_2023_041];
rsmcvect = [rsmcvect;rsmc_shem_2023_041];
btkvect = [btkvect;btk_shem_2023_041];
btk2vect = [btk2vect;btk2_shem_2023_041];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;4;4;4;4];

# Shem 042 ... DINGANI before 2023-02-10-21Z

my_shem_2023_042 = [16.2,77.2,65;      18.2,74.3,75;   20.6,72.7,60;    22.7,70.3,45;    25.0,66.9,30];
rsmc_shem_2023_042 = [16.1,77.3,61.6;  18.1,74.6,84.0; 20.1,72.8,50.4;  21.7,69.9,39.2;  24.2,66.1,39.2];
btk_shem_2023_042 = [15.9,77.3,50;     17.8,74.4,75;   20.5,73.0,70;    24.5,71.4,60;    28.7,68.3,40]; # JTWC best track
btk2_shem_2023_042 = [15.92,77.38,56.0;17.7,74.45,78.4;20.29,72.97,78.4;24.32,71.31,56.0;28.92,68.11,44.8]; # MFR data table
myvect = [myvect;my_shem_2023_042];
rsmcvect = [rsmcvect;rsmc_shem_2023_042];
btkvect = [btkvect;btk_shem_2023_042];
btk2vect = [btk2vect;btk2_shem_2023_042];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 043 ... FREDDY before 2023-02-10-21Z

my_shem_2023_043 = [14.8,102.3,80;     15.3,98.4,80;   16.0,94.3,70;  16.4,90.5,65;    16.3,86.1,60];
rsmc_shem_2023_043 = [15.0,102.4,78.4; 15.2,98.7,78.4; 15.7,94.8,67.2;15.8,90.8,61.6;  15.7,86.2,61.6];
btk_shem_2023_043 = [14.9,101.9,120;   15.1,98.0,100;  15.4,93.5,85;  15.2,88.8,115;   14.8,83.6,130]; # JTWC best track
btk2_shem_2023_043 = [14.9,102.1,112.0;15.1,97.9,106.4;15.5,93.6,89.6;15.2,88.85,106.4;14.78,83.54,128.8]; # BoM best track (days 1-3), MFR data table (day 4-5)
myvect = [myvect;my_shem_2023_043];
rsmcvect = [rsmcvect;rsmc_shem_2023_043];
btkvect = [btkvect;btk_shem_2023_043];
btk2vect = [btk2vect;btk2_shem_2023_043];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 044 ... FREDDY before 2023-02-11-15Z

my_shem_2023_044 = [15.0,99.2,100;    15.6,94.9,70;   15.6,90.5,65;  16.0,86.2,65;     16.0,81.8,55];
rsmc_shem_2023_044 = [15.2,99.3,100.8;15.5,95.3,78.4; 15.6,90.9,67.2;15.8,86.5,61.6;   16.0,81.5,61.6];
btk_shem_2023_044 = [15.1,99.0,100;   15.4,94.9,90;   15.3,90.0,110; 14.9,85.0,130;    14.9,79.5,115]; # JTWC best track
btk2_shem_2023_044 = [15.1,98.8,100.8;15.4,94.6,100.8;15.3,90.0,95.2;14.82,84.94,128.8;14.94,79.57,112.0]; # BoM best track (days 1-2), MFR data table (days 3-5)
myvect = [myvect;my_shem_2023_044];
rsmcvect = [rsmcvect;rsmc_shem_2023_044];
btkvect = [btkvect;btk_shem_2023_044];
btk2vect = [btk2vect;btk2_shem_2023_044];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 045 ... FREDDY before 2023-02-12-03Z

my_shem_2023_045 = [15.2,97.0,95;     15.4,92.5,70;  15.8,88.1,65;     16.1,83.6,65;     16.3,78.8,65];
rsmc_shem_2023_045 = [15.4,97.1,89.6; 15.5,92.6,67.2;15.7,88.0,61.6;   15.9,83.0,61.6;   16.4,78.1,61.6];
btk_shem_2023_045 = [15.1,96.9,95;    15.4,92.4,80;  15.1,87.6,125;    14.8,82.3,130;    15.4,76.5,125]; # JTWC best track
btk2_shem_2023_045 = [15.1,96.9,112.0;15.4,92.4,84.0;15.14,87.58,123.2;14.72,82.29,128.8;15.31,76.62,123.2]; # BoM best track (days 1-2), MFR data table (days 3-5)
myvect = [myvect;my_shem_2023_045];
rsmcvect = [rsmcvect;rsmc_shem_2023_045];
btkvect = [btkvect;btk_shem_2023_045];
btk2vect = [btk2vect;btk2_shem_2023_045];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 046 ... FREDDY before 2023-02-12-21Z

my_shem_2023_046 = [15.3,93.3,80;    15.3,88.7,75;    15.1,83.7,75;     15.2,78.9,85;     15.9,74.3,85];
rsmc_shem_2023_046 = [15.4,93.3,78.4;15.4,88.6,67.2;  15.3,83.5,61.6;   15.6,78.7,67.2;   16.6,74.2,72.8];
btk_shem_2023_046 = [15.4,93.5,85;   15.2,88.8,115;   14.8,83.6,130;    15.2,78.0,120;    15.9,72.7,120]; # JTWC best track
btk2_shem_2023_046 = [15.5,93.6,89.6;15.2,88.85,106.4;14.78,83.54,128.8;15.11,78.14,117.6;15.91,72.82,123.2]; # BoM best track (day 1), MFR data table (days 2-5)
myvect = [myvect;my_shem_2023_046];
rsmcvect = [rsmcvect;rsmc_shem_2023_046];
btkvect = [btkvect;btk_shem_2023_046];
btk2vect = [btk2vect;btk2_shem_2023_046];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 047 ... DINGANI before 2023-02-13-21Z

my_shem_2023_047 = [23.9,70.7,50;      28.2,66.8,45;    30.0,67.0,35];
rsmc_shem_2023_047 = [23.8,70.5,50.4;  28.5,67.1,50.4;  30.7,67.0,39.2];
btk_shem_2023_047 = [24.5,71.4,60;     28.7,68.3,40;    32.7,68.8,25]; # JTWC best track
btk2_shem_2023_047 = [24.32,71.31,56.0;28.92,68.11,44.8;32.3,68.6,28.0]; # MFR data table (days 1-2 only)
myvect = [myvect;my_shem_2023_047];
rsmcvect = [rsmcvect;rsmc_shem_2023_047];
btkvect = [btkvect;btk_shem_2023_047];
btk2vect = [btk2vect;btk2_shem_2023_047];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 048 ... FREDDY before 2023-02-13-21Z

my_shem_2023_048 = [15.1,88.7,80;      14.7,83.9,95;     14.4,79.3,95];
rsmc_shem_2023_048 = [15.2,89.0,84.0;  14.7,84.1,95.2;   14.3,79.7,95.2];
btk_shem_2023_048 = [15.2,88.8,115;    14.8,83.6,130;    15.2,78.0,120]; # JTWC best track
btk2_shem_2023_048 = [15.2,88.85,106.4;14.78,83.54,128.8;15.11,78.14,117.6]; # MFR data table
myvect = [myvect;my_shem_2023_048];
rsmcvect = [rsmcvect;rsmc_shem_2023_048];
btkvect = [btkvect;btk_shem_2023_048];
btk2vect = [btk2vect;btk2_shem_2023_048];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;4;4;4];

# Shem 049 ... FREDDY before 2023-02-14-03Z

my_shem_2023_049 = [15.2,87.7,85;       14.8,82.8,95;     14.8,78.3,95];
rsmc_shem_2023_049 = [15.2,87.9,84.0;   14.7,83.0,95.2;   14.7,78.4,100.8];
btk_shem_2023_049 = [15.1,87.6,125;     14.8,82.3,130;    15.4,76.5,125]; # JTWC best track
btk2_shem_2023_049 = [15.14,87.58,123.2;14.72,82.29,128.8;15.31,76.62,123.2]; # MFR data table
myvect = [myvect;my_shem_2023_049];
rsmcvect = [rsmcvect;rsmc_shem_2023_049];
btkvect = [btkvect;btk_shem_2023_049];
btk2vect = [btk2vect;btk2_shem_2023_049];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;4;4;4];

# Shem 050 ... FREDDY before 2023-02-14-21Z

my_shem_2023_050 = [14.6,84.0,115;      14.9,79.0,100;    15.2,74.4,105;    15.7,70.4,110;    16.3,65.7,110];
rsmc_shem_2023_050 = [15.0,84.0,106.4;  14.9,78.9,117.6;  15.3,74.2,117.6;  15.3,70.3,117.6;  16.1,65.8,123.2];
btk_shem_2023_050 = [14.8,83.6,130;     15.2,78.0,120;    15.9,72.7,120;    16.4,68.0,120;    17.7,62.4,140]; # JTWC best track
btk2_shem_2023_050 = [14.78,83.54,128.8;15.11,78.14,117.6;15.91,72.82,123.2;16.31,68.24,123.2;17.59,62.36,140.0]; # MFR data table
myvect = [myvect;my_shem_2023_050];
rsmcvect = [rsmcvect;rsmc_shem_2023_050];
btkvect = [btkvect;btk_shem_2023_050];
btk2vect = [btk2vect;btk2_shem_2023_050];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 051 ... FREDDY before 2023-02-15-21Z
# (no RSMC forecast from MFR!)

my_shem_2023_051 = [14.4,78.2,115;      15.0,73.5,0;  15.6,69.4,0;  16.9,64.8,0;  18.3,58.1,0];
rsmc_shem_2023_051 = [14.9,78.4,116.4;  15.5,73.5,0;  15.7,69.5,0;  16.8,65.4,0;  17.8,58.5,0];
btk_shem_2023_051 = [15.2,78.0,120;     15.9,72.7,0;  16.4,68.0,0;  17.7,62.4,0;  19.3,54.8,0]; # JTWC best track
btk2_shem_2023_051 = [15.11,78.14,117.6;15.91,72.82,0;16.31,68.24,0;17.59,62.36,0;19.22,54.91,0]; # MFR data table
myvect = [myvect;my_shem_2023_051];
rsmcvect = [rsmcvect;rsmc_shem_2023_051];
btkvect = [btkvect;btk_shem_2023_051];
btk2vect = [btk2vect;btk2_shem_2023_051];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 052 ... FREDDY before 2023-02-16-03Z

my_shem_2023_052 = [14.8,77.0,110;      15.4,72.2,110;   15.7,68.2,110;    17.0,63.2,105;    18.0,55.9,110];
rsmc_shem_2023_052 = [15.0,77.0,112.0;  15.5,72.5,106.4; 15.8,68.6,106.4;  17.0,63.8,100.8;  18.0,56.2,112.0];
btk_shem_2023_052 = [15.4,76.6,125;     16.0,71.4,115;   16.6,67.0,140;    18.1,60.6,130;    19.8,52.7,100]; # JTWC best track
btk2_shem_2023_052 = [15.31,76.62,123.2;16.0,71.54,117.6;16.63,67.04,134.4;18.03,60.63,134.4;19.72,52.84,100.8]; # MFR data table
myvect = [myvect;my_shem_2023_052];
rsmcvect = [rsmcvect;rsmc_shem_2023_052];
btkvect = [btkvect;btk_shem_2023_052];
btk2vect = [btk2vect;btk2_shem_2023_052];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 053 ... FREDDY before 2023-02-16-15Z

my_shem_2023_053 = [15.3,73.9,125;      15.5,69.9,120;    16.4,65.3,115;    17.9,58.9,115;    19.2,51.7,110];
rsmc_shem_2023_053 = [15.5,74.3,123.2;  15.9,70.1,123.2;  16.7,65.7,112.0;  18.0,59.0,112.0;  19.3,51.7,112.0];
btk_shem_2023_053 = [15.8,74.0,125;     16.2,69.2,115;    17.3,64.0,130;    18.9,56.7,115;    20.8,49.4,95]; # JTWC best track
btk2_shem_2023_053 = [15.78,73.97,123.2;16.12,69.29,117.6;17.32,63.99,134.4;18.84,56.77,123.2;20.68,49.35,89.6]; # MFR data table
myvect = [myvect;my_shem_2023_053];
rsmcvect = [rsmcvect;rsmc_shem_2023_053];
btkvect = [btkvect;btk_shem_2023_053];
btk2vect = [btk2vect;btk2_shem_2023_053];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 054 ... FREDDY before 2023-02-16-21Z

my_shem_2023_054 = [15.5,73.1,110;      15.8,68.7,120;    16.9,63.3,110;    18.1,56.3,110;    19.8,50.9,100];
rsmc_shem_2023_054 = [15.7,73.2,123.2;  16.3,69.1,117.6;  17.2,63.8,112.0;  18.7,56.6,112.0;  20.4,49.9,112.0];
btk_shem_2023_054 = [15.9,72.7,120;     16.4,68.0,120;    17.7,62.4,140;    19.3,54.8,110;    21.1,48.0,75]; # JTWC best track
btk2_shem_2023_054 = [15.91,72.82,123.2;16.31,68.24,123.2;17.59,62.36,140.0;19.22,54.91,112.0;21.02,48.24,78.4]; # MFR data table
myvect = [myvect;my_shem_2023_054];
rsmcvect = [rsmcvect;rsmc_shem_2023_054];
btkvect = [btkvect;btk_shem_2023_054];
btk2vect = [btk2vect;btk2_shem_2023_054];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 055 ... FREDDY before 2023-02-17-15Z

my_shem_2023_055 = [16.0,69.3,120;      16.6,63.9,120;    18.3,57.8,120;    20.0,50.2,115;   21.3,43.6,30];
rsmc_shem_2023_055 = [16.1,69.6,123.2;  16.9,64.7,123.2;  18.4,58.3,123.2;  20.1,51.1,112.0; 21.3,44.3,39.2];
btk_shem_2023_055 = [16.2,69.2,115;     17.3,64.0,130;    18.9,56.7,115;    20.8,49.4,95;    22.0,43.6,25]; # JTWC best track
btk2_shem_2023_055 = [16.12,69.29,117.6;17.32,63.99,134.4;18.84,56.77,123.2;20.68,49.35,89.6;21.89,43.52,28.0]; # MFR data table
myvect = [myvect;my_shem_2023_055];
rsmcvect = [rsmcvect;rsmc_shem_2023_055];
btkvect = [btkvect;btk_shem_2023_055];
btk2vect = [btk2vect;btk2_shem_2023_055];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 056 ... FREDDY before 2023-02-18-21Z

my_shem_2023_056 = [17.4,62.4,115;      18.6,54.9,120;    20.2,48.5,105;   20.7,42.5,40;    20.3,37.7,70];
rsmc_shem_2023_056 = [17.4,62.7,128.8;  19.0,55.6,123.2;  20.4,48.9,117.6; 21.0,42.7,44.8;  20.8,37.5,67.2];
btk_shem_2023_056 = [17.7,62.4,140;     19.3,54.8,110;    21.1,48.0,75;    22.0,42.6,30;    22.5,38.8,55]; # JTWC best track
btk2_shem_2023_056 = [17.59,62.36,140.0;19.22,54.91,112.0;21.02,48.24,78.4;21.84,42.52,33.6;22.43,38.62,61.6]; # MFR data table
myvect = [myvect;my_shem_2023_056];
rsmcvect = [rsmcvect;rsmc_shem_2023_056];
btkvect = [btkvect;btk_shem_2023_056];
btk2vect = [btk2vect;btk2_shem_2023_056];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 057 ... FREDDY before 2023-02-19-03Z

my_shem_2023_057 = [18.0,60.9,145;      19.4,53.6,120;    20.9,47.2,100;   21.0,41.1,50;   20.2,35.8,65];
rsmc_shem_2023_057 = [17.9,60.8,140.0;  19.5,53.7,123.2;  20.8,47.0,56.0;  21.0,40.9,44.8; 19.9,35.7,67.2];
btk_shem_2023_057 = [18.1,60.6,130;     19.8,52.7,100;    21.0,46.5,60;    22.1,41.4,45;   22.5,37.6,60]; # JTWC best track
btk2_shem_2023_057 = [18.03,60.63,134.4;19.72,52.84,100.8;21.48,46.62,44.8;22.3,41.42,44.8;22.26,37.43,61.6]; # MFR data table
myvect = [myvect;my_shem_2023_057];
rsmcvect = [rsmcvect;rsmc_shem_2023_057];
btkvect = [btkvect;btk_shem_2023_057];
btk2vect = [btk2vect;btk2_shem_2023_057];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 058 ... FREDDY before 2023-02-19-09Z

my_shem_2023_058 = [18.3,58.9,125;     19.6,51.1,115;   21.0,45.1,60;    20.4,39.7,45;    19.5,35.4,65];
rsmc_shem_2023_058 = [18.3,59.0,123.2; 19.9,51.7,117.6; 21.1,45.0,44.8;  20.6,38.9,50.4;  19.6,34.4,72.8];
btk_shem_2023_058 = [18.5,58.7,120;    20.1,51.1,95;    21.2,45.3,40;    22.4,40.3,45;    22.4,36.3,65]; # JTWC best track
btk2_shem_2023_058 = [18.4,58.64,127.6;20.09,51.16,95.2;21.88,44.81,28.0;22.37,40.37,56.0;22.34,36.17,61.6]; # MFR data table
myvect = [myvect;my_shem_2023_058];
rsmcvect = [rsmcvect;rsmc_shem_2023_058];
btkvect = [btkvect;btk_shem_2023_058];
btk2vect = [btk2vect;btk2_shem_2023_058];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 059 ... FREDDY before 2023-02-19-21Z

my_shem_2023_059 = [19.0,55.4,115;      20.5,48.3,95;    21.4,42.5,40;    20.1,37.7,55;    19.8,33.2,40];
rsmc_shem_2023_059 = [19.2,55.2,134.4;  20.9,48.4,84.0;  21.3,42.1,44.8;  20.3,36.9,56.0;  20.2,32.4,22.4];
btk_shem_2023_059 = [19.3,54.8,110;     21.1,48.0,75;    22.0,42.6,30;    22.5,38.8,55;    22.6,34.7,45]; # JTWC best track
btk2_shem_2023_059 = [19.22,54.91,112.0;21.02,48.24,78.4;21.84,42.52,33.6;22.43,38.62,61.6;22.51,34.65,44.8]; # MFR data table
myvect = [myvect;my_shem_2023_059];
rsmcvect = [rsmcvect;rsmc_shem_2023_059];
btkvect = [btkvect;btk_shem_2023_059];
btk2vect = [btk2vect;btk2_shem_2023_059];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 060 ... FREDDY before 2023-02-20-03Z

my_shem_2023_060 = [19.6,53.4,115;      21.1,46.9,60;    22.0,40.9,45;   20.9,35.8,55;    21.5,32.2,25];
rsmc_shem_2023_060 = [19.5,53.4,123.2;  21.0,47.0,50.4;  21.6,41.1,44.8; 20.3,35.9,61.6;  21.0,32.4,22.4];
btk_shem_2023_060 = [19.8,52.7,100;     21.0,46.5,60;    22.1,41.4,45;   22.5,37.6,60;    22.7,34.0,40]; # JTWC best track
btk2_shem_2023_060 = [19.72,52.84,100.8;21.48,46.62,44.8;22.3,41.42,44.8;22.26,37.43,61.6;22.84,34.11,33.6]; # MFR data table
myvect = [myvect;my_shem_2023_060];
rsmcvect = [rsmcvect;rsmc_shem_2023_060];
btkvect = [btkvect;btk_shem_2023_060];
btk2vect = [btk2vect;btk2_shem_2023_060];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 061 ... FREDDY before 2023-02-20-15Z

my_shem_2023_061 = [20.9,49.8,115;     22.0,43.6,30;    21.8,38.3,55;    20.9,33.5,45;    21.7,30.2,25];
rsmc_shem_2023_061 = [20.6,50.0,123.2; 21.7,43.6,33.6;  21.1,38.4,56.0;  20.3,33.7,44.8;  21.1,30.9,28.0];
btk_shem_2023_061 = [20.8,49.4,95;     22.0,43.6,25;    22.5,39.6,55;    22.5,35.5,50;    22.8,33.1,25]; # JTWC best track
btk2_shem_2023_061 = [20.68,49.35,89.6;21.89,43.52,28.0;22.58,39.78,61.6;22.34,35.37,61.6;22.76,33.17,22.4]; # MFR data table
myvect = [myvect;my_shem_2023_061];
rsmcvect = [rsmcvect;rsmc_shem_2023_061];
btkvect = [btkvect;btk_shem_2023_061];
btk2vect = [btk2vect;btk2_shem_2023_061];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 062 ... FREDDY before 2023-02-20-21Z

my_shem_2023_062 = [20.8,48.1,120;     21.1,41.8,40;    21.3,36.6,65;    20.9,31.9,35];
rsmc_shem_2023_062 = [21.0,48.4,134.4; 21.8,42.1,39.2;  21.1,36.7,61.6;  20.7,32.5,28.0];
btk_shem_2023_062 = [21.1,48.0,75;     22.0,42.6,30;    22.5,38.8,55;    22.6,34.7,45]; # JTWC best track
btk2_shem_2023_062 = [21.02,48.24,78.4;21.84,42.52,33.6;22.43,38.62,61.6;22.51,34.65,44.8]; # MFR data table
myvect = [myvect;my_shem_2023_062];
rsmcvect = [rsmcvect;rsmc_shem_2023_062];
btkvect = [btkvect;btk_shem_2023_062];
btk2vect = [btk2vect;btk2_shem_2023_062];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 063 ... FREDDY before 2023-02-21-03Z

my_shem_2023_063 = [21.4,46.2,55;      21.4,40.1,50;   21.0,35.0,65;    21.1,30.9,20];
rsmc_shem_2023_063 = [21.4,46.5,61.6;  21.7,40.7,44.8; 20.9,35.6,67.2;  20.9,31.8,22.4];
btk_shem_2023_063 = [21.0,46.5,60;     22.1,41.4,45;   22.5,37.6,60;    22.7,34.0,40]; # JTWC best track
btk2_shem_2023_063 = [21.48,46.62,44.8;22.3,41.42,44.8;22.26,37.43,61.6;22.84,34.11,33.6]; # MFR data table
myvect = [myvect;my_shem_2023_063];
rsmcvect = [rsmcvect;rsmc_shem_2023_063];
btkvect = [btkvect;btk_shem_2023_063];
btk2vect = [btk2vect;btk2_shem_2023_063];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 064 ... FREDDY before 2023-02-21-15Z

my_shem_2023_064 = [21.8,43.0,25;      21.7,37.9,55;    21.7,33.7,50;    22.3,30.6,25;    21.9,29.5,20];
rsmc_shem_2023_064 = [22.0,43.1,39.2;  21.8,38.7,56.0;  21.8,34.1,50.4;  22.6,31.5,33.6;  21.6,31.5,22.4];
btk_shem_2023_064 = [22.0,43.6,25;     22.5,39.6,55;    22.5,35.5,50;    22.8,33.1,25;    21.3,33.2,20]; # JTWC best track
btk2_shem_2023_064 = [21.89,43.52,28.0;22.58,39.78,61.6;22.34,35.37,61.6;22.76,33.17,22.4;21.76,33.35,22.4]; # MFR data table
myvect = [myvect;my_shem_2023_064];
rsmcvect = [rsmcvect;rsmc_shem_2023_064];
btkvect = [btkvect;btk_shem_2023_064];
btk2vect = [btk2vect;btk2_shem_2023_064];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 065 ... ENALA before 2023-02-22-21Z

my_shem_2023_065 = [19.6,71.1,50;      23.7,69.9,45;    26.0,67.8,40;    28.2,66.0,25;   28.8,64.7,20];
rsmc_shem_2023_065 = [19.5,70.9,61.6;  22.7,69.2,50.4;  25.4,66.9,44.8;  26.8,64.7,33.6; 27.3,63.5,28.0];
btk_shem_2023_065 = [19.8,71.0,75;     23.4,69.5,65;    27.1,67.9,45;    28.8,66.8,45;   28.4,67.9,35]; # JTWC best track
btk2_shem_2023_065 = [19.49,71.04,72.8;23.47,69.64,56.0;26.68,68.19,56.0;28.8,66.65,56.0;28.44,67.91,44.8]; # MFR data table
myvect = [myvect;my_shem_2023_065];
rsmcvect = [rsmcvect;rsmc_shem_2023_065];
btkvect = [btkvect;btk_shem_2023_065];
btk2vect = [btk2vect;btk2_shem_2023_065];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 066 ... FREDDY before 2023-02-22-21Z

my_shem_2023_066 = [22.1,37.3,55;      21.7,32.8,30;    22.3,30.6,20;    20.6,28.9,20;    19.0,26.8,15];
rsmc_shem_2023_066 = [22.1,37.5,56.0;  21.7,33.1,22.4;  21.4,30.7,16.8;  19.0,30.0,16.8;  17.9,28.5,16.8];
btk_shem_2023_066 = [22.5,38.8,55;     22.6,34.7,45;    22.6,33.7,25;    20.9,32.8,15;    21.2,31.4,15]; # JTWC best track
btk2_shem_2023_066 = [22.43,38.62,61.6;22.51,34.65,44.8;22.62,33.23,22.4;21.52,33.17,28.0;20.88,31.13,16.8]; # MFR data table
myvect = [myvect;my_shem_2023_066];
rsmcvect = [rsmcvect;rsmc_shem_2023_066];
btkvect = [btkvect;btk_shem_2023_066];
btk2vect = [btk2vect;btk2_shem_2023_066];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 067 ... FREDDY before 2023-02-23-03Z

my_shem_2023_067 = [21.9,36.6,65;      21.8,32.8,25;    21.4,30.7,20;    19.9,28.3,15;    20.0,25.1,15];
rsmc_shem_2023_067 = [21.9,36.7,61.6;  22.2,32.9,28.0;  21.2,31.3,22.4;  18.8,29.2,16.8;  18.1,26.0,16.8];
btk_shem_2023_067 = [22.5,37.6,60;     22.7,34.0,40;    22.2,33.3,20;    21.1,32.5,15;    21.1,31.5,15]; # JTWC best track
btk2_shem_2023_067 = [22.26,37.43,61.6;22.84,34.11,33.6;22.41,33.42,22.4;21.31,32.89,28.0;20.73,31.19,16.8]; # MFR data table
myvect = [myvect;my_shem_2023_067];
rsmcvect = [rsmcvect;rsmc_shem_2023_067];
btkvect = [btkvect;btk_shem_2023_067];
btk2vect = [btk2vect;btk2_shem_2023_067];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 068 ... JUDY before 2023-02-27-21Z

my_shem_2023_068 = [17.0,168.0,70;    20.8,169.8,75;  24.1,173.5,0];
rsmc_shem_2023_068 = [17.5,168.2,72.8;21.6,170.4,72.8;25.3,174.0,0];
btk_shem_2023_068 = [17.0,168.2,85;   21.2,171.4,90;  24.8,175.7,0]; # JTWC best track
btk2_shem_2023_068 = btk_shem_2023_068; # placeholder
myvect = [myvect;my_shem_2023_068];
rsmcvect = [rsmcvect;rsmc_shem_2023_068];
btkvect = [btkvect;btk_shem_2023_068];
btk2vect = [btk2vect;btk2_shem_2023_068];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;5;5;5];

# Shem 069 ... JUDY before 2023-02-28-03Z

my_shem_2023_069 = [18.2,168.3,75;    21.9,170.9,70;  25.4,174.5,0];
rsmc_shem_2023_069 = [18.0,168.5,84.0;22.1,171.6,78.4;25.8,175.6,0];
btk_shem_2023_069 = [18.2,168.6,100;  22.4,172.4,85;  25.6,177.4,0]; # JTWC best track
btk2_shem_2023_069 = btk_shem_2023_069; # placeholder
myvect = [myvect;my_shem_2023_069];
rsmcvect = [rsmcvect;rsmc_shem_2023_069];
btkvect = [btkvect;btk_shem_2023_069];
btk2vect = [btk2vect;btk2_shem_2023_069];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;5;5;5];

# Shem 070 ... KEVIN before 2023-03-02-21Z

my_shem_2023_070 = [18.5,169.5,90;     22.9,176.0,90;   27.1,186.4,0];
rsmc_shem_2023_070 = [19.7,169.6,100.8;23.9,176.3,100.8;27.4,185.5,0];
btk_shem_2023_070 = [19.7,170.0,115;   24.6,177.3,105;  29.0,188.1,0]; # JTWC best track
btk2_shem_2023_070 = btk_shem_2023_070; # placeholder
myvect = [myvect;my_shem_2023_070];
rsmcvect = [rsmcvect;rsmc_shem_2023_070];
btkvect = [btkvect;btk_shem_2023_070];
btk2vect = [btk2vect;btk2_shem_2023_070];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;5;5;5];

# Shem 071 ... KEVIN before 2023-03-03-03Z

my_shem_2023_071 = [20.4,171.0,95;     24.3,178.2,85;  28.0,188.6,0];
rsmc_shem_2023_071 = [20.2,170.9,100.8;24.7,178.5,78.4;28.8,188.2,0];
btk_shem_2023_071 = [20.8,171.4,135;   25.8,180.2,90;  29.6,190.1,0]; # JTWC best track
btk2_shem_2023_071 = btk_shem_2023_071; # placeholder
myvect = [myvect;my_shem_2023_071];
rsmcvect = [rsmcvect;rsmc_shem_2023_071];
btkvect = [btkvect;btk_shem_2023_071];
btk2vect = [btk2vect;btk2_shem_2023_071];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;5;5;5];

# Shem 072 ... FREDDY before 2023-03-03-21Z

my_shem_2023_072 = [22.1,40.2,45;     23.0,42.4,60;    23.9,42.4,55;    21.8,41.2,55;    20.2,40.2,80];
rsmc_shem_2023_072 = [22.4,40.5,39.2; 23.1,42.3,50.4;  23.4,42.2,61.6;  22.0,41.1,56.0;  20.3,39.9,61.6];
btk_shem_2023_072 = [22.6,40.4,40;    23.4,42.7,45;    23.9,42.8,45;    22.8,41.7,95;    20.9,40.0,70]; # JTWC best track
btk2_shem_2023_072 = [22.6,40.57,50.4;23.18,43.12,56.0;23.76,42.86,61.6;22.74,41.78,95.2;20.79,40.12,67.2]; # MFR data table
myvect = [myvect;my_shem_2023_072];
rsmcvect = [rsmcvect;rsmc_shem_2023_072];
btkvect = [btkvect;btk_shem_2023_072];
btk2vect = [btk2vect;btk2_shem_2023_072];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 073 ... FREDDY before 2023-03-04-21Z

my_shem_2023_073 = [23.0,42.5,55;      23.5,42.7,70;    22.4,41.2,80;    20.7,39.8,80;    19.5,39.1,90];
rsmc_shem_2023_073 = [23.0,42.6,61.6;  23.4,42.7,61.6;  22.0,41.2,67.2;  20.5,39.8,78.4;  19.1,38.9,78.4];
btk_shem_2023_073 = [23.4,42.7,45;     23.9,42.8,45;    22.8,41.7,95;    20.9,40.0,70;    19.3,38.7,65]; # JTWC best track
btk2_shem_2023_073 = [23.18,43.12,56.0;23.76,42.86,61.6;22.74,41.78,95.2;20.79,40.12,67.2;19.41,38.84,61.6]; # MFR data table
myvect = [myvect;my_shem_2023_073];
rsmcvect = [rsmcvect;rsmc_shem_2023_073];
btkvect = [btkvect;btk_shem_2023_073];
btk2vect = [btk2vect;btk2_shem_2023_073];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 074 ... FREDDY before 2023-03-05-21Z

my_shem_2023_074 = [23.3,42.8,55;      22.1,41.7,70;    20.7,40.2,70;    19.5,38.8,80;    18.3,38.2,85];
rsmc_shem_2023_074 = [23.2,42.6,67.2;  22.2,41.8,72.8;  20.6,40.5,78.4;  19.3,39.7,95.2;  18.3,39.1,89.6];
btk_shem_2023_074 = [23.9,42.8,45;     22.8,41.7,95;    20.9,40.0,70;    19.3,38.7,65;    18.3,38.1,65]; # JTWC best track
btk2_shem_2023_074 = [23.76,42.86,61.6;22.74,41.78,95.2;20.79,40.12,67.2;19.41,38.84,61.6;18.32,38.09,72.8]; # MFR data table
myvect = [myvect;my_shem_2023_074];
rsmcvect = [rsmcvect;rsmc_shem_2023_074];
btkvect = [btkvect;btk_shem_2023_074];
btk2vect = [btk2vect;btk2_shem_2023_074];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 075 ... FREDDY before 2023-03-06-03Z

my_shem_2023_075 = [23.4,42.5,55;      21.9,41.6,75;   20.7,40.3,75;    20.0,39.2,90;   19.0,38.3,75];
rsmc_shem_2023_075 = [23.2,42.3,67.2;  21.7,41.3,72.8; 20.2,40.2,84.0;  19.1,39.4,100.8;17.9,38.5,95.2];
btk_shem_2023_075 = [23.8,42.6,65;     22.2,41.0,95;   20.5,39.6,60;    19.0,38.5,70;   18.0,37.6,75]; # JTWC best track
btk2_shem_2023_075 = [23.87,42.55,67.2;22.22,41.0,89.6;20.68,39.68,67.2;19.1,38.48,67.2;18.17,37.61,78.4]; # MFR data table
myvect = [myvect;my_shem_2023_075];
rsmcvect = [rsmcvect;rsmc_shem_2023_075];
btkvect = [btkvect;btk_shem_2023_075];
btk2vect = [btk2vect;btk2_shem_2023_075];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 076 ... FREDDY before 2023-03-06-21Z

my_shem_2023_076 = [22.5,41.7,65;      20.9,40.4,75;    20.0,39.5,85;    18.8,38.0,80;    17.7,36.1,40];
rsmc_shem_2023_076 = [22.5,41.5,67.2;  20.6,40.1,72.8;  19.3,39.2,84.0;  17.9,38.0,95.2;  16.7,35.9,39.2];
btk_shem_2023_076 = [22.8,41.7,95;     20.9,40.0,70;    19.3,38.7,65;    18.3,38.1,65;    17.8,37.1,95]; # JTWC best track
btk2_shem_2023_076 = [22.74,41.78,95.2;20.79,40.12,67.2;19.41,38.84,61.6;18.32,38.09,72.8;17.78,37.16,89.6]; # MFR data table
myvect = [myvect;my_shem_2023_076];
rsmcvect = [rsmcvect;rsmc_shem_2023_076];
btkvect = [btkvect;btk_shem_2023_076];
btk2vect = [btk2vect;btk2_shem_2023_076];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 077 ... FREDDY before 2023-03-07-21Z

my_shem_2023_077 = [20.9,40.1,85;      19.6,38.6,90;    18.4,37.6,100;   18.0,35.4,50;    18.1,33.4,25];
rsmc_shem_2023_077 = [20.9,39.8,72.8;  19.4,38.3,67.2;  18.1,37.4,72.8;  17.6,36.3,39.2;  17.5,35.3,28.0];
btk_shem_2023_077 = [20.9,40.0,70;     19.3,38.7,65;    18.3,38.1,65;    17.8,37.1,95;    17.2,35.5,40]; # JTWC best track
btk2_shem_2023_077 = [20.79,40.12,67.2;19.41,38.84,61.6;18.32,38.09,72.8;17.78,37.16,89.6;17.26,35.79,39.2]; # MFR data table
myvect = [myvect;my_shem_2023_077];
rsmcvect = [rsmcvect;rsmc_shem_2023_077];
btkvect = [btkvect;btk_shem_2023_077];
btk2vect = [btk2vect;btk2_shem_2023_077];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 078 ... FREDDY before 2023-03-08-03Z

my_shem_2023_078 = [20.7,39.3,90;      19.0,37.4,75;   17.8,36.6,75;    17.9,34.6,40;    17.7,32.7,20];
rsmc_shem_2023_078 = [20.7,39.5,67.2;  19.1,37.9,72.8; 17.6,37.1,61.6;  17.4,36.0,33.6;  17.5,35.3,28.0];
btk_shem_2023_078 = [20.5,39.6,60;     19.0,38.5,70;   18.0,37.6,75;    17.5,36.9,75;    16.9,35.1,30]; # JTWC best track
btk2_shem_2023_078 = [20.68,39.68,67.2;19.1,38.48,67.2;18.17,37.61,78.4;17.48,36.98,72.8;17.06,35.16,33.6]; # MFR data table
myvect = [myvect;my_shem_2023_078];
rsmcvect = [rsmcvect;rsmc_shem_2023_078];
btkvect = [btkvect;btk_shem_2023_078];
btk2vect = [btk2vect;btk2_shem_2023_078];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 079 ... FREDDY before 2023-03-08-21Z

my_shem_2023_079 = [19.9,38.2,65;      18.3,36.5,80;    17.2,35.1,45];
rsmc_shem_2023_079 = [19.9,38.0,61.6;  18.1,36.5,61.6;  16.9,34.7,28.0];
btk_shem_2023_079 = [19.3,38.7,65;     18.3,38.1,65;    17.8,37.1,95]; # JTWC best track
btk2_shem_2023_079 = [19.41,38.84,61.6;18.32,38.09,72.8;17.78,37.16,89.6]; # MFR data table
myvect = [myvect;my_shem_2023_079];
rsmcvect = [rsmcvect;rsmc_shem_2023_079];
btkvect = [btkvect;btk_shem_2023_079];
btk2vect = [btk2vect;btk2_shem_2023_079];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 080 ... FREDDY before 2023-03-09-21Z

my_shem_2023_080 = [17.8,37.4,90;      17.2,36.1,45;    16.7,35.1,25;    16.8,33.2,20];
rsmc_shem_2023_080 = [18.0,37.3,100.8; 17.3,36.0,33.6;  16.7,34.0,22.4;  16.8,33.0,22.4];
btk_shem_2023_080 = [18.3,38.1,65;     17.8,37.1,95;    17.2,35.5,40;    16.1,34.7,15]; # JTWC best track
btk2_shem_2023_080 = [18.32,38.09,72.8;17.78,37.16,89.6;17.26,35.79,39.2;16.43,34.0,28.0]; # MFR data table
myvect = [myvect;my_shem_2023_080];
rsmcvect = [rsmcvect;rsmc_shem_2023_080];
btkvect = [btkvect;btk_shem_2023_080];
btk2vect = [btk2vect;btk2_shem_2023_080];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 081 ... FREDDY before 2023-03-10-03Z

my_shem_2023_081 = [18.0,37.6,85;      18.0,36.5,40;  17.4,35.7,35];
rsmc_shem_2023_081 = [17.8,37.4,100.8; 17.6,36.4,28.0;17.0,35.1,22.4];
btk_shem_2023_081 = [18.0,37.6,75;     17.5,36.9,75;  16.9,35.1,30]; # JTWC best track
btk2_shem_2023_081 = [18.17,37.61,78.4;17.48,36.98,72.8;17.06,35.16,33.6]; # MFR data table
myvect = [myvect;my_shem_2023_081];
rsmcvect = [rsmcvect;rsmc_shem_2023_081];
btkvect = [btkvect;btk_shem_2023_081];
btk2vect = [btk2vect;btk2_shem_2023_081];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 082 ... HERMAN before 2023-03-29-15Z

my_shem_2023_082 = [15.5,105.3,50;    16.7,106.8,35;   17.4,106.5,30;  17.5,104.4,25;  16.0,101.2,25];
rsmc_shem_2023_082 = [15.2,105.3,56.0;16.3,106.8,33.6; 16.9,106.2,28.0;17.0,104.0,28.0;16.5,101.3,28.0];
btk_shem_2023_082 = [15.8,105.3,90;   17.8,106.7,130;  19.4,107.2,80;  19.8,105.3,30;  19.5,103.8,20]; # JTWC best track
btk2_shem_2023_082 = [15.6,105.4,78.4;17.8,106.7,127.6;19.3,106.9,84.0;19.8,105.3,33.6;19.55,103.9,22.4]; # BoM best track
myvect = [myvect;my_shem_2023_082];
rsmcvect = [rsmcvect;rsmc_shem_2023_082];
btkvect = [btkvect;btk_shem_2023_082];
btk2vect = [btk2vect;btk2_shem_2023_082];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 083 ... HERMAN before 2023-03-29-21Z

my_shem_2023_083 = [15.8,105.9,50;     17.0,107.1,35;   17.7,105.7,30;  17.9,103.2,25;  16.8,100.0,25];
rsmc_shem_2023_083 = [15.7,105.8,56.0; 16.7,106.7,33.6; 17.1,105.6,28.0;17.1,103.2,28.0;16.5,100.4,28.0];
btk_shem_2023_083 = [16.3,105.8,110;   18.2,106.9,120;  19.6,106.7,60;  19.9,104.8,25;  19.3,103.4,25]; # JTWC best track (except day 5)
btk2_shem_2023_083 = [16.3,105.8,106.4;18.3,107.0,123.2;19.5,106.8,67.2;19.9,104.9,28.0;19.36,103.5,22.4]; # BoM best track
myvect = [myvect;my_shem_2023_083];
rsmcvect = [rsmcvect;rsmc_shem_2023_083];
btkvect = [btkvect;btk_shem_2023_083];
btk2vect = [btk2vect;btk2_shem_2023_083];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 084 ... HERMAN before 2023-03-30-03Z

my_shem_2023_084 = [16.4,106.6,50;     17.5,107.3,35;   18.0,106.2,30;  18.3,103.5,25;  16.5,100.0,25];
rsmc_shem_2023_084 = [16.2,106.6,56.0; 17.0,107.2,39.2; 17.3,106.1,33.6;17.0,103.7,33.6;16.2,100.8,28.0];
btk_shem_2023_084 = [16.7,106.2,115;   18.8,106.9,115;  19.7,106.3,40;  20.0,104.4,20;  19.5,102.6,25]; # JTWC best track (except day 5)
btk2_shem_2023_084 = [16.8,106.2,123.2;18.6,107.1,117.6;19.7,106.2,50.4;20.0,104.4,28.0;19.25,102.7,22.4]; # BoM best track
myvect = [myvect;my_shem_2023_084];
rsmcvect = [rsmcvect;rsmc_shem_2023_084];
btkvect = [btkvect;btk_shem_2023_084];
btk2vect = [btk2vect;btk2_shem_2023_084];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 085 ... HERMAN before 2023-03-30-15Z

my_shem_2023_085 = [17.2,107.2,60;    18.2,107.1,40;   18.2,105.1,35;  17.8,102.3,35;   16.1,98.9,30];
rsmc_shem_2023_085 = [16.8,107.0,44.8;17.5,106.5,33.6; 17.4,104.3,33.6;17.0,101.4,33.6; 16.0,98.6,28.0];
btk_shem_2023_085 = [17.8,106.7,130;  19.4,107.2,80;   19.8,105.3,30;  19.5,103.8,20;   18.9,101.0,25]; # JTWC best track (except day 5)
btk2_shem_2023_085 = [17.8,106.7,127.6;19.3,106.9,84.0;19.8,105.3,33.6;19.55,103.9,22.4;18.9,101.0,25.0]; # BoM best track (except day 5)
myvect = [myvect;my_shem_2023_085];
rsmcvect = [rsmcvect;rsmc_shem_2023_085];
btkvect = [btkvect;btk_shem_2023_085];
btk2vect = [btk2vect;btk2_shem_2023_085];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 086 ... HERMAN before 2023-03-30-21Z

my_shem_2023_086 = [17.5,107.1,75;     18.2,106.6,40;  18.4,104.2,40;  18.0,100.9,40;   16.3,97.8,30];
rsmc_shem_2023_086 = [17.4,106.8,72.8; 17.9,105.9,33.6;17.8,103.4,33.6;17.0,100.4,33.6; 15.8,97.8,22.4];
btk_shem_2023_086 = [18.2,106.9,120;   19.6,106.7,60;  19.9,104.8,25;  19.3,103.4,25;   18.5,100.3,25]; # JTWC best track (except days 4-5)
btk2_shem_2023_086 = [18.3,107.0,123.2;19.5,106.8,67.2;19.9,104.9,28.0;19.36,103.5,22.4;18.5,100.3,25.0]; # BoM best track (except day 5)
myvect = [myvect;my_shem_2023_086];
rsmcvect = [rsmcvect;rsmc_shem_2023_086];
btkvect = [btkvect;btk_shem_2023_086];
btk2vect = [btk2vect;btk2_shem_2023_086];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 087 ... HERMAN before 2023-03-31-03Z

my_shem_2023_087 = [18.2,107.1,70;     19.0,106.5,40;  19.0,104.5,35;  18.4,102.2,30;   16.5,98.7,20];
rsmc_shem_2023_087 = [17.9,106.8,61.6; 18.3,105.5,33.6;17.9,103.0,33.6;16.7,100.1,28.0; 15.2,97.2,22.4];
btk_shem_2023_087 = [18.8,106.9,115;   19.7,106.3,40;  20.0,104.4,20;  19.5,102.6,25;   18.6,98.7,20]; # JTWC best track (except days 4-5)
btk2_shem_2023_087 = [18.6,107.1,117.6;19.7,106.2,50.4;20.0,104.4,28.0;19.25,102.7,22.4;18.6,98.7,22.4]; # BoM best track (except day 5)
myvect = [myvect;my_shem_2023_087];
rsmcvect = [rsmcvect;rsmc_shem_2023_087];
btkvect = [btkvect;btk_shem_2023_087];
btk2vect = [btk2vect;btk2_shem_2023_087];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 088 ... HERMAN before 2023-03-31-15Z

my_shem_2023_088 = [19.3,107.2,75;    20.3,106.7,40;  20.4,105.2,35;   19.2,102.9,30];
rsmc_shem_2023_088 = [19.4,107.1,84.0;20.2,106.3,39.2;20.3,104.8,33.6; 19.6,102.3,33.6];
btk_shem_2023_088 = [19.4,107.2,80;   19.8,105.3,30;  19.5,103.8,20;   18.9,101.0,25]; # JTWC best track (except day 4)
btk2_shem_2023_088 = [19.3,106.9,84.0;19.8,105.3,33.6;19.55,103.9,22.4;18.9,101.0,25.0]; # BoM best track (except day 4)
myvect = [myvect;my_shem_2023_088];
rsmcvect = [rsmcvect;rsmc_shem_2023_088];
btkvect = [btkvect;btk_shem_2023_088];
btk2vect = [btk2vect;btk2_shem_2023_088];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;4;4;4;4];

# Shem 089 ... HERMAN before 2023-04-01-21Z

my_shem_2023_089 = [20.0,105.6,45;    19.5,104.3,35;   18.2,101.7,35];
rsmc_shem_2023_089 = [20.1,105.5,33.6;19.4,103.9,33.6; 18.1,101.4,44.6];
btk_shem_2023_089 = [19.9,104.8,25;   19.3,103.4,25;   18.5,100.3,25]; # JTWC best track (day 1 only)
btk2_shem_2023_089 = [19.9,104.9,28.0;19.36,103.5,22.4;18.5,100.3,25.0]; # BoM best track (except day 3)
myvect = [myvect;my_shem_2023_089];
rsmcvect = [rsmcvect;rsmc_shem_2023_089];
btkvect = [btkvect;btk_shem_2023_089];
btk2vect = [btk2vect;btk2_shem_2023_089];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;4;4;4];

# Shem 090 ... HERMAN before 2023-04-02-03Z

my_shem_2023_090 = [20.2,105.5,35;    20.1,103.9,30;   19.0,102.1,25];
rsmc_shem_2023_090 = [19.8,105.0,33.6;18.9,103.1,33.6; 17.5,99.7,33.6];
btk_shem_2023_090 = [20.0,104.4,20;   19.5,102.6,25;   18.6,98.7,20]; # JTWC best track (day 1 only)
btk2_shem_2023_090 = [20.0,104.4,28.0;19.25,102.7,22.4;18.6,98.7,22.4]; # BoM best track (except day 3)
myvect = [myvect;my_shem_2023_090];
rsmcvect = [rsmcvect;rsmc_shem_2023_090];
btkvect = [btkvect;btk_shem_2023_090];
btk2vect = [btk2vect;btk2_shem_2023_090];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;4;4;4];

# Shem 091(a) ... 23U / 98S before 2023-04-08-21Z ... relative to BoM

my_shem_2023_091a = [12.3,125.9,45;    14.0,122.4,65;  16.0,119.5,90;   18.5,117.9,95;   22.1,120.8,65];
rsmc_shem_2023_091a = [12.1,125.9,44.8;13.7,122.6,67.2;15.4,120.2,89.6; 17.5,119.0,100.8;21.2,121.8,72.8];
btk_shem_2023_091a = [12.5,124.8,45;   13.5,122.3,40;  15.4,120.2,70;   17.1,119.1,100;  20.5,119.9,100]; # JTWC best track
btk2_shem_2023_091a = [12.3,125.0,33.6;13.7,122.4,44.8;15.5,120.15,61.6;16.95,119.2,95.2;20.4,120.0,106.4]; # BoM best track
myvect = [myvect;my_shem_2023_091a];
rsmcvect = [rsmcvect;rsmc_shem_2023_091a];
btkvect = [btkvect;btk_shem_2023_091a];
btk2vect = [btk2vect;btk2_shem_2023_091a];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 091(b) ... 23U / 98S before 2023-04-08-21Z ... relative to BMKG

my_shem_2023_091b = [12.3,125.9,45;    14.0,122.4,65;  16.0,119.5,90];
rsmc_shem_2023_091b = [12.4,125.5,44.8;14.1,122.4,50.4;15.9,119.9,61.6];
btk_shem_2023_091b = [12.5,124.8,45;   13.5,122.3,40;  15.4,120.2,70]; # JTWC best track
btk2_shem_2023_091b = [12.3,125.0,33.6;13.7,122.4,44.8;15.5,120.15,61.6]; # BoM best track
myvect = [myvect;my_shem_2023_091b];
rsmcvect = [rsmcvect;rsmc_shem_2023_091b];
btkvect = [btkvect;btk_shem_2023_091b];
btk2vect = [btk2vect;btk2_shem_2023_091b];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;8;8;8];

# Shem 092 ... 23U / 18S before 2023-04-09-03Z

my_shem_2023_092 = [12.7,124.4,55;    14.7,121.6,80;  16.5,119.8,115;  19.4,118.8,130;  23.0,122.8,40];
rsmc_shem_2023_092 = [12.2,124.9,50.4;13.9,122.0,72.8;15.4,119.9,95.2; 17.8,118.8,106.4;21.6,122.5,50.4];
btk_shem_2023_092 = [12.5,124.2,40;   13.9,121.3,45;  15.6,119.9,70;   17.8,118.9,110;  21.4,121.3,75]; # JTWC best track
btk2_shem_2023_092 = [12.5,123.8,33.6;14.1,122.0,44.8;15.7,119.85,67.2;17.7,118.9,100.8;21.3,121.3,72.8]; # BoM best track
myvect = [myvect;my_shem_2023_092];
rsmcvect = [rsmcvect;rsmc_shem_2023_092];
btkvect = [btkvect;btk_shem_2023_092];
btk2vect = [btk2vect;btk2_shem_2023_092];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 093 ... 23U / 18S before 2023-04-09-15Z

my_shem_2023_093 = [13.7,122.3,80;    15.4,120.1,105; 17.1,118.7,125;   20.7,120.1,85;   26.2,128.3,30];
rsmc_shem_2023_093 = [13.6,122.7,61.6;15.0,120.9,84.0;16.7,119.6,100.8; 20.3,120.8,95.2; 25.5,129.1,39.2];
btk_shem_2023_093 = [13.1,123.2,40;   15.1,120.5,70;  16.0,119.7,85;    19.6,119.1,135;  22.2,125.4,45]; # JTWC best track
btk2_shem_2023_093 = [13.3,122.8,39.2;15.2,120.5,61.6;16.65,119.66,89.6;19.4,119.1,134.4;23.0,126.8,33.6]; # BoM best track
myvect = [myvect;my_shem_2023_093];
rsmcvect = [rsmcvect;rsmc_shem_2023_093];
btkvect = [btkvect;btk_shem_2023_093];
btk2vect = [btk2vect;btk2_shem_2023_093];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 094 ... 23U / 18S before 2023-04-09-21Z

my_shem_2023_094 = [14.1,121.5,60;    15.6,119.7,105;  17.7,118.5,125;  21.3,121.1,75;   26.4,131.1,35];
rsmc_shem_2023_094 = [14.0,121.9,50.4;15.4,120.3,78.4; 17.5,119.4,106.4;21.5,122.0,78.4; 26.7,131.9,33.6];
btk_shem_2023_094 = [13.5,122.3,40;   15.4,120.2,70;   17.1,119.1,100;  20.5,119.9,100;  22.7,128.3,35]; # JTWC best track
btk2_shem_2023_094 = [13.7,122.4,44.8;15.5,120.15,61.6;16.95,119.2,95.2;20.4,120.0,106.4;22.7,130.7,28.0]; # BoM best track
myvect = [myvect;my_shem_2023_094];
rsmcvect = [rsmcvect;rsmc_shem_2023_094];
btkvect = [btkvect;btk_shem_2023_094];
btk2vect = [btk2vect;btk2_shem_2023_094];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 095 ... 23U / 18S before 2023-04-10-21Z

my_shem_2023_095 = [15.3,120.7,80;     17.6,119.7,125;  20.7,122.1,80;   25.0,132.7,30];
rsmc_shem_2023_095 = [15.3,120.8,67.2; 17.1,119.3,100.8;20.1,121.0,100.8;24.0,130.4,33.6];
btk_shem_2023_095 = [15.4,120.2,70;    17.1,119.1,100;  20.5,119.9,100;  22.7,128.3,35]; # JTWC best track
btk2_shem_2023_095 = [15.5,120.15,61.6;16.95,119.2,95.2;20.4,120.0,106.4;22.7,130.7,28.0]; # BoM best track
myvect = [myvect;my_shem_2023_095];
rsmcvect = [rsmcvect;rsmc_shem_2023_095];
btkvect = [btkvect;btk_shem_2023_095];
btk2vect = [btk2vect;btk2_shem_2023_095];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;4;4;4;4];

# Wpac 001 ... TD / 90W before 2023-04-11-21Z

my_wpac_2023_001 = [14.4,122.3,35;    15.0,119.9,0];
rsmc_wpac_2023_001 = [14.3,122.3,39.2;15.2,119.2,0];
btk_wpac_2023_001 = [13.8,123.4,20;   14.5,121.6,0]; # operationally from U.S. sources (nothing in JTWC btk)
btk2_wpac_2023_001 = btk_wpac_2023_001; # placeholder (no JMA btk)
myvect = [myvect;my_wpac_2023_001];
rsmcvect = [rsmcvect;rsmc_wpac_2023_001];
btkvect = [btkvect;btk_wpac_2023_001];
btk2vect = [btk2vect;btk2_wpac_2023_001];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Shem 096 ... ILSA before 2023-04-11-21Z

my_shem_2023_096 = [17.1,119.1,105;    19.7,120.4,95;   22.2,127.9,35];
rsmc_shem_2023_096 = [17.1,119.3,95.2; 19.7,120.2,112.0;22.2,127.9,44.8];
btk_shem_2023_096 = [17.1,119.1,100;   20.5,119.9,100;  22.7,128.3,35]; # JTWC best track
btk2_shem_2023_096 = [16.95,119.2,95.2;20.4,120.0,106.4;22.7,130.7,28.0]; # BoM best track
myvect = [myvect;my_shem_2023_096];
rsmcvect = [rsmcvect;rsmc_shem_2023_096];
btkvect = [btkvect;btk_shem_2023_096];
btk2vect = [btk2vect;btk2_shem_2023_096];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;4;4;4];

# Shem 097 ... ILSA before 2023-04-12-03Z

my_shem_2023_097 = [17.4,118.8,110;    20.3,121.7,85;  22.6,131.4,35];
rsmc_shem_2023_097 = [17.4,119.0,106.4;20.2,121.4,84.0;22.4,130.8,39.2];
btk_shem_2023_097 = [17.8,118.9,110;   21.4,121.3,75;  23.0,130.5,30]; # JTWC best track
btk2_shem_2023_097 = [17.7,118.9,100.8;21.3,121.3,72.8;23.0,130.5,28.0]; # BoM best track (except day 3)
myvect = [myvect;my_shem_2023_097];
rsmcvect = [rsmcvect;rsmc_shem_2023_097];
btkvect = [btkvect;btk_shem_2023_097];
btk2vect = [btk2vect;btk2_shem_2023_097];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;4;4;4];

# Wpac 002 ... TD / 90W before 2023-04-12-03Z

my_wpac_2023_002 = [14.4,122.2,40];
rsmc_wpac_2023_002 = [14.4,121.9,39.2];
btk_wpac_2023_002 = [14.3,122.2,20]; # operationally from U.S. sources (nothing in JTWC btk)
btk2_wpac_2023_002 = btk_wpac_2023_002; # placeholder (no JMA btk)
myvect = [myvect;my_wpac_2023_002];
rsmcvect = [rsmcvect;rsmc_wpac_2023_002];
btkvect = [btkvect;btk_wpac_2023_002];
btk2vect = [btk2vect;btk2_wpac_2023_002];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;1];

# Shem 098 ... ILSA before 2023-04-12-15Z

my_shem_2023_098 = [19.0,119.4,115;    21.8,125.2,45];
rsmc_shem_2023_098 = [19.2,119.3,112.0;21.9,125.0,50.4];
btk_shem_2023_098 = [19.6,119.1,135;   22.2,125.4,45]; # JTWC best track
btk2_shem_2023_098 = [19.4,119.1,134.4;23.0,126.8,33.6]; # BoM best track
myvect = [myvect;my_shem_2023_098];
rsmcvect = [rsmcvect;rsmc_shem_2023_098];
btkvect = [btkvect;btk_shem_2023_098];
btk2vect = [btk2vect;btk2_shem_2023_098];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;4;4];

# Wpac 003 ... TD / 01W before 2023-04-19-15Z

my_wpac_2023_003 = [9.4,156.4,35;    10.7,153.5,40;  11.4,150.1,30;  11.7,146.1,0];
rsmc_wpac_2023_003 = [9.4,156.6,39.2;10.4,154.3,50.4;11.0,151.7,39.2;11.6,148.4,0];
btk_wpac_2023_003 = [9.3,156.6,40;   10.2,155.7,40;  10.3,153.0,15;  10.5,152.3,0]; # JTWC best track
btk2_wpac_2023_003 = [9.6,156.6,39.2;10.4,155.3,44.8;10.3,153.0,16.8;10.5,152.3,0]; # JMA best track (except days 3-4 JTWC btk)
myvect = [myvect;my_wpac_2023_003];
rsmcvect = [rsmcvect;rsmc_wpac_2023_003];
btkvect = [btkvect;btk_wpac_2023_003];
btk2vect = [btk2vect;btk2_wpac_2023_003];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Wpac 004 ... TD / 01W before 2023-04-19-21Z

my_wpac_2023_004 = [8.9,155.7,35;    10.5,154.4,30;  11.3,152.1,0];
rsmc_wpac_2023_004 = [9.4,155.9,44.8;10.7,153.9,39.2;11.2,151.1,0];
btk_wpac_2023_004 = [9.7,156.4,45;   10.2,154.8,30;  10.7,152.7,0]; # JTWC best track
btk2_wpac_2023_004 = [9.9,156.3,44.8;10.4,154.5,39.2;10.7,152.7,0]; # JMA best track (except day 3 JTWC btk)
myvect = [myvect;my_wpac_2023_004];
rsmcvect = [rsmcvect;rsmc_wpac_2023_004];
btkvect = [btkvect;btk_wpac_2023_004];
btk2vect = [btk2vect;btk2_wpac_2023_004];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Wpac 005 ... SANVU before 2023-04-20-15Z

my_wpac_2023_005 = [11.0,154.9,35;    12.4,152.9,25;  13.1,150.6,0];
rsmc_wpac_2023_005 = [10.5,154.5,39.2;11.6,152.6,39.2;12.2,149.9,0];
btk_wpac_2023_005 = [10.2,155.7,45;   10.3,153.0,15;  10.5,152.3,0]; # JTWC best track
btk2_wpac_2023_005 = [10.4,155.3,44.8;10.3,153.0,16.8;10.5,152.3,0]; # JMA best track (except days 2-3 JTWC btk)
myvect = [myvect;my_wpac_2023_005];
rsmcvect = [rsmcvect;rsmc_wpac_2023_005];
btkvect = [btkvect;btk_wpac_2023_005];
btk2vect = [btk2vect;btk2_wpac_2023_005];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Wpac 006 ... SANVU before 2023-04-20-21Z

my_wpac_2023_006 = [10.9,154.6,40;    12.2,153.0,0];
rsmc_wpac_2023_006 = [10.8,154.4,39.2;11.9,152.1,0];
btk_wpac_2023_006 = [10.2,154.8,30;   10.7,152.7,0]; # JTWC best track
btk2_wpac_2023_006 = [10.4,154.5,39.2;10.7,152.7,0]; # JMA best track (except day 2 JTWC btk)
myvect = [myvect;my_wpac_2023_006];
rsmcvect = [rsmcvect;rsmc_wpac_2023_006];
btkvect = [btkvect;btk_wpac_2023_006];
btk2vect = [btk2vect;btk2_wpac_2023_006];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Wpac 007 ... SANVU before 2023-04-21-15Z

my_wpac_2023_007 = [11.1,154.2,40;    11.8,152.0,0];
rsmc_wpac_2023_007 = [11.3,154.1,39.2;11.6,151.9,0];
btk_wpac_2023_007 = [10.3,153.0,15;   10.5,152.3,0]; # JTWC best track
btk2_wpac_2023_007 = btk_wpac_2023_007; # placeholder (nothing in JMA btk)
myvect = [myvect;my_wpac_2023_007];
rsmcvect = [rsmcvect;rsmc_wpac_2023_007];
btkvect = [btkvect;btk_wpac_2023_007];
btk2vect = [btk2vect;btk2_wpac_2023_007];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Wpac 008 ... SANVU before 2023-04-21-21Z

my_wpac_2023_008 = [11.2,153.7,30;    11.5,151.8,0];
rsmc_wpac_2023_008 = [11.5,153.6,39.2;11.6,151.1,0];
btk_wpac_2023_008 = [10.7,152.7,15;   10.5,152.2,0]; # JTWC best track
btk2_wpac_2023_008 = btk_wpac_2023_008; # placeholder (nothing in JMA btk)
myvect = [myvect;my_wpac_2023_008];
rsmcvect = [rsmcvect;rsmc_wpac_2023_008];
btkvect = [btkvect;btk_wpac_2023_008];
btk2vect = [btk2vect;btk2_wpac_2023_008];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Nio 01 ... BOB 02 / 91B before 2023-05-09-21Z

my_nio_2023_01 = [10.0,88.2,50;    12.6,88.0,70;  14.6,89.3,80;  17.9,92.7,65;   22.0,95.0,25];
rsmc_nio_2023_01 = [10.9,87.5,47.7;13.1,87.4,68.9;15.3,88.6,84.8;18.7,91.3,79.5; 22.8,94.0,31.8];
btk_nio_2023_01 = [10.7,88.4,30;   12.8,88.1,60;  14.9,88.9,105; 17.9,91.3,140;  23.8,95.8,45]; # JTWC best track
btk2_nio_2023_01 = [10.8,88.2,31.8;12.7,88.1,53.0;15.1,88.8,95.4;17.9,91.0,121.9;22.7,94.6,53.0]; # IMD prelim report
myvect = [myvect;my_nio_2023_01];
rsmcvect = [rsmcvect;rsmc_nio_2023_01];
btkvect = [btkvect;btk_nio_2023_01];
btk2vect = [btk2vect;btk2_nio_2023_01];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Nio 02 ... BOB 02 / 91B before 2023-05-10-03Z

my_nio_2023_02 = [10.9,87.9,50;    13.2,87.8,75;  16.0,89.6,90;   19.1,92.2,70];
rsmc_nio_2023_02 = [11.0,87.6,53.0;13.1,87.6,68.9;15.8,89.3,84.8; 20.0,92.2,68.9];
btk_nio_2023_02 = [11.1,88.2,35;   13.4,88.2,65;  15.3,89.2,110;  18.7,91.8,145]; # JTWC best track
btk2_nio_2023_02 = [11.2,88.1,37.1;13.2,88.1,68.9;15.4,89.1,106.0;18.7,91.5,121.9]; # IMD prelim report
myvect = [myvect;my_nio_2023_02];
rsmcvect = [rsmcvect;rsmc_nio_2023_02];
btkvect = [btkvect;btk_nio_2023_02];
btk2vect = [btk2vect;btk2_nio_2023_02];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Nio 03 ... BOB 02 / 91B before 2023-05-10-15Z

my_nio_2023_03 = [12.4,87.9,50;    14.7,88.2,75;  18.0,90.9,80;   22.6,94.2,40];
rsmc_nio_2023_03 = [12.2,87.8,53.0;14.4,88.4,74.2;17.5,90.5,79.5; 22.1,94.5,31.8];
btk_nio_2023_03 = [12.0,88.1,55;   14.5,88.5,95;  16.9,90.7,135;  21.0,93.3,100]; # JTWC best track
btk2_nio_2023_03 = [12.2,88.0,53.0;14.6,88.6,84.8;16.9,90.8,116.6;21.1,93.3,79.5]; # IMD prelim report
myvect = [myvect;my_nio_2023_03];
rsmcvect = [rsmcvect;rsmc_nio_2023_03];
btkvect = [btkvect;btk_nio_2023_03];
btk2vect = [btk2vect;btk2_nio_2023_03];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Nio 04 ... BOB 02 / 91B before 2023-05-10-21Z

my_nio_2023_04 = [12.9,87.8,55;    15.3,88.9,80;  18.3,91.4,75;   23.8,96.5,20];
rsmc_nio_2023_04 = [12.9,87.9,53.0;15.1,88.8,79.5;18.4,91.3,79.5; 23.5,95.7,31.8];
btk_nio_2023_04 = [12.8,88.1,60;   14.9,88.9,105; 17.9,91.3,140;  23.8,95.8,45]; # JTWC best track
btk2_nio_2023_04 = [12.7,88.1,53.0;15.1,88.8,95.4;17.9,91.0,121.9;22.7,94.6,53.0]; # IMD prelim report
myvect = [myvect;my_nio_2023_04];
rsmcvect = [rsmcvect;rsmc_nio_2023_04];
btkvect = [btkvect;btk_nio_2023_04];
btk2vect = [btk2vect;btk2_nio_2023_04];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Nio 05 ... BOB 02 / 91B before 2023-05-11-03Z

my_nio_2023_05 = [13.0,88.2,60;    15.6,89.4,80;   19.1,92.5,75];
rsmc_nio_2023_05 = [13.2,88.0,58.3;15.9,89.4,79.5; 19.4,92.2,74.2];
btk_nio_2023_05 = [13.4,88.2,65;   15.3,89.2,110;  18.7,91.8,145]; # JTWC best track
btk2_nio_2023_05 = [13.2,88.1,68.9;15.4,89.1,106.0;18.7,91.5,121.9]; # IMD prelim report
myvect = [myvect;my_nio_2023_05];
rsmcvect = [rsmcvect;rsmc_nio_2023_05];
btkvect = [btkvect;btk_nio_2023_05];
btk2vect = [btk2vect;btk2_nio_2023_05];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Nio 06 ... MOCHA before 2023-05-11-21Z

my_nio_2023_06 = [15.1,89.1,85;    18.3,91.4,95;   22.3,94.3,60];
rsmc_nio_2023_06 = [15.2,89.0,84.8;18.3,91.2,90.1; 22.4,94.6,42.4];
btk_nio_2023_06 = [14.9,88.9,105;  17.9,91.3,140;  23.8,95.8,45]; # JTWC best track
btk2_nio_2023_06 = [15.1,88.8,95.4;17.9,91.0,121.9;22.7,94.6,53.0]; # IMD prelim report
myvect = [myvect;my_nio_2023_06];
rsmcvect = [rsmcvect;rsmc_nio_2023_06];
btkvect = [btkvect;btk_nio_2023_06];
btk2vect = [btk2vect;btk2_nio_2023_06];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Nio 07 ... MOCHA before 2023-05-12-03Z

my_nio_2023_07 = [15.7,89.0,85;     18.8,91.3,105;   24.3,94.6,45];
rsmc_nio_2023_07 = [15.9,89.4,90.1; 19.1,91.9,90.1;  23.5,95.5,26.5];
btk_nio_2023_07 = [15.3,89.2,110;   18.7,91.9,145;   26.2,97.8,20]; # JTWC best track
btk2_nio_2023_07 = [15.4,89.1,106.0;18.7,91.5,121.9; 23.9,97.8,26.5]; # IMD prelim report
myvect = [myvect;my_nio_2023_07];
rsmcvect = [rsmcvect;rsmc_nio_2023_07];
btkvect = [btkvect;btk_nio_2023_07];
btk2vect = [btk2vect;btk2_nio_2023_07];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Nio 08 ... MOCHA before 2023-05-12-21Z

my_nio_2023_08 = [18.0,90.8,120;    22.5,93.9,65];
rsmc_nio_2023_08 = [18.3,91.2,106.0;22.3,94.5,53.0];
btk_nio_2023_08 = [17.9,91.3,140;   23.8,95.8,45]; # JTWC best track
btk2_nio_2023_08 = [17.9,91.0,121.9;22.7,94.6,53.0]; # IMD prelim report
myvect = [myvect;my_nio_2023_08];
rsmcvect = [rsmcvect;rsmc_nio_2023_08];
btkvect = [btkvect;btk_nio_2023_08];
btk2vect = [btk2vect;btk2_nio_2023_08];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Shem 099 ... 10 / 92S before 2023-05-13-21Z

my_shem_2023_099 = [5.2,80.3,40;      6.2,76.7,65;    8.6,74.1,85;     10.1,73.0,85;  10.8,71.9,80];
rsmc_shem_2023_099 = [5.2,80.4,44.8;  6.2,77.0,61.6;  8.4,74.6,84.0;   9.7,73.6,89.6; 10.2,72.6,84.0];
btk_shem_2023_099 = [4.9,80.4,60;     5.8,76.8,90;    7.8,74.5,105;    8.9,73.0,65;   9.2,71.0,45]; # JTWC best track
btk2_shem_2023_099 = [4.94,80.31,56.0;5.71,76.61,78.4;7.84,74.48,106.4;8.79,73.0,72.8;9.3,70.96,50.4]; # MFR data table
myvect = [myvect;my_shem_2023_099];
rsmcvect = [rsmcvect;rsmc_shem_2023_099];
btkvect = [btkvect;btk_shem_2023_099];
btk2vect = [btk2vect;btk2_shem_2023_099];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 100 ... FABIEN before 2023-05-14-21Z

my_shem_2023_100 = [6.0,76.6,75;      8.2,74.5,95;     9.4,73.4,105;  10.5,72.5,95;   10.7,70.9,85];
rsmc_shem_2023_100 = [5.9,76.8,61.6;  8.0,74.8,84.0;   9.7,73.5,100.8;10.6,72.3,100.8;11.3,70.4,89.6];
btk_shem_2023_100 = [5.8,76.8,90;     7.8,74.5,105;    8.9,73.0,65;   9.2,71.0,45;    9.9,69.6,45]; # JTWC best track
btk2_shem_2023_100 = [5.71,76.61,78.4;7.84,74.48,106.4;8.79,73.0,72.8;9.3,70.96,50.4; 9.88,69.4,61.6]; # MFR data table
myvect = [myvect;my_shem_2023_100];
rsmcvect = [rsmcvect;rsmc_shem_2023_100];
btkvect = [btkvect;btk_shem_2023_100];
btk2vect = [btk2vect;btk2_shem_2023_100];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 101 ... FABIEN before 2023-05-15-03Z

my_shem_2023_101 = [6.4,76.2,95;      8.5,74.5,105;   9.9,73.2,105;   10.4,72.1,100;  10.6,71.0,95];
rsmc_shem_2023_101 = [6.3,76.6,89.6;  8.2,74.7,106.4; 9.3,73.5,106.4; 9.7,72.6,95.2;  10.0,71.9,84.0];
btk_shem_2023_101 = [6.2,76.1,90;     8.3,74.1,100;   8.9,72.5,55;    9.5,70.4,40;    9.9,69.4,50]; # JTWC best track
btk2_shem_2023_101 = [6.18,75.98,84.0;8.28,74.1,100.8;8.83,72.45,61.6;9.46,70.33,50.4;10.05,69.38,61.6]; # MFR data table
myvect = [myvect;my_shem_2023_101];
rsmcvect = [rsmcvect;rsmc_shem_2023_101];
btkvect = [btkvect;btk_shem_2023_101];
btk2vect = [btk2vect;btk2_shem_2023_101];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 102 ... FABIEN before 2023-05-15-21Z

my_shem_2023_102 = [7.8,74.2,105;      9.4,72.7,95;    9.6,70.7,90;    9.7,68.8,85;   9.4,69.0,70];
rsmc_shem_2023_102 = [8.2,74.6,89.6;   10.1,72.8,106.4;10.4,70.5,100.8;9.8,69.0,89.6; 9.6,68.9,61.6];
btk_shem_2023_102 = [7.8,74.5,105;     8.9,73.0,65;    9.2,71.0,45;    9.9,69.6,45;   10.2,69.0,40]; # JTWC best track
btk2_shem_2023_102 = [7.84,74.48,106.4;8.79,73.0,72.8; 9.30,70.96,50.4;9.88,69.4,61.6;10.6,69.06,44.8]; # MFR data table
myvect = [myvect;my_shem_2023_102];
rsmcvect = [rsmcvect;rsmc_shem_2023_102];
btkvect = [btkvect;btk_shem_2023_102];
btk2vect = [btk2vect;btk2_shem_2023_102];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 103 ... FABIEN before 2023-05-16-03Z

my_shem_2023_103 = [8.6,73.5,105;     9.6,71.7,105;   9.5,69.4,100;   8.8,68.1,85;     8.7,68.5,70];
rsmc_shem_2023_103 = [8.9,73.9,95.2;  10.1,72.2,106.4;10.2,70.1,100.8;9.6,69.2,84.0;   9.5,69.4,44.8];
btk_shem_2023_103 = [8.3,74.1,100;    8.9,72.5,55;    9.5,70.4,40;    9.9,69.4,50;     10.3,68.9,35]; # JTWC best track
btk2_shem_2023_103 = [8.28,74.1,100.8;8.83,72.45,61.6;9.46,70.33,50.4;10.05,69.38,61.6;10.56,68.98,44.8]; # MFR data table
myvect = [myvect;my_shem_2023_103];
rsmcvect = [rsmcvect;rsmc_shem_2023_103];
btkvect = [btkvect;btk_shem_2023_103];
btk2vect = [btk2vect;btk2_shem_2023_103];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 104 ... FABIEN before 2023-05-16-15Z

my_shem_2023_104 = [9.2,73.1,100;    9.6,71.1,90;    9.2,69.4,85;   8.8,69.0,75;     9.0,69.4,70];
rsmc_shem_2023_104 = [9.3,73.1,100.8;9.7,71.1,89.6;  9.4,69.2,78.4; 9.1,69.1,67.2;   9.2,69.4,44.8];
btk_shem_2023_104 = [8.8,73.4,80;    9.0,71.6,45;    9.8,69.8,40;   10.1,69.2,50;    10.8,68.8,30]; # JTWC best track
btk2_shem_2023_104 = [8.8,73.32,78.4;9.01,71.32,50.4;9.65,69.8,61.6;10.49,69.39,50.4;10.79,68.9,33.6]; # MFR data table
myvect = [myvect;my_shem_2023_104];
rsmcvect = [rsmcvect;rsmc_shem_2023_104];
btkvect = [btkvect;btk_shem_2023_104];
btk2vect = [btk2vect;btk2_shem_2023_104];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 105 ... FABIEN before 2023-05-16-21Z

my_shem_2023_105 = [9.6,72.3,100;    9.5,70.1,95;   9.2,68.6,90;   9.2,68.1,80;    9.5,68.5,65];
rsmc_shem_2023_105 = [9.6,72.5,100.8;9.7,70.4,89.6; 9.4,69.1,78.4; 9.2,69.2,61.6;  9.4,69.5,44.8];
btk_shem_2023_105 = [8.9,73.0,65;    9.2,71.0,45;   9.9,69.6,45;   10.2,69.0,40;   10.9,68.8,25]; # JTWC best track
btk2_shem_2023_105 = [8.79,73.0,72.8;9.3,70.96,50.4;9.88,69.4,61.6;10.6,69.06,44.8;10.82,68.75,28.0]; # MFR data table
myvect = [myvect;my_shem_2023_105];
rsmcvect = [rsmcvect;rsmc_shem_2023_105];
btkvect = [btkvect;btk_shem_2023_105];
btk2vect = [btk2vect;btk2_shem_2023_105];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 106 ... FABIEN before 2023-05-17-03Z

my_shem_2023_106 = [9.4,72.0,90;      9.6,69.7,90;    9.4,68.5,80;     9.3,68.8,60;     10.3,69.4,50];
rsmc_shem_2023_106 = [9.6,72.1,95.2;  9.6,69.9,84.0;  9.5,68.9,72.8;   9.7,69.6,56.0;   10.6,69.7,39.2];
btk_shem_2023_106 = [8.9,72.5,55;     9.5,70.4,40;    9.9,69.4,50;     10.3,68.9,35;    11.7,69.0,30]; # JTWC best track
btk2_shem_2023_106 = [8.83,72.45,61.6;9.46,70.33,50.4;10.05,69.38,61.6;10.56,68.98,44.8;11.56,69.13,28.0]; # MFR data table
myvect = [myvect;my_shem_2023_106];
rsmcvect = [rsmcvect;rsmc_shem_2023_106];
btkvect = [btkvect;btk_shem_2023_106];
btk2vect = [btk2vect;btk2_shem_2023_106];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 107 ... FABIEN before 2023-05-17-09Z

my_shem_2023_107 = [9.7,72.1,80;     9.7,69.8,75;    9.7,70.0,65;     10.1,70.4,50;    10.9,70.9,35];
rsmc_shem_2023_107 = [9.8,71.9,84.0; 9.8,69.9,78.4;  9.7,69.8,56.0;   10.1,70.4,39.2;  11.1,70.7,33.6];
btk_shem_2023_107 = [8.9,71.0,50;    9.7,70.0,40;    10.0,69.3,50;    10.5,68.8,30;    12.6,69.3,30]; # JTWC best track
btk2_shem_2023_107 = [8.8,71.88,50.4;9.55,69.94,56.0;10.11,69.52,56.0;10.63,68.99,39.2;12.52,69.29,33.6]; # MFR data table
myvect = [myvect;my_shem_2023_107];
rsmcvect = [rsmcvect;rsmc_shem_2023_107];
btkvect = [btkvect;btk_shem_2023_107];
btk2vect = [btk2vect;btk2_shem_2023_107];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 108 ... FABIEN before 2023-05-17-15Z

my_shem_2023_108 = [9.6,71.2,70;      9.3,69.0,65;   9.3,68.5,55;     9.7,68.4,55;    10.4,68.5,45];
rsmc_shem_2023_108 = [9.7,71.0,61.6;  9.8,69.3,61.6; 10.2,69.6,50.4;  11.3,70.4,39.2; 12.4,70.0,33.6];
btk_shem_2023_108 = [9.0,71.6,45;     9.8,69.8,40;   10.1,69.2,50;    10.8,68.8,30;   12.9,69.4,30]; # JTWC best track
btk2_shem_2023_108 = [9.01,71.32,50.4;9.65,69.8,61.6;10.49,69.39,50.4;10.79,68.9,33.6;13.01,69.35,33.6]; # MFR data table
myvect = [myvect;my_shem_2023_108];
rsmcvect = [rsmcvect;rsmc_shem_2023_108];
btkvect = [btkvect;btk_shem_2023_108];
btk2vect = [btk2vect;btk2_shem_2023_108];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 109 ... FABIEN before 2023-05-17-21Z

my_shem_2023_109 = [9.4,70.9,65;     9.3,69.2,60;   9.5,69.9,50;    10.1,69.9,45;    11.2,69.3,45];
rsmc_shem_2023_109 = [9.7,70.5,61.6; 9.8,69.1,61.6; 10.5,69.7,44.8; 11.9,69.7,39.2;  13.2,68.7,33.6];
btk_shem_2023_109 = [9.2,71.0,45;    9.9,69.6,45;   10.2,69.0,40;   10.9,68.8,25;    13.2,69.6,30]; # JTWC best track
btk2_shem_2023_109 = [9.3,70.96,50.4;9.88,69.4,61.6;10.6,69.06,44.8;10.82,68.75,28.0;13.23,69.57,28.0]; # MFR data table
myvect = [myvect;my_shem_2023_109];
rsmcvect = [rsmcvect;rsmc_shem_2023_109];
btkvect = [btkvect;btk_shem_2023_109];
btk2vect = [btk2vect;btk2_shem_2023_109];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 110 ... FABIEN before 2023-05-18-21Z

my_shem_2023_110 = [9.8,69.2,45;     10.3,68.9,45;   11.2,69.8,55;    11.4,68.9,45;    12.0,68.0,45];
rsmc_shem_2023_110 = [9.7,69.2,56.0; 10.5,69.5,56.0; 11.6,69.9,50.4;  12.5,69.5,39.2;  12.9,68.8,33.6];
btk_shem_2023_110 = [9.9,69.6,45;    10.2,69.0,40;   10.9,68.8,25;    13.2,69.6,30;    15.7,70.4,30]; # JTWC best track
btk2_shem_2023_110 = [9.88,69.4,61.6;10.6,69.06,44.8;10.82,68.75,28.0;13.23,69.57,28.0;15.61,70.38,28.0]; # MFR data table
myvect = [myvect;my_shem_2023_110];
rsmcvect = [rsmcvect;rsmc_shem_2023_110];
btkvect = [btkvect;btk_shem_2023_110];
btk2vect = [btk2vect;btk2_shem_2023_110];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 111 ... FABIEN before 2023-05-19-03Z

my_shem_2023_111 = [10.1,69.4,40;      10.4,69.7,50;    11.4,69.9,50;    12.5,69.3,30;    12.9,68.6,30];
rsmc_shem_2023_111 = [10.0,69.3,44.8;  10.7,69.7,50.4;  11.7,69.9,39.2;  12.7,69.5,33.6;  12.9,68.5,28.0];
btk_shem_2023_111 = [9.9,69.4,50;      10.3,68.9,35;    11.7,69.0,30;    13.8,70.1,30;    16.5,69.9,30]; # JTWC best track
btk2_shem_2023_111 = [10.05,69.38,61.6;10.56,68.98,44.8;11.56,69.13,28.0;13.79,70.15,33.6;16.33,70.0,28.0]; # MFR data table
myvect = [myvect;my_shem_2023_111];
rsmcvect = [rsmcvect;rsmc_shem_2023_111];
btkvect = [btkvect;btk_shem_2023_111];
btk2vect = [btk2vect;btk2_shem_2023_111];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 112 ... FABIEN before 2023-05-19-21Z

my_shem_2023_112 = [11.1,69.2,45;    12.1,68.9,55;     13.2,69.0,45;    13.5,68.2,35;    13.7,66.9,30];
rsmc_shem_2023_112 = [10.8,69.2,50.4;11.9,69.1,44.8;   13.4,69.1,33.6;  13.9,68.7,28.0;  14.6,67.2,28.0];
btk_shem_2023_112 = [10.2,69.0,40;   10.9,68.8,25;     13.2,69.6,30;    15.7,70.4,30;    19.2,68.7,30]; # JTWC best track
btk2_shem_2023_112 = [10.6,69.06,44.8;10.82,68.75,28.0;10.82,68.75,28.0;15.61,70.38,28.0;19.5,68.22,28.0]; # MFR data table
myvect = [myvect;my_shem_2023_112];
rsmcvect = [rsmcvect;rsmc_shem_2023_112];
btkvect = [btkvect;btk_shem_2023_112];
btk2vect = [btk2vect;btk2_shem_2023_112];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 113 ... FABIEN before 2023-05-20-03Z

my_shem_2023_113 = [11.2,69.4,50;      12.4,68.7,60;    13.5,68.6,50;    13.9,67.0,30;   15.4,65.4,30];
rsmc_shem_2023_113 = [11.2,69.6,50.4;  12.5,69.4,44.8;  13.5,69.4,33.6;  14.0,68.2,28.0; 14.9,66.0,28.0];
btk_shem_2023_113 = [10.3,68.9,35;     11.7,69.0,30;    13.8,70.1,30;    16.5,69.9,30;   20.3,68.5,30]; # JTWC best track
btk2_shem_2023_113 = [10.56,69.38,61.6;11.56,69.13,28.0;13.79,70.15,33.6;16.33,70.0,28.0;20.34,68.33,33.6]; # MFR data table
myvect = [myvect;my_shem_2023_113];
rsmcvect = [rsmcvect;rsmc_shem_2023_113];
btkvect = [btkvect;btk_shem_2023_113];
btk2vect = [btk2vect;btk2_shem_2023_113];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 009 ... TD / 02W before 2023-05-20-03Z

my_wpac_2023_009 = [6.7,148.6,35;    9.1,146.9,50;  12.2,146.4,65;   14.9,145.1,95;   16.2,143.0,100];
rsmc_wpac_2023_009 = [7.0,148.4,44.8;9.3,146.5,61.6;12.1,145.5,78.4; 14.7,144.4,89.6; 16.0,142.0,95.2];
btk_wpac_2023_009 = [7.0,148.9,50;   9.0,147.4,85;  11.2,146.8,115;  13.0,145.6,105;  14.2,143.5,140]; # JTWC best track
btk2_wpac_2023_009 = [7.0,148.7,56.0;8.6,147.3,72.8;11.2,146.9,106.4;13.1,145.5,106.4;14.2,143.5,112.0]; # JMA best track
myvect = [myvect;my_wpac_2023_009];
rsmcvect = [rsmcvect;rsmc_wpac_2023_009];
btkvect = [btkvect;btk_wpac_2023_009];
btk2vect = [btk2vect;btk2_wpac_2023_009];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 010 ... MAWAR before 2023-05-21-21Z

my_wpac_2023_010 = [10.8,146.8,90;     13.0,145.9,100;  14.3,143.4,115;  14.7,139.6,120;  15.6,135.4,125];
rsmc_wpac_2023_010 = [11.0,147.0,84.0; 13.1,145.9,95.2; 14.4,143.3,106.4;15.2,139.4,112.0;16.2,134.6,112.0];
btk_wpac_2023_010 = [10.5,146.8,100;   12.7,145.7,120;  14.1,144.2,125;  14.9,140.4,155;  16.0,134.9,140]; # JTWC best track
btk2_wpac_2023_010 = [10.5,146.9,106.4;12.5,145.7,117.6;14.1,144.1,106.4;14.9,140.4,128.8;16.0,134.9,128.8]; # JMA best track
myvect = [myvect;my_wpac_2023_010];
rsmcvect = [rsmcvect;rsmc_wpac_2023_010];
btkvect = [btkvect;btk_wpac_2023_010];
btk2vect = [btk2vect;btk2_wpac_2023_010];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 011 ... MAWAR before 2023-05-22-03Z

my_wpac_2023_011 = [11.5,146.6,100;    13.5,144.8,105;  14.5,141.6,115;  15.1,137.3,125;  16.5,133.0,130];
rsmc_wpac_2023_011 = [11.3,146.9,84.0; 13.3,145.1,95.2; 14.1,142.0,106.4;14.8,137.9,112.0;15.8,133.1,112.0];
btk_wpac_2023_011 = [11.2,146.8,115;   13.0,145.6,105;  14.2,143.5,140;  15.1,139.2,165;  16.3,133.5,135]; # JTWC best track
btk2_wpac_2023_011 = [11.2,146.9,106.4;13.1,145.5,106.4;14.2,143.5,112.0;15.1,139.2,128.8;16.4,133.5,117.6]; # JMA best track
myvect = [myvect;my_wpac_2023_011];
rsmcvect = [rsmcvect;rsmc_wpac_2023_011];
btkvect = [btkvect;btk_wpac_2023_011];
btk2vect = [btk2vect;btk2_wpac_2023_011];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 012 ... MAWAR before 2023-05-22-21Z

my_wpac_2023_012 = [12.7,145.5,110;    13.7,143.0,120;  14.6,139.2,120;  15.5,134.2,135;  17.3,130.3,135];
rsmc_wpac_2023_012 = [12.7,145.4,100.8;13.7,143.0,112.0;14.6,139.1,117.6;15.6,134.1,123.2;17.2,129.7,123.2];
btk_wpac_2023_012 = [12.7,145.7,120;   14.1,144.2,125;  14.9,140.4,155;  16.0,134.9,140;  17.0,129.7,115]; # JTWC best track
btk2_wpac_2023_012 = [12.5,145.7,117.6;14.1,144.1,106.4;14.9,140.4,128.8;16.0,134.9,128.8;17.1,129.7,95.2]; # JMA best track
myvect = [myvect;my_wpac_2023_012];
rsmcvect = [rsmcvect;rsmc_wpac_2023_012];
btkvect = [btkvect;btk_wpac_2023_012];
btk2vect = [btk2vect;btk2_wpac_2023_012];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 013 ... MAWAR before 2023-05-23-03Z

my_wpac_2023_013 = [13.1,145.3,120;    14.0,142.6,120;  15.0,138.1,130;  15.8,132.8,140;  18.3,129.2,140];
rsmc_wpac_2023_013 = [13.1,145.1,106.4;13.9,142.4,112.0;14.9,138.0,116.4;15.9,133.1,123.2;18.0,128.9,123.2];
btk_wpac_2023_013 = [13.0,145.6,105;   14.2,143.5,140;  15.1,139.2,165;  16.3,133.5,135;  17.2,128.7,110]; # JTWC best track
btk2_wpac_2023_013 = [13.1,145.5,106.4;14.2,143.5,112.0;15.1,139.2,128.8;16.4,133.5,117.6;17.2,128.7,95.2]; # JMA best track
myvect = [myvect;my_wpac_2023_013];
rsmcvect = [rsmcvect;rsmc_wpac_2023_013];
btkvect = [btkvect;btk_wpac_2023_013];
btk2vect = [btk2vect;btk2_wpac_2023_013];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 014 ... MAWAR before 2023-05-23-15Z

my_wpac_2023_014 = [13.6,143.9,130;    14.5,140.3,130;  15.5,135.3,145;  16.5,129.8,150;  18.8,126.9,135];
rsmc_wpac_2023_014 = [13.7,143.9,123.2;14.5,140.3,112.0;15.7,135.5,123.2;17.0,130.3,128.8;19.1,126.4,117.6];
btk_wpac_2023_014 = [13.8,144.7,120;   14.7,141.5,155;  15.7,136.5,145;  16.8,130.9,125;  18.0,127.3,105]; # JTWC best track
btk2_wpac_2023_014 = [13.8,144.7,106.4;14.8,141.5,128.8;15.7,136.5,128.8;16.8,130.9,95.2; 18.0,127.4,95.2]; # JMA best track
myvect = [myvect;my_wpac_2023_014];
rsmcvect = [rsmcvect;rsmc_wpac_2023_014];
btkvect = [btkvect;btk_wpac_2023_014];
btk2vect = [btk2vect;btk2_wpac_2023_014];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 015 ... MAWAR before 2023-05-23-21Z

my_wpac_2023_015 = [13.9,143.5,125;    14.8,139.6,130;  15.9,134.5,140;  17.0,129.0,140;  19.1,126.7,130];
rsmc_wpac_2023_015 = [13.9,143.4,117.6;14.9,139.4,112.0;16.1,134.1,123.2;17.6,129.2,128.8;19.6,125.8,117.6];
btk_wpac_2023_015 = [14.1,144.2,125;   14.9,140.4,155;  16.0,134.9,140;  17.0,129.7,115;  18.6,126.7,105]; # JTWC best track
btk2_wpac_2023_015 = [14.1,144.1,106.4;14.9,140.4,128.8;16.0,134.9,128.8;17.1,129.7,95.2; 18.6,126.7,95.2]; # JMA best track
myvect = [myvect;my_wpac_2023_015];
rsmcvect = [rsmcvect;rsmc_wpac_2023_015];
btkvect = [btkvect;btk_wpac_2023_015];
btk2vect = [btk2vect;btk2_wpac_2023_015];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 016 ... MAWAR before 2023-05-24-21Z

my_wpac_2023_016 = [14.9,140.0,130;    16.0,134.2,140;  16.9,128.5,140;  18.5,125.1,130;  20.8,124.1,105];
rsmc_wpac_2023_016 = [15.1,140.0,112.0;16.2,134.4,117.6;17.4,129.2,123.2;19.1,125.6,117.6;20.5,123.5,100.8];
btk_wpac_2023_016 = [14.9,140.4,155;   16.0,134.9,140;  17.0,129.7,115;  18.6,126.7,105;  20.1,125.4,85]; # JTWC best track
btk2_wpac_2023_016 = [14.9,140.4,128.8;16.0,134.9,128.8;17.1,129.7,95.2; 18.6,126.7,95.2; 20.1,125.4,95.2]; # JMA best track
myvect = [myvect;my_wpac_2023_016];
rsmcvect = [rsmcvect;rsmc_wpac_2023_016];
btkvect = [btkvect;btk_wpac_2023_016];
btk2vect = [btk2vect;btk2_wpac_2023_016];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 017 ... MAWAR before 2023-05-25-03Z

my_wpac_2023_017 = [15.4,139.0,135;    16.4,133.1,145;  17.7,127.7,130;  19.4,124.6,110;  21.6,124.0,95];
rsmc_wpac_2023_017 = [15.3,138.8,117.6;16.4,133.0,123.2;17.8,128.1,123.2;19.5,124.8,112.0;20.4,122.9,95.2];
btk_wpac_2023_017 = [15.1,139.2,165;   16.3,133.5,135;  17.2,128.7,110;  19.0,126.2,105;  20.4,125.1,80]; # JTWC best track
btk2_wpac_2023_017 = [15.1,139.2,128.8;16.4,133.5,117.6;17.2,128.7,95.2; 19.0,126.2,95.2; 20.3,125.1,89.6]; # JMA best track
myvect = [myvect;my_wpac_2023_017];
rsmcvect = [rsmcvect;rsmc_wpac_2023_017];
btkvect = [btkvect;btk_wpac_2023_017];
btk2vect = [btk2vect;btk2_wpac_2023_017];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 018 ... MAWAR before 2023-05-25-21Z

my_wpac_2023_018 = [15.9,135.2,150;    17.2,130.0,135;  18.9,126.2,115;  20.1,124.3,95;   21.5,123.7,80];
rsmc_wpac_2023_018 = [16.2,134.7,123.2;17.3,129.4,123.2;19.1,125.8,112.0;20.4,123.8,100.8;20.9,123.7,89.6];
btk_wpac_2023_018 = [16.0,134.9,140;   17.0,129.7,115;  18.6,126.7,105;  20.1,125.4,85;   21.2,125.0,65]; # JTWC best track
btk2_wpac_2023_018 = [16.0,134.9,128.8;17.1,129.7,95.2; 18.6,126.7,95.2; 20.1,125.4,95.2; 21.2,125.0,78.4]; # JMA best track
myvect = [myvect;my_wpac_2023_018];
rsmcvect = [rsmcvect;rsmc_wpac_2023_018];
btkvect = [btkvect;btk_wpac_2023_018];
btk2vect = [btk2vect;btk2_wpac_2023_018];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 019 ... MAWAR before 2023-05-26-15Z

my_wpac_2023_019 = [16.8,130.7,140;    18.0,126.6,125;  19.7,124.3,100;  21.1,123.5,80;  23.0,125.1,60];
rsmc_wpac_2023_019 = [16.8,130.8,123.2;18.3,126.8,117.6;19.9,124.7,106.4;20.8,123.8,89.6;21.8,124.6,78.4];
btk_wpac_2023_019 = [16.8,130.9,125;   18.0,127.3,105;  19.7,125.6,90;   20.9,125.1,70;  22.7,125.5,55]; # JTWC best track
btk2_wpac_2023_019 = [16.8,130.9,95.2; 18.0,127.4,95.2; 19.7,125.6,95.2; 20.8,125.0,78.4;22.7,125.4,72.8]; # JMA best track
myvect = [myvect;my_wpac_2023_019];
rsmcvect = [rsmcvect;rsmc_wpac_2023_019];
btkvect = [btkvect;btk_wpac_2023_019];
btk2vect = [btk2vect;btk2_wpac_2023_019];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 020 ... MAWAR before 2023-05-27-03Z

my_wpac_2023_020 = [17.3,128.4,120;    18.7,125.3,105;  20.3,123.7,80;   21.6,123.7,75;  23.1,124.9,65];
rsmc_wpac_2023_020 = [17.4,128.6,112.0;19.0,125.7,106.4;20.3,124.2,100.8;21.6,124.4,84.0;23.0,125.4,72.8];
btk_wpac_2023_020 = [17.2,128.7,110;   19.0,126.2,105;  20.4,125.1,80;   21.5,125.1,65;  24.2,125.9,45]; # JTWC best track
btk2_wpac_2023_020 = [17.2,128.7,95.2; 19.0,126.2,95.2; 20.3,125.1,89.6; 21.4,125.1,78.4;24.1,125.8,56.0]; # JMA best track
myvect = [myvect;my_wpac_2023_020];
rsmcvect = [rsmcvect;rsmc_wpac_2023_020];
btkvect = [btkvect;btk_wpac_2023_020];
btk2vect = [btk2vect;btk2_wpac_2023_020];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 021 ... MAWAR before 2023-05-27-21Z

my_wpac_2023_021 = [18.5,125.8,100;    19.9,123.5,90;  20.6,122.1,75;  21.9,121.5,65;  24.3,122.6,55];
rsmc_wpac_2023_021 = [18.5,126.2,106.4;19.9,124.1,95.2;20.5,123.5,84.0;21.8,123.4,72.8;23.4,123.4,61.6];
btk_wpac_2023_021 = [18.6,126.7,105;   20.1,125.4,85;  21.2,125.0,65;  23.5,125.3,55;  26.8,128.1,45]; # JTWC best track
btk2_wpac_2023_021 = [18.6,126.7,95.2; 20.1,125.4,95.2;21.2,125.0,78.4;23.6,125.6,67.2;26.9,128.1,56.0]; # JMA best track
myvect = [myvect;my_wpac_2023_021];
rsmcvect = [rsmcvect;rsmc_wpac_2023_021];
btkvect = [btkvect;btk_wpac_2023_021];
btk2vect = [btk2vect;btk2_wpac_2023_021];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 022 ... MAWAR before 2023-05-28-21Z

my_wpac_2023_022 = [20.0,124.8,95;    20.6,123.7,85;  22.1,122.9,70;  24.2,123.1,60;  26.5,126.2,45];
rsmc_wpac_2023_022 = [20.0,125.0,89.6;20.6,124.2,84.0;22.1,124.0,72.8;24.6,124.6,61.6;26.2,126.2,50.4];
btk_wpac_2023_022 = [20.1,125.4,85;   21.2,125.0,65;  23.5,125.3,55;  26.8,128.1,45;  29.8,135.3,35]; # JTWC best track
btk2_wpac_2023_022 = [20.1,125.4,95.2;21.2,125.0,78.4;23.6,125.6,67.2;26.9,128.1,56.0;29.7,135.2,50.4]; # JMA best track
myvect = [myvect;my_wpac_2023_022];
rsmcvect = [rsmcvect;rsmc_wpac_2023_022];
btkvect = [btkvect;btk_wpac_2023_022];
btk2vect = [btk2vect;btk2_wpac_2023_022];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 023 ... MAWAR before 2023-05-29-03Z

my_wpac_2023_023 = [20.3,124.4,95;    21.3,123.7,85;  22.8,123.3,70;  25.0,123.5,55;  27.4,127.3,40];
rsmc_wpac_2023_023 = [20.4,124.7,89.6;21.3,124.3,84.0;23.1,124.1,72.8;25.5,125.3,56.0;26.9,127.4,44.8];
btk_wpac_2023_023 = [20.4,125.1,80;   21.5,125.1,65;  24.2,125.9,45;  27.5,129.6,40;  30.7,137.6,35]; # JTWC best track
btk2_wpac_2023_023 = [20.3,125.1,89.6;21.4,125.1,78.4;24.1,125.8,56.0;27.4,129.4,50.4;30.6,137.8,33.6]; # JMA best track (except day 5 wind)
myvect = [myvect;my_wpac_2023_023];
rsmcvect = [rsmcvect;rsmc_wpac_2023_023];
btkvect = [btkvect;btk_wpac_2023_023];
btk2vect = [btk2vect;btk2_wpac_2023_023];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 024 ... MAWAR before 2023-05-29-09Z

my_wpac_2023_024 = [20.7,124.4,85;    21.7,123.9,80;  23.7,124.0,65;  25.4,125.3,55;  27.3,129.5,45];
rsmc_wpac_2023_024 = [20.7,124.8,89.6;21.7,124.5,84.0;24.0,124.9,72.8;26.1,127.0,56.0;27.3,130.2,44.8];
btk_wpac_2023_024 = [20.6,125.0,75;   22.3,125.4,60;  24.9,126.4,40;  28.3,131.3,40;  32.4,140.4,35]; # JTWC best track (except day 5)
btk2_wpac_2023_024 = [20.3,125.1,89.6;22.2,125.3,72.8;24.9,126.1,56.0;28.2,131.0,50.4;32.4,140.8,33.6]; # JMA best track (except day 5 wind)
myvect = [myvect;my_wpac_2023_024];
rsmcvect = [rsmcvect;rsmc_wpac_2023_024];
btkvect = [btkvect;btk_wpac_2023_024];
btk2vect = [btk2vect;btk2_wpac_2023_024];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 025 ... MAWAR before 2023-05-29-21Z

my_wpac_2023_025 = [21.3,124.9,75;    22.8,125.1,65;  25.1,125.9,60;  26.0,128.0,50];
rsmc_wpac_2023_025 = [21.1,125.0,84.0;22.7,125.2,78.4;25.1,126.3,67.2;26.3,128.8,56.0];
btk_wpac_2023_025 = [21.2,125.0,65;   23.5,125.3,55;  26.8,128.1,45;  29.8,135.3,35]; # JTWC best track
btk2_wpac_2023_025 = [21.2,125.0,78.4;23.6,125.6,67.2;26.9,128.1,56.0;29.7,135.2,50.4]; # JMA best track
myvect = [myvect;my_wpac_2023_025];
rsmcvect = [rsmcvect;rsmc_wpac_2023_025];
btkvect = [btkvect;btk_wpac_2023_025];
btk2vect = [btk2vect;btk2_wpac_2023_025];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Wpac 026 ... MAWAR before 2023-05-30-03Z

my_wpac_2023_026 = [21.7,124.8,65;    23.5,124.8,55;  25.4,125.3,45;  27.0,129.9,45];
rsmc_wpac_2023_026 = [21.8,125.2,84.0;23.6,125.6,72.8;25.7,127.1,61.6;26.7,129.9,50.4];
btk_wpac_2023_026 = [21.5,125.1,65;   24.2,125.9,45;  27.5,129.6,40;  30.7,137.6,35]; # JTWC best track
btk2_wpac_2023_026 = [21.4,125.1,78.4;24.1,125.8,56.0;27.4,129.4,50.4;30.6,137.8,33.6]; # JMA best track (except day 4 wind)
myvect = [myvect;my_wpac_2023_026];
rsmcvect = [rsmcvect;rsmc_wpac_2023_026];
btkvect = [btkvect;btk_wpac_2023_026];
btk2vect = [btk2vect;btk2_wpac_2023_026];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Wpac 027 ... MAWAR before 2023-05-30-21Z

my_wpac_2023_027 = [23.1,124.9,55;    25.5,126.3,50;  27.5,131.5,45];
rsmc_wpac_2023_027 = [23.3,125.4,78.4;26.1,127.5,67.2;27.6,131.7,56.0];
btk_wpac_2023_027 = [23.5,125.3,55;   26.8,128.1,45;  29.8,135.3,35]; # JTWC best track
btk2_wpac_2023_027 = [23.6,125.6,67.2;26.9,128.1,56.0;29.7,135.2,50.4]; # JMA best track
myvect = [myvect;my_wpac_2023_027];
rsmcvect = [rsmcvect;rsmc_wpac_2023_027];
btkvect = [btkvect;btk_wpac_2023_027];
btk2vect = [btk2vect;btk2_wpac_2023_027];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Wpac 028 ... TD/98W before 2023-06-06-03Z

my_wpac_2023_028 = [14.8,133.6,40;    16.2,131.5,45;  17.0,129.7,60;  18.5,129.3,65;  20.0,129.0,65];
rsmc_wpac_2023_028 = [15.0,133.5,39.2;16.1,131.5,50.4;17.0,129.9,61.6;18.4,129.5,67.2;20.5,129.5,67.2];
btk_wpac_2023_028 = [14.6,134.1,40;   15.9,131.8,65;  17.3,130.2,80;  19.1,129.9,90;  23.2,131.7,75]; # JTWC best track
btk2_wpac_2023_028 = [14.7,134.3,44.8;15.8,131.6,61.6;17.2,130.4,84.0;18.9,129.9,89.6;23.0,131.7,72.8]; # JMA best track
myvect = [myvect;my_wpac_2023_028];
rsmcvect = [rsmcvect;rsmc_wpac_2023_028];
btkvect = [btkvect;btk_wpac_2023_028];
btk2vect = [btk2vect;btk2_wpac_2023_028];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 029 ... GUCHOL before 2023-06-06-15Z

my_wpac_2023_029 = [14.7,133.0,45;    16.3,130.9,65;  18.0,130.4,70;  19.4,130.9,75;  22.2,132.7,80];
rsmc_wpac_2023_029 = [14.8,133.0,50.4;16.5,130.9,61.6;17.8,130.2,72.8;19.6,130.4,78.4;22.9,131.8,78.4];
btk_wpac_2023_029 = [15.3,133.0,50;   16.4,130.9,80;  18.2,130.0,75;  20.7,130.6,90;  25.5,133.6,50]; # JTWC best track
btk2_wpac_2023_029 = [15.1,133.2,50.4;16.3,130.8,78.4;18.1,129.9,84.0;20.7,130.5,84.0;25.6,133.8,61.6]; # JMA best track
myvect = [myvect;my_wpac_2023_029];
rsmcvect = [rsmcvect;rsmc_wpac_2023_029];
btkvect = [btkvect;btk_wpac_2023_029];
btk2vect = [btk2vect;btk2_wpac_2023_029];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Nio 09 ... ARB 01/02A before 2023-06-06-15Z

my_nio_2023_09 = [13.8,65.9,65;    15.4,65.3,80;  17.1,65.1,85;  19.2,64.5,80;  19.8,64.5,80];
rsmc_nio_2023_09 = [13.3,65.9,58.3;14.5,65.7,68.9;15.8,65.5,79.5;17.4,65.1,84.8;19.2,64.7,79.5];
btk_nio_2023_09 = [13.3,66.2,85;   14.2,66.0,75;  15.7,67.3,65;  17.2,67.3,105; 18.7,67.9,90]; # JTWC best track
btk2_nio_2023_09 = [13.3,66.2,68.9;14.4,66.0,79.5;15.5,67.1,68.9;17.1,67.3,84.8;18.6,67.7,95.4]; # IMD prelim report
myvect = [myvect;my_nio_2023_09];
rsmcvect = [rsmcvect;rsmc_nio_2023_09];
btkvect = [btkvect;btk_nio_2023_09];
btk2vect = [btk2vect;btk2_nio_2023_09];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Wpac 030 ... GUCHOL before 2023-06-07-03Z

my_wpac_2023_030 = [15.8,132.2,60;    17.5,130.8,75;  19.2,130.8,70;  21.6,131.9,85;  25.4,135.9,85];
rsmc_wpac_2023_030 = [15.8,132.1,61.6;17.2,130.5,78.4;18.6,130.1,89.6;21.4,131.0,89.6;25.6,133.8,89.6];
btk_wpac_2023_030 = [15.9,131.8,65;   17.3,130.2,85;  19.1,129.9,90;  23.2,131.7,75;  28.1,136.6,50]; # JTWC best track
btk2_wpac_2023_030 = [15.8,131.6,61.6;17.2,130.4,84.0;18.9,129.9,89.6;23.0,131.7,72.8;27.9,136.9,61.6]; # JMA best track
myvect = [myvect;my_wpac_2023_030];
rsmcvect = [rsmcvect;rsmc_wpac_2023_030];
btkvect = [btkvect;btk_wpac_2023_030];
btk2vect = [btk2vect;btk2_wpac_2023_030];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Nio 10 ... BIPARJOY before 2023-06-07-03Z

my_nio_2023_10 = [13.9,66.2,90;    15.4,65.3,90;  16.7,64.7,80;  18.6,64.7,75;  19.7,63.4,65];
rsmc_nio_2023_10 = [13.9,66.2,68.9;15.1,65.8,79.5;16.5,65.3,84.8;18.3,64.9,79.5;20.2,64.5,79.5];
btk_nio_2023_10 = [13.7,66.1,75;   14.8,66.4,65;  16.4,67.3,95;  17.8,67.7,95;  19.2,67.7,80]; # JTWC best track
btk2_nio_2023_10 = [13.9,66.0,79.5;14.7,66.2,79.5;16.5,67.4,79.5;17.9,67.4,95.4;19.2,67.7,95.4]; # IMD prelim report
myvect = [myvect;my_nio_2023_10];
rsmcvect = [rsmcvect;rsmc_nio_2023_10];
btkvect = [btkvect;btk_nio_2023_10];
btk2vect = [btk2vect;btk2_nio_2023_10];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Nio 11 ... BIPARJOY before 2023-06-08-15Z

my_nio_2023_11 = [15.7,65.9,90;    16.9,65.5,85;  18.4,65.6,80;  19.7,65.8,70;  21.2,64.9,55];
rsmc_nio_2023_11 = [15.6,65.6,90.1;16.9,65.2,84.8;18.3,64.8,79.5;19.7,64.4,74.2;21.2,64.0,68.9];
btk_nio_2023_11 = [15.7,67.3,65;   17.2,67.3,105; 18.7,67.9,90;  19.9,67.2,90;  21.1,66.4,95]; # JTWC best track
btk2_nio_2023_11 = [15.5,67.1,68.9;17.1,67.3,84.8;18.6,67.7,95.4;19.9,67.3,95.4;21.3,66.5,90.1]; # IMD prelim report
myvect = [myvect;my_nio_2023_11];
rsmcvect = [rsmcvect;rsmc_nio_2023_11];
btkvect = [btkvect;btk_nio_2023_11];
btk2vect = [btk2vect;btk2_nio_2023_11];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Wpac 031 ... GUCHOL before 2023-06-08-21Z

my_wpac_2023_031 = [18.4,130.0,100;   20.9,131.0,95;  24.7,134.9,95;  28.9,140.4,75;  35.0,151.3,0];
rsmc_wpac_2023_031 = [18.4,130.0,84.0;20.6,130.7,78.4;24.2,133.9,72.8;29.1,139.9,67.2;35.3,149.8,0];
btk_wpac_2023_031 = [18.6,129.9,85;   22.2,130.8,80;  26.9,134.7,45;  32.3,141.7,45;  38.1,152.0,0]; # JTWC best track (except day 5 JMA)
btk2_wpac_2023_031 = [18.5,129.9,89.6;21.8,131.1,78.4;26.4,135.3,61.6;32.0,142.0,44.8;38.1,152.0,0]; # JMA best track (except day 4 wind JTWC btk)
myvect = [myvect;my_wpac_2023_031];
rsmcvect = [rsmcvect;rsmc_wpac_2023_031];
btkvect = [btkvect;btk_wpac_2023_031];
btk2vect = [btk2vect;btk2_wpac_2023_031];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Nio 12 ... BIPARJOY before 2023-06-08-21Z

my_nio_2023_12 = [15.9,66.2,85;    17.3,66.1,80;  18.5,65.8,70;  19.5,65.2,65;  21.1,65.0,55];
rsmc_nio_2023_12 = [15.8,65.7,90.1;17.2,65.3,84.8;18.6,64.9,79.5;19.9,64.5,74.2;21.5,64.1,68.9];
btk_nio_2023_12 = [16.3,67.4,70;   17.6,67.4,100; 19.0,67.8,85;  20.3,67.2,85;  21.2,66.4,85]; # JTWC best track
btk2_nio_2023_12 = [16.0,67.4,74.2;17.4,67.3,90.1;18.9,67.7,95.4;20.1,67.2,95.2;21.7,66.3,90.1]; # IMD prelim report
myvect = [myvect;my_nio_2023_12];
rsmcvect = [rsmcvect;rsmc_nio_2023_12];
btkvect = [btkvect;btk_nio_2023_12];
btk2vect = [btk2vect;btk2_nio_2023_12];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Nio 13 ... BIPARJOY before 2023-06-09-21Z

my_nio_2023_13 = [17.5,67.7,75;    19.2,67.7,70;  20.4,67.0,55;  21.6,66.7,50;  22.6,66.2,45];
rsmc_nio_2023_13 = [17.8,67.7,84.8;19.1,67.5,79.5;20.4,67.0,74.2;21.6,66.4,68.9;22.6,66.0,58.3];
btk_nio_2023_13 = [17.6,67.4,100;  19.0,67.8,85;  20.3,67.2,85;  21.2,66.4,85;  22.2,66.7,60]; # JTWC best track
btk2_nio_2023_13 = [17.4,67.3,90.1;18.9,67.7,95.4;20.1,67.2,90.1;21.7,66.3,90.1;22.2,66.9,79.5]; # IMD prelim report
myvect = [myvect;my_nio_2023_13];
rsmcvect = [rsmcvect;rsmc_nio_2023_13];
btkvect = [btkvect;btk_nio_2023_13];
btk2vect = [btk2vect;btk2_nio_2023_13];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Wpac 032 ... GUCHOL before 2023-06-09-21Z

my_wpac_2023_032 = [21.4,130.9,85;    25.4,134.7,75;  30.8,141.1,70;  36.0,150.2,0];
rsmc_wpac_2023_032 = [21.3,130.8,78.4;25.1,134.5,72.8;30.1,140.2,61.6;35.7,149.6,0];
btk_wpac_2023_032 = [22.2,130.8,80;   26.9,134.7,45;  32.3,141.7,45;  38.1,152.0,0]; # JTWC best track (except day 4 JMA)
btk2_wpac_2023_032 = [21.8,131.1,78.4;26.4,135.3,61.6;32.0,142.0,44.8;38.1,152.0,0]; # JMA best track (except day 3 wind JTWC btk)
myvect = [myvect;my_wpac_2023_032];
rsmcvect = [rsmcvect;rsmc_wpac_2023_032];
btkvect = [btkvect;btk_wpac_2023_032];
btk2vect = [btk2vect;btk2_wpac_2023_032];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Nio 14 ... BIPARJOY before 2023-06-10-03Z

my_nio_2023_14 = [17.9,67.4,85;    19.4,67.2,80;  20.8,66.5,70;  22.3,66.1,60;  23.4,66.3,55];
rsmc_nio_2023_14 = [18.1,67.8,90.1;19.5,67.7,84.8;20.7,67.4,79.5;22.0,67.0,68.9;23.2,66.8,58.3];
btk_nio_2023_14 = [17.8,67.7,95;   19.2,67.7,80;  20.7,67.0,85;  21.3,66.3,85;  22.3,66.9,55]; # JTWC best track
btk2_nio_2023_14 = [17.9,67.4,95.4;19.2,67.7,95.4;20.6,67.0,90.1;21.8,66.3,84.8;22.4,67.0,74.2]; # IMD prelim report
myvect = [myvect;my_nio_2023_14];
rsmcvect = [rsmcvect;rsmc_nio_2023_14];
btkvect = [btkvect;btk_nio_2023_14];
btk2vect = [btk2vect;btk2_nio_2023_14];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Nio 15 ... BIPARJOY before 2023-06-10-15Z

my_nio_2023_15 = [18.9,67.6,65;    20.2,67.3,70;  21.6,66.8,65;  22.4,66.3,50;  24.0,66.7,45];
rsmc_nio_2023_15 = [18.7,67.6,90.1;20.0,67.5,79.5;21.3,67.3,74.2;22.6,67.0,68.9;24.1,67.2,58.3];
btk_nio_2023_15 = [18.7,67.9,90;   19.9,67.2,90;  21.1,66.4,95;  21.8,66.7,70;  22.8,68.2,55]; # JTWC best track
btk2_nio_2023_15 = [18.6,67.7,95.4;19.9,67.3,95.4;21.3,66.5,90.1;22.0,66.7,79.5;22.9,68.0,68.9]; # IMD prelim report
myvect = [myvect;my_nio_2023_15];
rsmcvect = [rsmcvect;rsmc_nio_2023_15];
btkvect = [btkvect;btk_nio_2023_15];
btk2vect = [btk2vect;btk2_nio_2023_15];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Nio 16 ... BIPARJOY before 2023-06-11-21Z

my_nio_2023_16 = [20.6,67.7,75;    21.8,67.2,70;  22.6,67.4,65;  24.3,69.4,40];
rsmc_nio_2023_16 = [20.5,67.4,84.8;21.5,67.4,79.5;22.8,68.2,74.2;24.0,69.6,42.4];
btk_nio_2023_16 = [20.3,67.2,85;   21.2,66.4,85;  22.2,66.7,60;  23.3,68.6,50]; # JTWC best track
btk2_nio_2023_16 = [20.1,67.2,90.1;21.7,66.3,90.1;22.2,66.9,79.5;22.2,66.9,79.5]; # IMD prelim report
myvect = [myvect;my_nio_2023_16];
rsmcvect = [rsmcvect;rsmc_nio_2023_16];
btkvect = [btkvect;btk_nio_2023_16];
btk2vect = [btk2vect;btk2_nio_2023_16];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Nio 17 ... BIPARJOY before 2023-06-12-03Z

my_nio_2023_17 = [20.7,67.5,80;    21.9,67.3,70;  22.8,67.5,55;  24.1,70.1,35];
rsmc_nio_2023_17 = [20.7,67.4,84.8;21.8,67.4,79.5;23.0,68.3,74.2;24.1,69.9,31.8];
btk_nio_2023_17 = [20.7,67.0,85;   21.3,66.3,85;  22.3,66.9,55;  23.5,69.0,45]; # JTWC best track
btk2_nio_2023_17 = [20.6,67.0,90.1;21.8,66.3,84.8;22.4,67.0,74.2;23.4,69.2,53.0]; # IMD prelim report
myvect = [myvect;my_nio_2023_17];
rsmcvect = [rsmcvect;rsmc_nio_2023_17];
btkvect = [btkvect;btk_nio_2023_17];
btk2vect = [btk2vect;btk2_nio_2023_17];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Nio 18 ... BIPARJOY before 2023-06-12-21Z

my_nio_2023_18 = [21.2,66.9,75;    22.2,67.2,65;  23.6,68.7,55];
rsmc_nio_2023_18 = [21.5,67.3,79.5;22.7,67.9,74.2;23.8,69.0,42.4];
btk_nio_2023_18 = [21.2,66.4,85;   22.2,66.7,60;  23.3,68.6,50]; # JTWC best track
btk2_nio_2023_18 = [21.7,66.3,90.1;22.2,66.9,79.5;23.3,68.6,63.6]; # IMD prelim report
myvect = [myvect;my_nio_2023_18];
rsmcvect = [rsmcvect;rsmc_nio_2023_18];
btkvect = [btkvect;btk_nio_2023_18];
btk2vect = [btk2vect;btk2_nio_2023_18];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Nio 19 ... BIPARJOY before 2023-06-13-21Z

my_nio_2023_19 = [22.6,67.0,70;    24.1,69.2,50;  25.5,72.5,35];
rsmc_nio_2023_19 = [22.9,67.5,79.5;23.9,69.3,53.0;25.1,71.7,21.2];
btk_nio_2023_19 = [22.2,66.7,60;   23.3,68.6,50;  24.7,70.8,35]; # JTWC best track
btk2_nio_2023_19 = [22.2,66.9,79.5;23.3,68.6,63.6;24.6,70.9,31.8]; # IMD prelim report
myvect = [myvect;my_nio_2023_19];
rsmcvect = [rsmcvect;rsmc_nio_2023_19];
btkvect = [btkvect;btk_nio_2023_19];
btk2vect = [btk2vect;btk2_nio_2023_19];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Nio 20 ... BIPARJOY before 2023-06-14-03Z

my_nio_2023_20 = [22.8,67.4,75;    24.0,69.6,45;  25.2,72.7,20];
rsmc_nio_2023_20 = [23.0,67.7,79.5;24.2,69.7,53.0;25.1,72.4,21.2];
btk_nio_2023_20 = [22.3,66.9,55;   23.5,69.0,45;  25.1,71.1,30]; # JTWC best track
btk2_nio_2023_20 = [22.4,67.0,74.2;23.4,69.2,53.0;24.7,71.2,31.8]; # IMD prelim report
myvect = [myvect;my_nio_2023_20];
rsmcvect = [rsmcvect;rsmc_nio_2023_20];
btkvect = [btkvect;btk_nio_2023_20];
btk2vect = [btk2vect;btk2_nio_2023_20];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Nio 21 ... BIPARJOY before 2023-06-14-21Z

my_nio_2023_21 = [23.6,68.6,45;    25.1,70.9,30];
rsmc_nio_2023_21 = [23.7,68.9,53.0;25.0,71.0,21.2];
btk_nio_2023_21 = [23.3,68.6,50;   24.7,70.8,35]; # JTWC best track
btk2_nio_2023_21 = [23.3,68.6,63.6;23.3,68.6,63.6]; # IMD prelim report
myvect = [myvect;my_nio_2023_21];
rsmcvect = [rsmcvect;rsmc_nio_2023_21];
btkvect = [btkvect;btk_nio_2023_21];
btk2vect = [btk2vect;btk2_nio_2023_21];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Wpac 033 ... TD/98W before 2023-07-20-21Z

my_wpac_2023_033 = [14.9,130.9,30;    14.8,128.7,50;  15.4,127.6,75;  18.2,126.1,105;  23.1,123.7,115];
rsmc_wpac_2023_033 = [14.5,131.0,39.2;14.6,129.0,50.4;14.9,127.4,72.8;16.9,125.8,89.6; 20.4,123.8,95.2];
btk_wpac_2023_033 = [14.2,130.8,30;   14.6,129.5,45;  15.1,127.0,90;  17.0,125.1,125;  19.0,121.5,120]; # JTWC best track
btk2_wpac_2023_033 = [14.2,132.2,39.2;14.6,129.7,56.0;15.1,127.0,78.4;16.9,125.1,112.0;19.0,121.6,112.0]; # JMA best track
myvect = [myvect;my_wpac_2023_033];
rsmcvect = [rsmcvect;rsmc_wpac_2023_033];
btkvect = [btkvect;btk_wpac_2023_033];
btk2vect = [btk2vect;btk2_wpac_2023_033];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 034 ... DOKSURI before 2023-07-21-21Z

my_wpac_2023_034 = [14.4,130.1,50;    15.0,128.1,75;  17.7,126.9,95;   20.8,125.3,110;  25.5,123.4,105];
rsmc_wpac_2023_034 = [14.4,130.2,44.8;14.8,128.5,61.6;17.4,126.9,89.6; 20.8,124.5,106.4;23.9,122.0,100.8];
btk_wpac_2023_034 = [14.6,129.5,45;   15.1,127.0,90;  17.0,125.1,125;  19.0,121.5,120;  20.0,120.0,80]; # JTWC best track
btk2_wpac_2023_034 = [14.6,129.7,56.0;15.1,127.0,78.4;16.9,125.1,112.0;19.0,121.6,112.0;20.0,120.0,89.6]; # JMA best track
myvect = [myvect;my_wpac_2023_034];
rsmcvect = [rsmcvect;rsmc_wpac_2023_034];
btkvect = [btkvect;btk_wpac_2023_034];
btk2vect = [btk2vect;btk2_wpac_2023_034];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 035 ... DOKSURI before 2023-07-22-21Z

my_wpac_2023_035 = [15.2,127.5,70;    17.5,125.7,95;   20.4,123.4,105;  23.0,121.1,100; 27.0,119.6,65];
rsmc_wpac_2023_035 = [15.2,127.7,78.4;17.2,125.8,106.4;19.9,123.3,112.0;22.6,120.9,95.2;25.9,118.5,61.6];
btk_wpac_2023_035 = [15.1,127.0,90;   17.0,125.1,125;  19.0,121.5,120;  20.0,120.0,80;  22.7,119.0,90]; # JTWC best track
btk2_wpac_2023_035 = [15.1,127.0,78.4;16.9,125.1,112.0;19.0,121.6,112.0;20.0,120.0,89.6;22.8,118.9,89.6]; # JMA best track
myvect = [myvect;my_wpac_2023_035];
rsmcvect = [rsmcvect;rsmc_wpac_2023_035];
btkvect = [btkvect;btk_wpac_2023_035];
btk2vect = [btk2vect;btk2_wpac_2023_035];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 036 ... DOKSURI before 2023-07-23-21Z

my_wpac_2023_036 = [17.0,125.0,110;    19.0,121.8,130;  21.2,120.6,105;  24.7,118.6,70;  29.3,117.1,35];
rsmc_wpac_2023_036 = [17.1,125.3,100.8;19.1,122.0,112.0;21.0,120.3,100.8;24.4,118.8,61.6;28.5,117.6,39.2];
btk_wpac_2023_036 = [17.0,125.1,125;   19.0,121.5,120;  20.0,120.0,80;   22.7,119.0,90;  29.0,117.2,35]; # JTWC best track
btk2_wpac_2023_036 = [16.9,125.1,112.0;19.0,121.6,112.0;20.0,120.0,89.6; 22.8,118.9,89.6;28.9,117.0,39.2]; # JMA best track
myvect = [myvect;my_wpac_2023_036];
rsmcvect = [rsmcvect;rsmc_wpac_2023_036];
btkvect = [btkvect;btk_wpac_2023_036];
btk2vect = [btk2vect;btk2_wpac_2023_036];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 037 ... DOKSURI before 2023-07-24-21Z

my_wpac_2023_037 = [18.8,121.8,115;    20.5,120.1,105;  24.1,118.4,80;  27.9,116.3,40;  32.8,115.3,0];
rsmc_wpac_2023_037 = [19.0,121.8,112.0;20.7,120.0,106.4;23.9,117.8,84.0;27.4,115.6,39.2;31.8,114.9,0];
btk_wpac_2023_037 = [19.0,121.5,120;   20.0,120.0,80;   22.7,119.0,90;  29.0,117.2,35;  33.8,114.4,0]; # JTWC best track (except day 5 JMA)
btk2_wpac_2023_037 = [19.0,121.6,112.0;20.0,120.0,89.6; 22.8,118.9,89.6;28.9,117.0,39.2;33.8,114.4,0]; # JMA best track
myvect = [myvect;my_wpac_2023_037];
rsmcvect = [rsmcvect;rsmc_wpac_2023_037];
btkvect = [btkvect;btk_wpac_2023_037];
btk2vect = [btk2vect;btk2_wpac_2023_037];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 038 ... DOKSURI before 2023-07-25-15Z

my_wpac_2023_038 = [20.0,120.6,105;    22.7,118.6,85;  26.5,116.5,0];
rsmc_wpac_2023_038 = [20.0,120.7,106.4;22.6,118.7,95.2;26.4,116.0,0];
btk_wpac_2023_038 = [19.6,120.6,90;    21.8,119.1,100; 27.4,117.9,0]; # JTWC best track
btk2_wpac_2023_038 = [19.5,120.6,89.6; 21.8,119.1,89.6;27.1,117.9,0]; # JMA best track
myvect = [myvect;my_wpac_2023_038];
rsmcvect = [rsmcvect;rsmc_wpac_2023_038];
btkvect = [btkvect;btk_wpac_2023_038];
btk2vect = [btk2vect;btk2_wpac_2023_038];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Wpac 039 ... DOKSURI before 2023-07-25-21Z

my_wpac_2023_039 = [20.3,119.8,100;    24.3,118.4,75;  29.0,115.8,0];
rsmc_wpac_2023_039 = [20.5,120.1,106.4;23.9,118.4,84.0;28.2,116.2,0];
btk_wpac_2023_039 = [20.0,120.0,80;    22.7,119.0,90;  29.0,117.2,0]; # JTWC best track
btk2_wpac_2023_039 = [20.0,120.0,89.6; 22.8,118.9,89.6;28.9,117.0,0]; # JMA best track
myvect = [myvect;my_wpac_2023_039];
rsmcvect = [rsmcvect;rsmc_wpac_2023_039];
btkvect = [btkvect;btk_wpac_2023_039];
btk2vect = [btk2vect;btk2_wpac_2023_039];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Wpac 040 ... TD / 91W before 2023-07-26-21Z

my_wpac_2023_040 = [13.2,137.9,35;    16.1,136.8,40;  20.5,135.8,60;  24.2,132.7,90;  27.9,128.4,100];
rsmc_wpac_2023_040 = [13.1,137.7,39.2;15.7,136.3,44.8;19.4,134.8,50.4;23.5,131.9,61.6;26.3,126.5,72.8];
btk_wpac_2023_040 = [12.5,137.9,25;   14.6,134.7,45;  17.8,132.9,55;  21.2,132.2,105; 24.1,130.2,115]; # JTWC best track
btk2_wpac_2023_040 = [12.2,136.6,25.0;14.9,134.7,44.8;17.6,133.1,61.6;21.1,132.1,89.6;24.1,130.3,100.8]; # JMA best track (except day 1 wind JTWC btk)
myvect = [myvect;my_wpac_2023_040];
rsmcvect = [rsmcvect;rsmc_wpac_2023_040];
btkvect = [btkvect;btk_wpac_2023_040];
btk2vect = [btk2vect;btk2_wpac_2023_040];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 041 ... KHANUN before 2023-07-27-21Z

my_wpac_2023_041 = [15.6,135.6,40;    19.4,134.3,65;  24.2,131.4,95;  27.6,126.8,120;  30.9,123.1,100];
rsmc_wpac_2023_041 = [15.5,136.0,44.8;19.4,134.7,50.4;24.0,131.5,67.2;27.1,126.3,84.0; 29.9,122.1,89.6];
btk_wpac_2023_041 = [14.6,134.7,45;   17.8,132.9,55;  21.2,132.2,105; 24.1,130.2,115;  25.6,127.4,115]; # JTWC best track
btk2_wpac_2023_041 = [14.9,134.7,44.8;17.6,133.1,61.6;21.1,132.1,89.6;24.1,130.3,100.8;25.5,127.4,100.8]; # JMA best track
myvect = [myvect;my_wpac_2023_041];
rsmcvect = [rsmcvect;rsmc_wpac_2023_041];
btkvect = [btkvect;btk_wpac_2023_041];
btk2vect = [btk2vect;btk2_wpac_2023_041];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 042 ... KHANUN before 2023-07-28-15Z

my_wpac_2023_042 = [17.9,133.7,45;    22.7,131.5,75;  27.0,128.0,100;  28.5,123.4,100;  31.8,120.3,70];
rsmc_wpac_2023_042 = [17.4,133.9,50.4;22.2,131.7,72.8;26.0,128.1,89.6; 28.1,123.5,89.6; 30.5,120.0,61.6];
btk_wpac_2023_042 = [16.9,133.2,50;   20.4,132.4,90;  23.5,131.0,115;  25.3,128.0,120;  26.2,125.6,100]; # JTWC best track
btk2_wpac_2023_042 = [16.8,133.6,56.0;20.3,132.4,84.0;23.4,131.1,100.8;25.3,128.0,106.4;26.2,125.6,100.8]; # JMA best track
myvect = [myvect;my_wpac_2023_042];
rsmcvect = [rsmcvect;rsmc_wpac_2023_042];
btkvect = [btkvect;btk_wpac_2023_042];
btk2vect = [btk2vect;btk2_wpac_2023_042];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 043 ... KHANUN before 2023-07-28-21Z

my_wpac_2023_043 = [18.8,132.9,50;    23.2,131.0,70;  27.2,128.0,95;   29.0,123.5,100;  31.6,121.1,65];
rsmc_wpac_2023_043 = [18.3,133.3,56.0;22.8,131.1,78.4;26.1,127.5,89.6; 28.1,122.8,89.6; 29.4,119.7,56.0];
btk_wpac_2023_043 = [17.8,132.9,55;   21.2,132.2,105; 24.1,130.2,115;  25.6,127.4,115;  26.5,125.0,100]; # JTWC best track
btk2_wpac_2023_043 = [17.6,133.1,61.6;21.1,132.1,89.6;24.1,130.3,100.8;25.5,127.4,100.8;26.5,125.0,100.8]; # JMA best track
myvect = [myvect;my_wpac_2023_043];
rsmcvect = [rsmcvect;rsmc_wpac_2023_043];
btkvect = [btkvect;btk_wpac_2023_043];
btk2vect = [btk2vect;btk2_wpac_2023_043];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 044 ... KHANUN before 2023-07-29-21Z

my_wpac_2023_044 = [22.2,131.8,70;    26.0,128.7,85;   27.6,124.9,95;   29.3,121.7,75;   30.8,119.8,45];
rsmc_wpac_2023_044 = [22.4,131.7,72.8;26.0,128.1,84.0; 27.5,124.0,89.6; 29.1,120.5,67.2; 30.5,118.2,44.8];
btk_wpac_2023_044 = [21.2,132.2,105;  24.1,130.2,115;  25.6,127.4,115;  26.5,125.0,100;  27.0,124.3,70]; # JTWC best track
btk2_wpac_2023_044 = [21.1,132.1,89.6;24.1,130.3,100.8;25.5,127.4,100.8;26.5,125.0,100.8;26.8,124.3,72.8]; # JMA best track
myvect = [myvect;my_wpac_2023_044];
rsmcvect = [rsmcvect;rsmc_wpac_2023_044];
btkvect = [btkvect;btk_wpac_2023_044];
btk2vect = [btk2vect;btk2_wpac_2023_044];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 045 ... KHANUN before 2023-07-31-21Z

my_wpac_2023_045 = [25.6,127.4,115;    27.0,124.9,105;  27.9,122.9,80;  29.0,122.8,65;  29.2,123.4,70];
rsmc_wpac_2023_045 = [25.4,127.4,106.4;26.4,125.1,100.8;26.9,123.6,95.2;27.7,124.0,95.2;28.5,124.9,89.6];
btk_wpac_2023_045 = [25.6,127.4,115;   26.5,125.0,100;  27.0,124.3,70;  27.7,126.4,50;  27.9,128.9,50]; # JTWC best track
btk2_wpac_2023_045 = [25.5,127.4,100.8;26.5,125.0,100.8;26.8,124.3,72.8;27.7,126.4,61.6;28.0,128.9,56.0]; # JMA best track
myvect = [myvect;my_wpac_2023_045];
rsmcvect = [rsmcvect;rsmc_wpac_2023_045];
btkvect = [btkvect;btk_wpac_2023_045];
btk2vect = [btk2vect;btk2_wpac_2023_045];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 046 ... KHANUN before 2023-08-02-21Z

my_wpac_2023_046 = [26.6,123.6,95;    27.4,125.2,80;  28.7,127.8,70;  29.1,129.8,65;  31.5,130.6,70];
rsmc_wpac_2023_046 = [26.9,123.9,89.6;27.2,125.7,78.4;28.0,128.4,78.4;28.7,130.7,78.4;30.1,132.6,78.4];
btk_wpac_2023_046 = [27.0,124.3,70;   27.7,126.4,50;  27.9,128.9,50;  27.7,131.0,50;  28.7,131.0,50]; # JTWC best track
btk2_wpac_2023_046 = [26.8,124.3,72.8;27.7,126.4,61.6;28.0,128.9,56.0;27.5,130.9,56.0;28.4,131.1,50.4]; # JMA best track
myvect = [myvect;my_wpac_2023_046];
rsmcvect = [rsmcvect;rsmc_wpac_2023_046];
btkvect = [btkvect;btk_wpac_2023_046];
btk2vect = [btk2vect;btk2_wpac_2023_046];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 047 ... KHANUN before 2023-08-03-21Z

my_wpac_2023_047 = [27.1,125.8,55;    28.3,128.6,50;  29.1,131.1,55;  30.6,131.5,75;  33.3,131.5,85];
rsmc_wpac_2023_047 = [27.4,126.0,72.8;27.8,128.7,78.4;28.1,131.2,78.4;29.6,132.6,78.4;31.8,132.8,78.4];
btk_wpac_2023_047 = [27.7,126.4,55;   28.0,128.9,50;  27.7,131.0,50;  28.7,131.0,50;  30.4,129.8,50]; # JTWC best track
btk2_wpac_2023_047 = [27.7,126.4,61.6;28.0,128.9,56.0;27.5,130.9,56.0;28.4,131.1,50.4;30.4,129.7,56.0]; # JMA best track
myvect = [myvect;my_wpac_2023_047];
rsmcvect = [rsmcvect;rsmc_wpac_2023_047];
btkvect = [btkvect;btk_wpac_2023_047];
btk2vect = [btk2vect;btk2_wpac_2023_047];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 048 ... KHANUN before 2023-08-04-03Z

my_wpac_2023_048 = [27.5,126.6,50;    28.1,129.3,55;  29.3,131.8,65;  30.7,132.2,65;  33.7,131.9,75];
rsmc_wpac_2023_048 = [27.7,126.7,72.8;27.8,129.4,78.4;28.5,131.7,78.4;29.7,132.4,78.4;31.4,132.1,78.4];
btk_wpac_2023_048 = [27.8,127.0,50;   27.8,129.7,50;  27.9,131.2,50;  29.0,130.9,45;  30.9,129.5,55]; # JTWC best track
btk2_wpac_2023_048 = [27.7,126.8,61.6;27.8,129.5,56.0;27.8,131.2,56.0;28.9,131.0,50.4;30.9,129.3,56.0]; # JMA best track
myvect = [myvect;my_wpac_2023_048];
rsmcvect = [rsmcvect;rsmc_wpac_2023_048];
btkvect = [btkvect;btk_wpac_2023_048];
btk2vect = [btk2vect;btk2_wpac_2023_048];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 049 ... KHANUN before 2023-08-04-21Z

my_wpac_2023_049 = [28.2,128.7,50;    28.4,131.1,55;  29.8,131.0,50;  32.1,130.3,50;  37.1,129.5,55];
rsmc_wpac_2023_049 = [27.9,128.9,67.2;28.0,131.4,72.8;29.6,131.8,72.8;31.7,131.2,67.2;36.4,130.5,61.6];
btk_wpac_2023_049 = [27.9,128.9,50;   27.7,131.0,50;  28.7,131.0,50;  30.4,129.8,50;  33.6,128.7,55]; # JTWC best track
btk2_wpac_2023_049 = [28.0,128.9,56.0;27.5,130.9,56.0;28.4,131.1,50.4;30.4,129.7,56.0;33.4,128.6,56.0]; # JMA best track
myvect = [myvect;my_wpac_2023_049];
rsmcvect = [rsmcvect;rsmc_wpac_2023_049];
btkvect = [btkvect;btk_wpac_2023_049];
btk2vect = [btk2vect;btk2_wpac_2023_049];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 050 ... LAN before 2023-08-08-21Z

my_wpac_2023_050 = [24.8,144.6,65;    26.0,143.0,75;   27.2,143.0,75;  29.9,140.9,80;  32.9,139.4,75];
rsmc_wpac_2023_050 = [24.9,144.7,56.0;26.3,143.3,67.2; 28.6,142.9,78.4;30.7,140.7,84.0;32.6,139.4,84.0];
btk_wpac_2023_050 = [25.0,144.6,65;   26.4,142.9,110;  28.2,142.3,90;  29.4,140.0,70;  31.4,137.9,85]; # JTWC best track
btk2_wpac_2023_050 = [25.0,144.7,67.2;26.4,142.9,100.8;28.2,142.4,95.2;29.3,140.0,84.0;31.2,138.1,78.4]; # JMA best track
myvect = [myvect;my_wpac_2023_050];
rsmcvect = [rsmcvect;rsmc_wpac_2023_050];
btkvect = [btkvect;btk_wpac_2023_050];
btk2vect = [btk2vect;btk2_wpac_2023_050];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 051 ... LAN before 2023-08-09-21Z

my_wpac_2023_051 = [26.2,142.9,70;     28.4,142.6,80;  30.7,140.5,80;  33.2,138.7,70;  36.9,138.2,45];
rsmc_wpac_2023_051 = [26.2,142.9,72.8; 28.3,142.6,89.6;30.3,140.4,84.0;32.4,138.6,78.4;35.0,138.3,56.0];
btk_wpac_2023_051 = [26.4,142.9,110;   28.2,142.3,90;  29.4,140.0,70;  31.4,137.9,85;  33.4,136.1,75]; # JTWC best track
btk2_wpac_2023_051 = [26.4,142.9,100.8;28.2,142.4,95.2;29.3,140.0,84.0;31.2,138.1,78.4;33.3,136.0,67.2]; # JMA best track
myvect = [myvect;my_wpac_2023_051];
rsmcvect = [rsmcvect;rsmc_wpac_2023_051];
btkvect = [btkvect;btk_wpac_2023_051];
btk2vect = [btk2vect;btk2_wpac_2023_051];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 052 ... LAN before 2023-08-10-21Z

my_wpac_2023_052 = [28.2,142.0,110;    29.3,139.9,100; 31.7,137.8,100; 33.5,136.6,65;  38.1,136.5,50];
rsmc_wpac_2023_052 = [28.3,142.1,100.8;29.3,140.1,95.2;31.3,138.2,89.6;33.0,137.2,84.0;36.2,137.3,61.6];
btk_wpac_2023_052 = [28.2,142.3,90;    29.4,140.0,70;  31.4,137.9,85;  33.4,136.1,75;  37.0,134.7,45]; # JTWC best track
btk2_wpac_2023_052 = [28.2,142.4,95.2; 29.3,140.0,84.0;31.2,138.1,78.4;33.3,136.0,67.2;37.0,134.8,44.8]; # JMA best track
myvect = [myvect;my_wpac_2023_052];
rsmcvect = [rsmcvect;rsmc_wpac_2023_052];
btkvect = [btkvect;btk_wpac_2023_052];
btk2vect = [btk2vect;btk2_wpac_2023_052];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 053 ... LAN before 2023-08-11-15Z

my_wpac_2023_053 = [29.3,140.3,90;     30.8,138.0,85;  33.0,136.9,65;  36.1,136.4,40;  42.2,137.8,50];
rsmc_wpac_2023_053 = [29.1,140.3,100.8;30.3,137.9,95.2;32.1,136.3,84.0;35.4,135.5,67.2;40.7,136.0,50.4];
btk_wpac_2023_053 = [29.0,140.7,75;    30.8,138.5,85;  32.8,136.6,80;  36.2,134.7,45;  40.8,136.2,35]; # JTWC best track
btk2_wpac_2023_053 = [29.3,140.0,84.0; 30.7,138.6,84.0;32.8,136.6,67.2;36.0,134.7,50.4;40.6,136.6,44.8]; # JMA best track
myvect = [myvect;my_wpac_2023_053];
rsmcvect = [rsmcvect;rsmc_wpac_2023_053];
btkvect = [btkvect;btk_wpac_2023_053];
btk2vect = [btk2vect;btk2_wpac_2023_053];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 054 ... SAOLA before 2023-08-24-15Z

my_wpac_2023_054 = [19.8,123.6,65;    17.8,123.0,90;   16.2,123.1,105;  18.0,124.1,100;  20.0,123.8,120];
rsmc_wpac_2023_054 = [20.0,123.8,61.6;17.8,123.4,89.6; 16.8,124.0,106.4;18.2,124.4,106.4;19.5,124.3,106.4];
btk_wpac_2023_054 = [19.5,123.6,90;   17.5,123.1,110;  16.2,123.2,115;  17.9,124.0,110;  19.3,122.7,135]; # JTWC best track
btk2_wpac_2023_054 = [19.6,123.6,72.8;17.6,123.0,100.8;16.2,123.2,106.4;17.9,124.0,95.2; 19.3,122.7,106.4]; # JMA best track
myvect = [myvect;my_wpac_2023_054];
rsmcvect = [rsmcvect;rsmc_wpac_2023_054];
btkvect = [btkvect;btk_wpac_2023_054];
btk2vect = [btk2vect;btk2_wpac_2023_054];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 055 ... SAOLA before 2023-08-25-03Z

my_wpac_2023_055 = [18.5,123.6,80;    16.7,124.5,100;  17.9,125.5,105;  20.4,124.4,115;  22.7,121.8,100];
rsmc_wpac_2023_055 = [18.5,123.6,72.8;16.7,124.2,95.2; 17.3,125.5,106.4;19.5,124.7,106.4;21.6,122.2,106.4];
btk_wpac_2023_055 = [18.6,123.2,95;   16.8,122.9,115;  16.9,124.4,90;   18.6,123.3,100;  20.1,121.0,135]; # JTWC best track
btk2_wpac_2023_055 = [18.5,123.2,84.0;16.8,122.9,106.4;16.8,124.4,89.6; 18.5,123.5,95.2; 20.1,121.0,117.6]; # JMA best track
myvect = [myvect;my_wpac_2023_055];
rsmcvect = [rsmcvect;rsmc_wpac_2023_055];
btkvect = [btkvect;btk_wpac_2023_055];
btk2vect = [btk2vect;btk2_wpac_2023_055];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 056 ... SAOLA before 2023-08-25-21Z

my_wpac_2023_056 = [17.5,123.0,100;    17.2,124.0,120;  18.7,124.3,125;  21.6,122.8,105;  23.6,120.2,105];
rsmc_wpac_2023_056 = [17.4,123.2,89.6; 16.8,124.4,106.4;18.4,124.9,112.0;20.8,123.3,112.0;22.8,121.2,112.0];
btk_wpac_2023_056 = [17.1,123.0,120;   16.0,123.8,100;  18.2,123.9,100;  19.9,121.8,140;  20.9,118.7,130]; # JTWC best track
btk2_wpac_2023_056 = [17.2,122.9,106.4;16.0,123.7,95.2; 18.3,123.8,95.2; 19.9,121.9,112.0;20.9,118.7,117.6]; # JMA best track
myvect = [myvect;my_wpac_2023_056];
rsmcvect = [rsmcvect;rsmc_wpac_2023_056];
btkvect = [btkvect;btk_wpac_2023_056];
btk2vect = [btk2vect;btk2_wpac_2023_056];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 057 ... KOINU before 2023-10-01-03Z

my_wpac_2023_057 = [19.2,127.9,80;    20.5,125.7,90;   21.8,123.5,95;  22.3,120.4,100; 23.0,118.5,75];
rsmc_wpac_2023_057 = [19.3,128.0,67.2;20.8,125.8,78.4; 21.8,123.9,95.2;22.0,121.2,95.2;21.9,119.0,89.6];
btk_wpac_2023_057 = [19.1,127.4,105;  20.6,125.2,105;  22.2,123.5,105; 22.0,120.8,110; 21.8,117.7,90]; # JTWC best track
btk2_wpac_2023_057 = [19.2,127.3,84.0;20.5,125.1,100.8;22.2,123.5,95.2;22.0,120.8,89.6;21.8,117.7,84.0]; # JMA best track
myvect = [myvect;my_wpac_2023_057];
rsmcvect = [rsmcvect;rsmc_wpac_2023_057];
btkvect = [btkvect;btk_wpac_2023_057];
btk2vect = [btk2vect;btk2_wpac_2023_057];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 058 ... KOINU before 2023-10-01-09Z

my_wpac_2023_058 = [19.5,127.3,90;    21.2,125.4,100;  22.8,123.2,105;  23.3,121.2,95;  23.4,119.1,70];
rsmc_wpac_2023_058 = [19.5,127.5,72.8;21.1,125.7,95.2; 22.4,123.5,95.2; 22.7,121.5,89.6;22.9,120.0,78.4];
btk_wpac_2023_058 = [19.6,126.7,110;  21.2,124.9,100;  22.1,122.6,115;  22.1,120.0,90;  21.7,116.8,100]; # JTWC best track
btk2_wpac_2023_058 = [19.7,126.6,89.6;21.2,124.9,100.8;22.2,122.7,100.8;22.0,120.0,78.4;21.7,116.9,89.6]; # JMA best track
myvect = [myvect;my_wpac_2023_058];
rsmcvect = [rsmcvect;rsmc_wpac_2023_058];
btkvect = [btkvect;btk_wpac_2023_058];
btk2vect = [btk2vect;btk2_wpac_2023_058];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 059 ... KOINU before 2023-10-01-21Z

my_wpac_2023_059 = [20.2,125.9,95;     22.1,123.9,115; 22.2,121.7,95;   22.9,119.4,90;  22.4,117.7,95];
rsmc_wpac_2023_059 = [20.2,126.0,89.6; 21.9,124.0,95.2;22.6,121.7,89.6; 22.7,119.9,72.8;22.8,118.7,56.0];
btk_wpac_2023_059 = [20.3,125.6,110;   22.0,124.2,90;  21.9,121.2,120;  21.9,118.3,70;  21.2,115.7,105]; # JTWC best track
btk2_wpac_2023_059 = [20.2,125.5,100.8;22.1,124.0,95.2;22.0,121.2,100.8;21.9,118.3,72.8;21.2,115.7,95.2]; # JMA best track
myvect = [myvect;my_wpac_2023_059];
rsmcvect = [rsmcvect;rsmc_wpac_2023_059];
btkvect = [btkvect;btk_wpac_2023_059];
btk2vect = [btk2vect;btk2_wpac_2023_059];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 060 ... KOINU before 2023-10-02-03Z

my_wpac_2023_060 = [20.7,125.4,110;    22.3,123.5,120; 23.1,120.8,95;  23.7,118.6,90;  24.7,117.2,70];
rsmc_wpac_2023_060 = [20.6,125.5,100.8;22.2,123.2,95.2;22.7,120.8,78.4;22.9,119.2,56.0;23.1,118.1,44.8];
btk_wpac_2023_060 = [20.6,125.2,105;   22.2,123.5,105; 22.0,120.8,110; 21.8,117.7,90;  21.1,115.4,100]; # JTWC best track
btk2_wpac_2023_060 = [20.5,125.1,100.8;22.2,123.5,95.2;22.0,120.8,89.6;21.8,117.7,84.0;21.2,115.4,95.2]; # JMA best track
myvect = [myvect;my_wpac_2023_060];
rsmcvect = [rsmcvect;rsmc_wpac_2023_060];
btkvect = [btkvect;btk_wpac_2023_060];
btk2vect = [btk2vect;btk2_wpac_2023_060];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 061 ... KOINU before 2023-10-06-21Z

my_wpac_2023_061 = [21.2,114.7,85;    21.1,113.0,65;  21.1,110.3,40];
rsmc_wpac_2023_061 = [21.2,114.9,84.0;21.1,113.3,67.2;20.6,110.8,39.2];
btk_wpac_2023_061 = [21.4,114.9,85;   21.7,113.6,70;  20.9,111.8,25]; # JTWC best track
btk2_wpac_2023_061 = [21.4,114.9,84.0;21.8,113.7,61.6;20.9,112.4,25.0]; # JMA best track (except day 3 wind)
myvect = [myvect;my_wpac_2023_061];
rsmcvect = [rsmcvect;rsmc_wpac_2023_061];
btkvect = [btkvect;btk_wpac_2023_061];
btk2vect = [btk2vect;btk2_wpac_2023_061];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Wpac 062 ... BOLAVEN before 2023-10-07-21Z

my_wpac_2023_062 = [10.4,151.0,65;    12.3,148.0,75;  15.6,144.8,95;  19.1,142.8,135;  21.6,143.2,140];
rsmc_wpac_2023_062 = [10.4,151.0,61.6;11.9,147.8,84.0;15.0,145.1,95.2;18.7,142.8,100.8;21.2,143.0,106.4];
btk_wpac_2023_062 = [10.7,151.5,50;   13.0,147.5,60;  16.0,144.5,100; 19.7,142.9,165;  24.1,145.4,140]; # JTWC best track
btk2_wpac_2023_062 = [10.1,150.8,56.0;12.7,147.7,67.2;16.0,144.5,95.2;19.7,142.8,128.8;24.0,145.4,117.6]; # JMA best track
myvect = [myvect;my_wpac_2023_062];
rsmcvect = [rsmcvect;rsmc_wpac_2023_062];
btkvect = [btkvect;btk_wpac_2023_062];
btk2vect = [btk2vect;btk2_wpac_2023_062];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 063 ... BOLAVEN before 2023-10-08-21Z

my_wpac_2023_063 = [12.7,148.3,75;    16.3,145.0,100; 20.1,143.2,125;  23.6,145.0,135;  28.3,148.7,115];
rsmc_wpac_2023_063 = [12.7,148.1,78.4;16.2,145.0,95.2;19.8,143.1,106.4;23.0,144.7,112.0;27.6,148.8,106.4];
btk_wpac_2023_063 = [13.0,147.5,60;   16.0,144.5,100; 19.7,142.9,165;  24.1,145.4,140;  31.2,153.2,90]; # JTWC best track
btk2_wpac_2023_063 = [12.7,147.7,67.2;16.0,144.5,95.2;19.7,142.8,128.8;24.0,145.4,117.6;31.3,153.5,95.2]; # JMA best track
myvect = [myvect;my_wpac_2023_063];
rsmcvect = [rsmcvect;rsmc_wpac_2023_063];
btkvect = [btkvect;btk_wpac_2023_063];
btk2vect = [btk2vect;btk2_wpac_2023_063];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 064 ... BOLAVEN before 2023-10-09-03Z

my_wpac_2023_064 = [13.3,147.0,85;    17.3,143.9,105;  21.0,143.1,135;  24.5,145.7,130;  30.0,151.5,105];
rsmc_wpac_2023_064 = [13.4,147.2,84.0;17.3,144.2,100.8;20.7,143.1,112.0;24.1,145.6,112.0;29.6,150.7,100.8];
btk_wpac_2023_064 = [13.7,146.5,70;   17.1,144.0,135;  20.6,143.0,155;  25.6,146.9,125;  34.3,156.3,80]; # JTWC best track
btk2_wpac_2023_064 = [13.7,146.6,72.8;17.1,144.0,112.0;20.6,142.9,128.8;25.5,146.9,112.0;34.1,156.6,89.6]; # JMA best track
myvect = [myvect;my_wpac_2023_064];
rsmcvect = [rsmcvect;rsmc_wpac_2023_064];
btkvect = [btkvect;btk_wpac_2023_064];
btk2vect = [btk2vect;btk2_wpac_2023_064];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 065 ... BOLAVEN before 2023-10-09-21Z

my_wpac_2023_065 = [16.6,144.1,80;    20.1,142.4,105;  23.8,144.5,115;  29.3,149.0,90;   38.7,159.1,80];
rsmc_wpac_2023_065 = [16.3,144.1,89.6;19.8,142.3,106.4;23.3,144.4,112.0;28.6,148.9,106.4;37.4,158.9,100.8];
btk_wpac_2023_065 = [16.0,144.5,100;  19.7,142.9,165;  24.1,145.4,140;  31.2,153.2,90;   42.4,167.8,55]; # JTWC best track
btk2_wpac_2023_065 = [16.0,144.5,95.2;19.7,142.8,128.8;24.0,145.4,117.6;31.3,153.5,95.2; 42.9,168.0,56.0]; # JMA best track (except day 5 wind)
myvect = [myvect;my_wpac_2023_065];
rsmcvect = [rsmcvect;rsmc_wpac_2023_065];
btkvect = [btkvect;btk_wpac_2023_065];
btk2vect = [btk2vect;btk2_wpac_2023_065];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 066 ... TD / 17W before 2023-11-12-21Z

my_wpac_2023_066 = [6.3,139.3,35;    6.7,138.6,35;  8.2,135.9,35;  9.7,132.8,50;  11.5,127.9,50];
rsmc_wpac_2023_066 = [6.6,139.2,39.2;6.8,138.0,39.2;7.8,136.7,44.8;9.1,133.1,44.8;10.9,129.0,50.4];
btk_wpac_2023_066 = [5.4,140.1,25;   5.8,138.6,20;  5.7,137.3,20;  6.9,135.7,15;  9.6,131.5,15]; # JTWC best track (days 1-2 only)
btk2_wpac_2023_066 = btk_wpac_2023_066; # placeholder
myvect = [myvect;my_wpac_2023_066];
rsmcvect = [rsmcvect;rsmc_wpac_2023_066];
btkvect = [btkvect;btk_wpac_2023_066];
btk2vect = [btk2vect;btk2_wpac_2023_066];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 067 ... TD / 17W before 2023-11-13-03Z

my_wpac_2023_067 = [6.5,139.5,35;    7.0,137.8,35;  7.7,134.3,40;  9.5,131.2,40;  11.1,129.3,50];
rsmc_wpac_2023_067 = [6.4,140.0,39.2;6.8,138.2,39.2;7.7,134.6,44.8;9.0,130.7,39.2;10.9,127.9,39.2];
btk_wpac_2023_067 = [5.3,140.0,25;   6.0,137.5,20;  5.9,136.6,20;  8.8,135.8,15;  9.6,130.0,15]; # JTWC best track (days 1-2 only)
btk2_wpac_2023_067 = btk_wpac_2023_067; # placeholder
myvect = [myvect;my_wpac_2023_067];
rsmcvect = [rsmcvect;rsmc_wpac_2023_067];
btkvect = [btkvect;btk_wpac_2023_067];
btk2vect = [btk2vect;btk2_wpac_2023_067];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Shem 001 ... MAL before 2023-11-14-21Z

my_shem_2024_001 = [23.5,179.1,50;    27.4,182.3,40;  31.1,187.7,0];
rsmc_shem_2024_001 = [23.4,179.2,39.2;27.4,182.9,33.6;30.8,186.7,0];
btk_shem_2024_001 = [23.8,180.7,55;   28.0,184.4,35;  30.4,187.6,0]; # operationally from U.S. sources
btk2_shem_2024_001 = btk_shem_2024_001; # placeholder
myvect = [myvect;my_shem_2024_001];
rsmcvect = [rsmcvect;rsmc_shem_2024_001];
btkvect = [btkvect;btk_shem_2024_001];
btk2vect = [btk2vect;btk2_shem_2024_001];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;5;5;5];

# Shem 002 ... MAL before 2023-11-15-03Z

my_shem_2024_002 = [25.0,180.5,60;    29.4,186.6,40;  32.7,192.4,0];
rsmc_shem_2024_002 = [24.6,180.2,39.2;28.8,184.4,33.6;32.3,188.1,0];
btk_shem_2024_002 = [24.9,180.2,50;   29.7,184.8,35;  30.5,188.5,0]; # operationally from U.S. sources
btk2_shem_2024_002 = btk_shem_2024_002; # placeholder
myvect = [myvect;my_shem_2024_002];
rsmcvect = [rsmcvect;rsmc_shem_2024_002];
btkvect = [btkvect;btk_shem_2024_002];
btk2vect = [btk2vect;btk2_shem_2024_002];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;5;5;5];

# Shem 003 ... MAL before 2023-11-15-21Z

my_shem_2024_003 = [28.1,183.8,35;    31.3,189.6,25];
rsmc_shem_2024_003 = [28.0,183.3,33.6;31.1,187.8,33.6];
btk_shem_2024_003 = [28.0,184.4,35;   30.4,187.6,25]; # operationally from U.S. sources
btk2_shem_2024_003 = btk_shem_2024_003; # placeholder
myvect = [myvect;my_shem_2024_003];
rsmcvect = [rsmcvect;rsmc_shem_2024_003];
btkvect = [btkvect;btk_shem_2024_003];
btk2vect = [btk2vect;btk2_shem_2024_003];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;5;5];

# Nio 22 ... BOB 05 / 07B before 2023-11-16-21Z

my_nio_2023_22 = [22.0,90.2,45];
rsmc_nio_2023_22 = [21.6,89.5,37.1];
btk_nio_2023_22 = [23.7,91.7,30]; # JTWC best track
btk2_nio_2023_22 = [23.3,91.3,31.8]; # IMD brief report
myvect = [myvect;my_nio_2023_22];
rsmcvect = [rsmcvect;rsmc_nio_2023_22];
btkvect = [btkvect;btk_nio_2023_22];
btk2vect = [btk2vect;btk2_nio_2023_22];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;2];

# Nio 23 ... BOB 06 / 95B before 2023-12-01-21Z

my_nio_2023_23 = [11.3,82.1,30;    12.8,80.3,45;  14.7,79.0,35;  16.3,79.4,25];
rsmc_nio_2023_23 = [11.6,83.1,37.1;13.1,81.1,42.4;14.9,80.4,47.7;16.9,81.4,37.1];
btk_nio_2023_23 = [10.5,83.6,30;   12.7,82.0,50;  14.3,80.2,65;  16.9,80.4,35]; # JTWC best track
btk2_nio_2023_23 = [11.1,82.7,31.8;12.8,81.6,47.7;14.5,80.3,53.0;16.8,80.4,31.8]; # IMD prelim report
myvect = [myvect;my_nio_2023_23];
rsmcvect = [rsmcvect;rsmc_nio_2023_23];
btkvect = [btkvect;btk_nio_2023_23];
btk2vect = [btk2vect;btk2_nio_2023_23];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Nio 24 ... BOB 06 / 95B before 2023-12-03-03Z

my_nio_2023_24 = [13.3,81.0,40;    15.4,80.5,45;  17.5,81.6,25];
rsmc_nio_2023_24 = [13.5,81.0,47.7;15.5,80.7,47.7;17.5,82.3,26.5];
btk_nio_2023_24 = [13.0,81.5,55;   14.8,80.1,60;  17.3,80.6,30]; # JTWC best track
btk2_nio_2023_24 = [13.1,81.2,47.7;14.9,80.2,53.0;17.4,80.5,21.2]; # IMD prelim report
myvect = [myvect;my_nio_2023_24];
rsmcvect = [rsmcvect;rsmc_nio_2023_24];
btkvect = [btkvect;btk_nio_2023_24];
btk2vect = [btk2vect;btk2_nio_2023_24];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Nio 25 ... MICHAUNG before 2023-12-03-09Z

my_nio_2023_25 = [13.5,81.2,55;    15.6,81.0,50;  17.4,81.6,25];
rsmc_nio_2023_25 = [13.8,80.6,53.0;16.0,80.5,47.7;17.6,82.2,21.2];
btk_nio_2023_25 = [13.5,81.0,55;   15.6,80.1,55;  18.3,81.1,25]; # JTWC best track
btk2_nio_2023_25 = [13.5,80.8,53.0;15.5,80.3,53.0;18.3,81.1,26.5]; # IMD prelim report (except day 3 JTWC btk)
myvect = [myvect;my_nio_2023_25];
rsmcvect = [rsmcvect;rsmc_nio_2023_25];
btkvect = [btkvect;btk_nio_2023_25];
btk2vect = [btk2vect;btk2_nio_2023_25];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Nio 26 ... MICHAUNG before 2023-12-03-15Z

my_nio_2023_26 = [14.3,81.4,55;    16.2,81.1,40];
rsmc_nio_2023_26 = [14.3,80.5,53.0;16.4,80.7,42.4];
btk_nio_2023_26 = [13.9,80.6,60;   16.0,80.1,45]; # JTWC best track
btk2_nio_2023_26 = [14.0,80.5,58.3;16.0,80.3,42.4]; # IMD prelim report
myvect = [myvect;my_nio_2023_26];
rsmcvect = [rsmcvect;rsmc_nio_2023_26];
btkvect = [btkvect;btk_nio_2023_26];
btk2vect = [btk2vect;btk2_nio_2023_26];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Nio 27 ... MICHAUNG before 2023-12-04-03Z

my_nio_2023_27 = [15.2,80.4,65;    17.0,80.7,35];
rsmc_nio_2023_27 = [15.4,80.4,53.0;17.1,81.1,31.8];
btk_nio_2023_27 = [14.8,80.1,60;   17.3,80.6,30]; # JTWC best track
btk2_nio_2023_27 = [14.9,80.2,53.0;17.4,80.5,21.2]; # IMD prelim report
myvect = [myvect;my_nio_2023_27];
rsmcvect = [rsmcvect;rsmc_nio_2023_27];
btkvect = [btkvect;btk_nio_2023_27];
btk2vect = [btk2vect;btk2_nio_2023_27];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Nio 28 ... MICHAUNG before 2023-12-04-09Z

my_nio_2023_28 = [15.6,80.6,50;    17.6,81.0,25];
rsmc_nio_2023_28 = [15.8,80.4,53.0;17.4,81.4,26.5];
btk_nio_2023_28 = [15.6,80.1,55;   18.3,81.1,25]; # JTWC best track
btk2_nio_2023_28 = [15.5,80.3,53.0;18.8,80.5,31.8]; # IMD prelim report (except day 2)
myvect = [myvect;my_nio_2023_28];
rsmcvect = [rsmcvect;rsmc_nio_2023_28];
btkvect = [btkvect;btk_nio_2023_28];
btk2vect = [btk2vect;btk2_nio_2023_28];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Shem 004 ... JASPER before 2023-12-08-09Z

my_shem_2024_004 = [15.6,155.6,95;    16.1,153.8,70;  16.3,151.4,60;  15.9,149.5,65;  15.9,146.8,80];
rsmc_shem_2024_004 = [15.4,155.7,89.6;16.0,153.8,67.2;16.2,151.7,61.6;15.7,149.9,61.6;15.7,147.7,72.8];
btk_shem_2024_004 = [16.0,155.5,80;   16.1,154.0,55;  17.5,149.6,45;  15.9,147.2,60;  15.7,145.8,60]; # operationally from U.S. sources
btk2_shem_2024_004 = [15.7,155.3,78.4;16.9,153.7,61.6;17.5,149.7,50.4;15.9,147.7,50.4;15.9,145.8,61.6]; # BoM spreadsheet (except day 1 wind)
myvect = [myvect;my_shem_2024_004];
rsmcvect = [rsmcvect;rsmc_shem_2024_004];
btkvect = [btkvect;btk_shem_2024_004];
btk2vect = [btk2vect;btk2_shem_2024_004];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 005 ... JASPER before 2023-12-08-15Z

my_shem_2024_005 = [15.9,155.2,80;    16.5,153.1,60;  17.1,150.6,60;  16.7,148.2,65;  16.4,146.0,80];
rsmc_shem_2024_005 = [15.9,155.3,84.0;16.5,152.6,67.2;16.7,150.1,61.6;16.3,147.9,67.2;16.7,145.1,67.2];
btk_shem_2024_005 = [15.8,155.2,70;   17.5,152.9,50;  16.7,149.1,45;  15.5,147.3,50;  15.8,145.0,50]; # operationally from U.S. sources
btk2_shem_2024_005 = [15.9,155.2,72.8;17.3,152.5,56.0;17.0,148.9,50.4;15.7,147.4,50.4;15.9,144.95,44.8]; # BoM spreadsheet
myvect = [myvect;my_shem_2024_005];
rsmcvect = [rsmcvect;rsmc_shem_2024_005];
btkvect = [btkvect;btk_shem_2024_005];
btk2vect = [btk2vect;btk2_shem_2024_005];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 006 ... JASPER before 2023-12-08-21Z

my_shem_2024_006 = [16.3,154.7,65;    16.9,151.8,55;  16.6,149.4,50;  16.7,147.2,60;  16.8,144.7,55];
rsmc_shem_2024_006 = [16.0,154.7,78.4;16.7,151.9,61.6;16.6,149.7,61.6;16.4,147.3,72.8;16.8,144.6,56.0];
btk_shem_2024_006 = [15.9,154.9,60;   17.5,151.5,50;  16.6,148.5,50;  15.6,147.0,45;  15.9,144.4,40]; # operationally from U.S. sources
btk2_shem_2024_006 = [15.9,154.8,67.2;17.4,151.4,50.4;16.7,148.6,50.4;15.5,146.9,50.4;15.94,144.41,33.6]; # BoM spreadsheet
myvect = [myvect;my_shem_2024_006];
rsmcvect = [rsmcvect;rsmc_shem_2024_006];
btkvect = [btkvect;btk_shem_2024_006];
btk2vect = [btk2vect;btk2_shem_2024_006];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 007 ... JASPER before 2023-12-09-09Z

my_shem_2024_007 = [16.8,153.2,55;    17.2,150.1,50;  16.7,147.8,55;  16.6,144.9,55;  16.5,142.0,40];
rsmc_shem_2024_007 = [16.8,153.3,61.6;17.2,150.1,56.0;16.4,148.0,61.6;16.2,145.5,72.8;16.1,143.1,44.8];
btk_shem_2024_007 = [16.1,154.0,55;   17.5,149.6,45;  15.9,147.2,60;  15.7,145.8,60;  16.4,143.6,30]; # operationally from U.S. sources
btk2_shem_2024_007 = [16.9,153.7,61.6;17.5,149.7,50.4;15.9,147.7,50.4;15.9,145.8,61.6;16.0,143.5,28.0]; # BoM spreadsheet
myvect = [myvect;my_shem_2024_007];
rsmcvect = [rsmcvect;rsmc_shem_2024_007];
btkvect = [btkvect;btk_shem_2024_007];
btk2vect = [btk2vect;btk2_shem_2024_007];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 008 ... JASPER before 2023-12-09-15Z

my_shem_2024_008 = [17.2,152.1,55;    17.1,149.2,50;  16.4,147.0,55;  16.4,143.9,45;   16.7,141.2,40];
rsmc_shem_2024_008 = [17.1,152.0,56.0;17.2,149.0,56.0;16.5,146.7,67.2;16.6,143.8,44.8; 16.3,141.2,33.6];
btk_shem_2024_008 = [17.5,152.9,50;   16.7,149.1,45;  15.5,147.3,50;  15.8,145.0,50;   15.8,143.3,25]; # operationally from U.S. sources
btk2_shem_2024_008 = [17.3,152.5,56.0;17.0,148.9,50.4;15.7,147.4,50.4;15.9,144.95,44.8;15.9,143.3,22.8]; # BoM spreadsheet
myvect = [myvect;my_shem_2024_008];
rsmcvect = [rsmcvect;rsmc_shem_2024_008];
btkvect = [btkvect;btk_shem_2024_008];
btk2vect = [btk2vect;btk2_shem_2024_008];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 009 ... JASPER before 2023-12-10-15Z

my_shem_2024_009 = [17.3,149.9,45;    16.7,147.4,55;  16.9,144.2,40;   16.7,141.3,25;  16.0,139.0,35];
rsmc_shem_2024_009 = [17.5,149.2,50.4;16.5,147.2,67.2;16.7,144.3,44.8; 16.3,141.6,28.0;15.2,139.2,39.2];
btk_shem_2024_009 = [16.7,149.1,45;   15.5,147.3,50;  15.8,145.0,50;   15.8,143.3,25;  15.7,142.3,25]; # operationally from U.S. sources
btk2_shem_2024_009 = [17.0,148.9,50.4;15.7,147.4,50.4;15.9,144.95,44.8;15.9,143.3,22.4;15.8,142.4,16.8]; # BoM spreadsheet
myvect = [myvect;my_shem_2024_009];
rsmcvect = [rsmcvect;rsmc_shem_2024_009];
btkvect = [btkvect;btk_shem_2024_009];
btk2vect = [btk2vect;btk2_shem_2024_009];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 010 ... JASPER before 2023-12-11-03Z

my_shem_2024_010 = [16.9,147.8,40;    16.5,145.7,60;  17.5,143.4,30;  16.3,142.0,20;  15.9,138.8,40];
rsmc_shem_2024_010 = [16.7,148.2,56.0;16.5,145.6,67.2;16.8,142.7,33.6;15.7,139.9,33.6;13.9,137.7,39.2];
btk_shem_2024_010 = [16.3,147.9,55;   15.7,146.4,55;  16.2,144.3,35;  15.8,142.9,25;  16.1,141.4,25]; # operationally from U.S. sources
btk2_shem_2024_010 = [16.3,148.0,50.4;15.8,146.3,50.4;16.1,144.2,33.6;15.8,142.8,16.8;16.1,141.8,22.4]; # BoM spreadsheet
myvect = [myvect;my_shem_2024_010];
rsmcvect = [rsmcvect;rsmc_shem_2024_010];
btkvect = [btkvect;btk_shem_2024_010];
btk2vect = [btk2vect;btk2_shem_2024_010];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 011 ... JASPER before 2023-12-11-09Z

my_shem_2024_011 = [16.4,147.1,45;    16.0,144.2,40;  15.8,141.1,20;  13.8,139.2,30;  11.8,135.9,40];
rsmc_shem_2024_011 = [16.4,147.7,56.0;16.4,144.9,56.0;16.5,142.1,33.6;15.1,139.3,33.6;13.5,137.4,39.2];
btk_shem_2024_011 = [15.9,147.2,60;   15.7,145.8,60;  16.4,143.6,30;  15.7,142.5,25;  15.8,141.4,20]; # operationally from U.S. sources (except day 5)
btk2_shem_2024_011 = [15.9,147.7,50.4;15.9,145.8,61.6;16.0,143.5,28.0;15.8,142.5,16.8;15.8,141.4,22.4]; # BoM spreadsheet
myvect = [myvect;my_shem_2024_011];
rsmcvect = [rsmcvect;rsmc_shem_2024_011];
btkvect = [btkvect;btk_shem_2024_011];
btk2vect = [btk2vect;btk2_shem_2024_011];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 012 ... JASPER before 2023-12-11-21Z

my_shem_2024_012 = [16.1,146.4,50;    16.5,143.5,35;    16.2,141.4,20;  14.8,138.8,30;  13.7,137.1,50];
rsmc_shem_2024_012 = [16.4,146.5,61.6;16.6,143.8,33.6;  16.1,141.5,28.0;14.8,139.0,33.6;13.5,137.0,44.8];
btk_shem_2024_012 = [15.6,147.0,45;   15.9,144.4,40;    15.9,143.0,30;  15.7,142.1,25;  15.7,142.4,20]; # operationally from U.S. sources (except day 5)
btk2_shem_2024_012 = [15.5,146.9,50.4;15.94,144.41,33.6;15.8,143.2,22.8;15.9,142.3,22.4;15.7,142.4,22.4]; # BoM spreadsheet
myvect = [myvect;my_shem_2024_012];
rsmcvect = [rsmcvect;rsmc_shem_2024_012];
btkvect = [btkvect;btk_shem_2024_012];
btk2vect = [btk2vect;btk2_shem_2024_012];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 013 ... JASPER before 2023-12-12-09Z

my_shem_2024_013 = [15.7,145.2,55;    16.4,142.4,25;  15.5,140.1,25;  14.8,137.9,35;  14.7,133.9,30];
rsmc_shem_2024_013 = [16.0,145.0,61.6;16.3,142.3,33.6;15.3,140.0,33.6;13.6,137.3,39.2;12.7,135.3,33.6];
btk_shem_2024_013 = [15.7,145.8,60;   16.4,143.6,30;  15.7,142.5,25;  15.8,141.4,20;  16.1,141.9,20]; # operationally from U.S. sources (except days 4+5)
btk2_shem_2024_013 = [15.9,145.8,61.6;16.0,143.5,28.0;15.8,142.5,16.8;15.8,141.4,22.4;16.1,141.9,22.4]; # BoM spreadsheet
myvect = [myvect;my_shem_2024_013];
rsmcvect = [rsmcvect;rsmc_shem_2024_013];
btkvect = [btkvect;btk_shem_2024_013];
btk2vect = [btk2vect;btk2_shem_2024_013];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 014 ... 01 / 95S before 2023-12-30-21Z

my_shem_2024_014 = [21.4,40.0,35;     22.0,43.9,45;    21.2,45.3,25];
rsmc_shem_2024_014 = [21.4,40.1,39.2; 21.5,43.1,39.2;  20.7,45.0,22.4];
btk_shem_2024_014 = [20.6,39.8,35;    21.4,43.8,55;    22.4,48.7,35]; # operationally from U.S. sources
btk2_shem_2024_014 = [20.65,39.8,44.8;21.32,43.96,61.6;21.86,48.55,50.4]; # MFR data table
myvect = [myvect;my_shem_2024_014];
rsmcvect = [rsmcvect;rsmc_shem_2024_014];
btkvect = [btkvect;btk_shem_2024_014];
btk2vect = [btk2vect;btk2_shem_2024_014];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 015 ... 01 / 95S before 2023-12-31-03Z

my_shem_2024_015 = [21.4,40.9,40;      21.7,44.1,35];
rsmc_shem_2024_015 = [21.6,41.1,39.2;  21.7,44.1,33.6];
btk_shem_2024_015 = [20.7,40.8,35;     21.4,44.9,45]; # operationally from U.S. sources
btk2_shem_2024_015 = [20.96,40.66,50.4;21.41,45.01,39.2]; # MFR data table
myvect = [myvect;my_shem_2024_015];
rsmcvect = [rsmcvect;rsmc_shem_2024_015];
btkvect = [btkvect;btk_shem_2024_015];
btk2vect = [btk2vect;btk2_shem_2024_015];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 016 ... ALVARO before 2023-12-31-21Z

my_shem_2024_016 = [21.6,43.5,45;      21.2,47.3,30;    21.7,48.7,25;    24.4,52.9,30];
rsmc_shem_2024_016 = [21.7,44.0,44.8;  21.4,47.8,33.6;  22.6,51.2,39.2;  24.8,54.5,28.0];
btk_shem_2024_016 = [21.4,43.8,55;     22.4,48.7,35;    25.2,52.5,35;    29.6,59.0,35]; # operationally from U.S. sources
btk2_shem_2024_016 = [21.32,43.96,61.6;21.86,48.55,50.4;25.36,52.91,50.4;29.89,59.08,50.4]; # MFR data table
myvect = [myvect;my_shem_2024_016];
rsmcvect = [rsmcvect;rsmc_shem_2024_016];
btkvect = [btkvect;btk_shem_2024_016];
btk2vect = [btk2vect;btk2_shem_2024_016];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 017 ... ALVARO before 2024-01-01-21Z

my_shem_2024_017 = [21.9,47.3,25;      23.7,50.7,35;    26.6,54.3,25];
rsmc_shem_2024_017 = [21.6,47.7,28.0;  23.1,51.0,44.8;  25.2,54.7,28.0];
btk_shem_2024_017 = [22.4,48.7,35;     25.2,52.5,35;    29.6,59.0,35]; # operationally from U.S. sources
btk2_shem_2024_017 = [21.86,48.55,50.4;25.36,52.91,50.4;29.89,59.08,50.4]; # MFR data table
myvect = [myvect;my_shem_2024_017];
rsmcvect = [rsmcvect;rsmc_shem_2024_017];
btkvect = [btkvect;btk_shem_2024_017];
btk2vect = [btk2vect;btk2_shem_2024_017];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 018 ... 02 / 97S before 2024-01-12-03Z

my_shem_2024_018 = [15.1,56.4,45;      18.4,54.1,70;    20.2,55.1,90;    22.5,56.2,90;    25.2,59.1,80];
rsmc_shem_2024_018 = [14.9,57.1,44.8;  17.8,55.3,72.8;  19.3,56.5,95.2;  20.9,58.3,100.8; 22.9,62.0,84.0];
btk_shem_2024_018 = [14.5,55.8,50;     18.1,53.5,70;    20.5,54.5,90;    22.1,57.8,65;    24.2,62.6,55]; # operationally from U.S. sources
btk2_shem_2024_018 = [14.79,55.77,39.2;18.29,53.46,78.4;20.36,54.27,84.0;22.26,58.09,72.8;23.84,62.58,61.6]; # MFR data table
myvect = [myvect;my_shem_2024_018];
rsmcvect = [rsmcvect;rsmc_shem_2024_018];
btkvect = [btkvect;btk_shem_2024_018];
btk2vect = [btk2vect;btk2_shem_2024_018];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 019 ... 02 / 05S before 2024-01-12-21Z

my_shem_2024_019 = [17.0,54.0,65;      19.4,54.0,95;   20.7,56.2,100;   21.7,58.6,90;    21.9,61.3,70];
rsmc_shem_2024_019 = [17.2,53.9,72.8;  19.8,54.2,95.2; 21.3,56.5,89.6;  21.8,58.8,89.6;  22.3,62.0,84.0];
btk_shem_2024_019 = [17.7,53.7,65;     20.1,54.2,90;   21.8,56.9,65;    23.3,61.1,55;    24.3,64.8,45]; # operationally from U.S. sources
btk2_shem_2024_019 = [17.52,53.78,67.2;20.11,53.8,84.0;21.54,56.88,72.8;23.45,61.53,67.2;23.91,64.61,50.4]; # MFR data table
myvect = [myvect;my_shem_2024_019];
rsmcvect = [rsmcvect;rsmc_shem_2024_019];
btkvect = [btkvect;btk_shem_2024_019];
btk2vect = [btk2vect;btk2_shem_2024_019];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 020 ... BELAL before 2024-01-13-03Z

my_shem_2024_020 = [17.8,54.0,75;      20.3,55.1,100;   21.3,57.1,95;    21.8,59.5,85;    21.4,61.3,70];
rsmc_shem_2024_020 = [17.8,53.9,84.0;  20.1,55.0,106.4; 21.3,57.1,89.6;  21.6,60.0,84.0;  21.5,62.2,78.4];
btk_shem_2024_020 = [18.1,53.5,70;     20.5,54.5,90;    22.1,57.8,65;    24.2,62.6,55;    24.0,64.9,45]; # operationally from U.S. sources
btk2_shem_2024_020 = [18.29,53.46,78.4;20.36,54.27,84.0;22.26,58.09,72.8;23.84,62.58,61.6;23.87,65.15,50.4]; # MFR data table
myvect = [myvect;my_shem_2024_020];
rsmcvect = [rsmcvect;rsmc_shem_2024_020];
btkvect = [btkvect;btk_shem_2024_020];
btk2vect = [btk2vect;btk2_shem_2024_020];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 021 ... BELAL before 2024-01-13-21Z

my_shem_2024_021 = [20.0,53.8,95;     21.3,56.4,85;    22.1,59.2,85;    22.5,61.3,80;    22.8,62.7,75];
rsmc_shem_2024_021 = [20.0,53.8,112.0;21.4,56.5,95.2;  22.2,59.1,84.0;  22.8,61.5,78.4;  22.9,62.7,72.8];
btk_shem_2024_021 = [20.1,54.2,90;    21.8,56.9,65;    23.3,61.1,55;    24.3,64.8,45;    23.6,65.1,35]; # operationally from U.S. sources
btk2_shem_2024_021 = [20.11,53.8,84.0;21.54,56.88,72.8;23.45,61.53,67.2;23.91,64.61,50.4;23.6,64.98,44.8]; # MFR data table
myvect = [myvect;my_shem_2024_021];
rsmcvect = [rsmcvect;rsmc_shem_2024_021];
btkvect = [btkvect;btk_shem_2024_021];
btk2vect = [btk2vect;btk2_shem_2024_021];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 022 ... BELAL before 2024-01-14-21Z

my_shem_2024_022 = [21.5,56.5,85;      22.3,59.7,75;    22.1,62.1,70;    21.4,62.8,75;   21.3,63.0,80];
rsmc_shem_2024_022 = [21.6,56.5,89.6;  22.5,59.7,84.0;  22.3,62.4,84.0;  21.6,63.0,84.0; 21.7,62.0,84.0];
btk_shem_2024_022 = [21.8,56.9,65;     23.3,61.1,55;    24.3,64.8,45;    23.6,65.1,35;   23.9,63.0,30]; # operationally from U.S. sources
btk2_shem_2024_022 = [21.54,56.88,72.8;23.45,61.53,67.2;23.91,64.61,50.4;23.6,64.98,44.8;23.62,63.0,28.0]; # MFR data table
myvect = [myvect;my_shem_2024_022];
rsmcvect = [rsmcvect;rsmc_shem_2024_022];
btkvect = [btkvect;btk_shem_2024_022];
btk2vect = [btk2vect;btk2_shem_2024_022];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 023 ... BELAL before 2024-01-15-03Z

my_shem_2024_023 = [21.9,57.2,70;      22.4,60.7,70;    22.2,63.3,70;    22.1,64.4,65;    23.8,63.3,70];
rsmc_shem_2024_023 = [21.9,57.2,84.0;  22.5,60.5,84.0;  22.2,62.8,72.8;  21.6,62.8,67.2;  21.8,61.8,67.2];
btk_shem_2024_023 = [22.1,57.8,65;     24.2,62.6,55;    24.0,64.9,45;    23.3,64.6,30;    24.3,62.4,25]; # operationally from U.S. sources
btk2_shem_2024_023 = [22.26,58.09,72.8;23.84,62.58,61.6;23.87,65.15,50.4;23.35,64.38,33.6;24.34,62.38,28.0]; # MFR data table
myvect = [myvect;my_shem_2024_023];
rsmcvect = [rsmcvect;rsmc_shem_2024_023];
btkvect = [btkvect;btk_shem_2024_023];
btk2vect = [btk2vect;btk2_shem_2024_023];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 024 ... BELAL before 2024-01-15-09Z

my_shem_2024_024 = [22.1,58.3,75;      22.6,61.6,75;    22.2,63.2,70;    21.8,62.9,50;    21.2,62.0,35];
rsmc_shem_2024_024 = [22.2,58.1,84.0;  22.5,61.4,84.0;  22.1,63.2,72.8;  21.9,62.8,56.0;  21.9,62.3,39.2];
btk_shem_2024_024 = [22.8,59.0,50;     24.1,63.0,50;    23.6,65.5,45;    23.3,63.9,35;    24.7,62.0,25]; # operationally from U.S. sources
btk2_shem_2024_024 = [22.83,59.11,67.2;23.93,63.19,56.0;23.79,65.63,56.0;23.23,63.94,28.0;24.9,61.96,28.0]; # MFR data table
myvect = [myvect;my_shem_2024_024];
rsmcvect = [rsmcvect;rsmc_shem_2024_024];
btkvect = [btkvect;btk_shem_2024_024];
btk2vect = [btk2vect;btk2_shem_2024_024];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 025 ... ANGGREK before 2024-01-15-21Z ... relative to BoM (BMKG unavailable)

my_shem_2024_025 = [9.3,94.2,50;    10.0,94.5,60;  11.7,94.2,55;  12.2,93.9,45;  12.4,94.2,35];
rsmc_shem_2024_025 = [9.3,94.1,56.0;10.5,94.4,67.2;12.0,94.3,61.6;12.6,94.5,50.4;12.5,94.8,39.2];
btk_shem_2024_025 = [9.5,94.2,45;   10.6,94.0,45;  12.2,93.2,45;  12.7,92.4,55;  12.0,92.6,70]; # operationally from U.S. sources
btk2_shem_2024_025 = [9.6,94.0,44.8;10.5,94.0,39.2;12.2,93.4,50.4;12.4,92.8,67.2;12.1,92.3,67.2]; # BoM best track
myvect = [myvect;my_shem_2024_025];
rsmcvect = [rsmcvect;rsmc_shem_2024_025];
btkvect = [btkvect;btk_shem_2024_025];
btk2vect = [btk2vect;btk2_shem_2024_025];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 026 ... BELAL before 2024-01-16-03Z

my_shem_2024_026 = [22.9,61.4,70;      22.9,64.0,55;    23.2,64.7,45;    24.4,64.1,30;    25.8,65.2,25];
rsmc_shem_2024_026 = [22.8,61.0,72.8;  22.8,63.7,67.2;  23.3,64.1,44.8;  23.5,62.2,28.0;  24.2,61.6,28.0];
btk_shem_2024_026 = [24.2,62.6,55;     24.0,64.9,45;    23.3,64.6,30;    24.3,62.4,25;    25.88,59.73,35]; # operationally from U.S. sources (except day 5 MFR)
btk2_shem_2024_026 = [23.84,62.58,61.6;23.87,65.15,50.4;23.35,64.38,33.6;24.34,62.38,28.0;25.88,59.73,33.6]; # MFR data table
myvect = [myvect;my_shem_2024_026];
rsmcvect = [rsmcvect;rsmc_shem_2024_026];
btkvect = [btkvect;btk_shem_2024_026];
btk2vect = [btk2vect;btk2_shem_2024_026];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 027 ... ANGGREK before 2024-01-16-03Z ... relative to BoM (BMKG unavailable)

my_shem_2024_027 = [9.8,94.4,50;    11.1,94.8,60;  12.9,94.3,60;  13.5,93.6,45;  13.5,93.3,25];
rsmc_shem_2024_027 = [9.7,94.3,56.0;11.3,94.6,67.2;12.7,94.5,67.2;12.8,94.3,56.0;12.6,94.1,33.6];
btk_shem_2024_027 = [9.8,94.1,40;   10.8,93.9,45;  12.4,92.8,50;  12.4,92.8,60;  12.0,92.3,65]; # operationally from U.S. sources
btk2_shem_2024_027 = [9.6,94.1,39.2;11.0,93.8,39.2;12.4,93.2,50.4;12.4,92.8,67.2;12.2,92.2,61.6]; # BoM best track
myvect = [myvect;my_shem_2024_027];
rsmcvect = [rsmcvect;rsmc_shem_2024_027];
btkvect = [btkvect;btk_shem_2024_027];
btk2vect = [btk2vect;btk2_shem_2024_027];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 028 ... BELAL before 2024-01-16-09Z

my_shem_2024_028 = [23.7,63.1,50;      23.4,64.0,50;    24.2,62.6,40;    27.8,62.8,25;   31.1,67.1,25];
rsmc_shem_2024_028 = [23.6,63.0,61.6;  23.4,64.4,56.0;  23.6,63.2,44.8;  25.9,63.0,33.6; 28.7,67.3,28.0];
btk_shem_2024_028 = [24.1,63.0,50;     23.6,65.5,45;    23.3,63.9,35;    24.7,62.0,25;   26.56,58.57,35]; # operationally from U.S. sources (except day 5 MFR)
btk2_shem_2024_028 = [23.93,63.19,56.0;23.79,65.63,56.0;23.23,63.94,28.0;24.9,61.96,28.0;26.56,58.57,33.6]; # MFR data table
myvect = [myvect;my_shem_2024_028];
rsmcvect = [rsmcvect;rsmc_shem_2024_028];
btkvect = [btkvect;btk_shem_2024_028];
btk2vect = [btk2vect;btk2_shem_2024_028];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 029 ... ANGGREK before 2024-01-16-09Z ... relative to BoM (BMKG unavailable)

my_shem_2024_029 = [10.1,94.3,50;    11.6,94.6,55;  12.8,94.1,55;  13.1,93.7,40;  12.7,93.5,30];
rsmc_shem_2024_029 = [10.1,94.4,61.6;11.9,94.6,67.2;12.8,94.4,61.6;12.8,94.3,39.2;12.6,94.0,33.6];
btk_shem_2024_029 = [10.1,94.0,50;   11.5,93.8,45;  12.4,92.9,60;  12.5,92.6,70;  12.0,92.2,70]; # operationally from U.S. sources
btk2_shem_2024_029 = [9.9,94.2,33.6; 11.3,93.7,39.2;12.6,93.1,56.0;12.5,92.5,67.2;12.1,92.0,56.0]; # BoM best track
myvect = [myvect;my_shem_2024_029];
rsmcvect = [rsmcvect;rsmc_shem_2024_029];
btkvect = [btkvect;btk_shem_2024_029];
btk2vect = [btk2vect;btk2_shem_2024_029];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 030 ... ANGGREK before 2024-01-16-21Z ... relative to BoM (BMKG unavailable)

my_shem_2024_030 = [10.5,94.4,45;    12.1,94.1,50;  12.6,93.1,40;  12.3,92.5,35;  11.7,92.1,30];
rsmc_shem_2024_030 = [10.8,94.5,56.0;12.6,93.9,50.4;13.3,93.4,44.8;13.0,92.7,33.6;12.6,91.7,33.6];
btk_shem_2024_030 = [10.6,94.0,45;   12.2,93.2,45;  12.7,92.4,55;  12.0,92.6,70;  12.3,91.8,50]; # operationally from U.S. sources
btk2_shem_2024_030 = [10.5,94.0,39.2;12.2,93.4,50.4;12.4,92.8,56.0;12.1,92.3,67.2;12.3,91.7,39.2]; # BoM best track
myvect = [myvect;my_shem_2024_030];
rsmcvect = [rsmcvect;rsmc_shem_2024_030];
btkvect = [btkvect;btk_shem_2024_030];
btk2vect = [btk2vect;btk2_shem_2024_030];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 031 ... BELAL before 2024-01-17-03Z

my_shem_2024_031 = [24.1,64.7,50;      23.8,63.0,30;    25.8,61.0,20];
rsmc_shem_2024_031 = [24.0,64.5,50.4;  23.8,63.0,33.6;  25.3,60.8,28.0];
btk_shem_2024_031 = [24.0,64.9,45;     23.3,64.6,30;    24.3,62.3,25]; # operationally from U.S. sources
btk2_shem_2024_031 = [23.87,65.15,50.4;23.35,64.38,33.6;24.34,62.38,28.0]; # MFR data table
myvect = [myvect;my_shem_2024_031];
rsmcvect = [rsmcvect;rsmc_shem_2024_031];
btkvect = [btkvect;btk_shem_2024_031];
btk2vect = [btk2vect;btk2_shem_2024_031];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 032 ... ANGGREK before 2024-01-17-03Z ... relative to BoM (BMKG unavailable)

my_shem_2024_032 = [11.3,94.3,45;    12.7,93.5,45;  13.3,92.3,40;  13.4,90.9,35;  13.1,89.4,35];
rsmc_shem_2024_032 = [11.5,94.2,61.6;13.0,93.6,50.4;13.2,93.0,44.8;12.8,91.9,33.6;12.6,90.5,33.6];
btk_shem_2024_032 = [10.8,93.9,45;   12.4,92.8,50;  12.4,92.8,60;  12.0,92.3,65;  12.6,91.8,45]; # operationally from U.S. sources
btk2_shem_2024_032 = [11.0,93.8,39.2;12.4,93.2,50.4;12.4,92.8,67.2;12.2,92.2,61.6;12.3,91.7,39.2]; # BoM best track
myvect = [myvect;my_shem_2024_032];
rsmcvect = [rsmcvect;rsmc_shem_2024_032];
btkvect = [btkvect;btk_shem_2024_032];
btk2vect = [btk2vect;btk2_shem_2024_032];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 033 ... BELAL before 2024-01-17-09Z

my_shem_2024_033 = [24.4,65.1,45;      24.6,63.7,25;    26.4,60.9,20];
rsmc_shem_2024_033 = [24.3,65.1,50.4;  24.5,63.2,33.6;  26.0,60.1,22.4];
btk_shem_2024_033 = [23.6,65.5,45;     23.3,63.9,35;    24.7,62.0,25]; # operationally from U.S. sources
btk2_shem_2024_033 = [23.79,65.63,56.0;23.23,63.94,28.0;24.9,61.96,28.0]; # MFR data table
myvect = [myvect;my_shem_2024_033];
rsmcvect = [rsmcvect;rsmc_shem_2024_033];
btkvect = [btkvect;btk_shem_2024_033];
btk2vect = [btk2vect;btk2_shem_2024_033];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 034 ... ANGGREK before 2024-01-17-09Z

my_shem_2024_034 = [11.8,93.9,55;    13.1,93.6,45;  13.2,92.4,40;  12.8,91.2,30;  12.5,89.9,30];
rsmc_shem_2024_034 = [12.1,94.0,61.6;13.3,93.5,50.4;13.3,92.9,44.8;12.7,91.5,39.2;12.7,90.0,33.6];
btk_shem_2024_034 = [11.5,93.8,45;   12.4,92.9,60;  12.5,92.6,75;  12.0,92.2,70;  12.3,91.5,45]; # operationally from U.S. sources
btk2_shem_2024_034 = [11.3,93.7,39.2;12.6,93.1,56.0;12.5,92.5,67.2;12.1,92.0,56.0;12.2,91.5,39.2]; # BoM best track
myvect = [myvect;my_shem_2024_034];
rsmcvect = [rsmcvect;rsmc_shem_2024_034];
btkvect = [btkvect;btk_shem_2024_034];
btk2vect = [btk2vect;btk2_shem_2024_034];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 035 ... ANGGREK before 2024-01-17-21Z

my_shem_2024_035 = [12.0,93.8,45;    12.7,93.4,40;  12.6,92.7,40;  12.3,91.7,40;  12.4,90.7,30];
rsmc_shem_2024_035 = [12.0,93.8,50.4;13.0,93.3,44.8;12.7,92.7,44.8;12.4,91.6,33.6;12.5,90.5,33.6];
btk_shem_2024_035 = [12.2,93.2,45;   12.7,92.4,55;  12.0,92.6,70;  12.3,91.8,50;  12.6,91.4,40]; # operationally from U.S. sources
btk2_shem_2024_035 = [12.2,93.4,50.4;12.4,92.8,56.0;12.1,92.3,67.2;12.3,91.7,39.2;12.6,91.5,39.2]; # BoM best track
myvect = [myvect;my_shem_2024_035];
rsmcvect = [rsmcvect;rsmc_shem_2024_035];
btkvect = [btkvect;btk_shem_2024_035];
btk2vect = [btk2vect;btk2_shem_2024_035];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 036 ... BELAL before 2024-01-18-03Z

my_shem_2024_036 = [23.4,64.5,30;      24.5,61.8,25;    26.6,58.2,30];
rsmc_shem_2024_036 = [23.5,64.4,33.6;  24.8,61.6,28.0;  26.7,57.7,33.6];
btk_shem_2024_036 = [23.3,64.6,30;     24.3,62.4,25;    25.88,59.73,35]; # operationally from U.S. sources (except day 3 MFR)
btk2_shem_2024_036 = [23.35,64.38,33.6;24.34,62.38,28.0;25.88,59.73,33.6]; # MFR data table
myvect = [myvect;my_shem_2024_036];
rsmcvect = [rsmcvect;rsmc_shem_2024_036];
btkvect = [btkvect;btk_shem_2024_036];
btk2vect = [btk2vect;btk2_shem_2024_036];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 037 ... ANGGREK before 2024-01-18-03Z

my_shem_2024_037 = [12.4,93.3,45;    12.8,92.4,45;  12.9,91.3,40;  12.6,90.0,45;  12.2,89.1,45];
rsmc_shem_2024_037 = [12.5,93.3,50.4;12.8,92.8,44.8;12.4,92.0,50.4;12.2,90.8,44.8;12.2,89.9,33.6];
btk_shem_2024_037 = [12.4,92.8,50;   12.4,92.8,60;  12.0,92.3,65;  12.6,91.8,45;  12.7,91.4,40]; # operationally from U.S. sources
btk2_shem_2024_037 = [12.4,93.2,50.4;12.4,92.8,67.2;12.2,92.2,61.6;12.3,91.7,39.2;12.7,91.6,39.2]; # BoM best track
myvect = [myvect;my_shem_2024_037];
rsmcvect = [rsmcvect;rsmc_shem_2024_037];
btkvect = [btkvect;btk_shem_2024_037];
btk2vect = [btk2vect;btk2_shem_2024_037];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 038 ... ANGGREK before 2024-01-18-21Z

my_shem_2024_038 = [12.8,92.8,45;    12.4,92.4,45;  11.9,91.8,35;  11.5,92.1,35;  11.5,91.9,30];
rsmc_shem_2024_038 = [12.8,92.9,50.4;12.5,92.4,50.4;11.8,92.3,39.2;11.6,92.6,33.6;11.9,92.4,33.6];
btk_shem_2024_038 = [12.7,92.4,55;   12.0,92.6,70;  12.3,91.8,50;  12.6,91.4,40;  13.5,91.5,50]; # operationally from U.S. sources
btk2_shem_2024_038 = [12.4,92.8,56.0;12.1,92.3,67.2;12.3,91.7,39.2;12.6,91.5,39.2;13.6,91.3,44.8]; # BoM best track
myvect = [myvect;my_shem_2024_038];
rsmcvect = [rsmcvect;rsmc_shem_2024_038];
btkvect = [btkvect;btk_shem_2024_038];
btk2vect = [btk2vect;btk2_shem_2024_038];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 039 ... ANGGREK before 2024-01-19-03Z

my_shem_2024_039 = [12.9,92.0,45;    12.4,91.2,45;  12.5,90.3,45;  12.6,90.3,45;  12.3,89.4,45];
rsmc_shem_2024_039 = [12.7,92.5,44.8;12.4,92.0,50.4;11.9,91.8,39.2;11.7,92.0,33.6;11.5,91.9,33.6];
btk_shem_2024_039 = [12.4,92.8,60;   12.0,92.3,65;  12.6,91.8,45;  12.7,91.4,40;  13.8,91.3,55]; # operationally from U.S. sources
btk2_shem_2024_039 = [12.4,92.8,67.2;12.2,92.2,61.6;12.3,91.7,39.2;12.7,91.6,39.2;13.9,91.2,44.8]; # BoM best track
myvect = [myvect;my_shem_2024_039];
rsmcvect = [rsmcvect;rsmc_shem_2024_039];
btkvect = [btkvect;btk_shem_2024_039];
btk2vect = [btk2vect;btk2_shem_2024_039];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 040 ... ANGGREK before 2024-01-19-09Z

my_shem_2024_040 = [12.4,92.1,50;    11.8,92.0,50;  11.6,91.3,45;  11.5,91.8,45;  11.2,91.9,50];
rsmc_shem_2024_040 = [12.7,92.2,44.8;12.1,91.8,44.8;11.7,91.8,39.2;11.6,91.8,33.6;11.3,91.6,33.6];
btk_shem_2024_040 = [12.5,92.6,70;   12.0,92.2,70;  12.3,91.5,45;  13.0,91.6,40;  14.1,91.1,65]; # operationally from U.S. sources
btk2_shem_2024_040 = [12.5,92.5,67.2;12.1,92.0,56.0;12.2,91.5,39.2;13.0,91.5,44.8;14.0,91.0,56.0]; # BoM best track
myvect = [myvect;my_shem_2024_040];
rsmcvect = [rsmcvect;rsmc_shem_2024_040];
btkvect = [btkvect;btk_shem_2024_040];
btk2vect = [btk2vect;btk2_shem_2024_040];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 041 ... ANGGREK before 2024-01-19-21Z

my_shem_2024_041 = [12.1,92.0,55;    11.5,91.5,40;  11.4,91.8,30;  11.3,92.2,40;  11.8,92.1,35];
rsmc_shem_2024_041 = [12.2,91.9,50.4;11.7,91.5,39.2;11.6,91.8,33.6;11.7,92.0,33.6;11.9,92.2,33.6];
btk_shem_2024_041 = [12.0,92.6,70;   12.3,91.8,50;  12.6,91.4,40;  13.5,91.5,50;  14.4,91.1,80]; # operationally from U.S. sources
btk2_shem_2024_041 = [12.1,92.3,67.2;12.3,91.7,39.2;12.6,91.5,39.2;13.6,91.3,44.8;14.5,91.0,84.0]; # BoM best track
myvect = [myvect;my_shem_2024_041];
rsmcvect = [rsmcvect;rsmc_shem_2024_041];
btkvect = [btkvect;btk_shem_2024_041];
btk2vect = [btk2vect;btk2_shem_2024_041];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 042 ... ANGGREK before 2024-01-20-15Z

my_shem_2024_042 = [11.9,91.7,50;    11.8,90.9,40;  12.2,90.2,40;  12.6,90.2,45;  13.8,89.4,50];
rsmc_shem_2024_042 = [11.9,91.6,44.8;11.9,90.8,39.2;12.2,90.1,39.2;12.5,90.0,39.2;13.7,89.2,39.2];
btk_shem_2024_042 = [12.2,92.0,65;   12.5,91.6,45;  13.3,91.6,45;  14.2,91.0,75;  15.5,89.2,80]; # operationally from U.S. sources
btk2_shem_2024_042 = [12.3,91.8,44.8;12.5,91.4,39.2;13.4,91.5,44.8;14.2,90.9,78.4;15.5,89.47,84.0]; # BoM best track (days 1-4), MFR data table (day 5)
myvect = [myvect;my_shem_2024_042];
rsmcvect = [rsmcvect;rsmc_shem_2024_042];
btkvect = [btkvect;btk_shem_2024_042];
btk2vect = [btk2vect;btk2_shem_2024_042];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 043 ... ANGGREK before 2024-01-21-03Z

my_shem_2024_043 = [11.8,91.8,50;    12.0,91.1,50;  12.8,90.4,55;  14.0,89.9,65;  15.5,88.2,65];
rsmc_shem_2024_043 = [12.0,91.5,39.2;12.4,90.6,44.8;12.8,89.9,50.4;13.5,89.3,50.4;15.2,87.1,50.4];
btk_shem_2024_043 = [12.6,91.8,45;   12.7,91.4,40;  13.8,91.3,55;  14.7,90.8,80;  16.6,87.5,105]; # operationally from U.S. sources
btk2_shem_2024_043 = [12.3,91.7,39.2;12.7,91.6,39.2;13.9,91.2,44.8;14.8,90.7,84.0;16.42,87.58,100.8]; # BoM best track (days 1-4), MFR data table (day 5)
myvect = [myvect;my_shem_2024_043];
rsmcvect = [rsmcvect;rsmc_shem_2024_043];
btkvect = [btkvect;btk_shem_2024_043];
btk2vect = [btk2vect;btk2_shem_2024_043];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 044 ... ANGGREK before 2024-01-21-09Z

my_shem_2024_044 = [12.1,91.6,65;    12.5,90.9,65;  13.2,90.1,60;  14.7,89.1,65;  16.8,86.2,70];
rsmc_shem_2024_044 = [12.1,91.4,44.8;12.6,90.5,44.8;12.9,89.9,50.4;13.9,89.1,56.0;15.7,86.3,56.0];
btk_shem_2024_044 = [12.3,91.5,45;   13.0,91.6,40;  14.1,91.1,65;  15.1,90.0,80;  16.9,86.5,105]; # operationally from U.S. sources
btk2_shem_2024_044 = [12.2,91.5,39.2;13.0,91.5,44.8;14.0,91.0,56.0;15.1,90.1,84.0;16.85,86.42,100.8]; # BoM best track (days 1-4), MFR data table (day 5)
myvect = [myvect;my_shem_2024_044];
rsmcvect = [rsmcvect;rsmc_shem_2024_044];
btkvect = [btkvect;btk_shem_2024_044];
btk2vect = [btk2vect;btk2_shem_2024_044];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 045 ... 05U/07P before 2024-01-23-03Z

my_shem_2024_045 = [17.5,153.4,45;    18.6,150.6,55;  20.3,146.9,45;  22.8,146.9,30;  23.3,148.1,25];
rsmc_shem_2024_045 = [17.3,152.4,44.8;18.3,149.1,61.6;20.8,145.6,33.6;22.1,145.4,33.6;22.2,146.6,28.0];
btk_shem_2024_045 = [17.3,153.0,40;   18.2,149.1,55;  21.2,143.7,30;  22.4,141.9,25;  21.1,142.4,25]; # operationally from U.S. sources
btk2_shem_2024_045 = [17.1,152.7,44.8;18.1,149.4,56.0;20.8,144.0,28.0;22.4,141.9,25.0;21.1,142.4,25.0]; # BoM best track (except days 4-5)
myvect = [myvect;my_shem_2024_045];
rsmcvect = [rsmcvect;rsmc_shem_2024_045];
btkvect = [btkvect;btk_shem_2024_045];
btk2vect = [btk2vect;btk2_shem_2024_045];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 046 ... ANGGREK before 2024-01-23-03Z

my_shem_2024_046 = [13.4,91.1,60;    14.8,90.5,80;  17.3,87.8,65;     19.6,84.2,60;   21.2,79.8,55];
rsmc_shem_2024_046 = [13.7,91.0,56.0;14.6,90.1,78.4;16.7,87.2,61.6;   19.3,83.1,56.0; 20.8,78.7,50.4];
btk_shem_2024_046 = [13.8,91.3,55;   14.7,90.8,80;  16.6,87.5,105;    18.7,83.2,100;  20.0,77.9,100]; # operationally from U.S. sources
btk2_shem_2024_046 = [13.9,91.2,44.8;14.8,90.7,84.0;16.42,87.58,100.8;18.7,83.03,95.2;19.9,77.93,100.8]; # BoM best track (days 1-2), MFR data table (days 3-5)
myvect = [myvect;my_shem_2024_046];
rsmcvect = [rsmcvect;rsmc_shem_2024_046];
btkvect = [btkvect;btk_shem_2024_046];
btk2vect = [btk2vect;btk2_shem_2024_046];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 047 ... KIRRILY before 2024-01-24-21Z

my_shem_2024_047 = [19.7,145.9,45;    21.8,143.1,25;  21.0,141.6,25];
rsmc_shem_2024_047 = [19.6,145.9,44.8;21.5,143.0,28.0;20.8,141.5,28.0];
btk_shem_2024_047 = [20.2,144.9,40;   22.6,142.2,25;  21.2,142.0,25]; # operationally from U.S. sources
btk2_shem_2024_047 = [19.6,145.2,33.6;22.6,142.2,25.0;21.2,142.0,25.0]; # BoM best track (day 1 only)
myvect = [myvect;my_shem_2024_047];
rsmcvect = [rsmcvect;rsmc_shem_2024_047];
btkvect = [btkvect;btk_shem_2024_047];
btk2vect = [btk2vect;btk2_shem_2024_047];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;4;4;4];

# Shem 048 ... KIRRILY before 2024-01-25-03Z
# (no comparable BoM products)

# Shem 049 ... ANGGREK before 2024-01-25-03Z

my_shem_2024_049 = [16.6,87.8,95;       18.7,83.7,100;  19.7,78.3,100;   22.1,72.8,100;    26.6,70.3,75];
rsmc_shem_2024_049 = [16.7,87.7,100.8;  18.8,83.6,106.4;19.9,78.7,106.4; 22.2,73.1,100.8;  26.7,70.8,78.4];
btk_shem_2024_049 = [16.6,87.5,105;     18.7,83.2,100;  20.0,77.9,100;   22.7,71.9,110;    27.9,71.8,95]; # operationally from U.S. sources
btk2_shem_2024_049 = [16.42,87.58,100.8;18.7,83.03,95.2;19.9,77.93,100.8;22.59,71.97,112.0;27.91,71.57,95.2]; # MFR data table
myvect = [myvect;my_shem_2024_049];
rsmcvect = [rsmcvect;rsmc_shem_2024_049];
btkvect = [btkvect;btk_shem_2024_049];
btk2vect = [btk2vect;btk2_shem_2024_049];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 050 ... CANDICE before 2024-01-25-09Z

my_shem_2024_050 = [25.7,61.0,50;      29.0,59.2,45;    34.5,57.1,35];
rsmc_shem_2024_050 = [25.9,60.9,56.0;  28.8,58.4,50.4;  33.2,55.9,33.6];
btk_shem_2024_050 = [26.0,61.8,45;     28.6,60.5,30;    33.35,59.44,35]; # operationally from U.S. sources (except day 3 MFR)
btk2_shem_2024_050 = [25.97,61.68,61.6;28.43,60.58,44.8;33.35,59.44,33.6]; # MFR data table
myvect = [myvect;my_shem_2024_050];
rsmcvect = [rsmcvect;rsmc_shem_2024_050];
btkvect = [btkvect;btk_shem_2024_050];
btk2vect = [btk2vect;btk2_shem_2024_050];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 051 ... ANGGREK before 2024-01-25-09Z

my_shem_2024_051 = [17.1,86.8,75;       18.8,82.5,95;    19.8,77.1,95;     22.5,71.8,90;     28.5,71.1,65];
rsmc_shem_2024_051 = [17.1,86.5,106.4;  19.1,82.2,106.4; 20.3,76.8,106.4;  23.4,71.3,95.2;   27.9,70.6,72.8];
btk_shem_2024_051 = [16.9,86.5,105;     18.9,82.0,100;   20.3,76.4,90;     23.7,71.1,105;    29.1,72.8,100]; # operationally from U.S. sources
btk2_shem_2024_051 = [16.85,86.42,100.8;18.91,81.99,95.2;20.28,76.42,100.8;23.73,71.07,106.4;28.95,72.6,89.6]; # MFR data table
myvect = [myvect;my_shem_2024_051];
rsmcvect = [rsmcvect;rsmc_shem_2024_051];
btkvect = [btkvect;btk_shem_2024_051];
btk2vect = [btk2vect;btk2_shem_2024_051];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 052 ... ANGGREK before 2024-01-26-21Z

my_shem_2024_052 = [19.1,79.4,115;      20.9,73.5,110;    25.4,70.5,95;     30.0,72.7,75;    32.8,79.7,55];
rsmc_shem_2024_052 = [19.2,79.0,117.6;  21.2,73.2,106.4;  25.3,69.8,95.2;   29.3,71.2,61.6;  30.8,75.2,50.4];
btk_shem_2024_052 = [19.5,79.4,100;     21.7,73.2,115;    26.3,70.8,105;    30.6,76.1,90;    36.1,91.5,55]; # operationally from U.S. sources
btk2_shem_2024_052 = [19.56,79.32,100.8;21.54,73.32,112.0;26.43,70.87,100.8;30.71,76.19,72.8;36.47,91.85,56.0]; # MFR data table
myvect = [myvect;my_shem_2024_052];
rsmcvect = [rsmcvect;rsmc_shem_2024_052];
btkvect = [btkvect;btk_shem_2024_052];
btk2vect = [btk2vect;btk2_shem_2024_052];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 053 ... ANGGREK before 2024-01-27-21Z

my_shem_2024_053 = [21.6,73.5,105;      26.1,70.5,90;     30.1,75.2,65;    34.3,87.0,45];
rsmc_shem_2024_053 = [21.8,73.3,106.4;  26.6,70.4,95.2;   30.1,73.9,61.6;  32.7,82.5,50.4];
btk_shem_2024_053 = [21.7,73.2,115;     26.3,70.8,105;    30.6,76.1,90;    36.1,91.5,55]; # operationally from U.S. sources
btk2_shem_2024_053 = [21.54,73.32,112.0;26.43,70.87,100.8;30.71,76.19,72.8;36.47,91.85,56.0]; # MFR data table
myvect = [myvect;my_shem_2024_053];
rsmcvect = [rsmcvect;rsmc_shem_2024_053];
btkvect = [btkvect;btk_shem_2024_053];
btk2vect = [btk2vect;btk2_shem_2024_053];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 054 ... 05 / 09S before 2024-01-31-03Z

my_shem_2024_054 = [19.7,65.9,40;    20.2,67.3,30];
rsmc_shem_2024_054 = [19.9,65.7,39.2;20.6,67.3,33.6];
btk_shem_2024_054 = [19.5,66.2,35;   19.2,67.7,35]; # operationally from U.S. sources
btk2_shem_2024_054 = [19.5,66.2,33.6;19.2,67.7,33.6]; # MFR advisory init (day 1 only)
myvect = [myvect;my_shem_2024_054];
rsmcvect = [rsmcvect;rsmc_shem_2024_054];
btkvect = [btkvect;btk_shem_2024_054];
btk2vect = [btk2vect;btk2_shem_2024_054];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 055 ... 06F / 95P before 2024-02-05-09Z

my_shem_2024_055 = [16.6,199.4,40;    18.9,203.0,50;  18.9,206.1,0];
rsmc_shem_2024_055 = [16.8,199.4,39.2;19.4,204.0,50.4;19.7,206.8,0];
btk_shem_2024_055 = [15.9,200.6,45;   18.7,207.3,35;  19.4,210.0,0]; # operationally from U.S. sources
btk2_shem_2024_055 = btk_shem_2024_055; # placeholder
myvect = [myvect;my_shem_2024_055];
rsmcvect = [rsmcvect;rsmc_shem_2024_055];
btkvect = [btkvect;btk_shem_2024_055];
btk2vect = [btk2vect;btk2_shem_2024_055];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;5;5;5];

# Shem 056 ... 06U / 94P before 2024-02-07-09Z

my_shem_2024_056 = [15.9,162.1,35;    17.4,164.0,45;  19.0,166.7,55;  20.0,170.0,45;  19.3,172.3,30];
rsmc_shem_2024_056 = [16.0,162.2,33.6;17.4,164.1,50.4;18.7,166.7,61.6;19.2,169.4,50.4;19.0,170.5,33.6];
btk_shem_2024_056 = [15.8,163.5,40;   16.9,165.4,35;  16.7,170.4,30;  18.9,175.0,30;  19.2,176.6,25]; # operationally from U.S. sources
btk2_shem_2024_056 = [15.6,163.0,33.6;16.6,165.4,28.0;17.5,170.3,33.6;19.1,175.1,28.0;19.2,176.7,28.0]; # BoM best track
myvect = [myvect;my_shem_2024_056];
rsmcvect = [rsmcvect;rsmc_shem_2024_056];
btkvect = [btkvect;btk_shem_2024_056];
btk2vect = [btk2vect;btk2_shem_2024_056];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 057 ... 05F / 12P before 2024-02-08-09Z

my_shem_2024_057 = [17.2,166.6,55;    18.4,169.9,55;  19.3,173.7,0];
rsmc_shem_2024_057 = [17.1,166.1,61.6;18.3,169.0,61.6;19.0,171.6,0];
btk_shem_2024_057 = [16.9,165.4,35;   16.7,170.4,30;  18.9,175.0,0]; # operationally from U.S. sources
btk2_shem_2024_057 = [16.6,165.4,28.0;17.5,170.3,33.6;19.1,175.1,0]; # BoM best track
myvect = [myvect;my_shem_2024_057];
rsmcvect = [rsmcvect;rsmc_shem_2024_057];
btkvect = [btkvect;btk_shem_2024_057];
btk2vect = [btk2vect;btk2_shem_2024_057];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;5;5;5];

# Shem 058 ... 05F / 12P before 2024-02-09-03Z

my_shem_2024_058 = [17.6,168.0,45;    19.0,171.9,40;  19.6,173.6,0];
rsmc_shem_2024_058 = [17.9,168.2,44.8;19.0,171.4,39.2;19.7,172.4,0];
btk_shem_2024_058 = [17.1,168.4,35;   19.2,174.2,35;  18.9,176.0,0]; # operationally from U.S. sources
btk2_shem_2024_058 = [17.1,169.1,33.6;19.1,174.2,33.6;19.1,176.2,0]; # BoM best track
myvect = [myvect;my_shem_2024_058];
rsmcvect = [rsmcvect;rsmc_shem_2024_058];
btkvect = [btkvect;btk_shem_2024_058];
btk2vect = [btk2vect;btk2_shem_2024_058];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;5;5;5];

# Shem 059 ... 05F / 12P before 2024-02-09-09Z

my_shem_2024_059 = [18.1,169.2,35;    19.1,173.2,35;  20.3,174.5,0];
rsmc_shem_2024_059 = [18.1,169.1,50.4;19.3,172.8,39.2;20.3,175.1,0];
btk_shem_2024_059 = [16.7,170.4,30;   18.9,175.0,30;  19.2,176.6,0]; # operationally from U.S. sources
btk2_shem_2024_059 = [17.5,170.3,33.6;19.1,175.1,28.0;19.2,176.7,0]; # BoM best track
myvect = [myvect;my_shem_2024_059];
rsmcvect = [rsmcvect;rsmc_shem_2024_059];
btkvect = [btkvect;btk_shem_2024_059];
btk2vect = [btk2vect;btk2_shem_2024_059];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;5;5;5];

# Shem 060 ... DJOUNGOU before 2024-02-15-21Z

my_shem_2024_060 = [16.1,68.6,50;      16.8,73.6,65;    21.4,82.2,65;    28.1,91.6,65];
rsmc_shem_2024_060 = [16.2,68.8,50.4;  16.9,73.9,67.2;  21.8,82.8,67.2;  28.4,91.9,56.0];
btk_shem_2024_060 = [16.2,66.6,65;     16.7,72.3,100;   21.6,81.0,120;   29.8,92.0,55]; # operationally from U.S. sources
btk2_shem_2024_060 = [15.96,66.75,56.0;16.75,71.86,95.2;21.4,80.72,123.2;28.76,91.58,61.6]; # MFR data table
myvect = [myvect;my_shem_2024_060];
rsmcvect = [rsmcvect;rsmc_shem_2024_060];
btkvect = [btkvect;btk_shem_2024_060];
btk2vect = [btk2vect;btk2_shem_2024_060];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 061 ... DJOUNGOU before 2024-02-16-21Z

my_shem_2024_061 = [16.7,70.8,95;      20.6,78.6,85;    25.3,86.4,55];
rsmc_shem_2024_061 = [16.8,71.0,95.2;  21.0,79.3,95.2;  25.9,87.3,61.6];
btk_shem_2024_061 = [16.7,72.3,100;    21.6,81.0,120;   29.8,92.0,55]; # operationally from U.S. sources
btk2_shem_2024_061 = [16.75,71.86,95.2;21.4,80.72,123.2;28.76,91.58,61.6]; # MFR data table
myvect = [myvect;my_shem_2024_061];
rsmcvect = [rsmcvect;rsmc_shem_2024_061];
btkvect = [btkvect;btk_shem_2024_061];
btk2vect = [btk2vect;btk2_shem_2024_061];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 062 ... DJOUNGOU before 2024-02-17-03Z

my_shem_2024_062 = [17.4,72.5,95;       22.3,81.3,85;     26.3,88.8,65];
rsmc_shem_2024_062 = [17.5,72.5,100.8;  22.5,81.6,84.0;   26.4,89.2,56.0];
btk_shem_2024_062 = [17.5,73.6,115;     23.1,83.3,105;    31.3,95.8,55]; # operationally from U.S. sources
btk2_shem_2024_062 = [17.48,73.83,100.8;23.38,83.26,112.0;29.7,95.29,44.8]; # MFR data table
myvect = [myvect;my_shem_2024_062];
rsmcvect = [rsmcvect;rsmc_shem_2024_062];
btkvect = [btkvect;btk_shem_2024_062];
btk2vect = [btk2vect;btk2_shem_2024_062];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 063 ... DJOUNGOU before 2024-02-17-09Z

my_shem_2024_063 = [18.5,74.8,100;      24.0,83.6,75];
rsmc_shem_2024_063 = [18.6,74.7,100.8;  24.2,83.4,78.4];
btk_shem_2024_063 = [18.5,76.2,120;     25.2,85.5,90]; # operationally from U.S. sources
btk2_shem_2024_063 = [18.45,76.18,106.4;24.98,85.38,100.8]; # MFR data table
myvect = [myvect;my_shem_2024_063];
rsmcvect = [rsmcvect;rsmc_shem_2024_063];
btkvect = [btkvect;btk_shem_2024_063];
btk2vect = [btk2vect;btk2_shem_2024_063];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 064 ... DJOUNGOU before 2024-02-17-21Z

my_shem_2024_064 = [21.1,79.4,85;      26.7,88.3,60];
rsmc_shem_2024_064 = [21.1,79.3,78.4;  26.8,88.1,56.0];
btk_shem_2024_064 = [21.6,81.0,120;    29.8,92.0,55]; # operationally from U.S. sources
btk2_shem_2024_064 = [21.4,80.72,123.2;28.76,91.58,61.6]; # MFR data table
myvect = [myvect;my_shem_2024_064];
rsmcvect = [rsmcvect;rsmc_shem_2024_064];
btkvect = [btkvect;btk_shem_2024_064];
btk2vect = [btk2vect;btk2_shem_2024_064];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 065 ... 07 / 16S before 2024-02-19-03Z

my_shem_2024_065 = [14.2,58.3,50;      15.6,59.6,70;   17.8,58.7,75;    20.1,57.2,55;    21.7,55.2,40];
rsmc_shem_2024_065 = [14.3,58.3,56.0;  15.6,59.5,72.8; 17.8,58.6,89.6;  20.1,57.2,67.2;  21.6,55.0,44.8];
btk_shem_2024_065 = [14.0,57.6,50;     14.8,60.6,45;   19.3,59.1,55;    22.3,57.5,50;    23.8,58.0,35]; # operationally from U.S. sources
btk2_shem_2024_065 = [13.44,57.71,44.8;14.76,60.5,44.8;18.93,59.05,56.0;22.76,58.22,61.6;23.75,57.88,33.6]; # MFR data table
myvect = [myvect;my_shem_2024_065];
rsmcvect = [rsmcvect;rsmc_shem_2024_065];
btkvect = [btkvect;btk_shem_2024_065];
btk2vect = [btk2vect;btk2_shem_2024_065];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 066 ... DJOUNGOU before 2024-02-19-03Z

my_shem_2024_066 = [29.4,94.7,60];
rsmc_shem_2024_066 = [29.5,94.6,61.6];
btk_shem_2024_066 = [31.3,95.8,55]; # operationally from U.S. sources
btk2_shem_2024_066 = [29.7,95.29,44.8]; # MFR data table
myvect = [myvect;my_shem_2024_066];
rsmcvect = [rsmcvect;rsmc_shem_2024_066];
btkvect = [btkvect;btk_shem_2024_066];
btk2vect = [btk2vect;btk2_shem_2024_066];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;3];

# Shem 067 ... ELEANOR before 2024-02-20-03Z

my_shem_2024_067 = [15.2,59.8,70;     17.9,58.9,75;    21.5,57.8,70;    23.6,56.4,50;    22.8,53.5,40];
rsmc_shem_2024_067 = [15.2,59.9,61.6; 17.8,59.0,72.8;  21.3,57.7,67.2;  23.4,56.2,44.8;  22.5,53.3,33.6];
btk_shem_2024_067 = [14.8,60.6,45;    19.3,59.1,55;    22.3,57.5,50;    23.8,58.0,35;    22.5,54.8,25]; # operationally from U.S. sources
btk2_shem_2024_067 = [14.76,60.5,56.0;18.93,59.05,56.0;22.76,58.22,61.6;23.75,57.88,33.6;22.38,54.67,33.6]; # MFR data table
myvect = [myvect;my_shem_2024_067];
rsmcvect = [rsmcvect;rsmc_shem_2024_067];
btkvect = [btkvect;btk_shem_2024_067];
btk2vect = [btk2vect;btk2_shem_2024_067];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 068 ... ELEANOR before 2024-02-21-03Z

my_shem_2024_068 = [18.8,60.1,60;      22.4,59.1,55;    23.8,57.5,40;    22.7,54.0,25];
rsmc_shem_2024_068 = [18.8,60.0,67.2;  22.3,58.8,72.8;  23.5,57.2,44.8;  22.7,54.1,33.6];
btk_shem_2024_068 = [19.3,59.1,55;     22.3,57.5,50;    23.8,58.0,35;    22.5,54.8,25]; # operationally from U.S. sources
btk2_shem_2024_068 = [18.93,59.05,56.0;22.76,58.22,61.6;23.75,57.88,33.6;22.38,54.67,33.6]; # MFR data table
myvect = [myvect;my_shem_2024_068];
rsmcvect = [rsmcvect;rsmc_shem_2024_068];
btkvect = [btkvect;btk_shem_2024_068];
btk2vect = [btk2vect;btk2_shem_2024_068];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 069 ... LINCOLN before 2024-02-22-21Z

my_shem_2024_069 = [20.1,113.4,50;    24.6,114.0,35];
rsmc_shem_2024_069 = [20.1,113.5,56.0;24.5,113.9,39.2];
btk_shem_2024_069 = [19.5,113.4,35;   23.9,113.7,25]; # operationally from U.S. sources
btk2_shem_2024_069 = [20.0,113.4,33.6;24.6,113.8,16.8]; # BoM best track
myvect = [myvect;my_shem_2024_069];
rsmcvect = [rsmcvect;rsmc_shem_2024_069];
btkvect = [btkvect;btk_shem_2024_069];
btk2vect = [btk2vect;btk2_shem_2024_069];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;4;4];

# Shem 070 ... ELEANOR before 2024-02-23-03Z

my_shem_2024_070 = [23.9,57.2,35;      22.4,53.4,25];
rsmc_shem_2024_070 = [24.0,57.3,39.2;  22.5,53.6,33.6];
btk_shem_2024_070 = [23.8,58.0,35;     22.5,54.8,25]; # operationally from U.S. sources
btk2_shem_2024_070 = [23.75,57.88,33.6;22.38,54.67,33.6]; # MFR data table
myvect = [myvect;my_shem_2024_070];
rsmcvect = [rsmcvect;rsmc_shem_2024_070];
btkvect = [btkvect;btk_shem_2024_070];
btk2vect = [btk2vect;btk2_shem_2024_070];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 071 ... LINCOLN before 2024-02-23-03Z

my_shem_2024_071 = [21.3,112.9,40;    25.8,114.1,25];
rsmc_shem_2024_071 = [21.3,113.0,56.0;25.8,114.2,33.6];
btk_shem_2024_071 = [20.2,113.3,35;   26.0,115.0,25]; # operationally from U.S. sources
btk2_shem_2024_071 = [21.0,113.2,39.2;25.4,114.0,16.8]; # BoM best track
myvect = [myvect;my_shem_2024_071];
rsmcvect = [rsmcvect;rsmc_shem_2024_071];
btkvect = [btkvect;btk_shem_2024_071];
btk2vect = [btk2vect;btk2_shem_2024_071];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;4;4];

# Shem 072 ... ELEANOR before 2024-02-23-09Z

my_shem_2024_072 = [23.7,56.8,30;      21.9,52.5,25;    18.2,51.2,20];
rsmc_shem_2024_072 = [23.7,56.7,33.6;  21.8,52.2,28.0;  18.2,51.0,22.4];
btk_shem_2024_072 = [23.4,57.5,30;     21.7,53.4,25;    20.13,49.63,30]; # operationally from U.S. sources (except day 3 MFR)
btk2_shem_2024_072 = [23.26,57.36,33.6;21.66,53.31,28.0;20.13,49.63,28.0]; # MFR data table
myvect = [myvect;my_shem_2024_072];
rsmcvect = [rsmcvect;rsmc_shem_2024_072];
btkvect = [btkvect;btk_shem_2024_072];
btk2vect = [btk2vect;btk2_shem_2024_072];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 073 ... ELEANOR before 2024-02-23-21Z

my_shem_2024_073 = [22.9,55.2,30;      21.0,50.8,25];
rsmc_shem_2024_073 = [23.0,55.1,33.6;  21.3,50.6,28.0];
btk_shem_2024_073 = [22.4,56.3,25;     20.8,50.9,25]; # operationally from U.S. sources
btk2_shem_2024_073 = [22.36,56.29,33.6;20.66,51.35,22.4]; # MFR data table
myvect = [myvect;my_shem_2024_073];
rsmcvect = [rsmcvect;rsmc_shem_2024_073];
btkvect = [btkvect;btk_shem_2024_073];
btk2vect = [btk2vect;btk2_shem_2024_073];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 074 ... 08U/91S before 2024-03-09-21Z

my_shem_2024_074 = [12.5,99.3,0;  12.7,102.9,0;14.3,106.5,0;16.3,109.1,0;17.7,109.7,0];
rsmc_shem_2024_074 = [12.4,99.4,0;12.7,103.4,0;14.6,107.3,0;16.5,109.7,0;18.0,110.2,0];
btk_shem_2024_074 = [12.2,99.2,0; 12.1,104.4,0;14.0,109.4,0;15.3,112.2,0;17.3,115.4,0]; # operationally from U.S. sources
btk2_shem_2024_074 = [12.1,98.9,0;12.6,104.4,0;13.9,108.8,0;15.3,113.1,0;17.1,115.6,0]; # BoM best track
myvect = [myvect;my_shem_2024_074];
rsmcvect = [rsmcvect;rsmc_shem_2024_074];
btkvect = [btkvect;btk_shem_2024_074];
btk2vect = [btk2vect;btk2_shem_2024_074];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 075 ... 08U/91S before 2024-03-10-03Z

my_shem_2024_075 = [12.3,100.2,0;  13.1,103.9,0;15.4,107.0,0;17.1,109.1,0;18.5,109.5,0];
rsmc_shem_2024_075 = [12.3,99.7,0; 13.2,103.5,0;15.2,107.1,0;16.8,108.8,0;18.2,109.0,0];
btk_shem_2024_075 = [12.0,99.8,0;  13.4,105.5,0;14.5,110.2,0;15.6,113.9,0;17.7,115.2,0]; # operationally from U.S. sources
btk2_shem_2024_075 = [11.9,100.6,0;13.3,105.6,0;14.6,110.4,0;15.4,113.5,0;17.3,115.6,0]; # BoM best track
myvect = [myvect;my_shem_2024_075];
rsmcvect = [rsmcvect;rsmc_shem_2024_075];
btkvect = [btkvect;btk_shem_2024_075];
btk2vect = [btk2vect;btk2_shem_2024_075];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 076 ... FILIPO before 2024-03-11-03Z

my_shem_2024_076 = [21.2,35.3,55;      24.4,33.8,30;    29.0,36.8,50;   35.3,46.8,55];
rsmc_shem_2024_076 = [21.2,35.3,61.6;  24.3,33.7,33.6;  28.6,36.4,56.0; 34.4,45.9,61.6];
btk_shem_2024_076 = [20.7,35.6,55;     25.0,33.5,30;    29.7,37.1,40;   36.33,49.07,75]; # operationally from U.S. sources (except day 4 MFR)
btk2_shem_2024_076 = [20.91,35.47,61.6;25.07,33.05,39.2;29.8,36.88,67.2;36.33,49.07,72.8]; # MFR data table
myvect = [myvect;my_shem_2024_076];
rsmcvect = [rsmcvect;rsmc_shem_2024_076];
btkvect = [btkvect;btk_shem_2024_076];
btk2vect = [btk2vect;btk2_shem_2024_076];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 077 ... 08U/91S before 2024-03-11-03Z

my_shem_2024_077 = [12.7,104.3,35;    14.6,107.7,35;  16.3,110.0,40;  17.4,111.3,40;  18.9,111.6,45];
rsmc_shem_2024_077 = [13.1,105.0,44.8;15.1,109.0,44.8;16.8,111.3,50.4;18.3,111.6,50.4;19.8,110.5,61.6];
btk_shem_2024_077 = [13.4,105.5,35;   14.5,110.2,35;  15.6,113.9,35;  17.7,115.2,30;  17.5,114.5,35]; # operationally from U.S. sources
btk2_shem_2024_077 = [13.3,105.6,44.8;14.6,110.4,39.2;15.4,113.5,39.2;17.3,115.6,39.2;17.4,114.7,33.6]; # BoM best track
myvect = [myvect;my_shem_2024_077];
rsmcvect = [rsmcvect;rsmc_shem_2024_077];
btkvect = [btkvect;btk_shem_2024_077];
btk2vect = [btk2vect;btk2_shem_2024_077];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 078 ... FILIPO before 2024-03-11-09Z

my_shem_2024_078 = [21.6,35.1,40;     25.6,34.2,30;    30.2,39.0,45;    36.6,50.3,55];
rsmc_shem_2024_078 = [21.5,35.0,61.6; 25.3,33.9,39.2;  29.9,38.4,67.2;  35.7,49.1,61.6];
btk_shem_2024_078 = [21.5,34.9,50;    26.0,33.1,35;    31.4,38.9,40;    37.23,52.88,60]; # operationally from U.S. sources (except day 4 MFR)
btk2_shem_2024_078 = [21.7,34.81,50.4;25.99,32.96,39.2;31.57,38.98,78.4;37.23,52.88,61.6]; # MFR advisory inits
myvect = [myvect;my_shem_2024_078];
rsmcvect = [rsmcvect;rsmc_shem_2024_078];
btkvect = [btkvect;btk_shem_2024_078];
btk2vect = [btk2vect;btk2_shem_2024_078];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 079 ... 08U/91S before 2024-03-11-09Z

my_shem_2024_079 = [13.5,106.7,45;    15.3,110.8,40;  16.8,113.3,45;  17.8,113.8,50;  19.2,112.8,60];
rsmc_shem_2024_079 = [13.7,106.7,50.4;15.4,110.9,44.8;16.9,113.3,50.4;18.0,113.9,50.4;19.3,113.4,61.6];
btk_shem_2024_079 = [13.4,106.1,40;   14.9,110.8,35;  16.2,115.0,35;  17.8,114.8,35;  17.3,114.0,35]; # operationally from U.S. sources
btk2_shem_2024_079 = [13.5,106.1,44.8;15.2,111.2,39.2;16.1,114.9,39.2;17.5,115.3,33.6;17.3,114.1,33.6]; # BoM best track
myvect = [myvect;my_shem_2024_079];
rsmcvect = [rsmcvect;rsmc_shem_2024_079];
btkvect = [btkvect;btk_shem_2024_079];
btk2vect = [btk2vect;btk2_shem_2024_079];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 080 ... FILIPO before 2024-03-11-21Z

my_shem_2024_080 = [23.5,34.0,35;      28.2,35.6,45;    34.7,44.8,60;   40.0,56.9,45];
rsmc_shem_2024_080 = [23.6,33.8,39.2;  28.1,35.5,56.0;  34.0,44.2,72.8; 38.8,55.7,61.6];
btk_shem_2024_080 = [24.5,33.8,35;     28.2,35.6,40;    35.3,45.9,50;   38.14,60.37,40]; # operationally from U.S. sources (except day 4 MFR)
btk2_shem_2024_080 = [23.98,33.59,39.2;28.25,35.16,56.0;35.1,45.73,84.0;38.14,60.37,39.2]; # MFR data table
myvect = [myvect;my_shem_2024_080];
rsmcvect = [rsmcvect;rsmc_shem_2024_080];
btkvect = [btkvect;btk_shem_2024_080];
btk2vect = [btk2vect;btk2_shem_2024_080];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 081 ... FILIPO before 2024-03-12-03Z

my_shem_2024_081 = [24.6,33.8,35;      29.5,37.1,55;   35.7,47.4,60];
rsmc_shem_2024_081 = [24.5,33.7,39.2;  29.3,36.9,61.6; 35.4,47.1,72.8];
btk_shem_2024_081 = [25.0,33.5,30;     29.7,37.1,40;   36.33,49.07,75]; # operationally from U.S. sources (except day 3 MFR)
btk2_shem_2024_081 = [25.07,33.05,39.2;29.8,36.88,67.2;36.33,49.07,72.8]; # MFR data table
myvect = [myvect;my_shem_2024_081];
rsmcvect = [rsmcvect;rsmc_shem_2024_081];
btkvect = [btkvect;btk_shem_2024_081];
btk2vect = [btk2vect;btk2_shem_2024_081];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 082 ... 08U/18S before 2024-03-12-21Z

my_shem_2024_082 = [15.4,113.1,40;    16.6,115.2,45;  17.8,114.6,55;   18.4,113.9,65;  19.6,113.5,60];
rsmc_shem_2024_082 = [15.4,113.1,44.8;16.7,115.0,44.8;17.7,114.4,56.0; 18.3,113.3,67.2;19.1,112.2,61.6];
btk_shem_2024_082 = [15.3,112.2,35;   17.3,115.4,35;  17.8,114.8,35;   16.7,113.8,35;  17.4,112.7,35]; # operationally from U.S. sources
btk2_shem_2024_082 = [15.3,113.1,39.2;17.1,115.6,39.2;17.62,115.0,33.6;17.4,113.9,28.0;17.5,112.7,28.0]; # BoM best track
myvect = [myvect;my_shem_2024_082];
rsmcvect = [rsmcvect;rsmc_shem_2024_082];
btkvect = [btkvect;btk_shem_2024_082];
btk2vect = [btk2vect;btk2_shem_2024_082];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 083 ... 08U/18S before 2024-03-13-09Z

my_shem_2024_083 = [15.9,115.0,35;    17.2,116.1,40;  17.7,114.9,45;  18.3,114.6,60;  19.9,114.2,65];
rsmc_shem_2024_083 = [16.1,114.8,39.2;17.3,115.8,39.2;17.9,114.8,44.8;18.5,114.1,56.0;20.2,113.4,67.2];
btk_shem_2024_083 = [16.2,115.0,35;   17.8,114.8,35;  17.3,114.0,35;  17.1,112.8,35;  17.0,112.2,30]; # operationally from U.S. sources
btk2_shem_2024_083 = [16.1,114.9,39.2;17.5,115.3,33.6;17.3,114.1,33.6;17.3,112.9,28.0;17.5,112.6,33.6]; # BoM best track
myvect = [myvect;my_shem_2024_083];
rsmcvect = [rsmcvect;rsmc_shem_2024_083];
btkvect = [btkvect;btk_shem_2024_083];
btk2vect = [btk2vect;btk2_shem_2024_083];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 084 ... 08U/18S before 2024-03-14-21Z

my_shem_2024_084 = [18.1,115.3,35;     18.5,114.2,40;  19.0,113.4,55;  19.6,112.0,60;  20.4,111.2,60];
rsmc_shem_2024_084 = [17.9,115.4,33.6; 18.3,114.4,39.2;19.1,113.6,56.0;20.4,112.8,61.6;21.6,111.7,50.4];
btk_shem_2024_084 = [17.8,114.8,35;    16.7,113.8,35;  17.4,112.7,35;  18.1,111.9,30;  17.8,110.9,30]; # operationally from U.S. sources
btk2_shem_2024_084 = [17.62,115.0,33.6;17.4,113.9,28.0;17.5,112.7,28.0;17.7,112.2,33.6;17.8,110.7,33.6]; # BoM best track
myvect = [myvect;my_shem_2024_084];
rsmcvect = [rsmcvect;rsmc_shem_2024_084];
btkvect = [btkvect;btk_shem_2024_084];
btk2vect = [btk2vect;btk2_shem_2024_084];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 085 ... 08U/18S before 2024-03-15-21Z

my_shem_2024_085 = [17.7,113.6,35;    18.3,113.2,45;  18.3,112.7,55;  18.0,111.5,55;  17.7,109.8,60];
rsmc_shem_2024_085 = [17.6,114.3,33.6;18.1,113.8,33.6;18.8,112.9,44.8;18.4,111.6,50.4;18.2,108.9,44.8];
btk_shem_2024_085 = [16.7,113.8,35;   17.4,112.7,35;  18.1,111.9,30;  17.9,110.9,30;  17.9,107.9,60]; # operationally from U.S. sources
btk2_shem_2024_085 = [17.4,113.9,28.0;17.5,112.7,28.0;17.7,112.2,33.6;17.8,110.7,33.6;17.7,107.9,56.0]; # BoM best track
myvect = [myvect;my_shem_2024_085];
rsmcvect = [rsmcvect;rsmc_shem_2024_085];
btkvect = [btkvect;btk_shem_2024_085];
btk2vect = [btk2vect;btk2_shem_2024_085];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 086 ... 08U/18S before 2024-03-16-21Z

my_shem_2024_086 = [17.3,113.6,35;    17.5,113.6,35;  17.3,112.3,35;  16.8,109.6,45;  16.8,106.4,50];
rsmc_shem_2024_086 = [17.4,113.7,33.6;17.6,113.4,33.6;17.3,112.1,33.6;16.7,109.6,44.8;16.8,106.1,50.4];
btk_shem_2024_086 = [17.4,112.7,35;   18.1,111.9,30;  17.8,110.9,30;  17.9,107.9,60;  17.8,103.8,115]; # operationally from U.S. sources
btk2_shem_2024_086 = [17.5,112.7,28.0;17.7,112.2,33.6;17.8,110.7,33.6;17.7,107.9,56.0;17.8,103.7,100.8]; # BoM best track
myvect = [myvect;my_shem_2024_086];
rsmcvect = [rsmcvect;rsmc_shem_2024_086];
btkvect = [btkvect;btk_shem_2024_086];
btk2vect = [btk2vect;btk2_shem_2024_086];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 087 ... 08U/18S before 2024-03-18-03Z

my_shem_2024_087 = [17.8,112.2,40;    17.4,110.8,40;  16.9,107.9,45;  17.1,104.3,45;   18.1,99.1,55];
rsmc_shem_2024_087 = [18.1,112.4,33.6;17.6,110.9,33.6;17.4,108.3,44.8;17.4,104.4,50.4; 18.4,98.8,56.0];
btk_shem_2024_087 = [18.5,111.8,30;   17.8,110.4,35;  17.9,106.7,70;  17.9,102.6,115;  19.3,96.5,85]; # operationally from U.S. sources
btk2_shem_2024_087 = [18.0,112.0,33.6;17.7,110.2,33.6;17.9,106.9,72.8;17.8,102.6,106.4;19.2,96.3,89.6]; # BoM best track
myvect = [myvect;my_shem_2024_087];
rsmcvect = [rsmcvect;rsmc_shem_2024_087];
btkvect = [btkvect;btk_shem_2024_087];
btk2vect = [btk2vect;btk2_shem_2024_087];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 088 ... MEGAN before 2024-03-18-03Z

my_shem_2024_088 = [16.7,136.2,40;    17.2,134.0,25;  16.3,130.4,25];
rsmc_shem_2024_088 = [16.8,136.1,39.2;17.1,133.5,28.0;16.6,130.1,28.0];
btk_shem_2024_088 = [16.9,135.6,30;   17.9,133.4,20;  17.0,130.5,30]; # operationally from U.S. sources (except day 3 BoM)
btk2_shem_2024_088 = [17.0,136.2,28.0;17.9,133.4,28.0;17.0,130.5,28.0]; # BoM best track
myvect = [myvect;my_shem_2024_088];
rsmcvect = [rsmcvect;rsmc_shem_2024_088];
btkvect = [btkvect;btk_shem_2024_088];
btk2vect = [btk2vect;btk2_shem_2024_088];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;4;4;4];

# Shem 089 ... 08U/18S before 2024-03-18-09Z

my_shem_2024_089 = [17.7,112.0,35;    17.1,110.2,35;  16.9,107.2,40;  16.9,102.7,50;   17.9,96.8,50];
rsmc_shem_2024_089 = [17.9,112.2,33.6;17.5,110.4,33.6;17.4,107.4,44.8;17.6,103.1,56.0; 18.8,97.3,56.0];
btk_shem_2024_089 = [18.1,111.8,30;   17.7,109.6,40;  17.8,105.7,85;  18.1,100.9,105;  19.8,94.9,80]; # operationally from U.S. sources
btk2_shem_2024_089 = [18.0,111.7,33.6;17.7,109.6,39.2;17.9,105.8,84.0;18.1,101.0,106.4;19.9,94.7,84.0]; # BoM best track
myvect = [myvect;my_shem_2024_089];
rsmcvect = [rsmcvect;rsmc_shem_2024_089];
btkvect = [btkvect;btk_shem_2024_089];
btk2vect = [btk2vect;btk2_shem_2024_089];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 090 ... MEGAN before 2024-03-18-09Z

my_shem_2024_090 = [17.0,135.7,30;    17.0,132.8,25;  16.5,129.6,20];
rsmc_shem_2024_090 = [17.0,135.7,33.6;17.0,132.7,28.0;16.5,129.4,22.4];
btk_shem_2024_090 = [17.2,135.4,30;   17.6,132.9,20;  16.6,130.1,30]; # operationally from U.S. sources (except day 3 BoM)
btk2_shem_2024_090 = [17.6,135.6,28.0;17.7,132.8,28.0;16.6,130.1,28.0]; # BoM best track
myvect = [myvect;my_shem_2024_090];
rsmcvect = [rsmcvect;rsmc_shem_2024_090];
btkvect = [btkvect;btk_shem_2024_090];
btk2vect = [btk2vect;btk2_shem_2024_090];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;4;4;4];

# Shem 091 ... 08U/18S before 2024-03-20-03Z

my_shem_2024_091 = [17.6,106.9,50;    17.5,102.7,60;   18.5,96.7,55;  21.3,90.6,45;  24.4,86.7,25];
rsmc_shem_2024_091 = [17.4,107.0,50.4;17.5,102.6,67.2; 18.4,96.6,61.6;20.6,91.0,50.4;22.7,87.1,33.6];
btk_shem_2024_091 = [17.9,106.7,70;   17.9,102.6,115;  19.3,96.5,85;  22.2,91.2,50;  24.0,87.2,25]; # operationally from U.S. sources
btk2_shem_2024_091 = [17.9,106.9,72.8;17.8,102.6,106.4;19.2,96.3,89.6;21.9,91.5,56.0;24.0,87.2,33.6]; # BoM best track
myvect = [myvect;my_shem_2024_091];
rsmcvect = [rsmcvect;rsmc_shem_2024_091];
btkvect = [btkvect;btk_shem_2024_091];
btk2vect = [btk2vect;btk2_shem_2024_091];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 092 ... NEVILLE before 2024-03-20-09Z

my_shem_2024_092 = [17.6,106.1,55;    17.9,101.2,70;   19.3,95.0,60;  21.5,89.5,40;  24.0,86.0,30];
rsmc_shem_2024_092 = [17.4,106.5,61.6;17.5,101.6,72.8; 18.9,95.5,61.6;21.0,90.3,44.8;23.4,87.2,33.6];
btk_shem_2024_092 = [17.8,105.7,85;   18.1,100.9,105;  19.8,94.9,80;  22.7,90.1,45;  24.2,86.8,30]; # operationally from U.S. sources
btk2_shem_2024_092 = [17.9,105.8,78.4;18.1,101.0,106.4;19.9,94.7,84.0;22.6,90.2,50.4;24.6,86.5,33.6]; # BoM best track
myvect = [myvect;my_shem_2024_092];
rsmcvect = [rsmcvect;rsmc_shem_2024_092];
btkvect = [btkvect;btk_shem_2024_092];
btk2vect = [btk2vect;btk2_shem_2024_092];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 093 ... NEVILLE before 2024-03-22-03Z

my_shem_2024_093 = [18.8,96.5,100;    20.8,90.4,60;  22.5,85.9,35];
rsmc_shem_2024_093 = [18.8,96.6,106.4;20.6,90.9,67.2;22.1,86.0,33.6];
btk_shem_2024_093 = [19.3,96.5,85;    22.2,91.2,50;  24.0,87.2,25]; # operationally from U.S. sources
btk2_shem_2024_093 = [19.2,96.3,89.6; 21.9,91.5,56.0;24.0,87.2,33.6]; # BoM best track
myvect = [myvect;my_shem_2024_093];
rsmcvect = [rsmcvect;rsmc_shem_2024_093];
btkvect = [btkvect;btk_shem_2024_093];
btk2vect = [btk2vect;btk2_shem_2024_093];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;4;4;4];

# Shem 094 ... NEVILLE before 2024-03-22-09Z

my_shem_2024_094 = [19.4,94.8,75;    21.4,89.4,45;  23.4,85.9,25];
rsmc_shem_2024_094 = [19.5,94.9,84.0;21.6,89.6,56.0;23.5,85.2,33.6];
btk_shem_2024_094 = [19.8,94.9,80;   22.7,90.1,45;  24.2,86.8,30]; # operationally from U.S. sources
btk2_shem_2024_094 = [19.9,94.7,84.0;22.6,90.2,50.4;24.6,86.5,33.6]; # BoM best track
myvect = [myvect;my_shem_2024_094];
rsmcvect = [rsmcvect;rsmc_shem_2024_094];
btkvect = [btkvect;btk_shem_2024_094];
btk2vect = [btk2vect;btk2_shem_2024_094];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;4;4;4];

# Shem 095 ... NEVILLE before 2024-03-22-21Z

my_shem_2024_095 = [21.0,92.1,65;    22.7,87.2,35;  26.8,85.4,30];
rsmc_shem_2024_095 = [21.0,92.1,72.8;22.6,87.2,39.2;26.7,85.8,33.6];
btk_shem_2024_095 = [21.4,92.4,60;   23.5,88.2,30;  26.6,86.6,25]; # operationally from U.S. sources
btk2_shem_2024_095 = [21.0,92.6,61.6;23.4,88.2,39.2;27.2,86.7,22.4]; # BoM best track
myvect = [myvect;my_shem_2024_095];
rsmcvect = [rsmcvect;rsmc_shem_2024_095];
btkvect = [btkvect;btk_shem_2024_095];
btk2vect = [btk2vect;btk2_shem_2024_095];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;4;4;4];

# Shem 096 ... 09 / 95S before 2024-03-26-03Z

my_shem_2024_096 = [13.4,50.6,70;     14.6,50.4,100;   15.7,51.2,85;    16.8,53.5,85;    19.1,55.1,60];
rsmc_shem_2024_096 = [13.5,50.6,67.2; 14.4,50.6,95.2;  15.5,51.7,100.8; 16.8,54.3,78.4;  18.9,56.4,61.6];
btk_shem_2024_096 = [12.9,50.1,90;    13.9,48.8,40;    14.3,47.7,20;    16.0,51.0,20;    17.26,52.55,20]; # operationally from U.S. sources (except day 5)
btk2_shem_2024_096 = [12.85,50.0,89.6;13.83,48.09,39.2;14.12,47.62,22.4;15.56,50.89,28.0;17.26,52.55,22.4]; # MFR data table
myvect = [myvect;my_shem_2024_096];
rsmcvect = [rsmcvect;rsmc_shem_2024_096];
btkvect = [btkvect;btk_shem_2024_096];
btk2vect = [btk2vect;btk2_shem_2024_096];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 097 ... GAMANE before 2024-03-27-03Z

my_shem_2024_097 = [14.2,49.1,45;      16.1,50.0,35;    16.7,52.1,45;    17.7,54.0,35;    19.1,55.4,30];
rsmc_shem_2024_097 = [14.2,49.1,28.0;  15.9,50.2,33.6;  16.6,52.3,44.8;  17.6,54.1,33.6;  18.6,55.0,22.4];
btk_shem_2024_097 = [13.9,48.8,40;     14.3,47.7,20;    16.0,51.0,20;    17.26,52.55,20;  16.51,51.97,15]; # operationally from U.S. sources (except days 4-5 MFR)
btk2_shem_2024_097 = [13.83,48.09,39.2;14.12,47.62,22.4;15.56,50.89,28.0;17.26,52.55,22.4;16.51,51.97,16.8]; # MFR data table
myvect = [myvect;my_shem_2024_097];
rsmcvect = [rsmcvect;rsmc_shem_2024_097];
btkvect = [btkvect;btk_shem_2024_097];
btk2vect = [btk2vect;btk2_shem_2024_097];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 098 ... GAMANE before 2024-03-27-09Z

my_shem_2024_098 = [14.5,49.3,35;      15.8,50.2,30;    16.4,52.5,45;    17.5,54.1,40;    18.7,55.2,25];
rsmc_shem_2024_098 = [14.6,49.6,22.4;  15.7,50.4,28.0;  16.5,52.6,44.8;  17.6,54.3,33.6;  18.8,55.4,22.4];
btk_shem_2024_098 = [14.4,49.2,35;     14.2,48.1,20;    16.2,52.6,25;    17.45,52.72,15;  16.36,51.21,15]; # operationally from U.S. sources (except days 4-5 MFR)
btk2_shem_2024_098 = [13.87,47.29,28.0;14.15,48.45,22.4;15.75,51.33,28.0;17.45,52.72,16.8;16.36,51.21,16.8]; # MFR data table
myvect = [myvect;my_shem_2024_098];
rsmcvect = [rsmcvect;rsmc_shem_2024_098];
btkvect = [btkvect;btk_shem_2024_098];
btk2vect = [btk2vect;btk2_shem_2024_098];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 099 ... 11U/21S before 2024-04-05-21Z

my_shem_2024_099 = [13.1,119.2,55;     14.2,118.7,50;   15.2,117.3,35;  16.5,115.0,30;  18.4,111.6,30];
rsmc_shem_2024_099 = [13.2,119.2,61.6; 14.2,118.5,56.0; 15.1,117.1,39.2;16.3,114.4,33.6;17.5,111.3,33.6];
btk_shem_2024_099 = [14.3,119.7,65;    15.9,118.9,115;  16.9,118.1,45;  18.6,116.1,40;  21.2,114.6,30]; # operationally from U.S. sources
btk2_shem_2024_099 = [14.1,119.85,72.8;15.8,119.0,123.2;16.7,118.1,50.4;18.4,116.3,50.4;21.0,114.7,39.2]; # BoM best track
myvect = [myvect;my_shem_2024_099];
rsmcvect = [rsmcvect;rsmc_shem_2024_099];
btkvect = [btkvect;btk_shem_2024_099];
btk2vect = [btk2vect;btk2_shem_2024_099];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 100 ... OLGA before 2024-04-06-21Z

my_shem_2024_100 = [15.7,119.3,65;     16.8,117.4,45;  18.0,114.3,35;  19.8,110.8,25;  20.6,107.7,25];
rsmc_shem_2024_100 = [15.6,119.1,67.2; 16.7,117.2,44.8;18.0,114.1,39.2;19.7,110.7,33.6;20.0,108.2,33.6];
btk_shem_2024_100 = [15.9,118.9,115;   16.9,118.1,45;  18.6,116.1,40;  21.2,114.6,30;  21.7,113.6,25]; # operationally from U.S. sources
btk2_shem_2024_100 = [15.8,119.0,123.2;16.7,118.1,56.0;18.4,116.3,50.4;21.0,114.7,39.2;22.2,113.6,28.0]; # BoM best track
myvect = [myvect;my_shem_2024_100];
rsmcvect = [rsmcvect;rsmc_shem_2024_100];
btkvect = [btkvect;btk_shem_2024_100];
btk2vect = [btk2vect;btk2_shem_2024_100];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Shem 101 ... OLGA before 2024-04-07-21Z

my_shem_2024_101 = [17.1,117.7,60;    18.4,115.2,40;  20.6,112.2,30;  22.2,109.9,30];
rsmc_shem_2024_101 = [17.0,117.5,50.4;18.3,114.8,39.2;20.2,111.8,33.6;21.7,109.4,33.6];
btk_shem_2024_101 = [16.9,118.1,45;   18.6,116.1,40;  21.2,114.6,30;  21.7,113.6,25]; # operationally from U.S. sources
btk2_shem_2024_101 = [16.7,118.1,56.0;18.4,116.3,50.4;21.0,114.7,39.2;22.2,113.6,28.0]; # BoM best track
myvect = [myvect;my_shem_2024_101];
rsmcvect = [rsmcvect;rsmc_shem_2024_101];
btkvect = [btkvect;btk_shem_2024_101];
btk2vect = [btk2vect;btk2_shem_2024_101];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;4;4;4;4];

# Shem 102 ... OLGA before 2024-04-08-03Z

my_shem_2024_102 = [17.6,117.2,65;    19.2,115.0,40;  21.2,112.2,30];
rsmc_shem_2024_102 = [17.3,117.0,50.4;18.9,114.5,39.2;20.8,111.9,33.6];
btk_shem_2024_102 = [17.2,117.5,50;   18.9,116.1,35;  21.7,114.1,30]; # operationally from U.S. sources
btk2_shem_2024_102 = [17.2,117.5,50.4;18.9,116.1,50.4;21.7,114.0,28.0]; # BoM best track
myvect = [myvect;my_shem_2024_102];
rsmcvect = [rsmcvect;rsmc_shem_2024_102];
btkvect = [btkvect;btk_shem_2024_102];
btk2vect = [btk2vect;btk2_shem_2024_102];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;4;4;4];

# Shem 103 ... 10 / 90S before 2024-04-30-21Z ... CERTIFIED

my_shem_2024_103 = [9.1,44.8,45;      9.4,44.2,40;    9.1,42.7,30];
rsmc_shem_2024_103 = [9.3,44.7,50.4;  9.7,43.9,44.8;  9.3,42.4,33.6];
btk_shem_2024_103 = [8.8,44.9,35;     8.8,43.8,60;    8.0,41.3,70]; # operationally from U.S. sources
btk2_shem_2024_103 = [8.77,44.93,39.2;8.88,43.83,72.8;8.05,41.29,84.0]; # MFR data table
myvect = [myvect;my_shem_2024_103];
rsmcvect = [rsmcvect;rsmc_shem_2024_103];
btkvect = [btkvect;btk_shem_2024_103];
btk2vect = [btk2vect;btk2_shem_2024_103];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 104 ... 10 / 90S before 2024-05-01-03Z ... CERTIFIED

my_shem_2024_104 = [9.0,44.5,50;      9.5,43.4,55;   9.6,41.7,35];
rsmc_shem_2024_104 = [9.1,44.5,50.4;  9.6,43.5,50.4; 9.6,41.8,39.2];
btk_shem_2024_104 = [9.1,44.4,40;     8.8,43.3,75;   7.9,40.6,60]; # operationally from U.S. sources
btk2_shem_2024_104 = [9.22,44.45,44.8;8.76,43.2,89.6;7.86,40.56,61.6]; # MFR data table
myvect = [myvect;my_shem_2024_104];
rsmcvect = [rsmcvect;rsmc_shem_2024_104];
btkvect = [btkvect;btk_shem_2024_104];
btk2vect = [btk2vect;btk2_shem_2024_104];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 105 ... 10 / 90S before 2024-05-01-09Z ... CERTIFIED

my_shem_2024_105 = [9.4,44.4,50;      9.6,43.3,55;    9.3,41.3,40];
rsmc_shem_2024_105 = [9.6,44.3,50.4;  9.7,43.2,50.4;  9.3,41.2,39.2];
btk_shem_2024_105 = [8.9,44.2,45;     8.4,42.6,80;    7.8,39.8,50]; # operationally from U.S. sources
btk2_shem_2024_105 = [8.84,44.18,50.4;8.45,42.62,89.6;7.8,40.02,39.2]; # MFR data table
myvect = [myvect;my_shem_2024_105];
rsmcvect = [rsmcvect;rsmc_shem_2024_105];
btkvect = [btkvect;btk_shem_2024_105];
btk2vect = [btk2vect;btk2_shem_2024_105];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 106 ... HIDAYA before 2024-05-01-21Z ... CERTIFIED

my_shem_2024_106 = [9.0,43.3,50;      8.7,41.3,45];
rsmc_shem_2024_106 = [9.0,43.1,56.0;  8.6,41.2,44.8];
btk_shem_2024_106 = [8.8,43.8,60;     8.0,41.3,70]; # operationally from U.S. sources
btk2_shem_2024_106 = [8.88,43.83,72.8;8.05,41.29,84.0]; # MFR data table
myvect = [myvect;my_shem_2024_106];
rsmcvect = [rsmcvect;rsmc_shem_2024_106];
btkvect = [btkvect;btk_shem_2024_106];
btk2vect = [btk2vect;btk2_shem_2024_106];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 107 ... HIDAYA before 2024-05-02-09Z ... CERTIFIED

my_shem_2024_107 = [9.0,42.1,55;      8.3,40.2,35];
rsmc_shem_2024_107 = [9.0,42.0,61.6;  8.2,40.2,39.2];
btk_shem_2024_107 = [8.4,42.6,80;     7.8,39.8,50]; # operationally from U.S. sources
btk2_shem_2024_107 = [8.45,42.62,89.6;7.8,40.02,39.2]; # MFR data table
myvect = [myvect;my_shem_2024_107];
rsmcvect = [rsmcvect;rsmc_shem_2024_107];
btkvect = [btkvect;btk_shem_2024_107];
btk2vect = [btk2vect;btk2_shem_2024_107];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 108 ... HIDAYA before 2024-05-02-15Z ... CERTIFIED

my_shem_2024_108 = [8.7,41.9,50;      7.7,39.5,35];
rsmc_shem_2024_108 = [8.7,41.7,56.0;  7.4,39.5,33.6];
btk_shem_2024_108 = [8.2,42.0,75;     7.7,38.6,40]; # operationally from U.S. sources
btk2_shem_2024_108 = [8.23,41.85,89.6;7.72,39.08,22.4]; # MFR data table
myvect = [myvect;my_shem_2024_108];
rsmcvect = [rsmcvect;rsmc_shem_2024_108];
btkvect = [btkvect;btk_shem_2024_108];
btk2vect = [btk2vect;btk2_shem_2024_108];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 109 ... HIDAYA before 2024-05-03-03Z ... CERTIFIED

my_shem_2024_109 = [8.1,41.2,70];
rsmc_shem_2024_109 = [8.3,40.9,50.4];
btk_shem_2024_109 = [7.9,40.6,60]; # operationally from U.S. sources
btk2_shem_2024_109 = [7.86,40.56,61.6]; # MFR data table
myvect = [myvect;my_shem_2024_109];
rsmcvect = [rsmcvect;rsmc_shem_2024_109];
btkvect = [btkvect;btk_shem_2024_109];
btk2vect = [btk2vect;btk2_shem_2024_109];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;3];

# Shem 110 ... HIDAYA before 2024-05-03-09Z ... CERTIFIED

my_shem_2024_110 = [7.7,40.2,70];
rsmc_shem_2024_110 = [7.4,40.3,50.4];
btk_shem_2024_110 = [7.8,39.8,50]; # operationally from U.S. sources
btk2_shem_2024_110 = [7.8,40.02,39.2]; # MFR data table
myvect = [myvect;my_shem_2024_110];
rsmcvect = [rsmcvect;rsmc_shem_2024_110];
btkvect = [btkvect;btk_shem_2024_110];
btk2vect = [btk2vect;btk2_shem_2024_110];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;3];

# Shem 111 ... HIDAYA before 2024-05-03-15Z ... CERTIFIED

my_shem_2024_111 = [6.9,39.7,60];
rsmc_shem_2024_111 = [7.1,39.9,44.8];
btk_shem_2024_111 = [7.7,38.6,40]; # operationally from U.S. sources
btk2_shem_2024_111 = [7.72,39.08,22.4]; # MFR data table
myvect = [myvect;my_shem_2024_111];
rsmcvect = [rsmcvect;rsmc_shem_2024_111];
btkvect = [btkvect;btk_shem_2024_111];
btk2vect = [btk2vect;btk2_shem_2024_111];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;3];

# Shem 112 ... IALY before 2024-05-16-21Z ... CERTIFIED

my_shem_2024_112 = [8.9,50.5,50;      9.1,49.0,55;    8.3,48.5,55;    7.2,48.7,35;    6.2,48.8,20];
rsmc_shem_2024_112 = [8.9,50.7,50.4;  9.2,49.3,56.0;  8.5,48.7,56.0;  7.6,49.2,39.2;  6.3,49.5,28.0];
btk_shem_2024_112 = [8.4,50.1,40;     7.7,47.1,50;    6.9,44.8,60;    5.7,43.3,55;    4.1,41.9,60]; # operationally from U.S. sources
btk2_shem_2024_112 = [8.34,49.96,44.8;7.65,47.08,56.0;6.96,45.01,56.0;5.68,43.33,61.6;4.2,42.02,67.2]; # MFR data table
myvect = [myvect;my_shem_2024_112];
rsmcvect = [rsmcvect;rsmc_shem_2024_112];
btkvect = [btkvect;btk_shem_2024_112];
btk2vect = [btk2vect;btk2_shem_2024_112];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 113 ... IALY before 2024-05-17-03Z ... CERTIFIED

my_shem_2024_113 = [9.2,49.9,45;      9.2,48.2,55;   8.3,47.8,50;    8.0,48.3,40;   6.5,47.2,20];
rsmc_shem_2024_113 = [8.9,50.2,44.8;  9.1,48.6,56.0; 8.4,48.5,56.0;  7.5,48.9,44.8; 5.7,48.6,22.4];
btk_shem_2024_113 = [8.0,49.2,40;     7.5,46.6,55;   6.3,44.5,55;    5.2,43.0,55;   3.7,41.9,45]; # operationally from U.S. sources
btk2_shem_2024_113 = [8.01,49.33,44.8;7.5,46.43,56.0;6.46,44.43,50.4;5.35,42.9,67.2;3.67,42.17,50.4]; # MFR data table
myvect = [myvect;my_shem_2024_113];
rsmcvect = [rsmcvect;rsmc_shem_2024_113];
btkvect = [btkvect;btk_shem_2024_113];
btk2vect = [btk2vect;btk2_shem_2024_113];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 114 ... IALY before 2024-05-17-09Z ... CERTIFIED

my_shem_2024_114 = [8.8,49.2,50;     8.3,47.9,65;    6.6,47.9,45;    4.4,48.3,30;    2.5,49.7,20];
rsmc_shem_2024_114 = [8.9,49.5,44.8; 8.6,48.3,56.0;  6.7,48.5,50.4;  4.8,48.9,39.2;  2.7,50.8,22.4];
btk_shem_2024_114 = [7.9,48.6,40;    7.6,45.9,55;    6.2,44.0,50;    4.9,42.5,65;    3.4,41.9,35]; # operationally from U.S. sources
btk2_shem_2024_114 = [8.0,48.64,44.8;7.56,45.89,56.0;6.21,44.05,50.4;4.93,42.54,67.2;2.97,42.39,39.2]; # MFR data table
myvect = [myvect;my_shem_2024_114];
rsmcvect = [rsmcvect;rsmc_shem_2024_114];
btkvect = [btkvect;btk_shem_2024_114];
btk2vect = [btk2vect;btk2_shem_2024_114];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 115 ... IALY before 2024-05-17-21Z ... CERTIFIED

my_shem_2024_115 = [8.0,47.9,50;      7.0,46.4,55;    5.4,46.9,35;    3.1,47.5,20];
rsmc_shem_2024_115 = [7.9,47.8,50.4;  6.8,46.6,56.0;  5.2,46.6,39.2;  3.1,47.0,28.0];
btk_shem_2024_115 = [7.7,47.1,50;     6.9,44.8,60;    5.7,43.3,55;    4.1,41.9,60]; # operationally from U.S. sources
btk2_shem_2024_115 = [7.65,47.08,56.0;6.96,45.01,56.0;5.68,43.33,61.6;4.2,42.02,67.2]; # MFR data table
myvect = [myvect;my_shem_2024_115];
rsmcvect = [rsmcvect;rsmc_shem_2024_115];
btkvect = [btkvect;btk_shem_2024_115];
btk2vect = [btk2vect;btk2_shem_2024_115];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 116 ... IALY before 2024-05-18-03Z ... CERTIFIED

my_shem_2024_116 = [7.6,47.3,55;     6.6,46.1,55;    4.6,46.0,30;   2.1,46.4,20];
rsmc_shem_2024_116 = [7.7,47.3,56.0; 6.4,46.4,56.0;  4.8,46.7,39.2; 2.7,47.4,22.4];
btk_shem_2024_116 = [7.5,46.6,55;    6.3,44.5,55;    5.2,43.0,55;   3.7,41.9,45]; # operationally from U.S. sources
btk2_shem_2024_116 = [7.5,46.43,56.0;6.46,44.43,50.4;5.35,42.9,67.2;3.67,42.17,50.4]; # MFR data table
myvect = [myvect;my_shem_2024_116];
rsmcvect = [rsmcvect;rsmc_shem_2024_116];
btkvect = [btkvect;btk_shem_2024_116];
btk2vect = [btk2vect;btk2_shem_2024_116];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 117 ... IALY before 2024-05-18-09Z ... CERTIFIED

my_shem_2024_117 = [7.3,46.8,55;      5.3,46.3,45;    3.1,47.6,25;    0.8,48.0,20];
rsmc_shem_2024_117 = [7.5,46.9,56.0;  6.0,46.4,33.6;  4.4,46.9,33.6;  2.1,48.1,22.4];
btk_shem_2024_117 = [7.6,45.9,55;     6.2,44.0,50;    4.9,42.5,65;    3.4,41.9,35]; # operationally from U.S. sources
btk2_shem_2024_117 = [7.56,45.89,56.0;6.21,44.05,50.4;4.93,42.54,67.2;2.97,42.39,39.2]; # MFR data table
myvect = [myvect;my_shem_2024_117];
rsmcvect = [rsmcvect;rsmc_shem_2024_117];
btkvect = [btkvect;btk_shem_2024_117];
btk2vect = [btk2vect;btk2_shem_2024_117];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 118 ... IALY before 2024-05-18-21Z ... CERTIFIED

my_shem_2024_118 = [6.6,45.7,60;      5.2,45.1,40;    2.6,44.3,25];
rsmc_shem_2024_118 = [6.7,45.6,67.2;  5.2,45.2,56.0;  3.6,44.9,33.6];
btk_shem_2024_118 = [6.9,44.8,60;     5.7,43.3,55;    4.1,41.9,60]; # operationally from U.S. sources
btk2_shem_2024_118 = [6.96,45.01,56.0;5.68,43.33,61.6;4.2,42.02,67.2]; # MFR data table
myvect = [myvect;my_shem_2024_118];
rsmcvect = [rsmcvect;rsmc_shem_2024_118];
btkvect = [btkvect;btk_shem_2024_118];
btk2vect = [btk2vect;btk2_shem_2024_118];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 119 ... IALY before 2024-05-20-03Z ... CERTIFIED

my_shem_2024_119 = [4.0,43.8,45;     2.5,44.3,25];
rsmc_shem_2024_119 = [3.8,44.2,44.8; 2.5,44.7,28.0];
btk_shem_2024_119 = [5.2,43.0,55;    3.7,41.9,45]; # operationally from U.S. sources
btk2_shem_2024_119 = [5.35,42.9,67.2;3.67,42.17,50.4]; # MFR data table
myvect = [myvect;my_shem_2024_119];
rsmcvect = [rsmcvect;rsmc_shem_2024_119];
btkvect = [btkvect;btk_shem_2024_119];
btk2vect = [btk2vect;btk2_shem_2024_119];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 120 ... IALY before 2024-05-20-09Z ... CERTIFIED

my_shem_2024_120 = [3.4,43.6,35;      2.5,43.6,20];
rsmc_shem_2024_120 = [3.3,43.8,39.2;  2.3,44.5,28.0];
btk_shem_2024_120 = [4.9,42.5,65;     3.4,41.9,35]; # operationally from U.S. sources
btk2_shem_2024_120 = [4.93,42.54,67.2;2.97,42.39,39.2]; # MFR data table
myvect = [myvect;my_shem_2024_120];
rsmcvect = [rsmcvect;rsmc_shem_2024_120];
btkvect = [btkvect;btk_shem_2024_120];
btk2vect = [btk2vect;btk2_shem_2024_120];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 121 ... IALY before 2024-05-20-21Z ... CERTIFIED

my_shem_2024_121 = [3.1,42.8,45;     1.7,45.3,25];
rsmc_shem_2024_121 = [2.9,43.0,50.4; 1.7,46.0,33.6];
btk_shem_2024_121 = [4.1,41.9,60;    2.7,41.8,25]; # operationally from U.S. sources
btk2_shem_2024_121 = [4.2,42.02,67.2;2.7,41.8,25.0]; # MFR data table (day 1 only)
myvect = [myvect;my_shem_2024_121];
rsmcvect = [rsmcvect;rsmc_shem_2024_121];
btkvect = [btkvect;btk_shem_2024_121];
btk2vect = [btk2vect;btk2_shem_2024_121];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Wpac 001 ... TD/93W before 2024-05-23-09Z ... CERTIFIED

my_wpac_2024_001 = [9.9,127.7,35;     12.3,124.8,40;  14.6,122.9,45;  17.7,125.0,45;  21.8,128.4,50];
rsmc_wpac_2024_001 = [10.0,127.8,39.2;12.6,125.0,44.8;15.0,123.3,56.0;18.1,125.3,61.6;21.7,129.3,61.6];
btk_wpac_2024_001 = [8.4,127.0,20;    12.8,123.0,30;  14.5,121.8,55;  16.2,123.5,95;  19.9,126.8,75]; # operationally from U.S. sources
btk2_wpac_2024_001 = [9.4,127.5,22.4; 12.8,123.2,28.0;14.3,121.7,61.6;16.4,123.5,78.4;19.8,126.6,72.8]; # JMA best track (except days 1-2 wind)
myvect = [myvect;my_wpac_2024_001];
rsmcvect = [rsmcvect;rsmc_wpac_2024_001];
btkvect = [btkvect;btk_wpac_2024_001];
btk2vect = [btk2vect;btk2_wpac_2024_001];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 002 ... TD/93W/(AGHON) before 2024-05-24-03Z ... CERTIFIED

my_wpac_2024_002 = [12.0,126.1,40;    15.2,123.6,45;  17.5,124.6,55;  21.4,128.1,65;  27.5,135.2,70];
rsmc_wpac_2024_002 = [11.9,125.9,44.8;14.9,123.7,50.4;17.1,124.5,61.6;20.8,127.5,72.8;26.4,133.7,72.8];
btk_wpac_2024_002 = [12.2,123.8,30;   14.1,121.4,55;  15.8,122.8,90;  18.5,125.5,75;  24.3,130.8,70]; # operationally from U.S. sources
btk2_wpac_2024_002 = [12.3,123.8,28.0;14.1,121.4,56.0;15.8,122.8,84.0;18.5,125.5,72.8;24.3,130.9,67.2]; # JMA best track (except day 1 wind)
myvect = [myvect;my_wpac_2024_002];
rsmcvect = [rsmcvect;rsmc_wpac_2024_002];
btkvect = [btkvect;btk_wpac_2024_002];
btk2vect = [btk2vect;btk2_wpac_2024_002];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Nio 01 ... BOB 01 / 99B before 2024-05-24-09Z ... CERTIFIED

my_nio_2024_01 = [17.8,90.7,35;    20.3,90.9,55;  23.0,90.9,45;  25.3,91.5,20];
rsmc_nio_2024_01 = [17.6,89.5,37.1;20.1,89.6,58.3;22.7,89.6,47.7;24.9,90.4,26.5];
btk_nio_2024_01 = [18.0,89.3,30;   20.4,88.9,50;  23.2,89.3,45;  25.4,91.9,30]; # operationally from U.S. sources
btk2_nio_2024_01 = [18.2,89.7,31.8;20.2,89.2,53.0;23.0,89.2,37.1;25.1,91.8,21.2]; # IMD prelim report
myvect = [myvect;my_nio_2024_01];
rsmcvect = [rsmcvect;rsmc_nio_2024_01];
btkvect = [btkvect;btk_nio_2024_01];
btk2vect = [btk2vect;btk2_nio_2024_01];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Wpac 003 ... TD/93W/(AGHON) before 2024-05-24-09Z ... CERTIFIED

my_wpac_2024_003 = [12.3,124.3,35;    14.8,122.9,40;  17.0,124.5,65;  21.3,127.7,80;  27.1,134.6,75];
rsmc_wpac_2024_003 = [12.5,124.3,39.2;15.0,123.2,44.8;17.4,124.8,61.6;22.2,128.6,72.8;28.5,136.0,72.8];
btk_wpac_2024_003 = [12.8,123.0,30;   14.5,121.8,55;  16.2,123.5,95;  19.9,126.8,75;  25.2,131.8,60]; # operationally from U.S. sources
btk2_wpac_2024_003 = [12.8,123.2,28.0;14.3,121.7,61.6;16.4,123.5,78.4;19.8,126.6,72.8;25.6,132.2,67.2]; # JMA best track (except day 1 wind)
myvect = [myvect;my_wpac_2024_003];
rsmcvect = [rsmcvect;rsmc_wpac_2024_003];
btkvect = [btkvect;btk_wpac_2024_003];
btk2vect = [btk2vect;btk2_wpac_2024_003];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Nio 02 ... BOB 01 / 99B before 2024-05-25-03Z ... CERTIFIED

my_nio_2024_02 = [20.1,89.8,50;    22.5,90.1,45;  25.5,90.9,15];
rsmc_nio_2024_02 = [19.9,89.6,53.0;22.5,89.5,47.7;24.7,90.1,21.2];
btk_nio_2024_02 = [19.5,89.0,45;   22.6,89.1,50;  24.9,91.2,40]; # operationally from U.S. sources
btk2_nio_2024_02 = [19.5,89.4,53.0;22.5,89.2,47.7;24.4,91.1,21.2]; # IMD prelim report
myvect = [myvect;my_nio_2024_02];
rsmcvect = [rsmcvect;rsmc_nio_2024_02];
btkvect = [btkvect;btk_nio_2024_02];
btk2vect = [btk2vect;btk2_nio_2024_02];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Wpac 004 ... 01W/(AGHON) before 2024-05-25-03Z ... CERTIFIED

my_wpac_2024_004 = [14.9,122.1,35;    16.5,123.4,45;  20.3,127.6,70;  27.2,134.2,65;  35.3,145.0,45];
rsmc_wpac_2024_004 = [14.9,122.2,39.2;16.5,123.5,50.4;19.8,127.1,67.2;26.5,134.0,67.2;34.6,144.6,56.0];
btk_wpac_2024_004 = [14.1,121.4,55;   15.8,122.8,90;  18.5,125.5,75;  24.3,130.8,70;  28.2,134.8,55]; # operationally from U.S. sources
btk2_wpac_2024_004 = [14.1,121.4,56.0;15.8,122.8,84.0;18.5,125.5,72.8;24.3,130.9,67.2;28.0,134.7,50.4]; # JMA best track
myvect = [myvect;my_wpac_2024_004];
rsmcvect = [rsmcvect;rsmc_wpac_2024_004];
btkvect = [btkvect;btk_wpac_2024_004];
btk2vect = [btk2vect;btk2_wpac_2024_004];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Nio 03 ... BOB 01 / 99B before 2024-05-25-09Z ... CERTIFIED

my_nio_2024_03 = [20.4,89.3,50;    22.8,89.6,40;  25.0,90.4,15];
rsmc_nio_2024_03 = [20.7,89.4,63.6;23.1,89.5,37.1;25.3,90.3,15.9];
btk_nio_2024_03 = [20.4,88.9,50;   23.2,89.3,45;  25.4,91.9,30]; # operationally from U.S. sources
btk2_nio_2024_03 = [20.2,89.2,53.0;23.0,89.2,37.1;25.1,91.8,21.2]; # IMD prelim report
myvect = [myvect;my_nio_2024_03];
rsmcvect = [rsmcvect;rsmc_nio_2024_03];
btkvect = [btkvect;btk_nio_2024_03];
btk2vect = [btk2vect;btk2_nio_2024_03];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Wpac 005 ... 01W/(AGHON) before 2024-05-25-09Z ... CERTIFIED

my_wpac_2024_005 = [14.6,121.5,40;    17.1,123.2,50;  20.6,126.4,65;  24.3,132.7,50;  26.4,135.7,45];
rsmc_wpac_2024_005 = [14.7,121.7,39.2;17.0,123.4,50.4;20.7,127.1,67.2;25.4,133.9,67.2;29.0,138.3,56.0];
btk_wpac_2024_005 = [14.5,121.8,55;   16.2,123.5,95;  19.9,126.8,75;  25.2,131.8,60;  29.0,135.8,50]; # operationally from U.S. sources
btk2_wpac_2024_005 = [14.3,121.7,61.6;16.4,123.5,78.4;19.8,126.6,72.8;25.6,132.2,67.2;28.9,135.9,44.8]; # JMA best track
myvect = [myvect;my_wpac_2024_005];
rsmcvect = [rsmcvect;rsmc_wpac_2024_005];
btkvect = [btkvect;btk_wpac_2024_005];
btk2vect = [btk2vect;btk2_wpac_2024_005];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Nio 04 ... REMAL before 2024-05-26-03Z ... CERTIFIED

my_nio_2024_04 = [22.1,89.1,40;    24.5,90.8,25];
rsmc_nio_2024_04 = [22.7,89.5,42.4;25.5,90.9,21.2];
btk_nio_2024_04 = [22.6,89.1,50;   24.9,91.2,40]; # operationally from U.S. sources
btk2_nio_2024_04 = [22.5,89.2,47.7;24.4,91.1,21.2]; # IMD prelim report
myvect = [myvect;my_nio_2024_04];
rsmcvect = [rsmcvect;rsmc_nio_2024_04];
btkvect = [btkvect;btk_nio_2024_04];
btk2vect = [btk2vect;btk2_nio_2024_04];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Nio 05 ... REMAL before 2024-05-26-09Z ... CERTIFIED

my_nio_2024_05 = [23.4,89.4,40];
rsmc_nio_2024_05 = [23.5,89.8,31.8];
btk_nio_2024_05 = [23.2,89.3,45]; # operationally from U.S. sources
btk2_nio_2024_05 = [23.0,89.2,37.1]; # IMD prelim report
myvect = [myvect;my_nio_2024_05];
rsmcvect = [rsmcvect;rsmc_nio_2024_05];
btkvect = [btkvect;btk_nio_2024_05];
btk2vect = [btk2vect;btk2_nio_2024_05];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;2];

# Wpac 006 ... EWINIAR/(AGHON) before 2024-05-26-09Z ... CERTIFIED

my_wpac_2024_006 = [16.8,123.4,75;    20.0,127.3,90;  24.0,131.3,80;  27.9,135.9,55;  31.8,142.7,40];
rsmc_wpac_2024_006 = [16.9,123.5,56.0;20.1,127.3,67.2;24.4,131.8,67.2;27.8,136.7,56.0;32.1,142.8,44.8];
btk_wpac_2024_006 = [16.2,123.5,95;   19.9,126.8,75;  25.2,131.8,60;  29.0,135.8,50;  34.2,142.8,45]; # operationally from U.S. sources
btk2_wpac_2024_006 = [16.4,123.5,78.4;19.8,126.6,72.8;25.6,132.2,67.2;28.9,135.9,44.8;34.9,143.2,44.8]; # JMA best track (except day 5 wind)
myvect = [myvect;my_wpac_2024_006];
rsmcvect = [rsmcvect;rsmc_wpac_2024_006];
btkvect = [btkvect;btk_wpac_2024_006];
btk2vect = [btk2vect;btk2_wpac_2024_006];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 007 ... EWINIAR/(AGHON) before 2024-05-27-03Z ... CERTIFIED

my_wpac_2024_007 = [18.6,125.8,125;   23.7,130.7,100; 27.9,134.6,80;  32.3,139.6,50;  38.9,154.1,0];
rsmc_wpac_2024_007 = [18.8,125.9,78.4;24.0,131.2,84.0;28.3,135.5,61.6;33.3,140.6,50.4;40.5,155.1,0];
btk_wpac_2024_007 = [18.5,125.5,75;   24.3,130.8,70;  28.2,134.8,55;  33.1,139.9,45;  39.1,155.1,0]; # operationally from U.S. sources (except day 5 JMA)
btk2_wpac_2024_007 = [18.5,125.5,72.8;24.3,130.9,67.2;28.0,134.7,50.4;33.0,140.1,44.8;39.1,155.1,0]; # JMA best track (except day 4 wind)
myvect = [myvect;my_wpac_2024_007];
rsmcvect = [rsmcvect;rsmc_wpac_2024_007];
btkvect = [btkvect;btk_wpac_2024_007];
btk2vect = [btk2vect;btk2_wpac_2024_007];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 008 ... EWINIAR/(AGHON) before 2024-05-27-09Z ... CERTIFIED

my_wpac_2024_008 = [19.8,126.8,100;   24.8,131.9,85;  28.5,135.8,65;  34.2,142.8,50;  40.0,156.1,0];
rsmc_wpac_2024_008 = [19.9,126.8,84.0;25.0,131.9,78.4;28.8,135.8,61.6;34.5,142.3,50.4;40.9,154.6,0];
btk_wpac_2024_008 = [19.9,126.8,75;   25.2,131.8,60;  29.0,135.8,50;  34.2,142.8,45;  40.5,159.2,0]; # operationally from U.S. sources (except day 5 JMA)
btk2_wpac_2024_008 = [19.8,126.6,72.8;25.6,132.2,67.2;28.9,135.9,44.8;34.9,143.2,44.8;40.5,159.2,0]; # JMA best track (except day 4 wind)
myvect = [myvect;my_wpac_2024_008];
rsmcvect = [rsmcvect;rsmc_wpac_2024_008];
btkvect = [btkvect;btk_wpac_2024_008];
btk2vect = [btk2vect;btk2_wpac_2024_008];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 009 ... 04W/(BUTCHOY) before 2024-07-19-21Z ... CERTIFIED

my_wpac_2024_009 = [16.8,112.1,35;    18.8,111.3,35;  21.1,110.1,0];
rsmc_wpac_2024_009 = [16.9,111.7,39.2;18.8,110.7,39.2;21.0,109.5,0];
btk_wpac_2024_009 = [16.1,111.7,35;   18.8,110.2,50;  21.0,108.0,0]; # operationally from U.S. sources
btk2_wpac_2024_009 = [16.1,112.1,33.6;18.6,110.2,50.4;21.1,107.8,0]; # JMA best track (except day 1 wind)
myvect = [myvect;my_wpac_2024_009];
rsmcvect = [rsmcvect;rsmc_wpac_2024_009];
btkvect = [btkvect;btk_wpac_2024_009];
btk2vect = [btk2vect;btk2_wpac_2024_009];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Wpac 010 ... 05W/(CARINA) before 2024-07-19-21Z ... CERTIFIED

my_wpac_2024_010 = [16.1,127.6,35;    17.7,126.4,50;  18.9,126.0,80;  22.0,126.0,115; 24.9,124.3,105];
rsmc_wpac_2024_010 = [16.1,128.1,39.2;17.5,126.7,50.4;19.1,126.3,61.6;22.3,125.8,78.4;25.1,124.8,89.6];
btk_wpac_2024_010 = [16.6,126.4,40;   17.0,125.7,55;  19.1,125.0,70;  22.8,123.5,120; 24.7,121.4,95]; # operationally from U.S. sources
btk2_wpac_2024_010 = [16.3,126.2,44.8;16.8,125.5,67.2;18.7,125.2,78.4;22.8,123.5,95.2;24.8,121.4,67.2]; # JMA best track
myvect = [myvect;my_wpac_2024_010];
rsmcvect = [rsmcvect;rsmc_wpac_2024_010];
btkvect = [btkvect;btk_wpac_2024_010];
btk2vect = [btk2vect;btk2_wpac_2024_010];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 011 ... 04W/(BUTCHOY) before 2024-07-20-21Z ... CERTIFIED

my_wpac_2024_011 = [18.6,110.7,45;    20.7,108.6,0];
rsmc_wpac_2024_011 = [18.8,110.8,39.2;20.9,108.7,0];
btk_wpac_2024_011 = [18.8,110.2,50;   21.0,108.0,0]; # operationally from U.S. sources
btk2_wpac_2024_011 = [18.6,110.2,50.4;21.1,107.8,0]; # JMA best track
myvect = [myvect;my_wpac_2024_011];
rsmcvect = [rsmcvect;rsmc_wpac_2024_011];
btkvect = [btkvect;btk_wpac_2024_011];
btk2vect = [btk2vect;btk2_wpac_2024_011];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Wpac 012 ... GAEMI/(CARINA) before 2024-07-20-21Z ... CERTIFIED

my_wpac_2024_012 = [17.9,125.3,55;    19.4,124.6,65;  21.1,124.0,85;  25.3,122.3,85;  27.8,118.5,70];
rsmc_wpac_2024_012 = [17.9,125.6,56.0;19.5,125.0,72.8;21.7,124.4,84.0;25.0,122.8,95.2;27.2,119.2,89.6];
btk_wpac_2024_012 = [17.0,125.7,55;   19.1,125.0,70;  22.8,123.5,120; 24.7,121.4,95;  25.6,118.6,45]; # operationally from U.S. sources
btk2_wpac_2024_012 = [16.8,125.5,67.2;18.7,125.2,78.4;22.8,123.5,95.2;24.8,121.4,67.2;25.7,118.9,50.4]; # JMA best track
myvect = [myvect;my_wpac_2024_012];
rsmcvect = [rsmcvect;rsmc_wpac_2024_012];
btkvect = [btkvect;btk_wpac_2024_012];
btk2vect = [btk2vect;btk2_wpac_2024_012];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 013 ... PRAPIROON/(BUTCHOY) before 2024-07-21-09Z ... CERTIFIED

my_wpac_2024_013 = [19.8,109.3,35;    21.6,108.8,0];
rsmc_wpac_2024_013 = [19.8,109.3,39.2;21.5,108.6,0];
btk_wpac_2024_013 = [20.1,108.7,55;   21.6,107.4,0]; # operationally from U.S. sources
btk2_wpac_2024_013 = [20.1,108.5,61.6;21.6,107.6,0]; # JMA best track
myvect = [myvect;my_wpac_2024_013];
rsmcvect = [rsmcvect;rsmc_wpac_2024_013];
btkvect = [btkvect;btk_wpac_2024_013];
btk2vect = [btk2vect;btk2_wpac_2024_013];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Wpac 014 ... GAEMI/(CARINA) before 2024-07-21-09Z ... CERTIFIED

my_wpac_2024_014 = [18.2,125.4,55;    20.0,125.4,70;  24.2,124.1,95;   26.2,121.2,80;  28.4,119.4,50];
rsmc_wpac_2024_014 = [18.2,125.5,67.2;20.1,125.1,84.0;23.7,124.2,95.2; 26.1,121.6,89.6;28.9,119.7,89.6];
btk_wpac_2024_014 = [18.1,125.5,55;   20.8,125.2,90;  24.2,122.5,125;  25.1,119.8,60;  27.5,117.8,35]; # operationally from U.S. sources
btk2_wpac_2024_014 = [17.7,125.5,72.8;20.7,125.0,84.0;24.2,122.5,100.8;25.2,119.7,61.6;27.5,117.7,39.2]; # JMA best track
myvect = [myvect;my_wpac_2024_014];
rsmcvect = [rsmcvect;rsmc_wpac_2024_014];
btkvect = [btkvect;btk_wpac_2024_014];
btk2vect = [btk2vect;btk2_wpac_2024_014];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 015 ... GAEMI/(CARINA) before 2024-07-21-21Z ... certification failed

my_wpac_2024_015 = [18.7,125.1,60;    22.1,124.4,80;  25.0,122.0,85;  26.3,119.3,60;  29.7,117.6,30];
rsmc_wpac_2024_015 = [18.8,125.1,78.4;22.1,124.6,95.2;24.8,122.3,95.2;26.3,119.1,72.8;29.5,116.8,39.2];
btk_wpac_2024_015 = [19.1,125.0,70;   22.8,123.5,120; 24.7,121.4,95;  25.6,118.6,45;  29.5,116.5,25]; # operationally from U.S. sources
btk2_wpac_2024_015 = [18.7,125.2,78.4;22.8,123.5,95.2;24.8,121.4,67.2;25.7,118.9,50.4;27.9,115.9,25.0]; # JMA best track (except day 5 wind)
myvect = [myvect;my_wpac_2024_015];
rsmcvect = [rsmcvect;rsmc_wpac_2024_015];
btkvect = [btkvect;btk_wpac_2024_015];
btk2vect = [btk2vect;btk2_wpac_2024_015];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 016 ... GAEMI/(CARINA) before 2024-07-22-03Z ... certification failed

my_wpac_2024_016 = [19.8,125.4,65;    23.2,123.9,95;  25.4,120.8,85;  26.8,118.2,50;  30.7,116.0,0];
rsmc_wpac_2024_016 = [19.7,125.3,78.4;23.3,124.0,95.2;25.4,120.9,89.6;26.6,118.0,61.6;29.7,115.1,0];
btk_wpac_2024_016 = [19.7,125.0,80;   23.5,123.3,120; 25.1,120.2,75;  26.5,118.3,35;  28.4,115.2,0]; # operationally from U.S. sources (except day 5 JMA)
btk2_wpac_2024_016 = [19.5,125.1,84.0;23.6,123.2,95.2;25.1,120.3,67.2;26.4,118.3,44.8;28.4,115.2,0]; # JMA best track
myvect = [myvect;my_wpac_2024_016];
rsmcvect = [rsmcvect;rsmc_wpac_2024_016];
btkvect = [btkvect;btk_wpac_2024_016];
btk2vect = [btk2vect;btk2_wpac_2024_016];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 017 ... GAEMI/(CARINA) before 2024-07-22-09Z ... CERTIFIED

my_wpac_2024_017 = [20.6,125.1,75;    24.0,123.0,100;  25.3,119.8,70;  27.4,117.5,40;  29.8,115.4,0];
rsmc_wpac_2024_017 = [20.5,125.0,84.0;23.9,123.1,95.2; 25.5,120.2,78.4;27.3,117.6,50.4;29.7,115.6,0];
btk_wpac_2024_017 = [20.8,125.2,90;   24.2,122.5,125;  25.1,119.8,60;  27.5,117.8,35;  28.6,114.7,0]; # operationally from U.S. sources (except day 5 JMA)
btk2_wpac_2024_017 = [20.7,125.0,84.0;24.2,122.5,100.8;25.2,119.7,61.6;27.5,117.7,39.2;28.6,114.7,0]; # JMA best track
myvect = [myvect;my_wpac_2024_017];
rsmcvect = [rsmcvect;rsmc_wpac_2024_017];
btkvect = [btkvect;btk_wpac_2024_017];
btk2vect = [btk2vect;btk2_wpac_2024_017];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 018 ... GAEMI/(CARINA) before 2024-07-25-03Z ... CERTIFIED

my_wpac_2024_018 = [27.2,117.9,40;    29.3,115.2,0;31.5,112.8,0];
rsmc_wpac_2024_018 = [27.2,118.0,50.4;29.2,115.4,0;31.4,113.3,0];
btk_wpac_2024_018 = [26.5,118.3,35;   28.4,115.2,0;29.9,112.6,0]; # operationally from U.S. sources (except days 2-3 JMA)
btk2_wpac_2024_018 = [26.4,118.3,44.8;28.4,115.2,0;29.9,112.6,0]; # JMA best track
myvect = [myvect;my_wpac_2024_018];
rsmcvect = [rsmcvect;rsmc_wpac_2024_018];
btkvect = [btkvect;btk_wpac_2024_018];
btk2vect = [btk2vect;btk2_wpac_2024_018];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Wpac 019 ... GAEMI/(CARINA) before 2024-07-25-09Z ... CERTIFIED

my_wpac_2024_019 = [27.7,117.4,35;    29.5,115.6,0;30.4,112.2,0];
rsmc_wpac_2024_019 = [27.6,117.3,44.8;29.4,115.2,0;31.2,112.7,0];
btk_wpac_2024_019 = [27.5,117.8,35;   28.6,114.7,0;29.5,110.9,0]; # operationally from U.S. sources (except days 2-3 JMA)
btk2_wpac_2024_019 = [27.5,117.7,39.2;28.6,114.7,0;29.5,110.9,0]; # JMA best track
myvect = [myvect;my_wpac_2024_019];
rsmcvect = [rsmcvect;rsmc_wpac_2024_019];
btkvect = [btkvect;btk_wpac_2024_019];
btk2vect = [btk2vect;btk2_wpac_2024_019];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Wpac 020 ... 06W before 2024-08-07-09Z ... CERTIFIED

my_wpac_2024_020 = [28.6,144.4,40;    32.7,145.9,45;  37.2,145.9,45;  41.0,147.7,45;  44.6,150.7,20];
rsmc_wpac_2024_020 = [28.7,144.7,39.2;33.1,145.9,44.8;38.1,146.3,50.4;41.5,148.0,50.4;45.2,151.3,39.2];
btk_wpac_2024_020 = [27.9,144.8,55;   32.1,146.0,60;  35.6,145.4,50;  37.6,143.9,50;  39.8,139.9,35]; # operationally from U.S. sources
btk2_wpac_2024_020 = [27.6,144.7,50.4;32.4,146.0,61.6;36.0,145.5,50.4;37.7,143.9,56.0;39.9,140.5,33.6]; # JMA best track (except day 5 wind)
myvect = [myvect;my_wpac_2024_020];
rsmcvect = [rsmcvect;rsmc_wpac_2024_020];
btkvect = [btkvect;btk_wpac_2024_020];
btk2vect = [btk2vect;btk2_wpac_2024_020];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 021 ... YAGI/(ENTENG) before 2024-09-01-21Z ... CERTIFIED

my_wpac_2024_021 = [18.0,122.0,50;    18.9,119.8,65;  18.7,117.8,100;  19.2,116.4,110;  20.8,113.7,115];
rsmc_wpac_2024_021 = [18.2,122.2,44.8;19.4,120.1,50.4;18.9,117.6,56.0; 18.8,115.4,67.2; 20.2,112.8,78.4];
btk_wpac_2024_021 = [18.2,120.6,40;   18.9,118.5,60;  19.2,116.3,120;  19.2,113.0,135;  20.2,109.0,105]; # operationally from U.S. sources
btk2_wpac_2024_021 = [18.1,121.0,39.2;18.9,118.3,67.2;19.2,116.2,112.0;19.2,113.0,117.6;20.3,109.0,95.2]; # JMA best track
myvect = [myvect;my_wpac_2024_021];
rsmcvect = [rsmcvect;rsmc_wpac_2024_021];
btkvect = [btkvect;btk_wpac_2024_021];
btk2vect = [btk2vect;btk2_wpac_2024_021];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 022 ... YAGI/(ENTENG) before 2024-09-02-03Z ... CERTIFIED

my_wpac_2024_022 = [18.8,121.7,40;    19.5,119.5,65;  19.1,116.3,90;   19.3,114.0,105;  20.4,111.6,90];
rsmc_wpac_2024_022 = [18.9,121.8,50.4;19.5,119.6,56.0;18.9,116.9,67.2; 19.2,114.4,78.4; 20.4,111.8,84.0];
btk_wpac_2024_022 = [18.4,119.6,40;   19.1,117.7,70;  19.0,115.8,140;  19.2,112.2,130;  20.3,108.2,115]; # operationally from U.S. sources
btk2_wpac_2024_022 = [18.2,119.6,44.8;19.0,117.6,78.4;19.0,115.8,117.6;19.2,112.2,117.6;20.5,108.1,95.2]; # JMA best track
myvect = [myvect;my_wpac_2024_022];
rsmcvect = [rsmcvect;rsmc_wpac_2024_022];
btkvect = [btkvect;btk_wpac_2024_022];
btk2vect = [btk2vect;btk2_wpac_2024_022];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 023 ... YAGI/(ENTENG) before 2024-09-02-09Z ... CERTIFIED

my_wpac_2024_023 = [19.2,120.2,50;    19.0,117.4,70;  18.7,115.2,90;   19.4,112.9,100;  21.3,110.4,80];
rsmc_wpac_2024_023 = [19.1,120.3,50.4;19.0,117.7,67.2;18.7,115.5,78.4; 19.4,112.7,89.6; 21.0,109.7,84.0];
btk_wpac_2024_023 = [18.5,119.1,40;   19.1,117.4,80;  19.2,115.1,125;  19.7,111.3,125;  21.0,106.9,110]; # operationally from U.S. sources
btk2_wpac_2024_023 = [18.5,119.0,50.4;19.2,117.4,89.6;19.3,115.1,117.6;19.8,111.3,117.6;21.0,107.0,100.8]; # JMA best track
myvect = [myvect;my_wpac_2024_023];
rsmcvect = [rsmcvect;rsmc_wpac_2024_023];
btkvect = [btkvect;btk_wpac_2024_023];
btk2vect = [btk2vect;btk2_wpac_2024_023];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 024 ... YAGI/(ENTENG) before 2024-09-02-21Z ... CERTIFIED

my_wpac_2024_024 = [19.0,118.7,55;    19.1,116.7,80;   19.1,114.3,105;  20.6,111.5,100; 22.2,108.1,60];
rsmc_wpac_2024_024 = [19.0,118.7,56.0;19.0,116.5,72.8; 18.9,113.7,89.6; 20.1,110.6,95.2;21.5,107.3,67.2];
btk_wpac_2024_024 = [18.9,118.5,60;   19.2,116.3,120;  19.2,113.0,135;  20.2,109.0,105; 21.2,105.1,60]; # operationally from U.S. sources
btk2_wpac_2024_024 = [18.9,118.3,67.2;19.2,116.2,112.0;19.2,113.0,117.6;20.3,109.0,95.2;20.8,105.7,44.8]; # JMA best track
myvect = [myvect;my_wpac_2024_024];
rsmcvect = [rsmcvect;rsmc_wpac_2024_024];
btkvect = [btkvect;btk_wpac_2024_024];
btk2vect = [btk2vect;btk2_wpac_2024_024];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 025 ... YAGI/(ENTENG) before 2024-09-03-09Z ... CERTIFIED

my_wpac_2024_025 = [18.9,117.3,65;    18.7,115.1,85;   19.7,111.9,105;  21.1,108.7,65;   22.4,105.1,30];
rsmc_wpac_2024_025 = [19.0,117.5,67.2;18.8,115.3,89.6; 19.5,112.3,106.4;21.0,109.0,72.8; 22.1,105.6,39.2];
btk_wpac_2024_025 = [19.1,117.4,80;   19.2,115.1,125;  19.7,111.3,125;  21.0,106.9,110;  21.5,104.2,35]; # operationally from U.S. sources
btk2_wpac_2024_025 = [19.2,117.4,89.6;19.3,115.1,117.6;19.8,111.3,117.6;21.0,107.0,100.8;21.3,104.9,39.2]; # JMA best track
myvect = [myvect;my_wpac_2024_025];
rsmcvect = [rsmcvect;rsmc_wpac_2024_025];
btkvect = [btkvect;btk_wpac_2024_025];
btk2vect = [btk2vect;btk2_wpac_2024_025];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 026 ... YAGI/(ENTENG) before 2024-09-03-15Z ... CERTIFIED

my_wpac_2024_026 = [19.0,116.9,65;     19.0,114.5,95;   20.0,110.9,90;   21.0,107.7,55;  22.4,104.0,0];
rsmc_wpac_2024_026 = [18.9,116.9,72.8; 19.0,114.7,95.2; 20.0,111.3,106.4;21.2,107.6,72.8;22.4,103.3,0];
btk_wpac_2024_026 = [19.2,116.9,110;   19.3,114.1,125;  20.0,110.2,120;  21.0,105.9,75;  23.0,103.1,0]; # operationally from U.S. sources
btk2_wpac_2024_026 = [19.2,117.0,100.8;19.3,114.2,117.6;20.0,110.2,106.4;20.9,106.0,61.6;21.5,104.2,0]; # JMA best track
myvect = [myvect;my_wpac_2024_026];
rsmcvect = [rsmcvect;rsmc_wpac_2024_026];
btkvect = [btkvect;btk_wpac_2024_026];
btk2vect = [btk2vect;btk2_wpac_2024_026];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 027 ... YAGI/(ENTENG) before 2024-09-03-21Z ... CERTIFIED

my_wpac_2024_027 = [19.2,116.1,85;     19.4,113.0,100;  20.4,109.1,95;   21.6,106.0,40;  22.3,101.2,0];
rsmc_wpac_2024_027 = [19.1,116.2,78.4; 19.4,113.2,95.2; 20.3,109.2,106.4;21.2,105.5,61.6;21.3,100.3,0];
btk_wpac_2024_027 = [19.2,116.3,120;   19.2,113.0,135;  20.2,109.0,105;  21.2,105.1,60;  22.0,103.3,0]; # operationally from U.S. sources
btk2_wpac_2024_027 = [19.2,116.2,112.0;19.2,113.0,117.6;20.3,109.0,95.2; 20.8,105.7,44.8;22.1,103.5,0]; # JMA best track
myvect = [myvect;my_wpac_2024_027];
rsmcvect = [rsmcvect;rsmc_wpac_2024_027];
btkvect = [btkvect;btk_wpac_2024_027];
btk2vect = [btk2vect;btk2_wpac_2024_027];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 028 ... YAGI/(ENTENG) before 2024-09-04-15Z ... CERTIFIED

my_wpac_2024_028 = [19.3,114.3,125;    20.3,110.7,115;  21.5,107.0,65;  21.8,102.7,0];
rsmc_wpac_2024_028 = [19.4,114.3,112.0;20.4,110.5,112.0;21.5,106.3,67.2;21.3,101.4,0];
btk_wpac_2024_028 = [19.3,114.1,125;   20.0,110.2,120;  21.0,105.9,75;  23.0,103.1,0]; # operationally from U.S. sources
btk2_wpac_2024_028 = [19.3,114.2,117.6;20.0,110.2,106.4;20.9,106.0,61.6;21.5,104.2,0]; # JMA best track
myvect = [myvect;my_wpac_2024_028];
rsmcvect = [rsmcvect;rsmc_wpac_2024_028];
btkvect = [btkvect;btk_wpac_2024_028];
btk2vect = [btk2vect;btk2_wpac_2024_028];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Wpac 029 ... YAGI/(ENTENG) before 2024-09-04-21Z ... CERTIFIED

my_wpac_2024_029 = [19.4,113.5,145;    20.7,109.9,100; 22.0,106.0,45;  22.5,103.0,0];
rsmc_wpac_2024_029 = [19.5,113.6,117.6;20.7,109.9,95.2;21.9,105.7,44.8;22.3,101.9,0];
btk_wpac_2024_029 = [19.2,113.0,135;   20.2,109.0,105; 21.2,105.1,60;  22.0,103.3,0]; # operationally from U.S. sources
btk2_wpac_2024_029 = [19.2,113.0,117.6;20.3,109.0,95.2;20.8,105.7,44.8;22.1,103.5,0]; # JMA best track
myvect = [myvect;my_wpac_2024_029];
rsmcvect = [rsmcvect;rsmc_wpac_2024_029];
btkvect = [btkvect;btk_wpac_2024_029];
btk2vect = [btk2vect;btk2_wpac_2024_029];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Wpac 030 ... YAGI/(ENTENG) before 2024-09-05-15Z ... CERTIFIED

my_wpac_2024_030 = [20.3,110.7,105;    21.6,106.9,45;  22.0,103.0,0];
rsmc_wpac_2024_030 = [20.3,110.7,123.2;21.6,106.8,67.2;22.0,103.0,0];
btk_wpac_2024_030 = [20.0,110.2,120;   21.0,105.9,75;  23.0,103.1,0]; # operationally from U.S. sources
btk2_wpac_2024_030 = [20.0,110.2,106.4;20.9,106.0,61.6;21.5,104.2,0]; # JMA best track
myvect = [myvect;my_wpac_2024_030];
rsmcvect = [rsmcvect;rsmc_wpac_2024_030];
btkvect = [btkvect;btk_wpac_2024_030];
btk2vect = [btk2vect;btk2_wpac_2024_030];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Wpac 031 ... YAGI/(ENTENG) before 2024-09-05-21Z ... CERTIFIED

my_wpac_2024_031 = [20.2,109.4,90;     21.6,105.9,45;  22.6,102.9,0];
rsmc_wpac_2024_031 = [20.4,109.6,100.8;21.8,105.8,44.8;22.2,102.9,0];
btk_wpac_2024_031 = [20.2,109.0,105;   21.2,105.1,60;  22.0,103.3,0]; # operationally from U.S. sources
btk2_wpac_2024_031 = [20.3,109.0,95.2; 20.8,105.7,44.8;22.1,103.5,0]; # JMA best track
myvect = [myvect;my_wpac_2024_031];
rsmcvect = [rsmcvect;rsmc_wpac_2024_031];
btkvect = [btkvect;btk_wpac_2024_031];
btk2vect = [btk2vect;btk2_wpac_2024_031];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Nio 06 ... BOB 07 / 98B before 2024-10-23-03Z ... certification failed

my_nio_2024_06 = [19.0,87.8,50;    21.3,86.6,55;  21.6,83.2,20];
rsmc_nio_2024_06 = [18.8,88.1,58.3;20.9,86.9,58.3;21.7,85.3,26.5];
btk_nio_2024_06 = [18.8,88.3,60;   20.8,86.9,60;  21.3,86.0,30]; # operationally from U.S. sources
btk2_nio_2024_06 = [18.6,88.2,58.3;21.0,86.8,53.0;21.3,86.0,31.8]; # IMD brief report (except day 3)
myvect = [myvect;my_nio_2024_06];
rsmcvect = [rsmcvect;rsmc_nio_2024_06];
btkvect = [btkvect;btk_nio_2024_06];
btk2vect = [btk2vect;btk2_nio_2024_06];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Wpac 032 ... TRAMI/(KRISTINE) before 2024-10-23-03Z ... certification failed

my_wpac_2024_032 = [16.6,119.9,35;    17.2,117.4,40;  17.3,114.2,50;  16.6,110.8,55;  15.5,109.9,35];
rsmc_wpac_2024_032 = [16.6,120.0,50.4;17.4,117.7,56.0;17.6,113.8,67.2;17.2,110.1,61.6;15.8,109.3,56.0];
btk_wpac_2024_032 = [17.0,121.2,45;   16.9,118.8,50;  17.0,113.5,60;  16.5,108.4,45;  15.5,107.9,25]; # operationally from U.S. sources
btk2_wpac_2024_032 = btk_wpac_2024_032; # placeholder
myvect = [myvect;my_wpac_2024_032];
rsmcvect = [rsmcvect;rsmc_wpac_2024_032];
btkvect = [btkvect;btk_wpac_2024_032];
btk2vect = [btk2vect;btk2_wpac_2024_032];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 033 ... TRAMI/(KRISTINE) before 2024-10-25-03Z ... certification failed

my_wpac_2024_033 = [17.3,113.8,55;    17.1,109.8,45;  16.5,109.6,35;  16.6,110.8,30];
rsmc_wpac_2024_033 = [17.4,113.7,67.2;17.1,109.8,56.0;16.2,109.7,50.4;16.0,110.5,50.4];
btk_wpac_2024_033 = [17.0,113.5,60;   16.5,108.4,45;  15.5,107.9,25;  16.5,109.0,20]; # operationally from U.S. sources
btk2_wpac_2024_033 = btk_wpac_2024_033; # placeholder
myvect = [myvect;my_wpac_2024_033];
rsmcvect = [rsmcvect;rsmc_wpac_2024_033];
btkvect = [btkvect;btk_wpac_2024_033];
btk2vect = [btk2vect;btk2_wpac_2024_033];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Wpac 034 ... TRAMI/(KRISTINE) before 2024-10-26-21Z ... certification failed

my_wpac_2024_034 = [16.3,108.8,35;    16.3,109.7,0];
rsmc_wpac_2024_034 = [16.0,108.8,39.2;15.9,109.8,0];
btk_wpac_2024_034 = [15.3,107.8,30;   16.4,108.7,0]; # operationally from U.S. sources
btk2_wpac_2024_034 = btk_wpac_2024_034; # placeholder
myvect = [myvect;my_wpac_2024_034];
rsmcvect = [rsmcvect;rsmc_wpac_2024_034];
btkvect = [btkvect;btk_wpac_2024_034];
btk2vect = [btk2vect;btk2_wpac_2024_034];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Wpac 035 ... KONG-REY/(LEON) before 2024-10-26-21Z ... certification failed

my_wpac_2024_035 = [16.9,131.1,40;    17.7,128.6,65;  19.5,126.8,90;  22.0,125.0,85;  25.6,123.3,85];
rsmc_wpac_2024_035 = [17.0,131.1,50.4;17.5,128.6,61.6;19.3,126.7,84.0;21.3,125.1,95.2;25.0,123.2,95.2];
btk_wpac_2024_035 = [16.7,130.5,50;   17.0,127.9,70;  18.8,125.5,125; 21.0,122.8,115; 25.2,120.1,60]; # operationally from U.S. sources
btk2_wpac_2024_035 = btk_wpac_2024_035; # placeholder
myvect = [myvect;my_wpac_2024_035];
rsmcvect = [rsmcvect;rsmc_wpac_2024_035];
btkvect = [btkvect;btk_wpac_2024_035];
btk2vect = [btk2vect;btk2_wpac_2024_035];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 036 ... KONG-REY/(LEON) before 2024-10-28-03Z ... certification failed

my_wpac_2024_036 = [17.9,127.1,65;    19.4,124.7,100; 21.4,122.2,100;  25.1,119.4,70;  29.1,122.3,0];
rsmc_wpac_2024_036 = [17.8,127.3,67.2;19.4,125.0,89.6;21.5,122.6,106.4;25.0,119.8,56.0;28.8,122.9,0];
btk_wpac_2024_036 = [17.4,127.2,80;   19.1,124.9,130; 22.0,122.2,115;  26.7,120.6,55;  32.6,130.3,0]; # operationally from U.S. sources
btk2_wpac_2024_036 = btk_wpac_2024_036; # placeholder
myvect = [myvect;my_wpac_2024_036];
rsmcvect = [rsmcvect;rsmc_wpac_2024_036];
btkvect = [btkvect;btk_wpac_2024_036];
btk2vect = [btk2vect;btk2_wpac_2024_036];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 037 ... KONG-REY/(LEON) before 2024-10-28-09Z ... certification failed

my_wpac_2024_037 = [18.2,126.3,85;    19.7,124.2,105;  23.0,121.6,105;  26.6,120.4,45;  30.5,126.0,0];
rsmc_wpac_2024_037 = [18.4,126.4,78.4;19.7,124.4,100.8;22.6,121.9,106.4;26.1,119.9,50.4;29.9,124.1,0];
btk_wpac_2024_037 = [17.8,126.5,95;   19.8,124.2,125;  23.1,121.3,100;  28.3,121.5,50;  34.1,135.0,0]; # operationally from U.S. sources
btk2_wpac_2024_037 = btk_wpac_2024_037; # placeholder
myvect = [myvect;my_wpac_2024_037];
rsmcvect = [rsmcvect;rsmc_wpac_2024_037];
btkvect = [btkvect;btk_wpac_2024_037];
btk2vect = [btk2vect;btk2_wpac_2024_037];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 038 ... KONG-REY/(LEON) before 2024-10-30-03Z ... certification failed

my_wpac_2024_038 = [22.0,122.2,130;    26.2,120.3,65;  30.1,124.9,55];
rsmc_wpac_2024_038 = [22.1,122.2,117.6;26.2,120.2,56.0;30.2,124.7,44.8];
btk_wpac_2024_038 = [22.0,122.2,115;   26.7,120.6,55;  32.6,130.3,40]; # operationally from U.S. sources
btk2_wpac_2024_038 = btk_wpac_2024_038; # placeholder
myvect = [myvect;my_wpac_2024_038];
rsmcvect = [rsmcvect;rsmc_wpac_2024_038];
btkvect = [btkvect;btk_wpac_2024_038];
btk2vect = [btk2vect;btk2_wpac_2024_038];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Wpac 039 ... TORAJI/(NIKA) before 2024-11-10-09Z ... CERTIFIED

my_wpac_2024_039 = [16.6,121.2,65;    18.8,117.6,50;  20.0,115.0,45;  20.6,112.4,0];
rsmc_wpac_2024_039 = [16.7,121.4,67.2;18.7,117.7,50.4;19.9,114.9,44.8;20.7,113.1,0];
btk_wpac_2024_039 = [17.0,121.1,70;   19.2,118.1,45;  20.5,115.6,45;  21.2,113.9,0]; # operationally from U.S. sources
btk2_wpac_2024_039 = btk_wpac_2024_039; # placeholder
myvect = [myvect;my_wpac_2024_039];
rsmcvect = [rsmcvect;rsmc_wpac_2024_039];
btkvect = [btkvect;btk_wpac_2024_039];
btk2vect = [btk2vect;btk2_wpac_2024_039];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Wpac 040 ... 27W before 2024-11-11-03Z ... CERTIFIED

my_wpac_2024_040 = [13.4,134.1,40;    14.8,128.7,65;  16.7,124.0,90;  19.3,120.1,65;  21.2,119.2,50];
rsmc_wpac_2024_040 = [13.3,134.3,39.2;14.8,129.0,50.4;16.7,124.4,61.6;19.3,121.2,67.2;21.2,120.5,50.4];
btk_wpac_2024_040 = [13.6,133.7,45;   15.1,127.8,70;  17.2,123.1,130; 20.5,120.1,65;  22.4,120.3,30]; # operationally from U.S. sources
btk2_wpac_2024_040 = btk_wpac_2024_040; # placeholder
myvect = [myvect;my_wpac_2024_040];
rsmcvect = [rsmcvect;rsmc_wpac_2024_040];
btkvect = [btkvect;btk_wpac_2024_040];
btk2vect = [btk2vect;btk2_wpac_2024_040];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 041 ... USAGI/(OFEL) before 2024-11-12-09Z ... CERTIFIED

my_wpac_2024_041 = [15.6,126.4,65;    18.1,122.1,90;  20.7,120.2,80;  21.6,119.5,45];
rsmc_wpac_2024_041 = [15.7,126.6,67.2;18.1,122.4,72.8;20.8,120.5,67.2;22.7,121.4,61.6];
btk_wpac_2024_041 = [15.6,126.5,75;   17.9,122.1,115; 21.1,119.4,45;  22.2,120.6,25]; # operationally from U.S. sources
btk2_wpac_2024_041 = btk_wpac_2024_041; # placeholder
myvect = [myvect;my_wpac_2024_041];
rsmcvect = [rsmcvect;rsmc_wpac_2024_041];
btkvect = [btkvect;btk_wpac_2024_041];
btk2vect = [btk2vect;btk2_wpac_2024_041];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Wpac 042 ... MAN-YI before 2024-11-12-09Z ... CERTIFIED

my_wpac_2024_042 = [13.5,143.3,35;    12.1,137.3,60;  12.6,130.7,95;  14.6,125.5,100; 17.1,122.6,75];
rsmc_wpac_2024_042 = [13.4,143.5,44.8;12.1,137.6,61.6;12.6,131.1,84.0;14.7,126.4,95.2;17.1,123.6,95.2];
btk_wpac_2024_042 = [12.3,142.6,35;   10.6,136.6,50;  10.9,130.4,90;  13.2,125.6,140; 15.8,121.9,130]; # operationally from U.S. sources
btk2_wpac_2024_042 = btk_wpac_2024_042; # placeholder
myvect = [myvect;my_wpac_2024_042];
rsmcvect = [rsmcvect;rsmc_wpac_2024_042];
btkvect = [btkvect;btk_wpac_2024_042];
btk2vect = [btk2vect;btk2_wpac_2024_042];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 043 ... USAGI/(OFEL) before 2024-11-12-15Z ... CERTIFIED

my_wpac_2024_043 = [16.1,125.2,90;    18.8,121.3,90;  21.4,120.2,75;  22.8,121.8,50];
rsmc_wpac_2024_043 = [16.1,125.3,78.4;18.8,121.6,72.8;21.2,120.5,67.2;22.1,121.7,61.6];
btk_wpac_2024_043 = [16.2,125.3,115;  18.8,121.1,55;  21.5,119.6,40;  22.1,120.3,25]; # operationally from U.S. sources
btk2_wpac_2024_043 = btk_wpac_2024_043; # placeholder
myvect = [myvect;my_wpac_2024_043];
rsmcvect = [rsmcvect;rsmc_wpac_2024_043];
btkvect = [btkvect;btk_wpac_2024_043];
btk2vect = [btk2vect;btk2_wpac_2024_043];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Wpac 044 ... MAN-YI before 2024-11-12-15Z ... CERTIFIED

my_wpac_2024_044 = [13.0,141.8,55;    12.0,135.8,80;  12.9,129.9,105; 15.0,125.4,110; 17.0,123.0,90];
rsmc_wpac_2024_044 = [13.1,142.0,50.4;12.2,136.0,72.8;13.1,129.9,89.6;15.3,125.7,95.2;17.2,123.1,95.2];
btk_wpac_2024_044 = [11.9,141.2,35;   10.6,135.0,55;  11.5,129.0,100; 13.9,124.6,130; 16.6,120.7,90]; # operationally from U.S. sources
btk2_wpac_2024_044 = btk_wpac_2024_044; # placeholder
myvect = [myvect;my_wpac_2024_044];
rsmcvect = [rsmcvect;rsmc_wpac_2024_044];
btkvect = [btkvect;btk_wpac_2024_044];
btk2vect = [btk2vect;btk2_wpac_2024_044];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Shem 001 ... BHEKI before 2024-11-15-15Z ... CERTIFIED

my_shem_2025_001 = [14.3,72.0,65;    15.9,69.5,70;  16.9,68.1,70;  17.3,65.8,60;  17.7,60.9,40];
rsmc_shem_2025_001 = [14.4,71.8,67.2;15.9,69.2,78.4;16.7,67.6,78.4;17.3,65.2,67.2;17.5,60.7,39.2];
btk_shem_2025_001 = [14.6,72.3,90;   16.4,70.2,115; 17.5,69.0,85;  18.2,66.2,65;  19.3,61.0,35]; # operationally from U.S. sources
btk2_shem_2025_001 = btk_shem_2025_001; # placeholder
myvect = [myvect;my_shem_2025_001];
rsmcvect = [rsmcvect;rsmc_shem_2025_001];
btkvect = [btkvect;btk_shem_2025_001];
btk2vect = [btk2vect;btk2_shem_2025_001];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 045 ... MAN-YI/(PEPITO) before 2024-11-15-15Z ... CERTIFIED

my_wpac_2024_045 = [13.9,125.0,135;    16.3,121.2,85;  18.6,116.8,55;  18.2,113.5,40];
rsmc_wpac_2024_045 = [13.9,125.0,106.4;16.4,121.2,84.0;18.5,116.5,67.2;18.0,113.1,39.2];
btk_wpac_2024_045 = [13.9,124.6,130;   16.6,120.7,90;  18.5,115.9,55;  18.1,112.1,25]; # operationally from U.S. sources
btk2_wpac_2024_045 = btk_wpac_2024_045; # placeholder
myvect = [myvect;my_wpac_2024_045];
rsmcvect = [rsmcvect;rsmc_wpac_2024_045];
btkvect = [btkvect;btk_wpac_2024_045];
btk2vect = [btk2vect;btk2_wpac_2024_045];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Shem 002 ... BHEKI before 2024-11-20-03Z ... CERTIFIED

my_shem_2025_002 = [20.6,58.8,35;    23.7,55.8,30;  25.2,53.6,30;  28.7,53.1,15];
rsmc_shem_2025_002 = [20.9,58.5,39.2;23.7,55.0,39.2;25.6,53.4,33.6;28.6,52.8,22.4];
btk_shem_2025_002 = [20.2,58.6,35;   22.1,55.0,35;  22.7,52.9,30;  24.4,51.3,15]; # operationally from U.S. sources
btk2_shem_2025_002 = btk_shem_2025_002; # placeholder
myvect = [myvect;my_shem_2025_002];
rsmcvect = [rsmcvect;rsmc_shem_2025_002];
btkvect = [btkvect;btk_shem_2025_002];
btk2vect = [btk2vect;btk2_shem_2025_002];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Nio 07 ... BOB 08 / 99B before 2024-11-26-03Z ... CERTIFIED

my_nio_2024_07 = [8.4,82.1,35;    10.2,82.2,40;  12.1,81.7,40];
rsmc_nio_2024_07 = [8.2,81.8,31.8;10.2,81.0,31.8;11.8,80.5,31.8];
btk_nio_2024_07 = [8.3,82.3,30;   8.9,83.4,25;   10.5,83.3,30]; # operationally from U.S. sources
btk2_nio_2024_07 = btk_nio_2024_07; # placeholder
myvect = [myvect;my_nio_2024_07];
rsmcvect = [rsmcvect;rsmc_nio_2024_07];
btkvect = [btkvect;btk_nio_2024_07];
btk2vect = [btk2vect;btk2_nio_2024_07];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Nio 08 ... BOB 08 / 99B before 2024-11-26-09Z ... CERTIFIED

my_nio_2024_08 = [9.0,82.2,35;    10.8,81.1,35;  12.2,80.6,45];
rsmc_nio_2024_08 = [8.3,82.4,31.8;10.1,82.0,37.1;11.7,81.3,37.1];
btk_nio_2024_08 = [8.6,82.3,30;   9.3,83.8,25;   11.3,82.7,35]; # operationally from U.S. sources
btk2_nio_2024_08 = btk_nio_2024_08; # placeholder
myvect = [myvect;my_nio_2024_08];
rsmcvect = [rsmcvect;rsmc_nio_2024_08];
btkvect = [btkvect;btk_nio_2024_08];
btk2vect = [btk2vect;btk2_nio_2024_08];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Nio 09 ... BOB 08 / 99B before 2024-11-26-15Z ... CERTIFIED

my_nio_2024_09 = [9.2,82.3,35;    10.2,81.3,40;  11.7,79.5,45];
rsmc_nio_2024_09 = [8.8,82.5,37.1;10.5,82.1,37.1;12.1,81.1,37.1];
btk_nio_2024_09 = [8.6,82.4,30;   9.6,84.0,30;   11.9,82.1,40]; # operationally from U.S. sources
btk2_nio_2024_09 = btk_nio_2024_09; # placeholder
myvect = [myvect;my_nio_2024_09];
rsmcvect = [rsmcvect;rsmc_nio_2024_09];
btkvect = [btkvect;btk_nio_2024_09];
btk2vect = [btk2vect;btk2_nio_2024_09];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Nio 10 ... BOB 08 / 99B before 2024-11-27-03Z ... CERTIFIED

my_nio_2024_10 = [9.9,82.2,35;    11.2,81.5,35;  12.8,80.0,40];
rsmc_nio_2024_10 = [9.8,82.0,37.1;11.3,81.8,37.1;12.6,80.8,31.8];
btk_nio_2024_10 = [8.9,83.4,25;   10.5,83.3,30;  12.5,81.4,45]; # operationally from U.S. sources
btk2_nio_2024_10 = btk_nio_2024_10; # placeholder
myvect = [myvect;my_nio_2024_10];
rsmcvect = [rsmcvect;rsmc_nio_2024_10];
btkvect = [btkvect;btk_nio_2024_10];
btk2vect = [btk2vect;btk2_nio_2024_10];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Nio 11 ... BOB 08 / 99B before 2024-11-27-09Z ... CERTIFIED

my_nio_2024_11 = [10.4,81.8,35;    11.4,81.4,35;  13.0,80.7,35];
rsmc_nio_2024_11 = [10.2,81.8,37.1;11.3,81.3,37.1;12.1,80.4,31.8];
btk_nio_2024_11 = [9.3,83.8,25;    11.3,82.7,35;  12.4,80.9,45]; # operationally from U.S. sources
btk2_nio_2024_11 = btk_nio_2024_11; # placeholder
myvect = [myvect;my_nio_2024_11];
rsmcvect = [rsmcvect;rsmc_nio_2024_11];
btkvect = [btkvect;btk_nio_2024_11];
btk2vect = [btk2vect;btk2_nio_2024_11];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Shem 003 ... 01U/96S before 2024-11-27-09Z ... CERTIFIED

my_shem_2025_003 = [15.5,91.9,40;    16.7,92.2,35;  17.4,91.3,30;  17.4,89.5,25];
rsmc_shem_2025_003 = [15.2,92.0,44.8;16.6,92.9,39.2;16.7,91.8,33.6;16.4,88.6,28.0];
btk_shem_2025_003 = [15.4,90.7,45;   17.5,93.8,40;  18.6,94.5,30;  18.7,93.6,25]; # operationally from U.S. sources
btk2_shem_2025_003 = btk_shem_2025_003; # placeholder
myvect = [myvect;my_shem_2025_003];
rsmcvect = [rsmcvect;rsmc_shem_2025_003];
btkvect = [btkvect;btk_shem_2025_003];
btk2vect = [btk2vect;btk2_shem_2025_003];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;4;4;4;4];

# Nio 12 ... BOB 08 / 99B before 2024-11-27-15Z ... CERTIFIED

my_nio_2024_12 = [10.5,81.7,35;    11.9,81.0,40;  11.6,80.0,30];
rsmc_nio_2024_12 = [10.4,81.8,37.1;11.5,81.0,37.1;12.3,80.1,31.8];
btk_nio_2024_12 = [9.6,84.0,30;    11.9,82.1,40;  12.3,80.7,45]; # operationally from U.S. sources
btk2_nio_2024_12 = btk_nio_2024_12; # placeholder
myvect = [myvect;my_nio_2024_12];
rsmcvect = [rsmcvect;rsmc_nio_2024_12];
btkvect = [btkvect;btk_nio_2024_12];
btk2vect = [btk2vect;btk2_nio_2024_12];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Shem 004 ... 01U/03S before 2024-11-27-21Z ... CERTIFIED

my_shem_2025_004 = [15.9,91.9,40;    16.8,92.1,35;  16.8,90.0,30];
rsmc_shem_2025_004 = [16.1,92.1,44.8;16.9,92.6,39.2;16.8,90.5,33.6];
btk_shem_2025_004 = [16.8,91.9,55;   18.5,94.6,35;  18.5,94.1,30]; # operationally from U.S. sources
btk2_shem_2025_004 = btk_shem_2025_004; # placeholder
myvect = [myvect;my_shem_2025_004];
rsmcvect = [rsmcvect;rsmc_shem_2025_004];
btkvect = [btkvect;btk_shem_2025_004];
btk2vect = [btk2vect;btk2_shem_2025_004];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;4;4;4];

# Nio 13 ... BOB 08 / 99B before 2024-11-27-21Z ... CERTIFIED

my_nio_2024_13 = [10.0,82.6,35;    11.3,81.4,35;  11.6,80.1,25];
rsmc_nio_2024_13 = [10.4,81.6,37.1;11.5,80.4,31.8;12.3,79.2,26.5];
btk_nio_2024_13 = [10.0,83.7,30;   12.3,81.8,40;  12.2,80.3,40]; # operationally from U.S. sources
btk2_nio_2024_13 = btk_nio_2024_13; # placeholder
myvect = [myvect;my_nio_2024_13];
rsmcvect = [rsmcvect;rsmc_nio_2024_13];
btkvect = [btkvect;btk_nio_2024_13];
btk2vect = [btk2vect;btk2_nio_2024_13];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Nio 14 ... BOB 08 / 99B before 2024-11-28-09Z ... CERTIFIED

my_nio_2024_14 = [10.7,82.4,35;    11.6,81.0,30];
rsmc_nio_2024_14 = [11.0,81.4,31.8;12.0,79.7,26.5];
btk_nio_2024_14 = [11.3,82.7,35;   12.4,80.9,45]; # operationally from U.S. sources
btk2_nio_2024_14 = btk_nio_2024_14; # placeholder
myvect = [myvect;my_nio_2024_14];
rsmcvect = [rsmcvect;rsmc_nio_2024_14];
btkvect = [btkvect;btk_nio_2024_14];
btk2vect = [btk2vect;btk2_nio_2024_14];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Shem 005 ... ROBYN before 2024-11-28-09Z ... CERTIFIED

my_shem_2025_005 = [17.1,91.9,45;    17.5,90.5,30;  17.4,87.7,25];
rsmc_shem_2025_005 = [17.2,92.2,56.0;17.6,91.1,33.6;17.3,88.2,28.0];
btk_shem_2025_005 = [17.5,93.8,40;   18.6,94.5,30;  18.7,93.6,35]; # operationally from U.S. sources
btk2_shem_2025_005 = btk_shem_2025_005; # placeholder
myvect = [myvect;my_shem_2025_005];
rsmcvect = [rsmcvect;rsmc_shem_2025_005];
btkvect = [btkvect;btk_shem_2025_005];
btk2vect = [btk2vect;btk2_shem_2025_005];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;4;4;4];

# Nio 15 ... BOB 08 / 99B before 2024-11-29-09Z ... CERTIFIED

my_nio_2024_15 = [12.9,80.2,40];
rsmc_nio_2024_15 = [11.9,80.3,31.8];
btk_nio_2024_15 = [12.4,80.9,45]; # operationally from U.S. sources
btk2_nio_2024_15 = btk_nio_2024_15; # placeholder
myvect = [myvect;my_nio_2024_15];
rsmcvect = [rsmcvect;rsmc_nio_2024_15];
btkvect = [btkvect;btk_nio_2024_15];
btk2vect = [btk2vect;btk2_nio_2024_15];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;2];

# Shem 006 ... 04 / 92S before 2024-12-09-21Z ... CERTIFIED

my_shem_2025_006 = [10.6,59.9,45;    10.6,56.9,55;  11.5,52.9,55;  11.9,49.3,60;  13.1,46.4,35];
rsmc_shem_2025_006 = [10.9,59.6,50.4;10.9,56.4,61.6;11.5,52.3,67.2;12.4,48.2,50.4;14.4,44.0,44.8];
btk_shem_2025_006 = [10.5,59.8,60;   10.4,56.7,120; 10.9,52.2,125; 11.9,47.5,110; 13.2,42.8,115]; # operationally from U.S. sources
btk2_shem_2025_006 = btk_shem_2025_006; # placeholder
myvect = [myvect;my_shem_2025_006];
rsmcvect = [rsmcvect;rsmc_shem_2025_006];
btkvect = [btkvect;btk_shem_2025_006];
btk2vect = [btk2vect;btk2_shem_2025_006];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 007 ... CHIDO before 2024-12-10-03Z ... CERTIFIED

my_shem_2025_007 = [10.9,58.6,60;    10.9,54.7,70;  11.7,50.8,70;  12.8,46.3,50;  15.5,41.1,35];
rsmc_shem_2025_007 = [10.9,58.8,56.0;11.0,55.2,72.8;11.7,51.1,72.8;12.9,46.7,50.4;15.4,41.7,44.8];
btk_shem_2025_007 = [10.5,59.1,70;   10.5,55.6,125; 11.0,51.0,115; 12.1,46.4,115; 13.2,41.4,115]; # operationally from U.S. sources
btk2_shem_2025_007 = btk_shem_2025_007; # placeholder
myvect = [myvect;my_shem_2025_007];
rsmcvect = [rsmcvect;rsmc_shem_2025_007];
btkvect = [btkvect;btk_shem_2025_007];
btk2vect = [btk2vect;btk2_shem_2025_007];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 008 ... CHIDO before 2024-12-10-09Z ... CERTIFIED

my_shem_2025_008 = [10.4,57.7,65;    10.7,53.9,80;  11.8,50.0,65;  12.8,46.5,50;  13.7,41.8,45];
rsmc_shem_2025_008 = [10.8,58.0,67.2;11.3,54.2,89.6;12.2,49.9,78.4;14.0,45.6,56.0;16.0,40.4,44.8];
btk_shem_2025_008 = [10.5,58.4,75;   10.7,54.5,135; 11.1,49.9,105; 12.6,45.4,115; 13.3,40.1,100]; # operationally from U.S. sources
btk2_shem_2025_008 = btk_shem_2025_008; # placeholder
myvect = [myvect;my_shem_2025_008];
rsmcvect = [rsmcvect;rsmc_shem_2025_008];
btkvect = [btkvect;btk_shem_2025_008];
btk2vect = [btk2vect;btk2_shem_2025_008];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 009 ... CHIDO before 2024-12-11-03Z ... certification failed?

my_shem_2025_009 = [10.6,55.8,85;    11.2,52.0,85;  12.7,48.8,45;  14.0,44.1,50;  15.6,39.8,25];
rsmc_shem_2025_009 = [10.6,55.6,89.6;11.3,51.8,95.2;12.7,48.6,50.4;14.1,43.4,67.2;15.6,39.4,28.0];
btk_shem_2025_009 = [10.5,55.6,125;  11.0,51.0,115; 12.1,46.4,115; 13.2,41.4,115; 14.8,35.8,35]; # operationally from U.S. sources
btk2_shem_2025_009 = btk_shem_2025_009; # placeholder
myvect = [myvect;my_shem_2025_009];
rsmcvect = [rsmcvect;rsmc_shem_2025_009];
btkvect = [btkvect;btk_shem_2025_009];
btk2vect = [btk2vect;btk2_shem_2025_009];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 010 ... CHIDO before 2024-12-12-03Z ... CERTIFIED 

my_shem_2025_010 = [10.9,51.6,105;    12.0,47.6,85;  13.3,43.0,75;  15.1,37.2,35];
rsmc_shem_2025_010 = [10.9,51.7,123.2;11.9,47.7,84.0;13.3,43.1,89.6;14.7,38.1,33.6];
btk_shem_2025_010 = [11.0,51.0,115;   12.1,46.4,115; 13.2,41.4,115; 14.8,35.8,35]; # operationally from U.S. sources
btk2_shem_2025_010 = btk_shem_2025_010; # placeholder
myvect = [myvect;my_shem_2025_010];
rsmcvect = [rsmcvect;rsmc_shem_2025_010];
btkvect = [btkvect;btk_shem_2025_010];
btk2vect = [btk2vect;btk2_shem_2025_010];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 011 ... CHIDO before 2024-12-12-09Z ... CERTIFIED

my_shem_2025_011 = [10.9,50.2,115;    12.2,45.8,90;  13.4,41.5,70;   14.6,37.3,30];
rsmc_shem_2025_011 = [11.0,50.4,123.2;12.4,46.2,89.6;13.6,41.8,100.8;15.1,36.7,28.0];
btk_shem_2025_011 = [11.1,49.9,105;   12.6,45.4,115; 13.3,40.1,100;  15.1,34.9,25]; # operationally from U.S. sources
btk2_shem_2025_011 = btk_shem_2025_011; # placeholder
myvect = [myvect;my_shem_2025_011];
rsmcvect = [rsmcvect;rsmc_shem_2025_011];
btkvect = [btkvect;btk_shem_2025_011];
btk2vect = [btk2vect;btk2_shem_2025_011];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 012 ... CHIDO before 2024-12-13-03Z ... CERTIFIED

my_shem_2025_012 = [12.1,46.6,90;    13.3,41.3,100;  14.2,36.1,45];
rsmc_shem_2025_012 = [12.3,46.5,95.2;13.2,41.3,106.4;14.2,36.0,28.0];
btk_shem_2025_012 = [12.1,46.4,115;  13.2,41.4,115;  14.8,35.8,35]; # operationally from U.S. sources
btk2_shem_2025_012 = btk_shem_2025_012; # placeholder
myvect = [myvect;my_shem_2025_012];
rsmcvect = [rsmcvect;rsmc_shem_2025_012];
btkvect = [btkvect;btk_shem_2025_012];
btk2vect = [btk2vect;btk2_shem_2025_012];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 013 ... CHIDO before 2024-12-13-21Z ... CERTIFIED

my_shem_2025_013 = [12.9,42.9,100;    13.5,37.4,45];
rsmc_shem_2025_013 = [13.0,43.2,100.8;13.5,38.0,39.2];
btk_shem_2025_013 = [13.2,42.8,115;   14.0,37.2,50]; # operationally from U.S. sources
btk2_shem_2025_013 = btk_shem_2025_013; # placeholder
myvect = [myvect;my_shem_2025_013];
rsmcvect = [rsmcvect;rsmc_shem_2025_013];
btkvect = [btkvect;btk_shem_2025_013];
btk2vect = [btk2vect;btk2_shem_2025_013];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Wpac 046 ... 28W/(ROMINA) before 2024-12-23-03Z ... CERTIFIED

my_wpac_2024_046 = [11.4,111.2,35;    11.2,109.4,0];
rsmc_wpac_2024_046 = [11.4,111.1,39.2;11.0,109.5,0];
btk_wpac_2024_046 = [11.5,112.3,30;   10.6,110.7,0]; # operationally from U.S. sources
btk2_wpac_2024_046 = btk_wpac_2024_046; # placeholder
myvect = [myvect;my_wpac_2024_046];
rsmcvect = [rsmcvect;rsmc_wpac_2024_046];
btkvect = [btkvect;btk_wpac_2024_046];
btk2vect = [btk2vect;btk2_wpac_2024_046];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Wpac 047 ... PABUK/(ROMINA) before 2024-12-23-09Z ... CERTIFIED

my_wpac_2024_047 = [10.8,111.3,35;    11.5,108.9,0];
rsmc_wpac_2024_047 = [11.0,111.2,39.2;11.5,109.1,0];
btk_wpac_2024_047 = [11.8,111.9,30;   9.6,110.3,0]; # operationally from U.S. sources
btk2_wpac_2024_047 = btk_wpac_2024_047; # placeholder
myvect = [myvect;my_wpac_2024_047];
rsmcvect = [rsmcvect;rsmc_wpac_2024_047];
btkvect = [btkvect;btk_wpac_2024_047];
btk2vect = [btk2vect;btk2_wpac_2024_047];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Shem 014 ... 07U/05S before 2024-12-27-21Z ... CERTIFIED
# (no BoM forecast)

# Shem 015 ... 05/94S before 2025-01-08-09Z ... CERTIFIED

my_shem_2025_015 = [15.8,64.7,40;    15.5,57.8,55;  14.5,51.8,65;  13.8,46.3,60;  16.8,42.4,65];
rsmc_shem_2025_015 = [15.3,64.6,44.8;14.9,57.8,61.6;13.6,51.8,78.4;14.3,46.0,61.6;16.3,42.3,72.8];
btk_shem_2025_015 = [14.4,63.4,30;   13.6,57.1,55;  12.6,51.7,80;  13.6,46.2,65;  14.9,41.1,80]; # operationally from U.S. sources
btk2_shem_2025_015 = btk_shem_2025_015; # placeholder
myvect = [myvect;my_shem_2025_015];
rsmcvect = [rsmcvect;rsmc_shem_2025_015];
btkvect = [btkvect;btk_shem_2025_015];
btk2vect = [btk2vect;btk2_shem_2025_015];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 016 ... DIKELEDI before 2025-01-09-21Z ... CERTIFIED

my_shem_2025_016 = [13.2,54.0,75;    13.0,49.1,50;  14.5,44.0,50;  16.7,40.7,70;  19.8,39.6,65];
rsmc_shem_2025_016 = [13.6,54.3,89.6;12.9,49.8,72.8;14.7,43.9,67.2;16.8,41.4,72.8;20.8,40.1,78.4];
btk_shem_2025_016 = [13.3,54.2,55;   12.9,49.0,75;  14.3,43.5,70;  15.5,40.2,70;  18.9,39.8,60]; # operationally from U.S. sources
btk2_shem_2025_016 = btk_shem_2025_016; # placeholder
myvect = [myvect;my_shem_2025_016];
rsmcvect = [rsmcvect;rsmc_shem_2025_016];
btkvect = [btkvect;btk_shem_2025_016];
btk2vect = [btk2vect;btk2_shem_2025_016];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 017 ... DIKELEDI before 2025-01-10-03Z ... CERTIFIED

my_shem_2025_017 = [13.1,53.1,70;     13.3,48.5,45;  15.0,43.2,60;  17.1,40.1,60;  22.1,40.1,60];
rsmc_shem_2025_017 = [13.0,53.1,100.8;13.3,48.3,67.2;15.1,43.0,67.2;17.4,40.3,78.4;21.2,39.9,89.6];
btk_shem_2025_017 = [13.0,52.9,75;    13.3,47.5,70;  14.5,42.6,70;  16.2,39.9,60;  20.3,40.5,60]; # operationally from U.S. sources
btk2_shem_2025_017 = btk_shem_2025_017; # placeholder
myvect = [myvect;my_shem_2025_017];
rsmcvect = [rsmcvect;rsmc_shem_2025_017];
btkvect = [btkvect;btk_shem_2025_017];
btk2vect = [btk2vect;btk2_shem_2025_017];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 018 ... DIKELEDI before 2025-01-10-09Z ... CERTIFIED

my_shem_2025_018 = [12.8,51.2,85;    13.7,46.3,50;  15.1,41.9,60;  17.6,40.0,60;  21.3,38.8,65];
rsmc_shem_2025_018 = [12.9,51.7,95.2;13.5,47.0,56.0;15.3,42.2,72.8;18.5,39.6,84.0;22.1,39.5,89.6];
btk_shem_2025_018 = [12.6,51.7,80;   13.6,46.2,65;  14.9,41.1,80;  16.8,39.9,55;  21.7,41.1,70]; # operationally from U.S. sources
btk2_shem_2025_018 = btk_shem_2025_018; # placeholder
myvect = [myvect;my_shem_2025_018];
rsmcvect = [rsmcvect;rsmc_shem_2025_018];
btkvect = [btkvect;btk_shem_2025_018];
btk2vect = [btk2vect;btk2_shem_2025_018];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 019 ... 09U/97S before 2025-01-10-09Z ... CERTIFIED

my_shem_2025_019 = [19.2,102.3,30;    19.6,101.5,25;  18.4,99.7,20];
rsmc_shem_2025_019 = [19.4,102.2,33.6;19.3,101.2,33.6;18.0,99.5,28.0];
btk_shem_2025_019 = [18.7,102.6,25;   18.9,101.6,25;  17.3,100.4,20]; # operationally from U.S. sources
btk2_shem_2025_019 = btk_shem_2025_019; # placeholder
myvect = [myvect;my_shem_2025_019];
rsmcvect = [rsmcvect;rsmc_shem_2025_019];
btkvect = [btkvect;btk_shem_2025_019];
btk2vect = [btk2vect;btk2_shem_2025_019];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;4;4;4];

# Shem 020 ... DIKELEDI before 2025-01-11-03Z ... CERTIFIED

my_shem_2025_020 = [12.9,47.6,55;    14.5,42.8,65;  16.9,40.6,70;  20.8,39.4,75;  25.4,40.6,80];
rsmc_shem_2025_020 = [13.0,47.6,56.0;14.2,42.9,78.4;16.4,40.1,72.8;20.4,39.3,89.6;24.5,40.9,89.6];
btk_shem_2025_020 = [13.3,47.5,70;   14.5,42.6,70;  16.2,39.9,60;  20.3,40.5,60;  27.5,43.4,100]; # operationally from U.S. sources
btk2_shem_2025_020 = btk_shem_2025_020; # placeholder
myvect = [myvect;my_shem_2025_020];
rsmcvect = [rsmcvect;rsmc_shem_2025_020];
btkvect = [btkvect;btk_shem_2025_020];
btk2vect = [btk2vect;btk2_shem_2025_020];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 021 ... DIKELEDI before 2025-01-12-03Z ... CERTIFIED

my_shem_2025_021 = [14.8,43.1,80;    16.8,40.5,100;  20.4,40.5,100;  25.0,41.5,80;   29.2,45.8,60];
rsmc_shem_2025_021 = [15.0,43.3,72.8;17.1,40.6,100.8;20.8,40.6,112.0;24.9,41.9,112.0;28.4,45.6,89.6];
btk_shem_2025_021 = [14.5,42.6,70;   16.2,39.9,60;   20.3,40.5,60;   27.5,43.4,100;  32.9,52.0,65]; # operationally from U.S. sources
btk2_shem_2025_021 = btk_shem_2025_021; # placeholder
myvect = [myvect;my_shem_2025_021];
rsmcvect = [rsmcvect;rsmc_shem_2025_021];
btkvect = [btkvect;btk_shem_2025_021];
btk2vect = [btk2vect;btk2_shem_2025_021];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 022 ... DIKELEDI before 2025-01-12-09Z ... CERTIFIED

my_shem_2025_022 = [15.5,41.9,90;    17.9,40.1,105;  21.2,40.2,115;  25.9,43.5,90;   28.5,45.9,60];
rsmc_shem_2025_022 = [15.7,42.3,72.8;18.1,40.6,106.4;21.3,40.7,117.6;26.6,43.9,117.6;28.3,48.3,72.8];
btk_shem_2025_022 = [14.9,41.1,80;   16.8,39.9,55;   21.7,41.1,70;   28.9,44.7,100;  33.7,54.8,50]; # operationally from U.S. sources
btk2_shem_2025_022 = btk_shem_2025_022; # placeholder
myvect = [myvect;my_shem_2025_022];
rsmcvect = [rsmcvect;rsmc_shem_2025_022];
btkvect = [btkvect;btk_shem_2025_022];
btk2vect = [btk2vect;btk2_shem_2025_022];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 023 ... DIKELEDI before 2025-01-13-03Z ... certification failed?

my_shem_2025_023 = [16.3,39.5,70;    20.4,39.6,90;   25.5,41.7,90;   29.5,46.5,85;   32.2,51.8,60];
rsmc_shem_2025_023 = [16.6,40.0,72.8;20.9,40.7,106.4;25.6,42.8,123.2;29.6,46.2,134.4;32.4,51.3,72.8];
btk_shem_2025_023 = [16.2,39.9,60;   20.3,40.5,60;   27.5,43.4,100;  32.9,52.0,65;   35.3,65.2,40]; # operationally from U.S. sources
btk2_shem_2025_023 = btk_shem_2025_023; # placeholder
myvect = [myvect;my_shem_2025_023];
rsmcvect = [rsmcvect;rsmc_shem_2025_023];
btkvect = [btkvect;btk_shem_2025_023];
btk2vect = [btk2vect;btk2_shem_2025_023];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 024 ... DIKELEDI before 2025-01-15-21Z ... CERTIFIED

my_shem_2025_024 = [31.9,49.2,90;    34.3,61.0,55];
rsmc_shem_2025_024 = [31.3,49.0,95.2;33.8,60.5,61.6];
btk_shem_2025_024 = [32.2,49.0,75;   35.0,61.9,45]; # operationally from U.S. sources
btk2_shem_2025_024 = btk_shem_2025_024; # placeholder
myvect = [myvect;my_shem_2025_024];
rsmcvect = [rsmcvect;rsmc_shem_2025_024];
btkvect = [btkvect;btk_shem_2025_024];
btk2vect = [btk2vect;btk2_shem_2025_024];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];




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