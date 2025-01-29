# to be run with GNU Octave
# data last added 2025/01/20, data ready for forecasts issued on or before 2025/01/15

# to compare elioe's performance to U.S. agencies;
# regarding "early advisories" posted most likely before NHC/CPHC/JTWC advisories had become public (if they existed in that advisory cycle);
# there are some cases however when NHC/CPHC/JTWC advisories are released more than 30 minutes before official release time,
# so there may be isolated incidents where release time of "elioe's early advisory" may have been later than NHC/CPHC/JTWC advisory release time
# the code includes elioe's forecast (myvect), American forecast (nhcvect) and actual position and 1-min wind (btkvect)
# ... whenever all three are available.
# "basinvect" numbers: 1 for North Atlantic (agency=NHC), 2 for East Pacific (agency=NHC), 3 for WPac/NIO/SHem (agency=JTWC), 4 for CPac (agency=CPHC)

# in CPac/EPac/NAtl, if not stated in comment otherwise, data source is operational track originally from https://ftp.nhc.noaa.gov/atcf/btk/
# in case of revisions to data, I may have recorded the values before or after such revision
# in other basins, if not stated in comment otherwise, the values may be from https://tropical.atmos.colostate.edu/Realtime/
# or https://hurricanes.ral.ucar.edu/realtime/current/

# if specified in a comment, the data may come from tropical cyclone reports, or (post-season analysis) best track files of JTWC
# or, rarely in WPac/NIO/SHem, it could be from a local RSMC, if nothing else is available
# however, local RSMC data is used only if both position and wind speed is available
# and 10-min winds converted to 1-min by multiplying by 1.12, and 3-min winds converted to 1-min by multiplying by 1.06

# additionally, data points may be "self-made": for 2020-22 those would be mostly based on synoptic charts published by NHC, as well as FU Berlin
# and those data points would exist in cases where FU Berlin disagreed with NHC regarding a system's dissipation (in NAtl only)
# for 2023, those "self-made" data points are based on model initializations (in NAtl/EPac only)

# a special case is PTC 03L / Claudette of 2021, which I consider to be two separate systems. The part of code to compare errors of PTC 03L using
# data of Claudette exists in chronologically proper place, but is behind comment markers by default.

# position error is calculated along a straight line assuming Earth is a sphere


myvect = [];
nhcvect = [];
btkvect = [];
leadtimevect = [];
basinvect = [];

# Epac 01 ... ONE-E before 2020-04-25-21Z
# my at https://twitter.com/elioeFIN/status/1254144823961030658
# NHC at https://www.nhc.noaa.gov/archive/2020/ep01/ep012020.discus.002.shtml?

my_epac_2020_01 = [16.3,119.5,25];
nhc_epac_2020_01 = [16.1,119.5,30];
btk_epac_2020_01 = [16.0,119.1,25]; # TCR
myvect = [myvect;my_epac_2020_01];
nhcvect = [nhcvect;nhc_epac_2020_01];
btkvect = [btkvect;btk_epac_2020_01];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;2];

# Epac 02 ... ONE-E before 2020-04-26-03Z
# my at https://twitter.com/elioeFIN/status/1254235161765580800
# NHC at https://www.nhc.noaa.gov/archive/2020/ep01/ep012020.discus.003.shtml?

my_epac_2020_02 = [16.3,120.6,25];
nhc_epac_2020_02 = [16.3,120.3,25];
btk_epac_2020_02 = [16.4,119.9,25]; # TCR
myvect = [myvect;my_epac_2020_02];
nhcvect = [nhcvect;nhc_epac_2020_02];
btkvect = [btkvect;btk_epac_2020_02];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;2];

# Atl 01 ... ARTHUR before 2020-05-17-03Z
# my at https://twitter.com/elioeFIN/status/1261845289700413440
# NHC at https://www.nhc.noaa.gov/archive/2020/al01/al012020.discus.002.shtml?

my_atl_2020_01 = [32.0,77.0,40;36.3,73.6,50;38.1,69.1,45;38.4,68.3,35];
nhc_atl_2020_01 = [32.2,76.4,40;36.2,73.0,45;38.0,69.1,50;38.0,67.6,45];
btk_atl_2020_01 = [31.9,77.0,40;36.2,73.1,50;36.2,66.8,50;32.8,65.0,40]; # TCR
myvect = [myvect;my_atl_2020_01];
nhcvect = [nhcvect;nhc_atl_2020_01];
btkvect = [btkvect;btk_atl_2020_01];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 02 ... ARTHUR before 2020-05-17-15Z
# my at https://twitter.com/elioeFIN/status/1262026811879407621
# NHC at https://www.nhc.noaa.gov/archive/2020/al01/al012020.discus.004.shtml?

my_atl_2020_02 = [34.3,75.9,45;37.3,70.7,45;36.8,66.3,45];
nhc_atl_2020_02 = [34.3,75.5,50;37.3,70.4,50;36.5,66.5,45];
btk_atl_2020_02 = [34.4,75.9,45;37.0,69.5,55;34.6,65.6,50]; # TCR
myvect = [myvect;my_atl_2020_02];
nhcvect = [nhcvect;nhc_atl_2020_02];
btkvect = [btkvect;btk_atl_2020_02];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Atl 03 ... ARTHUR before 2020-05-17-21Z
# my at https://twitter.com/elioeFIN/status/1262116933564018689
# NHC at https://www.nhc.noaa.gov/archive/2020/al01/al012020.discus.005.shtml?

my_atl_2020_03 = [35.5,74.8,50;37.0,68.9,50;35.4,65.1,40];
nhc_atl_2020_03 = [35.3,74.6,45;36.8,69.2,50;35.6,66.3,45];
btk_atl_2020_03 = [35.5,74.7,45;36.9,67.8,50;33.7,65.3,45]; # TCR
myvect = [myvect;my_atl_2020_03];
nhcvect = [nhcvect;nhc_atl_2020_03];
btkvect = [btkvect;btk_atl_2020_03];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Atl 04 ... ARTHUR before 2020-05-18-03Z
# my at https://twitter.com/elioeFIN/status/1262207924027482112
# NHC at https://www.nhc.noaa.gov/archive/2020/al01/al012020.discus.006.shtml?

my_atl_2020_04 = [36.2,73.3,45;36.2,67.6,50;34.5,64.1,40];
nhc_atl_2020_04 = [35.8,73.2,45;36.0,67.7,50;33.8,64.6,40];
btk_atl_2020_04 = [36.2,73.1,50;36.2,66.8,50;32.8,65.0,40]; # TCR
myvect = [myvect;my_atl_2020_04];
nhcvect = [nhcvect;nhc_atl_2020_04];
btkvect = [btkvect;btk_atl_2020_04];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Atl 05 ... ARTHUR before 2020-05-18-15Z
# my at https://twitter.com/elioeFIN/status/1262388422645342212
# NHC at https://www.nhc.noaa.gov/archive/2020/al01/al012020.discus.008.shtml?

my_atl_2020_05 = [37.0,70.4,45;35.3,65.4,50];
nhc_atl_2020_05 = [37.2,70.1,50;35.5,65.8,50];
btk_atl_2020_05 = [37.0,69.5,55;34.6,65.6,50]; # TCR
myvect = [myvect;my_atl_2020_05];
nhcvect = [nhcvect;nhc_atl_2020_05];
btkvect = [btkvect;btk_atl_2020_05];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Atl 06 ... BERTHA before 2020-05-27-15Z
# my at https://twitter.com/elioeFIN/status/1265649403873955842
# NHC at https://www.nhc.noaa.gov/archive/2020/al02/al022020.discus.002.shtml?

my_atl_2020_06 = [37.5,81.7,15];
nhc_atl_2020_06 = [38.8,79.9,20];
btk_atl_2020_06 = [39.9,80.6,20]; # TCR
myvect = [myvect;my_atl_2020_06];
nhcvect = [nhcvect;nhc_atl_2020_06];
btkvect = [btkvect;btk_atl_2020_06];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;1];

# Epac 03 ... AMANDA before 2020-05-31-03Z
# my at https://twitter.com/elioeFIN/status/1266917772975579136
# NHC at https://www.nhc.noaa.gov/archive/2020/ep02/ep022020.discus.002.shtml?

my_epac_2020_03 = [16.5,90.4,15];
nhc_epac_2020_03 = [16.1,90.2,20];
btk_epac_2020_03 = [16.5,90.0,20]; # TCR had no applicable value
myvect = [myvect;my_epac_2020_03];
nhcvect = [nhcvect;nhc_epac_2020_03];
btkvect = [btkvect;btk_epac_2020_03];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;2];

# Atl 07 ... CRISTOBAL before 2020-06-02-03Z
# my at https://twitter.com/elioeFIN/status/1267642766168817670
# NHC at https://www.nhc.noaa.gov/archive/2020/al03/al032020.discus.002.shtml?

my_atl_2020_07 = [19.2,92.8,35;18.0,93.1,40;18.9,92.5,40;19.5,92.5,45;25.8,90.0,45];
nhc_atl_2020_07 = [19.2,92.8,35;18.6,93.1,45;18.5,93.0,45;19.5,92.5,45;22.0,91.5,50];
btk_atl_2020_07 = [19.0,92.5,45;18.2,91.7,40;17.9,90.4,30;22.0,90.0,50;25.8,90.1,45]; # TCR
myvect = [myvect;my_atl_2020_07];
nhcvect = [nhcvect;nhc_atl_2020_07];
btkvect = [btkvect;btk_atl_2020_07];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 08 ... CRISTOBAL before 2020-06-02-15Z
# my at https://twitter.com/elioeFIN/status/1267823813015662593
# NHC at https://www.nhc.noaa.gov/archive/2020/al03/al032020.discus.004.shtml?

my_atl_2020_08 = [19.1,92.6,40;19.0,92.3,45;19.7,92.0,45;21.1,91.8,50;24.7,91.3,55];
nhc_atl_2020_08 = [19.0,92.4,40;18.8,92.0,45;19.8,91.2,45;22.0,91.0,50;26.0,91.0,45];
btk_atl_2020_08 = [18.8,92.2,50;17.7,91.2,30;19.6,89.9,40;23.9,90.2,45;28.0,89.9,45]; # TCR
myvect = [myvect;my_atl_2020_08];
nhcvect = [nhcvect;nhc_atl_2020_08];
btkvect = [btkvect;btk_atl_2020_08];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 09 ... CRISTOBAL before 2020-06-02-21Z
# my at https://twitter.com/elioeFIN/status/1267914583970385920
# NHC at https://www.nhc.noaa.gov/archive/2020/al03/al032020.discus.005.shtml?

my_atl_2020_09 = [18.6,92.3,35;18.5,91.6,40;20.1,91.1,50;22.9,90.9,50;27.7,91.0,55];
nhc_atl_2020_09 = [18.4,92.4,35;18.5,91.6,30;20.4,91.5,40;23.7,91.2,45;28.0,91.5,55];
btk_atl_2020_09 = [18.5,91.9,45;17.6,90.8,30;20.8,89.9,45;24.8,90.2,45;29.0,89.8,45]; # TCR
myvect = [myvect;my_atl_2020_09];
nhcvect = [nhcvect;nhc_atl_2020_09];
btkvect = [btkvect;btk_atl_2020_09];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 10 ... CRISTOBAL before 2020-06-03-03Z
# my at https://twitter.com/elioeFIN/status/1268005693497491458
# NHC at https://www.nhc.noaa.gov/archive/2020/al03/al032020.discus.006.shtml?

my_atl_2020_10 = [18.4,92.0,40;18.9,91.8,35;21.0,91.6,45;23.8,91.3,50;28.6,91.6,60];
nhc_atl_2020_10 = [18.4,91.8,35;18.8,91.2,30;21.2,91.1,40;25.0,91.0,50;29.0,91.7,55];
btk_atl_2020_10 = [18.2,91.7,40;17.9,90.4,30;22.0,90.0,50;25.8,90.1,45;29.8,89.9,45]; # TCR
myvect = [myvect;my_atl_2020_10];
nhcvect = [nhcvect;nhc_atl_2020_10];
btkvect = [btkvect;btk_atl_2020_10];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 11 ... CRISTOBAL before 2020-06-03-15Z
# my at https://twitter.com/elioeFIN/status/1268186279331725318
# NHC at https://www.nhc.noaa.gov/archive/2020/al03/al032020.discus.008.shtml?

my_atl_2020_11 = [18.3,91.4,35;20.0,91.1,35;23.4,90.8,45;27.6,90.4,50;30.1,92.7,55];
nhc_atl_2020_11 = [18.1,91.1,35;20.0,90.6,30;23.5,90.8,50;27.6,90.9,50;31.0,92.0,45];
btk_atl_2020_11 = [17.7,91.2,30;19.6,89.9,40;23.9,90.2,45;28.0,89.9,45;31.7,91.5,30]; # TCR
myvect = [myvect;my_atl_2020_11];
nhcvect = [nhcvect;nhc_atl_2020_11];
btkvect = [btkvect;btk_atl_2020_11];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 12 ... CRISTOBAL before 2020-06-04-15Z
# my at https://twitter.com/elioeFIN/status/1268548689406156800
# NHC at https://www.nhc.noaa.gov/archive/2020/al03/al032020.discus.012.shtml?

my_atl_2020_12 = [19.2,90.0,30;23.2,90.2,40;26.7,90.7,45;30.6,91.7,40;35.1,93.5,25];
nhc_atl_2020_12 = [19.0,90.2,30;22.9,90.7,40;26.7,90.6,50;30.8,91.7,35;35.0,91.5,25];
btk_atl_2020_12 = [19.6,89.9,40;23.9,90.2,45;28.0,89.9,45;31.7,91.5,30;38.0,92.1,25]; # TCR
myvect = [myvect;my_atl_2020_12];
nhcvect = [nhcvect;nhc_atl_2020_12];
btkvect = [btkvect;btk_atl_2020_12];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 13 ... CRISTOBAL before 2020-06-04-21Z
# my at https://twitter.com/elioeFIN/status/1268639174153953281
# NHC at https://www.nhc.noaa.gov/archive/2020/al03/al032020.discus.013.shtml?

my_atl_2020_13 = [19.8,90.1,30;23.9,90.5,45;27.7,90.6,45;31.6,92.2,35;35.6,91.4,20];
nhc_atl_2020_13 = [20.1,90.2,30;23.8,90.8,40;27.5,90.9,50;31.0,92.8,35;34.0,92.5,25];
btk_atl_2020_13 = [20.8,89.9,45;24.8,90.2,45;29.0,89.8,45;32.9,92.0,30;40.3,91.7,30]; # TCR
myvect = [myvect;my_atl_2020_13];
nhcvect = [nhcvect;nhc_atl_2020_13];
btkvect = [btkvect;btk_atl_2020_13];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 14 ... CRISTOBAL before 2020-06-05-15Z
# my at https://twitter.com/elioeFIN/status/1268911076860727297
# NHC at https://www.nhc.noaa.gov/archive/2020/al03/al032020.discus.016.shtml?

my_atl_2020_14 = [23.4,90.0,40;27.0,90.3,55;30.8,91.8,40;36.3,92.8,30;42.4,86.9,20];
nhc_atl_2020_14 = [23.8,90.3,45;27.3,90.4,50;31.2,91.9,40;36.7,92.1,30;43.0,89.5,25];
btk_atl_2020_14 = [23.9,90.2,45;28.0,89.9,45;31.7,91.5,30;38.0,92.1,25;47.5,87.4,35]; # TCR
myvect = [myvect;my_atl_2020_14];
nhcvect = [nhcvect;nhc_atl_2020_14];
btkvect = [btkvect;btk_atl_2020_14];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 15 ... CRISTOBAL before 2020-06-07-15Z
# my at https://twitter.com/elioeFIN/status/1269635912905998336
# NHC at https://www.nhc.noaa.gov/archive/2020/al03/al032020.discus.024.shtml?

my_atl_2020_15 = [32.0,91.6,35;38.6,92.2,25;48.1,87.6,30];
nhc_atl_2020_15 = [32.6,91.6,30;38.9,91.6,25;47.8,87.1,30];
btk_atl_2020_15 = [31.7,91.5,30;38.0,92.1,25;47.5,87.4,35]; # TCR
myvect = [myvect;my_atl_2020_15];
nhcvect = [nhcvect;nhc_atl_2020_15];
btkvect = [btkvect;btk_atl_2020_15];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Atl 16 ... DOLLY before 2020-06-23-03Z
# my at https://twitter.com/elioeFIN/status/1275253295637041158
# NHC at https://www.nhc.noaa.gov/archive/2020/al04/al042020.discus.002.shtml?

my_atl_2020_16 = [40.0,60.5,30;44.1,55.0,25];
nhc_atl_2020_16 = [40.3,60.6,30;44.0,55.5,25];
btk_atl_2020_16 = [40.2,60.6,35;44.1,55.6,25]; # TCR
myvect = [myvect;my_atl_2020_16];
nhcvect = [nhcvect;nhc_atl_2020_16];
btkvect = [btkvect;btk_atl_2020_16];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Atl 17 ... DOLLY before 2020-06-23-15Z
# my at https://twitter.com/elioeFIN/status/1275434139328503810
# NHC at https://www.nhc.noaa.gov/archive/2020/al04/al042020.discus.004.shtml?

my_atl_2020_17 = [42.4,58.3,25];
nhc_atl_2020_17 = [42.3,58.1,25];
btk_atl_2020_17 = [42.0,58.5,30]; # TCR
myvect = [myvect;my_atl_2020_17];
nhcvect = [nhcvect;nhc_atl_2020_17];
btkvect = [btkvect;btk_atl_2020_17];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;1];

# Epac 04 ... BORIS before 2020-06-24-21Z
# my at https://twitter.com/elioeFIN/status/1275887205848924162
# NHC at https://www.nhc.noaa.gov/archive/2020/ep03/ep032020.discus.002.shtml?

my_epac_2020_04 = [11.4,136.1,40;13.0,137.7,45;13.7,140.6,30;13.2,145.1,25;12.7,149.1,15];
nhc_epac_2020_04 = [11.5,135.9,40;12.9,137.7,40;13.4,140.5,30;13.0,144.5,25;12.0,149.0,20];
btk_epac_2020_04 = [11.0,136.8,35;12.2,138.9,30;12.3,141.0,30;11.2,144.4,25;9.8,148.8,25]; # TCR
myvect = [myvect;my_epac_2020_04];
nhcvect = [nhcvect;nhc_epac_2020_04];
btkvect = [btkvect;btk_epac_2020_04];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 05 ... BORIS before 2020-06-25-03Z
# my at https://twitter.com/elioeFIN/status/1275977666550804480
# NHC at https://www.nhc.noaa.gov/archive/2020/ep03/ep032020.discus.003.shtml?

my_epac_2020_05 = [11.7,136.7,45;12.8,138.7,35;13.2,141.9,25;12.8,145.9,20;11.8,150.7,15];
nhc_epac_2020_05 = [11.4,136.7,40;12.5,138.6,35;12.8,141.5,25;12.5,145.3,25;11.5,149.5,20];
btk_epac_2020_05 = [11.3,137.6,35;12.4,139.4,30;12.2,141.7,25;11.0,145.5,25;9.4,149.7,25]; # TCR
myvect = [myvect;my_epac_2020_05];
nhcvect = [nhcvect;nhc_epac_2020_05];
btkvect = [btkvect;btk_epac_2020_05];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 06 ... BORIS before 2020-06-25-15Z
# my at https://twitter.com/elioeFIN/status/1276158660071301122
# NHC at https://www.nhc.noaa.gov/archive/2020/ep03/ep032020.discus.005.shtml?

my_epac_2020_06 = [11.7,138.0,35;12.4,140.2,30;12.6,143.7,25;11.9,147.7,20];
nhc_epac_2020_06 = [11.7,138.2,35;12.2,140.4,30;12.2,143.7,25;11.5,148.0,20];
btk_epac_2020_06 = [11.9,138.5,30;12.4,140.4,30;11.5,143.4,25;10.3,147.8,25]; # TCR
myvect = [myvect;my_epac_2020_06];
nhcvect = [nhcvect;nhc_epac_2020_06];
btkvect = [btkvect;btk_epac_2020_06];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Epac 07 ... BORIS before 2020-06-26-03Z
# my at https://twitter.com/elioeFIN/status/1276340374475284481
# NHC at https://www.nhc.noaa.gov/archive/2020/ep03/ep032020.discus.007.shtml?

my_epac_2020_07 = [12.2,139.8,35;12.5,142.3,25;12.1,146.8,15];
nhc_epac_2020_07 = [12.1,140.0,30;12.3,142.8,25;11.8,146.7,20];
btk_epac_2020_07 = [12.4,139.4,30;12.2,141.7,25;11.0,145.5,25]; # TCR
myvect = [myvect;my_epac_2020_07];
nhcvect = [nhcvect;nhc_epac_2020_07];
btkvect = [btkvect;btk_epac_2020_07];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 08 ... BORIS before 2020-06-26-15Z
# my at https://twitter.com/elioeFIN/status/1276521357551992832
# NHC at https://www.nhc.noaa.gov/archive/2020/ep03/ep032020.discus.009.shtml?

my_epac_2020_08 = [12.5,141.0,35;12.4,144.3,25;11.9,148.2,15];
nhc_epac_2020_08 = [12.5,141.0,25;12.4,144.2,25;11.5,148.5,20];
btk_epac_2020_08 = [12.4,140.4,30;11.5,143.4,25;10.3,147.8,25]; # TCR
myvect = [myvect;my_epac_2020_08];
nhcvect = [nhcvect;nhc_epac_2020_08];
btkvect = [btkvect;btk_epac_2020_08];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 09 ... BORIS before 2020-06-26-21Z
# my at https://twitter.com/elioeFIN/status/1276612551271481347
# NHC at https://www.nhc.noaa.gov/archive/2020/ep03/ep032020.discus.010.shtml?

my_epac_2020_09 = [12.8,141.3,30;12.7,144.8,25];
nhc_epac_2020_09 = [12.9,140.9,25;12.7,144.6,20];
btk_epac_2020_09 = [12.3,141.0,30;11.2,144.4,25]; # TCR
myvect = [myvect;my_epac_2020_09];
nhcvect = [nhcvect;nhc_epac_2020_09];
btkvect = [btkvect;btk_epac_2020_09];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Epac 10 ... CRISTINA before 2020-07-08-15Z
# my at https://twitter.com/elioeFIN/status/1280869872818368512
# NHC at https://www.nhc.noaa.gov/archive/2020/ep05/ep052020.discus.008.shtml?

my_epac_2020_10 = [16.7,110.3,65;18.5,114.1,75;20.4,119.1,65;21.4,124.8,45;21.5,130.3,35];
nhc_epac_2020_10 = [16.6,110.1,65;18.5,114.1,75;20.2,119.1,60;21.0,124.5,45;21.5,130.5,35];
btk_epac_2020_10 = [17.1,109.8,50;19.0,113.6,55;20.3,119.0,50;20.6,123.7,35;21.0,128.2,25]; # TCR
myvect = [myvect;my_epac_2020_10];
nhcvect = [nhcvect;nhc_epac_2020_10];
btkvect = [btkvect;btk_epac_2020_10];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 11 ... CRISTINA before 2020-07-09-15Z
# my at https://twitter.com/elioeFIN/status/1281232187522797569
# NHC at https://www.nhc.noaa.gov/archive/2020/ep05/ep052020.discus.012.shtml?

my_epac_2020_11 = [19.2,113.8,60;20.7,119.5,50;21.2,125.6,40;21.2,130.9,30;21.5,136.5,20];
nhc_epac_2020_11 = [19.2,113.8,65;20.7,119.5,55;21.2,125.5,45;21.4,131.3,35;21.5,137.0,25];
btk_epac_2020_11 = [19.0,113.6,55;20.3,119.0,50;20.6,123.7,35;21.0,128.2,25;22.1,133.5,25]; # TCR
myvect = [myvect;my_epac_2020_11];
nhcvect = [nhcvect;nhc_epac_2020_11];
btkvect = [btkvect;btk_epac_2020_11];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 12 ... CRISTINA before 2020-07-09-21Z
# my at https://twitter.com/elioeFIN/status/1281322853288345602
# NHC at https://www.nhc.noaa.gov/archive/2020/ep05/ep052020.discus.013.shtml?

my_epac_2020_12 = [19.7,114.9,60;21.0,120.7,55;21.2,126.7,40;21.5,132.3,30;21.6,138.0,20];
nhc_epac_2020_12 = [19.7,115.0,65;21.0,120.7,55;21.5,126.3,50;21.9,131.9,30;22.3,137.3,25];
btk_epac_2020_12 = [19.4,114.8,60;20.3,120.3,45;20.6,124.8,35;21.2,129.4,25;22.4,135.0,25]; # TCR
myvect = [myvect;my_epac_2020_12];
nhcvect = [nhcvect;nhc_epac_2020_12];
btkvect = [btkvect;btk_epac_2020_12];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Atl 18 ... FAY before 2020-07-10-03Z
# my at https://twitter.com/elioeFIN/status/1281413334512873474
# NHC at https://www.nhc.noaa.gov/archive/2020/al06/al062020.discus.002.shtml?

my_atl_2020_18 = [39.5,74.3,40];
nhc_atl_2020_18 = [39.9,74.1,45];
btk_atl_2020_18 = [40.2,74.3,35]; # TCR
myvect = [myvect;my_atl_2020_18];
nhcvect = [nhcvect;nhc_atl_2020_18];
btkvect = [btkvect;btk_atl_2020_18];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;1];

# Atl 19 ... FAY before 2020-07-10-15Z
# my at https://twitter.com/elioeFIN/status/1281594607214759936
# NHC at https://www.nhc.noaa.gov/archive/2020/al06/al062020.discus.004.shtml?

my_atl_2020_19 = [42.9,73.5,35];
nhc_atl_2020_19 = [43.2,73.2,30];
btk_atl_2020_19 = [43.4,74.0,25]; # TCR
myvect = [myvect;my_atl_2020_19];
nhcvect = [nhcvect;nhc_atl_2020_19];
btkvect = [btkvect;btk_atl_2020_19];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;1];

# Epac 13 ... CRISTINA before 2020-07-10-21Z
# my at https://twitter.com/elioeFIN/status/1281684895958532096
# NHC at https://www.nhc.noaa.gov/archive/2020/ep05/ep052020.discus.017.shtml?

my_epac_2020_13 = [20.6,120.2,50;21.2,125.1,40;21.9,130.1,25;22.8,135.3,25;23.1,140.4,20];
nhc_epac_2020_13 = [20.5,120.1,50;21.2,125.3,40;21.9,130.2,30;23.0,135.0,25;23.5,140.5,25];
btk_epac_2020_13 = [20.3,120.3,45;20.6,124.8,35;21.2,129.4,25;22.4,135.0,25;23.8,140.0,25]; # TCR
myvect = [myvect;my_epac_2020_13];
nhcvect = [nhcvect;nhc_epac_2020_13];
btkvect = [btkvect;btk_epac_2020_13];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 14 ... SIX-E before 2020-07-14-03Z
# my at https://twitter.com/elioeFIN/status/1282863105597411331
# NHC at https://www.nhc.noaa.gov/archive/2020/ep06/ep062020.discus.002.shtml?

# (nothing to be verified... not even after tcr release)

# Epac 15 ... DOUGLAS before 2020-07-20-21Z
# my at https://twitter.com/elioeFIN/status/1285309197186412545
# NHC at https://www.nhc.noaa.gov/archive/2020/ep08/ep082020.discus.002.shtml?

my_epac_2020_15 = [12.1,124.0,40;11.7,129.5,55;13.1,135.4,65;15.0,140.9,65;16.9,147.1,55];
nhc_epac_2020_15 = [12.1,123.9,40;11.9,129.4,60;13.4,134.9,75;15.0,140.0,70;16.5,145.5,60];
btk_epac_2020_15 = [12.2,124.8,55;11.9,130.3,70;13.8,136.5,110;16.7,142.7,100;19.1,149.2,85]; # TCR, prelim W of 140W
myvect = [myvect;my_epac_2020_15];
nhcvect = [nhcvect;nhc_epac_2020_15];
btkvect = [btkvect;btk_epac_2020_15];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 16 ... DOUGLAS before 2020-07-21-03Z
# my at https://twitter.com/elioeFIN/status/1285399853632233472
# NHC at https://www.nhc.noaa.gov/archive/2020/ep08/ep082020.discus.003.shtml?

my_epac_2020_16 = [11.7,125.5,50;12.1,131.0,70;14.0,136.4,80;15.6,141.6,75;17.1,147.3,65];
nhc_epac_2020_16 = [12.0,125.6,50;12.3,130.8,70;14.2,136.1,75;15.9,141.5,60;16.6,147.0,45];
btk_epac_2020_16 = [12.1,126.1,55;12.3,131.8,80;14.6,138.0,115;17.5,144.3,100;19.7,150.7,80]; # TCR, prelim W of 140W
myvect = [myvect;my_epac_2020_16];
nhcvect = [nhcvect;nhc_epac_2020_16];
btkvect = [btkvect;btk_epac_2020_16];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 17 ... DOUGLAS before 2020-07-21-15Z
# my at https://twitter.com/elioeFIN/status/1285581213093298176
# NHC at https://www.nhc.noaa.gov/archive/2020/ep08/ep082020.discus.005.shtml?

my_epac_2020_17 = [12.0,128.3,70;13.5,133.4,85;15.8,138.8,75;17.4,144.5,65;18.1,150.2,50];
nhc_epac_2020_17 = [12.1,128.5,80;13.6,133.7,90;16.1,139.4,75;18.0,145.5,65;18.5,151.5,55];
btk_epac_2020_17 = [11.6,128.9,60;13.3,134.9,105;16.1,141.1,105;18.7,147.6,90;20.5,153.6,80]; # TCR, prelim W of 140W
myvect = [myvect;my_epac_2020_17];
nhcvect = [nhcvect;nhc_epac_2020_17];
btkvect = [btkvect;btk_epac_2020_17];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 18 ... DOUGLAS before 2020-07-21-21Z
# my at https://twitter.com/elioeFIN/status/1285671261859971072
# NHC at https://www.nhc.noaa.gov/archive/2020/ep08/ep082020.discus.006.shtml?

my_epac_2020_18 = [12.1,129.7,80;14.1,135.0,85;16.6,140.8,70;18.3,146.9,60;18.4,152.8,50];
nhc_epac_2020_18 = [12.1,129.5,80;14.4,134.5,90;16.9,140.2,75;18.5,146.0,65;19.0,151.5,55];
btk_epac_2020_18 = [11.9,130.3,70;13.8,136.5,110;16.7,142.7,100;19.1,149.2,85;21.0,155.1,75]; # TCR, prelim W of 140W
myvect = [myvect;my_epac_2020_18];
nhcvect = [nhcvect;nhc_epac_2020_18];
btkvect = [btkvect;btk_epac_2020_18];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Atl 20 ... GONZALO before 2020-07-22-03Z
# my at https://twitter.com/elioeFIN/status/1285762686194786306
# NHC at https://www.nhc.noaa.gov/archive/2020/al07/al072020.discus.002.shtml?

my_atl_2020_20 = [10.4,45.1,40;10.6,50.3,50;11.1,56.9,55];
nhc_atl_2020_20 = [10.3,45.0,45;10.5,50.1,55;11.3,56.0,55];
btk_atl_2020_20 = [9.9,45.4,50;9.8,50.2,50;10.0,56.3,35]; # TCR
myvect = [myvect;my_atl_2020_20];
nhcvect = [nhcvect;nhc_atl_2020_20];
btkvect = [btkvect;btk_atl_2020_20];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Atl 21 ... GONZALO before 2020-07-22-15Z
# my at https://twitter.com/elioeFIN/status/1285943399426732033
# NHC at https://www.nhc.noaa.gov/archive/2020/al07/al072020.discus.004.shtml?

my_atl_2020_21 = [10.1,47.5,50;10.5,52.5,60;11.6,58.4,55];
nhc_atl_2020_21 = [10.0,47.7,65;10.4,52.8,70;11.4,58.8,60];
btk_atl_2020_21 = [9.7,47.6,55;9.9,53.3,45;10.3,59.8,35]; # TCR
myvect = [myvect;my_atl_2020_21];
nhcvect = [nhcvect;nhc_atl_2020_21];
btkvect = [btkvect;btk_atl_2020_21];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Epac 19 ... DOUGLAS before 2020-07-22-21Z
# my at https://twitter.com/elioeFIN/status/1286033737336184833
# NHC at https://www.nhc.noaa.gov/archive/2020/ep08/ep082020.discus.010.shtml?

my_epac_2020_19 = [13.7,135.6,90;16.4,141.6,85;18.4,147.7,70;19.3,153.6,60;20.4,159.7,50];
nhc_epac_2020_19 = [13.8,135.8,100;16.4,141.9,90;18.7,148.0,75;20.0,154.0,75;21.0,160.0,55];
btk_epac_2020_19 = [13.8,136.5,110;16.7,142.7,100;19.1,149.2,85;21.0,155.1,75;22.8,161.4,70]; # TCR, prelim W of 140W
myvect = [myvect;my_epac_2020_19];
nhcvect = [nhcvect;nhc_epac_2020_19];
btkvect = [btkvect;btk_epac_2020_19];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Atl 22 ... GONZALO before 2020-07-23-03Z
# my at https://twitter.com/elioeFIN/status/1286124107986329600
# NHC at https://www.nhc.noaa.gov/archive/2020/al07/al072020.discus.006.shtml?

my_atl_2020_22 = [10.2,50.2,70;11.0,55.7,70];
nhc_atl_2020_22 = [10.2,50.0,65;11.2,55.5,75];
btk_atl_2020_22 = [9.8,50.2,50;10.0,56.3,35]; # TCR
myvect = [myvect;my_atl_2020_22];
nhcvect = [nhcvect;nhc_atl_2020_22];
btkvect = [btkvect;btk_atl_2020_22];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Atl 23 ... HANNA before 2020-07-23-21Z
# my at https://twitter.com/elioeFIN/status/1286396105991901185
# NHC at https://www.nhc.noaa.gov/archive/2020/al08/al082020.discus.004.shtml?

my_atl_2020_23 = [27.2,94.1,40;27.6,97.6,40;27.4,100.6,25];
nhc_atl_2020_23 = [27.1,93.6,45;27.6,97.0,50;27.3,100.0,30];
btk_atl_2020_23 = [27.2,93.7,50;26.9,96.8,80;25.8,100.3,30]; # TCR
myvect = [myvect;my_atl_2020_23];
nhcvect = [nhcvect;nhc_atl_2020_23];
btkvect = [btkvect;btk_atl_2020_23];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Epac 20 ... DOUGLAS before 2020-07-24-03Z
# my at https://twitter.com/elioeFIN/status/1286486689800740864
# NHC at https://www.nhc.noaa.gov/archive/2020/ep08/ep082020.discus.015.shtml?

my_epac_2020_20 = [17.0,144.3,95;19.2,150.4,75;20.5,156.2,65;21.2,162.1,55;21.5,169.0,45];
nhc_epac_2020_20 = [17.1,144.3,100;19.2,150.4,75;20.5,156.0,60;21.3,161.8,50;21.8,168.5,45];
btk_epac_2020_20 = [17.5,144.3,100;19.7,150.7,80;21.7,156.6,75;22.9,162.8,60;24.4,169.9,40]; # TCR, prelim W of 140W, except day 5 is btk
myvect = [myvect;my_epac_2020_20];
nhcvect = [nhcvect;nhc_epac_2020_20];
btkvect = [btkvect;btk_epac_2020_20];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Atl 24 ... GONZALO before 2020-07-24-15Z
# my at https://twitter.com/elioeFIN/status/1286668015128449024
# NHC at https://www.nhc.noaa.gov/archive/2020/al07/al072020.discus.012.shtml?

my_atl_2020_24 = [11.3,58.5,55];
nhc_atl_2020_24 = [11.4,59.1,55];
btk_atl_2020_24 = [10.3,59.8,35]; # TCR
myvect = [myvect;my_atl_2020_24];
nhcvect = [nhcvect;nhc_atl_2020_24];
btkvect = [btkvect;btk_atl_2020_24];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;1];

# Atl 25 ... HANNA before 2020-07-24-21Z
# my at https://twitter.com/elioeFIN/status/1286758454019989504
# NHC at https://www.nhc.noaa.gov/archive/2020/al08/al082020.discus.008.shtml?

my_atl_2020_25 = [27.3,97.1,55;26.5,99.9,35];
nhc_atl_2020_25 = [27.3,97.2,65;26.6,100.3,25];
btk_atl_2020_25 = [26.9,96.8,80;25.8,100.3,30]; # TCR
myvect = [myvect;my_atl_2020_25];
nhcvect = [nhcvect;nhc_atl_2020_25];
btkvect = [btkvect;btk_atl_2020_25];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Atl 26 ... NINE before 2020-07-28-21Z
# my at https://twitter.com/elioeFIN/status/1288207721771270144
# NHC at https://www.nhc.noaa.gov/archive/2020/al09/al092020.discus.002.shtml?

my_atl_2020_26 = [16.4,62.6,40;19.4,69.6,50;21.9,75.1,55;25.1,78.8,50;28.2,80.9,45];
nhc_atl_2020_26 = [16.7,62.5,40;19.7,69.7,50;22.2,75.3,50;24.7,79.0,50;27.0,81.0,45];
btk_atl_2020_26 = [15.3,64.0,40;18.9,69.8,60;22.1,75.1,70;24.8,78.3,60;27.4,79.6,60]; # TCR
myvect = [myvect;my_atl_2020_26];
nhcvect = [nhcvect;nhc_atl_2020_26];
btkvect = [btkvect;btk_atl_2020_26];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 27 ... NINE before 2020-07-29-03Z
# my at https://twitter.com/elioeFIN/status/1288298498417459201
# NHC at https://www.nhc.noaa.gov/archive/2020/al09/al092020.discus.003.shtml?

my_atl_2020_27 = [17.0,65.5,45;19.8,72.3,50;22.6,77.5,50;25.3,77.5,50;27.9,81.5,45];
nhc_atl_2020_27 = [17.4,65.9,45;20.1,72.6,45;22.8,77.7,55;25.7,80.7,55;27.9,82.0,45];
btk_atl_2020_27 = [15.8,65.7,45;19.9,71.2,65;22.9,75.9,75;25.3,78.9,60;28.2,79.7,60]; # TCR
myvect = [myvect;my_atl_2020_27];
nhcvect = [nhcvect;nhc_atl_2020_27];
btkvect = [btkvect;btk_atl_2020_27];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 28 ... NINE before 2020-07-29-21Z
# my at https://twitter.com/elioeFIN/status/1288570189668323330
# NHC at https://www.nhc.noaa.gov/archive/2020/al09/al092020.discus.006.shtml?

my_atl_2020_28 = [19.2,71.5,40;22.2,77.5,35;24.7,80.8,45;27.8,82.0,50;31.6,81.3,50];
nhc_atl_2020_28 = [19.2,71.0,40;22.3,76.9,45;25.5,80.8,45;28.6,82.1,40;31.5,82.5,35];
btk_atl_2020_28 = [18.9,69.8,60;22.1,75.1,70;24.8,78.3,60;27.4,79.6,60;31.2,79.7,65]; # TCR
myvect = [myvect;my_atl_2020_28];
nhcvect = [nhcvect;nhc_atl_2020_28];
btkvect = [btkvect;btk_atl_2020_28];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 29 ... NINE before 2020-07-30-03Z
# my at https://twitter.com/elioeFIN/status/1288660838337789953
# NHC at https://www.nhc.noaa.gov/archive/2020/al09/al092020.discus.007.shtml?

my_atl_2020_29 = [19.8,72.4,35;22.8,77.8,50;26.5,80.6,50;29.9,80.8,45;34.6,79.2,40];
nhc_atl_2020_29 = [19.4,72.2,40;22.9,77.3,50;26.6,80.2,55;30.0,80.5,55;35.0,77.0,50];
btk_atl_2020_29 = [19.9,71.2,65;22.9,75.9,75;25.3,78.9,60;28.2,79.7,60;32.8,79.1,80]; # TCR
myvect = [myvect;my_atl_2020_29];
nhcvect = [nhcvect;nhc_atl_2020_29];
btkvect = [btkvect;btk_atl_2020_29];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 30 ... ISAIAS before 2020-07-30-15
# my at https://twitter.com/elioeFIN/status/1288842480373452800
# NHC at https://www.nhc.noaa.gov/archive/2020/al09/al092020.discus.009.shtml?

my_atl_2020_30 = [21.0,74.2,45;24.4,78.7,60;27.8,80.0,65;31.8,79.2,60;39.3,71.2,55];
nhc_atl_2020_30 = [21.4,74.2,50;24.6,78.2,60;28.0,79.9,60;31.5,79.1,60;37.5,73.5,60];
btk_atl_2020_30 = [21.3,74.0,65;24.3,77.5,70;26.6,79.5,55;30.1,80.0,60;37.7,76.8,60]; # TCR
myvect = [myvect;my_atl_2020_30];
nhcvect = [nhcvect;nhc_atl_2020_30];
btkvect = [btkvect;btk_atl_2020_30];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 31 ... ISAIAS before 2020-07-30-21Z
# my at https://twitter.com/elioeFIN/status/1288932595489701890
# NHC at https://www.nhc.noaa.gov/archive/2020/al09/al092020.discus.010.shtml?

my_atl_2020_31 = [22.4,75.5,50;25.5,79.2,65;28.9,80.2,60;32.6,78.8,65;40.3,71.0,60];
nhc_atl_2020_31 = [22.7,75.1,60;26.1,78.5,65;29.2,79.7,65;33.3,78.0,65;40.0,71.0,60];
btk_atl_2020_31 = [22.1,75.1,70;24.8,78.3,60;27.4,79.6,60;31.2,79.7,65;40.9,75.1,55]; # TCR
myvect = [myvect;my_atl_2020_31];
nhcvect = [nhcvect;nhc_atl_2020_31];
btkvect = [btkvect;btk_atl_2020_31];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 32 ... ISAIAS before 2020-07-31-03Z
# my at https://twitter.com/elioeFIN/status/1289023453476069378
# NHC at https://www.nhc.noaa.gov/archive/2020/al09/al092020.discus.011.shtml?

my_atl_2020_32 = [23.4,76.3,60;26.6,79.2,65;29.8,79.7,65;34.7,77.2,60;42.8,67.1,55];
nhc_atl_2020_32 = [23.5,76.1,60;26.7,79.0,65;30.0,79.5,65;34.6,76.8,65;42.0,69.0,60];
btk_atl_2020_32 = [22.9,75.9,75;25.3,78.9,60;28.2,79.7,60;32.8,79.1,80;44.0,73.1,45]; # TCR
myvect = [myvect;my_atl_2020_32];
nhcvect = [nhcvect;nhc_atl_2020_32];
btkvect = [btkvect;btk_atl_2020_32];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 33 ... ISAIAS before 2020-07-31-15Z
# my at https://twitter.com/elioeFIN/status/1289204441170636802
# NHC at https://www.nhc.noaa.gov/archive/2020/al09/al092020.discus.014.shtml?

my_atl_2020_33 = [24.6,78.1,70;27.8,80.1,65;31.2,79.7,55;37.3,75.2,50;43.6,65.5,45];
nhc_atl_2020_33 = [24.8,78.0,80;27.7,79.8,75;31.6,79.5,65;36.4,76.2,55;43.3,69.0,55];
btk_atl_2020_33 = [24.3,77.5,70;26.6,79.5,55;30.1,80.0,60;37.7,76.8,60;48.5,70.3,30]; # TCR but day 5 self-made
myvect = [myvect;my_atl_2020_33];
nhcvect = [nhcvect;nhc_atl_2020_33];
btkvect = [btkvect;btk_atl_2020_33];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 34 ... ISAIAS before 2020-08-01-15Z
# my at https://twitter.com/elioeFIN/status/1289567280683028482
# NHC at https://www.nhc.noaa.gov/archive/2020/al09/al092020.discus.018.shtml?

my_atl_2020_34 = [26.7,79.9,70;29.8,80.7,60;35.5,76.8,55;43.3,67.4,50;47.0,54.1,35];
nhc_atl_2020_34 = [27.1,79.7,70;30.1,80.4,65;36.0,76.9,50;43.3,69.7,45;49.0,57.9,40];
btk_atl_2020_34 = [26.6,79.5,55;30.1,80.0,60;37.7,76.8,60;48.5,70.3,30;53.2,63.1,30]; # TCR but days 4&5 self-made
myvect = [myvect;my_atl_2020_34];
nhcvect = [nhcvect;nhc_atl_2020_34];
btkvect = [btkvect;btk_atl_2020_34];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 35 ... ISAIAS before 2020-08-02-15Z
# my at https://twitter.com/elioeFIN/status/1289929258962313221
# NHC at https://www.nhc.noaa.gov/archive/2020/al09/al092020.discus.022.shtml?

my_atl_2020_35 = [29.3,80.8,55;35.3,78.1,50;46.0,68.5,35];
nhc_atl_2020_35 = [29.6,80.5,55;35.7,77.7,50;44.6,70.4,40];
btk_atl_2020_35 = [30.1,80.0,60;37.7,76.8,60;48.5,70.3,30]; # TCR but day 3 self-made
myvect = [myvect;my_atl_2020_35];
nhcvect = [nhcvect;nhc_atl_2020_35];
btkvect = [btkvect;btk_atl_2020_35];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Atl 36 ... ISAIAS before 2020-08-02-21Z
# my at https://twitter.com/elioeFIN/status/1290019969267204097
# NHC at https://www.nhc.noaa.gov/archive/2020/al09/al092020.discus.023.shtml?

my_atl_2020_36 = [30.6,80.3,60;37.8,76.3,50;46.9,68.3,40];
nhc_atl_2020_36 = [30.9,79.9,60;38.1,75.8,50;46.3,68.4,40];
btk_atl_2020_36 = [31.2,79.7,65;40.9,75.1,55;50.7,75.0,30]; # TCR but day 3 self-made
myvect = [myvect;my_atl_2020_36];
nhcvect = [nhcvect;nhc_atl_2020_36];
btkvect = [btkvect;btk_atl_2020_36];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Epac 21 ... ELIDA before 2020-08-09-15Z
# my at https://twitter.com/elioeFIN/status/1292466363437547520
# NHC at https://www.nhc.noaa.gov/archive/2020/ep09/ep092020.discus.003.shtml?

my_epac_2020_21 = [17.8,109.9,60;20.0,115.2,75;21.3,120.2,65;21.8,125.0,50];
nhc_epac_2020_21 = [18.4,109.9,65;20.0,115.2,85;21.2,120.1,70;21.5,124.0,50];
btk_epac_2020_21 = [18.7,109.2,60;21.1,113.5,90;23.1,118.3,55;25.4,120.7,25]; # TCR
myvect = [myvect;my_epac_2020_21];
nhcvect = [nhcvect;nhc_epac_2020_21];
btkvect = [btkvect;btk_epac_2020_21];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Epac 22 ... ELIDA before 2020-08-09-21Z
# my at https://twitter.com/elioeFIN/status/1292557257461374978
# NHC at https://www.nhc.noaa.gov/archive/2020/ep09/ep092020.discus.004.shtml?

my_epac_2020_22 = [18.5,111.1,70;20.4,116.3,85;21.3,121.0,65;21.8,124.2,45];
nhc_epac_2020_22 = [18.9,111.0,75;20.3,116.3,85;21.6,120.9,60;21.9,124.1,45];
btk_epac_2020_22 = [19.2,110.3,65;21.7,114.8,90;23.5,119.3,45;26.0,120.9,20]; # TCR
myvect = [myvect;my_epac_2020_22];
nhcvect = [nhcvect;nhc_epac_2020_22];
btkvect = [btkvect;btk_epac_2020_22];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Epac 23 ... ELIDA before 2020-08-10-15Z
# my at https://twitter.com/elioeFIN/status/1292828499355602945
# NHC at https://www.nhc.noaa.gov/archive/2020/ep09/ep092020.discus.007.shtml?

my_epac_2020_23 = [20.2,114.6,80;22.0,119.2,60;22.7,123.0,40];
nhc_epac_2020_23 = [20.5,114.5,80;22.0,119.3,65;22.7,122.8,40];
btk_epac_2020_23 = [21.1,113.5,90;23.1,118.3,55;25.4,120.7,25]; # TCR
myvect = [myvect;my_epac_2020_23];
nhcvect = [nhcvect;nhc_epac_2020_23];
btkvect = [btkvect;btk_epac_2020_23];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 24 ... ELIDA before 2020-08-10-21Z
# my at https://twitter.com/elioeFIN/status/1292919387867971592
# NHC at https://www.nhc.noaa.gov/archive/2020/ep09/ep092020.discus.008.shtml?

my_epac_2020_24 = [20.8,115.4,80;22.7,119.7,55;22.8,123.1,35];
nhc_epac_2020_24 = [21.4,115.5,80;23.0,119.8,55;23.8,122.8,35];
btk_epac_2020_24 = [21.7,114.8,90;23.5,119.3,45;26.0,120.9,20]; # TCR
myvect = [myvect;my_epac_2020_24];
nhcvect = [nhcvect;nhc_epac_2020_24];
btkvect = [btkvect;btk_epac_2020_24];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 25 ... ELIDA before 2020-08-11-15Z
# my at https://twitter.com/elioeFIN/status/1293190851561226242
# NHC at https://www.nhc.noaa.gov/archive/2020/ep09/ep092020.discus.011.shtml?

my_epac_2020_25 = [23.1,118.4,60;25.2,120.5,30];
nhc_epac_2020_25 = [23.1,118.0,65;24.8,120.6,30];
btk_epac_2020_25 = [23.1,118.3,55;25.4,120.7,25]; # TCR
myvect = [myvect;my_epac_2020_25];
nhcvect = [nhcvect;nhc_epac_2020_25];
btkvect = [btkvect;btk_epac_2020_25];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Epac 26 ... ELIDA before 2020-08-11-21Z
# my at https://twitter.com/elioeFIN/status/1293281689771409408
# NHC at https://www.nhc.noaa.gov/archive/2020/ep09/ep092020.discus.012.shtml?

my_epac_2020_26 = [23.7,119.3,55;25.8,121.4,30];
nhc_epac_2020_26 = [23.6,119.0,65;25.5,121.1,30];
btk_epac_2020_26 = [23.5,119.3,45;26.0,120.9,20]; # TCR
myvect = [myvect;my_epac_2020_26];
nhcvect = [nhcvect;nhc_epac_2020_26];
btkvect = [btkvect;btk_epac_2020_26];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Atl 37 ... ELEVEN before 2020-08-12-03Z
# my at https://twitter.com/elioeFIN/status/1293372033125044224
# NHC at https://www.nhc.noaa.gov/archive/2020/al11/al112020.discus.002.shtml?

my_atl_2020_37 = [12.8,46.3,35;14.4,51.5,45;17.0,57.3,45;19.9,61.8,45];
nhc_atl_2020_37 = [12.8,45.9,35;14.5,50.8,45;17.0,55.7,45;19.5,60.5,40];
btk_atl_2020_37 = [12.4,46.1,30;14.5,51.3,35;18.0,56.9,40;19.8,62.1,35]; # TCR
myvect = [myvect;my_atl_2020_37];
nhcvect = [nhcvect;nhc_atl_2020_37];
btkvect = [btkvect;btk_atl_2020_37];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 38 ... ELEVEN before 2020-08-12-15Z
# my at https://twitter.com/elioeFIN/status/1293553674950778882
# NHC at https://www.nhc.noaa.gov/archive/2020/al11/al112020.discus.004.shtml?

my_atl_2020_38 = [13.5,48.7,40;15.6,53.9,50;18.2,59.3,45;20.6,63.8,40];
nhc_atl_2020_38 = [13.5,48.4,40;15.7,53.3,50;18.2,58.1,50;20.5,63.0,40];
btk_atl_2020_38 = [13.4,48.6,40;16.2,54.2,35;18.8,59.7,35;20.2,64.5,30]; # TCR
myvect = [myvect;my_atl_2020_38];
nhcvect = [nhcvect;nhc_atl_2020_38];
btkvect = [btkvect;btk_atl_2020_38];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 39 ... ELEVEN before 2020-08-12-21Z
# my at https://twitter.com/elioeFIN/status/1293643956690071552
# NHC at https://www.nhc.noaa.gov/archive/2020/al11/al112020.discus.005.shtml?

my_atl_2020_39 = [14.0,49.8,45;16.4,55.1,55;19.3,60.3,50;22.0,64.2,35];
nhc_atl_2020_39 = [14.0,49.9,40;16.6,54.8,50;19.1,59.7,50;21.5,64.5,40];
btk_atl_2020_39 = [14.0,50.0,40;17.4,55.6,40;19.6,60.9,35;20.6,65.4,30]; # TCR
myvect = [myvect;my_atl_2020_39];
nhcvect = [nhcvect;nhc_atl_2020_39];
btkvect = [btkvect;btk_atl_2020_39];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 40 ... ELEVEN before 2020-08-13-03Z
# my at https://twitter.com/elioeFIN/status/1293734393606012933
# NHC at https://www.nhc.noaa.gov/archive/2020/al11/al112020.discus.006.shtml?

my_atl_2020_40 = [14.2,51.0,45;17.0,55.9,50;19.4,59.6,45];
nhc_atl_2020_40 = [14.2,51.0,40;17.0,56.4,50;19.7,61.4,40];
btk_atl_2020_40 = [14.5,51.3,35;18.0,56.9,40;19.8,62.1,35]; # TCR
myvect = [myvect;my_atl_2020_40];
nhcvect = [nhcvect;nhc_atl_2020_40];
btkvect = [btkvect;btk_atl_2020_40];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Epac 27 ... TEN-E before 2020-08-13-15Z
# my at https://twitter.com/elioeFIN/status/1293915359108452355
# NHC at https://www.nhc.noaa.gov/archive/2020/ep10/ep102020.discus.002.shtml?

my_epac_2020_27 = [13.9,131.6,35;13.8,133.5,35;14.1,134.7,35;14.4,135.5,35];
nhc_epac_2020_27 = [13.9,131.9,35;13.8,133.6,35;14.1,134.5,30;14.7,135.3,30];
btk_epac_2020_27 = [13.8,131.9,30;13.2,133.5,30;13.6,133.9,25;14.9,135.4,20]; # TCR
myvect = [myvect;my_epac_2020_27];
nhcvect = [nhcvect;nhc_epac_2020_27];
btkvect = [btkvect;btk_epac_2020_27];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Atl 41 ... JOSEPHINE before 2020-08-13-21Z
# my at https://twitter.com/elioeFIN/status/1294006216864215042
# NHC at https://www.nhc.noaa.gov/archive/2020/al11/al112020.discus.009.shtml?

my_atl_2020_41 = [16.6,55.1,50;19.4,60.3,45;22.0,65.8,35];
nhc_atl_2020_41 = [16.9,55.2,50;19.6,60.5,45;22.0,64.8,40];
btk_atl_2020_41 = [17.4,55.6,40;19.6,60.9,35;20.6,65.4,30]; # TCR
myvect = [myvect;my_atl_2020_41];
nhcvect = [nhcvect;nhc_atl_2020_41];
btkvect = [btkvect;btk_atl_2020_41];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Epac 28 ... TEN-E before 2020-08-14-03Z
# my at https://twitter.com/elioeFIN/status/1294096897427333122
# NHC at https://www.nhc.noaa.gov/archive/2020/ep10/ep102020.discus.004.shtml?

my_epac_2020_28 = [13.9,132.6,35;13.8,133.3,35;14.3,133.8,30];
nhc_epac_2020_28 = [13.9,132.5,30;13.7,133.6,30;14.4,134.0,30];
btk_epac_2020_28 = [13.4,133.0,30;13.1,133.8,30;14.5,134.1,25]; # TCR
myvect = [myvect;my_epac_2020_28];
nhcvect = [nhcvect;nhc_epac_2020_28];
btkvect = [btkvect;btk_epac_2020_28];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Atl 42 ... JOSEPHINE before 2020-08-14-15Z
# my at https://twitter.com/elioeFIN/status/1294279524964761600
# NHC at https://www.nhc.noaa.gov/archive/2020/al11/al112020.discus.012.shtml?

my_atl_2020_42 = [18.7,59.5,45;21.3,63.9,35];
nhc_atl_2020_42 = [18.4,59.3,40;20.9,64.1,35];
btk_atl_2020_42 = [18.8,59.7,35;20.2,64.5,30]; # TCR
myvect = [myvect;my_atl_2020_42];
nhcvect = [nhcvect;nhc_atl_2020_42];
btkvect = [btkvect;btk_atl_2020_42];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Epac 29 ... FAUSTO before 2020-08-16-21Z
# my at https://twitter.com/elioeFIN/status/1295093370730184705
# NHC at https://www.nhc.noaa.gov/archive/2020/ep11/ep112020.discus.004.shtml?

my_epac_2020_29 = [23.5,126.0,30];
nhc_epac_2020_29 = [24.1,126.2,30];
btk_epac_2020_29 = [23.3,126.3,20]; # TCR
myvect = [myvect;my_epac_2020_29];
nhcvect = [nhcvect;nhc_epac_2020_29];
btkvect = [btkvect;btk_epac_2020_29];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;2];


# Epac 30 ... GENEVIEVE before 2020-08-17-03Z
# my at https://twitter.com/elioeFIN/status/1295183843197059076
# NHC at https://www.nhc.noaa.gov/archive/2020/ep12/ep122020.discus.003.shtml?

my_epac_2020_30 = [15.2,106.3,80;17.9,109.8,105;21.0,112.9,100;23.2,114.5,75;25.5,119.6,45];
nhc_epac_2020_30 = [14.8,105.7,75;17.7,110.1,115;20.4,112.9,105;22.7,116.0,80;24.7,119.7,55];
btk_epac_2020_30 = [16.0,105.3,85;19.1,108.8,105;21.7,110.0,75;23.7,112.9,55;26.2,116.2,30]; # TCR
myvect = [myvect;my_epac_2020_30];
nhcvect = [nhcvect;nhc_epac_2020_30];
btkvect = [btkvect;btk_epac_2020_30];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 31 ... GENEVIEVE before 2020-08-17-21Z
# my at https://twitter.com/elioeFIN/status/1295455540261326848
# NHC at https://www.nhc.noaa.gov/archive/2020/ep12/ep122020.discus.006.shtml?

my_epac_2020_31 = [18.3,108.9,125;20.9,110.7,120;22.9,113.0,90;24.9,115.1,75];
nhc_epac_2020_31 = [18.0,108.5,110;20.6,110.8,115;22.8,113.1,90;24.8,116.0,60];
btk_epac_2020_31 = [18.3,108.3,110;21.1,109.9,80;23.4,112.0,60;25.4,115.2,35]; # TCR
myvect = [myvect;my_epac_2020_31];
nhcvect = [nhcvect;nhc_epac_2020_31];
btkvect = [btkvect;btk_epac_2020_31];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Epac 32 ... GENEVIEVE before 2020-08-18-03Z
# my at https://twitter.com/elioeFIN/status/1295546300503666689
# NHC at https://www.nhc.noaa.gov/archive/2020/ep12/ep122020.discus.007.shtml?

my_epac_2020_32 = [19.1,110.1,115;21.4,111.5,115;23.3,113.8,85;25.0,116.8,65];
nhc_epac_2020_32 = [18.9,109.3,115;21.2,111.4,115;23.3,113.8,85;25.4,117.0,60];
btk_epac_2020_32 = [19.1,108.8,105;21.7,110.0,75;23.7,112.9,55;26.2,116.2,30]; # TCR
myvect = [myvect;my_epac_2020_32];
nhcvect = [nhcvect;nhc_epac_2020_32];
btkvect = [btkvect;btk_epac_2020_32];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Epac 33 ... GENEVIEVE before 2020-08-18-21Z
# my at https://twitter.com/elioeFIN/status/1295818142732693510
# NHC at https://www.nhc.noaa.gov/archive/2020/ep12/ep122020.discus.010.shtml?

my_epac_2020_33 = [20.9,111.2,115;22.7,112.7,90;24.5,115.6,65];
nhc_epac_2020_33 = [20.9,110.4,115;22.7,112.4,80;24.4,115.1,60];
btk_epac_2020_33 = [21.1,109.9,80;23.4,112.0,60;25.4,115.2,35]; # TCR
myvect = [myvect;my_epac_2020_33];
nhcvect = [nhcvect;nhc_epac_2020_33];
btkvect = [btkvect;btk_epac_2020_33];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 34 ... GENEVIEVE before 2020-08-19-03Z
# my at https://twitter.com/elioeFIN/status/1295908599710048259
# NHC at https://www.nhc.noaa.gov/archive/2020/ep12/ep122020.discus.011.shtml?

my_epac_2020_34 = [21.5,110.7,100;23.2,112.3,65;24.9,115.6,50];
nhc_epac_2020_34 = [21.5,110.4,100;23.1,112.3,75;25.1,115.2,55];
btk_epac_2020_34 = [21.7,110.0,75;23.7,112.9,55;26.2,116.2,30]; # TCR
myvect = [myvect;my_epac_2020_34];
nhcvect = [nhcvect;nhc_epac_2020_34];
btkvect = [btkvect;btk_epac_2020_34];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 35 ... GENEVIEVE before 2020-08-19-21Z
# my at https://twitter.com/elioeFIN/status/1296180529654575105
# NHC at https://www.nhc.noaa.gov/archive/2020/ep12/ep122020.discus.014.shtml?

my_epac_2020_35 = [22.9,111.8,70;24.8,114.5,55];
nhc_epac_2020_35 = [23.1,111.7,75;24.8,114.5,60];
btk_epac_2020_35 = [23.4,112.0,60;25.4,115.2,35]; # TCR
myvect = [myvect;my_epac_2020_35];
nhcvect = [nhcvect;nhc_epac_2020_35];
btkvect = [btkvect;btk_epac_2020_35];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Atl 43 ... THIRTEEN before 2020-08-20-15Z
# my at https://twitter.com/elioeFIN/status/1296452345711165441
# NHC at https://www.nhc.noaa.gov/archive/2020/al13/al132020.discus.003.shtml?

my_atl_2020_43 = [17.8,58.4,40;19.4,64.8,50;21.9,72.3,60;24.4,78.8,70;27.2,83.1,60];
nhc_atl_2020_43 = [18.0,58.3,40;19.6,64.7,50;21.5,71.8,60;24.0,78.6,65;27.0,83.4,65];
btk_atl_2020_43 = [17.0,59.4,40;17.7,65.9,45;18.8,72.3,45;20.8,79.7,50;23.4,86.2,65]; # TCR
myvect = [myvect;my_atl_2020_43];
nhcvect = [nhcvect;nhc_atl_2020_43];
btkvect = [btkvect;btk_atl_2020_43];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 44 ... FOURTEEN before 2020-08-20-21Z
# my at https://twitter.com/elioeFIN/status/1296542812322889728
# NHC at https://www.nhc.noaa.gov/archive/2020/al14/al142020.discus.002.shtml?

my_atl_2020_44 = [15.8,85.0,35;18.5,87.1,55;21.2,89.3,35;24.1,92.7,55;28.0,94.7,55];
nhc_atl_2020_44 = [15.6,84.7,35;18.7,86.6,55;22.1,89.2,55;26.0,91.5,55;28.5,93.5,50];
btk_atl_2020_44 = [17.4,84.2,30;21.3,85.5,55;25.3,87.4,65;28.7,88.6,40;29.1,92.3,20]; # TCR
myvect = [myvect;my_atl_2020_44];
nhcvect = [nhcvect;nhc_atl_2020_44];
btkvect = [btkvect;btk_atl_2020_44];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 45 ... LAURA before 2020-08-21-15Z
# my at https://twitter.com/elioeFIN/status/1296814648537362434
# NHC at https://www.nhc.noaa.gov/archive/2020/al13/al132020.discus.007.shtml?

my_atl_2020_45 = [18.6,65.8,45;20.8,72.8,50;23.4,79.9,70;26.6,85.1,70;30.4,87.1,70];
nhc_atl_2020_45 = [18.3,66.0,45;20.2,73.4,45;23.2,80.7,55;26.5,85.5,65;29.5,87.5,65];
btk_atl_2020_45 = [17.7,65.9,45;18.8,72.3,45;20.8,79.7,50;23.4,86.2,65;26.4,91.4,100]; # TCR
myvect = [myvect;my_atl_2020_45];
nhcvect = [nhcvect;nhc_atl_2020_45];
btkvect = [btkvect;btk_atl_2020_45];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 46 ... FOURTEEN before 2020-08-21-21Z
# my at https://twitter.com/elioeFIN/status/1296905296015699968
# NHC at https://www.nhc.noaa.gov/archive/2020/al14/al142020.discus.006.shtml?

my_atl_2020_46 = [19.3,86.4,45;22.2,89.0,50;25.4,92.0,55;28.1,94.8,50];
nhc_atl_2020_46 = [19.8,85.9,45;22.9,88.7,55;26.2,92.2,65;28.5,95.0,50];
btk_atl_2020_46 = [21.3,85.5,55;25.3,87.4,65;28.7,88.6,40;29.1,92.3,20]; # TCR
myvect = [myvect;my_atl_2020_46];
nhcvect = [nhcvect;nhc_atl_2020_46];
btkvect = [btkvect;btk_atl_2020_46];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 47 ... LAURA before 2020-08-22-15Z
# my at https://twitter.com/elioeFIN/status/1297177063774978049
# NHC at https://www.nhc.noaa.gov/archive/2020/al13/al132020.discus.011.shtml?

my_atl_2020_47 = [19.5,72.6,40;22.5,79.9,40;25.4,85.9,55;28.1,90.5,70;32.0,91.8,50];
nhc_atl_2020_47 = [19.4,72.6,40;22.4,80.0,45;25.2,86.2,65;27.9,90.6,75;31.6,92.5,40];
btk_atl_2020_47 = [18.8,72.3,45;20.8,79.7,50;23.4,86.2,65;26.4,91.4,100;31.2,93.3,85]; # TCR
myvect = [myvect;my_atl_2020_47];
nhcvect = [nhcvect;nhc_atl_2020_47];
btkvect = [btkvect;btk_atl_2020_47];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 48 ... MARCO before 2020-08-22-21Z
# my at https://twitter.com/elioeFIN/status/1297267431560425472
# NHC at https://www.nhc.noaa.gov/archive/2020/al14/al142020.discus.010.shtml?

my_atl_2020_48 = [24.7,87.7,75;28.3,90.0,65;28.7,94.2,40];
nhc_atl_2020_48 = [25.3,87.3,75;29.3,89.6,65;31.1,92.7,40];
btk_atl_2020_48 = [25.3,87.4,65;28.7,88.6,40;29.1,92.3,20]; # TCR
myvect = [myvect;my_atl_2020_48];
nhcvect = [nhcvect;nhc_atl_2020_48];
btkvect = [btkvect;btk_atl_2020_48];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Atl 49 ... LAURA before 2020-08-23-03Z
# my at https://twitter.com/elioeFIN/status/1297358453892153345
# NHC at https://www.nhc.noaa.gov/archive/2020/al13/al132020.discus.013.shtml?

my_atl_2020_49 = [21.0,76.3,45;23.8,83.2,50;26.8,87.8,70;30.4,91.0,70;34.6,89.7,20];
nhc_atl_2020_49 = [20.6,76.0,45;23.4,83.0,50;26.2,88.0,75;29.8,91.2,80;34.7,89.6,30];
btk_atl_2020_49 = [19.8,76.0,55;22.3,83.3,55;24.9,88.9,75;28.5,93.0,130;34.4,92.5,35]; # TCR
myvect = [myvect;my_atl_2020_49];
nhcvect = [nhcvect;nhc_atl_2020_49];
btkvect = [btkvect;btk_atl_2020_49];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 50 ... MARCO before 2020-08-23-21Z
# my at https://twitter.com/elioeFIN/status/1297629808755695619
# NHC at https://www.nhc.noaa.gov/archive/2020/al14/al142020.discus.014.shtml?

my_atl_2020_50 = [28.3,89.8,60;29.4,93.1,30];
nhc_atl_2020_50 = [28.5,89.7,65;29.8,93.2,35];
btk_atl_2020_50 = [28.7,88.6,40;29.1,92.3,20]; # TCR
myvect = [myvect;my_atl_2020_50];
nhcvect = [nhcvect;nhc_atl_2020_50];
btkvect = [btkvect;btk_atl_2020_50];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Atl 51 ... LAURA before 2020-08-24-03Z
# my at https://twitter.com/elioeFIN/status/1297720511364038656
# NHC at https://www.nhc.noaa.gov/archive/2020/al13/al132020.discus.017.shtml?

my_atl_2020_51 = [22.6,83.0,55;25.7,88.5,75;28.5,92.6,85;33.4,92.6,45;37.6,84.4,20];
nhc_atl_2020_51 = [22.5,82.6,60;25.3,88.5,70;29.2,92.4,90;34.2,90.9,40;37.4,83.7,25];
btk_atl_2020_51 = [22.3,83.3,55;24.9,88.9,75;28.5,93.0,130;34.4,92.5,35;37.5,88.0,25]; # TCR
myvect = [myvect;my_atl_2020_51];
nhcvect = [nhcvect;nhc_atl_2020_51];
btkvect = [btkvect;btk_atl_2020_51];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 52 ... LAURA before 2020-08-24-15Z
# my at https://twitter.com/elioeFIN/status/1297902054732632066
# NHC at https://www.nhc.noaa.gov/archive/2020/al13/al132020.discus.019.shtml?

my_atl_2020_52 = [23.7,86.1,65;27.1,91.2,95;30.5,93.3,80;35.3,91.4,35];
nhc_atl_2020_52 = [23.6,86.0,60;26.8,91.1,80;31.2,93.3,65;36.0,90.9,30];
btk_atl_2020_52 = [23.4,86.2,65;26.4,91.4,100;31.2,93.3,85;36.1,91.2,25]; # TCR
myvect = [myvect;my_atl_2020_52];
nhcvect = [nhcvect;nhc_atl_2020_52];
btkvect = [btkvect;btk_atl_2020_52];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 53 ... LAURA before 2020-08-25-15Z
# my at https://twitter.com/elioeFIN/status/1298263982315204609
# NHC at https://www.nhc.noaa.gov/archive/2020/al13/al132020.discus.023.shtml?

my_atl_2020_53 = [26.0,91.6,100;30.8,93.6,90;34.4,92.9,35];
nhc_atl_2020_53 = [26.0,91.5,90;30.5,93.9,80;35.2,92.1,30];
btk_atl_2020_53 = [26.4,91.4,100;31.2,93.3,85;36.1,91.2,25]; # TCR
myvect = [myvect;my_atl_2020_53];
nhcvect = [nhcvect;nhc_atl_2020_53];
btkvect = [btkvect;btk_atl_2020_53];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Atl 54 ... LAURA before 2020-08-26-15Z
# my at https://twitter.com/elioeFIN/status/1298626538108313604
# NHC at https://www.nhc.noaa.gov/archive/2020/al13/al132020.discus.027.shtml?

my_atl_2020_54 = [30.9,93.7,65;35.7,91.6,25];
nhc_atl_2020_54 = [31.0,93.8,75;35.8,92.2,25];
btk_atl_2020_54 = [31.2,93.3,85;36.1,91.2,25]; # TCR
myvect = [myvect;my_atl_2020_54];
nhcvect = [nhcvect;nhc_atl_2020_54];
btkvect = [btkvect;btk_atl_2020_54];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Epac 36 ... HERNAN before 2020-08-26-21Z
# my at https://twitter.com/elioeFIN/status/1298717298836926464
# NHC at https://www.nhc.noaa.gov/archive/2020/ep13/ep132020.discus.003.shtml?

my_epac_2020_36 = [18.9,106.0,45;22.0,108.6,35];
nhc_epac_2020_36 = [19.5,106.1,35;21.7,108.9,30];
btk_epac_2020_36 = [19.4,106.0,35;23.0,109.6,25]; # TCR
myvect = [myvect;my_epac_2020_36];
nhcvect = [nhcvect;nhc_epac_2020_36];
btkvect = [btkvect;btk_epac_2020_36];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Epac 37 ... FOURTEEN-E before 2020-08-26-21Z
# my at https://twitter.com/elioeFIN/status/1298717441309122560
# NHC at https://www.nhc.noaa.gov/archive/2020/ep14/ep142020.discus.002.shtml?

my_epac_2020_37 = [16.7,115.8,35;18.4,113.6,30;20.4,113.1,30;21.2,114.6,25];
nhc_epac_2020_37 = [16.8,115.7,35;17.9,114.4,35;19.9,113.7,30;21.4,114.9,30];
btk_epac_2020_37 = [17.1,115.8,45;18.5,115.4,45;20.6,114.5,40;23.4,113.3,25]; # TCR
myvect = [myvect;my_epac_2020_37];
nhcvect = [nhcvect;nhc_epac_2020_37];
btkvect = [btkvect;btk_epac_2020_37];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Epac 38 ... ISELLE before 2020-08-27-15Z
# my at https://twitter.com/elioeFIN/status/1298990216456204290
# NHC at https://www.nhc.noaa.gov/archive/2020/ep14/ep142020.discus.005.shtml?

my_epac_2020_38 = [18.4,114.5,50;20.4,113.1,35;23.0,114.5,30];
nhc_epac_2020_38 = [18.2,115.0,40;19.9,114.2,40;22.2,115.3,30];
btk_epac_2020_38 = [18.1,115.5,50;20.0,114.8,40;22.7,113.5,30]; # TCR
myvect = [myvect;my_epac_2020_38];
nhcvect = [nhcvect;nhc_epac_2020_38];
btkvect = [btkvect;btk_epac_2020_38];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 39 ... ISELLE before 2020-08-28-15Z
# my at https://twitter.com/elioeFIN/status/1299351330650304522
# NHC at https://www.nhc.noaa.gov/archive/2020/ep14/ep142020.discus.009.shtml?

my_epac_2020_39 = [20.6,115.1,50;23.7,115.8,30];
nhc_epac_2020_39 = [20.6,114.6,45;23.5,115.7,30];
btk_epac_2020_39 = [20.0,114.8,40;22.7,113.5,30]; # TCR
myvect = [myvect;my_epac_2020_39];
nhcvect = [nhcvect;nhc_epac_2020_39];
btkvect = [btkvect;btk_epac_2020_39];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Atl 55 ... FIFTEEN before 2020-09-01-03Z
# my at https://twitter.com/elioeFIN/status/1300620203022221317
# NHC at https://www.nhc.noaa.gov/archive/2020/al15/al152020.discus.002.shtml?

my_atl_2020_55 = [35.2,71.4,40;37.5,65.8,35;38.0,59.9,30;38.5,54.6,30;41.4,49.6,30];
nhc_atl_2020_55 = [35.1,71.2,35;36.9,65.9,35;38.1,60.5,30;38.7,55.8,30;41.6,50.4,30];
btk_atl_2020_55 = [35.8,70.7,35;36.2,64.8,30;35.3,59.5,30;35.5,57.3,30;38.8,56.8,30]; # TCR
myvect = [myvect;my_atl_2020_55];
nhcvect = [nhcvect;nhc_atl_2020_55];
btkvect = [btkvect;btk_atl_2020_55];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 56 ... FIFTEEN before 2020-09-01-15Z
# my at https://twitter.com/elioeFIN/status/1300801185935482882
# NHC at https://www.nhc.noaa.gov/archive/2020/al15/al152020.discus.004.shtml?

my_atl_2020_56 = [36.5,68.0,30;37.6,61.9,25;37.4,57.0,25;37.6,52.4,25];
nhc_atl_2020_56 = [36.5,68.3,35;37.3,62.1,25;37.0,57.5,25;39.5,52.5,25];
btk_atl_2020_56 = [36.2,68.0,35;36.1,61.7,30;35.3,58.0,30;36.8,57.3,30]; # TCR
myvect = [myvect;my_atl_2020_56];
nhcvect = [nhcvect;nhc_atl_2020_56];
btkvect = [btkvect;btk_atl_2020_56];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 57 ... NANA before 2020-09-01-21Z
# my at https://twitter.com/elioeFIN/status/1300891598901915649
# NHC at https://www.nhc.noaa.gov/archive/2020/al16/al162020.discus.003.shtml?

my_atl_2020_57 = [17.1,83.9,50;17.2,88.6,45];
nhc_atl_2020_57 = [17.3,84.7,55;16.9,89.4,45];
btk_atl_2020_57 = [17.1,85.3,50;16.1,90.5,30]; # TCR
myvect = [myvect;my_atl_2020_57];
nhcvect = [nhcvect;nhc_atl_2020_57];
btkvect = [btkvect;btk_atl_2020_57];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Atl 58 ... NANA before 2020-09-02-03Z
# my at https://twitter.com/elioeFIN/status/1300982009255415810
# NHC at https://www.nhc.noaa.gov/archive/2020/al16/al162020.discus.004.shtml?

my_atl_2020_58 = [17.5,86.5,55;17.0,90.8,30];
nhc_atl_2020_58 = [17.0,86.3,65;16.5,90.7,35];
btk_atl_2020_58 = [17.0,86.8,60;15.8,91.4,20]; # TCR
myvect = [myvect;my_atl_2020_58];
nhcvect = [nhcvect;nhc_atl_2020_58];
btkvect = [btkvect;btk_atl_2020_58];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Atl 59 ... OMAR before 2020-09-02-03Z
# my at https://twitter.com/elioeFIN/status/1300982112984719360
# NHC at https://www.nhc.noaa.gov/archive/2020/al15/al152020.discus.006.shtml?

my_atl_2020_59 = [37.0,65.3,30;37.0,59.9,25;37.1,56.0,25;40.1,52.4,25];
nhc_atl_2020_59 = [37.0,65.4,35;37.0,60.1,25;37.4,56.6,25;40.0,52.5,25];
btk_atl_2020_59 = [36.2,64.8,30;35.3,59.5,25;35.5,57.3,30;38.8,56.8,30]; # TCR
myvect = [myvect;my_atl_2020_59];
nhcvect = [nhcvect;nhc_atl_2020_59];
btkvect = [btkvect;btk_atl_2020_59];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 60 ... NANA before 2020-09-02-15Z
# my at https://twitter.com/elioeFIN/status/1301163235043946503
# NHC at https://www.nhc.noaa.gov/archive/2020/al16/al162020.discus.006.shtml?

my_atl_2020_60 = [16.5,88.8,50];
nhc_atl_2020_60 = [16.8,88.9,60];
btk_atl_2020_60 = [16.4,89.6,45]; # TCR
myvect = [myvect;my_atl_2020_60];
nhcvect = [nhcvect;nhc_atl_2020_60];
btkvect = [btkvect;btk_atl_2020_60];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;1];

# Atl 61 ... OMAR before 2020-09-02-15Z
# my at https://twitter.com/elioeFIN/status/1301163325951180801
# NHC at https://www.nhc.noaa.gov/archive/2020/al15/al152020.discus.008.shtml?

my_atl_2020_61 = [36.8,62.7,30;36.4,58.7,25;37.8,55.1,25];
nhc_atl_2020_61 = [36.5,62.4,30;36.2,58.1,25;37.0,55.8,20];
btk_atl_2020_61 = [36.1,61.7,30;35.3,58.0,30;36.8,57.3,30]; # TCR
myvect = [myvect;my_atl_2020_61];
nhcvect = [nhcvect;nhc_atl_2020_61];
btkvect = [btkvect;btk_atl_2020_61];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Epac 40 ... JULIO before 2020-09-06-15Z
# my at https://twitter.com/elioeFIN/status/1302597156382167042
# NHC at https://www.nhc.noaa.gov/archive/2020/ep15/ep152020.discus.004.shtml?

# (nothing to be verified... not even after tcr release)

# Atl 62 ... PAULETTE before 2020-09-07-21Z
# my at https://twitter.com/elioeFIN/status/1303049872766128129
# NHC at https://www.nhc.noaa.gov/archive/2020/al17/al172020.discus.004.shtml?

my_atl_2020_62 = [18.5,43.6,45;20.2,46.7,50;21.5,50.9,55;23.0,53.9,50;24.5,57.7,45];
nhc_atl_2020_62 = [18.8,43.6,45;20.3,46.8,50;21.1,50.7,50;21.8,53.8,50;24.0,56.5,50];
btk_atl_2020_62 = [18.6,43.7,50;20.0,46.8,50;21.8,49.6,45;24.3,53.1,55;28.0,57.8,60]; # TCR
myvect = [myvect;my_atl_2020_62];
nhcvect = [nhcvect;nhc_atl_2020_62];
btkvect = [btkvect;btk_atl_2020_62];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 63 ... RENE before 2020-09-08-03Z
# my at https://twitter.com/elioeFIN/status/1303148127952797696
# NHC at https://www.nhc.noaa.gov/archive/2020/al18/al182020.discus.004.shtml?

my_atl_2020_63 = [16.9,28.4,50;18.3,33.2,65;20.0,39.3,70;22.7,42.5,60;27.8,43.6,45];
nhc_atl_2020_63 = [16.8,28.2,45;18.2,33.6,60;20.2,38.3,70;23.1,41.9,65;27.6,44.1,55];
btk_atl_2020_63 = [16.8,28.6,30;17.9,33.5,35;19.1,37.2,35;21.1,41.8,35;24.7,46.0,25]; # TCR
myvect = [myvect;my_atl_2020_63];
nhcvect = [nhcvect;nhc_atl_2020_63];
btkvect = [btkvect;btk_atl_2020_63];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 64 ... PAULETTE before 2020-09-08-21Z
# my at https://twitter.com/elioeFIN/status/1303413310805737472
# NHC at https://www.nhc.noaa.gov/archive/2020/al17/al172020.discus.008.shtml?

my_atl_2020_64 = [20.0,47.1,60;20.6,50.7,55;21.1,53.6,50;23.2,56.3,40;26.9,59.0,45];
nhc_atl_2020_64 = [19.9,47.2,55;20.5,50.6,50;21.4,53.2,45;23.5,55.5,45;26.5,59.0,50];
btk_atl_2020_64 = [20.0,46.8,50;21.8,49.6,45;24.3,53.1,55;28.0,57.8,60;30.2,62.6,75]; # TCR
myvect = [myvect;my_atl_2020_64];
nhcvect = [nhcvect;nhc_atl_2020_64];
btkvect = [btkvect;btk_atl_2020_64];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 65 ... RENE before 2020-09-09-03Z
# my at https://twitter.com/elioeFIN/status/1303505674547195904
# NHC at https://www.nhc.noaa.gov/archive/2020/al18/al182020.discus.008.shtml?

my_atl_2020_65 = [18.5,33.8,50;20.6,37.6,70;24.2,41.3,55;28.6,43.3,40;31.1,39.8,35];
nhc_atl_2020_65 = [18.4,33.7,40;20.5,38.1,60;24.2,41.4,60;28.5,42.6,50;30.2,40.3,40];
btk_atl_2020_65 = [17.9,33.5,35;19.1,37.2,35;21.1,41.8,35;24.7,46.0,30;27.5,47.8,25]; # TCR
myvect = [myvect;my_atl_2020_65];
nhcvect = [nhcvect;nhc_atl_2020_65];
btkvect = [btkvect;btk_atl_2020_65];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 66 ... PAULETTE before 2020-09-09-21Z
# my at https://twitter.com/elioeFIN/status/1303779691623579651
# NHC at https://www.nhc.noaa.gov/archive/2020/al17/al172020.discus.012.shtml?

my_atl_2020_66 = [21.2,51.1,45;22.2,54.5,40;24.6,56.5,40;28.6,60.5,45;30.8,64.6,55];
nhc_atl_2020_66 = [21.4,50.9,45;22.3,54.1,40;24.8,56.6,45;28.0,60.5,50;30.5,64.5,55];
btk_atl_2020_66 = [21.8,49.6,45;24.3,53.1,55;28.0,57.8,60;30.2,62.6,75;33.9,64.4,90]; # TCR
myvect = [myvect;my_atl_2020_66];
nhcvect = [nhcvect;nhc_atl_2020_66];
btkvect = [btkvect;btk_atl_2020_66];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 67 ... PAULETTE before 2020-09-10-21Z
# my at https://twitter.com/elioeFIN/status/1304143758515200000
# NHC at https://www.nhc.noaa.gov/archive/2020/al17/al172020.discus.016.shtml?

my_atl_2020_67 = [23.4,53.5,40;26.3,57.1,45;28.9,62.1,60;31.1,65.9,60;33.6,64.1,60];
nhc_atl_2020_67 = [23.6,53.4,40;26.6,56.8,45;29.2,61.4,65;31.5,65.5,75;34.5,65.5,75];
btk_atl_2020_67 = [24.3,53.1,55;28.0,57.8,60;30.2,62.6,75;33.9,64.4,90;38.7,56.7,85]; # TCR
myvect = [myvect;my_atl_2020_67];
nhcvect = [nhcvect;nhc_atl_2020_67];
btkvect = [btkvect;btk_atl_2020_67];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 68 ... PAULETTE before 2020-09-11-21Z
# my at https://twitter.com/elioeFIN/status/1304496438932537345
# NHC at https://www.nhc.noaa.gov/archive/2020/al17/al172020.discus.020.shtml?

my_atl_2020_68 = [27.2,57.0,60;29.6,61.5,75;32.4,64.7,80;35.3,61.9,90;38.1,54.9,80];
nhc_atl_2020_68 = [27.5,57.5,65;29.8,62.3,80;32.6,65.3,90;36.0,62.0,95;39.0,56.0,85];
btk_atl_2020_68 = [28.0,57.8,60;30.2,62.6,75;33.9,64.4,90;38.7,56.7,85;44.3,43.1,70]; # TCR
myvect = [myvect;my_atl_2020_68];
nhcvect = [nhcvect;nhc_atl_2020_68];
btkvect = [btkvect;btk_atl_2020_68];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 69 ... NINETEEN before 2020-09-12-03Z
# my at https://twitter.com/elioeFIN/status/1304591318228914176
# NHC at https://www.nhc.noaa.gov/archive/2020/al19/al192020.discus.002.shtml?

my_atl_2020_69 = [26.8,83.1,35;28.5,86.3,50;29.3,88.6,60;30.2,90.4,45;31.5,92.4,25];
nhc_atl_2020_69 = [26.8,82.9,35;28.8,85.9,45;29.7,87.7,60;30.2,89.5,60;31.3,90.9,25];
btk_atl_2020_69 = [26.0,82.5,35;27.9,86.0,50;28.7,87.7,75;29.6,88.0,75;31.6,86.7,35]; # TCR
myvect = [myvect;my_atl_2020_69];
nhcvect = [nhcvect;nhc_atl_2020_69];
btkvect = [btkvect;btk_atl_2020_69];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 70 ... NINETEEN before 2020-09-12-15Z
# my at https://twitter.com/elioeFIN/status/1304771790401568769
# NHC at https://www.nhc.noaa.gov/archive/2020/al19/al192020.discus.004.shtml?

my_atl_2020_70 = [27.1,84.7,40;28.6,87.3,60;29.1,89.3,75;31.0,90.4,40;32.1,90.8,25];
nhc_atl_2020_70 = [27.1,84.8,40;28.7,87.6,60;29.8,89.1,70;30.6,89.9,55;32.0,89.5,30];
btk_atl_2020_70 = [27.2,84.5,50;28.4,86.9,65;29.0,88.1,75;30.5,87.6,85;32.6,85.2,30]; # TCR
myvect = [myvect;my_atl_2020_70];
nhcvect = [nhcvect;nhc_atl_2020_70];
btkvect = [btkvect;btk_atl_2020_70];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 71 ... PAULETTE before 2020-09-13-21Z
# my at https://twitter.com/elioeFIN/status/1305229103830892547
# NHC at https://www.nhc.noaa.gov/archive/2020/al17/al172020.discus.028.shtml?

my_atl_2020_71 = [34.0,64.8,100;37.9,58.1,90;41.3,46.7,70;43.1,40.3,55;43.5,35.5,45];
nhc_atl_2020_71 = [33.9,64.8,95;38.1,57.8,100;42.4,47.4,80;45.5,38.7,60;44.4,34.1,45];
btk_atl_2020_71 = [33.9,64.4,90;38.7,56.7,85;44.3,43.1,70;46.6,33.0,50;41.0,31.2,40]; # TCR
myvect = [myvect;my_atl_2020_71];
nhcvect = [nhcvect;nhc_atl_2020_71];
btkvect = [btkvect;btk_atl_2020_71];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 41 ... KARINA before 2020-09-14-03Z
# my at https://twitter.com/elioeFIN/status/1305314782594113543
# NHC at https://www.nhc.noaa.gov/archive/2020/ep16/ep162020.discus.005.shtml?

my_epac_2020_41 = [19.6,120.3,45;21.1,122.4,40;22.6,124.4,25;23.3,126.8,25];
nhc_epac_2020_41 = [19.4,119.7,45;21.0,122.1,40;22.3,124.5,30;22.5,126.5,25];
btk_epac_2020_41 = [18.7,119.3,50;21.3,122.6,50;23.1,124.7,30;23.6,126.5,25]; # TCR
myvect = [myvect;my_epac_2020_41];
nhcvect = [nhcvect;nhc_epac_2020_41];
btkvect = [btkvect;btk_epac_2020_41];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Atl 72 ... PAULETTE before 2020-09-14-21Z
# my at https://twitter.com/elioeFIN/status/1305595799317946368
# NHC at https://www.nhc.noaa.gov/archive/2020/al17/al172020.discus.032.shtml?

my_atl_2020_72 = [38.7,57.4,105;43.6,44.6,80;45.7,36.2,60;42.9,33.9,40;37.6,32.7,40];
nhc_atl_2020_72 = [38.4,57.2,110;43.3,44.9,90;46.6,35.8,50;44.3,32.6,40;39.1,31.3,35];
btk_atl_2020_72 = [38.7,56.7,85;44.3,43.1,70;46.6,33.0,50;41.0,31.2,40;35.9,29.8,35]; # TCR
myvect = [myvect;my_atl_2020_72];
nhcvect = [nhcvect;nhc_atl_2020_72];
btkvect = [btkvect;btk_atl_2020_72];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 73 ... TEDDY before 2020-09-15-03Z
# my at https://twitter.com/elioeFIN/status/1305683354008915969
# NHC at https://www.nhc.noaa.gov/archive/2020/al20/al202020.discus.010.shtml?

my_atl_2020_73 = [14.9,48.5,70;17.4,52.0,90;19.5,55.1,100;22.4,58.2,100;25.3,59.9,100];
nhc_atl_2020_73 = [14.8,48.3,70;17.3,51.3,90;19.9,54.2,105;22.6,56.9,105;25.5,60.0,105];
btk_atl_2020_73 = [14.7,48.0,65;17.4,51.1,85;20.4,54.4,120;23.5,57.2,105;26.9,60.8,95]; # TCR
myvect = [myvect;my_atl_2020_73];
nhcvect = [nhcvect;nhc_atl_2020_73];
btkvect = [btkvect;btk_atl_2020_73];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 74 ... TEDDY before 2020-09-15-21Z
# my at https://twitter.com/elioeFIN/status/1305958579929853952
# NHC at https://www.nhc.noaa.gov/archive/2020/al20/al202020.discus.013.shtml?

my_atl_2020_74 = [16.6,50.2,85;19.5,53.4,100;22.0,56.9,95;24.5,58.6,110;28.1,61.5,115];
nhc_atl_2020_74 = [16.8,50.2,75;19.7,53.1,95;22.5,55.8,100;25.4,58.8,105;28.5,61.5,95];
btk_atl_2020_74 = [16.8,50.2,85;19.7,53.7,115;22.5,56.5,105;26.2,59.7,100;28.5,63.3,80]; # TCR
myvect = [myvect;my_atl_2020_74];
nhcvect = [nhcvect;nhc_atl_2020_74];
btkvect = [btkvect;btk_atl_2020_74];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 75 ... TEDDY before 2020-09-17-03Z
# my at https://twitter.com/elioeFIN/status/1306407173040242688
# NHC at https://www.nhc.noaa.gov/archive/2020/al20/al202020.discus.019.shtml?

my_atl_2020_75 = [20.5,54.0,100;23.4,57.2,105;26.3,61.9,105;29.4,64.9,115;34.1,64.9,85];
nhc_atl_2020_75 = [20.3,54.1,95;23.5,57.1,100;27.0,61.1,95;30.0,64.0,90;35.0,64.0,90];
btk_atl_2020_75 = [20.4,54.4,120;23.5,57.2,105;26.9,60.8,95;29.0,63.7,80;34.6,61.4,85]; # TCR
myvect = [myvect;my_atl_2020_75];
nhcvect = [nhcvect;nhc_atl_2020_75];
btkvect = [btkvect;btk_atl_2020_75];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 76 ... TEDDY before 2020-09-17-21Z
# my at https://twitter.com/elioeFIN/status/1306678168766611459
# NHC at https://www.nhc.noaa.gov/archive/2020/al20/al202020.discus.022.shtml?

my_atl_2020_76 = [22.6,56.5,115;26.3,60.1,115;28.8,64.8,100;33.0,64.6,95;41.5,62.9,70];
nhc_atl_2020_76 = [22.8,56.6,125;26.3,59.9,120;29.5,63.3,105;33.9,63.0,95;41.3,62.0,80];
btk_atl_2020_76 = [22.5,56.5,105;26.2,59.7,100;28.5,63.3,80;32.2,61.8,80;40.3,64.2,80]; # TCR
myvect = [myvect;my_atl_2020_76];
nhcvect = [nhcvect;nhc_atl_2020_76];
btkvect = [btkvect;btk_atl_2020_76];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 77 ... BETA before 2020-09-19-21Z
# my at https://twitter.com/elioeFIN/status/1307400651845103617
# NHC at https://www.nhc.noaa.gov/archive/2020/al22/al222020.discus.009.shtml?

my_atl_2020_77 = [27.0,93.7,60;27.7,95.5,70;27.9,95.4,50;29.5,94.5,35;30.5,92.8,25];
nhc_atl_2020_77 = [27.1,94.0,55;27.9,96.0,60;28.8,96.4,50;29.5,95.0,35;31.0,93.0,25];
btk_atl_2020_77 = [27.5,93.6,55;28.1,96.0,40;28.9,96.5,25;30.3,93.8,25;33.0,89.1,20]; # TCR
myvect = [myvect;my_atl_2020_77];
nhcvect = [nhcvect;nhc_atl_2020_77];
btkvect = [btkvect;btk_atl_2020_77];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 78 ... BETA before 2020-09-20-21Z
# my at https://twitter.com/elioeFIN/status/1307760960258666496
# NHC at https://www.nhc.noaa.gov/archive/2020/al22/al222020.discus.013.shtml?

my_atl_2020_78 = [28.6,95.7,55;29.5,96.0,40;30.1,94.4,30;32.9,92.7,20];
nhc_atl_2020_78 = [28.6,96.1,50;29.4,96.4,40;30.0,94.7,30;32.0,91.8,20];
btk_atl_2020_78 = [28.1,96.0,40;28.9,96.5,25;30.3,93.8,25;33.0,89.1,20]; # TCR
myvect = [myvect;my_atl_2020_78];
nhcvect = [nhcvect;nhc_atl_2020_78];
btkvect = [btkvect;btk_atl_2020_78];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Epac 42 ... LOWELL before 2020-09-22-03Z
# my at https://twitter.com/elioeFIN/status/1308208597537611776
# NHC at https://www.nhc.noaa.gov/archive/2020/ep17/ep172020.discus.006.shtml?

my_epac_2020_42 = [19.2,118.4,50;20.2,121.9,60;20.3,124.5,60;20.0,127.9,55;20.6,131.2,50];
nhc_epac_2020_42 = [19.0,118.3,50;19.9,121.8,60;20.0,125.0,60;20.0,128.4,55;20.1,131.8,45];
btk_epac_2020_42 = [19.1,118.2,40;20.9,122.5,40;21.7,126.3,40;21.5,131.2,30;21.3,136.5,30]; # TCR
myvect = [myvect;my_epac_2020_42];
nhcvect = [nhcvect;nhc_epac_2020_42];
btkvect = [btkvect;btk_epac_2020_42];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 43 ... LOWELL before 2020-09-22-21Z
# my at https://twitter.com/elioeFIN/status/1308512266153795585
# NHC at https://www.nhc.noaa.gov/archive/2020/ep17/ep172020.discus.009.shtml?

my_epac_2020_43 = [19.9,121.4,50;20.5,124.6,55;20.9,127.8,45;21.0,132.6,40;20.6,137.5,35];
nhc_epac_2020_43 = [20.0,121.2,40;20.6,124.6,50;20.7,128.2,50;20.7,132.3,40;20.7,136.2,35];
btk_epac_2020_43 = [20.5,121.5,45;21.7,125.3,40;21.5,129.8,30;21.5,135.2,30;21.0,140.8,25]; # TCR
myvect = [myvect;my_epac_2020_43];
nhcvect = [nhcvect;nhc_epac_2020_43];
btkvect = [btkvect;btk_epac_2020_43];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 44 ... MARIE before 2020-09-29-21Z
# my at https://twitter.com/elioeFIN/status/1311022513820966917
# NHC at https://www.nhc.noaa.gov/archive/2020/ep18/ep182020.discus.003.shtml?

my_epac_2020_44 = [14.4,114.5,60;14.8,120.3,80;16.9,124.0,90;19.2,129.1,85;21.6,132.1,60];
nhc_epac_2020_44 = [14.6,114.5,60;15.3,120.3,90;17.2,124.9,100;19.6,128.5,85;21.4,131.6,60];
btk_epac_2020_44 = [14.2,114.4,55;15.0,120.3,95;16.7,124.6,115;18.6,127.2,105;20.1,129.2,70]; # TCR
myvect = [myvect;my_epac_2020_44];
nhcvect = [nhcvect;nhc_epac_2020_44];
btkvect = [btkvect;btk_epac_2020_44];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 45 ... MARIE before 2020-09-30-21Z
# my at https://twitter.com/elioeFIN/status/1311394120221569037
# NHC at https://www.nhc.noaa.gov/archive/2020/ep18/ep182020.discus.007.shtml?

my_epac_2020_45 = [14.6,119.9,95;16.3,124.7,115;18.5,128.2,95;20.6,131.3,70;22.0,134.2,45];
nhc_epac_2020_45 = [14.8,120.0,100;16.6,124.7,120;18.6,128.4,100;20.3,131.4,70;21.8,134.0,50];
btk_epac_2020_45 = [15.0,120.3,95;16.7,124.6,115;18.6,127.2,105;20.1,129.2,70;21.0,132.3,45]; # TCR
myvect = [myvect;my_epac_2020_45];
nhcvect = [nhcvect;nhc_epac_2020_45];
btkvect = [btkvect;btk_epac_2020_45];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Atl 79 ... TWENTY-FIVE before 2020-10-02-21Z
# my at https://twitter.com/elioeFIN/status/1312103020407058434
# NHC at https://www.nhc.noaa.gov/archive/2020/al25/al252020.discus.002.shtml?

my_atl_2020_79 = [20.1,87.1,40;21.6,87.8,40;22.4,88.6,40];
nhc_atl_2020_79 = [20.5,87.0,40;22.3,87.7,40;22.5,88.8,50];
btk_atl_2020_79 = [20.4,87.5,60;22.7,87.7,55;22.3,87.9,30]; # TCR
myvect = [myvect;my_atl_2020_79];
nhcvect = [nhcvect;nhc_atl_2020_79];
btkvect = [btkvect;btk_atl_2020_79];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Atl 80 ... GAMMA before 2020-10-03-21Z
# my at https://twitter.com/elioeFIN/status/1312470108736942080
# NHC at https://www.nhc.noaa.gov/archive/2020/al25/al252020.discus.006.shtml?

my_atl_2020_80 = [21.9,88.3,40;21.7,89.4,50];
nhc_atl_2020_80 = [22.0,88.2,40;22.0,89.1,45];
btk_atl_2020_80 = [22.7,87.7,55;22.3,87.9,30]; # TCR
myvect = [myvect;my_atl_2020_80];
nhcvect = [nhcvect;nhc_atl_2020_80];
btkvect = [btkvect;btk_atl_2020_80];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Atl 81 ... GAMMA before 2020-10-04-21Z
# my at https://twitter.com/elioeFIN/status/1312829790341259267
# NHC at https://www.nhc.noaa.gov/archive/2020/al25/al252020.discus.010.shtml?

my_atl_2020_81 = [22.3,88.6,45];
nhc_atl_2020_81 = [22.1,88.6,40];
btk_atl_2020_81 = [22.3,87.9,30]; # TCR
myvect = [myvect;my_atl_2020_81];
nhcvect = [nhcvect;nhc_atl_2020_81];
btkvect = [btkvect;btk_atl_2020_81];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;1];

# Atl 82 ... TWENTY-SIX before 2020-10-05-03Z
# my at https://twitter.com/elioeFIN/status/1312918305099919362
# NHC at https://www.nhc.noaa.gov/archive/2020/al26/al262020.discus.002.shtml?

my_atl_2020_82 = [18.2,79.6,40;22.1,84.1,65;24.8,88.7,75;27.4,89.3,80;29.6,89.1,50];
nhc_atl_2020_82 = [18.3,79.8,40;22.2,84.4,65;25.4,88.8,85;27.2,90.4,90;30.0,89.9,75];
btk_atl_2020_82 = [16.6,79.8,65;19.3,84.6,100;22.3,90.2,80;25.3,93.5,105;30.1,92.9,75]; # TCR
myvect = [myvect;my_atl_2020_82];
nhcvect = [nhcvect;nhc_atl_2020_82];
btkvect = [btkvect;btk_atl_2020_82];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 83 ... DELTA before 2020-10-05-15Z
# my at https://twitter.com/elioeFIN/status/1313117763070820352
# NHC at https://www.nhc.noaa.gov/archive/2020/al26/al262020.discus.004.shtml?

my_atl_2020_83 = [18.7,81.7,55;23.0,86.7,70;25.8,90.4,90;28.8,90.7,70;33.5,87.5,45];
nhc_atl_2020_83 = [18.7,81.7,60;22.8,86.8,85;26.0,90.7,90;28.8,91.1,85;33.1,88.2,40];
btk_atl_2020_83 = [17.8,82.0,100;21.1,87.4,85;23.7,92.4,90;27.5,93.8,100;32.5,91.4,35]; # TCR
myvect = [myvect;my_atl_2020_83];
nhcvect = [nhcvect;nhc_atl_2020_83];
btkvect = [btkvect;btk_atl_2020_83];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 84 ... DELTA before 2020-10-05-21Z
# my at https://twitter.com/elioeFIN/status/1313207628768649218
# NHC at https://www.nhc.noaa.gov/archive/2020/al26/al262020.discus.005.shtml?

my_atl_2020_84 = [19.2,83.1,80;23.1,88.4,90;25.9,91.1,105;29.0,90.3,80;34.6,86.4,40];
nhc_atl_2020_84 = [19.0,83.5,95;22.6,88.7,105;24.8,91.5,95;28.5,91.5,85;33.0,89.0,40];
btk_atl_2020_84 = [18.5,83.3,120;21.7,88.8,75;24.5,93.1,100;28.7,93.6,90;33.3,90.6,25]; # TCR
myvect = [myvect;my_atl_2020_84];
nhcvect = [nhcvect;nhc_atl_2020_84];
btkvect = [btkvect;btk_atl_2020_84];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 85 ... DELTA before 2020-10-06-03Z
# my at https://twitter.com/elioeFIN/status/1313299749529964545
# NHC at https://www.nhc.noaa.gov/archive/2020/al26/al262020.discus.006.shtml?

my_atl_2020_85 = [19.8,84.8,105;22.5,89.8,110;25.1,91.8,115;28.1,92.4,85;34.8,88.6,40];
nhc_atl_2020_85 = [19.8,84.6,100;23.0,89.5,105;25.2,91.7,100;28.6,91.2,85;33.6,88.4,35];
btk_atl_2020_85 = [19.3,84.6,100;22.3,90.2,80;25.3,93.5,105;30.1,92.9,75;33.9,89.6,25]; # TCR
myvect = [myvect;my_atl_2020_85];
nhcvect = [nhcvect;nhc_atl_2020_85];
btkvect = [btkvect;btk_atl_2020_85];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 86 ... DELTA before 2020-10-06-21Z
# my at https://twitter.com/elioeFIN/status/1313557403493961728
# NHC at https://www.nhc.noaa.gov/archive/2020/al26/al262020.discus.009.shtml?

my_atl_2020_86 = [21.7,88.7,125;24.1,92.1,115;27.3,92.5,100;31.8,90.6,55;36.0,85.5,35];
nhc_atl_2020_86 = [21.8,88.8,105;24.4,92.6,115;28.0,92.9,110;32.4,90.9,55;35.5,87.3,20];
btk_atl_2020_86 = [21.7,88.8,75;24.5,93.1,100;28.7,93.6,90;33.3,90.6,25;35.1,86.3,20]; # TCR
myvect = [myvect;my_atl_2020_86];
nhcvect = [nhcvect;nhc_atl_2020_86];
btkvect = [btkvect;btk_atl_2020_86];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 87 ... DELTA before 2020-10-07-03Z
# my at https://twitter.com/elioeFIN/status/1313644601853513729
# NHC at https://www.nhc.noaa.gov/archive/2020/al26/al262020.discus.010.shtml?

my_atl_2020_87 = [22.3,89.9,90;25.2,93.0,110;29.3,92.1,75;33.8,88.6,40;35.9,84.8,25];
nhc_atl_2020_87 = [22.3,89.8,105;25.0,92.7,115;29.0,92.2,110;33.0,89.8,50;36.0,86.0,20];
btk_atl_2020_87 = [22.3,90.2,80;25.3,93.5,105;30.1,92.9,75;33.9,89.6,25;34.5,84.9,15]; # TCR
myvect = [myvect;my_atl_2020_87];
nhcvect = [nhcvect;nhc_atl_2020_87];
btkvect = [btkvect;btk_atl_2020_87];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 88 ... DELTA before 2020-10-07-21Z
# my at https://twitter.com/elioeFIN/status/1313914431244570631
# NHC at https://www.nhc.noaa.gov/archive/2020/al26/al262020.discus.013.shtml?

my_atl_2020_88 = [24.8,93.1,105;29.2,92.8,90;33.4,89.9,35;36.1,86.2,25];
nhc_atl_2020_88 = [24.8,92.9,95;29.1,92.9,90;33.7,90.5,30;37.0,85.5,20];
btk_atl_2020_88 = [24.5,93.1,100;28.7,93.6,90;33.3,90.6,25;35.1,86.3,20]; # TCR
myvect = [myvect;my_atl_2020_88];
nhcvect = [nhcvect;nhc_atl_2020_88];
btkvect = [btkvect;btk_atl_2020_88];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 89 ... EPSILON before 2020-10-19-21Z
# my at https://twitter.com/elioeFIN/status/1318269937215995905
# NHC at https://www.nhc.noaa.gov/archive/2020/al27/al272020.discus.003.shtml?

my_atl_2020_89 = [27.0,56.0,55;28.5,59.2,60;30.4,61.4,70;32.7,61.3,80;34.6,62.2,90];
nhc_atl_2020_89 = [27.0,56.1,55;28.8,59.4,65;31.1,61.5,75;32.8,62.8,80;35.5,62.3,80];
btk_atl_2020_89 = [27.3,55.3,55;29.3,59.6,100;31.5,61.5,75;34.9,61.7,75;38.6,59.7,70]; # TCR
myvect = [myvect;my_atl_2020_89];
nhcvect = [nhcvect;nhc_atl_2020_89];
btkvect = [btkvect;btk_atl_2020_89];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 90 ... EPSILON before 2020-10-20-03Z
# my at https://twitter.com/elioeFIN/status/1318357332565307393
# NHC at https://www.nhc.noaa.gov/archive/2020/al27/al272020.discus.004.shtml?

my_atl_2020_90 = [27.4,56.4,55;29.2,59.6,70;31.3,61.4,75;33.0,61.1,80;36.0,61.0,85];
nhc_atl_2020_90 = [27.5,56.7,50;29.1,59.8,60;31.3,61.5,70;32.9,62.5,75;36.4,60.3,75];
btk_atl_2020_90 = [28.3,56.3,65;29.5,60.4,100;32.2,61.6,75;36.1,62.0,75;40.3,57.6,65]; # TCR
myvect = [myvect;my_atl_2020_90];
nhcvect = [nhcvect;nhc_atl_2020_90];
btkvect = [btkvect;btk_atl_2020_90];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 91 ... EPSILON before 2020-10-20-21Z
# my at https://twitter.com/elioeFIN/status/1318631971602518017
# NHC at https://www.nhc.noaa.gov/archive/2020/al27/al272020.discus.007.shtml?

my_atl_2020_91 = [29.0,58.9,60;31.2,60.5,65;33.4,61.3,80;36.1,59.7,80;42.0,50.9,75];
nhc_atl_2020_91 = [29.3,59.6,70;31.6,61.2,75;34.0,61.8,75;36.7,60.7,75;42.0,51.0,70];
btk_atl_2020_91 = [29.3,59.6,100;31.5,61.5,75;34.9,61.7,75;38.6,59.7,70;45.0,46.9,60]; # TCR
myvect = [myvect;my_atl_2020_91];
nhcvect = [nhcvect;nhc_atl_2020_91];
btkvect = [btkvect;btk_atl_2020_91];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 92 ... EPSILON before 2020-10-21-03Z
# my at https://twitter.com/elioeFIN/status/1318722537103163400
# NHC at https://www.nhc.noaa.gov/archive/2020/al27/al272020.discus.008.shtml?

my_atl_2020_92 = [29.7,60.1,70;32.1,61.6,70;34.4,61.6,75;38.2,59.6,85;44.2,45.8,70];
nhc_atl_2020_92 = [29.9,59.8,75;32.2,61.1,75;34.6,62.0,75;38.4,58.8,70;44.0,45.5,60];
btk_atl_2020_92 = [29.5,60.4,100;32.2,61.6,75;36.1,62.0,75;40.3,57.6,65;47.2,41.2,60]; # TCR
myvect = [myvect;my_atl_2020_92];
nhcvect = [nhcvect;nhc_atl_2020_92];
btkvect = [btkvect;btk_atl_2020_92];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 93 ... EPSILON before 2020-10-21-21Z
# my at https://twitter.com/elioeFIN/status/1318988698793447425
# NHC at https://www.nhc.noaa.gov/archive/2020/al27/al272020.discus.012.shtml?

my_atl_2020_93 = [31.6,61.3,90;34.2,62.0,80;37.6,59.6,80;43.5,48.6,70;51.4,25.8,70];
nhc_atl_2020_93 = [31.8,61.6,95;34.4,62.1,85;38.3,59.8,80;44.5,47.5,70;54.0,28.5,65];
btk_atl_2020_93 = [31.5,61.5,75;34.9,61.7,75;38.6,59.7,70;45.0,46.9,60;54.9,30.4,60]; # TCR (but day 5 self-made)
myvect = [myvect;my_atl_2020_93];
nhcvect = [nhcvect;nhc_atl_2020_93];
btkvect = [btkvect;btk_atl_2020_93];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 94 ... TWENTY-EIGHT before 2020-10-25-03Z
# my at https://twitter.com/elioeFIN/status/1320173447322939393
# NHC at https://www.nhc.noaa.gov/archive/2020/al28/al282020.discus.002.shtml?

my_atl_2020_94 = [19.7,84.1,45;21.1,86.5,55;24.2,89.9,75;31.1,89.7,45];
nhc_atl_2020_94 = [20.0,83.7,40;21.7,86.6,55;25.4,90.3,65;31.5,89.5,40];
btk_atl_2020_94 = [18.2,83.8,55;19.9,86.6,70;23.2,90.8,55;30.2,89.9,85]; # TCRs
myvect = [myvect;my_atl_2020_94];
nhcvect = [nhcvect;nhc_atl_2020_94];
btkvect = [btkvect;btk_atl_2020_94];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 95 ... ZETA before 2020-10-25-21Z
# my at https://twitter.com/elioeFIN/status/1320456073120227329
# NHC at https://www.nhc.noaa.gov/archive/2020/al28/al282020.discus.005.shtml?

my_atl_2020_95 = [19.4,85.4,65;22.6,89.5,70;28.8,89.8,60;35.9,82.8,25];
nhc_atl_2020_95 = [19.7,85.7,65;23.2,89.6,65;29.4,90.3,60;37.0,83.0,25];
btk_atl_2020_95 = [19.4,85.7,70;22.2,90.0,55;28.0,91.1,95;37.8,78.2,45]; # TCR
myvect = [myvect;my_atl_2020_95];
nhcvect = [nhcvect;nhc_atl_2020_95];
btkvect = [btkvect;btk_atl_2020_95];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 96 ... ZETA before 2020-10-26-15Z
# my at https://twitter.com/elioeFIN/status/1320715247053950976
# NHC at https://www.nhc.noaa.gov/archive/2020/al28/al282020.discus.008.shtml?

my_atl_2020_96 = [21.4,88.8,65;25.8,91.5,70;32.7,86.4,45;39.1,72.5,30];
nhc_atl_2020_96 = [21.5,88.8,65;25.7,91.8,70;33.0,87.0,35;40.0,73.0,35];
btk_atl_2020_96 = [21.3,89.0,60;26.0,91.7,80;35.3,83.6,45;42.9,58.4,50]; # TCR but day 4 self-made
myvect = [myvect;my_atl_2020_96];
nhcvect = [nhcvect;nhc_atl_2020_96];
btkvect = [btkvect;btk_atl_2020_96];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 97 ... ZETA before 2020-10-26-21Z
# my at https://twitter.com/elioeFIN/status/1320795309195300865
# NHC at https://www.nhc.noaa.gov/archive/2020/al28/al282020.discus.009.shtml?

my_atl_2020_97 = [22.0,90.1,65;26.9,91.7,65;35.0,83.9,35;41.7,64.7,35];
nhc_atl_2020_97 = [22.1,89.9,65;26.8,91.4,70;35.0,83.5,30;42.0,68.0,35];
btk_atl_2020_97 = [22.2,90.0,55;28.0,91.1,95;37.8,78.2,45;43.2,49.2,50]; # TCR but day 4 self-made
myvect = [myvect;my_atl_2020_97];
nhcvect = [nhcvect;nhc_atl_2020_97];
btkvect = [btkvect;btk_atl_2020_97];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 98 ... TWENTY-NINE before 2020-11-01-03Z
# my at https://twitter.com/elioeFIN/status/1322719682282049536
# NHC at https://www.nhc.noaa.gov/archive/2020/al29/al292020.discus.002.shtml?

my_atl_2020_98 = [15.3,79.1,55;14.6,82.3,75;13.6,83.5,70;13.6,86.4,40;14.7,87.6,25];
nhc_atl_2020_98 = [15.3,78.8,50;14.7,82.1,70;13.7,83.7,70;14.0,85.5,35;14.5,87.0,25];
btk_atl_2020_98 = [14.9,79.4,60;14.3,82.5,130;13.8,83.7,95;14.0,86.0,30;16.2,87.8,30]; # TCR
myvect = [myvect;my_atl_2020_98];
nhcvect = [nhcvect;nhc_atl_2020_98];
btkvect = [btkvect;btk_atl_2020_98];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 99 ... ETA before 2020-11-01-21Z
# my at https://twitter.com/elioeFIN/status/1322980571434360835
# NHC at https://www.nhc.noaa.gov/archive/2020/al29/al292020.discus.005.shtml?

my_atl_2020_99 = [14.7,81.8,70;13.8,83.5,75;14.0,85.2,45;14.6,87.4,30;15.0,88.3,25];
nhc_atl_2020_99 = [14.7,82.1,80;14.0,83.8,75;14.1,85.7,35;14.7,88.0,25;15.5,88.5,25];
btk_atl_2020_99 = [14.7,82.0,115;13.7,83.3,120;13.9,85.4,40;15.3,87.8,30;17.1,87.1,30]; # TCR
myvect = [myvect;my_atl_2020_99];
nhcvect = [nhcvect;nhc_atl_2020_99];
btkvect = [btkvect;btk_atl_2020_99];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 100 ... ETA before 2020-11-02-03Z
# my at https://twitter.com/elioeFIN/status/1323070642548297728
# NHC at https://www.nhc.noaa.gov/archive/2020/al29/al292020.discus.006.shtml?

my_atl_2020_100 = [14.5,82.6,90;14.1,84.0,65;14.1,86.2,30;15.0,88.4,25;16.7,88.9,30];
nhc_atl_2020_100 = [14.5,82.6,90;14.0,84.2,60;14.2,86.5,30;14.9,88.4,25;15.7,88.5,25];
btk_atl_2020_100 = [14.3,82.5,130;13.8,83.7,95;14.0,86.0,30;16.2,87.8,30;17.5,86.4,30]; # TCR
myvect = [myvect;my_atl_2020_100];
nhcvect = [nhcvect;nhc_atl_2020_100];
btkvect = [btkvect;btk_atl_2020_100];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 101 ... ETA before 2020-11-02-21Z
# my at https://twitter.com/elioeFIN/status/1323342345979514885
# NHC at https://www.nhc.noaa.gov/archive/2020/al29/al292020.discus.009.shtml?

my_atl_2020_101 = [14.0,83.5,120;14.2,85.2,40;15.2,87.8,30;16.0,88.1,30;17.3,85.9,30];
nhc_atl_2020_101 = [14.0,83.7,90;14.2,85.5,30;15.5,88.3,25;16.7,88.1,25;18.0,86.0,30];
btk_atl_2020_101 = [13.7,83.3,120;13.9,85.4,40;15.3,87.8,30;17.1,87.1,30;19.8,81.5,55]; # TCR
myvect = [myvect;my_atl_2020_101];
nhcvect = [nhcvect;nhc_atl_2020_101];
btkvect = [btkvect;btk_atl_2020_101];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 102 ... ETA before 2020-11-03-03Z
# my at https://twitter.com/elioeFIN/status/1323431881640128512
# NHC at https://www.nhc.noaa.gov/archive/2020/al29/al292020.discus.010.shtml?

my_atl_2020_102 = [13.8,84.0,80;14.7,85.9,30;16.1,87.8,30;17.3,86.5,35;19.0,84.3,35];
nhc_atl_2020_102 = [13.9,84.0,90;14.3,86.3,30;15.4,88.7,30;16.8,87.9,30;17.9,85.3,40];
btk_atl_2020_102 = [13.8,83.7,95;14.0,86.0,30;16.2,87.8,30;17.5,86.4,30;20.4,80.2,55]; # TCR
myvect = [myvect;my_atl_2020_102];
nhcvect = [nhcvect;nhc_atl_2020_102];
btkvect = [btkvect;btk_atl_2020_102];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 103 ... ETA before 2020-11-03-21Z
# my at https://twitter.com/elioeFIN/status/1323698844316667912
# NHC at https://www.nhc.noaa.gov/archive/2020/al29/al292020.discus.013.shtml?

my_atl_2020_103 = [13.9,85.2,40;15.6,88.4,25;16.7,87.7,30;19.8,84.2,30;24.2,81.8,35];
nhc_atl_2020_103 = [14.1,85.5,40;15.4,88.5,25;17.0,87.7,30;20.0,83.5,40;24.0,80.5,45];
btk_atl_2020_103 = [13.9,85.4,40;15.3,87.8,30;17.1,87.1,30;19.8,81.5,55;23.5,79.2,55]; # TCR
myvect = [myvect;my_atl_2020_103];
nhcvect = [nhcvect;nhc_atl_2020_103];
btkvect = [btkvect;btk_atl_2020_103];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 104 ... ETA before 2020-11-04-21Z
# my at https://twitter.com/elioeFIN/status/1324068368522059776
# NHC at https://www.nhc.noaa.gov/archive/2020/al29/al292020.discus.017.shtml?

my_atl_2020_104 = [15.5,88.0,25;17.5,86.1,35;20.4,82.4,45;25.3,80.3,50;25.4,83.2,45];
nhc_atl_2020_104 = [15.1,87.8,25;17.7,86.7,30;20.5,82.6,45;24.0,80.5,50;25.5,82.5,50];
btk_atl_2020_104 = [15.3,87.8,30;17.1,87.1,30;19.8,81.5,55;23.5,79.2,55;24.2,84.1,45]; # TCR
myvect = [myvect;my_atl_2020_104];
nhcvect = [nhcvect;nhc_atl_2020_104];
btkvect = [btkvect;btk_atl_2020_104];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 105 ... ETA before 2020-11-05-21Z
# my at https://twitter.com/elioeFIN/status/1324429182617722882
# NHC at https://www.nhc.noaa.gov/archive/2020/al29/al292020.discus.021.shtml?

my_atl_2020_105 = [17.6,86.4,35;19.4,83.1,40;22.1,80.9,45;22.8,81.5,55;23.1,84.4,60];
nhc_atl_2020_105 = [18.1,86.3,35;20.1,83.1,45;22.4,80.1,50;23.5,82.0,50;24.5,84.5,45];
btk_atl_2020_105 = [17.1,87.1,30;19.8,81.5,55;23.5,79.2,55;24.2,84.1,45;22.9,85.1,50]; # TCR
myvect = [myvect;my_atl_2020_105];
nhcvect = [nhcvect;nhc_atl_2020_105];
btkvect = [btkvect;btk_atl_2020_105];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 106 ... ETA before 2020-11-06-21Z
# my at https://twitter.com/elioeFIN/status/1324787035001991170
# NHC at https://www.nhc.noaa.gov/archive/2020/al29/al292020.discus.025.shtml?

my_atl_2020_106 = [19.9,82.3,45;22.7,79.6,55;24.9,81.9,60;26.1,84.7,55;27.2,85.3,70];
nhc_atl_2020_106 = [19.4,82.5,40;22.5,80.0,50;24.9,81.8,55;25.0,84.0,50;26.5,85.5,50];
btk_atl_2020_106 = [19.8,81.5,55;23.5,79.2,55;24.2,84.1,45;22.9,85.1,50;26.8,83.7,60]; # TCR
myvect = [myvect;my_atl_2020_106];
nhcvect = [nhcvect;nhc_atl_2020_106];
btkvect = [btkvect;btk_atl_2020_106];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 107 ... ETA before 2020-11-07-21Z
# my at https://twitter.com/elioeFIN/status/1325154956652011522
# NHC at https://www.nhc.noaa.gov/archive/2020/al29/al292020.discus.030.shtml?

my_atl_2020_107 = [23.6,79.2,65;25.0,81.8,60;25.5,84.1,65;25.4,85.3,60;27.7,85.0,60];
nhc_atl_2020_107 = [23.3,79.0,60;25.2,81.2,55;26.1,83.6,50;26.5,84.0,50;27.0,84.0,45];
btk_atl_2020_107 = [23.5,79.2,55;24.2,84.1,45;22.9,85.1,50;26.8,83.7,60;30.9,81.3,35]; # TCR
myvect = [myvect;my_atl_2020_107];
nhcvect = [nhcvect;nhc_atl_2020_107];
btkvect = [btkvect;btk_atl_2020_107];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 108 ... ETA before 2020-11-08-21Z
# my at https://twitter.com/elioeFIN/status/1325513468821331970
# NHC at https://www.nhc.noaa.gov/archive/2020/al29/al292020.discus.034.shtml?

my_atl_2020_108 = [24.6,83.5,65;23.8,85.2,65;25.4,84.9,70;25.7,85.1,60;25.7,85.1,55];
nhc_atl_2020_108 = [24.6,83.4,65;24.0,85.1,65;25.8,84.8,60;27.1,84.0,55;29.0,82.8,50];
btk_atl_2020_108 = [24.2,84.1,45;22.9,85.1,50;26.8,83.7,60;30.9,81.3,35;35.1,72.5,40]; # TCR
myvect = [myvect;my_atl_2020_108];
nhcvect = [nhcvect;nhc_atl_2020_108];
btkvect = [btkvect;btk_atl_2020_108];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 109 ... ETA before 2020-11-09-21Z
# my at https://twitter.com/elioeFIN/status/1325883869804056576
# NHC at https://www.nhc.noaa.gov/archive/2020/al29/al292020.discus.038.shtml?

my_atl_2020_109 = [23.5,85.8,55;25.6,85.6,55;26.5,85.4,55;27.0,85.1,50;29.2,84.2,60];
nhc_atl_2020_109 = [23.4,85.5,55;25.6,85.4,50;27.2,85.4,45;28.0,85.4,40;28.6,85.6,30];
btk_atl_2020_109 = [22.9,85.1,50;26.8,83.7,60;30.9,81.3,35;35.1,72.5,40;45.4,54.9,45]; # TCR but day 5 self-made
myvect = [myvect;my_atl_2020_109];
nhcvect = [nhcvect;nhc_atl_2020_109];
btkvect = [btkvect;btk_atl_2020_109];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 110 ... ETA before 2020-11-10-21Z
# my at https://twitter.com/elioeFIN/status/1326235700103147528
# NHC at https://www.nhc.noaa.gov/archive/2020/al29/al292020.discus.042.shtml?

my_atl_2020_110 = [24.9,84.9,60;26.7,84.1,50;27.9,83.8,40;29.2,83.5,35;29.0,84.1,30];
nhc_atl_2020_110 = [25.6,84.8,60;27.9,84.2,55;29.1,84.0,40;29.7,84.6,35;30.7,84.9,30];
btk_atl_2020_110 = [26.8,83.7,60;30.9,81.3,35;35.1,72.5,40;45.4,54.9,45;48.8,39.0,45]; # TCR but days 4+5 self-made
myvect = [myvect;my_atl_2020_110];
nhcvect = [nhcvect;nhc_atl_2020_110];
btkvect = [btkvect;btk_atl_2020_110];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 111 ... THETA before 2020-11-11-03Z
# my at https://twitter.com/elioeFIN/status/1326332374364397568
# NHC at https://www.nhc.noaa.gov/archive/2020/al30/al302020.discus.005.shtml?

my_atl_2020_111 = [30.2,31.9,55;31.4,27.1,50;32.3,22.9,40;32.9,19.4,35;33.8,19.1,30];
nhc_atl_2020_111 = [30.1,32.5,55;31.0,27.7,55;32.2,23.2,55;32.8,21.4,50;34.5,20.1,40];
btk_atl_2020_111 = [31.1,31.9,60;31.9,26.7,50;32.0,22.1,40;31.7,18.9,35;32.1,17.9,30]; # TCR
myvect = [myvect;my_atl_2020_111];
nhcvect = [nhcvect;nhc_atl_2020_111];
btkvect = [btkvect;btk_atl_2020_111];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 112 ... ETA before 2020-11-11-21Z
# my at https://twitter.com/elioeFIN/status/1326598018049712130
# NHC at https://www.nhc.noaa.gov/archive/2020/al29/al292020.discus.046.shtml?

my_atl_2020_112 = [30.4,81.8,40;32.7,77.3,25];
nhc_atl_2020_112 = [30.4,81.5,35;33.8,75.2,25];
btk_atl_2020_112 = [30.9,81.3,35;35.1,72.5,40]; # TCR
myvect = [myvect;my_atl_2020_112];
nhcvect = [nhcvect;nhc_atl_2020_112];
btkvect = [btkvect;btk_atl_2020_112];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Atl 113 ... THETA before 2020-11-12-21Z
# my at https://twitter.com/elioeFIN/status/1326969948095324160
# NHC at https://www.nhc.noaa.gov/archive/2020/al30/al302020.discus.012.shtml?

my_atl_2020_113 = [31.7,23.3,50;31.2,20.0,45;31.4,18.9,30;33.6,17.1,30];
nhc_atl_2020_113 = [31.8,23.4,55;31.2,20.2,45;31.4,19.1,30;34.0,19.1,30];
btk_atl_2020_113 = [32.0,23.1,45;31.7,19.6,35;31.6,18.0,30;35.1,17.7,25]; # TCR but day 4 self-made
myvect = [myvect;my_atl_2020_113];
nhcvect = [nhcvect;nhc_atl_2020_113];
btkvect = [btkvect;btk_atl_2020_113];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 114 ... THIRTY-ONE before 2020-11-13-21Z
# my at https://twitter.com/elioeFIN/status/1327325345004007424
# NHC at https://www.nhc.noaa.gov/archive/2020/al31/al312020.discus.002.shtml?

my_atl_2020_114 = [13.7,76.3,55;14.2,79.3,85;15.0,82.5,95;14.9,85.4,55];
nhc_atl_2020_114 = [13.7,76.2,55;14.2,79.3,85;15.0,82.8,105;15.2,85.5,50];
btk_atl_2020_114 = [12.5,76.4,45;13.2,78.9,75;13.5,82.3,130;13.7,85.7,55]; # TCR
myvect = [myvect;my_atl_2020_114];
nhcvect = [nhcvect;nhc_atl_2020_114];
btkvect = [btkvect;btk_atl_2020_114];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 115 ... IOTA before 2020-11-14-15Z
# my at https://twitter.com/elioeFIN/status/1327599048006709248
# NHC at https://www.nhc.noaa.gov/archive/2020/al31/al312020.discus.005.shtml?

my_atl_2020_115 = [13.6,78.2,60;14.3,81.6,95;14.5,84.4,85;14.7,87.2,45];
nhc_atl_2020_115 = [13.4,78.2,55;14.2,81.6,85;14.5,84.3,75;14.3,86.7,35];
btk_atl_2020_115 = [13.1,78.0,70;13.5,81.5,135;13.7,84.7,75;13.7,89.0,25]; # TCR
myvect = [myvect;my_atl_2020_115];
nhcvect = [nhcvect;nhc_atl_2020_115];
btkvect = [btkvect;btk_atl_2020_115];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 116 ... IOTA before 2020-11-14-21Z
# my at https://twitter.com/elioeFIN/status/1327685758765948928
# NHC at https://www.nhc.noaa.gov/archive/2020/al31/al312020.discus.006.shtml?

my_atl_2020_116 = [13.3,78.9,70;14.1,82.1,90;14.4,84.7,55];
nhc_atl_2020_116 = [13.0,78.9,75;13.8,82.2,100;14.0,85.0,50];
btk_atl_2020_116 = [13.2,78.9,75;13.5,82.3,130;13.7,85.7,55]; # TCR
myvect = [myvect;my_atl_2020_116];
nhcvect = [nhcvect;nhc_atl_2020_116];
btkvect = [btkvect;btk_atl_2020_116];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Atl 117 ... IOTA before 2020-11-15-03Z
# my at https://twitter.com/elioeFIN/status/1327781330646675456
# NHC at https://www.nhc.noaa.gov/archive/2020/al31/al312020.discus.007.shtml?

my_atl_2020_117 = [13.3,79.7,85;14.2,82.8,105;14.5,85.4,45];
nhc_atl_2020_117 = [13.3,79.5,90;14.0,82.7,110;14.0,85.2,45];
btk_atl_2020_117 = [13.2,79.8,90;13.6,83.0,130;13.8,86.7,40]; # TCR
myvect = [myvect;my_atl_2020_117];
nhcvect = [nhcvect;nhc_atl_2020_117];
btkvect = [btkvect;btk_atl_2020_117];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Atl 118 ... IOTA before 2020-11-15-21Z
# my at https://twitter.com/elioeFIN/status/1328038021795614725
# NHC at https://www.nhc.noaa.gov/archive/2020/al31/al312020.discus.010.shtml?

my_atl_2020_118 = [13.9,82.0,110;14.5,85.1,60];
nhc_atl_2020_118 = [14.0,82.1,120;14.4,84.9,60];
btk_atl_2020_118 = [13.5,82.3,130;13.7,85.7,55]; # TCR
myvect = [myvect;my_atl_2020_118];
nhcvect = [nhcvect;nhc_atl_2020_118];
btkvect = [btkvect;btk_atl_2020_118];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Epac 46 ... TWENTY-ONE-E before 2020-11-18-03Z
# my at https://twitter.com/elioeFIN/status/1328862436213055494
# NHC at https://www.nhc.noaa.gov/archive/2020/ep21/ep212020.discus.002.shtml?

my_epac_2020_46 = [16.1,117.7,30;17.1,121.8,25];
nhc_epac_2020_46 = [16.5,118.0,35;17.3,122.1,25];
btk_epac_2020_46 = [16.8,117.8,40;16.8,121.7,30]; # TCR
myvect = [myvect;my_epac_2020_46];
nhcvect = [nhcvect;nhc_epac_2020_46];
btkvect = [btkvect;btk_epac_2020_46];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Shem 01 ... 03S before 2020-12-09-09Z
# my at https://twitter.com/elioeFIN/status/1336582560412033025

my_shem_2021_01 = [13.7,112.1,45;18.2,116.8,45];
nhc_shem_2021_01 = [14.2,112.7,40;18.7,118.2,40];
btk_shem_2021_01 = [14.8,112.3,35;21.2,119.1,35]; # JTWC best track
myvect = [myvect;my_shem_2021_01];
nhcvect = [nhcvect;nhc_shem_2021_01];
btkvect = [btkvect;btk_shem_2021_01];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 02 ... 03S before 2020-12-09-15Z
# my at https://twitter.com/elioeFIN/status/1336656066390740993

my_shem_2021_02 = [15.3,113.8,45;20.1,119.6,40];
nhc_shem_2021_02 = [15.7,114.2,35;20.6,120.0,35];
btk_shem_2021_02 = [15.9,113.6,35;22.8,121.1,25]; # JTWC best track
myvect = [myvect;my_shem_2021_02];
nhcvect = [nhcvect;nhc_shem_2021_02];
btkvect = [btkvect;btk_shem_2021_02];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 03 ... 03S before 2020-12-10-09Z
# my at https://twitter.com/elioeFIN/status/1336924776825298945

my_shem_2021_03 = [19.5,117.7,45];
nhc_shem_2021_03 = [20.1,117.9,45];
btk_shem_2021_03 = [21.2,119.1,35]; # JTWC best track
myvect = [myvect;my_shem_2021_03];
nhcvect = [nhcvect;nhc_shem_2021_03];
btkvect = [btkvect;btk_shem_2021_03];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;3];

# Shem 04 ... 04P/01F before 2020-12-11-15Z
# my at https://twitter.com/elioeFIN/status/1337380477481725952

my_shem_2021_04 = [14.2,173.8,35];
nhc_shem_2021_04 = [14.3,175.0,40];
btk_shem_2021_04 = [15.9,173.3,30]; # JTWC best track
myvect = [myvect;my_shem_2021_04];
nhcvect = [nhcvect;nhc_shem_2021_04];
btkvect = [btkvect;btk_shem_2021_04];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;3];

# Shem 05 ... 05P/02F before 2020-12-12-21Z
# my at https://twitter.com/elioeFIN/status/1337839070853132288

my_shem_2021_05 = [15.9,171.8,50;16.1,170.8,60;15.9,171.3,60;16.5,172.1,90;19.2,174.6,100];
nhc_shem_2021_05 = [15.8,172.5,50;15.9,171.2,60;15.5,171.6,75;16.2,173.4,95;18.6,175.4,100];
btk_shem_2021_05 = [15.7,172.3,55;15.2,172.2,80;14.7,173.5,135;15.6,176.7,135;17.9,180.6,85]; # JTWC best track
myvect = [myvect;my_shem_2021_05];
nhcvect = [nhcvect;nhc_shem_2021_05];
btkvect = [btkvect;btk_shem_2021_05];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 06 ... YASA before 2020-12-13-21Z
# my at https://twitter.com/elioeFIN/status/1338201917625917447

my_shem_2021_06 = [15.6,171.4,75;14.8,171.4,85;14.9,172.9,95;16.1,176.0,95;19.2,177.6,85];
nhc_shem_2021_06 = [15.5,171.2,75;14.8,171.7,95;15.2,173.6,100;17.1,176.1,100;20.1,178.0,95];
btk_shem_2021_06 = [15.2,172.2,80;14.7,173.5,135;15.6,176.7,135;17.9,180.6,85;20.3,182.0,55]; # JTWC best track
myvect = [myvect;my_shem_2021_06];
nhcvect = [nhcvect;nhc_shem_2021_06];
btkvect = [btkvect;btk_shem_2021_06];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 07 ... YASA before 2020-12-14-21Z
# my at https://twitter.com/elioeFIN/status/1338564536463462400

my_shem_2021_07 = [14.6,172.9,85;15.2,175.0,90;17.1,178.6,95;19.9,180.5,80;23.4,178.6,65];
nhc_shem_2021_07 = [14.9,172.1,85;15.2,174.0,95;17.0,177.2,100;19.8,179.2,90;22.9,179.6,75];
btk_shem_2021_07 = [14.7,173.5,135;15.6,176.7,135;17.9,180.6,85;20.3,182.0,55;22.8,182.2,50]; # JTWC best track
myvect = [myvect;my_shem_2021_07];
nhcvect = [nhcvect;nhc_shem_2021_07];
btkvect = [btkvect;btk_shem_2021_07];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 08 ... YASA before 2020-12-15-21Z
# my at https://twitter.com/elioeFIN/status/1338925792080834560

my_shem_2021_08 = [15.3,175.9,135;17.7,178.7,115;20.3,179.2,90;21.9,179.1,75;23.6,177.5,60];
nhc_shem_2021_08 = [15.3,176.4,130;17.7,179.7,110;20.8,181.1,90;23.0,180.2,70;24.7,177.6,55];
btk_shem_2021_08 = [15.6,176.7,135;17.9,180.6,85;20.3,182.0,60;22.8,182.2,50;24.4,181.2,35]; # JTWC best track
myvect = [myvect;my_shem_2021_08];
nhcvect = [nhcvect;nhc_shem_2021_08];
btkvect = [btkvect;btk_shem_2021_08];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 09 ... YASA before 2020-12-16-21Z
# my at https://twitter.com/elioeFIN/status/1339288257104908289

my_shem_2021_09 = [18.0,180.2,105;20.6,181.7,85;22.8,181.5,65;24.4,178.6,45;25.1,175.7,35];
nhc_shem_2021_09 = [17.9,180.1,115;20.9,181.5,85;23.0,181.1,65;24.9,179.6,50;26.8,178.0,40];
btk_shem_2021_09 = [17.9,180.6,85;20.3,182.0,55;22.8,182.2,50;24.4,181.2,35;26.3,180.5,35]; # JTWC best track
myvect = [myvect;my_shem_2021_09];
nhcvect = [nhcvect;nhc_shem_2021_09];
btkvect = [btkvect;btk_shem_2021_09];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 10 ... CHALANE before 2020-12-25-21Z
# my at https://twitter.com/elioeFIN/status/1342550070315655171

my_shem_2021_10 = [16.7,50.4,40;18.0,45.5,25;18.9,42.7,35;19.1,37.7,45;18.1,32.5,30];
nhc_shem_2021_10 = [16.3,50.4,40;17.5,46.5,25;19.0,42.7,35;18.8,38.5,45;18.7,33.8,35];
btk_shem_2021_10 = [17.5,49.8,35;19.2,45.7,25;19.9,42.0,45;19.4,37.3,65;19.7,29.2,25]; # JTWC best track
myvect = [myvect;my_shem_2021_10];
nhcvect = [nhcvect;nhc_shem_2021_10];
btkvect = [btkvect;btk_shem_2021_10];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 11 ... DANILO before 2021-01-02-21Z
# my at https://twitter.com/elioeFIN/status/1345445796523732995

my_shem_2021_11 = [13.4,74.4,40;15.6,75.9,40;16.1,75.0,40;15.3,76.3,40;15.0,73.2,55];
nhc_shem_2021_11 = [12.9,74.5,45;15.1,75.4,40;16.0,73.6,45;16.0,70.6,55;15.9,66.9,70];
btk_shem_2021_11 = [13.0,75.3,60;15.7,76.3,50;16.6,76.3,55;16.3,73.5,35;16.7,69.0,35]; # JTWC best track
myvect = [myvect;my_shem_2021_11];
nhcvect = [nhcvect;nhc_shem_2021_11];
btkvect = [btkvect;btk_shem_2021_11];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 12 ... DANILO before 2021-01-03-21Z
# my at https://twitter.com/elioeFIN/status/1345804744590295041

my_shem_2021_12 = [15.3,76.8,55;16.8,75.7,50;16.4,72.0,55;16.6,67.7,65;17.6,61.8,90];
nhc_shem_2021_12 = [14.9,76.2,50;16.1,74.7,45;15.8,71.8,50;16.1,67.3,60;16.7,62.7,70];
btk_shem_2021_12 = [15.7,76.3,50;16.6,76.3,55;16.3,73.5,35;16.7,69.0,35;17.2,65.2,25]; # JTWC best track
myvect = [myvect;my_shem_2021_12];
nhcvect = [nhcvect;nhc_shem_2021_12];
btkvect = [btkvect;btk_shem_2021_12];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 13 ... DANILO before 2021-01-05-21Z
# my at https://twitter.com/elioeFIN/status/1346531803495067648
# (no JTWC forecast)

# Shem 14 ... 07/99S before 2021-01-16-21Z
# my at https://twitter.com/elioeFIN/status/1350533794424619009
# (no JTWC forecast)

# Shem 15 ... KIMI before 2021-01-17-21Z
# my at https://twitter.com/elioeFIN/status/1350880696932429830

my_shem_2021_15 = [17.7,145.9,55;18.1,143.4,25];
nhc_shem_2021_15 = [17.5,146.7,60;19.0,146.5,50];
btk_shem_2021_15 = [18.0,147.5,35;17.1,146.3,25]; # JTWC best track (day 1 only)
myvect = [myvect;my_shem_2021_15];
nhcvect = [nhcvect;nhc_shem_2021_15];
btkvect = [btkvect;btk_shem_2021_15];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 16 ... ELOISE before 2021-01-17-21Z
# my at https://twitter.com/elioeFIN/status/1350888234725867522

my_shem_2021_16 = [14.9,54.3,50;15.6,51.4,65;15.9,47.3,25;18.1,43.3,40;21.5,40.3,55];
nhc_shem_2021_16 = [14.3,54.9,45;15.6,51.1,60;16.0,48.0,45;17.7,43.9,30;20.0,40.0,40];
btk_shem_2021_16 = [14.1,53.0,55;15.3,50.4,50;15.7,45.0,40;17.8,40.6,55;19.6,36.0,80]; # JTWC best track
myvect = [myvect;my_shem_2021_16];
nhcvect = [nhcvect;nhc_shem_2021_16];
btkvect = [btkvect;btk_shem_2021_16];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 17 ... ELOISE before 2021-01-18-21Z
# my at https://twitter.com/elioeFIN/status/1351245667537203203

my_shem_2021_17 = [15.3,49.9,65;16.2,45.3,45;18.5,41.6,45;21.3,37.2,75;23.0,33.6,60];
nhc_shem_2021_17 = [15.2,49.8,45;16.1,46.2,30;18.2,42.3,35;20.0,38.7,55;22.0,35.6,60];
btk_shem_2021_17 = [15.3,50.4,50;15.7,45.0,40;17.8,40.6,55;19.6,36.0,80;21.6,32.4,45]; # JTWC best track
myvect = [myvect;my_shem_2021_17];
nhcvect = [nhcvect;nhc_shem_2021_17];
btkvect = [btkvect;btk_shem_2021_17];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 18 ... ELOISE before 2021-01-19-21Z
# my at https://twitter.com/elioeFIN/status/1351609260795424768

my_shem_2021_18 = [16.4,45.8,25;18.7,41.8,45;20.6,38.4,80;22.9,34.6,100;24.4,32.7,25];
nhc_shem_2021_18 = [16.7,46.0,30;18.6,42.2,45;20.6,38.8,70;23.1,35.7,80;24.9,33.5,60];
btk_shem_2021_18 = [15.7,45.0,40;17.8,40.6,55;19.6,36.0,80;21.6,32.4,45;23.66,28.38,33.6]; # JTWC best track (days 1-4), MFR data table (day 5)
myvect = [myvect;my_shem_2021_18];
nhcvect = [nhcvect;nhc_shem_2021_18];
btkvect = [btkvect;btk_shem_2021_18];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 19 ... ELOISE before 2021-01-20-21Z
# my at https://twitter.com/elioeFIN/status/1351972009257873411

my_shem_2021_19 = [17.8,40.6,55;19.8,36.4,90;21.7,33.6,65;23.1,30.0,30];
nhc_shem_2021_19 = [17.4,40.4,60;19.2,36.3,90;21.1,32.8,50;22.7,29.9,30];
btk_shem_2021_19 = [17.8,40.6,55;19.6,36.0,80;21.6,32.4,45;23.66,28.38,33.6]; # JTWC best track (days 1-3), MFR data table (day 4)
myvect = [myvect;my_shem_2021_19];
nhcvect = [nhcvect;nhc_shem_2021_19];
btkvect = [btkvect;btk_shem_2021_19];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 20 ... ELOISE before 2021-01-21-21Z
# my at https://twitter.com/elioeFIN/status/1352329791454797827

my_shem_2021_20 = [19.5,36.2,90;21.1,32.8,55;22.5,30.4,25];
nhc_shem_2021_20 = [19.4,36.3,75;20.9,32.6,60;22.3,29.9,40];
btk_shem_2021_20 = [19.6,36.0,80;21.6,32.4,45;23.66,28.38,33.6]; # JTWC best track (days 1-2), MFR data table (day 3)
myvect = [myvect;my_shem_2021_20];
nhcvect = [nhcvect;nhc_shem_2021_20];
btkvect = [btkvect;btk_shem_2021_20];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 21 ... 94P/11U before 2021-01-26-03Z
# my at https://twitter.com/elioeFIN/status/1353874617975365632
# (no JTWC forecast)

# Shem 22 ... 94P/11U before 2021-01-31-03Z
# my at https://twitter.com/elioeFIN/status/1355685568705933314

my_shem_2021_22 = [14.1,158.1,60;16.7,165.4,75;21.1,168.8,60;26.9,166.6,30];
nhc_shem_2021_22 = [14.3,157.9,65;16.9,164.2,75;20.5,167.4,60;22.7,168.0,45];
btk_shem_2021_22 = [14.1,158.5,50;17.1,165.0,45;22.0,167.2,50;22.6,165.6,20]; # JTWC best track
myvect = [myvect;my_shem_2021_22];
nhcvect = [nhcvect;nhc_shem_2021_22];
btkvect = [btkvect;btk_shem_2021_22];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 23 ... LUCAS before 2021-01-31-21Z
# my at https://twitter.com/elioeFIN/status/1355960357358100481

my_shem_2021_23 = [15.9,163.6,70;19.6,166.9,65;22.1,168.4,45];
nhc_shem_2021_23 = [16.0,163.8,70;19.9,167.3,60;22.5,167.6,45];
btk_shem_2021_23 = [16.6,164.0,60;20.9,167.6,55;22.7,166.4,25]; # JTWC best track
myvect = [myvect;my_shem_2021_23];
nhcvect = [nhcvect;nhc_shem_2021_23];
btkvect = [btkvect;btk_shem_2021_23];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 24 ... FARAJI before 2021-02-05-21Z
# my at https://twitter.com/elioeFIN/status/1357760845745389568

my_shem_2021_24 = [14.2,80.0,60;14.1,80.6,65;13.4,82.0,80;13.3,83.6,85;13.9,85.0,60];
nhc_shem_2021_24 = [14.1,79.9,75;14.4,81.0,100;14.2,82.7,110;14.9,84.6,105;16.1,85.5,90];
btk_shem_2021_24 = [14.7,79.6,80;14.6,80.2,105;14.3,82.6,140;14.6,84.5,105;15.8,85.3,90]; # JTWC best track
myvect = [myvect;my_shem_2021_24];
nhcvect = [nhcvect;nhc_shem_2021_24];
btkvect = [btkvect;btk_shem_2021_24];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 25 ... FARAJI before 2021-02-06-03Z
# my at https://twitter.com/elioeFIN/status/1357852769550544898
# (no JTWC forecast)

# Shem 26 ... FARAJI before 2021-02-06-21Z
# my at https://twitter.com/elioeFIN/status/1358122460705656837

my_shem_2021_26 = [14.7,80.3,105;14.6,81.8,105;15.0,83.9,90;16.6,85.0,70;18.1,84.1,55];
nhc_shem_2021_26 = [15.1,80.1,95;14.9,81.2,110;15.2,83.1,105;16.1,84.2,90;17.3,84.1,70];
btk_shem_2021_26 = [14.6,80.2,105;14.3,82.6,140;14.6,84.5,105;15.8,85.3,90;17.3,83.8,85]; # JTWC best track
myvect = [myvect;my_shem_2021_26];
nhcvect = [nhcvect;nhc_shem_2021_26];
btkvect = [btkvect;btk_shem_2021_26];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 27 ... FARAJI before 2021-02-07-21Z
# my at https://twitter.com/elioeFIN/status/1358486113200005122

my_shem_2021_27 = [14.3,82.4,95;15.1,85.0,85;16.0,86.1,65;17.0,85.8,45;17.6,84.3,30];
nhc_shem_2021_27 = [14.4,82.3,105;15.1,84.7,100;16.2,86.0,90;17.1,85.6,65;17.7,83.7,45];
btk_shem_2021_27 = [14.3,82.6,140;14.6,84.5,105;15.8,85.3,90;17.3,83.8,85;18.8,81.1,45]; # JTWC best track
myvect = [myvect;my_shem_2021_27];
nhcvect = [nhcvect;nhc_shem_2021_27];
btkvect = [btkvect;btk_shem_2021_27];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 28 ... FARAJI before 2021-02-10-21Z
# my at https://twitter.com/elioeFIN/status/1359581015715565568

my_shem_2021_28 = [16.3,84.2,55;16.9,81.9,45;17.3,80.0,50;16.8,77.5,40;15.7,73.4,50];
nhc_shem_2021_28 = [16.7,84.5,85;17.5,82.6,75;17.8,80.6,60;17.4,78.5,50;16.5,75.0,45];
btk_shem_2021_28 = [17.3,83.8,85;18.8,81.1,45;19.7,79.5,35;19.5,74.9,20;18.9,69.9,15]; # JTWC best track
myvect = [myvect;my_shem_2021_28];
nhcvect = [nhcvect;nhc_shem_2021_28];
btkvect = [btkvect;btk_shem_2021_28];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 29 ... FARAJI before 2021-02-12-21Z
# my at https://twitter.com/elioeFIN/status/1360303054348771337

my_shem_2021_29 = [19.4,78.5,45;19.5,74.7,35;18.5,69.9,35];
nhc_shem_2021_29 = [19.5,78.1,40;19.0,74.2,35;18.1,69.7,30];
btk_shem_2021_29 = [19.7,79.5,35;19.5,74.9,20;18.9,69.9,15]; # JTWC best track
myvect = [myvect;my_shem_2021_29];
nhcvect = [nhcvect;nhc_shem_2021_29];
btkvect = [btkvect;btk_shem_2021_29];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 30 ... 11/93S before 2021-02-17-03Z
# my at https://twitter.com/elioeFIN/status/1361843950001266689
# (no JTWC forecast)

# Shem 31 ... GUAMBE before 2021-02-18-03Z
# my at https://twitter.com/elioeFIN/status/1362206774217089025
# (no JTWC forecast)

# Shem 32 ... NIRAN before 2021-03-03-21Z
# my at https://twitter.com/elioeFIN/status/1367190351950315527

my_shem_2021_32 = [16.5,151.5,95;20.2,158.8,90;25.2,168.3,70];
nhc_shem_2021_32 = [16.8,151.9,115;20.8,159.5,95;25.9,169.5,75];
btk_shem_2021_32 = [15.9,152.5,95;19.9,161.5,130;26.2,173.1,65]; # JTWC best track
myvect = [myvect;my_shem_2021_32];
nhcvect = [nhcvect;nhc_shem_2021_32];
btkvect = [btkvect;btk_shem_2021_32];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 33 ... NIRAN before 2021-03-04-21Z
# my at https://twitter.com/elioeFIN/status/1367557355009937415

my_shem_2021_33 = [19.4,160.2,105;24.1,170.4,75];
nhc_shem_2021_33 = [19.4,160.3,110;24.3,169.9,70];
btk_shem_2021_33 = [19.9,161.5,130;26.2,173.1,65]; # JTWC best track
myvect = [myvect;my_shem_2021_33];
nhcvect = [nhcvect;nhc_shem_2021_33];
btkvect = [btkvect;btk_shem_2021_33];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 34 ... HABANA before 2021-03-05-21Z
# my at https://twitter.com/elioeFIN/status/1367912119266639877

my_shem_2021_34 = [16.0,79.0,115;16.7,81.3,110;17.3,81.9,90;18.3,78.9,90;18.1,75.6,85];
nhc_shem_2021_34 = [16.3,79.4,105;17.2,80.9,90;17.8,80.9,85;18.0,78.5,80;18.1,76.0,80];
btk_shem_2021_34 = [16.5,78.7,120;17.5,80.6,90;18.5,80.6,70;17.9,78.2,85;17.4,75.5,125]; # JTWC best track
myvect = [myvect;my_shem_2021_34];
nhcvect = [nhcvect;nhc_shem_2021_34];
btkvect = [btkvect;btk_shem_2021_34];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 35 ... HABANA before 2021-03-06-21Z
# my at https://twitter.com/elioeFIN/status/1368279898297688064

my_shem_2021_35 = [17.2,80.1,110;17.9,79.8,125;17.9,76.8,135;16.6,74.7,130;16.8,73.3,130];
nhc_shem_2021_35 = [17.7,80.6,90;18.8,79.6,85;18.6,77.5,90;18.1,74.2,95;18.7,71.6,90];
btk_shem_2021_35 = [17.5,80.6,90;18.5,80.6,70;17.9,78.2,85;17.4,75.5,125;18.1,73.1,125]; # JTWC best track
myvect = [myvect;my_shem_2021_35];
nhcvect = [nhcvect;nhc_shem_2021_35];
btkvect = [btkvect;btk_shem_2021_35];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 36 ... HABANA before 2021-03-07-21Z
# my at https://twitter.com/elioeFIN/status/1368637608956465152

my_shem_2021_36 = [19.1,80.2,90;18.9,77.0,105;18.6,73.9,110;19.0,72.2,105;20.2,70.8,100];
nhc_shem_2021_36 = [18.6,79.9,75;18.6,77.2,80;18.4,74.5,110;19.1,72.3,110;20.5,70.9,100];
btk_shem_2021_36 = [18.5,80.6,70;17.9,78.2,85;17.4,75.5,125;18.1,73.1,125;19.9,70.9,110]; # JTWC best track
myvect = [myvect;my_shem_2021_36];
nhcvect = [nhcvect;nhc_shem_2021_36];
btkvect = [btkvect;btk_shem_2021_36];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 37 ... HABANA before 2021-03-08-21Z
# my at https://twitter.com/elioeFIN/status/1369001503038529537

my_shem_2021_37 = [18.1,78.1,90;17.5,75.4,115;18.2,73.3,120;19.2,72.0,115;21.3,72.5,85];
nhc_shem_2021_37 = [18.3,78.4,75;18.0,75.8,100;18.4,73.8,115;19.7,72.4,115;21.2,72.8,100];
btk_shem_2021_37 = [17.9,78.2,85;17.4,75.5,125;18.1,73.1,125;19.9,70.9,110;21.4,70.0,75]; # JTWC best track
myvect = [myvect;my_shem_2021_37];
nhcvect = [nhcvect;nhc_shem_2021_37];
btkvect = [btkvect;btk_shem_2021_37];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 38 ... HABANA before 2021-03-09-21Z
# my at https://twitter.com/elioeFIN/status/1369358810331152391

my_shem_2021_38 = [17.4,75.3,90;17.7,73.2,105;18.9,71.9,100;20.6,72.9,90;21.8,73.9,70];
nhc_shem_2021_38 = [17.4,75.4,110;18.1,73.3,125;19.2,71.7,115;20.5,71.7,105;21.8,72.6,90];
btk_shem_2021_38 = [17.4,75.5,125;18.1,73.1,125;19.9,70.9,110;21.4,70.0,75;22.2,71.1,55]; # JTWC best track
myvect = [myvect;my_shem_2021_38];
nhcvect = [nhcvect;nhc_shem_2021_38];
btkvect = [btkvect;btk_shem_2021_38];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 39 ... HABANA before 2021-03-10-21Z
# my at https://twitter.com/elioeFIN/status/1369725984073736198

my_shem_2021_39 = [17.8,73.1,120;19.0,71.5,105;20.1,71.1,85;21.3,71.8,55;21.2,71.3,30];
nhc_shem_2021_39 = [17.9,73.2,125;19.0,71.2,115;19.5,70.9,100;20.0,70.7,80;20.6,70.8,55];
btk_shem_2021_39 = [18.1,73.1,125;19.9,70.9,110;21.4,70.0,75;22.2,71.1,55;22.1,71.5,30]; # JTWC best track
myvect = [myvect;my_shem_2021_39];
nhcvect = [nhcvect;nhc_shem_2021_39];
btkvect = [btkvect;btk_shem_2021_39];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 40 ... HABANA before 2021-03-11-21Z
# my at https://twitter.com/elioeFIN/status/1370079784194207749

my_shem_2021_40 = [19.3,71.2,120;20.6,70.9,100;20.6,71.3,55;20.5,70.3,45;21.6,67.7,25];
nhc_shem_2021_40 = [19.4,71.2,110;20.6,70.9,95;20.7,71.0,65;20.2,69.5,45;20.6,67.0,40];
btk_shem_2021_40 = [19.9,70.9,110;21.4,70.0,75;22.2,71.1,55;22.1,71.5,30;23.0,70.1,25]; # JTWC best track
myvect = [myvect;my_shem_2021_40];
nhcvect = [nhcvect;nhc_shem_2021_40];
btkvect = [btkvect;btk_shem_2021_40];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 41 ... 98S/15 before 2021-03-27-21Z
# my at https://twitter.com/elioeFIN/status/1375886589088391176
# (no JTWC forecast)

# Shem 42 ... 99S/22U before 2021-04-04-03Z
# my at https://twitter.com/elioeFIN/status/1378518539229929472
# (no JTWC forecast)

# Shem 43 ... 26S/22U before 2021-04-04-21Z
# my at https://twitter.com/elioeFIN/status/1378782759766867971

my_shem_2021_43 = [11.5,120.7,60;13.5,117.0,80;16.4,113.4,90;17.9,109.5,110;21.1,108.6,120];
nhc_shem_2021_43 = [11.6,120.8,60;13.6,117.5,75;16.7,113.9,85;19.3,111.7,100;22.6,110.9,85];
btk_shem_2021_43 = [11.3,120.5,50;12.4,119.1,40;15.9,114.2,45;18.4,110.8,40;20.4,108.4,60]; # JTWC best track
myvect = [myvect;my_shem_2021_43];
nhcvect = [nhcvect;nhc_shem_2021_43];
btkvect = [btkvect;btk_shem_2021_43];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 44 ... SEROJA before 2021-04-05-21Z
# my at https://twitter.com/elioeFIN/status/1379142162189799426

my_shem_2021_44 = [13.1,117.9,65;15.7,114.6,80;17.9,111.7,110;20.8,111.7,115;23.0,111.5,110];
nhc_shem_2021_44 = [13.0,118.3,55;15.1,115.1,65;17.2,112.2,85;19.4,110.4,105;21.9,109.5,95];
btk_shem_2021_44 = [12.4,119.1,40;15.9,114.2,45;18.4,110.8,40;20.4,108.4,60;22.8,109.6,60]; # JTWC best track
myvect = [myvect;my_shem_2021_44];
nhcvect = [nhcvect;nhc_shem_2021_44];
btkvect = [btkvect;btk_shem_2021_44];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 45 ... SEROJA before 2021-04-06-03Z
# my at https://twitter.com/elioeFIN/status/1379237809731596291

my_shem_2021_45 = [12.9,117.4,65;14.9,113.9,80;16.9,109.9,90;19.3,109.4,115;22.3,109.5,115];
nhc_shem_2021_45 = [13.1,117.8,55;15.4,114.4,65;17.7,111.9,90;19.9,110.2,105;22.5,109.8,95];
btk_shem_2021_45 = [13.5,117.8,40;16.2,112.5,40;19.4,109.7,45;20.5,108.0,55;24.3,110.5,65]; # JTWC best track
myvect = [myvect;my_shem_2021_45];
nhcvect = [nhcvect;nhc_shem_2021_45];
btkvect = [btkvect;btk_shem_2021_45];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 46 ... SEROJA before 2021-04-06-21Z
# my at https://twitter.com/elioeFIN/status/1379504943082668040

my_shem_2021_46 = [14.3,116.2,55;17.1,113.0,75;20.1,111.0,95;24.6,112.4,105;29.6,115.2,70];
nhc_shem_2021_46 = [14.5,115.7,50;17.3,112.7,70;19.6,110.6,100;22.8,109.9,105;27.9,114.8,75];
btk_shem_2021_46 = [15.9,114.2,45;18.4,110.8,40;20.4,108.4,60;22.8,109.6,60;30.6,117.5,60]; # JTWC best track
myvect = [myvect;my_shem_2021_46];
nhcvect = [nhcvect;nhc_shem_2021_46];
btkvect = [btkvect;btk_shem_2021_46];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 47 ... SEROJA before 2021-04-07-15Z
# my at https://twitter.com/elioeFIN/status/1379782899323568131

my_shem_2021_47 = [17.3,112.1,60;19.7,110.0,90;21.9,109.2,105;26.1,112.6,70];
nhc_shem_2021_47 = [17.2,112.6,55;19.5,110.5,80;22.0,109.9,110;26.4,113.0,85];
btk_shem_2021_47 = [17.5,111.2,40;20.1,109.0,55;21.6,108.6,55;28.3,114.4,75]; # JTWC best track
myvect = [myvect;my_shem_2021_47];
nhcvect = [nhcvect;nhc_shem_2021_47];
btkvect = [btkvect;btk_shem_2021_47];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 48 ... SEROJA before 2021-04-07-21Z
# my at https://twitter.com/elioeFIN/status/1379869656140423168

my_shem_2021_48 = [17.5,110.5,60;20.0,108.9,95;22.8,108.7,110;27.6,113.1,75];
nhc_shem_2021_48 = [18.0,111.6,65;20.2,109.5,100;22.8,109.5,110;27.9,114.1,85];
btk_shem_2021_48 = [18.4,110.8,40;20.4,108.4,60;22.8,109.6,60;30.6,117.5,60]; # JTWC best track
myvect = [myvect;my_shem_2021_48];
nhcvect = [nhcvect;nhc_shem_2021_48];
btkvect = [btkvect;btk_shem_2021_48];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 48 ... SEROJA before 2021-04-08-03Z
# my at https://twitter.com/elioeFIN/status/1379961949182640128

my_shem_2021_49 = [18.0,110.6,75;20.3,108.8,105;23.3,109.3,105;29.2,115.6,80];
nhc_shem_2021_49 = [18.3,111.3,75;20.5,109.7,100;23.5,110.7,110;29.6,117.2,45];
btk_shem_2021_49 = [19.4,109.7,45;20.5,108.0,55;24.3,110.5,65;33.6,121.1,40]; # JTWC best track
myvect = [myvect;my_shem_2021_49];
nhcvect = [nhcvect;nhc_shem_2021_49];
btkvect = [btkvect;btk_shem_2021_49];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Wpac 01 ... 02W before 2021-04-13-21Z
# my at https://twitter.com/elioeFIN/status/1382043741146513410

my_wpac_2021_01 = [8.8,137.1,60;9.3,136.1,70;10.3,133.3,85;12.7,130.4,115;14.4,130.0,125];
nhc_wpac_2021_01 = [9.0,136.7,50;9.4,135.0,60;10.5,132.2,75;12.6,129.1,95;14.6,127.9,115];
btk_wpac_2021_01 = [8.9,136.8,45;8.6,135.2,70;10.0,132.1,110;12.6,128.4,165;13.9,126.5,125]; # JTWC best track
myvect = [myvect;my_wpac_2021_01];
nhcvect = [nhcvect;nhc_wpac_2021_01];
btkvect = [btkvect;btk_wpac_2021_01];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 02 ... SURIGAE before 2021-04-14-21Z
# my at https://twitter.com/elioeFIN/status/1382405764204138498

my_wpac_2021_02 = [9.6,135.4,60;10.4,132.4,80;12.3,129.2,100;14.7,128.9,120;16.7,130.3,110];
nhc_wpac_2021_02 = [9.4,135.1,55;10.5,132.2,70;12.4,129.2,95;14.4,128.1,115;16.2,128.3,110];
btk_wpac_2021_02 = [8.6,135.2,70;10.0,132.1,110;12.6,128.4,165;13.9,126.5,125;15.1,126.2,115]; # JTWC best track
myvect = [myvect;my_wpac_2021_02];
nhcvect = [nhcvect;nhc_wpac_2021_02];
btkvect = [btkvect;btk_wpac_2021_02];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 03 ... SURIGAE before 2021-04-15-15Z
# my at https://twitter.com/elioeFIN/status/1382678262464253952

my_wpac_2021_03 = [9.6,133.2,75;11.2,129.6,100;13.4,127.2,110;15.1,126.2,115;17.0,127.2,110];
nhc_wpac_2021_03 = [9.8,132.9,70;11.6,129.4,95;13.6,127.2,115;15.1,126.8,110;17.1,127.4,100];
btk_wpac_2021_03 = [9.4,133.1,95;12.0,129.2,170;13.6,126.8,125;14.7,126.3,120;16.4,125.9,120]; # JTWC best track
myvect = [myvect;my_wpac_2021_03];
nhcvect = [nhcvect;nhc_wpac_2021_03];
btkvect = [btkvect;btk_wpac_2021_03];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 04 ... SURIGAE before 2021-04-15-21Z
# my at https://twitter.com/elioeFIN/status/1382767248021073922

my_wpac_2021_04 = [9.8,132.3,85;11.7,129.0,105;13.6,127.2,120;15.3,127.5,110;17.6,128.8,100];
nhc_wpac_2021_04 = [9.7,132.1,90;11.4,129.0,105;13.5,127.2,120;15.1,127.3,110;17.0,127.8,100];
btk_wpac_2021_04 = [10.0,132.1,110;12.6,128.4,165;13.9,126.5,125;15.1,126.2,115;16.9,125.5,115]; # JTWC best track
myvect = [myvect;my_wpac_2021_04];
nhcvect = [nhcvect;nhc_wpac_2021_04];
btkvect = [btkvect;btk_wpac_2021_04];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 05 ... SURIGAE before 2021-04-19-09Z
# my at https://twitter.com/elioeFIN/status/1384035903086096388

my_wpac_2021_05 = [15.8,125.5,120;17.7,124.7,105;19.6,125.2,95;21.6,127.0,80;22.3,131.8,50];
nhc_wpac_2021_05 = [16.0,125.6,110;17.7,124.6,100;19.3,124.5,90;21.6,127.5,75;22.6,132.6,55];
btk_wpac_2021_05 = [15.9,126.0,125;18.1,124.9,115;20.3,125.3,100;22.9,129.2,75;22.7,131.9,45]; # JTWC best track
myvect = [myvect;my_wpac_2021_05];
nhcvect = [nhcvect;nhc_wpac_2021_05];
btkvect = [btkvect;btk_wpac_2021_05];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 06 ... SURIGAE before 2021-04-19-21Z
# my at https://twitter.com/elioeFIN/status/1384213547870158854

my_wpac_2021_06 = [16.7,125.2,110;18.5,124.5,100;20.2,125.7,80;21.4,129.7,65;21.7,135.0,40];
nhc_wpac_2021_06 = [16.6,125.5,105;18.7,124.5,100;20.5,125.8,85;22.2,129.8,70;23.0,134.8,55];
btk_wpac_2021_06 = [16.9,125.5,115;19.3,124.8,105;21.6,126.9,90;23.2,130.5,55;21.7,134.1,40]; # JTWC best track
myvect = [myvect;my_wpac_2021_06];
nhcvect = [nhcvect;nhc_wpac_2021_06];
btkvect = [btkvect;btk_wpac_2021_06];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 07 ... SURIGAE before 2021-04-20-15Z
# my at https://twitter.com/elioeFIN/status/1384484876880162816

my_wpac_2021_07 = [18.2,124.6,110;20.4,125.8,90;22.1,129.6,65;22.0,132.8,50];
nhc_wpac_2021_07 = [18.4,124.8,110;20.4,125.9,90;21.9,129.6,75;22.1,134.4,55];
btk_wpac_2021_07 = [18.8,124.8,115;21.1,126.1,95;23.3,129.9,60;22.2,132.8,40]; # JTWC best track
myvect = [myvect;my_wpac_2021_07];
nhcvect = [nhcvect;nhc_wpac_2021_07];
btkvect = [btkvect;btk_wpac_2021_07];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Wpac 08 ... SURIGAE before 2021-04-21-15Z
# my at https://twitter.com/elioeFIN/status/1384848678192623618

my_wpac_2021_08 = [20.8,125.6,90;22.3,130.0,70;22.6,134.9,55];
nhc_wpac_2021_08 = [20.9,125.9,100;22.3,129.9,75;21.9,134.6,60];
btk_wpac_2021_08 = [21.1,126.1,95;23.3,129.9,60;22.2,132.8,40]; # JTWC best track
myvect = [myvect;my_wpac_2021_08];
nhcvect = [nhcvect;nhc_wpac_2021_08];
btkvect = [btkvect;btk_wpac_2021_08];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Epac 01 ... 01E before 2021-05-09-15Z
# my at https://twitter.com/elioeFIN/status/1391387329084989443
# NHC at https://www.nhc.noaa.gov/archive/2021/ep01/ep012021.discus.002.shtml?

my_epac_2021_01 = [15.5,109.3,35;16.2,110.7,35;16.1,113.3,20];
nhc_epac_2021_01 = [15.4,108.9,35;16.2,110.2,25;16.4,112.5,20];
btk_epac_2021_01 = [15.3,109.3,35;15.9,111.1,20;15.7,114.0,20]; # TCR
myvect = [myvect;my_epac_2021_01];
nhcvect = [nhcvect;nhc_epac_2021_01];
btkvect = [btkvect;btk_epac_2021_01];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 02 ... ANDRES before 2021-05-09-21Z
# my at https://twitter.com/elioeFIN/status/1391466442609025036
# NHC at https://www.nhc.noaa.gov/archive/2021/ep01/ep012021.discus.003.shtml?

my_epac_2021_02 = [15.4,109.8,30;16.2,111.2,25];
nhc_epac_2021_02 = [15.2,109.7,30;15.8,111.0,25];
btk_epac_2021_02 = [15.8,109.6,35;15.9,111.7,20]; # TCR
myvect = [myvect;my_epac_2021_02];
nhcvect = [nhcvect;nhc_epac_2021_02];
btkvect = [btkvect;btk_epac_2021_02];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Nio 01 ... 01A before 2021-05-14-21Z
# my at https://twitter.com/elioeFIN/status/1393278786456670216

my_nio_2021_01 = [14.1,71.6,70;16.9,70.3,95;19.6,68.8,110;22.5,68.3,80];
nhc_nio_2021_01 = [14.7,71.9,70;17.3,70.4,95;20.1,68.9,110;23.2,68.9,80];
btk_nio_2021_01 = [14.4,73.0,70;17.8,72.0,115;20.9,71.3,110;24.2,73.2,45]; # JTWC best track
myvect = [myvect;my_nio_2021_01];
nhcvect = [nhcvect;nhc_nio_2021_01];
btkvect = [btkvect;btk_nio_2021_01];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Nio 02 ... TAUKTAE before 2021-05-15-15Z
# my at https://twitter.com/elioeFIN/status/1393549567916969988

my_nio_2021_02 = [16.7,71.8,85;19.4,70.2,105;22.6,70.0,100];
nhc_nio_2021_02 = [16.8,71.6,85;19.7,70.1,105;22.6,70.0,85];
btk_nio_2021_02 = [16.8,72.5,100;20.0,71.4,100;23.2,71.9,55]; # JTWC best track
myvect = [myvect;my_nio_2021_02];
nhcvect = [nhcvect;nhc_nio_2021_02];
btkvect = [btkvect;btk_nio_2021_02];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Nio 03 ... TAUKTAE before 2021-05-15-21Z
# my at https://twitter.com/elioeFIN/status/1393636074958774273

my_nio_2021_03 = [17.2,71.6,100;20.5,70.4,120;23.9,71.7,70];
nhc_nio_2021_03 = [17.3,71.5,95;20.3,70.5,100;23.3,71.2,60];
btk_nio_2021_03 = [17.8,72.0,115;20.9,71.3,110;24.2,73.2,45]; # JTWC best track
myvect = [myvect;my_nio_2021_03];
nhcvect = [nhcvect;nhc_nio_2021_03];
btkvect = [btkvect;btk_nio_2021_03];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Nio 04 ... TAUKTAE before 2021-05-16-03Z
# my at https://twitter.com/elioeFIN/status/1393725478343745541

my_nio_2021_04 = [17.8,71.4,110;21.2,71.3,90;24.5,72.7,45];
nhc_nio_2021_04 = [17.9,71.4,105;20.9,70.9,65;24.0,72.2,40];
btk_nio_2021_04 = [18.3,71.8,120;21.4,71.2,90;25.0,74.3,30]; # JTWC best track
myvect = [myvect;my_nio_2021_04];
nhcvect = [nhcvect;nhc_nio_2021_04];
btkvect = [btkvect;btk_nio_2021_04];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Nio 05 ... TAUKTAE before 2021-05-16-21Z
# my at https://twitter.com/elioeFIN/status/1393998173836877824

my_nio_2021_05 = [21.1,71.0,110;24.1,72.5,50];
nhc_nio_2021_05 = [21.2,71.3,80;24.5,72.6,30];
btk_nio_2021_05 = [20.9,71.3,110;24.2,73.2,45]; # JTWC best track
myvect = [myvect;my_nio_2021_05];
nhcvect = [nhcvect;nhc_nio_2021_05];
btkvect = [btkvect;btk_nio_2021_05];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Atl 01 ... ANA before 2021-05-22-15Z
# my at https://twitter.com/elioeFIN/status/1396099503791476737
# NHC at https://www.nhc.noaa.gov/archive/2021/al01/al012021.discus.002.shtml?

my_atl_2021_01 = [35.7,61.3,35];
nhc_atl_2021_01 = [35.8,61.2,35];
btk_atl_2021_01 = [36.1,60.3,35]; # TCR
myvect = [myvect;my_atl_2021_01];
nhcvect = [nhcvect;nhc_atl_2021_01];
btkvect = [btkvect;btk_atl_2021_01];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;1];

# Atl 02 ... ANA before 2021-05-22-21Z
# my at https://twitter.com/elioeFIN/status/1396099503791476737
# NHC at https://www.nhc.noaa.gov/archive/2021/al01/al012021.discus.003.shtml?

my_atl_2021_02 = [35.8,59.6,30];
nhc_atl_2021_02 = [36.2,59.0,35];
btk_atl_2021_02 = [36.8,58.7,35]; # TCR
myvect = [myvect;my_atl_2021_02];
nhcvect = [nhcvect;nhc_atl_2021_02];
btkvect = [btkvect;btk_atl_2021_02];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;1];

# Nio 06 ... 93B before 2021-05-23-21Z
# my at https://twitter.com/elioeFIN/status/1396547514984189959
# (no JTWC forecast)

# Nio 07 ... YAAS before 2021-05-24-21Z
# my at https://twitter.com/elioeFIN/status/1396911825984401412

my_nio_2021_07 = [19.7,87.4,65;21.9,86.1,75;23.5,84.2,35];
nhc_nio_2021_07 = [19.5,87.6,70;21.6,86.1,40;23.1,84.2,30];
btk_nio_2021_07 = [20.4,87.8,65;22.5,85.6,35;24.7,84.8,26.5]; # JTWC best track (days 1-2), IMD report (day 3)
myvect = [myvect;my_nio_2021_07];
nhcvect = [nhcvect;nhc_nio_2021_07];
btkvect = [btkvect;btk_nio_2021_07];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Nio 08 ... YAAS before 2021-05-25-03Z
# my at https://twitter.com/elioeFIN/status/1396996963330150402

my_nio_2021_08 = [20.6,86.8,70;22.5,85.4,40];
nhc_nio_2021_08 = [20.7,87.0,70;22.4,85.2,35];
btk_nio_2021_08 = [20.4,87.8,60;23.4,85.6,25]; # JTWC best track
myvect = [myvect;my_nio_2021_08];
nhcvect = [nhcvect;nhc_nio_2021_08];
btkvect = [btkvect;btk_nio_2021_08];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Wpac 09 ... 04W before 2021-05-30-03Z
# my at https://twitter.com/elioeFIN/status/1398804460902682624

my_wpac_2021_09 = [8.2,131.3,45;10.3,129.8,65;12.1,128.0,65;15.1,126.3,65;18.0,127.9,60];
nhc_wpac_2021_09 = [8.5,132.0,45;10.8,130.2,55;13.7,128.0,65;15.8,126.4,70;18.4,126.8,65];
btk_wpac_2021_09 = [8.1,130.4,45;10.1,127.3,35;12.7,122.3,30;16.4,119.1,35;20.4,118.7,35]; # JTWC best track
myvect = [myvect;my_wpac_2021_09];
nhcvect = [nhcvect;nhc_wpac_2021_09];
btkvect = [btkvect;btk_wpac_2021_09];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 10 ... 04W before 2021-05-30-21Z
# my at https://twitter.com/elioeFIN/status/1399083205119127558

my_wpac_2021_10 = [10.2,129.3,55;12.6,126.4,65;15.8,123.6,70;19.7,123.4,65;22.1,125.7,35];
nhc_wpac_2021_10 = [9.9,129.3,55;12.7,126.7,60;15.7,124.7,60;18.2,124.3,65;20.7,126.9,50];
btk_wpac_2021_10 = [9.8,128.3,40;11.9,124.0,30;14.6,119.8,30;19.5,118.5,35;23.1,122.5,25]; # JTWC best track
myvect = [myvect;my_wpac_2021_10];
nhcvect = [nhcvect;nhc_wpac_2021_10];
btkvect = [btkvect;btk_wpac_2021_10];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Epac 03 ... 02E before 2021-05-31-03Z
# my at https://twitter.com/elioeFIN/status/1399168009822949384
# NHC at https://www.nhc.noaa.gov/archive/2021/ep02/ep022021.discus.002.shtml?

my_epac_2021_03 = [13.7,108.7,50;15.1,111.5,55;16.3,113.2,50;17.2,115.2,50;17.4,114.9,30];
nhc_epac_2021_03 = [13.1,108.3,50;14.3,110.9,55;14.8,112.4,50;15.2,113.6,40;15.7,115.2,35];
btk_epac_2021_03 = [13.6,109.0,45;14.8,111.2,45;15.5,113.0,30;15.7,114.5,25;16.2,119.0,25]; # TCR
myvect = [myvect;my_epac_2021_03];
nhcvect = [nhcvect;nhc_epac_2021_03];
btkvect = [btkvect;btk_epac_2021_03];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 04 ... BLANCA before 2021-05-31-21Z
# my at https://twitter.com/elioeFIN/status/1399451236747943943
# NHC at https://www.nhc.noaa.gov/archive/2021/ep02/ep022021.discus.005.shtml?

my_epac_2021_04 = [14.2,110.5,55;16.0,112.6,55;16.6,113.9,40;16.5,115.9,35];
nhc_epac_2021_04 = [14.6,111.0,55;15.6,113.0,40;16.0,114.4,35;16.2,116.2,30];
btk_epac_2021_04 = [14.6,110.6,45;15.4,112.6,30;15.5,114.0,30;16.3,116.8,25]; # TCR
myvect = [myvect;my_epac_2021_04];
nhcvect = [nhcvect;nhc_epac_2021_04];
btkvect = [btkvect;btk_epac_2021_04];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Epac 05 ... BLANCA before 2021-06-01-03Z
# my at https://twitter.com/elioeFIN/status/1399541316221079554
# NHC at https://www.nhc.noaa.gov/archive/2021/ep02/ep022021.discus.006.shtml?

my_epac_2021_05 = [15.2,111.7,55;16.1,113.0,45;16.8,114.4,40;17.1,115.4,35];
nhc_epac_2021_05 = [15.1,111.6,50;15.9,113.2,40;16.1,114.6,35;16.1,116.5,30];
btk_epac_2021_05 = [14.8,111.2,45;15.5,113.0,30;15.7,114.5,25;16.2,117.6,25]; # TCR
myvect = [myvect;my_epac_2021_05];
nhcvect = [nhcvect;nhc_epac_2021_05];
btkvect = [btkvect;btk_epac_2021_05];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Epac 06 ... BLANCA before 2021-06-01-21Z
# my at https://twitter.com/elioeFIN/status/1399815850220269572
# NHC at https://www.nhc.noaa.gov/archive/2021/ep02/ep022021.discus.009.shtml?

my_epac_2021_06 = [15.7,112.3,40;16.1,113.5,30;16.1,115.5,25];
nhc_epac_2021_06 = [15.4,112.3,40;15.7,113.5,35;15.8,115.5,30];
btk_epac_2021_06 = [15.4,112.6,30;15.5,114.0,30;16.3,116.8,25]; # TCR
myvect = [myvect;my_epac_2021_06];
nhcvect = [nhcvect;nhc_epac_2021_06];
btkvect = [btkvect;btk_epac_2021_06];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 07 ... BLANCA before 2021-06-02-21Z
# my at https://twitter.com/elioeFIN/status/1400180205973606401
# NHC at https://www.nhc.noaa.gov/archive/2021/ep02/ep022021.discus.013.shtml?

my_epac_2021_07 = [15.6,114.1,20;15.5,116.6,20];
nhc_epac_2021_07 = [15.4,114.2,30;15.2,117.0,25];
btk_epac_2021_07 = [15.5,114.0,30;16.3,116.8,25]; # TCR
myvect = [myvect;my_epac_2021_07];
nhcvect = [nhcvect;nhc_epac_2021_07];
btkvect = [btkvect;btk_epac_2021_07];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Epac 08 ... 03E before 2021-06-13-03Z
# my at https://twitter.com/elioeFIN/status/1403890100107452420
# NHC at https://www.nhc.noaa.gov/archive/2021/ep03/ep032021.discus.002.shtml?

my_epac_2021_08 = [11.7,127.1,45;10.8,128.2,45;10.2,129.5,50;10.9,132.2,45];
nhc_epac_2021_08 = [11.4,126.5,45;10.6,127.4,45;10.3,128.0,40;11.5,128.1,35];
btk_epac_2021_08 = [11.6,126.9,40;10.5,130.4,30;9.6,133.9,30;8.4,135.8,25]; # TCR
myvect = [myvect;my_epac_2021_08];
nhcvect = [nhcvect;nhc_epac_2021_08];
btkvect = [btkvect;btk_epac_2021_08];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Epac 09 ... CARLOS before 2021-06-13-15Z
# my at https://twitter.com/elioeFIN/status/1404077672066695179
# NHC at https://www.nhc.noaa.gov/archive/2021/ep03/ep032021.discus.004.shtml?

my_epac_2021_09 = [11.4,127.9,50;10.4,129.2,40;9.8,131.8,45];
nhc_epac_2021_09 = [11.1,127.5,45;10.4,128.5,45;11.0,129.4,35];
btk_epac_2021_09 = [11.2,128.6,35;10.0,132.2,30;8.8,134.9,25]; # TCR
myvect = [myvect;my_epac_2021_09];
nhcvect = [nhcvect;nhc_epac_2021_09];
btkvect = [btkvect;btk_epac_2021_09];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 10 ... CARLOS before 2021-06-13-21Z
# my at https://twitter.com/elioeFIN/status/1404165718371975171
# NHC at https://www.nhc.noaa.gov/archive/2021/ep03/ep032021.discus.005.shtml?

my_epac_2021_10 = [11.1,128.4,45;10.5,129.6,35;11.9,130.7,30];
nhc_epac_2021_10 = [11.0,128.3,40;10.4,130.0,35;10.3,131.3,30];
btk_epac_2021_10 = [10.9,129.5,30;9.9,133.1,30;8.5,135.3,25]; # TCR
myvect = [myvect;my_epac_2021_10];
nhcvect = [nhcvect;nhc_epac_2021_10];
btkvect = [btkvect;btk_epac_2021_10];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 11 ... CARLOS before 2021-06-14-03Z
# my at https://twitter.com/elioeFIN/status/1404244860333330437
# NHC at https://www.nhc.noaa.gov/archive/2021/ep03/ep032021.discus.006.shtml?

my_epac_2021_11 = [11.0,128.7,35;10.7,130.5,30;11.5,132.0,25];
nhc_epac_2021_11 = [10.9,128.9,35;10.2,131.6,30;10.3,133.7,25];
btk_epac_2021_11 = [10.5,130.4,30;9.6,133.9,30;8.4,135.8,25]; # TCR
myvect = [myvect;my_epac_2021_11];
nhcvect = [nhcvect;nhc_epac_2021_11];
btkvect = [btkvect;btk_epac_2021_11];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Atl 03 ... 02L before 2021-06-14-21Z
# my at https://twitter.com/elioeFIN/status/1404519452251758594
# NHC at https://www.nhc.noaa.gov/archive/2021/al02/al022021.discus.002.shtml?

my_atl_2021_03 = [41.0,62.8,40];
nhc_atl_2021_03 = [40.9,62.5,45];
btk_atl_2021_03 = [40.9,60.8,45]; # TCR
myvect = [myvect;my_atl_2021_03];
nhcvect = [nhcvect;nhc_atl_2021_03];
btkvect = [btkvect;btk_atl_2021_03];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;1];

# Atl 04 ... 03L before 2021-06-17-21Z
# my at https://twitter.com/elioeFIN/status/1405609425285623810
# NHC at https://www.nhc.noaa.gov/archive/2021/al03/al032021.discus.001.shtml?
# omitting since the designation switched between different low pressure systems

# my_atl_2021_04 = [24.5,93.6,30;26.7,94.7,25;34.3,92.0,25];
# nhc_atl_2021_04 = [26.5,92.5,35;31.5,89.5,30;35.0,84.0,20];
# btk_atl_2021_04 = [27.4,91.2,40;31.8,88.6,35;33.9,83.3,25];
# myvect = [myvect;my_atl_2021_04];
# nhcvect = [nhcvect;nhc_atl_2021_04];
# btkvect = [btkvect;btk_atl_2021_04];
# leadtimevect = [leadtimevect;1;2;3];
# basinvect = [basinvect;1;1;1];

# Atl 05 ... 03L before 2021-06-18-03Z
# my at https://twitter.com/elioeFIN/status/1405693667264897024
# NHC at https://www.nhc.noaa.gov/archive/2021/al03/al032021.discus.002.shtml?
# omitting since the designation switched between different low pressure systems

# my_atl_2021_05 = [24.5,94.2,30;26.2,95.2,25;29.3,93.3,25];
# nhc_atl_2021_05 = [27.2,92.4,35;32.0,88.8,30;35.6,83.0,20];
# btk_atl_2021_05 = [28.4,91.1,40;32.4,87.7,25;34.4,81.3,30];
# myvect = [myvect;my_atl_2021_05];
# nhcvect = [nhcvect;nhc_atl_2021_05];
# btkvect = [btkvect;btk_atl_2021_05];
# leadtimevect = [leadtimevect;1;2;3];
# basinvect = [basinvect;1;1;1];

# Epac 12 ... 04E before 2021-06-18-15Z
# my at https://twitter.com/elioeFIN/status/1405877868748578821
# NHC at https://www.nhc.noaa.gov/archive/2021/ep04/ep042021.discus.002.shtml?

my_epac_2021_12 = [17.0,104.1,50];
nhc_epac_2021_12 = [16.8,104.3,55];
btk_epac_2021_12 = [17.9,103.5,60]; # TCR
myvect = [myvect;my_epac_2021_12];
nhcvect = [nhcvect;nhc_epac_2021_12];
btkvect = [btkvect;btk_epac_2021_12];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;2];

# Epac 13 ... DOLORES before 2021-06-18-21Z
# my at https://twitter.com/elioeFIN/status/1405964708340027396
# NHC at https://www.nhc.noaa.gov/archive/2021/ep04/ep042021.discus.003.shtml?

my_epac_2021_13 = [18.6,103.6,45];
nhc_epac_2021_13 = [18.5,104.0,55];
btk_epac_2021_13 = [19.4,103.9,50]; # TCR
myvect = [myvect;my_epac_2021_13];
nhcvect = [nhcvect;nhc_epac_2021_13];
btkvect = [btkvect;btk_epac_2021_13];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;2];

# Atl 06 ... CLAUDETTE before 2021-06-20-21Z
# my at https://twitter.com/elioeFIN/status/1406690950232121346
# NHC at https://www.nhc.noaa.gov/archive/2021/al03/al032021.discus.013.shtml?

my_atl_2021_06 = [36.8,74.5,35;42.1,63.5,35];
nhc_atl_2021_06 = [36.9,74.3,40;42.4,63.4,40];
btk_atl_2021_06 = [37.0,73.5,40;42.6,62.4,40]; # TCR
myvect = [myvect;my_atl_2021_06];
nhcvect = [nhcvect;nhc_atl_2021_06];
btkvect = [btkvect;btk_atl_2021_06];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Atl 07 ... CLAUDETTE before 2021-06-21-03Z
# my at https://twitter.com/elioeFIN/status/1406782523204644867
# NHC at https://www.nhc.noaa.gov/archive/2021/al03/al032021.discus.014.shtml?

my_atl_2021_07 = [37.9,71.7,35;44.3,61.0,35];
nhc_atl_2021_07 = [38.1,71.7,40;44.5,61.0,40];
btk_atl_2021_07 = [38.4,70.7,40;44.1,59.6,35]; # TCR
myvect = [myvect;my_atl_2021_07];
nhcvect = [nhcvect;nhc_atl_2021_07];
btkvect = [btkvect;btk_atl_2021_07];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Wpac 11 ... 06W before 2021-06-22-15Z
# my at https://twitter.com/elioeFIN/status/1407333904265134086

my_wpac_2021_11 = [17.0,139.5,50;19.8,138.5,60;23.0,137.8,60;29.1,139.2,50;36.4,148.3,30];
nhc_wpac_2021_11 = [17.0,139.5,45;19.3,138.4,55;22.7,137.6,65;27.7,138.3,55;34.9,144.1,40];
btk_wpac_2021_11 = [17.3,140.4,40;19.8,139.7,50;23.0,139.5,65;26.8,140.2,50;33.8,144.1,25]; # JTWC best track
myvect = [myvect;my_wpac_2021_11];
nhcvect = [nhcvect;nhc_wpac_2021_11];
btkvect = [btkvect;btk_wpac_2021_11];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 12 ... CHAMPI before 2021-06-23-21Z
# my at https://twitter.com/elioeFIN/status/1407773230933417993

my_wpac_2021_12 = [21.0,139.4,55;25.0,139.4,60;29.8,141.6,55;39.6,147.3,45];
nhc_wpac_2021_12 = [21.2,139.4,50;24.9,139.5,65;30.3,141.8,60;39.6,147.4,45];
btk_wpac_2021_12 = [20.4,139.5,55;24.1,139.5,60;28.3,140.8,40;36.0,145.2,30]; # JTWC best track
myvect = [myvect;my_wpac_2021_12];
nhcvect = [nhcvect;nhc_wpac_2021_12];
btkvect = [btkvect;btk_wpac_2021_12];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Wpac 13 ... CHAMPI before 2021-06-24-21Z
# my at https://twitter.com/elioeFIN/status/1408134274046365699

my_wpac_2021_13 = [23.2,138.9,70;27.6,140.1,75;34.9,145.6,55];
nhc_wpac_2021_13 = [23.2,138.9,70;27.3,139.9,75;34.9,144.4,50];
btk_wpac_2021_13 = [24.1,139.5,60;28.3,140.8,40;36.0,145.2,30]; # JTWC best track
myvect = [myvect;my_wpac_2021_13];
nhcvect = [nhcvect;nhc_wpac_2021_13];
btkvect = [btkvect;btk_wpac_2021_13];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Epac 14 ... ENRIQUE before 2021-06-25-15Z
# my at https://twitter.com/elioeFIN/status/1408421231162966021
# NHC at https://www.nhc.noaa.gov/archive/2021/ep05/ep052021.discus.002.shtml?

my_epac_2021_14 = [16.8,104.4,55;18.0,106.1,80;19.8,107.5,70;20.2,109.2,55;20.7,111.1,40];
nhc_epac_2021_14 = [16.4,104.6,65;17.6,106.1,85;19.2,107.5,65;20.1,108.6,50;20.9,109.8,40];
btk_epac_2021_14 = [16.8,105.1,70;18.0,105.8,80;20.2,106.6,70;22.2,107.5,40;24.3,109.8,30]; # TCR
myvect = [myvect;my_epac_2021_14];
nhcvect = [nhcvect;nhc_epac_2021_14];
btkvect = [btkvect;btk_epac_2021_14];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 15 ... ENRIQUE before 2021-06-26-21Z
# my at https://twitter.com/elioeFIN/status/1408867451849396226
# NHC at https://www.nhc.noaa.gov/archive/2021/ep05/ep052021.discus.007.shtml?

my_epac_2021_15 = [19.0,106.5,75;20.5,107.1,60;21.9,108.7,40;21.9,109.7,35];
nhc_epac_2021_15 = [19.0,106.3,80;20.4,107.3,65;21.8,108.7,45;22.9,110.1,35];
btk_epac_2021_15 = [18.7,105.7,80;20.5,107.0,60;22.9,108.0,35;24.4,110.1,25]; # TCR (except day 4)
myvect = [myvect;my_epac_2021_15];
nhcvect = [nhcvect;nhc_epac_2021_15];
btkvect = [btkvect;btk_epac_2021_15];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Epac 16 ... ENRIQUE before 2021-06-27-03Z
# my at https://twitter.com/elioeFIN/status/1408954641572929539
# NHC at https://www.nhc.noaa.gov/archive/2021/ep05/ep052021.discus.008.shtml?

my_epac_2021_16 = [18.6,106.8,65;20.5,107.6,65;22.5,108.6,40];
nhc_epac_2021_16 = [19.1,106.1,80;20.8,107.7,65;21.9,109.0,45];
btk_epac_2021_16 = [19.4,105.9,80;20.9,107.3,50;23.5,108.7,35]; # TCR
myvect = [myvect;my_epac_2021_16];
nhcvect = [nhcvect;nhc_epac_2021_16];
btkvect = [btkvect;btk_epac_2021_16];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 17 ... ENRIQUE before 2021-06-27-21Z
# my at https://twitter.com/elioeFIN/status/1409227348591980548
# NHC at https://www.nhc.noaa.gov/archive/2021/ep05/ep052021.discus.011.shtml?

my_epac_2021_17 = [20.8,106.9,55;22.2,108.3,50;24.5,109.8,25];
nhc_epac_2021_17 = [20.5,106.8,75;21.8,107.9,55;23.6,109.5,35];
btk_epac_2021_17 = [20.5,107.0,60;22.9,108.0,35;24.4,110.1,25]; # TCR (except day 3)
myvect = [myvect;my_epac_2021_17];
nhcvect = [nhcvect;nhc_epac_2021_17];
btkvect = [btkvect;btk_epac_2021_17];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 18 ... ENRIQUE before 2021-06-28-21Z
# my at https://twitter.com/elioeFIN/status/1409594494081716227
# NHC at https://www.nhc.noaa.gov/archive/2021/ep05/ep052021.discus.015.shtml?

my_epac_2021_18 = [22.3,108.9,45;24.3,110.3,30];
nhc_epac_2021_18 = [22.1,108.5,40;23.7,110.3,30];
btk_epac_2021_18 = [22.9,108.0,35;24.4,110.1,25]; # TCR (except day 2)
myvect = [myvect;my_epac_2021_18];
nhcvect = [nhcvect;nhc_epac_2021_18];
btkvect = [btkvect;btk_epac_2021_18];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Epac 19 ... ENRIQUE before 2021-06-29-21Z
# my at https://twitter.com/elioeFIN/status/1409953856902078467
# NHC at https://www.nhc.noaa.gov/archive/2021/ep05/ep052021.discus.019.shtml?

my_epac_2021_19 = [24.9,110.6,20];
nhc_epac_2021_19 = [24.6,110.2,25];
btk_epac_2021_19 = [24.4,110.1,25]; # TCR has no value
myvect = [myvect;my_epac_2021_19];
nhcvect = [nhcvect;nhc_epac_2021_19];
btkvect = [btkvect;btk_epac_2021_19];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;2];

# Atl 08 ... 05L before 2021-07-01-03Z
# my at https://twitter.com/elioeFIN/status/1410409827772342272
# NHC at https://www.nhc.noaa.gov/archive/2021/al05/al052021.discus.002.shtml?

my_atl_2021_08 = [11.7,54.3,50;14.7,64.9,60;18.5,74.3,60;22.1,78.0,60;26.6,79.3,60];
nhc_atl_2021_08 = [11.7,54.4,45;14.7,65.0,50;18.3,73.8,50;20.9,78.6,50;24.5,82.0,50];
btk_atl_2021_08 = [11.5,55.0,50;14.7,65.1,70;17.6,74.4,55;20.1,78.6,55;22.9,82.0,50]; # TCR
myvect = [myvect;my_atl_2021_08];
nhcvect = [nhcvect;nhc_atl_2021_08];
btkvect = [btkvect;btk_atl_2021_08];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 09 ... ELSA before 2021-07-01-21Z
# my at https://twitter.com/elioeFIN/status/1410674108233363456
# NHC at https://www.nhc.noaa.gov/archive/2021/al05/al052021.discus.005.shtml?

my_atl_2021_09 = [13.2,62.1,55;16.4,71.5,70;19.1,78.0,65;22.4,81.7,55;26.7,83.4,55];
nhc_atl_2021_09 = [13.5,62.4,50;16.7,71.6,50;19.8,77.9,50;22.5,82.0,50;26.5,83.5,50];
btk_atl_2021_09 = [13.8,62.4,75;17.2,72.5,60;19.3,77.6,50;22.1,81.5,50;25.5,82.9,60]; # TCR
myvect = [myvect;my_atl_2021_09];
nhcvect = [nhcvect;nhc_atl_2021_09];
btkvect = [btkvect;btk_atl_2021_09];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 10 ... ELSA before 2021-07-02-03Z
# my at https://twitter.com/elioeFIN/status/1410767029653721091
# NHC at https://www.nhc.noaa.gov/archive/2021/al05/al052021.discus.006.shtml?

my_atl_2021_10 = [14.3,64.6,65;18.0,73.6,70;21.5,78.4,60;23.5,82.0,55;28.3,82.0,50];
nhc_atl_2021_10 = [14.5,64.8,55;17.7,73.3,55;21.2,78.8,50;23.9,81.7,50;28.2,83.1,50];
btk_atl_2021_10 = [14.7,65.1,70;17.6,74.4,55;20.1,78.6,55;22.9,82.0,50;26.6,83.2,65]; # TCR
myvect = [myvect;my_atl_2021_10];
nhcvect = [nhcvect;nhc_atl_2021_10];
btkvect = [btkvect;btk_atl_2021_10];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 11 ... ELSA before 2021-07-02-15Z
# my at https://twitter.com/elioeFIN/status/1410956104780107778
# NHC at https://www.nhc.noaa.gov/archive/2021/al05/al052021.discus.009.shtml?

my_atl_2021_11 = [16.1,69.8,85;19.6,76.6,70;22.8,80.8,50;25.9,82.5,55;31.7,80.3,45];
nhc_atl_2021_11 = [16.3,69.8,70;19.3,76.4,65;22.1,80.5,55;26.0,82.5,55;30.6,81.5,40];
btk_atl_2021_11 = [16.6,70.3,60;18.5,76.5,50;21.3,80.7,55;24.6,82.7,55;29.1,83.6,55]; # TCR
myvect = [myvect;my_atl_2021_11];
nhcvect = [nhcvect;nhc_atl_2021_11];
btkvect = [btkvect;btk_atl_2021_11];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 12 ... ELSA before 2021-07-02-21Z
# my at https://twitter.com/elioeFIN/status/1411019637198835719
# NHC at https://www.nhc.noaa.gov/archive/2021/al05/al052021.discus.010.shtml?

my_atl_2021_12 = [17.0,72.1,75;20.6,78.0,75;23.7,81.3,55;26.8,83.1,45;32.7,80.0,40];
nhc_atl_2021_12 = [17.0,71.7,75;19.9,77.3,70;22.9,81.1,55;26.5,83.0,55;31.6,82.0,40];
btk_atl_2021_12 = [17.2,72.5,60;19.3,77.6,50;22.1,81.5,55;25.5,82.9,60;30.3,83.4,45]; # TCR
myvect = [myvect;my_atl_2021_12];
nhcvect = [nhcvect;nhc_atl_2021_12];
btkvect = [btkvect;btk_atl_2021_12];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 13 ... ELSA before 2021-07-03-21Z
# my at https://twitter.com/elioeFIN/status/1411397897199960066
# NHC at https://www.nhc.noaa.gov/archive/2021/al05/al052021.discus.014.shtml?

my_atl_2021_13 = [20.1,78.3,55;23.0,81.7,45;26.8,83.2,50;31.1,82.5,40;36.9,77.1,35];
nhc_atl_2021_13 = [20.2,78.3,60;23.1,81.6,45;26.9,83.1,55;32.0,82.0,45;36.5,77.0,35];
btk_atl_2021_13 = [19.3,77.6,50;22.1,81.5,55;25.5,82.9,60;30.3,83.4,45;35.5,79.0,45]; # TCR
myvect = [myvect;my_atl_2021_13];
nhcvect = [nhcvect;nhc_atl_2021_13];
btkvect = [btkvect;btk_atl_2021_13];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 14 ... ELSA before 2021-07-04-03Z
# my at https://twitter.com/elioeFIN/status/1411491680277180422
# NHC at https://www.nhc.noaa.gov/archive/2021/al05/al052021.discus.015.shtml?

my_atl_2021_14 = [20.9,79.6,60;24.1,82.2,45;28.2,82.4,55;31.9,80.9,40;36.8,75.0,30];
nhc_atl_2021_14 = [20.9,79.4,50;24.1,82.2,45;28.0,83.0,50;32.7,81.0,45;37.7,74.9,35];
btk_atl_2021_14 = [20.1,78.6,55;22.9,82.0,50;26.6,83.2,65;31.5,82.7,45;36.8,77.4,45]; # TCR
myvect = [myvect;my_atl_2021_14];
nhcvect = [nhcvect;nhc_atl_2021_14];
btkvect = [btkvect;btk_atl_2021_14];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 15 ... ELSA before 2021-07-04-21Z
# my at https://twitter.com/elioeFIN/status/1411761283779674113
# NHC at https://www.nhc.noaa.gov/archive/2021/al05/al052021.discus.018.shtml?

my_atl_2021_15 = [22.8,81.4,45;25.6,83.4,40;30.0,83.0,40;33.4,80.6,35;38.5,70.9,35];
nhc_atl_2021_15 = [22.7,81.2,50;25.8,83.0,50;30.5,82.3,30;34.9,78.0,30;40.0,69.0,35];
btk_atl_2021_15 = [22.1,81.5,55;25.5,82.9,60;30.3,83.4,45;35.5,79.0,45;42.0,71.0,45]; # TCR
myvect = [myvect;my_atl_2021_15];
nhcvect = [nhcvect;nhc_atl_2021_15];
btkvect = [btkvect;btk_atl_2021_15];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 16 ... ELSA before 2021-07-05-03Z
# my at https://twitter.com/elioeFIN/status/1411851306923401216
# NHC at https://www.nhc.noaa.gov/archive/2021/al05/al052021.discus.019.shtml?

my_atl_2021_16 = [23.5,82.2,45;27.2,83.5,45;31.2,81.7,30;35.2,77.7,30;39.5,69.1,30];
nhc_atl_2021_16 = [23.5,82.1,50;27.1,83.2,50;31.5,81.6,35;36.0,76.0,35;41.0,66.8,40];
btk_atl_2021_16 = [22.9,82.0,50;26.6,83.2,65;31.5,82.7,45;36.8,77.4,45;44.0,68.3,40]; # TCR
myvect = [myvect;my_atl_2021_16];
nhcvect = [nhcvect;nhc_atl_2021_16];
btkvect = [btkvect;btk_atl_2021_16];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 17 ... ELSA before 2021-07-05-21Z
# my at https://twitter.com/elioeFIN/status/1412121259245289476
# NHC at https://www.nhc.noaa.gov/archive/2021/al05/al052021.discus.022.shtml?

my_atl_2021_17 = [26.0,83.5,50;30.8,82.8,40;35.9,77.3,35;41.1,69.3,40;49.5,54.9,35];
nhc_atl_2021_17 = [26.1,83.5,55;30.6,83.0,35;35.5,78.5,30;41.5,69.5,40;49.0,56.0,40];
btk_atl_2021_17 = [25.5,82.9,60;30.3,83.4,45;35.5,79.0,45;42.0,71.0,45;50.8,55.1,35]; # TCR but day 5 self-made
myvect = [myvect;my_atl_2021_17];
nhcvect = [nhcvect;nhc_atl_2021_17];
btkvect = [btkvect;btk_atl_2021_17];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 18 ... ELSA before 2021-07-06-03Z
# my at https://twitter.com/elioeFIN/status/1412216420113465349
# NHC at https://www.nhc.noaa.gov/archive/2021/al05/al052021.discus.023.shtml?

my_atl_2021_18 = [26.9,83.4,55;31.4,82.3,35;36.6,76.9,35;42.7,67.6,40;51.8,51.6,35];
nhc_atl_2021_18 = [26.9,83.3,55;31.6,82.0,30;36.9,76.1,30;43.3,66.0,40;50.5,52.4,40];
btk_atl_2021_18 = [26.6,83.2,65;31.5,82.7,45;36.8,77.4,45;44.0,68.3,40;53.0,49.5,35]; # TCR but day 5 self-made
myvect = [myvect;my_atl_2021_18];
nhcvect = [nhcvect;nhc_atl_2021_18];
btkvect = [btkvect;btk_atl_2021_18];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 19 ... ELSA before 2021-07-06-21Z
# my at https://twitter.com/elioeFIN/status/1412490404285534212
# NHC at https://www.nhc.noaa.gov/archive/2021/al05/al052021.discus.027.shtml?

my_atl_2021_19 = [29.6,83.1,60;34.4,79.4,35;39.7,71.3,40;48.2,58.3,35];
nhc_atl_2021_19 = [30.0,82.8,55;34.8,78.9,30;40.5,71.0,40;48.5,58.5,40];
btk_atl_2021_19 = [30.3,83.4,45;35.5,79.0,40;42.0,71.0,45;50.8,55.1,35]; # TCR but day 4 self-made
myvect = [myvect;my_atl_2021_19];
nhcvect = [nhcvect;nhc_atl_2021_19];
btkvect = [btkvect;btk_atl_2021_19];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Epac 20 ... FELICIA before 2021-07-14-21Z
# my at https://twitter.com/elioeFIN/status/1415389568375967749
# NHC at https://www.nhc.noaa.gov/archive/2021/ep06/ep062021.discus.003.shtml?

my_epac_2021_20 = [15.8,118.8,70;15.4,121.7,80;15.2,125.3,75;15.4,129.5,75;16.1,134.5,60];
nhc_epac_2021_20 = [15.5,118.8,80;15.2,121.9,85;14.9,125.1,75;14.9,128.9,70;14.8,133.2,60];
btk_epac_2021_20 = [15.3,119.0,90;14.9,122.0,115;14.7,124.9,125;15.9,128.5,110;16.2,132.8,55]; # TCR
myvect = [myvect;my_epac_2021_20];
nhcvect = [nhcvect;nhc_epac_2021_20];
btkvect = [btkvect;btk_epac_2021_20];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 21 ... FELICIA before 2021-07-15-03Z
# my at https://twitter.com/elioeFIN/status/1415478674988716032
# NHC at https://www.nhc.noaa.gov/archive/2021/ep06/ep062021.discus.004.shtml?

my_epac_2021_21 = [15.6,120.1,80;15.2,123.1,80;14.8,126.9,75;15.3,130.6,70;16.8,134.9,50];
nhc_epac_2021_21 = [15.5,120.0,80;15.0,123.0,85;14.7,126.5,75;14.8,130.2,70;15.0,134.5,65];
btk_epac_2021_21 = [15.3,119.8,95;14.7,122.8,115;15.0,125.7,120;16.2,129.5,95;16.1,134.1,45]; # TCR
myvect = [myvect;my_epac_2021_21];
nhcvect = [nhcvect;nhc_epac_2021_21];
btkvect = [btkvect;btk_epac_2021_21];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 22 ... FELICIA before 2021-07-15-15Z
# my at https://twitter.com/elioeFIN/status/1415665853132009486
# NHC at https://www.nhc.noaa.gov/archive/2021/ep06/ep062021.discus.006.shtml?

my_epac_2021_22 = [15.3,121.6,90;14.8,124.3,85;14.8,128.1,75;14.8,131.9,70;14.4,135.8,45];
nhc_epac_2021_22 = [15.1,121.5,95;14.6,124.7,85;14.4,128.2,80;14.5,132.1,70;14.5,136.0,65];
btk_epac_2021_22 = [15.1,121.2,110;14.5,124.2,125;15.6,127.6,115;16.3,131.7,65;15.8,137.1,35]; # TCR
myvect = [myvect;my_epac_2021_22];
nhcvect = [nhcvect;nhc_epac_2021_22];
btkvect = [btkvect;btk_epac_2021_22];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 23 ... FELICIA before 2021-07-15-21Z
# my at https://twitter.com/elioeFIN/status/1415752641414578193
# NHC at https://www.nhc.noaa.gov/archive/2021/ep06/ep062021.discus.007.shtml?

my_epac_2021_23 = [14.7,121.8,90;14.3,125.2,85;14.5,128.7,80;14.5,133.3,65;14.0,135.9,50];
nhc_epac_2021_23 = [14.9,122.0,90;14.5,125.3,85;14.5,128.9,75;14.5,132.8,65;14.5,136.5,60];
btk_epac_2021_23 = [14.9,122.0,115;14.7,124.9,125;15.9,128.5,110;16.2,132.8,55;15.5,138.6,30]; # TCR
myvect = [myvect;my_epac_2021_23];
nhcvect = [nhcvect;nhc_epac_2021_23];
btkvect = [btkvect;btk_epac_2021_23];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 24 ... FELICIA before 2021-07-17-21Z
# my at https://twitter.com/elioeFIN/status/1416477638353375239
# NHC at https://www.nhc.noaa.gov/archive/2021/ep06/ep062021.discus.015.shtml?

my_epac_2021_24 = [15.9,128.5,105;16.6,132.1,75;16.8,136.7,50;15.4,142.2,40];
nhc_epac_2021_24 = [15.8,128.5,110;16.1,132.6,85;15.6,137.4,60;14.7,142.6,40];
btk_epac_2021_24 = [15.9,128.5,110;16.2,132.8,55;15.5,138.6,30;14.3,144.4,30]; # TCR
myvect = [myvect;my_epac_2021_24];
nhcvect = [nhcvect;nhc_epac_2021_24];
btkvect = [btkvect;btk_epac_2021_24];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Wpac 14 ... IN-FA before 2021-07-18-03Z
# my at https://twitter.com/elioeFIN/status/1416560034071318532

my_wpac_2021_14 = [24.1,130.7,45;24.9,128.7,70;25.6,126.1,75;25.5,123.3,85;26.0,121.5,105];
nhc_wpac_2021_14 = [24.3,131.3,45;25.1,129.2,50;25.5,126.4,80;25.3,123.8,80;25.0,122.1,85];
btk_wpac_2021_14 = [23.8,132.0,50;24.4,130.6,55;24.1,127.9,95;23.5,126.1,90;24.2,125.4,75]; # JTWC best track
myvect = [myvect;my_wpac_2021_14];
nhcvect = [nhcvect;nhc_wpac_2021_14];
btkvect = [btkvect;btk_wpac_2021_14];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Epac 25 ... GUILLERMO before 2021-07-18-03Z
# my at https://twitter.com/elioeFIN/status/1416564623130697729
# NHC at https://www.nhc.noaa.gov/archive/2021/ep07/ep072021.discus.003.shtml?

my_epac_2021_25 = [18.5,114.7,45;18.9,120.1,40;18.4,126.0,35];
nhc_epac_2021_25 = [18.3,114.8,50;18.7,120.1,45;18.4,125.5,35];
btk_epac_2021_25 = [18.8,114.7,45;19.4,121.1,30;18.5,127.2,30]; # TCR
myvect = [myvect;my_epac_2021_25];
nhcvect = [nhcvect;nhc_epac_2021_25];
btkvect = [btkvect;btk_epac_2021_25];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 26 ... FELICIA before 2021-07-18-21Z
# my at https://twitter.com/elioeFIN/status/1416837002331361282
# NHC at https://www.nhc.noaa.gov/archive/2021/ep06/ep062021.discus.019.shtml?

my_epac_2021_26 = [16.6,132.4,80;16.5,137.0,55;15.4,142.4,35];
nhc_epac_2021_26 = [16.5,132.6,85;16.0,137.3,60;15.0,142.6,35];
btk_epac_2021_26 = [16.2,132.8,55;15.5,138.6,30;14.3,144.4,30]; # TCR
myvect = [myvect;my_epac_2021_26];
nhcvect = [nhcvect;nhc_epac_2021_26];
btkvect = [btkvect;btk_epac_2021_26];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Wpac 15 ... IN-FA before 2021-07-20-03Z
# my at https://twitter.com/elioeFIN/status/1417285629289930760

my_wpac_2021_15 = [24.7,128.0,70;24.5,125.5,80;25.2,124.4,80;26.7,122.6,60;27.1,119.7,40];
nhc_wpac_2021_15 = [24.5,127.9,70;24.4,125.3,90;24.4,123.2,80;25.2,120.9,55;26.2,118.9,35];
btk_wpac_2021_15 = [24.1,127.9,95;23.5,126.1,90;24.2,125.4,75;26.4,124.7,70;29.7,122.9,55]; # JTWC best track
myvect = [myvect;my_wpac_2021_15];
nhcvect = [nhcvect;nhc_wpac_2021_15];
btkvect = [btkvect;btk_wpac_2021_15];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 16 ... IN-FA before 2021-07-22-03Z
# my at https://twitter.com/elioeFIN/status/1418013038121259011

my_wpac_2021_16 = [24.1,124.9,95;26.1,123.7,95;29.0,122.7,75;30.7,120.0,45;32.2,116.8,30];
nhc_wpac_2021_16 = [23.9,124.6,100;25.8,123.2,95;28.0,121.5,75;29.7,119.6,45;31.0,117.7,20];
btk_wpac_2021_16 = [24.2,125.4,75;26.4,124.7,70;29.7,122.9,55;30.7,121.2,40;31.3,119.3,25]; # JTWC best track
myvect = [myvect;my_wpac_2021_16];
nhcvect = [nhcvect;nhc_wpac_2021_16];
btkvect = [btkvect;btk_wpac_2021_16];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 17 ... IN-FA before 2021-07-23-15Z
# my at https://twitter.com/elioeFIN/status/1418555428825452544

my_wpac_2021_17 = [27.2,124.2,75;29.1,122.6,50;30.1,120.7,30;29.2,120.5,20];
nhc_wpac_2021_17 = [27.3,123.9,75;29.0,121.9,60;29.2,120.2,40;28.9,118.8,20];
btk_wpac_2021_17 = [28.1,124.0,70;30.3,122.2,55;31.1,120.5,30;31.6,118.9,25]; # JTWC best track
myvect = [myvect;my_wpac_2021_17];
nhcvect = [nhcvect;nhc_wpac_2021_17];
btkvect = [btkvect;btk_wpac_2021_17];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Epac 27 ... NINE-E before 2021-07-31-03Z
# my at https://twitter.com/elioeFIN/status/1421274239399759877
# NHC at https://www.nhc.noaa.gov/archive/2021/ep09/ep092021.discus.002.shtml?

my_epac_2021_27 = [12.0,126.9,30;11.9,129.5,30;12.8,132.2,40;14.2,133.7,40;16.5,133.7,45];
nhc_epac_2021_27 = [12.3,127.3,30;12.7,130.0,35;13.4,133.0,40;13.8,135.9,45;14.5,138.9,50];
btk_epac_2021_27 = [11.5,127.5,25;12.2,128.8,25;13.0,131.9,30;13.6,134.3,30;14.9,136.0,30]; # TCR
myvect = [myvect;my_epac_2021_27];
nhcvect = [nhcvect;nhc_epac_2021_27];
btkvect = [btkvect;btk_epac_2021_27];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 28 ... HILDA before 2021-07-31-03Z
# my at https://twitter.com/elioeFIN/status/1421278457993043977
# NHC at https://www.nhc.noaa.gov/archive/2021/ep08/ep082021.discus.002.shtml?

my_epac_2021_28 = [14.1,118.5,60;15.2,122.7,70;17.3,125.5,65;19.4,128.2,60;20.3,134.7,40];
nhc_epac_2021_28 = [14.1,118.4,60;15.3,122.0,75;16.5,124.8,70;18.0,127.0,60;19.5,131.0,50];
btk_epac_2021_28 = [14.2,118.3,75;14.8,121.1,70;16.2,123.2,65;18.1,125.5,45;19.5,128.2,40]; # TCR
myvect = [myvect;my_epac_2021_28];
nhcvect = [nhcvect;nhc_epac_2021_28];
btkvect = [btkvect;btk_epac_2021_28];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 29 ... HILDA before 2021-08-01-03Z
# my at https://twitter.com/elioeFIN/status/1421640206948749313
# NHC at https://www.nhc.noaa.gov/archive/2021/ep08/ep082021.discus.006.shtml?

my_epac_2021_29 = [15.3,121.4,85;16.5,124.0,70;18.6,126.6,60;20.6,128.8,55;22.1,131.9,35];
nhc_epac_2021_29 = [15.2,121.7,90;16.4,124.2,80;18.3,126.8,65;20.0,130.5,50;20.5,134.0,40];
btk_epac_2021_29 = [14.8,121.1,70;16.2,123.2,65;18.1,125.5,45;19.5,128.2,40;22.0,131.7,30]; # TCR
myvect = [myvect;my_epac_2021_29];
nhcvect = [nhcvect;nhc_epac_2021_29];
btkvect = [btkvect;btk_epac_2021_29];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 30 ... NINE-E before 2021-08-01-03Z
# my at https://twitter.com/elioeFIN/status/1421644781789368322
# NHC at https://www.nhc.noaa.gov/archive/2021/ep09/ep092021.discus.006.shtml?

my_epac_2021_30 = [12.1,129.7,30;13.1,133.5,40;13.9,136.4,45;13.3,140.2,50;14.2,141.7,35];
nhc_epac_2021_30 = [12.0,130.0,30;12.5,133.0,30;13.5,135.6,30;14.5,138.0,35;15.5,141.0,40];
btk_epac_2021_30 = [12.2,128.8,25;13.0,131.9,30;13.6,134.3,30;14.9,136.0,30;16.6,137.6,35]; # TCR
myvect = [myvect;my_epac_2021_30];
nhcvect = [nhcvect;nhc_epac_2021_30];
btkvect = [btkvect;btk_epac_2021_30];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 31 ... HILDA before 2021-08-01-09Z
# my at https://twitter.com/elioeFIN/status/1421729834653392898
# NHC at https://www.nhc.noaa.gov/archive/2021/ep08/ep082021.discus.007.shtml?

my_epac_2021_31 = [15.5,122.3,80;16.8,125.2,70;18.4,128.4,55;19.2,133.1,50;18.5,136.6,35];
nhc_epac_2021_31 = [15.3,122.1,80;16.7,124.3,75;18.7,126.9,55;20.1,130.9,45;20.7,135.3,35];
btk_epac_2021_31 = [15.0,121.7,70;16.7,123.7,60;18.5,126.2,40;20.0,128.8,40;22.5,132.8,30]; # TCR
myvect = [myvect;my_epac_2021_31];
nhcvect = [nhcvect;nhc_epac_2021_31];
btkvect = [btkvect;btk_epac_2021_31];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 32 ... HILDA before 2021-08-02-03Z
# my at https://twitter.com/elioeFIN/status/1422000624049266690
# NHC at https://www.nhc.noaa.gov/archive/2021/ep08/ep082021.discus.010.shtml?

my_epac_2021_32 = [16.4,123.4,65;18.9,125.1,45;20.6,128.7,35;21.9,132.0,25;22.5,136.2,20];
nhc_epac_2021_32 = [16.2,123.4,65;18.4,125.3,50;20.3,128.3,35;21.0,132.3,25;21.5,136.0,20];
btk_epac_2021_32 = [16.2,123.2,65;18.1,125.5,45;19.5,128.2,40;22.0,131.7,30;22.6,134.7,25]; # TCR
myvect = [myvect;my_epac_2021_32];
nhcvect = [nhcvect;nhc_epac_2021_32];
btkvect = [btkvect;btk_epac_2021_32];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 33 ... HILDA before 2021-08-02-09Z
# my at https://twitter.com/elioeFIN/status/1422091596070273024
# NHC at https://www.nhc.noaa.gov/archive/2021/ep08/ep082021.discus.011.shtml?

my_epac_2021_33 = [16.6,123.3,60;18.8,125.3,45;20.3,129.0,35;20.0,132.3,25];
nhc_epac_2021_33 = [16.7,123.5,65;18.9,125.5,45;20.5,128.8,30;21.2,132.6,25];
btk_epac_2021_33 = [16.7,123.7,60;18.5,126.2,40;20.0,128.8,40;22.5,132.8,30]; # TCR
myvect = [myvect;my_epac_2021_33];
nhcvect = [nhcvect;nhc_epac_2021_33];
btkvect = [btkvect;btk_epac_2021_33];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Epac 34 ... NINE-E before 2021-08-05-03Z
# my at https://twitter.com/elioeFIN/status/1423088923270598656
# NHC at https://www.nhc.noaa.gov/archive/2021/ep09/ep092021.discus.009.shtml?

my_epac_2021_34 = [16.9,137.9,35;19.1,140.6,30;20.9,143.8,25];
nhc_epac_2021_34 = [16.9,137.7,40;18.8,140.3,30;20.5,143.5,25];
btk_epac_2021_34 = [16.6,137.6,35;17.9,140.5,25;19.3,142.9,20]; # TCR (except day 3)
myvect = [myvect;my_epac_2021_34];
nhcvect = [nhcvect;nhc_epac_2021_34];
btkvect = [btkvect;btk_epac_2021_34];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 35 ... KEVIN before 2021-08-08-03Z
# my at https://twitter.com/elioeFIN/status/1424175536067198981
# NHC at https://www.nhc.noaa.gov/archive/2021/ep11/ep112021.discus.003.shtml?

my_epac_2021_35 = [15.9,109.9,60;17.4,112.6,75;18.7,115.4,80;20.4,120.0,70;21.3,124.2,60];
nhc_epac_2021_35 = [15.7,110.0,60;16.9,112.3,75;18.6,115.2,70;20.5,118.7,60;22.2,123.1,45];
btk_epac_2021_35 = [15.9,110.0,50;17.3,112.7,40;19.2,115.4,40;21.6,117.8,35;23.7,122.3,25]; #TCR
myvect = [myvect;my_epac_2021_35];
nhcvect = [nhcvect;nhc_epac_2021_35];
btkvect = [btkvect;btk_epac_2021_35];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 36 ... KEVIN before 2021-08-08-09Z
# my at https://twitter.com/elioeFIN/status/1424266111734980614
# NHC at https://www.nhc.noaa.gov/archive/2021/ep11/ep112021.discus.004.shtml?

my_epac_2021_36 = [16.0,110.8,55;17.3,112.9,65;19.0,116.9,75;20.4,120.6,60;21.7,124.5,45];
nhc_epac_2021_36 = [16.1,110.8,60;17.5,113.3,70;19.1,116.5,65;20.8,120.0,55;22.5,124.0,40];
btk_epac_2021_36 = [16.1,110.6,45;17.9,113.5,40;19.8,115.8,40;22.2,118.8,30;24.1,123.4,25]; # TCR
myvect = [myvect;my_epac_2021_36];
nhcvect = [nhcvect;nhc_epac_2021_36];
btkvect = [btkvect;btk_epac_2021_36];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 37 ... KEVIN before 2021-08-08-21Z
# my at https://twitter.com/elioeFIN/status/1424454174780047360
# NHC at https://www.nhc.noaa.gov/archive/2021/ep11/ep112021.discus.006.shtml?

my_epac_2021_37 = [16.7,111.8,60;18.4,114.9,65;19.8,118.7,65;21.3,122.4,55;22.7,126.2,35];
nhc_epac_2021_37 = [16.6,112.0,60;18.1,115.0,70;19.8,118.4,65;21.5,122.3,50;23.0,126.8,35];
btk_epac_2021_37 = [16.9,111.7,40;18.7,114.9,40;21.1,117.1,35;23.2,121.1,25;25.5,125.7,25]; # TCR
myvect = [myvect;my_epac_2021_37];
nhcvect = [nhcvect;nhc_epac_2021_37];
btkvect = [btkvect;btk_epac_2021_37];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Atl 20 ... 06L before 2021-08-10-03Z
# my at https://twitter.com/elioeFIN/status/1424895666933968896
# NHC at https://www.nhc.noaa.gov/archive/2021/al06/al062021.discus.002.shtml?

my_atl_2021_20 = [17.4,66.0,40;19.9,71.7,35;21.9,76.0,35;23.6,79.8,40;26.3,81.9,45];
nhc_atl_2021_20 = [17.5,66.0,45;19.9,71.5,35;21.7,76.1,35;23.4,79.9,40;26.1,82.4,45];
btk_atl_2021_20 = [17.3,66.1,35;19.2,71.7,30;21.2,75.5,35;22.5,80.2,30;24.1,84.1,35]; # TCR
myvect = [myvect;my_atl_2021_20];
nhcvect = [nhcvect;nhc_atl_2021_20];
btkvect = [btkvect;btk_atl_2021_20];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 21 ... 06L before 2021-08-10-21Z
# my at https://twitter.com/elioeFIN/status/1425166822727356423
# NHC at https://www.nhc.noaa.gov/archive/2021/al06/al062021.discus.005.shtml?

my_atl_2021_21 = [19.1,70.4,30;21.5,74.9,35;23.3,79.1,40;25.9,81.8,45;29.3,84.1,50];
nhc_atl_2021_21 = [19.0,70.4,35;21.2,75.0,30;23.1,79.1,35;25.5,82.5,40;28.5,84.5,50];
btk_atl_2021_21 = [18.5,70.4,35;20.9,74.7,30;22.3,79.0,30;23.3,83.5,30;26.4,85.2,40]; # TCR
myvect = [myvect;my_atl_2021_21];
nhcvect = [nhcvect;nhc_atl_2021_21];
btkvect = [btkvect;btk_atl_2021_21];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 22 ... FRED before 2021-08-12-03Z
# my at https://twitter.com/elioeFIN/status/1425618751861493764
# NHC at https://www.nhc.noaa.gov/archive/2021/al06/al062021.discus.010.shtml?

my_atl_2021_22 = [21.6,76.1,30;23.6,79.9,35;25.7,83.0,45;28.3,84.8,45;30.9,85.4,40];
nhc_atl_2021_22 = [21.6,76.1,30;23.5,79.8,35;26.2,82.4,45;29.2,84.2,50;31.7,84.7,35];
btk_atl_2021_22 = [21.2,75.5,35;22.5,80.2,30;24.1,84.1,35;27.0,85.8,50;30.6,85.4,45]; # TCR
myvect = [myvect;my_atl_2021_22];
nhcvect = [nhcvect;nhc_atl_2021_22];
btkvect = [btkvect;btk_atl_2021_22];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 23 ... FRED before 2021-08-12-09Z
# my at https://twitter.com/elioeFIN/status/1425719744691310593
# NHC at https://www.nhc.noaa.gov/archive/2021/al06/al062021.discus.011.shtml?

my_atl_2021_23 = [22.2,77.3,30;23.9,80.8,35;26.6,82.6,45;29.0,84.2,50;30.9,84.9,30];
nhc_atl_2021_23 = [22.0,77.2,30;23.8,80.3,35;26.6,82.6,45;29.5,84.4,50;32.2,84.7,35];
btk_atl_2021_23 = [21.6,76.6,35;22.7,81.3,30;25.0,84.4,35;27.8,85.9,50;31.7,83.4,35]; # TCR
myvect = [myvect;my_atl_2021_23];
nhcvect = [nhcvect;nhc_atl_2021_23];
btkvect = [btkvect;btk_atl_2021_23];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 24 ... FRED before 2021-08-12-21Z
# my at https://twitter.com/elioeFIN/status/1425893055119364101
# NHC at https://www.nhc.noaa.gov/archive/2021/al06/al062021.discus.013.shtml?

my_atl_2021_24 = [22.8,79.2,30;24.5,82.5,35;26.9,84.9,45;29.6,86.5,35;32.8,85.9,25];
nhc_atl_2021_24 = [23.0,79.2,30;25.2,81.9,35;28.1,84.1,45;31.0,85.5,40;33.5,85.5,25];
btk_atl_2021_24 = [22.3,79.0,30;23.3,83.5,30;26.4,85.2,40;29.5,85.4,55;34.0,84.7,25]; # TCR
myvect = [myvect;my_atl_2021_24];
nhcvect = [nhcvect;nhc_atl_2021_24];
btkvect = [btkvect;btk_atl_2021_24];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 25 ... GRACE before 2021-08-15-03Z
# my at https://twitter.com/elioeFIN/status/1426715056398610441
# NHC at https://www.nhc.noaa.gov/archive/2021/al07/al072021.discus.007.shtml?

my_atl_2021_25 = [18.1,67.0,50;19.4,70.9,50;21.1,75.6,40;22.4,81.5,40;25.5,84.2,50];
nhc_atl_2021_25 = [18.1,67.0,45;19.3,70.9,35;21.2,75.8,35;23.7,81.0,40;25.6,84.6,45];
btk_atl_2021_25 = [17.1,68.1,30;17.9,73.2,35;18.3,78.6,50;19.7,84.8,70;20.8,91.1,55]; # TCR
myvect = [myvect;my_atl_2021_25];
nhcvect = [nhcvect;nhc_atl_2021_25];
btkvect = [btkvect;btk_atl_2021_25];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 26 ... FRED before 2021-08-15-09Z
# my at https://twitter.com/elioeFIN/status/1426804963020316675
# NHC at https://www.nhc.noaa.gov/archive/2021/al06/al062021.discus.023.shtml?

my_atl_2021_26 = [27.3,86.6,50;31.1,86.4,40;35.5,85.7,20];
nhc_atl_2021_26 = [27.0,86.6,40;30.3,87.1,45;35.0,85.8,20];
btk_atl_2021_26 = [27.8,85.9,50;31.7,85.4,35;37.7,82.3,20]; # TCR
myvect = [myvect;my_atl_2021_26];
nhcvect = [nhcvect;nhc_atl_2021_26];
btkvect = [btkvect;btk_atl_2021_26];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Atl 27 ... GRACE before 2021-08-15-09Z
# my at https://twitter.com/elioeFIN/status/1426808401858809857
# NHC at https://www.nhc.noaa.gov/archive/2021/al07/al072021.discus.008.shtml?

my_atl_2021_27 = [18.1,67.8,40;19.7,71.6,40;21.8,76.8,40;23.6,81.4,50;25.1,85.5,50];
nhc_atl_2021_27 = [18.3,68.9,45;19.8,72.6,35;22.0,78.0,35;23.9,82.5,40;25.6,86.2,45];
btk_atl_2021_27 = [17.2,69.6,30;18.0,74.8,40;18.7,80.1,55;19.9,86.4,70;20.7,92.6,60]; # TCR
myvect = [myvect;my_atl_2021_27];
nhcvect = [nhcvect;nhc_atl_2021_27];
btkvect = [btkvect;btk_atl_2021_27];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 28 ... GRACE before 2021-08-15-21Z
# my at https://twitter.com/elioeFIN/status/1426989626724659200
# NHC at https://www.nhc.noaa.gov/archive/2021/al07/al072021.discus.010.shtml?

my_atl_2021_28 = [18.1,71.0,30;19.3,76.1,35;21.0,82.8,35;23.2,88.1,45;24.7,92.8,55];
nhc_atl_2021_28 = [18.2,71.0,30;20.2,75.8,30;22.1,81.8,30;24.0,87.0,35;25.0,91.0,45];
btk_atl_2021_28 = [17.8,71.7,35;18.3,77.4,50;19.6,83.0,70;20.5,89.5,45;20.6,94.7,85]; # TCR
myvect = [myvect;my_atl_2021_28];
nhcvect = [nhcvect;nhc_atl_2021_28];
btkvect = [btkvect;btk_atl_2021_28];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 29 ... GRACE before 2021-08-16-21Z
# my at https://twitter.com/elioeFIN/status/1427348992766226445
# NHC at https://www.nhc.noaa.gov/archive/2021/al07/al072021.discus.014.shtml?

my_atl_2021_29 = [19.0,77.1,40;20.2,83.3,50;21.7,89.7,55;22.8,94.2,70;23.0,97.8,50];
nhc_atl_2021_29 = [18.9,77.2,35;20.2,83.5,50;21.6,89.9,60;22.4,95.1,65;22.4,98.8,65];
btk_atl_2021_29 = [18.3,77.4,50;19.6,83.0,70;20.5,89.5,45;20.6,94.7,85;19.7,99.5,40]; # TCR except day 5
myvect = [myvect;my_atl_2021_29];
nhcvect = [nhcvect;nhc_atl_2021_29];
btkvect = [btkvect;btk_atl_2021_29];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 30 ... HENRI before 2021-08-17-03Z
# my at https://twitter.com/elioeFIN/status/1427439365869932549
# NHC at https://www.nhc.noaa.gov/archive/2021/al08/al082021.discus.005.shtml?

my_atl_2021_30 = [30.4,64.9,55;30.3,67.9,60;30.7,70.8,50;32.2,70.6,50;34.2,67.8,50];
nhc_atl_2021_30 = [30.4,64.8,50;30.3,67.8,50;31.3,70.1,45;32.8,69.7,45;35.0,66.5,45];
btk_atl_2021_30 = [30.2,64.5,55;29.7,68.0,60;29.7,72.0,55;31.6,73.7,60;37.6,70.9,65]; # TCR
myvect = [myvect;my_atl_2021_30];
nhcvect = [nhcvect;nhc_atl_2021_30];
btkvect = [btkvect;btk_atl_2021_30];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 31 ... GRACE before 2021-08-17-03Z
# my at https://twitter.com/elioeFIN/status/1427443695457120256
# NHC at https://www.nhc.noaa.gov/archive/2021/al07/al072021.discus.015.shtml?

my_atl_2021_31 = [19.0,78.9,40;20.2,85.2,55;21.2,91.4,55;22.3,96.0,60;22.2,99.4,40];
nhc_atl_2021_31 = [19.1,78.8,40;20.3,85.1,50;21.6,91.3,55;22.2,95.9,65;22.5,100.0,40];
btk_atl_2021_31 = [18.3,78.6,50;19.7,84.8,70;20.8,91.1,55;20.7,95.8,105;18.8,103.0,25]; # TCR except day 5
myvect = [myvect;my_atl_2021_31];
nhcvect = [nhcvect;nhc_atl_2021_31];
btkvect = [btkvect;btk_atl_2021_31];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 32 ... GRACE before 2021-08-17-09Z
# my at https://twitter.com/elioeFIN/status/1427531133915439105
# NHC at https://www.nhc.noaa.gov/archive/2021/al07/al072021.discus.016.shtml?

my_atl_2021_32 = [19.1,80.9,45;19.9,87.1,55;20.6,92.9,55;21.3,97.2,65;21.0,101.6,25];
nhc_atl_2021_32 = [19.1,80.7,45;20.4,87.0,60;21.4,92.7,55;22.0,97.2,60;22.3,101.4,30];
btk_atl_2021_32 = [18.7,80.1,55;19.9,86.4,70;20.7,92.6,60;20.6,97.2,100;18.8,104.3,30]; # TCR except day 5
myvect = [myvect;my_atl_2021_32];
nhcvect = [nhcvect;nhc_atl_2021_32];
btkvect = [btkvect;btk_atl_2021_32];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 33 ... GRACE before 2021-08-17-21Z
# my at https://twitter.com/elioeFIN/status/1427705957304475651
# NHC at https://www.nhc.noaa.gov/archive/2021/al07/al072021.discus.018.shtml?

my_atl_2021_33 = [19.5,83.3,70;20.5,89.5,60;20.7,94.7,65;20.4,99.4,45;21.7,104.7,25];
nhc_atl_2021_33 = [19.4,83.4,70;20.5,89.7,60;21.2,94.8,75;21.0,99.5,40;21.0,103.0,20];
btk_atl_2021_33 = [19.6,83.0,70;20.5,89.5,45;20.6,94.7,85;19.7,99.5,40;19.3,107.6,30]; # TCR except days 4&5
myvect = [myvect;my_atl_2021_33];
nhcvect = [nhcvect;nhc_atl_2021_33];
btkvect = [btkvect;btk_atl_2021_33];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 34 ... GRACE before 2021-08-18-21Z
# my at https://twitter.com/elioeFIN/status/1428067847561961475
# NHC at https://www.nhc.noaa.gov/archive/2021/al07/al072021.discus.022.shtml?

my_atl_2021_34 = [20.9,89.5,60;20.9,94.8,70;20.0,99.9,40;21.6,103.7,25];
nhc_atl_2021_34 = [20.7,89.3,55;20.8,94.6,70;20.0,99.9,30;19.5,104.0,20];
btk_atl_2021_34 = [20.5,89.5,45;20.6,94.7,85;19.7,99.5,40;19.3,107.6,30]; # TCR except days 3&4
myvect = [myvect;my_atl_2021_34];
nhcvect = [nhcvect;nhc_atl_2021_34];
btkvect = [btkvect;btk_atl_2021_34];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 35 ... HENRI before 2021-08-19-03Z
# my at https://twitter.com/elioeFIN/status/1428163849786699781
# NHC at https://www.nhc.noaa.gov/archive/2021/al08/al082021.discus.013.shtml?

my_atl_2021_35 = [30.1,71.7,60;32.3,72.7,70;37.5,70.5,75;40.9,68.9,65;42.4,67.1,45];
nhc_atl_2021_35 = [30.0,71.8,60;32.3,72.8,70;36.9,70.7,75;40.4,69.4,70;41.8,68.3,60];
btk_atl_2021_35 = [29.7,72.0,55;31.6,73.7,60;37.6,70.9,65;41.8,73.0,30;41.4,72.7,20]; # TCR
myvect = [myvect;my_atl_2021_35];
nhcvect = [nhcvect;nhc_atl_2021_35];
btkvect = [btkvect;btk_atl_2021_35];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 36 ... GRACE before 2021-08-19-03Z
# my at https://twitter.com/elioeFIN/status/1428167955624431618
# NHC at https://www.nhc.noaa.gov/archive/2021/al07/al072021.discus.023.shtml?

my_atl_2021_36 = [20.7,91.3,55;20.6,96.5,70;19.6,102.2,30];
nhc_atl_2021_36 = [20.6,91.4,60;20.5,96.1,75;19.7,101.6,20];
btk_atl_2021_36 = [20.8,91.1,55;20.7,95.8,105;18.8,103.0,25]; # TCR except day 3
myvect = [myvect;my_atl_2021_36];
nhcvect = [nhcvect;nhc_atl_2021_36];
btkvect = [btkvect;btk_atl_2021_36];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Atl 37 ... GRACE before 2021-08-19-09Z
# my at https://twitter.com/elioeFIN/status/1428248839119646725
# NHC at https://www.nhc.noaa.gov/archive/2021/al07/al072021.discus.024.shtml?

my_atl_2021_37 = [20.8,92.6,60;20.4,97.3,60];
nhc_atl_2021_37 = [20.6,92.6,60;20.1,97.3,55];
btk_atl_2021_37 = [20.7,92.6,60;20.6,97.2,100]; # TCR
myvect = [myvect;my_atl_2021_37];
nhcvect = [nhcvect;nhc_atl_2021_37];
btkvect = [btkvect;btk_atl_2021_37];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Atl 38 ... GRACE before 2021-08-19-21Z
# my at https://twitter.com/elioeFIN/status/1428435457453531143
# NHC at https://www.nhc.noaa.gov/archive/2021/al07/al072021.discus.026.shtml?

my_atl_2021_38 = [20.9,94.7,65;20.1,99.6,35];
nhc_atl_2021_38 = [20.7,94.9,70;19.6,99.4,35];
btk_atl_2021_38 = [20.6,94.7,85;19.7,99.5,40]; # TCR except day 2
myvect = [myvect;my_atl_2021_38];
nhcvect = [nhcvect;nhc_atl_2021_38];
btkvect = [btkvect;btk_atl_2021_38];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Atl 39 ... HENRI before 2021-08-20-15Z
# my at https://twitter.com/elioeFIN/status/1428704580116877316
# NHC at https://www.nhc.noaa.gov/archive/2021/al08/al082021.discus.019.shtml?

my_atl_2021_39 = [34.1,72.9,65;40.0,71.9,65;42.7,72.4,40;44.6,68.6,30];
nhc_atl_2021_39 = [34.1,72.7,70;39.8,71.7,65;42.4,71.8,40;43.7,69.4,35];
btk_atl_2021_39 = [33.6,72.7,65;40.7,71.3,55;41.6,74.2,25;42.2,69.6,20]; # TCR
myvect = [myvect;my_atl_2021_39];
nhcvect = [nhcvect;nhc_atl_2021_39];
btkvect = [btkvect;btk_atl_2021_39];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 40 ... HENRI before 2021-08-22-03Z
# my at https://twitter.com/elioeFIN/status/1429248949093904389
# NHC at https://www.nhc.noaa.gov/archive/2021/al08/al082021.discus.025.shtml?

my_atl_2021_40 = [41.9,71.7,40;44.0,71.4,25];
nhc_atl_2021_40 = [41.9,71.8,55;43.9,70.5,25];
btk_atl_2021_40 = [41.8,73.0,30;41.4,72.7,20]; # TCR
myvect = [myvect;my_atl_2021_40];
nhcvect = [nhcvect;nhc_atl_2021_40];
btkvect = [btkvect;btk_atl_2021_40];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Epac 38 ... MARTY before 2021-08-23-21Z
# my at https://twitter.com/elioeFIN/status/1429884699900534796
# NHC at https://www.nhc.noaa.gov/archive/2021/ep13/ep132021.discus.003.shtml?

my_epac_2021_38 = [21.1,118.6,35;21.0,122.5,25;20.9,126.8,20];
nhc_epac_2021_38 = [21.0,118.6,35;20.9,122.6,25;20.8,127.0,20];
btk_epac_2021_38 = [20.5,118.6,30;20.6,122.4,25;20.5,126.7,25]; # TCR
myvect = [myvect;my_epac_2021_38];
nhcvect = [nhcvect;nhc_epac_2021_38];
btkvect = [btkvect;btk_epac_2021_38];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 39 ... MARTY before 2021-08-24-03Z
# my at https://twitter.com/elioeFIN/status/1429972829936705539
# NHC at https://www.nhc.noaa.gov/archive/2021/ep13/ep132021.discus.004.shtml?

my_epac_2021_39 = [20.5,120.1,30;21.2,124.3,25;20.5,128.3,20];
nhc_epac_2021_39 = [20.7,119.9,35;20.7,123.9,25;20.1,128.5,20];
btk_epac_2021_39 = [20.5,119.6,30;20.7,123.4,25;20.2,127.8,25]; # TCR
myvect = [myvect;my_epac_2021_39];
nhcvect = [nhcvect;nhc_epac_2021_39];
btkvect = [btkvect;btk_epac_2021_39];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 40  ... 14E before 2021-08-26-03Z
# my at https://twitter.com/elioeFIN/status/1430699681349345281
# NHC at https://www.nhc.noaa.gov/archive/2021/ep14/ep142021.discus.002.shtml?

my_epac_2021_40 = [13.2,101.7,40;15.7,104.1,50;19.2,105.8,50;21.9,109.4,55];
nhc_epac_2021_40 = [13.1,102.7,40;15.6,104.8,55;18.8,106.5,65;21.3,108.7,70];
btk_epac_2021_40 = [13.6,101.9,40;16.0,105.0,55;20.6,105.4,65;23.6,106.7,35]; # TCR
myvect = [myvect;my_epac_2021_40];
nhcvect = [nhcvect;nhc_epac_2021_40];
btkvect = [btkvect;btk_epac_2021_40];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Epac 41 ...  14E before 2021-08-26-09Z
# my at https://twitter.com/elioeFIN/status/1430787959566045186
# NHC at https://www.nhc.noaa.gov/archive/2021/ep14/ep142021.discus.003.shtml?

my_epac_2021_41 = [14.0,102.0,40;16.9,104.3,45;19.4,105.7,40;20.5,107.9,45];
nhc_epac_2021_41 = [13.9,102.8,40;16.5,105.1,55;19.5,106.3,65;21.5,108.5,70];
btk_epac_2021_41 = [14.3,102.9,45;16.8,105.1,60;21.9,105.7,60;24.0,107.1,30]; # TCR
myvect = [myvect;my_epac_2021_41];
nhcvect = [nhcvect;nhc_epac_2021_41];
btkvect = [btkvect;btk_epac_2021_41];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Atl 41 ... 09L before 2021-08-26-21Z
# my at https://twitter.com/elioeFIN/status/1430972669743271943
# NHC at https://www.nhc.noaa.gov/archive/2021/al09/al092021.discus.002.shtml?

my_atl_2021_41 = [21.6,82.7,50;25.8,86.9,65;28.3,90.3,95;31.6,91.4,50;33.3,91.3,30];
nhc_atl_2021_41 = [21.7,82.8,55;25.6,87.0,70;28.9,90.4,95;31.9,91.4,50;34.6,90.0,25];
btk_atl_2021_41 = [21.5,82.6,70;25.6,86.6,80;29.2,90.4,125;32.2,90.5,35;35.1,87.1,20]; # TCR
myvect = [myvect;my_atl_2021_41];
nhcvect = [nhcvect;nhc_atl_2021_41];
btkvect = [btkvect;btk_atl_2021_41];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 42 ... IDA before 2021-08-27-15Z
# my at https://twitter.com/elioeFIN/status/1431251273588822022
# NHC at https://www.nhc.noaa.gov/archive/2021/al09/al092021.discus.005.shtml?

my_atl_2021_42 = [24.1,85.7,80;27.9,89.3,100;30.3,91.0,75;33.1,90.2,35;34.4,87.1,25];
nhc_atl_2021_42 = [24.0,85.8,75;27.6,89.7,105;30.3,91.3,60;33.3,90.2,30;35.2,87.1,20];
btk_atl_2021_42 = [24.4,85.7,70;28.5,89.6,130;31.5,90.9,40;34.4,88.4,25;37.7,81.5,25]; # TCR
myvect = [myvect;my_atl_2021_42];
nhcvect = [nhcvect;nhc_atl_2021_42];
btkvect = [btkvect;btk_atl_2021_42];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 42 ... NORA before 2021-08-27-21Z
# my at https://twitter.com/elioeFIN/status/1431335616894095366
# NHC at https://www.nhc.noaa.gov/archive/2021/ep14/ep142021.discus.009.shtml?

my_epac_2021_42 = [18.3,106.2,60;22.2,107.7,55];
nhc_epac_2021_42 = [18.3,106.2,65;21.9,107.8,75];
btk_epac_2021_42 = [19.1,105.3,75;23.2,106.3,40]; # TCR
myvect = [myvect;my_epac_2021_42];
nhcvect = [nhcvect;nhc_epac_2021_42];
btkvect = [btkvect;btk_epac_2021_42];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Atl 43 ... IDA before 2021-08-27-21Z
# my at https://twitter.com/elioeFIN/status/1431331173347872769
# NHC at https://www.nhc.noaa.gov/archive/2021/al09/al092021.discus.006.shtml?

my_atl_2021_43 = [25.3,86.9,100;28.7,90.4,115;31.7,90.9,45;34.3,89.5,25;36.0,87.5,25];
nhc_atl_2021_43 = [25.3,86.9,105;28.6,90.6,120;31.5,91.1,40;34.4,89.3,30;36.0,86.0,20];
btk_atl_2021_43 = [25.6,86.6,80;29.2,90.4,125;32.2,90.5,35;35.1,87.1,20;39.0,78.5,30]; # TCR
myvect = [myvect;my_atl_2021_43];
nhcvect = [nhcvect;nhc_atl_2021_43];
btkvect = [btkvect;btk_atl_2021_43];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 43 ... NORA before 2021-08-28-21Z
# my at https://twitter.com/elioeFIN/status/1431697063868309505
# NHC at https://www.nhc.noaa.gov/archive/2021/ep14/ep142021.discus.013.shtml?

my_epac_2021_43 = [23.5,107.0,55];
nhc_epac_2021_43 = [22.9,106.7,75];
btk_epac_2021_43 = [23.2,106.3,40]; # TCR
myvect = [myvect;my_epac_2021_43];
nhcvect = [nhcvect;nhc_epac_2021_43];
btkvect = [btkvect;btk_epac_2021_43];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;2];

# Atl 44 ... IDA before 2021-08-28-21Z
# my at https://twitter.com/elioeFIN/status/1431702493126402050
# NHC at https://www.nhc.noaa.gov/archive/2021/al09/al092021.discus.010.shtml?

my_atl_2021_44 = [29.2,90.3,115;32.2,91.0,40;35.8,88.4,25;37.8,84.1,20];
nhc_atl_2021_44 = [29.1,90.4,115;32.2,91.2,35;35.7,88.1,20;38.0,82.5,20];
btk_atl_2021_44 = [29.2,90.4,125;32.2,90.5,35;35.1,87.1,20;39.0,78.5,30]; # TCR
myvect = [myvect;my_atl_2021_44];
nhcvect = [nhcvect;nhc_atl_2021_44];
btkvect = [btkvect;btk_atl_2021_44];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 45 ... IDA before 2021-08-29-03Z
# my at https://twitter.com/elioeFIN/status/1431787509760118784
# NHC at https://www.nhc.noaa.gov/archive/2021/al09/al092021.discus.011.shtml?

my_atl_2021_45 = [29.9,91.0,80;33.1,90.6,30;36.1,86.8,25;38.2,81.8,25];
nhc_atl_2021_45 = [29.9,90.7,85;33.1,90.6,30;36.3,86.7,20;38.6,80.6,20];
btk_atl_2021_45 = [29.9,90.6,105;33.0,90.0,30;35.8,85.5,20;39.8,75.6,35]; # TCR
myvect = [myvect;my_atl_2021_45];
nhcvect = [nhcvect;nhc_atl_2021_45];
btkvect = [btkvect;btk_atl_2021_45];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 46 ... 10L before 2021-08-29-03Z
# my at https://twitter.com/elioeFIN/status/1431792732620705795
# NHC at https://www.nhc.noaa.gov/archive/2021/al10/al102021.discus.004.shtml?

my_atl_2021_46 = [19.4,50.2,35;22.2,49.8,35;25.2,49.4,30];
nhc_atl_2021_46 = [19.4,49.9,35;22.3,49.2,35;25.0,49.2,40];
btk_atl_2021_46 = [19.8,50.5,30;22.6,50.9,35;24.6,51.2,30]; # TCR
myvect = [myvect;my_atl_2021_46];
nhcvect = [nhcvect;nhc_atl_2021_46];
btkvect = [btkvect;btk_atl_2021_46];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Atl 47 ... IDA before 2021-08-29-09Z
# my at https://twitter.com/elioeFIN/status/1431885375354646528
# NHC at https://www.nhc.noaa.gov/archive/2021/al09/al092021.discus.012.shtml?

my_atl_2021_47 = [30.6,91.2,60;33.9,89.9,25;36.8,85.1,20;38.9,77.2,25];
nhc_atl_2021_47 = [30.6,91.1,70;33.8,90.0,30;36.7,85.2,20;38.9,78.9,20];
btk_atl_2021_47 = [30.6,90.8,65;33.8,89.4,25;36.7,83.6,20;40.6,72.8,40]; # TCR
myvect = [myvect;my_atl_2021_47];
nhcvect = [nhcvect;nhc_atl_2021_47];
btkvect = [btkvect;btk_atl_2021_47];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 48 ... 10L before 2021-08-29-21Z
# my at https://twitter.com/elioeFIN/status/1432058286610735108
# NHC at https://www.nhc.noaa.gov/archive/2021/al10/al102021.discus.007.shtml?

my_atl_2021_48 = [21.9,50.3,35;24.0,49.9,35;26.6,51.6,40];
nhc_atl_2021_48 = [22.1,49.9,30;24.5,49.3,35;27.4,50.6,40];
btk_atl_2021_48 = [22.1,50.9,35;23.9,50.9,30;28.0,52.7,25]; # TCR, except day 3
myvect = [myvect;my_atl_2021_48];
nhcvect = [nhcvect;nhc_atl_2021_48];
btkvect = [btkvect;btk_atl_2021_48];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Atl 49 ... KATE before 2021-08-31-03Z
# my at https://twitter.com/elioeFIN/status/1432513984008183812
# NHC at https://www.nhc.noaa.gov/archive/2021/al10/al102021.discus.012.shtml?

my_atl_2021_49 = [24.8,51.0,30];
nhc_atl_2021_49 = [24.8,50.9,30];
btk_atl_2021_49 = [24.6,51.2,30]; # TCR
myvect = [myvect;my_atl_2021_49];
nhcvect = [nhcvect;nhc_atl_2021_49];
btkvect = [btkvect;btk_atl_2021_49];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;1];

# Atl 50 ... KATE before 2021-08-31-09Z
# my at https://twitter.com/elioeFIN/status/1432602810932211716
# NHC at https://www.nhc.noaa.gov/archive/2021/al10/al102021.discus.013.shtml?

my_atl_2021_50 = [25.3,51.5,35];
nhc_atl_2021_50 = [25.2,51.5,35];
btk_atl_2021_50 = [25.3,51.5,30]; # TCR
myvect = [myvect;my_atl_2021_50];
nhcvect = [nhcvect;nhc_atl_2021_50];
btkvect = [btkvect;btk_atl_2021_50];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;1];

# Atl 51 ... KATE before 2021-08-31-21Z
# my at https://twitter.com/elioeFIN/status/1432776740884070403
# NHC at https://www.nhc.noaa.gov/archive/2021/al10/al102021.discus.015.shtml?

my_atl_2021_51 = [26.9,52.5,30];
nhc_atl_2021_51 = [26.9,52.6,30];
btk_atl_2021_51 = [28.0,52.7,25]; # tcr has no value
myvect = [myvect;my_atl_2021_51];
nhcvect = [nhcvect;nhc_atl_2021_51];
btkvect = [btkvect;btk_atl_2021_51];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;1];

# Atl 52 ... KATE before 2021-09-01-15Z
# my at https://twitter.com/elioeFIN/status/1433058644556455941
# NHC at https://www.nhc.noaa.gov/archive/2021/al10/al102021.discus.018.shtml?
# (nothing to be verified, not even after tcr release)

# Atl 53 ... LARRY before 2021-09-01-15Z
# my at https://twitter.com/elioeFIN/status/1433062280590241795
# NHC at https://www.nhc.noaa.gov/archive/2021/al12/al122021.discus.004.shtml?

my_atl_2021_53 = [12.8,33.0,65;14.3,38.9,80;16.4,44.1,105;19.2,48.2,105;21.6,52.3,100];
nhc_atl_2021_53 = [12.7,33.4,65;13.9,39.2,90;16.2,44.6,105;19.0,49.6,105;22.0,52.5,105];
btk_atl_2021_53 = [13.3,33.3,70;14.4,40.0,80;16.4,45.3,110;19.2,49.4,110;21.6,52.7,105]; # TCR
myvect = [myvect;my_atl_2021_53];
nhcvect = [nhcvect;nhc_atl_2021_53];
btkvect = [btkvect;btk_atl_2021_53];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 54 ... LARRY before 2021-09-02-03Z
# my at https://twitter.com/elioeFIN/status/1433234028677709826
# NHC at https://www.nhc.noaa.gov/archive/2021/al12/al122021.discus.006.shtml?

my_atl_2021_54 = [13.6,36.5,85;15.2,42.4,95;17.6,47.5,105;20.1,51.7,105;23.0,55.1,115];
nhc_atl_2021_54 = [13.6,36.5,85;15.1,42.2,100;17.4,47.3,110;20.1,51.4,110;22.9,55.0,110];
btk_atl_2021_54 = [13.9,36.7,75;15.2,42.7,100;17.7,47.5,105;20.7,51.2,110;22.7,54.2,105]; # TCR
myvect = [myvect;my_atl_2021_54];
nhcvect = [nhcvect;nhc_atl_2021_54];
btkvect = [btkvect;btk_atl_2021_54];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 55 ... LARRY before 2021-09-02-15Z
# my at https://twitter.com/elioeFIN/status/1433416398089359362
# NHC at https://www.nhc.noaa.gov/archive/2021/al12/al122021.discus.008.shtml?

my_atl_2021_55 = [14.4,39.7,90;16.5,45.0,100;19.2,49.4,110;21.8,52.3,110;24.5,54.8,100];
nhc_atl_2021_55 = [14.4,39.7,85;16.5,45.2,105;19.2,49.7,120;21.8,53.1,115;24.6,56.0,110];
btk_atl_2021_55 = [14.4,40.0,80;16.4,45.3,110;19.2,49.4,110;21.6,52.7,105;24.0,55.4,95]; # TCR
myvect = [myvect;my_atl_2021_55];
nhcvect = [nhcvect;nhc_atl_2021_55];
btkvect = [btkvect;btk_atl_2021_55];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 56 ... LARRY before 2021-09-03-03Z
# my at https://twitter.com/elioeFIN/status/1433595828845821958
# NHC at https://www.nhc.noaa.gov/archive/2021/al12/al122021.discus.010.shtml?

my_atl_2021_56 = [15.4,42.6,95;17.7,47.4,100;20.4,51.7,110;22.7,54.9,110;25.8,57.8,115];
nhc_atl_2021_56 = [15.3,42.6,95;17.6,47.5,115;20.4,51.8,120;22.9,55.0,115;25.9,58.0,110];
btk_atl_2021_56 = [15.2,42.7,100;17.7,47.5,105;20.7,51.2,110;22.7,54.2,105;25.4,56.5,95]; # TCR
myvect = [myvect;my_atl_2021_56];
nhcvect = [nhcvect;nhc_atl_2021_56];
btkvect = [btkvect;btk_atl_2021_56];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 57 ... LARRY before 2021-09-03-15Z
# my at https://twitter.com/elioeFIN/status/1433777237522849793
# NHC at https://www.nhc.noaa.gov/archive/2021/al12/al122021.discus.012.shtml?

my_atl_2021_57 = [16.4,45.2,95;18.8,49.7,105;21.0,53.4,110;23.9,56.4,105;27.1,59.3,100];
nhc_atl_2021_57 = [16.5,45.3,100;19.0,49.8,115;21.4,53.6,120;24.2,56.9,115;27.8,60.0,105];
btk_atl_2021_57 = [16.4,45.3,110;19.2,49.4,110;21.6,52.7,105;24.0,55.4,95;27.2,57.9,95]; # TCR
myvect = [myvect;my_atl_2021_57];
nhcvect = [nhcvect;nhc_atl_2021_57];
btkvect = [btkvect;btk_atl_2021_57];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 58 ... LARRY before 2021-09-05-15Z
# my at https://twitter.com/elioeFIN/status/1434512339374645259
# NHC at https://www.nhc.noaa.gov/archive/2021/al12/al122021.discus.020.shtml?

my_atl_2021_58 = [21.8,52.6,110;24.2,55.5,105;27.3,58.3,100;30.7,60.7,95;37.1,60.4,80];
nhc_atl_2021_58 = [21.9,52.6,110;24.3,55.4,105;27.3,58.1,105;31.1,61.1,95;37.4,60.6,85];
btk_atl_2021_58 = [21.6,52.7,105;24.0,55.4,95;27.2,57.9,90;31.3,61.5,80;38.9,61.1,70]; # TCR
myvect = [myvect;my_atl_2021_58];
nhcvect = [nhcvect;nhc_atl_2021_58];
btkvect = [btkvect;btk_atl_2021_58];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 59 ... LARRY before 2021-09-05-21Z
# my at https://twitter.com/elioeFIN/status/1434601028016607234
# NHC at https://www.nhc.noaa.gov/archive/2021/al12/al122021.discus.021.shtml?

my_atl_2021_59 = [22.7,53.5,110;25.3,56.4,100;28.4,59.5,95;32.4,61.7,90;39.9,59.3,85];
nhc_atl_2021_59 = [22.7,53.4,110;25.3,56.2,100;28.5,59.1,100;32.8,61.3,95;39.8,58.7,85];
btk_atl_2021_59 = [22.1,53.5,105;24.7,56.0,95;28.2,58.9,90;32.8,62.1,80;41.9,59.5,70]; # TCR
myvect = [myvect;my_atl_2021_59];
nhcvect = [nhcvect;nhc_atl_2021_59];
btkvect = [btkvect;btk_atl_2021_59];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 60 ... LARRY before 2021-09-06-03Z
# my at https://twitter.com/elioeFIN/status/1434685809094021129
# NHC at https://www.nhc.noaa.gov/archive/2021/al12/al122021.discus.022.shtml?

my_atl_2021_60 = [23.2,54.1,110;26.0,56.9,95;29.4,59.9,95;34.5,61.3,90;42.1,55.7,80];
nhc_atl_2021_60 = [23.2,54.1,110;26.0,56.7,100;29.4,59.9,90;34.4,61.6,85;42.9,55.8,80];
btk_atl_2021_60 = [22.7,54.2,105;25.4,56.5,95;29.1,59.9,85;34.4,62.3,80;45.1,56.6,70]; # TCR
myvect = [myvect;my_atl_2021_60];
nhcvect = [nhcvect;nhc_atl_2021_60];
btkvect = [btkvect;btk_atl_2021_60];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 61 ... LARRY before 2021-09-06-15Z
# my at https://twitter.com/elioeFIN/status/1434865209500389390
# NHC at https://www.nhc.noaa.gov/archive/2021/al12/al122021.discus.024.shtml?

my_atl_2021_61 = [24.4,55.2,105;27.5,58.0,95;31.8,61.2,90;38.4,59.8,80;48.9,48.5,65];
nhc_atl_2021_61 = [24.5,55.3,110;27.5,58.0,100;31.6,61.2,95;38.6,60.0,85;49.0,49.0,70];
btk_atl_2021_61 = [24.0,55.4,95;27.2,57.9,95;31.3,61.5,80;38.9,61.0,70;52.5,49.7,60]; # TCR
myvect = [myvect;my_atl_2021_61];
nhcvect = [nhcvect;nhc_atl_2021_61];
btkvect = [btkvect;btk_atl_2021_61];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 18 ... CONSON before 2021-09-07-03Z
# my at https://twitter.com/elioeFIN/status/1435044383301279745

my_wpac_2021_18 = [13.5,122.5,50;15.1,120.3,45;16.5,117.8,60;17.3,113.3,70;18.2,111.5,75];
nhc_wpac_2021_18 = [13.5,122.2,55;15.0,119.8,50;16.3,116.2,55;17.5,112.2,65;18.6,108.5,80];
btk_wpac_2021_18 = [13.7,121.4,60;15.3,118.3,40;15.7,112.8,45;15.8,109.9,50;15.3,109.2,35]; # JTWC best track
myvect = [myvect;my_wpac_2021_18];
nhcvect = [nhcvect;nhc_wpac_2021_18];
btkvect = [btkvect;btk_wpac_2021_18];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Atl 62 ... LARRY before 2021-09-07-03Z
# my at https://twitter.com/elioeFIN/status/1435050545996255236
# NHC at https://www.nhc.noaa.gov/archive/2021/al12/al122021.discus.026.shtml?

my_atl_2021_62 = [25.6,56.7,105;29.2,60.1,95;34.7,62.0,85;43.7,56.1,80;55.1,43.8,65];
nhc_atl_2021_62 = [25.6,56.8,100;29.2,59.9,95;34.6,61.8,90;44.0,55.7,80;55.5,43.4,65];
btk_atl_2021_62 = [25.4,56.5,95;29.1,59.9,85;34.4,62.3,80;45.1,56.6,70;57.5,47.0,55]; # TCR but day 5 self-made
myvect = [myvect;my_atl_2021_62];
nhcvect = [nhcvect;nhc_atl_2021_62];
btkvect = [btkvect;btk_atl_2021_62];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 63 ... LARRY before 2021-09-07-21Z
# my at https://twitter.com/elioeFIN/status/1435317211204395017
# NHC at https://www.nhc.noaa.gov/archive/2021/al12/al122021.discus.029.shtml?

my_atl_2021_63 = [28.1,58.8,95;33.2,61.7,85;41.5,58.5,80;54.1,47.8,55;59.3,39.7,45];
nhc_atl_2021_63 = [28.3,58.8,95;33.3,61.7,90;41.7,58.2,80;53.0,48.0,65;60.0,38.0,50];
btk_atl_2021_63 = [28.2,58.9,90;32.8,62.1,80;41.9,59.5,70;55.3,46.8,55;61.5,41.0,55]; # TCR but day 5 self-made
myvect = [myvect;my_atl_2021_63];
nhcvect = [nhcvect;nhc_atl_2021_63];
btkvect = [btkvect;btk_atl_2021_63];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 19 ... CHANTHU before 2021-09-08-03Z
# my at https://twitter.com/elioeFIN/status/1435402373405495298

my_wpac_2021_18 = [16.5,128.2,130;18.5,123.9,125;20.6,120.6,125;21.7,118.1,110;22.6,115.4,75];
nhc_wpac_2021_18 = [16.3,128.3,135;18.4,124.0,125;20.4,121.2,130;22.1,119.1,95;23.8,117.3,70];
btk_wpac_2021_18 = [15.4,128.0,140;17.1,124.1,135;20.3,122.0,145;23.8,122.3,105;29.1,123.6,85]; # JTWC best track
myvect = [myvect;my_wpac_2021_18];
nhcvect = [nhcvect;nhc_wpac_2021_18];
btkvect = [btkvect;btk_wpac_2021_18];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Epac 44 ... 15E before 2021-09-08-03Z
# my at https://twitter.com/elioeFIN/status/1435409824326561793
# NHC at https://www.nhc.noaa.gov/archive/2021/ep15/ep152021.discus.002.shtml?

my_epac_2021_44 = [19.5,108.1,45;22.3,110.4,60;24.4,113.1,50;24.3,115.6,35];
nhc_epac_2021_44 = [19.4,108.4,45;21.7,110.6,65;23.7,113.7,55;24.5,116.5,40];
btk_epac_2021_44 = [19.7,107.6,45;22.7,109.3,85;24.7,113.0,35;24.3,114.8,25]; # TCR
myvect = [myvect;my_epac_2021_44];
nhcvect = [nhcvect;nhc_epac_2021_44];
btkvect = [btkvect;btk_epac_2021_44];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Atl 64 ... MINDY before 2021-09-09-03Z
# my at https://twitter.com/elioeFIN/status/1435766879474290695
# NHC at https://www.nhc.noaa.gov/archive/2021/al13/al132021.discus.002.shtml?

my_atl_2021_64 = [32.5,77.3,35];
nhc_atl_2021_64 = [32.2,77.7,30];
btk_atl_2021_64 = [32.1,76.8,30]; # TCR
myvect = [myvect;my_atl_2021_64];
nhcvect = [nhcvect;nhc_atl_2021_64];
btkvect = [btkvect;btk_atl_2021_64];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;1];

# Epac 45 ... OLAF before 2021-09-09-03Z
# my at https://twitter.com/elioeFIN/status/1435772018570539013
# NHC at https://www.nhc.noaa.gov/archive/2021/ep15/ep152021.discus.006.shtml?

my_epac_2021_45 = [21.9,109.7,60;23.6,112.3,45;22.8,115.0,30];
nhc_epac_2021_45 = [21.9,109.9,60;23.4,113.0,55;23.3,115.7,35];
btk_epac_2021_45 = [22.7,109.3,80;24.7,113.0,35;24.3,114.8,25]; # TCR
myvect = [myvect;my_epac_2021_45];
nhcvect = [nhcvect;nhc_epac_2021_45];
btkvect = [btkvect;btk_epac_2021_45];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 46 ... OLAF before 2021-09-09-15Z
# my at https://twitter.com/elioeFIN/status/1435952187214114838
# NHC at https://www.nhc.noaa.gov/archive/2021/ep15/ep152021.discus.008.shtml?

my_epac_2021_46 = [23.5,110.7,60;24.1,113.2,50];
nhc_epac_2021_46 = [23.3,110.7,65;24.1,113.5,45];
btk_epac_2021_46 = [24.0,111.2,60;24.5,114.1,30]; # TCR
myvect = [myvect;my_epac_2021_46];
nhcvect = [nhcvect;nhc_epac_2021_46];
btkvect = [btkvect;btk_epac_2021_46];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Epac 47 ... OLAF before 2021-09-10-03Z
# my at https://twitter.com/elioeFIN/status/1436135511605882882
# NHC at https://www.nhc.noaa.gov/archive/2021/ep15/ep152021.discus.010.shtml?

my_epac_2021_47 = [24.8,112.5,50;24.1,114.9,40];
nhc_epac_2021_47 = [24.6,112.3,65;24.4,114.8,45];
btk_epac_2021_47 = [24.7,113.0,35;24.3,114.8,25]; # TCR
myvect = [myvect;my_epac_2021_47];
nhcvect = [nhcvect;nhc_epac_2021_47];
btkvect = [btkvect;btk_epac_2021_47];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Epac 48 ... OLAF before 2021-09-10-21Z
# my at https://twitter.com/elioeFIN/status/1436405943550496772
# NHC at https://www.nhc.noaa.gov/archive/2021/ep15/ep152021.discus.013.shtml?

my_epac_2021_48 = [24.9,114.9,25];
nhc_epac_2021_48 = [24.7,114.8,25];
btk_epac_2021_48 = [24.4,114.5,25]; # TCR
myvect = [myvect;my_epac_2021_48];
nhcvect = [nhcvect;nhc_epac_2021_48];
btkvect = [btkvect;btk_epac_2021_48];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;2];

# Atl 65 ... NICHOLAS before 2021-09-13-03Z
# my at https://twitter.com/elioeFIN/status/1437225265407668232
# NHC at https://www.nhc.noaa.gov/archive/2021/al14/al142021.discus.003.shtml?

my_atl_2021_65 = [26.9,96.8,50;30.0,95.6,30;30.7,94.7,25;31.9,94.4,20];
nhc_atl_2021_65 = [27.0,96.5,50;29.9,95.4,45;31.0,94.0,30;31.7,92.0,20];
btk_atl_2021_65 = [28.0,96.2,65;29.9,94.4,30;29.9,91.8,25;30.3,92.6,15]; # TCR
myvect = [myvect;my_atl_2021_65];
nhcvect = [nhcvect;nhc_atl_2021_65];
btkvect = [btkvect;btk_atl_2021_65];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 66 ... NICHOLAS before 2021-09-13-09Z
# my at https://twitter.com/elioeFIN/status/1437315680005668864
# NHC at https://www.nhc.noaa.gov/archive/2021/al14/al142021.discus.005.shtml?

my_atl_2021_66 = [29.4,96.5,55;31.9,94.3,30;33.0,92.5,25];
nhc_atl_2021_66 = [29.2,96.5,45;31.5,94.5,30;32.5,91.5,20];
btk_atl_2021_66 = [28.8,95.7,65;30.2,93.8,30;29.3,91.6,20]; # TCR
myvect = [myvect;my_atl_2021_66];
nhcvect = [nhcvect;nhc_atl_2021_66];
btkvect = [btkvect;btk_atl_2021_66];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Wpac 20 ... CHANTHU before 2021-09-14-09Z
# my at https://twitter.com/elioeFIN/status/1437676470629978117

my_wpac_2021_20 = [30.6,124.9,45;32.1,125.1,45;35.2,130.9,40;39.6,143.6,40];
nhc_wpac_2021_20 = [30.2,125.2,40;31.5,125.4,35;34.5,130.5,35;38.7,141.4,30];
btk_wpac_2021_20 = [30.1,125.6,45;30.9,125.4,55;33.4,129.1,40;34.4,137.7,25]; # JTWC best track
myvect = [myvect;my_wpac_2021_20];
nhcvect = [nhcvect;nhc_wpac_2021_20];
btkvect = [btkvect;btk_wpac_2021_20];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Atl 67 ... PETER before 2021-09-19-15Z
# my at https://twitter.com/elioeFIN/status/1439590855468331008
# NHC at https://www.nhc.noaa.gov/archive/2021/al16/al162021.discus.004.shtml?

my_atl_2021_67 = [19.3,60.5,40;21.4,64.8,40;22.2,68.6,35;23.7,69.6,30;25.6,68.8,25];
nhc_atl_2021_67 = [19.2,60.8,35;21.3,64.9,35;23.8,67.0,35;25.5,67.4,30;27.2,66.7,30];
btk_atl_2021_67 = [19.2,60.1,45;19.8,64.0,35;21.4,66.4,30;22.7,67.1,25;24.2,65.5,25]; # TCR (1-3 days only)
myvect = [myvect;my_atl_2021_67];
nhcvect = [nhcvect;nhc_atl_2021_67];
btkvect = [btkvect;btk_atl_2021_67];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 68 ... ROSE before 2021-09-19-21Z
# my at https://twitter.com/elioeFIN/status/1439672472509485058
# NHC at https://www.nhc.noaa.gov/archive/2021/al17/al172021.discus.003.shtml?

my_atl_2021_68 = [17.8,33.4,45;21.8,36.2,40;24.0,38.8,35;25.8,42.0,30];
nhc_atl_2021_68 = [17.9,33.3,45;22.0,36.0,40;24.7,38.0,35;26.7,40.6,30];
btk_atl_2021_68 = [17.7,34.1,40;22.1,37.3,35;23.8,39.7,30;27.0,42.0,25]; # TCR
myvect = [myvect;my_atl_2021_68];
nhcvect = [nhcvect;nhc_atl_2021_68];
btkvect = [btkvect;btk_atl_2021_68];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 69 ... PETER before 2021-09-20-09Z
# my at https://twitter.com/elioeFIN/status/1439855875032813571
# NHC at https://www.nhc.noaa.gov/archive/2021/al16/al162021.discus.007.shtml?

my_atl_2021_69 = [20.3,63.7,40;22.1,67.1,35;24.1,68.6,30;25.7,68.8,25;28.0,68.1,25];
nhc_atl_2021_69 = [20.4,63.6,40;22.4,67.2,35;24.2,68.4,30;26.2,67.8,25;28.5,66.8,30];
btk_atl_2021_69 = [19.6,63.2,40;21.0,65.8,30;22.2,67.0,25;23.8,66.9,25;24.8,64.1,25]; # TCR (1-2 days only)
myvect = [myvect;my_atl_2021_69];
nhcvect = [nhcvect;nhc_atl_2021_69];
btkvect = [btkvect;btk_atl_2021_69];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 70 ... PETER before 2021-09-20-15Z
# my at https://twitter.com/elioeFIN/status/1439941995531755525
# NHC at https://www.nhc.noaa.gov/archive/2021/al16/al162021.discus.008.shtml?

my_atl_2021_70 = [20.7,64.6,40;22.4,68.1,35;24.1,69.4,30;25.4,68.8,25;28.0,66.0,30];
nhc_atl_2021_70 = [20.8,64.8,40;22.7,67.9,35;24.5,68.7,30;26.5,67.6,30;28.6,66.4,35];
btk_atl_2021_70 = [19.8,64.0,35;21.4,66.4,30;22.7,67.1,25;24.0,66.2,25;25.2,63.3,25]; # TCR (1-2 days only)
myvect = [myvect;my_atl_2021_70];
nhcvect = [nhcvect;nhc_atl_2021_70];
btkvect = [btkvect;btk_atl_2021_70];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 71 ... ROSE before 2021-09-20-15Z
# my at https://twitter.com/elioeFIN/status/1439945139502391299
# NHC at https://www.nhc.noaa.gov/archive/2021/al17/al172021.discus.006.shtml?

my_atl_2021_71 = [21.1,36.2,40;24.0,37.8,35;26.4,39.6,35];
nhc_atl_2021_71 = [21.0,36.1,35;24.1,38.1,35;26.7,40.0,30];
btk_atl_2021_71 = [21.1,36.7,35;23.4,38.8,30;26.0,41.9,25]; # TCR
myvect = [myvect;my_atl_2021_71];
nhcvect = [nhcvect;nhc_atl_2021_71];
btkvect = [btkvect;btk_atl_2021_71];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Atl 72 ... PETER before 2021-09-21-15Z
# my at https://twitter.com/elioeFIN/status/1440305745891770370
# NHC at https://www.nhc.noaa.gov/archive/2021/al16/al162021.discus.012.shtml?

my_atl_2021_72 = [21.7,67.1,30;23.3,67.6,30;24.5,67.3,20;26.3,65.3,25;27.7,63.5,30];
nhc_atl_2021_72 = [21.7,67.0,30;23.4,67.6,25;24.7,66.9,25;27.5,64.4,25;29.8,62.5,25];
btk_atl_2021_72 = [21.4,66.4,30;22.7,67.1,25;24.0,66.2,25;25.2,63.3,25;27.8,61.3,25]; #TCR (day 1 only)
myvect = [myvect;my_atl_2021_72];
nhcvect = [nhcvect;nhc_atl_2021_72];
btkvect = [btkvect;btk_atl_2021_72];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 73 ... ROSE before 2021-09-21-15Z
# my at https://twitter.com/elioeFIN/status/1440310179120050183
# NHC at https://www.nhc.noaa.gov/archive/2021/al17/al172021.discus.010.shtml?

my_atl_2021_73 = [24.0,38.8,30;26.7,40.6,30];
nhc_atl_2021_73 = [24.1,38.8,30;26.9,40.6,30];
btk_atl_2021_73 = [23.4,38.8,30;26.0,41.9,25]; # TCR
myvect = [myvect;my_atl_2021_73];
nhcvect = [nhcvect;nhc_atl_2021_73];
btkvect = [btkvect;btk_atl_2021_73];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Atl 74 ... PETER before 2021-09-22-15Z
# my at https://twitter.com/elioeFIN/status/1440666059380432899
# NHC at https://www.nhc.noaa.gov/archive/2021/al16/al162021.discus.016.shtml?

my_atl_2021_74 = [23.1,67.0,30;24.9,66.6,25];
nhc_atl_2021_74 = [23.3,67.1,25;25.1,66.3,25];
btk_atl_2021_74 = [22.7,67.1,25;24.0,66.2,25]; # nothing in TCR
myvect = [myvect;my_atl_2021_74];
nhcvect = [nhcvect;nhc_atl_2021_74];
btkvect = [btkvect;btk_atl_2021_74];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Atl 75 ... ROSE before 2021-09-22-15Z
# my at https://twitter.com/elioeFIN/status/1440669855296868353
# NHC at https://www.nhc.noaa.gov/archive/2021/al17/al172021.discus.014.shtml?

my_atl_2021_75 = [26.2,41.5,30];
nhc_atl_2021_75 = [26.1,41.1,30];
btk_atl_2021_75 = [26.0,41.9,25]; # TCR
myvect = [myvect;my_atl_2021_75];
nhcvect = [nhcvect;nhc_atl_2021_75];
btkvect = [btkvect;btk_atl_2021_75];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;1];

# Wpac 21 ... 20W before 2021-09-22-21Z
# my at https://twitter.com/elioeFIN/status/1440751670518960135

my_wpac_2021_21 = [14.1,143.0,60;16.9,140.2,90;18.8,138.2,110;19.9,138.2,120;22.1,139.5,130];
nhc_wpac_2021_21 = [14.2,143.5,55;16.6,140.6,85;18.6,139.3,105;20.5,139.1,125;22.4,139.5,130];
btk_wpac_2021_21 = [14.2,141.9,35;16.7,138.5,65;18.4,137.1,125;19.4,136.7,105;20.5,136.3,90]; # JTWC best track
myvect = [myvect;my_wpac_2021_21];
nhcvect = [nhcvect;nhc_wpac_2021_21];
btkvect = [btkvect;btk_wpac_2021_21];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Atl 76 ... 18L before 2021-09-23-03Z
# my at https://twitter.com/elioeFIN/status/1440852850322513929
# NHC at https://www.nhc.noaa.gov/archive/2021/al18/al182021.discus.002.shtml?

my_atl_2021_76 = [10.8,39.6,45;12.2,44.2,60;13.8,47.9,75;15.0,50.1,85;16.5,53.3,100];
nhc_atl_2021_76 = [10.9,39.6,35;12.2,44.3,55;13.2,47.5,80;14.5,50.2,90;16.0,53.3,100];
btk_atl_2021_76 = [11.1,40.3,60;12.3,45.4,85;13.4,48.8,130;14.5,50.6,130;16.5,52.9,105]; # TCR
myvect = [myvect;my_atl_2021_76];
nhcvect = [nhcvect;nhc_atl_2021_76];
btkvect = [btkvect;btk_atl_2021_76];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 77 ... 18L before 2021-09-23-15Z
# my at https://twitter.com/elioeFIN/status/1441040460668194817
# NHC at https://www.nhc.noaa.gov/archive/2021/al18/al182021.discus.004.shtml?

my_atl_2021_77 = [11.9,42.7,55;12.8,46.9,70;14.0,50.5,90;15.6,53.0,95;17.4,56.0,110];
nhc_atl_2021_77 = [11.9,42.9,60;12.7,46.7,80;13.7,49.4,100;15.3,52.1,105;17.4,55.2,110];
btk_atl_2021_77 = [11.6,43.0,65;12.8,47.2,105;13.8,50.0,130;15.4,51.7,105;17.3,54.1,115]; # TCR
myvect = [myvect;my_atl_2021_77];
nhcvect = [nhcvect;nhc_atl_2021_77];
btkvect = [btkvect;btk_atl_2021_77];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 78 ... SAM before 2021-09-23-21Z
# my at https://twitter.com/elioeFIN/status/1441120536445140998
# NHC at https://www.nhc.noaa.gov/archive/2021/al18/al182021.discus.005.shtml?

my_atl_2021_78 = [12.0,44.1,70;13.0,47.8,85;13.9,51.1,100;15.0,54.2,105;17.4,57.0,110];
nhc_atl_2021_78 = [11.9,44.2,75;12.6,47.4,100;13.7,50.0,110;15.2,52.5,110;17.5,55.5,110];
btk_atl_2021_78 = [11.9,44.3,70;13.1,48.1,115;14.1,50.3,135;15.9,52.3,105;17.7,54.7,115]; # TCR
myvect = [myvect;my_atl_2021_78];
nhcvect = [nhcvect;nhc_atl_2021_78];
btkvect = [btkvect;btk_atl_2021_78];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 79 ... SAM before 2021-09-24-15Z
# my at https://twitter.com/elioeFIN/status/1441384758638829572
# NHC at https://www.nhc.noaa.gov/archive/2021/al18/al182021.discus.008.shtml?

my_atl_2021_79 = [12.4,47.2,95;13.3,49.9,105;14.7,52.5,110;16.4,55.0,110;18.7,58.3,115];
nhc_atl_2021_79 = [12.3,47.1,90;13.1,49.7,115;14.6,52.1,115;16.4,54.8,110;18.2,57.7,110];
btk_atl_2021_79 = [12.8,47.2,105;13.8,50.0,130;15.4,51.7,105;17.3,54.1,115;19.1,56.6,115]; # TCR
myvect = [myvect;my_atl_2021_79];
nhcvect = [nhcvect;nhc_atl_2021_79];
btkvect = [btkvect;btk_atl_2021_79];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 80 ... SAM before 2021-09-25-15Z
# my at https://twitter.com/elioeFIN/status/1441757495995899904
# NHC at https://www.nhc.noaa.gov/archive/2021/al18/al182021.discus.012.shtml?

my_atl_2021_80 = [13.7,49.8,115;15.0,51.9,120;16.7,54.3,115;18.5,56.5,115;21.1,60.3,110];
nhc_atl_2021_80 = [13.7,49.8,115;15.0,51.9,120;16.6,54.1,115;18.4,56.5,110;20.7,59.8,110];
btk_atl_2021_80 = [13.8,50.0,130;15.4,51.7,105;17.3,54.1,115;19.1,56.6,115;22.0,59.6,125]; # TCR
myvect = [myvect;my_atl_2021_80];
nhcvect = [nhcvect;nhc_atl_2021_80];
btkvect = [btkvect;btk_atl_2021_80];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 81 ... SAM before 2021-09-26-15Z
# my at https://twitter.com/elioeFIN/status/1442129446199341059
# NHC at https://www.nhc.noaa.gov/archive/2021/al18/al182021.discus.016.shtml?

my_atl_2021_81 = [15.2,52.3,115;16.7,54.5,110;18.5,57.3,115;21.0,60.4,105;25.2,63.6,105];
nhc_atl_2021_81 = [15.2,52.4,120;16.8,54.6,115;18.6,57.1,115;21.4,60.3,110;25.6,63.1,110];
btk_atl_2021_81 = [15.4,51.7,105;17.3,54.1,115;19.1,56.6,115;22.0,59.6,125;27.4,61.9,130]; # TCR
myvect = [myvect;my_atl_2021_81];
nhcvect = [nhcvect;nhc_atl_2021_81];
btkvect = [btkvect;btk_atl_2021_81];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 82 ... SAM before 2021-09-26-21Z
# my at https://twitter.com/elioeFIN/status/1442206756814266373
# NHC at https://www.nhc.noaa.gov/archive/2021/al18/al182021.discus.017.shtml?

my_atl_2021_82 = [15.6,52.5,120;17.3,54.6,115;19.5,57.3,115;22.6,60.0,105;27.8,62.3,100];
nhc_atl_2021_82 = [15.5,52.5,125;17.2,54.7,120;19.2,57.4,115;22.1,60.5,110;26.6,62.9,110];
btk_atl_2021_82 = [15.9,52.3,105;17.7,54.7,115;19.7,57.3,115;23.0,60.4,125;29.2,61.9,130]; # TCR
myvect = [myvect;my_atl_2021_82];
nhcvect = [nhcvect;nhc_atl_2021_82];
btkvect = [btkvect;btk_atl_2021_82];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 83 ... SAM before 2021-09-27-15Z
# my at https://twitter.com/elioeFIN/status/1442479015541968902
# NHC at https://www.nhc.noaa.gov/archive/2021/al18/al182021.discus.020.shtml?

my_atl_2021_83 = [17.3,53.9,105;19.1,56.6,105;22.1,60.0,100;26.8,62.0,105;32.4,61.2,95];
nhc_atl_2021_83 = [17.3,53.9,110;19.1,56.5,110;21.7,59.8,110;25.9,62.2,110;32.0,61.3,100];
btk_atl_2021_83 = [17.3,54.1,115;19.1,56.6,115;22.0,59.6,125;27.4,61.9,130;33.4,60.1,115]; # TCR
myvect = [myvect;my_atl_2021_83];
nhcvect = [nhcvect;nhc_atl_2021_83];
btkvect = [btkvect;btk_atl_2021_83];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 84 ... SAM before 2021-09-27-21Z
# my at https://twitter.com/elioeFIN/status/1442569780297338890
# NHC at https://www.nhc.noaa.gov/archive/2021/al18/al182021.discus.021.shtml?

my_atl_2021_84 = [17.9,54.5,110;19.9,57.3,105;23.4,60.7,105;28.5,62.2,105;36.0,58.9,90];
nhc_atl_2021_84 = [17.8,54.6,115;19.8,57.3,110;22.9,60.5,110;27.8,62.0,105;34.7,59.6,100];
btk_atl_2021_84 = [17.7,54.7,115;19.7,57.3,115;23.0,60.4,125;29.2,61.9,130;34.7,59.1,110]; # TCR
myvect = [myvect;my_atl_2021_84];
nhcvect = [nhcvect;nhc_atl_2021_84];
btkvect = [btkvect;btk_atl_2021_84];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 85 ... SAM before 2021-09-28-03Z
# my at https://twitter.com/elioeFIN/status/1442656306540732416
# NHC at https://www.nhc.noaa.gov/archive/2021/al18/al182021.discus.022.shtml?

my_atl_2021_85 = [18.4,55.0,105;20.5,58.0,105;24.4,60.8,105;30.2,61.4,100;36.8,56.9,90];
nhc_atl_2021_85 = [18.4,55.1,115;20.6,58.0,110;24.3,61.0,110;29.6,61.5,105;37.5,56.9,100];
btk_atl_2021_85 = [18.1,55.3,115;20.3,58.0,125;24.3,61.0,125;30.8,61.5,125;35.8,57.9,100]; # TCR
myvect = [myvect;my_atl_2021_85];
nhcvect = [nhcvect;nhc_atl_2021_85];
btkvect = [btkvect;btk_atl_2021_85];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 86 ... SAM before 2021-09-28-15Z
# my at https://twitter.com/elioeFIN/status/1442853001862041605
# NHC at https://www.nhc.noaa.gov/archive/2021/al18/al182021.discus.024.shtml?

my_atl_2021_86 = [19.3,56.5,110;22.2,59.7,110;27.2,61.3,100;33.5,59.6,95;40.3,53.7,75];
nhc_atl_2021_86 = [19.2,56.5,115;22.0,59.6,110;26.6,61.5,110;32.5,59.7,100;39.2,54.8,90];
btk_atl_2021_86 = [19.1,56.6,115;22.0,59.6,125;27.4,61.9,130;33.4,60.1,115;37.3,55.4,85]; # TCR
myvect = [myvect;my_atl_2021_86];
nhcvect = [nhcvect;nhc_atl_2021_86];
btkvect = [btkvect;btk_atl_2021_86];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 87 ... SAM before 2021-09-28-21Z
# my at https://twitter.com/elioeFIN/status/1442938051844403211
# NHC at https://www.nhc.noaa.gov/archive/2021/al18/al182021.discus.025.shtml?

my_atl_2021_87 = [19.7,57.5,110;22.8,60.7,110;27.7,62.4,105;32.9,59.3,100;41.2,54.3,80];
nhc_atl_2021_87 = [19.7,57.4,115;22.8,60.6,110;27.7,62.0,110;33.5,59.0,100;40.0,53.5,90];
btk_atl_2021_87 = [19.7,57.3,115;23.0,60.4,125;29.2,61.9,130;34.7,59.1,110;38.0,53.9,85]; # TCR
myvect = [myvect;my_atl_2021_87];
nhcvect = [nhcvect;nhc_atl_2021_87];
btkvect = [btkvect;btk_atl_2021_87];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 88 ... SAM before 2021-09-29-15Z
# my at https://twitter.com/elioeFIN/status/1443202334478192648
# NHC at https://www.nhc.noaa.gov/archive/2021/al18/al182021.discus.028.shtml?

my_atl_2021_88 = [21.8,59.7,115;27.0,61.8,115;33.1,60.4,95;37.6,56.7,85;41.7,51.3,70];
nhc_atl_2021_88 = [21.8,59.6,120;26.6,61.8,115;32.0,60.9,105;36.2,57.3,90;39.5,53.0,75];
btk_atl_2021_88 = [22.0,59.6,125;27.4,61.9,130;33.4,60.1,115;37.3,55.4,85;41.4,47.1,85]; # TCR
myvect = [myvect;my_atl_2021_88];
nhcvect = [nhcvect;nhc_atl_2021_88];
btkvect = [btkvect;btk_atl_2021_88];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 89 ... SAM before 2021-09-29-21Z
# my at https://twitter.com/elioeFIN/status/1443293828123922437
# NHC at https://www.nhc.noaa.gov/archive/2021/al18/al182021.discus.029.shtml?

my_atl_2021_89 = [23.0,60.3,120;28.6,61.9,115;34.3,60.2,100;38.8,56.2,85;43.1,48.6,60];
nhc_atl_2021_89 = [23.1,60.4,120;28.3,61.9,115;33.6,59.9,100;37.5,55.0,85;42.0,48.5,70];
btk_atl_2021_89 = [23.0,60.4,125;29.2,61.9,130;34.7,59.1,110;38.0,53.9,85;43.8,43.6,80]; # TCR
myvect = [myvect;my_atl_2021_89];
nhcvect = [nhcvect;nhc_atl_2021_89];
btkvect = [btkvect;btk_atl_2021_89];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 90 ... VICTOR before 2021-09-29-21Z
# my at https://twitter.com/elioeFIN/status/1443297550996496400
# NHC at https://www.nhc.noaa.gov/archive/2021/al20/al202021.discus.002.shtml?

my_atl_2021_90 = [9.6,29.0,55;11.8,32.7,70;15.2,36.0,55;20.6,39.0,45];
nhc_atl_2021_90 = [9.5,28.9,55;11.4,32.4,70;14.7,35.8,60;19.3,38.9,50];
btk_atl_2021_90 = [9.8,29.5,45;11.8,33.9,55;13.5,37.7,30;16.5,41.0,30]; # TCR
myvect = [myvect;my_atl_2021_90];
nhcvect = [nhcvect;nhc_atl_2021_90];
btkvect = [btkvect;btk_atl_2021_90];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 91 ... SAM before 2021-09-30-15Z
# my at https://twitter.com/elioeFIN/status/1443576408849063936
# NHC at https://www.nhc.noaa.gov/archive/2021/al18/al182021.discus.032.shtml?

my_atl_2021_91 = [27.2,61.7,120;33.2,60.5,105;37.8,57.2,90;42.2,51.0,75;47.0,44.5,55];
nhc_atl_2021_91 = [27.2,61.7,125;32.7,60.8,105;36.9,57.0,90;40.0,51.0,80;44.5,45.5,65];
btk_atl_2021_91 = [27.4,61.9,130;33.4,60.1,115;37.3,55.4,85;41.4,47.1,85;52.2,39.6,65]; # TCR
myvect = [myvect;my_atl_2021_91];
nhcvect = [nhcvect;nhc_atl_2021_91];
btkvect = [btkvect;btk_atl_2021_91];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 92 ... VICTOR before 2021-09-30-21Z
# my at https://twitter.com/elioeFIN/status/1443659146579128320
# NHC at https://www.nhc.noaa.gov/archive/2021/al20/al202021.discus.006.shtml?

my_atl_2021_92 = [11.7,33.1,50;15.0,36.4,40;20.1,39.5,35];
nhc_atl_2021_92 = [11.6,33.1,55;14.5,36.2,45;18.9,40.0,35];
btk_atl_2021_92 = [11.8,33.9,55;13.5,37.7,30;16.5,41.0,30]; # TCR
myvect = [myvect;my_atl_2021_92];
nhcvect = [nhcvect;nhc_atl_2021_92];
btkvect = [btkvect;btk_atl_2021_92];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Wpac 22 ... LIONROCK before 2021-10-08-15Z
# my at https://twitter.com/elioeFIN/status/1446468160220172297

my_wpac_2021_22 = [20.3,109.3,40;20.2,106.7,45];
nhc_wpac_2021_22 = [20.3,109.2,35;20.3,106.4,35];
btk_wpac_2021_22 = [20.1,109.0,35;20.8,106.3,20]; # JTWC best track
myvect = [myvect;my_wpac_2021_22];
nhcvect = [nhcvect;nhc_wpac_2021_22];
btkvect = [btkvect;btk_wpac_2021_22];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Wpac 23 ... NAMTHEUN before 2021-10-10-21Z
# my at https://twitter.com/elioeFIN/status/1447279025093849093

my_wpac_2021_23 = [20.0,154.9,55;21.8,151.9,65;25.4,151.8,60;28.7,153.9,50;31.0,157.2,35];
nhc_wpac_2021_23 = [19.7,154.5,50;22.0,151.4,60;24.0,150.6,65;26.9,152.2,55;30.3,154.9,40];
btk_wpac_2021_23 = [18.8,153.8,45;20.8,151.9,30;23.6,155.3,35;25.1,159.3,35;28.2,163.2,55]; # JTWC best track
myvect = [myvect;my_wpac_2021_23];
nhcvect = [nhcvect;nhc_wpac_2021_23];
btkvect = [btkvect;btk_wpac_2021_23];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 24 ... KOMPASU before 2021-10-10-21Z
# my at https://twitter.com/elioeFIN/status/1447279964202709000

my_wpac_2021_24 = [19.4,119.2,60;19.4,113.7,70;19.1,106.6,55];
nhc_wpac_2021_24 = [19.5,119.5,60;19.2,113.6,70;19.3,108.0,60];
btk_wpac_2021_24 = [18.8,120.5,55;19.1,114.5,50;19.2,108.4,35]; # JTWC best track
myvect = [myvect;my_wpac_2021_24];
nhcvect = [nhcvect;nhc_wpac_2021_24];
btkvect = [btkvect;btk_wpac_2021_24];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Epac 49 ... PAMELA before 2021-10-10-21Z
# my at https://twitter.com/elioeFIN/status/1447283953526788103
# NHC at https://www.nhc.noaa.gov/archive/2021/ep16/ep162021.discus.003.shtml?

my_epac_2021_49 = [16.9,109.0,60;19.7,109.9,75;23.6,107.8,90];
nhc_epac_2021_49 = [16.9,108.8,60;19.6,109.9,80;23.3,108.0,95];
btk_epac_2021_49 = [17.0,108.4,55;20.6,109.3,60;25.1,104.8,40]; # TCR
myvect = [myvect;my_epac_2021_49];
nhcvect = [nhcvect;nhc_epac_2021_49];
btkvect = [btkvect;btk_epac_2021_49];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Wpac 25 ... NAMTHEUN before 2021-10-11-21Z
# my at https://twitter.com/elioeFIN/status/1447637475149615105

my_wpac_2021_25 = [21.3,150.1,45;23.4,147.6,50;25.4,149.0,35;28.8,151.6,35;30.9,154.2,25];
nhc_wpac_2021_25 = [21.3,150.1,50;22.9,148.1,50;24.7,149.0,40;27.2,151.4,35;29.2,155.0,25];
btk_wpac_2021_25 = [20.8,151.9,30;23.6,155.3,35;25.1,159.3,35;28.2,163.2,55;32.9,166.8,50]; # JTWC best track
myvect = [myvect;my_wpac_2021_25];
nhcvect = [nhcvect;nhc_wpac_2021_25];
btkvect = [btkvect;btk_wpac_2021_25];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Epac 50 ... PAMELA before 2021-10-11-21Z
# my at https://twitter.com/elioeFIN/status/1447647490833068036
# NHC at https://www.nhc.noaa.gov/archive/2021/ep16/ep162021.discus.007.shtml?

my_epac_2021_50 = [20.1,109.0,90;25.3,104.8,60];
nhc_epac_2021_50 = [20.0,108.9,85;24.3,105.8,45];
btk_epac_2021_50 = [20.6,109.3,60;25.1,104.8,40]; # TCR
myvect = [myvect;my_epac_2021_50];
nhcvect = [nhcvect;nhc_epac_2021_50];
btkvect = [btkvect;btk_epac_2021_50];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Epac 51 ... PAMELA before 2021-10-12-03Z
# my at https://twitter.com/elioeFIN/status/1447729964963532803
# NHC at https://www.nhc.noaa.gov/archive/2021/ep16/ep162021.discus.008.shtml?

my_epac_2021_51 = [20.8,108.8,75;26.0,103.5,40];
nhc_epac_2021_51 = [21.0,108.5,85;26.1,103.3,40];
btk_epac_2021_51 = [21.5,108.9,60;26.5,102.6,25]; # TCR (day 1 only)
myvect = [myvect;my_epac_2021_51];
nhcvect = [nhcvect;nhc_epac_2021_51];
btkvect = [btkvect;btk_epac_2021_51];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Epac 52 ... PAMELA before 2021-10-12-21Z
# my at https://twitter.com/elioeFIN/status/1448008642570162177
# NHC at https://www.nhc.noaa.gov/archive/2021/ep16/ep162021.discus.011.shtml?

my_epac_2021_52 = [25.4,105.7,35];
nhc_epac_2021_52 = [25.4,105.2,35];
btk_epac_2021_52 = [25.1,104.8,40]; # TCR
myvect = [myvect;my_epac_2021_52];
nhcvect = [nhcvect;nhc_epac_2021_52];
btkvect = [btkvect;btk_epac_2021_52];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;2];

# Epac 53 ... 17E before 2021-10-22-21Z
# my at https://twitter.com/elioeFIN/status/1451631421991305218
# NHC at https://www.nhc.noaa.gov/archive/2021/ep17/ep172021.discus.002.shtml?

my_epac_2021_53 = [14.5,101.7,60;16.4,102.0,80;18.8,103.4,50];
nhc_epac_2021_53 = [14.6,102.0,60;16.1,102.6,80;18.3,103.3,65];
btk_epac_2021_53 = [14.9,101.8,80;16.0,101.4,75;19.0,102.5,50]; # TCR
myvect = [myvect;my_epac_2021_53];
nhcvect = [nhcvect;nhc_epac_2021_53];
btkvect = [btkvect;btk_epac_2021_53];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 54 ... RICK before 2021-10-23-03Z
# my at https://twitter.com/elioeFIN/status/1451715716554665985
# NHC at https://www.nhc.noaa.gov/archive/2021/ep17/ep172021.discus.003.shtml?

my_epac_2021_54 = [14.7,102.2,65;16.1,102.5,85;19.5,103.7,40];
nhc_epac_2021_54 = [14.8,102.1,70;16.4,102.8,90;19.4,103.5,60];
btk_epac_2021_54 = [15.1,101.8,80;16.5,101.5,80;20.0,102.9,20]; # TCR
myvect = [myvect;my_epac_2021_54];
nhcvect = [nhcvect;nhc_epac_2021_54];
btkvect = [btkvect;btk_epac_2021_54];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 55 ... RICK before 2021-10-23-09Z
# my at https://twitter.com/elioeFIN/status/1451808900454420481
# NHC at https://www.nhc.noaa.gov/archive/2021/ep17/ep172021.discus.004.shtml?

my_epac_2021_55 = [15.3,102.0,85;16.9,102.8,95];
nhc_epac_2021_55 = [15.3,102.1,90;17.0,102.7,100];
btk_epac_2021_55 = [15.4,101.6,80;17.2,101.8,90]; # TCR
myvect = [myvect;my_epac_2021_55];
nhcvect = [nhcvect;nhc_epac_2021_55];
btkvect = [btkvect;btk_epac_2021_55];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Epac 56 ... RICK before 2021-10-23-21Z
# my at https://twitter.com/elioeFIN/status/1451991530814779393
# NHC at https://www.nhc.noaa.gov/archive/2021/ep17/ep172021.discus.006.shtml?

my_epac_2021_56 = [16.5,102.1,95;19.1,102.9,45];
nhc_epac_2021_56 = [16.5,102.1,100;18.9,102.7,60];
btk_epac_2021_56 = [16.0,101.4,75;19.0,102.5,50]; # TCR
myvect = [myvect;my_epac_2021_56];
nhcvect = [nhcvect;nhc_epac_2021_56];
btkvect = [btkvect;btk_epac_2021_56];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Wpac 26 ... 25W before 2021-10-24-21Z
# my at https://twitter.com/elioeFIN/status/1452344331386359816

my_wpac_2021_26 = [17.3,137.7,55;19.1,137.7,65;21.0,138.0,75;24.7,140.2,70;29.4,144.2,60];
nhc_wpac_2021_26 = [17.8,137.5,50;19.1,137.3,70;21.3,137.7,80;25.0,139.6,80;29.8,143.5,70];
btk_wpac_2021_26 = [19.1,138.1,40;20.4,139.4,65;22.6,140.0,70;28.1,143.5,85;35.7,153.1,50]; # JTWC best track
myvect = [myvect;my_wpac_2021_26];
nhcvect = [nhcvect;nhc_wpac_2021_26];
btkvect = [btkvect;btk_wpac_2021_26];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Epac 57 ... RICK before 2021-10-24-21Z
# my at https://twitter.com/elioeFIN/status/1452351617001562114
# NHC at https://www.nhc.noaa.gov/archive/2021/ep17/ep172021.discus.010.shtml?

my_epac_2021_57 = [18.5,102.4,35];
nhc_epac_2021_57 = [18.4,102.6,50];
btk_epac_2021_57 = [19.0,102.5,50]; # TCR
myvect = [myvect;my_epac_2021_57];
nhcvect = [nhcvect;nhc_epac_2021_57];
btkvect = [btkvect;btk_epac_2021_57];
leadtimevect = [leadtimevect;2];
basinvect = [basinvect;1];

# Atl 93 ... WANDA before 2021-10-31-15Z
# my at https://twitter.com/elioeFIN/status/1454807749666168833
# NHC at https://www.nhc.noaa.gov/archive/2021/al21/al212021.discus.003.shtml?

my_atl_2021_93 = [34.9,42.9,45;35.0,40.9,45;38.7,39.9,45;43.3,38.5,40;46.9,31.8,35];
nhc_atl_2021_93 = [34.9,42.4,50;35.6,40.0,50;39.4,38.7,45;43.4,37.3,45;47.2,30.0,40];
btk_atl_2021_93 = [34.1,43.4,40;35.5,40.7,40;38.4,39.9,40;41.7,39.7,40;41.1,37.8,45]; # TCR
myvect = [myvect;my_atl_2021_93];
nhcvect = [nhcvect;nhc_atl_2021_93];
btkvect = [btkvect;btk_atl_2021_93];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 94 ... WANDA before 2021-10-31-21Z
# my at https://twitter.com/elioeFIN/status/1454890573064720385
# NHC at https://www.nhc.noaa.gov/archive/2021/al21/al212021.discus.004.shtml?

my_atl_2021_94 = [34.6,42.7,45;36.6,41.0,50;40.5,40.3,45;42.6,38.9,45;40.9,39.0,35];
nhc_atl_2021_94 = [35.2,42.2,45;36.8,40.2,45;40.7,39.4,45;44.1,37.0,45;45.4,32.0,40];
btk_atl_2021_94 = [34.1,42.6,35;36.2,40.5,40;39.3,39.7,45;42.1,39.6,40;39.6,37.5,45]; # TCR
myvect = [myvect;my_atl_2021_94];
nhcvect = [nhcvect;nhc_atl_2021_94];
btkvect = [btkvect;btk_atl_2021_94];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 95 ... WANDA before 2021-11-01-03Z
# my at https://twitter.com/elioeFIN/status/1454982094908805120
# NHC at https://www.nhc.noaa.gov/archive/2021/al21/al212021.discus.005.shtml?

my_atl_2021_95 = [34.9,42.3,45;37.5,40.6,45;40.7,39.8,50;42.5,38.2,45;42.0,34.5,35];
nhc_atl_2021_95 = [35.1,42.2,45;37.4,40.7,45;40.9,39.9,45;43.1,37.3,45;43.0,33.0,40];
btk_atl_2021_95 = [34.4,41.9,35;36.9,40.4,40;40.2,39.7,45;42.3,39.0,45;38.4,38.0,45]; # TCR
myvect = [myvect;my_atl_2021_95];
nhcvect = [nhcvect;nhc_atl_2021_95];
btkvect = [btkvect;btk_atl_2021_95];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 96 ... WANDA before 2021-11-01-21Z
# my at https://twitter.com/elioeFIN/status/1455263858118086657
# NHC at https://www.nhc.noaa.gov/archive/2021/al21/al212021.discus.008.shtml?

my_atl_2021_96 = [35.8,40.4,45;39.6,39.9,45;42.5,38.5,45;44.5,30.9,40;42.5,29.6,40];
nhc_atl_2021_96 = [36.0,40.4,45;39.9,39.7,45;42.8,38.3,45;43.4,33.3,45;42.5,31.0,40];
btk_atl_2021_96 = [36.2,40.5,40;39.3,39.7,45;42.1,39.6,40;39.6,37.5,45;37.1,38.0,35]; # TCR
myvect = [myvect;my_atl_2021_96];
nhcvect = [nhcvect;nhc_atl_2021_96];
btkvect = [btkvect;btk_atl_2021_96];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 97 ... WANDA before 2021-11-02-03Z
# my at https://twitter.com/elioeFIN/status/1455341453933228036
# NHC at https://www.nhc.noaa.gov/archive/2021/al21/al212021.discus.009.shtml?

my_atl_2021_97 = [36.8,40.3,45;40.7,39.8,45;43.0,37.8,40;43.1,31.8,40;41.5,28.0,40];
nhc_atl_2021_97 = [36.9,40.2,45;40.9,39.7,45;42.9,38.0,45;43.2,33.4,45;43.0,29.0,40];
btk_atl_2021_97 = [36.9,40.4,40;40.2,39.7,45;42.3,39.0,45;38.4,38.0,45;37.4,37.4,35]; # TCR
myvect = [myvect;my_atl_2021_97];
nhcvect = [nhcvect;nhc_atl_2021_97];
btkvect = [btkvect;btk_atl_2021_97];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 98 ... WANDA before 2021-11-02-21Z
# my at https://twitter.com/elioeFIN/status/1455621953205817354
# NHC at https://www.nhc.noaa.gov/archive/2021/al21/al212021.discus.012.shtml?

my_atl_2021_98 = [39.4,40.0,45;41.7,39.6,45;40.7,37.8,45;39.5,37.5,45;45.6,30.4,45];
nhc_atl_2021_98 = [39.5,39.8,50;41.8,39.4,45;40.0,37.5,45;39.0,36.6,45;43.0,29.5,40];
btk_atl_2021_98 = [39.3,39.7,45;42.1,39.6,40;39.6,37.5,45;37.1,38.0,35;40.9,32.8,40]; # TCR
myvect = [myvect;my_atl_2021_98];
nhcvect = [nhcvect;nhc_atl_2021_98];
btkvect = [btkvect;btk_atl_2021_98];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 99 ... WANDA before 2021-11-03-21Z
# my at https://twitter.com/elioeFIN/status/1455980873438961670
# NHC at https://www.nhc.noaa.gov/archive/2021/al21/al212021.discus.016.shtml?

my_atl_2021_99 = [42.3,39.0,45;41.2,36.6,45;39.7,37.7,40;44.0,31.5,50];
nhc_atl_2021_99 = [41.9,39.1,50;40.3,37.0,50;38.1,36.6,45;42.4,31.5,45];
btk_atl_2021_99 = [42.1,39.6,40;39.6,37.5,45;37.1,38.0,35;40.9,32.8,40]; # TCR
myvect = [myvect;my_atl_2021_99];
nhcvect = [nhcvect;nhc_atl_2021_99];
btkvect = [btkvect;btk_atl_2021_99];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 100 ... WANDA before 2021-11-04-03Z
# my at https://twitter.com/elioeFIN/status/1456066970525343751
# NHC at https://www.nhc.noaa.gov/archive/2021/al21/al212021.discus.017.shtml?

my_atl_2021_100 = [42.2,38.8,45;39.4,37.4,40;38.4,37.7,45;44.3,30.3,55];
nhc_atl_2021_100 = [42.0,38.8,50;39.0,37.3,50;38.1,36.6,45;44.7,29.0,45];
btk_atl_2021_100 = [42.3,39.0,45;38.4,38.0,45;37.4,37.4,35;43.2,29.7,40]; # TCR
myvect = [myvect;my_atl_2021_100];
nhcvect = [nhcvect;nhc_atl_2021_100];
btkvect = [btkvect;btk_atl_2021_100];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 101 ... WANDA before 2021-11-04-21Z
# my at https://twitter.com/elioeFIN/status/1456341117323075591
# NHC at https://www.nhc.noaa.gov/archive/2021/al21/al212021.discus.020.shtml?

my_atl_2021_101 = [39.8,38.1,40;38.1,38.4,40;42.5,32.5,45];
nhc_atl_2021_101 = [40.1,38.2,40;38.0,37.7,50;42.6,32.2,50];
btk_atl_2021_101 = [39.6,37.5,45;37.1,38.0,35;40.9,32.8,40]; # TCR
myvect = [myvect;my_atl_2021_101];
nhcvect = [nhcvect;nhc_atl_2021_101];
btkvect = [btkvect;btk_atl_2021_101];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Epac 58 ... 18E before 2021-11-04-21Z
# my at https://twitter.com/elioeFIN/status/1456346699987886083
# NHC at https://www.nhc.noaa.gov/archive/2021/ep18/ep182021.discus.002.shtml?

my_epac_2021_58 = [9.3,92.6,35;8.7,96.5,40;8.9,101.2,45;10.1,105.4,60;12.4,109.3,75];
nhc_epac_2021_58 = [9.5,92.5,35;9.0,96.3,40;9.2,100.8,45;10.1,105.3,50;11.0,110.0,55];
btk_epac_2021_58 = [9.2,92.9,25;8.3,97.1,30;8.5,102.2,35;10.3,107.4,30;11.6,112.3,25]; # TCR
myvect = [myvect;my_epac_2021_58];
nhcvect = [nhcvect;nhc_epac_2021_58];
btkvect = [btkvect;btk_epac_2021_58];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 59 ... 18E before 2021-11-05-21Z
# my at https://twitter.com/elioeFIN/status/1456697157210288134
# NHC at https://www.nhc.noaa.gov/archive/2021/ep18/ep182021.discus.006.shtml?

my_epac_2021_59 = [8.7,96.5,30;8.8,101.5,35;9.6,106.7,45;10.5,111.2,60;10.5,115.7,80];
nhc_epac_2021_59 = [8.6,96.7,30;8.7,101.3,30;9.6,106.3,40;10.6,111.1,45;11.0,116.0,50];
btk_epac_2021_59 = [8.3,97.1,30;8.5,102.2,35;10.3,107.4,30;11.6,112.3,25;11.7,117.6,25]; # TCR (except day 5)
myvect = [myvect;my_epac_2021_59];
nhcvect = [nhcvect;nhc_epac_2021_59];
btkvect = [btkvect;btk_epac_2021_59];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 60 ... 18E before 2021-11-06-21Z
# my at https://twitter.com/elioeFIN/status/1457064352184418311
# NHC at https://www.nhc.noaa.gov/archive/2021/ep18/ep182021.discus.010.shtml?

my_epac_2021_60 = [8.7,101.4,35;9.3,106.6,45;10.1,111.8,45;10.4,116.2,60];
nhc_epac_2021_60 = [8.3,101.7,30;9.2,106.6,35;10.2,111.6,35;10.4,116.8,35];
btk_epac_2021_60 = [8.5,102.2,35;10.3,107.4,30;11.6,112.3,25;11.7,117.6,25]; # TCR (except day 4)
myvect = [myvect;my_epac_2021_60];
nhcvect = [nhcvect;nhc_epac_2021_60];
btkvect = [btkvect;btk_epac_2021_60];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Epac 61 ... 18E before 2021-11-07-03Z
# my at https://twitter.com/elioeFIN/status/1457148497917005825
# NHC at https://www.nhc.noaa.gov/archive/2021/ep18/ep182021.discus.011.shtml?

my_epac_2021_61 = [8.8,102.5,35;9.7,108.0,45;10.3,113.1,50];
nhc_epac_2021_61 = [8.8,102.7,30;9.6,107.7,35;10.3,112.6,35];
btk_epac_2021_61 = [9.0,103.4,35;10.7,108.7,30;11.8,113.6,25]; # TCR
myvect = [myvect;my_epac_2021_61];
nhcvect = [nhcvect;nhc_epac_2021_61];
btkvect = [btkvect;btk_epac_2021_61];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 62 ... 18E before 2021-11-07-21Z
# my at https://twitter.com/elioeFIN/status/1457424180174102530
# NHC at https://www.nhc.noaa.gov/archive/2021/ep18/ep182021.discus.014.shtml?

my_epac_2021_62 = [9.3,106.7,35;9.9,111.9,40;9.9,116.5,45];
nhc_epac_2021_62 = [9.4,106.9,40;9.8,111.7,35;10.0,116.7,30];
btk_epac_2021_62 = [10.3,107.4,30;11.6,112.3,25;11.7,117.6,25]; # TCR (except day 3)
myvect = [myvect;my_epac_2021_62];
nhcvect = [nhcvect;nhc_epac_2021_62];
btkvect = [btkvect;btk_epac_2021_62];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 63 ... 19E before 2021-11-07-21Z
# my at https://twitter.com/elioeFIN/status/1457426652678561801
# NHC at https://www.nhc.noaa.gov/archive/2021/ep19/ep192021.discus.002.shtml?

my_epac_2021_63 = [15.3,117.5,35;15.7,121.2,25];
nhc_epac_2021_63 = [15.3,117.5,35;15.5,121.2,30];
btk_epac_2021_63 = [14.9,117.3,30;14.4,121.5,25]; # TCR
myvect = [myvect;my_epac_2021_63];
nhcvect = [nhcvect;nhc_epac_2021_63];
btkvect = [btkvect;btk_epac_2021_63];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Epac 64 ... TERRY before 2021-11-08-21Z
# my at https://twitter.com/elioeFIN/status/1457786888626978824
# NHC at https://www.nhc.noaa.gov/archive/2021/ep18/ep182021.discus.018.shtml?

my_epac_2021_64 = [11.6,112.2,30;11.8,117.8,35];
nhc_epac_2021_64 = [11.4,112.2,30;11.7,117.4,25];
btk_epac_2021_64 = [11.6,112.3,25;11.7,117.6,25]; # TCR (except day 2)
myvect = [myvect;my_epac_2021_64];
nhcvect = [nhcvect;nhc_epac_2021_64];
btkvect = [btkvect;btk_epac_2021_64];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Epac 65 ... TERRY before 2021-11-09-03Z
# my at https://twitter.com/elioeFIN/status/1457874951470526467
# NHC at https://www.nhc.noaa.gov/archive/2021/ep18/ep182021.discus.019.shtml?

my_epac_2021_65 = [11.7,113.4,35];
nhc_epac_2021_65 = [11.4,113.5,30];
btk_epac_2021_65 = [11.8,113.6,25]; # TCR
myvect = [myvect;my_epac_2021_65];
nhcvect = [nhcvect;nhc_epac_2021_65];
btkvect = [btkvect;btk_epac_2021_65];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;2];

# Epac 66 ... TERRY before 2021-11-09-21Z
# my at https://twitter.com/elioeFIN/status/1458150114392948736
# NHC at https://www.nhc.noaa.gov/archive/2021/ep18/ep182021.discus.022.shtml?

my_epac_2021_66 = [11.7,117.3,35];
nhc_epac_2021_66 = [11.8,117.3,25];
btk_epac_2021_66 = [11.7,117.6,25]; # TCR has no value
myvect = [myvect;my_epac_2021_66];
nhcvect = [nhcvect;nhc_epac_2021_66];
btkvect = [btkvect;btk_epac_2021_66];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;2];

# Shem 01 ... PADDY before 2021-11-22-21Z
# my at https://twitter.com/elioeFIN/status/1462858940321079301

my_shem_2022_01 = [14.0,107.2,45;14.2,106.1,35];
nhc_shem_2022_01 = [14.2,106.5,40;14.0,104.6,30];
btk_shem_2022_01 = [13.9,106.9,35;14.3,105.3,25]; # JTWC best track
myvect = [myvect;my_shem_2022_01];
nhcvect = [nhcvect;nhc_shem_2022_01];
btkvect = [btkvect;btk_shem_2022_01];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Wpac 27 ... 27W before 2021-11-29-21Z
# my at https://twitter.com/elioeFIN/status/1465400228794806272

my_wpac_2021_27 = [13.7,137.6,50;16.1,135.9,85;19.2,136.7,105;22.1,139.4,70];
nhc_wpac_2021_27 = [14.3,137.1,50;16.0,135.8,80;18.2,136.6,95;20.5,138.6,80];
btk_wpac_2021_27 = [13.4,137.3,50;15.8,135.5,65;19.5,137.5,125;26.2,144.3,65]; # JTWC best track
myvect = [myvect;my_wpac_2021_27];
nhcvect = [nhcvect;nhc_wpac_2021_27];
btkvect = [btkvect;btk_wpac_2021_27];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Wpac 28 ... 27W before 2021-11-30-03Z
# my at https://twitter.com/elioeFIN/status/1465491665561559052

my_wpac_2021_28 = [14.4,136.3,55;16.6,135.8,85;18.7,136.1,90;20.6,138.1,70];
nhc_wpac_2021_28 = [14.1,136.3,60;16.3,135.1,90;19.0,136.6,105;21.9,139.1,80];
btk_wpac_2021_28 = [13.9,136.6,50;16.6,135.6,75;21.0,138.8,125;28.5,146.6,40]; # JTWC best track
myvect = [myvect;my_wpac_2021_28];
nhcvect = [nhcvect;nhc_wpac_2021_28];
btkvect = [btkvect;btk_wpac_2021_28];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Wpac 29 ... NYATOH before 2021-11-30-21Z
# my at https://twitter.com/elioeFIN/status/1465761931000795138

my_wpac_2021_29 = [15.5,135.5,85;18.0,136.8,95;20.7,139.9,75];
nhc_wpac_2021_29 = [15.4,135.3,75;18.9,137.2,90;22.6,141.4,65];
btk_wpac_2021_29 = [15.8,135.5,65;19.5,137.5,125;26.2,144.3,65]; # JTWC best track
myvect = [myvect;my_wpac_2021_29];
nhcvect = [nhcvect;nhc_wpac_2021_29];
btkvect = [btkvect;btk_wpac_2021_29];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Wpac 30 ... NYATOH before 2021-12-01-03Z
# my at https://twitter.com/elioeFIN/status/1465843348594438149

my_wpac_2021_30 = [16.2,135.2,80;19.9,138.1,85;22.8,141.4,60];
nhc_wpac_2021_30 = [16.3,135.6,90;20.2,138.3,85;24.6,143.1,65];
btk_wpac_2021_30 = [16.6,135.6,75;21.0,138.8,125;28.5,146.6,40]; # JTWC best track
myvect = [myvect;my_wpac_2021_30];
nhcvect = [nhcvect;nhc_wpac_2021_30];
btkvect = [btkvect;btk_wpac_2021_30];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Wpac 31 ... NYATOH before 2021-12-01-21Z
# my at https://twitter.com/elioeFIN/status/1466124948494110720

my_wpac_2021_31 = [19.7,137.2,85;22.9,141.3,60];
nhc_wpac_2021_31 = [19.7,137.5,95;24.4,142.6,60];
btk_wpac_2021_31 = [19.5,137.5,125;26.2,144.3,65]; # JTWC best track
myvect = [myvect;my_wpac_2021_31];
nhcvect = [nhcvect;nhc_wpac_2021_31];
btkvect = [btkvect;btk_wpac_2021_31];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Wpac 32 ... NYATOH before 2021-12-02-21Z
# my at https://twitter.com/elioeFIN/status/1466486333673717762

my_wpac_2021_32 = [23.7,141.7,75];
nhc_wpac_2021_32 = [23.9,142.6,80];
btk_wpac_2021_32 = [26.2,144.3,65]; # JTWC best track
myvect = [myvect;my_wpac_2021_32];
nhcvect = [nhcvect;nhc_wpac_2021_32];
btkvect = [btkvect;btk_wpac_2021_32];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;3];

# Shem 02 ... 07U/93P before 2021-12-10-15Z
# my at https://twitter.com/elioeFIN/status/1469308824452583426
# (no JTWC forecast)

# Shem 03 ... 07U/93P before 2021-12-11-21Z
# my at https://twitter.com/elioeFIN/status/1469754069493420035

my_shem_2022_03 = [16.7,159.0,50;19.4,163.1,70;24.1,169.2,55;32.8,175.3,55];
nhc_shem_2022_03 = [15.9,159.0,60;19.0,163.0,75;20.3,165.8,75;21.5,169.2,70];
btk_shem_2022_03 = [16.4,158.8,65;20.1,163.8,55;24.2,170.6,55;30.6,179.0,55]; # JTWC best track
myvect = [myvect;my_shem_2022_03];
nhcvect = [nhcvect;nhc_shem_2022_03];
btkvect = [btkvect;btk_shem_2022_03];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 04 ... 07U/03P before 2021-12-12-03Z
# my at https://twitter.com/elioeFIN/status/1469841062743183362

my_shem_2022_04 = [17.6,159.5,60;20.1,164.3,70;24.9,170.6,55];
nhc_shem_2022_04 = [17.2,159.5,65;20.0,164.4,80;24.0,170.1,70];
btk_shem_2022_04 = [17.4,159.9,70;21.1,165.4,50;25.3,172.7,55]; # JTWC best track
myvect = [myvect;my_shem_2022_04];
nhcvect = [nhcvect;nhc_shem_2022_04];
btkvect = [btkvect;btk_shem_2022_04];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 05 ... RUBY before 2021-12-12-21Z
# my at https://twitter.com/elioeFIN/status/1470110385156112389

my_shem_2022_05 = [19.5,163.0,75;23.0,168.9,65;29.9,175.3,55];
nhc_shem_2022_05 = [19.4,163.3,85;22.9,170.0,80;27.9,174.9,70];
btk_shem_2022_05 = [20.1,163.8,55;24.2,170.6,55;30.6,179.0,55]; # JTWC best track
myvect = [myvect;my_shem_2022_05];
nhcvect = [nhcvect;nhc_shem_2022_05];
btkvect = [btkvect;btk_shem_2022_05];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Wpac 33 ... 96W before 2021-12-12-21Z
# my at https://twitter.com/elioeFIN/status/1470116812004249600
# (no JTWC forecast)

# Wpac 34 ... RAI before 2021-12-13-21Z
# my at https://twitter.com/elioeFIN/status/1470471588919316492

my_wpac_2021_34 = [8.5,134.5,65;9.4,130.0,90;10.3,124.8,95;11.4,120.1,80;12.3,115.5,90];
nhc_wpac_2021_34 = [8.8,134.1,75;9.8,129.2,100;10.4,124.4,90;11.4,120.0,85;12.8,115.9,85];
btk_wpac_2021_34 = [8.7,133.4,65;9.4,128.9,125;10.2,122.5,110;10.7,117.4,90;12.6,112.2,130]; # JTWC best track
myvect = [myvect;my_wpac_2021_34];
nhcvect = [nhcvect;nhc_wpac_2021_34];
btkvect = [btkvect;btk_wpac_2021_34];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 35 ... RAI before 2021-12-14-03Z
# my at https://twitter.com/elioeFIN/status/1470565048422649861

my_wpac_2021_35 = [9.1,133.0,75;9.8,128.3,95;10.3,122.8,80;11.6,118.2,80;12.8,113.2,85];
nhc_wpac_2021_35 = [9.1,132.1,80;9.9,127.7,95;10.6,123.0,85;11.7,118.4,85;13.4,114.7,90];
btk_wpac_2021_35 = [8.8,132.4,70;9.7,127.6,150;10.0,121.1,95;11.0,115.9,100;13.1,111.4,120]; # JTWC best track
myvect = [myvect;my_wpac_2021_35];
nhcvect = [nhcvect;nhc_wpac_2021_35];
btkvect = [btkvect;btk_wpac_2021_35];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 36 ... RAI before 2021-12-14-21Z
# my at https://twitter.com/elioeFIN/status/1470833832488222725

my_wpac_2021_36 = [9.8,128.7,90;10.0,123.5,75;11.1,118.2,80;12.6,113.2,90;15.0,110.8,70];
nhc_wpac_2021_36 = [9.9,128.5,80;10.5,123.0,85;11.3,118.3,90;12.7,113.7,105;15.1,111.5,90];
btk_wpac_2021_36 = [9.4,128.9,125;10.2,122.5,110;10.7,117.4,90;12.6,112.2,130;15.9,110.7,75]; # JTWC best track
myvect = [myvect;my_wpac_2021_36];
nhcvect = [nhcvect;nhc_wpac_2021_36];
btkvect = [btkvect;btk_wpac_2021_36];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 37 ... RAI before 2021-12-15-21Z
# my at https://twitter.com/elioeFIN/status/1471199307441266689

my_wpac_2021_37 = [9.8,122.9,90;11.1,117.5,80;12.6,112.2,85;15.0,110.2,65;18.0,111.2,40];
nhc_wpac_2021_37 = [10.0,123.5,120;11.0,118.2,100;12.5,113.4,110;14.7,110.8,75;18.1,111.1,40];
btk_wpac_2021_37 = [10.2,122.5,110;10.7,117.4,90;12.6,112.2,130;15.9,110.7,75;19.9,113.1,40]; # JTWC best track
myvect = [myvect;my_wpac_2021_37];
nhcvect = [nhcvect;nhc_wpac_2021_37];
btkvect = [btkvect;btk_wpac_2021_37];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 38 ... RAI before 2021-12-16-03Z
# my at https://twitter.com/elioeFIN/status/1471284081778429954

my_wpac_2021_38 = [9.8,121.7,110;11.2,116.4,105;13.0,111.8,100;16.1,110.7,65;18.8,112.0,40];
nhc_wpac_2021_38 = [10.3,121.9,100;11.6,116.6,105;13.2,111.9,110;16.1,110.3,75;19.3,112.3,40];
btk_wpac_2021_38 = [10.0,121.1,95;11.0,115.9,100;13.1,111.4,120;17.3,110.8,70;20.6,113.8,35]; # JTWC best track
myvect = [myvect;my_wpac_2021_38];
nhcvect = [nhcvect;nhc_wpac_2021_38];
btkvect = [btkvect;btk_wpac_2021_38];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 39 ... RAI before 2021-12-16-21Z
# my at https://twitter.com/elioeFIN/status/1471557966860103684

my_wpac_2021_39 = [10.9,116.8,95;12.9,111.6,90;16.3,109.9,75;19.0,111.2,45];
nhc_wpac_2021_39 = [10.9,116.7,100;12.7,112.0,105;15.6,110.0,75;18.3,111.0,40];
btk_wpac_2021_39 = [10.7,117.4,90;12.6,112.2,130;15.9,110.7,75;19.9,113.1,40]; # JTWC best track
myvect = [myvect;my_wpac_2021_39];
nhcvect = [nhcvect;nhc_wpac_2021_39];
btkvect = [btkvect;btk_wpac_2021_39];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Wpac 40 ... RAI before 2021-12-17-03Z
# my at https://twitter.com/elioeFIN/status/1471650949332615175

my_wpac_2021_40 = [11.0,115.3,95;13.1,110.6,85;17.3,109.9,55;19.6,111.6,40];
nhc_wpac_2021_40 = [10.7,115.5,105;12.9,111.2,100;16.1,110.1,70;18.6,111.6,40];
btk_wpac_2021_40 = [11.0,115.9,100;13.1,111.4,120;17.3,110.8,70;20.6,113.8,35]; # JTWC best track
myvect = [myvect;my_wpac_2021_40];
nhcvect = [nhcvect;nhc_wpac_2021_40];
btkvect = [btkvect;btk_wpac_2021_40];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 06 ... TL / 90P before 2022-01-08-21Z
# my at https://twitter.com/elioeFIN/status/1479895580738744320
# (no JTWC forecast)

# Shem 07 ... TD03F / 05P before 2022-01-08-21Z
# my at https://twitter.com/elioeFIN/status/1479904235235983368

my_shem_2022_07 = [19.5,176.7,40;20.0,174.5,55;22.5,175.1,75;26.5,177.5,55;28.2,179.3,55];
nhc_shem_2022_07 = [19.4,175.2,45;19.8,173.7,45;21.0,172.7,40;24.0,175.1,40;26.7,177.0,35];
btk_shem_2022_07 = [20.0,177.1,45;20.7,174.3,45;21.8,173.7,55;24.9,175.1,45;27.5,177.5,60]; # JTWC best track
myvect = [myvect;my_shem_2022_07];
nhcvect = [nhcvect;nhc_shem_2022_07];
btkvect = [btkvect;btk_shem_2022_07];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 08 ... TD03F / 05P before 2022-01-09-03Z
# my at https://twitter.com/elioeFIN/status/1479987257578860551

my_shem_2022_08 = [19.3,176.2,40;19.7,174.9,50;21.3,174.8,50;24.4,177.5,45;27.4,179.5,45];
nhc_shem_2022_08 = [19.1,175.0,45;19.8,173.3,45;21.5,173.2,40;24.3,175.7,40;27.1,177.4,35];
btk_shem_2022_08 = [20.1,176.6,40;20.8,173.8,45;22.8,173.9,60;25.6,175.9,45;27.9,177.4,50]; # JTWC best track
myvect = [myvect;my_shem_2022_08];
nhcvect = [nhcvect;nhc_shem_2022_08];
btkvect = [btkvect;btk_shem_2022_08];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 09 ... TD03F / 05P before 2022-01-09-21Z
# my at https://twitter.com/elioeFIN/status/1480253882097881104

my_shem_2022_09 = [20.4,175.2,50;21.9,175.2,45;24.8,176.9,45;26.9,179.4,40;28.0,181.9,35];
nhc_shem_2022_09 = [20.5,175.6,45;21.9,174.9,45;24.8,176.8,50;27.0,179.2,45;28.9,181.8,40];
btk_shem_2022_09 = [20.7,174.3,45;21.8,173.7,55;24.9,175.1,50;27.5,177.5,60;28.3,179.2,45]; # JTWC best track
myvect = [myvect;my_shem_2022_09];
nhcvect = [nhcvect;nhc_shem_2022_09];
btkvect = [btkvect;btk_shem_2022_09];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 10 ... TIFFANY before 2022-01-09-21Z
# my at https://twitter.com/elioeFIN/status/1480258674195144707

my_shem_2022_10 = [14.2,142.0,40;14.0,138.5,50;14.4,134.5,50;15.2,132.2,35;15.6,132.1,30];
nhc_shem_2022_10 = [14.3,141.9,45;14.2,138.2,55;14.3,134.6,70;14.5,132.3,50;14.9,130.4,35];
btk_shem_2022_10 = [14.6,141.9,30;14.8,136.7,55;15.1,131.8,25;15.9,127.1,20;17.0,125.2,25]; # JTWC best track
myvect = [myvect;my_shem_2022_10];
nhcvect = [nhcvect;nhc_shem_2022_10];
btkvect = [btkvect;btk_shem_2022_10];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 11 ... CODY before 2022-01-10-21Z
# my at https://twitter.com/elioeFIN/status/1480615323258740740

my_shem_2022_11 = [21.8,173.5,40;24.7,175.7,45;26.9,177.9,45];
nhc_shem_2022_11 = [21.8,173.5,55;24.4,175.4,55;27.4,178.4,50];
btk_shem_2022_11 = [21.8,173.7,55;24.9,175.1,45;27.5,177.5,60]; # JTWC best track
myvect = [myvect;my_shem_2022_11];
nhcvect = [nhcvect;nhc_shem_2022_11];
btkvect = [btkvect;btk_shem_2022_11];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 12 ... TIFFANY before 2022-01-10-21Z
# my at https://twitter.com/elioeFIN/status/1480628819635720197

my_shem_2022_12 = [14.2,137.4,55;14.2,133.7,45];
nhc_shem_2022_12 = [14.5,137.2,55;14.8,133.3,30];
btk_shem_2022_12 = [14.8,136.7,55;15.1,131.8,25]; # JTWC best track
myvect = [myvect;my_shem_2022_12];
nhcvect = [nhcvect;nhc_shem_2022_12];
btkvect = [btkvect;btk_shem_2022_12];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 13 ... 01 / 93S before 2022-01-22-03Z
# my at https://twitter.com/elioeFIN/status/1484702280293224451
# (no JTWC forecast)

# Shem 14 ... 01 / 93S before 2022-01-22-21Z
# my at https://twitter.com/elioeFIN/status/1484976875185258496
# (no JTWC forecast)

# Shem 15 ... 01 / 07S before 2022-01-23-21Z
# my at https://twitter.com/elioeFIN/status/1485331319366299649
# (no JTWC forecast)

# Shem 16 ... 02 / 96S before 2022-01-26-21Z
# my at https://twitter.com/elioeFIN/status/1486418200673849345
# (no JTWC forecast)

# Shem 17 ... 02 / 96S before 2022-01-27-03Z
# my at https://twitter.com/elioeFIN/status/1486504191514365954

my_shem_2022_17 = [17.9,76.3,45;18.6,72.8,45;19.9,69.2,50;19.2,65.6,60;19.0,61.4,70];
nhc_shem_2022_17 = [18.2,77.5,40;19.2,72.4,45;19.4,69.4,55;19.2,66.5,55;19.2,63.2,50];
btk_shem_2022_17 = [18.9,76.0,45;18.3,71.6,55;17.5,68.1,90;16.3,64.5,90;16.4,62.2,65]; # JTWC best track
myvect = [myvect;my_shem_2022_17];
nhcvect = [nhcvect;nhc_shem_2022_17];
btkvect = [btkvect;btk_shem_2022_17];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 18 ... BATSIRAI before 2022-01-27-21Z
# my at https://twitter.com/elioeFIN/status/1486784077659258881
# (no JTWC forecast)

# Shem 19 ... BATSIRAI before 2022-01-28-03Z
# my at https://twitter.com/elioeFIN/status/1486876577862406144

my_shem_2022_19 = [19.0,72.7,45;19.3,69.4,40;19.0,66.4,40;18.6,63.0,40;19.1,59.5,50];
nhc_shem_2022_19 = [19.4,72.1,50;19.5,68.8,55;18.8,65.8,65;18.8,63.4,70;19.6,60.0,60];
btk_shem_2022_19 = [18.3,71.6,55;17.5,68.1,90;16.3,64.5,90;16.4,62.2,65;18.1,58.3,105]; # JTWC best track
myvect = [myvect;my_shem_2022_19];
nhcvect = [nhcvect;nhc_shem_2022_19];
btkvect = [btkvect;btk_shem_2022_19];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 20 ... BATSIRAI before 2022-01-28-21Z
# my at https://twitter.com/elioeFIN/status/1487143895804878853
# (no JTWC forecast)

# Shem 21 ... BATSIRAI before 2022-01-29-21Z
# my at https://twitter.com/elioeFIN/status/1487513870906404868
# (no JTWC forecast)

# Shem 22 ... BATSIRAI before 2022-01-30-03Z
# my at https://twitter.com/elioeFIN/status/1487601368647061506

my_shem_2022_22 = [16.5,64.6,80;16.7,61.3,80;18.2,57.4,85;19.3,55.1,100;19.4,53.2,95];
nhc_shem_2022_22 = [16.8,64.6,90;17.2,61.2,95;18.2,57.6,100;18.9,54.2,100;18.9,52.0,100];
btk_shem_2022_22 = [16.3,64.5,90;16.4,62.2,65;18.1,58.3,105;19.0,55.7,115;19.3,53.8,110]; # JTWC best track
myvect = [myvect;my_shem_2022_22];
nhcvect = [nhcvect;nhc_shem_2022_22];
btkvect = [btkvect;btk_shem_2022_22];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 23 ... BATSIRAI before 2022-01-30-09Z
# my at https://twitter.com/elioeFIN/status/1487687299286585346
# (no JTWC forecast)

# Shem 24 ... BATSIRAI before 2022-01-30-21Z
# my at https://twitter.com/elioeFIN/status/1487872115416129537
# (no JTWC forecast)

# Shem 25 ... BATSIRAI before 2022-01-31-03Z
# my at https://twitter.com/elioeFIN/status/1487961701123248129

my_shem_2022_25 = [16.5,61.4,105;18.0,58.1,115;19.0,54.9,125;19.0,52.5,125;19.7,49.9,110];
nhc_shem_2022_25 = [16.7,61.5,85;18.1,57.9,90;19.1,55.3,105;19.2,53.1,105;20.1,50.9,90];
btk_shem_2022_25 = [16.4,62.2,65;18.1,58.3,105;19.0,55.7,115;19.3,53.8,110;19.9,51.3,105]; # JTWC best track
myvect = [myvect;my_shem_2022_25];
nhcvect = [nhcvect;nhc_shem_2022_25];
btkvect = [btkvect;btk_shem_2022_25];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 26 ... BATSIRAI before 2022-01-31-21Z
# my at https://twitter.com/elioeFIN/status/1488232127552499713
# (no JTWC forecast)

# Shem 27 ... BATSIRAI before 2022-02-01-03Z
# my at https://twitter.com/elioeFIN/status/1488323704518025218

my_shem_2022_27 = [18.0,59.1,80;19.0,56.1,90;19.1,53.0,100;19.1,50.9,100;19.5,47.9,55];
nhc_shem_2022_27 = [18.0,59.0,70;18.9,55.7,90;19.0,53.3,105;19.3,50.7,110;19.4,48.1,90];
btk_shem_2022_27 = [18.1,58.3,105;19.0,55.7,115;19.3,53.8,110;19.9,51.3,105;21.5,46.6,60]; # JTWC best track
myvect = [myvect;my_shem_2022_27];
nhcvect = [nhcvect;nhc_shem_2022_27];
btkvect = [btkvect;btk_shem_2022_27];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 28 ... 16U / 09P before 2022-02-01-15Z
# my at https://twitter.com/elioeFIN/status/1488500085013069826

my_shem_2022_28 = [15.8,156.1,35;17.5,159.4,35];
nhc_shem_2022_28 = [15.6,156.6,35;16.7,160.3,40];
btk_shem_2022_28 = [15.5,156.1,25;17.6,160.0,20]; # JTWC best track
myvect = [myvect;my_shem_2022_28];
nhcvect = [nhcvect;nhc_shem_2022_28];
btkvect = [btkvect;btk_shem_2022_28];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 29 ... BATSIRAI before 2022-02-01-15Z
# my at https://twitter.com/elioeFIN/status/1488504939026468872

my_shem_2022_29 = [18.4,57.0,95;19.0,53.9,100;18.9,51.3,105;19.4,48.6,95;20.5,44.5,35];
nhc_shem_2022_29 = [18.4,56.7,100;19.1,54.0,105;19.3,51.5,110;20.1,48.4,90;21.0,44.2,55];
btk_shem_2022_29 = [18.8,56.7,125;19.2,55.0,110;19.4,52.5,115;20.8,49.4,100;22.7,44.2,35]; # JTWC best track
myvect = [myvect;my_shem_2022_29];
nhcvect = [nhcvect;nhc_shem_2022_29];
btkvect = [btkvect;btk_shem_2022_29];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 30 ... BATSIRAI before 2022-02-01-21Z
# my at https://twitter.com/elioeFIN/status/1488584547348488194
# (no JTWC forecast)

# Shem 31 ... BATSIRAI before 2022-02-02-21Z
# my at https://twitter.com/elioeFIN/status/1488960038437896197
# (no JTWC forecast)

# Shem 32 ... 16U/09P before 2022-02-03-03Z
# my at https://twitter.com/elioeFIN/status/1489043572942848006

my_shem_2022_32 = [18.3,163.0,20];
nhc_shem_2022_32 = [18.2,163.5,25];
btk_shem_2022_32 = [19.4,162.8,30]; # JTWC best track
myvect = [myvect;my_shem_2022_32];
nhcvect = [nhcvect;nhc_shem_2022_32];
btkvect = [btkvect;btk_shem_2022_32];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;3];

# Shem 33 ... BATSIRAI before 2022-02-03-03Z
# my at https://twitter.com/elioeFIN/status/1489050752848998405

my_shem_2022_33 = [19.4,53.3,105;19.8,50.0,110;21.3,44.6,45;22.1,40.1,50;23.1,38.9,60];
nhc_shem_2022_33 = [19.4,53.3,105;19.6,50.1,110;20.6,45.3,55;22.0,40.8,50;22.9,39.1,65];
btk_shem_2022_33 = [19.3,53.8,110;19.9,51.3,105;21.5,46.6,60;23.0,42.4,40;26.2,41.4,45]; # JTWC best track
myvect = [myvect;my_shem_2022_33];
nhcvect = [nhcvect;nhc_shem_2022_33];
btkvect = [btkvect;btk_shem_2022_33];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 34 ... BATSIRAI before 2022-02-03-09Z
# my at https://twitter.com/elioeFIN/status/1489123116005552131
# (no JTWC forecast)

# Shem 35 ... BATSIRAI before 2022-02-03-21Z
# my at https://twitter.com/elioeFIN/status/1489319484473098241
# (no JTWC forecast)

# Shem 36 ... BATSIRAI before 2022-02-04-21Z
# my at https://twitter.com/elioeFIN/status/1489689544895123459
# (no JTWC forecast)

# Shem 37 ... BATSIRAI before 2022-02-05-21Z
# my at https://twitter.com/elioeFIN/status/1490047220925841418
# (no JTWC forecast)

# Shem 38 ... BATSIRAI before 2022-02-06-21Z
# my at https://twitter.com/elioeFIN/status/1490404382000697348
# (no JTWC forecast)

# Shem 39 ... 08F/92P before 2022-02-08-21Z
# my at https://twitter.com/elioeFIN/status/1491119218452013060
# (no JTWC forecast)

# Shem 40 ... DOVI before 2022-02-09-21Z
# my at https://twitter.com/elioeFIN/status/1491494135286616074

my_shem_2022_40 = [23.3,167.3,55;29.5,166.8,60];
nhc_shem_2022_40 = [23.0,166.2,65;29.5,165.5,65];
btk_shem_2022_40 = [23.8,166.4,80;31.8,166.2,65]; # JTWC best track
myvect = [myvect;my_shem_2022_40];
nhcvect = [nhcvect;nhc_shem_2022_40];
btkvect = [btkvect;btk_shem_2022_40];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 41 ... DOVI before 2022-02-10-03Z
# my at https://twitter.com/elioeFIN/status/1491571914875224066

my_shem_2022_41 = [24.3,166.3,65;31.2,166.6,65];
nhc_shem_2022_41 = [24.6,166.2,70;31.6,166.2,70];
btk_shem_2022_41 = [25.2,166.0,90;33.5,166.6,55]; # JTWC best track
myvect = [myvect;my_shem_2022_41];
nhcvect = [nhcvect;nhc_shem_2022_41];
btkvect = [btkvect;btk_shem_2022_41];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 42 ... DOVI before 2022-02-10-21Z
# my at https://twitter.com/elioeFIN/status/1491854933402034182
# (no JTWC forecast)

# Shem 43 ... DOVI before 2022-02-11-03Z
# my at https://twitter.com/elioeFIN/status/1491940866230992903
# (no JTWC forecast)

# Shem 44 ... 04/94S before 2022-02-12-21Z
# my at https://twitter.com/elioeFIN/status/1492584903392776195
# (no JTWC forecast)

# Shem 45 ... 04/94S before 2022-02-13-03Z
# my at https://twitter.com/elioeFIN/status/1492672357370150915
# (no JTWC forecast)

# Shem 46 ... 04/94S before 2022-02-13-09Z
# my at https://twitter.com/elioeFIN/status/1492748468842020866

my_shem_2022_46 = [16.0,56.9,40;16.7,52.1,45;14.9,49.1,25];
nhc_shem_2022_46 = [16.2,57.2,35;16.6,52.6,35;15.0,49.5,25];
btk_shem_2022_46 = [16.4,55.5,45;16.9,50.6,45;17.0,46.2,25]; # JTWC best track (days 1-2 only)
myvect = [myvect;my_shem_2022_46];
nhcvect = [nhcvect;nhc_shem_2022_46];
btkvect = [btkvect;btk_shem_2022_46];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 47 ... DUMAKO before 2022-02-13-21Z
# my at https://twitter.com/elioeFIN/status/1492930529787891713

my_shem_2022_47 = [16.5,53.3,50;15.9,49.5,40;14.2,44.9,25];
nhc_shem_2022_47 = [16.7,53.7,55;15.9,50.0,45;14.6,47.0,25];
btk_shem_2022_47 = [16.8,52.9,45;17.1,48.4,30;16.7,43.5,25]; # JTWC best track (days 1-2 only)
myvect = [myvect;my_shem_2022_47];
nhcvect = [nhcvect;nhc_shem_2022_47];
btkvect = [btkvect;btk_shem_2022_47];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 48 ... DUMAKO before 2022-02-14-03Z
# my at https://twitter.com/elioeFIN/status/1493016142109155335
# (no JTWC forecast)

# Shem 49 ... DUMAKO before 2022-02-14-21Z
# my at https://twitter.com/elioeFIN/status/1493311746827771904

my_shem_2022_49 = [16.2,49.1,25];
nhc_shem_2022_49 = [16.3,48.9,40];
btk_shem_2022_49 = [17.1,48.4,30]; # JTWC best track
myvect = [myvect;my_shem_2022_49];
nhcvect = [nhcvect;nhc_shem_2022_49];
btkvect = [btkvect;btk_shem_2022_49];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;3];

# Shem 50 ... DUMAKO before 2022-02-15-03Z
# my at https://twitter.com/elioeFIN/status/1493400103197069312
# (no JTWC forecast)

# Shem 51 ... 05/13S before 2022-02-16-21Z
# my at https://twitter.com/elioeFIN/status/1494033673330561029

my_shem_2022_51 = [14.0,64.0,45;15.4,61.0,55;17.1,58.2,70;17.8,55.8,85;18.3,52.9,95];
nhc_shem_2022_51 = [14.3,64.5,55;15.5,61.8,70;16.9,59.0,80;17.5,56.7,95;18.0,53.8,95];
btk_shem_2022_51 = [13.7,63.7,50;15.1,60.5,75;16.8,57.1,85;17.6,54.6,115;18.5,52.1,90]; # JTWC best track
myvect = [myvect;my_shem_2022_51];
nhcvect = [nhcvect;nhc_shem_2022_51];
btkvect = [btkvect;btk_shem_2022_51];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 52 ... EMNATI before 2022-02-17-03Z
# my at https://twitter.com/elioeFIN/status/1494126449518854147
# (no JTWC forecast)

# Shem 53 ... EMNATI before 2022-02-17-21Z
# my at https://twitter.com/elioeFIN/status/1494398514058739721
# (no JTWC forecast, 1d latitude was typoed)

# Shem 54 ... EMNATI before 2022-02-18-03Z
# my at https://twitter.com/elioeFIN/status/1494490223375437828

my_shem_2022_54 = [15.7,59.9,70;17.4,57.0,100;18.1,54.3,115;18.5,51.2,105;20.0,47.5,75];
nhc_shem_2022_54 = [14.6,59.6,75;16.0,57.0,85;17.6,54.9,95;18.1,51.9,80;19.4,48.2,65];
btk_shem_2022_54 = [15.4,59.8,65;17.1,56.6,100;17.7,54.0,105;19.1,51.2,90;22.6,47.8,65]; # JTWC best track
myvect = [myvect;my_shem_2022_54];
nhcvect = [nhcvect;nhc_shem_2022_54];
btkvect = [btkvect;btk_shem_2022_54];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 55 ... EMNATI before 2022-02-18-21Z
# my at https://twitter.com/elioeFIN/status/1494750373965438982
# (no JTWC forecast)

# Shem 56 ... EMNATI before 2022-02-19-21Z
# my at https://twitter.com/elioeFIN/status/1495116614672560129

my_shem_2022_56 = [18.0,54.6,95;19.3,51.5,105;21.2,48.1,80;24.6,43.4,35;27.7,41.4,50];
nhc_shem_2022_56 = [18.1,54.2,105;19.3,51.1,105;21.3,47.7,80;24.0,44.4,45;27.0,41.4,50];
btk_shem_2022_56 = [17.6,54.6,115;18.5,52.1,90;21.6,48.8,75;24.8,44.1,35;28.9,41.4,50]; # JTWC best track
myvect = [myvect;my_shem_2022_56];
nhcvect = [nhcvect;nhc_shem_2022_56];
btkvect = [btkvect;btk_shem_2022_56];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 57 ... EMNATI before 2022-02-20-03Z
# my at https://twitter.com/elioeFIN/status/1495210401407062025
# (no JTWC forecast)

# Shem 58 ... EMNATI before 2022-02-20-15Z
# my at https://twitter.com/elioeFIN/status/1495378457995395076
# (no JTWC forecast)

# Shem 59 ... EMNATI before 2022-02-20-21Z
# my at https://twitter.com/elioeFIN/status/1495473963891318791

my_shem_2022_59 = [19.2,51.7,105;21.5,48.3,75;25.2,44.0,35;29.2,41.0,45;31.9,41.0,45];
nhc_shem_2022_59 = [19.0,51.6,120;21.5,47.8,85;24.7,44.1,45;27.8,41.6,50;31.9,41.3,50];
btk_shem_2022_59 = [18.5,52.1,90;21.6,48.8,75;24.8,44.1,35;28.9,41.4,50;34.13,42.8,56.0]; # JTWC best track (days 1-4), MFR table (day 5)
myvect = [myvect;my_shem_2022_59];
nhcvect = [nhcvect;nhc_shem_2022_59];
btkvect = [btkvect;btk_shem_2022_59];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 60 ... EMNATI before 2022-02-21-03Z
# my at https://twitter.com/elioeFIN/status/1495570390927745029
# (no JTWC forecast)

# Shem 61 ... EMNATI before 2022-02-21-21Z
# my at https://twitter.com/elioeFIN/status/1495828774914568203

my_shem_2022_61 = [21.5,48.5,105;25.2,44.6,35;29.4,41.9,50;32.4,42.4,50];
nhc_shem_2022_61 = [21.4,48.7,90;24.8,45.3,55;28.4,42.6,45;31.6,43.3,45];
btk_shem_2022_61 = [21.6,48.8,75;24.8,44.1,35;28.9,41.4,50;34.13,42.8,56.0]; # JTWC best track (days 1-3), MFR table (day 4)
myvect = [myvect;my_shem_2022_61];
nhcvect = [nhcvect;nhc_shem_2022_61];
btkvect = [btkvect;btk_shem_2022_61];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 62 ... EMNATI before 2022-02-22-03Z
# my at https://twitter.com/elioeFIN/status/1495933273360543747
# (no JTWC forecast)

# Shem 63 ... EMNATI before 2022-02-22-21Z
# my at https://twitter.com/elioeFIN/status/1496201617644867586

my_shem_2022_63 = [25.0,44.9,40;28.8,42.1,40;32.2,42.1,50];
nhc_shem_2022_63 = [24.9,45.4,55;28.3,43.0,50;31.5,43.3,45];
btk_shem_2022_63 = [24.8,44.1,35;28.9,41.4,50;34.13,42.8,56.0]; # JTWC best track (days 1-2), MFR table (day 3)
myvect = [myvect;my_shem_2022_63];
nhcvect = [nhcvect;nhc_shem_2022_63];
btkvect = [btkvect;btk_shem_2022_63];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 64 ... 22U/90S before 2022-02-24-21Z
# my at https://twitter.com/elioeFIN/status/1496924798487830528
# (no JTWC forecast)

# Shem 65 ... ANIKA before 2022-02-25-21Z
# my at https://twitter.com/elioeFIN/status/1497296210285105155

my_shem_2022_65 = [13.9,127.2,50;14.4,126.6,40;15.1,125.3,35;15.9,123.6,45;18.2,120.0,40];
nhc_shem_2022_65 = [13.8,127.4,45;13.9,126.9,45;14.0,126.1,45;15.2,124.2,45;16.5,122.3,45];
btk_shem_2022_65 = [14.2,126.8,35;15.3,125.9,30;17.5,123.7,20;18.2,121.6,35;20.4,121.1,35]; # JTWC best track
myvect = [myvect;my_shem_2022_65];
nhcvect = [nhcvect;nhc_shem_2022_65];
btkvect = [btkvect;btk_shem_2022_65];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 66 ... VERNON before 2022-02-25-21Z
# my at https://twitter.com/elioeFIN/status/1497298545010958337
# (no JTWC forecast)

# Shem 67 ... ANIKA before 2022-02-26-21Z
# my at https://twitter.com/elioeFIN/status/1497661336435806226

my_shem_2022_67 = [14.7,126.1,45;15.2,124.6,45];
nhc_shem_2022_67 = [14.9,125.9,30;15.7,124.6,30];
btk_shem_2022_67 = [15.3,125.9,30;17.5,123.7,20]; # JTWC best track
myvect = [myvect;my_shem_2022_67];
nhcvect = [nhcvect;nhc_shem_2022_67];
btkvect = [btkvect;btk_shem_2022_67];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 68 ... VERNON before 2022-02-27-03Z
# my at https://twitter.com/elioeFIN/status/1497739839168524293

my_shem_2022_68 = [13.5,87.0,75;15.6,85.2,85;19.3,83.3,85;23.1,80.6,70;28.2,77.1,50];
nhc_shem_2022_68 = [12.7,86.9,90;15.0,85.4,80;18.0,84.1,80;21.5,81.9,75;25.5,79.1,65];
btk_shem_2022_68 = [13.8,87.8,45;14.8,87.0,45;17.7,84.6,50;22.0,82.3,60;27.2,80.3,45]; # JTWC best track
myvect = [myvect;my_shem_2022_68];
nhcvect = [nhcvect;nhc_shem_2022_68];
btkvect = [btkvect;btk_shem_2022_68];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 69 ... ANIKA before 2022-02-27-03Z
# my at https://twitter.com/elioeFIN/status/1497752053212499969
# (no JTWC forecast)

# Shem 70 ... VERNON before 2022-02-27-09Z
# my at https://twitter.com/elioeFIN/status/1497827531940061186
# (no JTWC forecast)

# Shem 71 ... ANIKA before 2022-02-27-09Z
# my at https://twitter.com/elioeFIN/status/1497830574567964673
# (no JTWC forecast)

# Shem 72 ... VERNON before 2022-02-27-21Z
# my at https://twitter.com/elioeFIN/status/1498019652139634688
# (no JTWC forecast)

# Shem 73 ... ANIKA before 2022-02-27-21Z
# my at https://twitter.com/elioeFIN/status/1498024238661394439
# (no JTWC forecast)

# Shem 74 ... VERNON before 2022-02-28-21Z
# my at https://twitter.com/elioeFIN/status/1498376382962929668
# (no JTWC forecast)

# Shem 75 ... ANIKA before 2022-02-28-21Z
# my at https://twitter.com/elioeFIN/status/1498390518845296644
# (no JTWC forecast)

# Shem 76 ... VERNON before 2022-03-01-03Z
# my at https://twitter.com/elioeFIN/status/1498459467612139520

my_shem_2022_76 = [18.5,83.9,60;21.4,81.1,65;24.9,78.6,55;28.8,77.6,40];
nhc_shem_2022_76 = [16.9,84.9,50;19.4,82.3,55;23.2,79.5,55;26.9,77.5,50];
btk_shem_2022_76 = [17.7,84.6,50;22.0,82.3,60;27.2,80.3,45;30.4,79.5,45]; # JTWC best track
myvect = [myvect;my_shem_2022_76];
nhcvect = [nhcvect;nhc_shem_2022_76];
btkvect = [btkvect;btk_shem_2022_76];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 77 ... ANIKA before 2022-03-01-03Z
# my at https://twitter.com/elioeFIN/status/1498472212814258177
# (no JTWC forecast)

# Shem 78 ... VERNON before 2022-03-01-21Z
# my at https://twitter.com/elioeFIN/status/1498732584511193088
# (no JTWC forecast)

# Shem 79 ... 09/97S before 2022-03-06-03Z
# my at https://twitter.com/elioeFIN/status/1500285403873611779
# (no JTWC forecast)

# Shem 80 ... 09/97S before 2022-03-06-21Z
# my at https://twitter.com/elioeFIN/status/1500558565156823043
# (no JTWC forecast)

# Shem 81 ... GOMBE before 2022-03-07-21Z
# my at https://twitter.com/elioeFIN/status/1500912827451772928

my_shem_2022_81 = [14.9,48.4,30;14.9,45.7,40;14.9,43.2,60;14.9,41.5,80;15.5,40.0,90];
nhc_shem_2022_81 = [14.9,48.8,30;14.6,46.8,35;14.8,45.1,45;15.1,43.2,60;16.0,42.6,45];
btk_shem_2022_81 = [15.0,47.6,20;15.3,44.4,50;15.8,41.3,85;15.1,38.4,40;15.6,35.1,25]; # JTWC best track (except day 5)
myvect = [myvect;my_shem_2022_81];
nhcvect = [nhcvect;nhc_shem_2022_81];
btkvect = [btkvect;btk_shem_2022_81];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 82 ... GOMBE before 2022-03-08-03Z
# my at https://twitter.com/elioeFIN/status/1500997576820240385
# (no JTWC forecast)

# Shem 83 ... GOMBE before 2022-03-08-21Z
# my at https://twitter.com/elioeFIN/status/1501277108718510081

my_shem_2022_83 = [15.0,45.0,55;15.3,43.0,80;15.4,39.6,75;15.2,38.1,30;17.0,39.1,30];
nhc_shem_2022_83 = [15.2,44.6,50;15.6,42.2,75;15.9,39.6,65;16.1,38.1,40;17.1,38.0,30];
btk_shem_2022_83 = [15.3,44.4,50;15.8,41.3,85;15.1,38.4,40;15.6,35.1,25;17.1,35.4,20]; # JTWC best track (days 1-3 only)
myvect = [myvect;my_shem_2022_83];
nhcvect = [nhcvect;nhc_shem_2022_83];
btkvect = [btkvect;btk_shem_2022_83];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 84 ... GOMBE before 2022-03-09-03Z
# my at https://twitter.com/elioeFIN/status/1501363953892478980
# (no JTWC forecast)

# Shem 85 ... GOMBE before 2022-03-09-09Z
# my at https://twitter.com/elioeFIN/status/1501452252690661379

my_shem_2022_85 = [15.3,43.2,75;15.4,40.6,100;15.3,38.4,35;16.0,38.2,25];
nhc_shem_2022_85 = [15.2,42.8,65;15.4,40.6,70;15.3,38.6,40;15.4,37.5,30];
btk_shem_2022_85 = [15.6,42.8,70;15.2,40.1,80;15.4,36.9,20;16.3,34.5,20]; # JTWC best track (days 1-3 only)
myvect = [myvect;my_shem_2022_85];
nhcvect = [nhcvect;nhc_shem_2022_85];
btkvect = [btkvect;btk_shem_2022_85];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 86 ... GOMBE before 2022-03-09-21Z
# my at https://twitter.com/elioeFIN/status/1501635206566096901

my_shem_2022_86 = [15.6,41.5,100;15.3,38.8,40;15.5,37.2,30;16.9,38.0,30];
nhc_shem_2022_86 = [15.5,41.0,100;15.5,38.5,55;15.6,37.5,30;16.2,37.6,25];
btk_shem_2022_86 = [15.8,41.3,85;15.1,38.4,40;15.6,35.1,25;17.1,35.4,20]; # JTWC best track (days 1-2 only)
myvect = [myvect;my_shem_2022_86];
nhcvect = [nhcvect;nhc_shem_2022_86];
btkvect = [btkvect;btk_shem_2022_86];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 87 ... GOMBE before 2022-03-10-21Z
# my at https://twitter.com/elioeFIN/status/1502004640027754496

my_shem_2022_87 = [15.3,38.5,40;15.7,36.9,25;16.7,36.7,25;18.3,37.8,30;19.8,40.1,45];
nhc_shem_2022_87 = [15.6,38.7,50;16.0,37.2,30;17.3,37.5,30;18.8,38.6,35;20.1,39.7,45];
btk_shem_2022_87 = [15.1,38.4,40;15.6,35.1,25;17.1,35.4,20;18.3,37.4,20;18.4,37.9,25]; # JTWC best track (day 1 only)
myvect = [myvect;my_shem_2022_87];
nhcvect = [nhcvect;nhc_shem_2022_87];
btkvect = [btkvect;btk_shem_2022_87];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 88 ... GOMBE before 2022-03-11-03Z
# my at https://twitter.com/elioeFIN/status/1502092596130336768

my_shem_2022_88 = [15.2,37.9,40;15.8,36.4,25;17.6,37.6,30;19.3,38.8,40;20.4,39.8,40];
nhc_shem_2022_88 = [15.2,38.3,35;15.7,36.9,30;17.4,37.5,30;18.7,38.6,35;19.5,39.5,50];
btk_shem_2022_88 = [15.1,37.3,30;15.9,34.7,25;17.4,35.7,20;18.5,37.3,25;17.9,37.8,25]; # JTWC best track (day 1 only)
myvect = [myvect;my_shem_2022_88];
nhcvect = [nhcvect;nhc_shem_2022_88];
btkvect = [btkvect;btk_shem_2022_88];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 89 ... GOMBE before 2022-03-11-21Z
# my at https://twitter.com/elioeFIN/status/1502355965760442373

my_shem_2022_89 = [15.6,36.8,25;17.0,36.9,25;19.1,37.9,30;19.7,38.5,40;20.2,38.9,40];
nhc_shem_2022_89 = [15.7,36.4,30;17.0,36.3,30;18.3,37.6,30;18.7,38.0,30;19.1,38.3,25];
btk_shem_2022_89 = [15.6,35.1,25;17.1,35.4,20;18.3,37.4,20;18.4,37.9,25;17.9,37.4,25]; # no JTWC btk values
myvect = [myvect;my_shem_2022_89];
nhcvect = [nhcvect;nhc_shem_2022_89];
btkvect = [btkvect;btk_shem_2022_89];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 90 ... 27U/20S before 2022-03-13-21Z
# my at https://twitter.com/elioeFIN/status/1503090375216574464

my_shem_2022_90 = [15.4,99.8,40;16.0,95.6,50;16.7,91.4,35];
nhc_shem_2022_90 = [15.7,99.3,45;16.4,95.5,45;17.0,91.6,40];
btk_shem_2022_90 = [16.7,98.8,65;17.6,95.3,55;19.6,92.6,40]; # JTWC best track
myvect = [myvect;my_shem_2022_90];
nhcvect = [nhcvect;nhc_shem_2022_90];
btkvect = [btkvect;btk_shem_2022_90];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 91 ... 27U/20S before 2022-03-14-03Z
# my at https://twitter.com/elioeFIN/status/1503172511273529347
# (no JTWC forecast)

# Shem 92 ... BILLY before 2022-03-15-03Z
# my at https://twitter.com/elioeFIN/status/1503538164908101634
# (no JTWC forecast)

# Nio 01 ... BOB 02 / 91B before 2022-03-20-09Z
# my at https://twitter.com/elioeFIN/status/1505438825170022406
# (no JTWC forecast)

# Shem 93 ... 28U / 21S before 2022-03-21-03Z
# my at https://twitter.com/elioeFIN/status/1505702992347074567

my_shem_2022_93 = [16.1,109.8,65;17.0,108.0,55;18.5,107.0,40;21.3,107.4,40;27.1,111.1,30];
nhc_shem_2022_93 = [16.4,109.9,90;17.4,108.2,70;18.2,106.7,55;21.0,106.7,45;26.5,108.7,40];
btk_shem_2022_93 = [16.7,109.4,90;18.3,108.9,75;19.9,107.4,35;24.8,106.9,30;29.4,108.6,35]; # JTWC best track
myvect = [myvect;my_shem_2022_93];
nhcvect = [nhcvect;nhc_shem_2022_93];
btkvect = [btkvect;btk_shem_2022_93];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Nio 02 ... BOB 02 / 91B before 2022-03-21-03Z
# my at https://twitter.com/elioeFIN/status/1505710959721168899
# (no JTWC forecast)

# Shem 94 ... CHARLOTTE before 2022-03-22-03Z
# my at https://twitter.com/elioeFIN/status/1506086272330313730

my_shem_2022_94 = [17.3,108.0,75;18.8,106.9,50;22.0,107.5,40;27.7,111.8,50];
nhc_shem_2022_94 = [17.5,107.9,80;18.9,106.6,50;22.4,107.2,40;26.7,109.9,40];
btk_shem_2022_94 = [18.3,108.9,75;19.9,107.4,35;24.8,106.9,30;29.4,108.6,35]; # JTWC best track
myvect = [myvect;my_shem_2022_94];
nhcvect = [nhcvect;nhc_shem_2022_94];
btkvect = [btkvect;btk_shem_2022_94];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 95 ... 10 / 94S before 2022-03-22-03Z
# my at https://twitter.com/elioeFIN/status/1506089713664413701
# (no JTWC forecast)

# Shem 96 ... CHARLOTTE before 2022-03-22-09Z
# my at https://twitter.com/elioeFIN/status/1506176491641581568

my_shem_2022_96 = [17.8,107.4,65;19.5,106.5,45;23.7,107.9,40;28.9,112.9,45];
nhc_shem_2022_96 = [18.0,107.4,65;19.8,106.5,50;24.2,107.7,45;27.6,109.7,35];
btk_shem_2022_96 = [19.1,108.5,65;21.1,107.3,30;26.5,107.2,40;28.4,108.9,35]; # JTWC best track
myvect = [myvect;my_shem_2022_96];
nhcvect = [nhcvect;nhc_shem_2022_96];
btkvect = [btkvect;btk_shem_2022_96];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 97 ... CHARLOTTE before 2022-03-23-03Z
# my at https://twitter.com/elioeFIN/status/1506435763256365067

my_shem_2022_97 = [19.9,107.7,50;23.8,107.7,40;29.4,110.8,35];
nhc_shem_2022_97 = [20.2,107.4,50;24.2,107.0,45;28.4,109.3,45];
btk_shem_2022_97 = [19.9,107.4,35;24.8,106.9,30;29.4,108.6,35]; # JTWC best track
myvect = [myvect;my_shem_2022_97];
nhcvect = [nhcvect;nhc_shem_2022_97];
btkvect = [btkvect;btk_shem_2022_97];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 98 ... HALIMA before 2022-03-24-03Z
# my at https://twitter.com/elioeFIN/status/1506799954257403905

my_shem_2022_98 = [13.9,74.9,70;16.7,75.1,95;21.1,76.6,80;23.3,79.3,55;23.9,82.1,35];
nhc_shem_2022_98 = [14.0,74.6,90;17.3,74.7,110;21.7,76.2,95;24.3,78.4,70;25.1,81.5,55];
btk_shem_2022_98 = [13.4,73.7,95;15.5,73.5,90;19.5,75.8,55;21.9,79.8,45;22.0,82.3,50]; # JTWC best track
myvect = [myvect;my_shem_2022_98];
nhcvect = [nhcvect;nhc_shem_2022_98];
btkvect = [btkvect;btk_shem_2022_98];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 99 ... HALIMA before 2022-03-24-09Z
# my at https://twitter.com/elioeFIN/status/1506891058768138242
# (no JTWC forecast)

# Shem 100 ... HALIMA before 2022-03-24-15Z
# my at https://twitter.com/elioeFIN/status/1506974839994830852

my_shem_2022_100 = [14.6,74.2,90;18.3,74.8,100;22.5,77.2,65;23.7,79.6,45;23.2,81.4,40];
nhc_shem_2022_100 = [14.7,73.7,100;18.6,74.6,105;22.2,76.6,85;23.7,79.6,45;23.0,81.6,55];
btk_shem_2022_100 = [14.2,73.4,125;17.3,74.4,65;21.0,77.9,45;22.3,81.3,45;21.4,82.5,40]; # JTWC best track
myvect = [myvect;my_shem_2022_100];
nhcvect = [nhcvect;nhc_shem_2022_100];
btkvect = [btkvect;btk_shem_2022_100];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 101 ... HALIMA before 2022-03-24-21Z
# my at https://twitter.com/elioeFIN/status/1507077035625267205
# (no JTWC forecast)

# Shem 102 ... HALIMA before 2022-03-25-15Z
# my at https://twitter.com/elioeFIN/status/1507338070139588616

my_shem_2022_102 = [17.4,73.8,120;20.4,76.3,85;22.0,79.5,60;21.7,81.7,45;21.3,83.5,55];
nhc_shem_2022_102 = [17.6,73.9,120;20.6,76.1,90;21.4,79.0,70;21.1,80.6,60;20.6,81.6,55];
btk_shem_2022_102 = [17.3,74.4,65;21.0,77.9,45;22.3,81.3,45;21.4,82.5,40;19.5,82.5,45]; # JTWC best track
myvect = [myvect;my_shem_2022_102];
nhcvect = [nhcvect;nhc_shem_2022_102];
btkvect = [btkvect;btk_shem_2022_102];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 103 ... HALIMA before 2022-03-26-03Z
# my at https://twitter.com/elioeFIN/status/1507532839285313542

my_shem_2022_103 = [19.2,75.3,95;20.6,78.3,75;20.8,80.6,60;20.4,82.3,60;19.9,84.0,70];
nhc_shem_2022_103 = [19.1,74.9,110;20.9,78.0,75;20.7,80.4,60;19.7,81.7,60;19.0,82.5,65];
btk_shem_2022_103 = [19.5,75.8,55;21.9,79.8,45;22.0,82.3,50;20.2,82.2,45;19.5,83.3,35]; # JTWC best track
myvect = [myvect;my_shem_2022_103];
nhcvect = [nhcvect;nhc_shem_2022_103];
btkvect = [btkvect;btk_shem_2022_103];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 104 ... HALIMA before 2022-03-26-09Z
# my at https://twitter.com/elioeFIN/status/1507615893752328196
# (no JTWC forecast)

# Shem 105 ... HALIMA before 2022-03-26-15Z
# my at https://twitter.com/elioeFIN/status/1507702816873357315

my_shem_2022_105 = [20.7,77.2,60;21.1,80.7,45;20.4,81.5,45;19.1,81.2,50;19.2,81.7,40];
nhc_shem_2022_105 = [20.5,77.4,70;21.3,80.3,60;20.4,81.8,60;19.3,82.4,50;18.9,81.2,45];
btk_shem_2022_105 = [21.0,77.9,45;22.3,81.3,45;21.4,82.5,40;19.5,82.5,45;19.7,84.3,35]; # JTWC best track
myvect = [myvect;my_shem_2022_105];
nhcvect = [nhcvect;nhc_shem_2022_105];
btkvect = [btkvect;btk_shem_2022_105];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 106 ... HALIMA before 2022-03-27-03Z
# my at https://twitter.com/elioeFIN/status/1507890274734948357

my_shem_2022_106 = [21.7,80.2,55;21.3,82.7,40;20.1,82.5,40;19.5,81.3,40];
nhc_shem_2022_106 = [22.0,79.8,60;21.8,82.0,50;20.8,82.5,35;19.6,82.2,30];
btk_shem_2022_106 = [21.9,79.8,45;22.0,82.3,50;20.2,82.2,45;19.5,83.3,35]; # JTWC best track
myvect = [myvect;my_shem_2022_106];
nhcvect = [nhcvect;nhc_shem_2022_106];
btkvect = [btkvect;btk_shem_2022_106];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 107 ... HALIMA before 2022-03-27-09Z
# my at https://twitter.com/elioeFIN/status/1507975112640897024
# (no JTWC forecast)

# Shem 108 ... HALIMA before 2022-03-28-09Z
# my at https://twitter.com/elioeFIN/status/1508336485090709508
# (no JTWC forecast)

# Shem 109 ... HALIMA before 2022-03-28-15Z
# my at https://twitter.com/elioeFIN/status/1508426544582217740

my_shem_2022_109 = [21.2,82.5,50];
nhc_shem_2022_109 = [21.4,82.9,35];
btk_shem_2022_109 = [21.4,82.5,40]; # JTWC best track
myvect = [myvect;my_shem_2022_109];
nhcvect = [nhcvect;nhc_shem_2022_109];
btkvect = [btkvect;btk_shem_2022_109];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;3];

# Shem 110 ... HALIMA before 2022-03-29-09Z
# my at https://twitter.com/elioeFIN/status/1508702433555451907
# (no JTWC forecast)

# Shem 111 ... HALIMA before 2022-03-29-15Z
# my at https://twitter.com/elioeFIN/status/1508787910094602252

my_shem_2022_111 = [20.1,81.9,50;19.3,83.2,40;18.8,83.0,35];
nhc_shem_2022_111 = [20.2,82.2,40;19.8,82.9,35;19.4,82.7,30];
btk_shem_2022_111 = [19.5,82.5,45;19.7,84.3,35;19.4,84.6,25]; # JTWC best track
myvect = [myvect;my_shem_2022_111];
nhcvect = [nhcvect;nhc_shem_2022_111];
btkvect = [btkvect;btk_shem_2022_111];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 112 ... HALIMA before 2022-03-30-09Z
# my at https://twitter.com/elioeFIN/status/1509067156767612929
# (no JTWC forecast)

# Shem 113 ... HALIMA before 2022-03-30-15Z
# my at https://twitter.com/elioeFIN/status/1509151628229758982

my_shem_2022_113 = [19.1,83.1,35;18.5,83.1,30];
nhc_shem_2022_113 = [19.1,83.5,35;18.7,83.2,30];
btk_shem_2022_113 = [19.7,84.3,35;19.4,84.6,25]; # JTWC best track
myvect = [myvect;my_shem_2022_113];
nhcvect = [nhcvect;nhc_shem_2022_113];
btkvect = [btkvect;btk_shem_2022_113];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 114 ... HALIMA before 2022-03-31-15Z
# my at https://twitter.com/elioeFIN/status/1509517056718393355

my_shem_2022_114 = [19.3,84.0,35;19.4,82.7,35;19.3,79.0,35];
nhc_shem_2022_114 = [19.3,84.3,35;19.2,82.3,35;18.5,78.6,30];
btk_shem_2022_114 = [19.4,84.6,25;18.8,84.5,25;18.7,82.5,20]; # JTWC best track
myvect = [myvect;my_shem_2022_114];
nhcvect = [nhcvect;nhc_shem_2022_114];
btkvect = [btkvect;btk_shem_2022_114];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 115 ... 10F / 23P before 2022-04-04-21Z
# my at https://twitter.com/elioeFIN/status/1511063630594326528

my_shem_2022_115 = [19.7,161.6,55;22.3,162.4,55;25.2,162.6,40;26.6,163.0,40;26.6,165.7,40];
nhc_shem_2022_115 = [19.3,161.1,65;21.6,162.1,55;23.8,163.1,50;25.7,164.7,45;26.7,165.7,40];
btk_shem_2022_115 = [18.8,161.7,50;21.7,164.1,55;24.7,165.2,40;25.9,167.8,40;25.4,170.4,30]; # JTWC best track (except day 5)
myvect = [myvect;my_shem_2022_115];
nhcvect = [nhcvect;nhc_shem_2022_115];
btkvect = [btkvect;btk_shem_2022_115];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 116 ... FILI before 2022-04-05-09Z
# my at https://twitter.com/elioeFIN/status/1511231861334413317

my_shem_2022_116 = [19.8,161.6,55;22.5,162.9,55;24.9,165.8,45];
nhc_shem_2022_116 = [19.9,161.8,55;22.5,162.8,55;25.1,164.1,50];
btk_shem_2022_116 = [19.8,162.8,55;23.0,164.5,45;25.8,166.4,35]; # JTWC best track
myvect = [myvect;my_shem_2022_116];
nhcvect = [nhcvect;nhc_shem_2022_116];
btkvect = [btkvect;btk_shem_2022_116];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 117 ... FILI before 2022-04-05-21Z
# my at https://twitter.com/elioeFIN/status/1511419884101636105

my_shem_2022_117 = [21.1,162.9,60;23.5,164.5,50;25.2,167.5,45];
nhc_shem_2022_117 = [21.0,163.4,60;23.5,165.1,50;24.7,167.3,40];
btk_shem_2022_117 = [21.7,164.1,55;24.7,165.2,40;25.9,167.8,40]; # JTWC best track
myvect = [myvect;my_shem_2022_117];
nhcvect = [nhcvect;nhc_shem_2022_117];
btkvect = [btkvect;btk_shem_2022_117];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 118 ... FILI before 2022-04-06-03Z
# my at https://twitter.com/elioeFIN/status/1511505041106120706

my_shem_2022_118 = [21.8,164.0,65;24.0,166.1,50;24.2,168.6,40];
nhc_shem_2022_118 = [22.1,163.8,50;24.6,165.9,40;25.3,167.9,35];
btk_shem_2022_118 = [22.4,164.3,50;25.3,165.8,35;25.8,168.3,40]; # JTWC best track
myvect = [myvect;my_shem_2022_118];
nhcvect = [nhcvect;nhc_shem_2022_118];
btkvect = [btkvect;btk_shem_2022_118];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Wpac 01 ... TD / 95W before 2022-04-06-21Z
# my at https://twitter.com/elioeFIN/status/1511793353943310339
# (no JTWC forecast)

# Wpac 02 ... TD / 02W before 2022-04-07-03Z
# my at https://twitter.com/elioeFIN/status/1511880038630764544

my_wpac_2022_02 = [5.0,145.9,35;6.5,144.9,45;10.4,140.7,55;13.6,138.2,65;15.7,135.4,65];
nhc_wpac_2022_02 = [4.7,146.7,35;6.7,145.2,50;9.8,142.9,70;12.7,141.2,85;15.5,140.4,90];
btk_wpac_2022_02 = [5.1,146.3,40;7.1,144.4,40;10.5,140.1,50;12.5,136.5,55;15.4,135.0,60]; # JTWC best track
myvect = [myvect;my_wpac_2022_02];
nhcvect = [nhcvect;nhc_wpac_2022_02];
btkvect = [btkvect;btk_wpac_2022_02];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 03 ... TD / 02W before 2022-04-07-15Z
# my at https://twitter.com/elioeFIN/status/1512059153203621888

my_wpac_2022_03 = [5.7,145.5,40;7.8,143.4,50;11.2,139.1,60;14.6,136.6,70;17.0,135.7,75];
nhc_wpac_2022_03 = [5.5,145.3,40;7.9,143.1,55;11.2,140.0,70;13.8,137.7,85;16.9,136.1,100];
btk_wpac_2022_03 = [6.1,145.5,40;8.7,142.6,45;11.5,137.9,55;13.7,135.8,55;16.1,135.3,65]; # JTWC best track
myvect = [myvect;my_wpac_2022_03];
nhcvect = [nhcvect;nhc_wpac_2022_03];
btkvect = [btkvect;btk_wpac_2022_03];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 04 ... TD / 02W before 2022-04-07-21Z
# my at https://twitter.com/elioeFIN/status/1512149874883665923

my_wpac_2022_04 = [6.0,145.0,40;8.5,142.5,50;12.1,138.8,60;15.8,136.1,70;18.0,135.7,70];
nhc_wpac_2022_04 = [5.8,144.5,50;8.2,142.0,70;11.5,138.9,80;15.1,136.4,95;18.0,135.7,105];
btk_wpac_2022_04 = [6.6,144.9,40;9.6,141.7,50;12.0,137.0,55;14.6,135.4,50;16.5,135.8,80]; # JTWC best track
myvect = [myvect;my_wpac_2022_04];
nhcvect = [nhcvect;nhc_wpac_2022_04];
btkvect = [btkvect;btk_wpac_2022_04];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 05 ... MALAKAS before 2022-04-08-15Z
# my at https://twitter.com/elioeFIN/status/1512420072027037707

my_wpac_2022_05 = [8.6,142.8,60;12.1,138.4,75;15.4,135.3,90;17.5,135.0,95;19.9,135.7,85];
nhc_wpac_2022_05 = [9.0,142.8,50;12.0,139.2,70;14.7,136.6,90;16.9,135.6,100;19.2,136.4,100];
btk_wpac_2022_05 = [8.7,142.6,45;11.5,137.9,55;13.7,135.8,55;16.1,135.3,65;19.0,137.6,95]; # JTWC best track
myvect = [myvect;my_wpac_2022_05];
nhcvect = [nhcvect;nhc_wpac_2022_05];
btkvect = [btkvect;btk_wpac_2022_05];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 06 ... MALAKAS before 2022-04-09-15Z
# my at https://twitter.com/elioeFIN/status/1512779234904793096

my_wpac_2022_06 = [12.2,138.2,65;14.6,135.2,85;17.0,135.1,95;19.2,137.0,95;22.7,138.2,75];
nhc_wpac_2022_06 = [11.8,138.8,60;14.4,136.0,85;16.4,135.7,100;19.0,137.2,90;22.3,139.3,80];
btk_wpac_2022_06 = [11.5,137.9,55;13.7,135.8,55;16.1,135.3,65;19.0,137.6,95;22.6,139.2,75]; # JTWC best track
myvect = [myvect;my_wpac_2022_06];
nhcvect = [nhcvect;nhc_wpac_2022_06];
btkvect = [btkvect;btk_wpac_2022_06];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 07 ... MALAKAS before 2022-04-09-21Z
# my at https://twitter.com/elioeFIN/status/1512872621381197832

my_wpac_2022_07 = [12.5,137.2,70;14.9,135.2,85;17.7,135.5,95;20.1,136.7,90;23.2,139.4,75];
nhc_wpac_2022_07 = [12.7,137.9,70;15.3,135.7,90;17.4,136.1,100;20.1,137.5,90;23.3,139.5,80];
btk_wpac_2022_07 = [12.0,137.0,55;14.6,135.4,50;16.5,135.8,80;19.7,137.5,105;24.5,139.6,70]; # JTWC best track
myvect = [myvect;my_wpac_2022_07];
nhcvect = [nhcvect;nhc_wpac_2022_07];
btkvect = [btkvect;btk_wpac_2022_07];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 08 ... MALAKAS before 2022-04-10-21Z
# my at https://twitter.com/elioeFIN/status/1513232214741368845

my_wpac_2022_08 = [14.4,135.0,85;16.6,135.2,95;19.3,136.6,90;22.5,138.4,80;28.0,142.5,70];
nhc_wpac_2022_08 = [14.4,134.9,75;16.6,135.1,95;19.2,136.1,100;23.1,138.3,80;27.4,141.5,60];
btk_wpac_2022_08 = [14.6,135.4,50;16.5,135.8,80;19.7,137.5,105;24.5,139.6,70;31.9,146.0,45]; # JTWC best track (except day 5)
myvect = [myvect;my_wpac_2022_08];
nhcvect = [nhcvect;nhc_wpac_2022_08];
btkvect = [btkvect;btk_wpac_2022_08];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 09 ... MALAKAS before 2022-04-11-21Z
# my at https://twitter.com/elioeFIN/status/1513596261068386317

my_wpac_2022_09 = [17.0,135.9,85;19.7,137.5,90;23.3,140.0,80;29.0,145.0,70];
nhc_wpac_2022_09 = [17.0,135.9,90;19.7,137.4,100;23.8,139.6,85;29.3,144.6,60];
btk_wpac_2022_09 = [16.5,135.8,80;19.7,137.5,105;24.5,139.6,70;31.9,146.0,45]; # JTWC best track (days 1-3 only)
myvect = [myvect;my_wpac_2022_09];
nhcvect = [nhcvect;nhc_wpac_2022_09];
btkvect = [btkvect;btk_wpac_2022_09];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Wpac 10 ... MALAKAS before 2022-04-12-15Z
# my at https://twitter.com/elioeFIN/status/1513871223045996544

my_wpac_2022_10 = [19.2,137.0,100;23.2,139.1,80;29.0,145.7,70];
nhc_wpac_2022_10 = [18.8,137.0,115;22.7,139.0,85;28.8,143.8,65];
btk_wpac_2022_10 = [19.0,137.6,95;22.6,139.2,75;30.2,143.9,45]; # JTWC best track
myvect = [myvect;my_wpac_2022_10];
nhcvect = [nhcvect;nhc_wpac_2022_10];
btkvect = [btkvect;btk_wpac_2022_10];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 119 ... JASMINE before 2022-04-24-21Z
# my at https://twitter.com/elioeFIN/status/1518308474333114370

my_shem_2022_119 = [21.2,40.2,55;21.9,42.0,40];
nhc_shem_2022_119 = [21.0,40.4,40;21.1,42.0,30];
btk_shem_2022_119 = [21.9,41.1,65;23.9,44.8,35]; # JTWC best track
myvect = [myvect;my_shem_2022_119];
nhcvect = [nhcvect;nhc_shem_2022_119];
btkvect = [btkvect;btk_shem_2022_119];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 120 ... JASMINE before 2022-04-25-21Z
# my at https://twitter.com/elioeFIN/status/1518678597304819717
# (no JTWC forecast)

# Shem 121 ... 34U/98S before 2022-04-25-21Z
# my at https://twitter.com/elioeFIN/status/1518678597304819717
# (no JTWC forecast)

# Nio 03 ... BOB 03 / 02B before 2022-05-07-21Z
# my at https://twitter.com/elioeFIN/status/1523018981124485121

my_nio_2022_03 = [13.1,87.3,70;15.0,85.3,60;16.9,84.8,50;18.2,85.5,40;19.9,87.6,35];
nhc_nio_2022_03 = [13.1,87.1,70;15.1,85.6,70;16.7,85.5,60;18.3,86.3,50;19.7,87.8,40];
btk_nio_2022_03 = [13.1,87.2,60;14.5,84.2,60;15.2,81.8,45;15.6,80.6,25;14.7,80.3,20]; # JTWC best track
myvect = [myvect;my_nio_2022_03];
nhcvect = [nhcvect;nhc_nio_2022_03];
btkvect = [btkvect;btk_nio_2022_03];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 122 ... KARIM before 2022-05-07-21Z
# my at https://twitter.com/elioeFIN/status/1523022474392203265

my_shem_2022_122 = [11.2,91.1,50;14.2,91.9,55;18.5,93.4,45;20.1,96.2,35];
nhc_shem_2022_122 = [11.0,91.0,55;13.8,92.1,60;17.5,93.8,50;19.4,96.4,40];
btk_shem_2022_122 = [11.0,90.6,60;13.9,91.1,60;18.7,93.2,45;18.8,97.9,35]; # JTWC best track
myvect = [myvect;my_shem_2022_122];
nhcvect = [nhcvect;nhc_shem_2022_122];
btkvect = [btkvect;btk_shem_2022_122];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 123 ... KARIM before 2022-05-08-03Z
# my at https://twitter.com/elioeFIN/status/1523104917288013824
# (no JTWC forecast)

# Nio 04 ... BOB 03 / 02B before 2022-05-08-03Z
# my at https://twitter.com/elioeFIN/status/1523109146496749574

my_nio_2022_04 = [13.6,86.5,75;15.7,85.4,70;17.8,85.2,60;19.0,85.6,50;21.0,87.0,30];
nhc_nio_2022_04 = [13.6,86.5,70;15.3,85.4,60;17.0,85.5,45;18.5,86.5,40;20.1,88.2,35];
btk_nio_2022_04 = [13.7,86.2,60;14.7,83.6,65;15.5,81.6,40;15.4,80.3,25;14.7,81.0,20]; # JTWC best track
myvect = [myvect;my_nio_2022_04];
nhcvect = [nhcvect;nhc_nio_2022_04];
btkvect = [btkvect;btk_nio_2022_04];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 124 ... KARIM before 2022-05-08-15Z
# my at https://twitter.com/elioeFIN/status/1523284148101992450
# (no JTWC forecast)

# Nio 05 ... ASANI before 2022-05-08-15Z
# my at https://twitter.com/elioeFIN/status/1523287437363269632

my_nio_2022_05 = [15.2,85.7,70;16.6,84.6,55;18.4,84.5,45;19.9,86.2,35];
nhc_nio_2022_05 = [14.6,85.8,60;16.2,84.8,50;17.6,85.2,40;19.2,86.6,35];
btk_nio_2022_05 = [14.3,84.8,55;15.0,82.4,55;15.8,81.1,35;15.0,80.2,20]; # JTWC best track
myvect = [myvect;my_nio_2022_05];
nhcvect = [nhcvect;nhc_nio_2022_05];
btkvect = [btkvect;btk_nio_2022_05];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 125 ... KARIM before 2022-05-09-21Z
# my at https://twitter.com/elioeFIN/status/1523740733143863297

my_shem_2022_125 = [18.2,91.5,50;18.2,97.1,40];
nhc_shem_2022_125 = [17.8,93.3,50;16.2,95.4,35];
btk_shem_2022_125 = [18.7,93.2,45;18.8,97.9,35]; # JTWC best track
myvect = [myvect;my_shem_2022_125];
nhcvect = [nhcvect;nhc_shem_2022_125];
btkvect = [btkvect;btk_shem_2022_125];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Nio 06 ... ASANI before 2022-05-09-21Z
# my at https://twitter.com/elioeFIN/status/1523743802300964864

my_nio_2022_06 = [16.1,82.9,45;17.5,82.9,35;18.4,83.6,25];
nhc_nio_2022_06 = [16.2,82.9,45;17.1,82.5,30;17.8,84.0,25];
btk_nio_2022_06 = [15.2,81.8,45;15.6,80.6,25;14.7,80.3,20]; # JTWC best track
myvect = [myvect;my_nio_2022_06];
nhcvect = [nhcvect;nhc_nio_2022_06];
btkvect = [btkvect;btk_nio_2022_06];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Nio 07 ... ASANI before 2022-05-10-03Z
# my at https://twitter.com/elioeFIN/status/1523834230832312321

my_nio_2022_07 = [16.1,83.0,50;17.2,83.2,35;17.7,84.1,30];
nhc_nio_2022_07 = [15.2,82.7,50;17.3,82.8,35;17.8,84.7,30];
btk_nio_2022_07 = [15.5,81.6,40;15.4,80.3,25;14.7,81.0,20]; # JTWC best track
myvect = [myvect;my_nio_2022_07];
nhcvect = [nhcvect;nhc_nio_2022_07];
btkvect = [btkvect;btk_nio_2022_07];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 126 ... 11F/26P before 2022-05-18-21Z
# my at https://twitter.com/elioeFIN/status/1527001790855925761

my_shem_2022_126 = [16.6,167.5,35;17.8,165.7,35;19.8,164.9,30;21.6,166.6,25];
nhc_shem_2022_126 = [16.4,167.2,45;17.7,165.9,40;18.7,165.5,30;20.6,166.9,25];
btk_shem_2022_126 = [17.6,168.1,35;19.7,168.7,35;20.5,171.1,35;22.1,171.5,25]; # JTWC best track
myvect = [myvect;my_shem_2022_126];
nhcvect = [nhcvect;nhc_shem_2022_126];
btkvect = [btkvect;btk_shem_2022_126];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 127 ... GINA before 2022-05-19-03Z
# my at https://twitter.com/elioeFIN/status/1527102106607525891

my_shem_2022_127 = [17.0,167.1,35;18.1,165.6,40;20.4,166.0,30];
nhc_shem_2022_127 = [17.1,167.2,35;18.1,166.0,30;19.5,165.8,25];
btk_shem_2022_127 = [18.3,167.8,35;20.1,169.4,35;20.6,171.5,30]; # JTWC best track
myvect = [myvect;my_shem_2022_127];
nhcvect = [nhcvect;nhc_shem_2022_127];
btkvect = [btkvect;btk_shem_2022_127];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 128 ... GINA before 2022-05-19-09Z
# my at https://twitter.com/elioeFIN/status/1527188154205233152

my_shem_2022_128 = [17.6,167.1,35;19.1,166.5,35;22.0,167.9,30];
nhc_shem_2022_128 = [17.8,167.2,35;18.8,166.3,30;20.1,166.5,25];
btk_shem_2022_128 = [18.7,167.6,35;20.4,170.0,35;20.9,171.5,25]; # JTWC best track
myvect = [myvect;my_shem_2022_128];
nhcvect = [nhcvect;nhc_shem_2022_128];
btkvect = [btkvect;btk_shem_2022_128];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 129 ... GINA before 2022-05-19-21Z
# my at https://twitter.com/elioeFIN/status/1527358748943167488

my_shem_2022_129 = [18.4,166.9,35;19.9,167.1,30;22.7,170.2,25];
nhc_shem_2022_129 = [18.6,167.3,35;19.7,167.2,30;21.1,168.0,25];
btk_shem_2022_129 = [19.7,168.7,35;20.5,171.1,35;22.1,171.5,25]; # JTWC best track
myvect = [myvect;my_shem_2022_129];
nhcvect = [nhcvect;nhc_shem_2022_129];
btkvect = [btkvect;btk_shem_2022_129];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Epac 01 ... 91E before 2022-05-27-21Z
# my at https://twitter.com/elioeFIN/status/1530265954348851201
# (no NHC forecast)

# Epac 02 ... 91E before 2022-05-28-03Z
# my at https://twitter.com/elioeFIN/status/1530353035368714240
# NHC at https://www.nhc.noaa.gov/archive/2022/ep01/ep012022.discus.001.shtml?

my_epac_2022_002 = [13.1,99.1,45;14.4,99.3,60;16.1,97.3,65;17.6,94.9,30];
nhc_epac_2022_002 = [13.2,98.9,50;14.2,98.7,70;15.7,96.9,80;17.2,95.1,30];
btk_epac_2022_002 = [13.8,98.8,55;14.3,98.5,95;15.9,96.4,70;18.0,94.7,20]; # TCR
myvect = [myvect;my_epac_2022_002];
nhcvect = [nhcvect;nhc_epac_2022_002];
btkvect = [btkvect;btk_epac_2022_002];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Epac 03 ... 01E before 2022-05-28-09Z
# my at https://twitter.com/elioeFIN/status/1530458500811440128
# NHC at https://www.nhc.noaa.gov/archive/2022/ep01/ep012022.discus.002.shtml?

my_epac_2022_003 = [13.5,99.0,50;14.9,99.0,65;16.5,96.0,50;18.0,93.5,25];
nhc_epac_2022_003 = [13.4,98.7,60;14.6,98.1,80;16.2,96.2,65;17.9,94.7,25];
btk_epac_2022_003 = [13.9,99.1,65;14.6,98.0,90;16.5,95.8,50;18.3,94.6,20]; # TCR
myvect = [myvect;my_epac_2022_003];
nhcvect = [nhcvect;nhc_epac_2022_003];
btkvect = [btkvect;btk_epac_2022_003];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Epac 04 ... AGATHA before 2022-05-28-21Z
# my at https://twitter.com/elioeFIN/status/1530628888740626434
# NHC at https://www.nhc.noaa.gov/archive/2022/ep01/ep012022.discus.004.shtml?

my_epac_2022_004 = [14.3,97.8,75;16.0,96.4,75;18.2,93.8,30];
nhc_epac_2022_004 = [14.4,98.0,80;15.7,96.5,85;17.5,94.5,30];
btk_epac_2022_004 = [14.0,98.9,95;15.4,96.9,90;17.7,94.9,20]; # TCR
myvect = [myvect;my_epac_2022_004];
nhcvect = [nhcvect;nhc_epac_2022_004];
btkvect = [btkvect;btk_epac_2022_004];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 05 ... AGATHA before 2022-05-29-03Z
# my at https://twitter.com/elioeFIN/status/1530714567239688193
# NHC at https://www.nhc.noaa.gov/archive/2022/ep01/ep012022.discus.005.shtml?

my_epac_2022_005 = [14.7,98.3,70;16.4,96.8,55];
nhc_epac_2022_005 = [14.6,98.2,75;15.9,96.4,60];
btk_epac_2022_005 = [14.3,98.5,95;15.9,96.4,70]; # TCR
myvect = [myvect;my_epac_2022_005];
nhcvect = [nhcvect;nhc_epac_2022_005];
btkvect = [btkvect;btk_epac_2022_005];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Epac 06 ... AGATHA before 2022-05-29-09Z
# my at https://twitter.com/elioeFIN/status/1530809817878745091
# NHC at https://www.nhc.noaa.gov/archive/2022/ep01/ep012022.discus.006.shtml?

my_epac_2022_006 = [14.9,98.3,70;16.5,96.0,55];
nhc_epac_2022_006 = [14.9,98.0,75;16.3,96.1,55];
btk_epac_2022_006 = [14.6,98.0,90;16.5,95.8,50]; # TCR
myvect = [myvect;my_epac_2022_006];
nhcvect = [nhcvect;nhc_epac_2022_006];
btkvect = [btkvect;btk_epac_2022_006];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Epac 07 ... AGATHA before 2022-05-29-21Z
# my at https://twitter.com/elioeFIN/status/1530991149544050692
# NHC at https://www.nhc.noaa.gov/archive/2022/ep01/ep012022.discus.008.shtml?

my_epac_2022_007 = [15.3,97.2,95;17.5,95.4,40];
nhc_epac_2022_007 = [15.2,97.1,105;17.1,95.2,30];
btk_epac_2022_007 = [15.4,96.9,90;17.7,94.9,20]; # TCR
myvect = [myvect;my_epac_2022_007];
nhcvect = [nhcvect;nhc_epac_2022_007];
btkvect = [btkvect;btk_epac_2022_007];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Epac 08 ... AGATHA before 2022-05-30-03Z 
# my at https://twitter.com/elioeFIN/status/1531081065829486592
# NHC at https://www.nhc.noaa.gov/archive/2022/ep01/ep012022.discus.009.shtml?

my_epac_2022_008 = [15.6,96.4,90;17.8,94.6,30];
nhc_epac_2022_008 = [15.6,96.2,105;17.6,94.4,25];
btk_epac_2022_008 = [15.9,96.4,70;18.0,94.7,20]; # TCR
myvect = [myvect;my_epac_2022_008];
nhcvect = [nhcvect;nhc_epac_2022_008];
btkvect = [btkvect;btk_epac_2022_008];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Epac 09 ... AGATHA before 2022-05-30-09Z
# my at https://twitter.com/elioeFIN/status/1531176276886683650
# NHC at https://www.nhc.noaa.gov/archive/2022/ep01/ep012022.discus.010.shtml?

my_epac_2022_009 = [16.0,95.7,55];
nhc_epac_2022_009 = [16.3,95.6,60];
btk_epac_2022_009 = [16.5,95.8,50]; # TCR
myvect = [myvect;my_epac_2022_009];
nhcvect = [nhcvect;nhc_epac_2022_009];
btkvect = [btkvect;btk_epac_2022_009];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;2];

# Epac 10 ... AGATHA before 2022-05-30-21Z
# my at https://twitter.com/elioeFIN/status/1531353422657687555
# NHC at https://www.nhc.noaa.gov/archive/2022/ep01/ep012022.discus.012.shtml?

my_epac_2022_010 = [17.3,94.7,30];
nhc_epac_2022_010 = [17.3,94.7,30];
btk_epac_2022_010 = [17.7,94.9,20]; # TCR
myvect = [myvect;my_epac_2022_010];
nhcvect = [nhcvect;nhc_epac_2022_010];
btkvect = [btkvect;btk_epac_2022_010];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;2];

# Atl 001 ... 91L before 2022-06-02-03Z
# my at https://twitter.com/elioeFIN/status/1532171773889978368
# (no NHC forecast)

# Atl 002 ... 91L before 2022-06-02-15Z
# my at https://twitter.com/elioeFIN/status/1532354450324692992
# (no NHC forecast)

# Atl 003 ... 91L before 2022-06-02-21Z
# my at https://twitter.com/elioeFIN/status/1532445250257666058
# NHC at https://www.nhc.noaa.gov/archive/2022/al01/al012022.discus.001.shtml?

my_atl_2022_003 = [23.3,86.6,35;26.0,82.1,35;30.6,75.9,45;33.9,68.1,40;36.5,62.3,45];
nhc_atl_2022_003 = [23.5,86.5,35;26.5,82.3,35;30.6,76.0,45;33.5,70.0,45;36.0,64.0,40];
btk_atl_2022_003 = [22.8,86.3,35;27.2,80.4,40;31.0,72.5,60;34.7,62.2,50;42.6,47.3,65]; # tcr but day 5 self-made
myvect = [myvect;my_atl_2022_003];
nhcvect = [nhcvect;nhc_atl_2022_003];
btkvect = [btkvect;btk_atl_2022_003];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 004 ... 01L before 2022-06-03-03Z
# my at https://twitter.com/elioeFIN/status/1532530468524007461
# NHC at https://www.nhc.noaa.gov/archive/2022/al01/al012022.discus.002.shtml?

my_atl_2022_004 = [24.3,85.7,35;28.1,80.3,40;31.7,72.9,45;34.5,65.1,35;37.4,60.4,35];
nhc_atl_2022_004 = [23.9,85.7,35;27.6,80.6,35;31.6,74.1,45;34.2,67.5,45;35.9,62.5,40];
btk_atl_2022_004 = [23.9,85.1,35;28.0,78.8,40;32.1,70.2,60;36.3,58.0,50;43.7,43.2,65]; # tcr but days 4-5 self-made
myvect = [myvect;my_atl_2022_004];
nhcvect = [nhcvect;nhc_atl_2022_004];
btkvect = [btkvect;btk_atl_2022_004];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 005 ... 01L before 2022-06-03-09Z
# my at https://twitter.com/elioeFIN/status/1532620210091466752
# NHC at https://www.nhc.noaa.gov/archive/2022/al01/al012022.discus.003.shtml?

my_atl_2022_005 = [25.0,83.4,45;29.2,77.4,50;33.0,69.0,45;35.6,60.1,45;38.2,54.6,35];
nhc_atl_2022_005 = [25.3,83.2,40;29.1,77.5,40;32.5,70.2,45;34.1,62.8,45;34.8,57.4,40];
btk_atl_2022_005 = [25.0,83.7,35;28.8,77.2,45;33.0,67.8,55;39.0,53.5,55;46.1,38.9,60]; # tcr but days 4-5 self-made
myvect = [myvect;my_atl_2022_005];
nhcvect = [nhcvect;nhc_atl_2022_005];
btkvect = [btkvect;btk_atl_2022_005];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 006 ... 01L before 2022-06-03-21Z
# my at https://twitter.com/elioeFIN/status/1532810360058699776
# NHC at https://www.nhc.noaa.gov/archive/2022/al01/al012022.discus.005.shtml?

my_atl_2022_006 = [26.1,81.6,40;30.2,74.6,45;32.8,65.6,45;33.3,57.6,35;34.0,55.7,25];
nhc_atl_2022_006 = [26.4,81.5,40;30.5,75.0,45;33.1,66.8,45;34.0,54.0,40;35.5,54.0,40];
btk_atl_2022_006 = [27.2,80.4,40;31.0,72.5,60;34.7,62.2,50;42.6,47.3,65;50.6,31.6,60]; # tcr but days 4-5 self-made
myvect = [myvect;my_atl_2022_006];
nhcvect = [nhcvect;nhc_atl_2022_006];
btkvect = [btkvect;btk_atl_2022_006];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 007 ... 01L before 2022-06-04-03Z
# my at https://twitter.com/elioeFIN/status/1532892448292278272
# NHC at https://www.nhc.noaa.gov/archive/2022/al01/al012022.discus.006.shtml?

my_atl_2022_007 = [28.1,79.5,40;32.0,72.0,50;34.3,62.7,45;35.2,56.2,35;36.6,51.3,40];
nhc_atl_2022_007 = [28.4,78.8,40;32.3,72.0,45;34.3,64.4,45;35.1,58.1,40;37.2,52.8,40];
btk_atl_2022_007 = [28.0,78.8,40;32.1,70.2,60;36.3,58.0,50;43.7,43.2,65;51.8,28.3,65]; # tcr but days 3-5 self-made
myvect = [myvect;my_atl_2022_007];
nhcvect = [nhcvect;nhc_atl_2022_007];
btkvect = [btkvect;btk_atl_2022_007];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 008 ... 01L before 2022-06-04-09Z
# my at https://twitter.com/elioeFIN/status/1532981336050368512
# NHC at https://www.nhc.noaa.gov/archive/2022/al01/al012022.discus.007.shtml?

my_atl_2022_008 = [28.2,78.7,40;32.9,69.0,40;34.6,58.3,40;37.7,49.7,40;41.0,39.3,30];
nhc_atl_2022_008 = [28.6,78.6,40;32.8,70.2,45;34.7,61.5,40;37.5,52.0,40;42.0,42.5,40];
btk_atl_2022_008 = [28.8,77.2,45;33.0,67.8,55;39.0,53.5,55;46.1,38.9,60;53.4,25.7,60]; # tcr but days 3-5 self-made
myvect = [myvect;my_atl_2022_008];
nhcvect = [nhcvect;nhc_atl_2022_008];
btkvect = [btkvect;btk_atl_2022_008];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 009 ... 01L before 2022-06-04-15Z
# my at https://twitter.com/elioeFIN/status/1533069621183537152
# NHC at https://www.nhc.noaa.gov/archive/2022/al01/al012022.discus.008.shtml?

my_atl_2022_009 = [29.8,75.7,35;33.5,67.0,40;35.9,54.1,35;39.5,44.7,40;45.3,34.4,35];
nhc_atl_2022_009 = [29.7,76.0,40;33.7,66.8,45;35.7,56.9,40;39.0,48.0,35;44.5,37.5,35];
btk_atl_2022_009 = [29.9,75.0,50;33.8,65.2,55;42.0,50.3,60;48.1,36.0,60;55.0,23.1,55]; # tcr but days 3-5 self-made
myvect = [myvect;my_atl_2022_009];
nhcvect = [nhcvect;nhc_atl_2022_009];
btkvect = [btkvect;btk_atl_2022_009];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 010 ... 01L before 2022-06-05-03Z
# my at https://twitter.com/elioeFIN/status/1533254789919916032
# NHC at https://www.nhc.noaa.gov/archive/2022/al01/al012022.discus.010.shtml?

my_atl_2022_010 = [31.1,73.0,45;33.6,62.6,40;35.5,54.8,30;35.5,49.8,30;39.9,43.4,20];
nhc_atl_2022_010 = [31.5,72.3,45;33.9,64.0,40;34.7,55.1,35;35.9,50.6,30;38.6,45.0,30];
btk_atl_2022_010 = [32.1,70.2,60;36.3,58.0,50;43.7,43.2,65;51.8,28.3,65;58.2,17.9,45]; # tcr but days 2-5 self-made
myvect = [myvect;my_atl_2022_010];
nhcvect = [nhcvect;nhc_atl_2022_010];
btkvect = [btkvect;btk_atl_2022_010];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 011 ... ALEX before 2022-06-05-09Z
# my at https://twitter.com/elioeFIN/status/1533345026163593216
# NHC at https://www.nhc.noaa.gov/archive/2022/al01/al012022.discus.011.shtml?

my_atl_2022_011 = [31.9,70.1,45;33.6,59.5,40;35.1,50.6,35;38.0,45.2,25];
nhc_atl_2022_011 = [32.0,70.0,50;34.0,60.5,40;34.2,52.6,30;34.7,49.0,30];
btk_atl_2022_011 = [33.0,67.8,55;39.0,53.5,55;46.1,38.9,60;53.4,25.7,60]; # tcr but days 2-4 self-made
myvect = [myvect;my_atl_2022_011];
nhcvect = [nhcvect;nhc_atl_2022_011];
btkvect = [btkvect;btk_atl_2022_011];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 012 ... ALEX before 2022-06-05-21Z
# my at https://twitter.com/elioeFIN/status/1533524109904302080
# NHC at https://www.nhc.noaa.gov/archive/2022/al01/al012022.discus.013.shtml?

my_atl_2022_012 = [34.0,62.9,55;36.8,50.4,50;41.0,38.3,35];
nhc_atl_2022_012 = [33.9,63.2,50;35.0,54.6,40;35.7,48.5,30];
btk_atl_2022_012 = [34.7,62.2,50;42.6,47.3,65;50.6,31.6,60]; # TCR but days 2-3 self-made
myvect = [myvect;my_atl_2022_012];
nhcvect = [nhcvect;nhc_atl_2022_012];
btkvect = [btkvect;btk_atl_2022_012];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Epac 11 ... 92E before 2022-06-12-03Z
# my at https://twitter.com/elioeFIN/status/1535791730192261120
# (no NHC advisory)

# Epac 12 ... 92E before 2022-06-12-21Z
# my at https://twitter.com/elioeFIN/status/1536060785809580035
# (no NHC advisory)

# Epac 13 ... 92E before 2022-06-13-21Z
# my at https://twitter.com/elioeFIN/status/1536430237457731584
# (no NHC advisory)

# Epac 14 ... 92E before 2022-06-14-03Z
# my at https://twitter.com/elioeFIN/status/1536514595887652866
# (no NHC advisory)

# Epac 15 ... 02E before 2022-06-14-09Z
# my at https://twitter.com/elioeFIN/status/1536614127732510722
# NHC at https://www.nhc.noaa.gov/archive/2022/ep02/ep022022.discus.001.shtml?

my_epac_2022_015 = [14.6,102.7,45;15.7,104.3,60;17.0,108.0,60;17.8,111.0,45;18.5,113.8,35];
nhc_epac_2022_015 = [14.3,102.6,50;15.1,104.3,65;16.1,107.6,60;17.4,111.1,50;18.4,113.6,40];
btk_epac_2022_015 = [14.7,102.1,55;15.7,103.7,75;17.0,106.9,75;17.8,110.4,55;18.8,112.0,40]; # TCR
myvect = [myvect;my_epac_2022_015];
nhcvect = [nhcvect;nhc_epac_2022_015];
btkvect = [btkvect;btk_epac_2022_015];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 16 ... BLAS before 2022-06-14-21Z
# my at https://twitter.com/elioeFIN/status/1536790094417469440
# NHC at https://www.nhc.noaa.gov/archive/2022/ep02/ep022022.discus.003.shtml?

my_epac_2022_016 = [15.3,102.8,70;16.4,105.4,70;17.9,109.8,60;19.8,111.8,40;20.6,114.2,30];
nhc_epac_2022_016 = [15.4,102.9,70;16.3,105.5,75;17.5,109.4,60;18.6,112.3,45;19.0,114.3,35];
btk_epac_2022_016 = [15.1,102.5,75;16.1,105.1,70;17.4,109.2,75;18.3,111.3,45;19.0,112.4,35]; # TCR
myvect = [myvect;my_epac_2022_016];
nhcvect = [nhcvect;nhc_epac_2022_016];
btkvect = [btkvect;btk_epac_2022_016];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 17 ... BLAS before 2022-06-15-03Z
# my at https://twitter.com/elioeFIN/status/1536880071729942528
# NHC at https://www.nhc.noaa.gov/archive/2022/ep02/ep022022.discus.004.shtml?

my_epac_2022_017 = [15.7,103.4,65;16.9,106.5,65;18.2,110.7,50;19.5,112.4,35;19.6,114.3,25];
nhc_epac_2022_017 = [15.7,103.4,70;16.8,106.3,75;17.9,110.1,60;18.8,112.5,45;19.2,114.5,35];
btk_epac_2022_017 = [15.4,103.0,75;16.6,105.9,70;17.6,109.9,65;18.6,111.7,40;19.1,112.7,35]; # TCR
myvect = [myvect;my_epac_2022_017];
nhcvect = [nhcvect;nhc_epac_2022_017];
btkvect = [btkvect;btk_epac_2022_017];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 18 ... BLAS before 2022-06-15-15Z
# my at https://twitter.com/elioeFIN/status/1537058758144188418
# NHC at https://www.nhc.noaa.gov/archive/2022/ep02/ep022022.discus.006.shtml?

my_epac_2022_018 = [15.9,104.7,70;17.4,108.3,70;18.5,111.9,55;20.8,114.8,35;21.0,117.7,25];
nhc_epac_2022_018 = [15.8,104.8,85;17.1,108.3,75;18.2,111.6,55;18.8,114.1,40;19.0,116.5,30];
btk_epac_2022_018 = [15.8,104.3,70;17.4,108.2,75;18.0,110.8,45;18.9,112.2,40;19.1,113.4,30]; # TCR
myvect = [myvect;my_epac_2022_018];
nhcvect = [nhcvect;nhc_epac_2022_018];
btkvect = [btkvect;btk_epac_2022_018];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 19 ... BLAS before 2022-06-15-21Z
# my at https://twitter.com/elioeFIN/status/1537152084411547648
# NHC at https://www.nhc.noaa.gov/archive/2022/ep02/ep022022.discus.007.shtml?

my_epac_2022_019 = [16.1,105.6,75;17.5,109.9,65;18.4,113.6,55;19.1,114.7,35;18.6,116.4,25];
nhc_epac_2022_019 = [16.1,105.5,85;17.4,109.3,75;18.3,112.3,55;18.8,114.9,55;18.5,116.6,25];
btk_epac_2022_019 = [16.1,105.1,70;17.4,109.2,75;18.3,111.3,45;19.0,112.4,35;19.0,113.8,30]; # TCR
myvect = [myvect;my_epac_2022_019];
nhcvect = [nhcvect;nhc_epac_2022_019];
btkvect = [btkvect;btk_epac_2022_019];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 20 ... BLAS before 2022-06-16-03Z
# my at https://twitter.com/elioeFIN/status/1537240101683531776
# NHC at https://www.nhc.noaa.gov/archive/2022/ep02/ep022022.discus.008.shtml?

my_epac_2022_020 = [16.4,106.3,70;18.0,110.9,60;18.7,114.1,45;19.5,114.9,35;19.3,116.4,20];
nhc_epac_2022_020 = [16.4,106.3,85;17.7,110.2,75;18.6,113.1,50;18.8,115.2,35;18.3,116.8,25];
btk_epac_2022_020 = [16.6,105.9,70;17.6,109.9,65;18.6,111.7,40;19.1,112.7,35;19.0,114.3,25]; # TCR
myvect = [myvect;my_epac_2022_020];
nhcvect = [nhcvect;nhc_epac_2022_020];
btkvect = [btkvect;btk_epac_2022_020];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 21 ... BLAS before 2022-06-16-15Z
# my at https://twitter.com/elioeFIN/status/1537425363352989698
# NHC at https://www.nhc.noaa.gov/archive/2022/ep02/ep022022.discus.010.shtml?

my_epac_2022_021 = [17.3,108.3,70;18.5,112.7,50;19.1,114.8,40;18.8,116.0,30;18.3,117.8,20];
nhc_epac_2022_021 = [17.3,108.2,75;18.4,112.1,55;19.0,114.3,35;18.7,116.3,30;18.5,118.0,25];
btk_epac_2022_021 = [17.4,108.2,75;18.0,110.8,45;18.9,112.2,40;19.1,113.4,30;19.2,114.9,25]; # TCR
myvect = [myvect;my_epac_2022_021];
nhcvect = [nhcvect;nhc_epac_2022_021];
btkvect = [btkvect;btk_epac_2022_021];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 22 ... BLAS before 2022-06-16-21Z
# my at https://twitter.com/elioeFIN/status/1537512371522093057
# NHC at https://www.nhc.noaa.gov/archive/2022/ep02/ep022022.discus.011.shtml?

my_epac_2022_022 = [17.8,109.7,65;18.8,113.8,45;18.6,116.3,35;18.5,117.3,25;18.3,119.8,20];
nhc_epac_2022_022 = [17.8,109.7,70;18.7,113.3,45;18.8,115.7,30;18.3,117.7,25;18.2,119.3,20];
btk_epac_2022_022 = [17.4,109.2,75;18.3,111.3,45;19.0,112.4,35;19.0,113.8,30;19.3,115.4,25]; # TCR
myvect = [myvect;my_epac_2022_022];
nhcvect = [nhcvect;nhc_epac_2022_022];
btkvect = [btkvect;btk_epac_2022_022];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 23 ... BLAS before 2022-06-17-03Z
# my at https://twitter.com/elioeFIN/status/1537601882713116672
# NHC at https://www.nhc.noaa.gov/archive/2022/ep02/ep022022.discus.012.shtml?

my_epac_2022_023 = [17.9,110.7,55;18.7,114.0,40;18.3,116.3,30;18.4,117.0,20;18.3,118.8,20];
nhc_epac_2022_023 = [18.0,110.6,65;18.7,113.8,45;18.5,116.0,30;18.1,117.9,25;18.1,119.4,20];
btk_epac_2022_023 = [17.6,109.9,65;18.6,111.7,40;19.1,112.7,35;19.0,114.3,25;19.3,115.9,25]; # TCR
myvect = [myvect;my_epac_2022_023];
nhcvect = [nhcvect;nhc_epac_2022_023];
btkvect = [btkvect;btk_epac_2022_023];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 24 ... 03E before 2022-06-17-03Z
# my at https://twitter.com/elioeFIN/status/1537604632565927936
# NHC at https://www.nhc.noaa.gov/archive/2022/ep03/ep032022.discus.002.shtml?

my_epac_2022_024 = [11.7,90.0,35;12.2,90.6,40;11.9,93.5,40;12.5,97.1,40;13.0,102.2,45];
nhc_epac_2022_024 = [11.8,90.1,40;12.7,91.2,45;12.5,93.3,45;12.4,96.5,50;13.0,101.2,55];
btk_epac_2022_024 = [12.0,89.2,30;13.1,90.4,25;12.3,93.4,25;11.7,96.9,30;12.8,101.5,35]; # TCR
myvect = [myvect;my_epac_2022_024];
nhcvect = [nhcvect;nhc_epac_2022_024];
btkvect = [btkvect;btk_epac_2022_024];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 25 ... 03E before 2022-06-17-15Z
# my at https://twitter.com/elioeFIN/status/1537783422697058305
# NHC at https://www.nhc.noaa.gov/archive/2022/ep03/ep032022.discus.004.shtml?

my_epac_2022_025 = [12.1,89.5,30;12.0,90.8,35;11.2,94.7,40;12.0,99.1,40;14.1,102.0,45];
nhc_epac_2022_025 = [12.1,89.5,40;12.2,90.8,40;11.7,94.2,40;12.2,98.4,40;13.0,102.5,50];
btk_epac_2022_025 = [12.8,89.7,25;12.9,91.9,25;11.7,94.7,25;11.8,99.3,35;13.4,103.2,40]; # TCR
myvect = [myvect;my_epac_2022_025];
nhcvect = [nhcvect;nhc_epac_2022_025];
btkvect = [btkvect;btk_epac_2022_025];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 26 ... CELIA before 2022-06-18-21Z
# my at https://twitter.com/elioeFIN/status/1538238941954031616
# NHC at https://www.nhc.noaa.gov/archive/2022/ep03/ep032022.discus.009.shtml?

my_epac_2022_026 = [12.5,92.2,25;11.5,95.8,30;11.4,99.6,35;14.0,102.6,45;16.1,106.8,55];
nhc_epac_2022_026 = [12.5,92.5,25;11.9,96.2,30;12.5,100.2,40;13.7,104.0,50;15.0,107.0,60];
btk_epac_2022_026 = [12.7,92.7,25;11.7,95.8,30;12.3,100.5,35;13.6,103.9,45;16.2,106.4,45]; # TCR
myvect = [myvect;my_epac_2022_026];
nhcvect = [nhcvect;nhc_epac_2022_026];
btkvect = [btkvect;btk_epac_2022_026];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 27 ... CELIA before 2022-06-19-21Z
# my at https://twitter.com/elioeFIN/status/1538601013720096768
# NHC at https://www.nhc.noaa.gov/archive/2022/ep03/ep032022.discus.013.shtml?

my_epac_2022_027 = [11.7,96.1,25;11.7,99.6,35;12.5,102.8,50;15.1,106.3,65;16.4,110.6,70];
nhc_epac_2022_027 = [11.5,96.5,30;12.1,100.3,40;13.0,103.6,50;14.7,106.5,65;16.3,108.6,70];
btk_epac_2022_027 = [11.7,95.8,30;12.3,100.5,35;13.6,103.9,45;16.2,106.4,45;17.1,108.7,50]; # TCR
myvect = [myvect;my_epac_2022_027];
nhcvect = [nhcvect;nhc_epac_2022_027];
btkvect = [btkvect;btk_epac_2022_027];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 28 ... CELIA before 2022-06-20-21Z
# my at https://twitter.com/elioeFIN/status/1538957201569636355
# NHC at https://www.nhc.noaa.gov/archive/2022/ep03/ep032022.discus.017.shtml?

my_epac_2022_028 = [12.2,100.4,35;12.9,104.2,45;15.2,107.1,65;17.3,110.5,70;18.3,113.8,60];
nhc_epac_2022_028 = [12.4,100.1,35;13.4,103.6,50;15.4,106.5,65;17.1,109.5,75;18.3,111.9,75];
btk_epac_2022_028 = [12.3,100.5,35;13.6,103.9,45;16.2,106.4,45;17.1,108.7,50;18.5,111.3,45]; # TCR
myvect = [myvect;my_epac_2022_028];
nhcvect = [nhcvect;nhc_epac_2022_028];
btkvect = [btkvect;btk_epac_2022_028];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 29 ... CELIA before 2022-06-21-03Z
# my at https://twitter.com/elioeFIN/status/1539055291802820608
# NHC at https://www.nhc.noaa.gov/archive/2022/ep03/ep032022.discus.018.shtml?

my_epac_2022_029 = [12.4,101.5,40;13.9,105.5,55;15.8,108.1,65;17.1,110.5,70;18.0,113.0,65];
nhc_epac_2022_029 = [12.5,101.3,40;13.9,104.6,50;15.7,107.4,65;17.3,110.3,75;18.5,113.0,65];
btk_epac_2022_029 = [12.8,101.5,35;14.2,104.2,45;16.6,107.1,45;17.5,109.2,50;18.8,112.1,45]; # TCR
myvect = [myvect;my_epac_2022_029];
nhcvect = [nhcvect;nhc_epac_2022_029];
btkvect = [btkvect;btk_epac_2022_029];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 30 ... CELIA before 2022-06-21-15Z
# my at https://twitter.com/elioeFIN/status/1539242861295722499
# NHC at https://www.nhc.noaa.gov/archive/2022/ep03/ep032022.discus.020.shtml?

my_epac_2022_030 = [12.6,103.2,45;14.5,106.1,50;15.9,108.6,70;16.9,111.0,65;18.3,113.4,55];
nhc_epac_2022_030 = [12.7,103.1,45;14.3,106.1,55;15.8,108.9,70;17.0,111.3,70;18.4,114.0,60];
btk_epac_2022_030 = [13.4,103.2,40;15.7,105.5,45;16.9,108.2,50;18.2,110.5,50;19.0,113.3,45]; # TCR
myvect = [myvect;my_epac_2022_030];
nhcvect = [nhcvect;nhc_epac_2022_030];
btkvect = [btkvect;btk_epac_2022_030];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 31 ... CELIA before 2022-06-21-21Z
# my at https://twitter.com/elioeFIN/status/1539321724549926912
# NHC at https://www.nhc.noaa.gov/archive/2022/ep03/ep032022.discus.021.shtml?

my_epac_2022_031 = [13.4,104.3,60;15.2,107.1,65;16.8,109.8,70;19.0,113.5,65;20.6,117.3,50];
nhc_epac_2022_031 = [13.7,104.5,50;15.3,107.4,70;16.6,110.0,75;17.8,112.5,70;19.2,115.4,60];
btk_epac_2022_031 = [13.6,103.9,45;16.2,106.4,45;17.1,108.7,50;18.5,111.3,45;19.3,113.8,45]; # TCR
myvect = [myvect;my_epac_2022_031];
nhcvect = [nhcvect;nhc_epac_2022_031];
btkvect = [btkvect;btk_epac_2022_031];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 32 ... CELIA before 2022-06-22-03Z
# my at https://twitter.com/elioeFIN/status/1539418950400098304
# NHC at https://www.nhc.noaa.gov/archive/2022/ep03/ep032022.discus.022.shtml?

my_epac_2022_032 = [14.3,105.0,55;16.2,108.0,65;17.5,110.5,65;19.2,112.6,60;20.3,115.6,45];
nhc_epac_2022_032 = [14.3,104.7,50;15.9,107.9,70;17.1,110.6,75;18.5,113.5,65;19.5,116.5,55];
btk_epac_2022_032 = [14.2,104.2,45;16.6,107.1,45;17.5,109.2,50;18.8,112.1,45;19.8,114.6,45]; # TCR
myvect = [myvect;my_epac_2022_032];
nhcvect = [nhcvect;nhc_epac_2022_032];
btkvect = [btkvect;btk_epac_2022_032];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 33 ... CELIA before 2022-06-22-15Z
# my at https://twitter.com/elioeFIN/status/1539599925306073090
# NHC at https://www.nhc.noaa.gov/archive/2022/ep03/ep032022.discus.024.shtml?

my_epac_2022_033 = [15.2,106.2,45;16.9,108.9,65;18.0,111.6,60;19.5,114.8,55;20.9,118.3,40];
nhc_epac_2022_033 = [15.4,106.0,50;16.6,108.9,70;17.9,111.4,70;19.3,114.5,60;20.2,118.1,50];
btk_epac_2022_033 = [15.7,105.5,45;16.9,108.2,50;18.2,110.5,50;19.0,113.3,45;20.4,116.5,40]; # TCR
myvect = [myvect;my_epac_2022_033];
nhcvect = [nhcvect;nhc_epac_2022_033];
btkvect = [btkvect;btk_epac_2022_033];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 34 ... CELIA before 2022-06-22-21Z
# my at https://twitter.com/elioeFIN/status/1539684174700990468
# NHC at https://www.nhc.noaa.gov/archive/2022/ep03/ep032022.discus.025.shtml?

my_epac_2022_034 = [15.6,106.6,50;16.8,109.1,65;18.4,111.5,60;19.5,114.4,50;20.3,119.2,40];
nhc_epac_2022_034 = [15.4,107.0,55;16.5,109.3,75;18.0,111.9,70;19.2,115.2,55;20.3,119.1,45];
btk_epac_2022_034 = [16.2,106.4,45;17.1,108.7,50;18.5,111.3,45;19.3,113.8,45;20.7,117.5,35]; # TCR
myvect = [myvect;my_epac_2022_034];
nhcvect = [nhcvect;nhc_epac_2022_034];
btkvect = [btkvect;btk_epac_2022_034];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 35 ... CELIA before 2022-06-23-15Z
# my at https://twitter.com/elioeFIN/status/1539960393480785921
# NHC at https://www.nhc.noaa.gov/archive/2022/ep03/ep032022.discus.028.shtml?

my_epac_2022_035 = [17.0,108.5,55;18.5,110.7,60;19.9,113.7,55;21.0,117.5,40;21.6,122.5,25];
nhc_epac_2022_035 = [17.0,108.7,55;17.8,110.8,65;19.1,113.8,65;20.5,117.9,50;21.4,122.7,35];
btk_epac_2022_035 = [16.9,108.2,50;18.2,110.5,50;19.0,113.3,45;20.4,116.5,40;22.0,120.0,30]; # TCR
myvect = [myvect;my_epac_2022_035];
nhcvect = [nhcvect;nhc_epac_2022_035];
btkvect = [btkvect;btk_epac_2022_035];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 36 ... CELIA before 2022-06-23-21Z
# my at https://twitter.com/elioeFIN/status/1540050376518402050
# NHC at https://www.nhc.noaa.gov/archive/2022/ep03/ep032022.discus.029.shtml?

my_epac_2022_036 = [17.2,109.0,50;18.4,111.1,60;19.7,113.7,50;21.0,117.8,40;21.7,123.0,25];
nhc_epac_2022_036 = [17.1,109.2,60;17.9,111.3,65;19.3,114.1,55;20.5,118.4,45;21.1,123.1,30];
btk_epac_2022_036 = [17.1,108.7,50;18.5,111.3,45;19.3,113.8,45;20.7,117.5,35;22.4,120.9,30]; # TCR
myvect = [myvect;my_epac_2022_036];
nhcvect = [nhcvect;nhc_epac_2022_036];
btkvect = [btkvect;btk_epac_2022_036];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 37 ... CELIA before 2022-06-24-03Z
# my at https://twitter.com/elioeFIN/status/1540138891180707841
# NHC at https://www.nhc.noaa.gov/archive/2022/ep03/ep032022.discus.030.shtml?

my_epac_2022_037 = [17.3,109.4,50;18.6,111.3,60;20.0,114.4,50;21.7,118.2,40;22.6,122.8,25];
nhc_epac_2022_037 = [17.4,109.6,65;18.3,111.7,60;19.7,114.9,50;21.0,119.0,40;21.5,123.5,30];
btk_epac_2022_037 = [17.5,109.2,50;18.8,112.1,45;19.8,114.6,45;21.1,118.3,35;22.9,121.9,30]; # TCR
myvect = [myvect;my_epac_2022_037];
nhcvect = [nhcvect;nhc_epac_2022_037];
btkvect = [btkvect;btk_epac_2022_037];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 38 ... CELIA before 2022-06-24-15Z
# my at https://twitter.com/elioeFIN/status/1540320820337287168
# NHC at https://www.nhc.noaa.gov/archive/2022/ep03/ep032022.discus.032.shtml?

my_epac_2022_038 = [18.1,110.4,60;19.7,113.6,60;20.7,117.0,55;22.1,121.5,35;22.8,126.9,25];
nhc_epac_2022_038 = [17.9,110.7,65;19.1,113.4,60;20.2,117.3,50;21.5,122.0,40;22.4,126.9,30];
btk_epac_2022_038 = [18.2,110.5,50;19.0,113.3,45;20.4,116.5,40;22.0,120.0,30;23.5,124.0,25]; # TCR
myvect = [myvect;my_epac_2022_038];
nhcvect = [nhcvect;nhc_epac_2022_038];
btkvect = [btkvect;btk_epac_2022_038];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Atl 013 ... 94L before 2022-06-27-03Z
# my at https://twitter.com/elioeFIN/status/1541227020415270913
# (no NHC advisory)

# Atl 014 ... 02L before 2022-06-28-15Z
# my at https://twitter.com/elioeFIN/status/1541774490904006656
# NHC at https://www.nhc.noaa.gov/archive/2022/al02/al022022.discus.004.shtml?

my_atl_2022_014 = [11.3,64.4,40;12.2,71.1,45;12.4,77.6,55;12.8,83.1,65;13.5,88.8,30];
nhc_atl_2022_014 = [11.3,64.5,35;12.1,72.0,40;12.1,78.7,60;12.0,84.0,65;12.5,90.0,20];
btk_atl_2022_014 = [11.4,66.2,35;12.0,73.1,35;11.3,80.2,35;11.2,85.9,35;11.8,91.9,55]; # TCR
myvect = [myvect;my_atl_2022_014];
nhcvect = [nhcvect;nhc_atl_2022_014];
btkvect = [btkvect;btk_atl_2022_014];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 015 ... 02L before 2022-06-28-21Z
# my at https://twitter.com/elioeFIN/status/1541859218071982083
# NHC at https://www.nhc.noaa.gov/archive/2022/al02/al022022.discus.005.shtml?

my_atl_2022_015 = [11.6,67.1,40;12.3,73.9,50;12.2,80.3,65;12.5,85.5,50;13.7,91.1,30];
nhc_atl_2022_015 = [11.4,66.6,35;12.1,73.5,40;12.0,80.4,65;12.0,85.5,35;13.0,90.5,20];
btk_atl_2022_015 = [11.7,68.0,35;12.0,74.9,35;11.2,81.8,40;11.2,87.4,45;12.2,93.4,60]; # TCR
myvect = [myvect;my_atl_2022_015];
nhcvect = [nhcvect;nhc_atl_2022_015];
btkvect = [btkvect;btk_atl_2022_015];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 016 ... 02L before 2022-06-29-03Z
# my at https://twitter.com/elioeFIN/status/1541954169292062720
# NHC at https://www.nhc.noaa.gov/archive/2022/al02/al022022.discus.006.shtml?

my_atl_2022_016 = [11.7,69.3,40;12.3,75.9,50;12.3,82.6,70;12.8,88.4,35;14.2,92.5,35];
nhc_atl_2022_016 = [11.8,69.2,35;12.3,76.6,45;12.0,82.9,65;12.0,87.9,35;13.5,93.5,25];
btk_atl_2022_016 = [11.9,69.7,35;11.9,76.7,35;10.9,83.1,50;11.2,88.9,50;12.9,94.9,65]; # TCR
myvect = [myvect;my_atl_2022_016];
nhcvect = [nhcvect;nhc_atl_2022_016];
btkvect = [btkvect;btk_atl_2022_016];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 017 ... 02L before 2022-06-30-15Z
# my at https://twitter.com/elioeFIN/status/1542497254103187456
# NHC at https://www.nhc.noaa.gov/archive/2022/al02/al022022.discus.012.shtml?

my_atl_2022_017 = [11.1,80.5,50;11.0,85.6,40;11.7,90.1,50;12.7,96.0,65;14.6,101.6,65];
nhc_atl_2022_017 = [11.2,80.4,45;11.0,85.6,35;11.8,90.6,45;13.2,96.3,65;14.5,102.0,70];
btk_atl_2022_017 = [11.3,80.2,35;11.2,85.9,35;11.8,91.9,55;13.6,98.2,75;15.1,103.8,100]; # TCR
myvect = [myvect;my_atl_2022_017];
nhcvect = [nhcvect;nhc_atl_2022_017];
btkvect = [btkvect;btk_atl_2022_017];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 018 ... 02L before 2022-06-30-21Z
# my at https://twitter.com/elioeFIN/status/1542583010024906754
# NHC at https://www.nhc.noaa.gov/archive/2022/al02/al022022.discus.013.shtml?

my_atl_2022_018 = [10.9,81.5,50;11.1,86.2,35;12.0,91.0,50;13.4,96.4,60;15.0,102.3,70];
nhc_atl_2022_018 = [11.3,81.4,45;11.4,86.5,35;12.5,91.5,45;14.0,97.2,65;15.4,103.0,70];
btk_atl_2022_018 = [11.2,81.8,40;11.2,87.4,45;12.2,93.4,60;13.8,99.6,85;15.4,105.1,95]; # TCR
myvect = [myvect;my_atl_2022_018];
nhcvect = [nhcvect;nhc_atl_2022_018];
btkvect = [btkvect;btk_atl_2022_018];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 019 ... 02L before 2022-07-01-03Z
# my at https://twitter.com/elioeFIN/status/1542676400347439106
# NHC at https://www.nhc.noaa.gov/archive/2022/al02/al022022.discus.014.shtml?

my_atl_2022_019 = [11.2,82.7,45;11.5,87.4,45;12.9,92.4,60;14.2,97.9,75;16.0,103.5,80];
nhc_atl_2022_019 = [11.3,82.8,50;11.6,87.7,35;13.0,93.0,50;14.5,99.0,65;16.0,104.5,70];
btk_atl_2022_019 = [10.9,83.1,50;11.2,88.9,50;12.9,94.9,65;14.4,100.9,90;15.6,106.4,90]; # TCR
myvect = [myvect;my_atl_2022_019];
nhcvect = [nhcvect;nhc_atl_2022_019];
btkvect = [btkvect;btk_atl_2022_019];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 020 ... BONNIE before 2022-07-01-21Z
# my at https://twitter.com/elioeFIN/status/1542944608669339648
# NHC at https://www.nhc.noaa.gov/archive/2022/al02/al022022.discus.017.shtml?

my_atl_2022_020 = [11.1,86.8,40;12.1,91.8,55;13.6,97.2,70;15.6,102.7,65;16.5,107.4,65];
nhc_atl_2022_020 = [11.3,86.9,45;12.3,92.0,55;14.1,97.7,65;15.6,103.4,70;16.4,108.0,70];
btk_atl_2022_020 = [11.2,87.4,45;12.2,93.4,60;13.8,99.6,85;15.4,105.1,95;16.3,109.5,85]; # TCR
myvect = [myvect;my_atl_2022_020];
nhcvect = [nhcvect;nhc_atl_2022_020];
btkvect = [btkvect;btk_atl_2022_020];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 39 ... BONNIE before 2022-07-02-21Z
# my at https://twitter.com/elioeFIN/status/1543311157284462593
# NHC at https://www.nhc.noaa.gov/archive/2022/ep04/ep042022.discus.021.shtml?

my_epac_2022_039 = [12.0,92.4,55;13.4,98.4,65;15.5,103.9,80;16.2,108.3,70;17.2,112.4,65];
nhc_epac_2022_039 = [12.0,92.5,55;13.7,98.3,70;15.2,104.0,75;15.9,108.8,75;16.4,112.9,75];
btk_epac_2022_039 = [12.2,93.4,60;13.8,99.6,85;15.4,105.1,95;16.3,109.5,85;17.5,114.5,85]; # TCR
myvect = [myvect;my_epac_2022_039];
nhcvect = [nhcvect;nhc_epac_2022_039];
btkvect = [btkvect;btk_epac_2022_039];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 40 ... BONNIE before 2022-07-03-03Z
# my at https://twitter.com/elioeFIN/status/1543402243084402689
# NHC at https://www.nhc.noaa.gov/archive/2022/ep04/ep042022.discus.022.shtml?

my_epac_2022_040 = [12.5,94.3,65;14.0,100.6,75;15.7,105.9,75;16.1,109.8,65;17.3,113.3,65];
nhc_epac_2022_040 = [12.4,94.2,65;14.1,100.2,75;15.6,105.8,75;15.9,110.2,70;16.3,114.3,70];
btk_epac_2022_040 = [12.9,94.9,65;14.4,100.9,90;15.6,106.4,90;16.6,110.6,80;17.8,116.1,85]; # TCR
myvect = [myvect;my_epac_2022_040];
nhcvect = [nhcvect;nhc_epac_2022_040];
btkvect = [btkvect;btk_epac_2022_040];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 41 ... BONNIE before 2022-07-03-15Z
# my at https://twitter.com/elioeFIN/status/1543592429416337409
# NHC at https://www.nhc.noaa.gov/archive/2022/ep04/ep042022.discus.024.shtml?

my_epac_2022_041 = [13.4,97.5,70;15.0,103.7,80;16.0,108.3,75;16.5,112.0,75;17.6,116.4,65];
nhc_epac_2022_041 = [13.3,97.5,75;14.9,103.3,80;15.7,108.2,80;16.2,112.5,75;17.0,117.3,70];
btk_epac_2022_041 = [13.6,98.2,75;15.1,103.8,100;16.0,108.5,85;17.2,113.1,80;18.2,119.3,65]; # TCR
myvect = [myvect;my_epac_2022_041];
nhcvect = [nhcvect;nhc_epac_2022_041];
btkvect = [btkvect;btk_epac_2022_041];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 42 ... BONNIE before 2022-07-03-21Z
# my at https://twitter.com/elioeFIN/status/1543673974067978241
# NHC at https://www.nhc.noaa.gov/archive/2022/ep04/ep042022.discus.025.shtml?

my_epac_2022_042 = [13.8,99.4,75;15.6,105.1,80;16.3,109.5,70;17.0,113.5,70;18.5,118.5,60];
nhc_epac_2022_042 = [13.8,99.4,80;15.5,105.0,85;16.0,109.5,80;16.6,113.6,75;17.7,119.0,70];
btk_epac_2022_042 = [13.8,99.6,85;15.4,105.1,95;16.3,109.5,85;17.5,114.5,85;18.6,121.0,55]; # TCR
myvect = [myvect;my_epac_2022_042];
nhcvect = [nhcvect;nhc_epac_2022_042];
btkvect = [btkvect;btk_epac_2022_042];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 43 ... BONNIE before 2022-07-04-03Z
# my at https://twitter.com/elioeFIN/status/1543761532877684739
# NHC at https://www.nhc.noaa.gov/archive/2022/ep04/ep042022.discus.026.shtml?

my_epac_2022_043 = [14.6,100.8,90;15.9,106.3,80;16.6,110.6,80;17.5,114.1,80;19.1,119.3,70];
nhc_epac_2022_043 = [14.6,100.7,90;15.9,106.0,95;16.6,110.2,85;17.1,114.8,80;18.5,120.5,75];
btk_epac_2022_043 = [14.4,100.9,90;15.6,106.4,90;16.6,110.6,80;17.8,116.1,85;19.0,122.8,50]; # TCR
myvect = [myvect;my_epac_2022_043];
nhcvect = [nhcvect;nhc_epac_2022_043];
btkvect = [btkvect;btk_epac_2022_043];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 44 ... BONNIE before 2022-07-04-15Z
# my at https://twitter.com/elioeFIN/status/1543953765056880641
# NHC at https://www.nhc.noaa.gov/archive/2022/ep04/ep042022.discus.028.shtml?

my_epac_2022_044 = [15.3,103.9,85;15.9,108.8,80;16.6,112.9,80;17.7,117.3,75;19.6,123.2,50];
nhc_epac_2022_044 = [15.1,104.0,90;16.0,108.6,90;16.4,112.8,90;17.6,117.8,85;19.1,124.0,65];
btk_epac_2022_044 = [15.1,103.8,100;16.0,108.5,85;17.2,113.1,80;18.2,119.3,65;19.4,126.6,40]; # TCR
myvect = [myvect;my_epac_2022_044];
nhcvect = [nhcvect;nhc_epac_2022_044];
btkvect = [btkvect;btk_epac_2022_044];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 45 ... BONNIE before 2022-07-04-21Z
# my at https://twitter.com/elioeFIN/status/1544032028533866496
# NHC at https://www.nhc.noaa.gov/archive/2022/ep04/ep042022.discus.029.shtml?

my_epac_2022_045 = [15.3,104.9,85;15.9,109.5,80;16.6,113.7,85;18.0,118.3,70;20.2,124.7,45];
nhc_epac_2022_045 = [15.1,104.9,90;15.8,109.4,90;16.5,113.7,90;17.8,119.0,80;19.3,125.3,60];
btk_epac_2022_045 = [15.4,105.1,95;16.3,109.5,85;17.5,114.5,85;18.6,121.0,55;19.5,128.6,40]; # TCR
myvect = [myvect;my_epac_2022_045];
nhcvect = [nhcvect;nhc_epac_2022_045];
btkvect = [btkvect;btk_epac_2022_045];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 46 ... BONNIE before 2022-07-05-03Z
# my at https://twitter.com/elioeFIN/status/1544124664867442688
# NHC at https://www.nhc.noaa.gov/archive/2022/ep04/ep042022.discus.030.shtml?

my_epac_2022_046 = [15.5,106.2,85;16.1,110.8,90;17.2,115.2,80;18.8,119.8,60;20.9,125.9,40];
nhc_epac_2022_046 = [15.5,105.9,95;16.1,110.3,90;17.1,115.0,85;18.4,120.4,70;19.7,126.8,50];
btk_epac_2022_046 = [15.6,106.4,90;16.6,110.6,80;17.8,116.1,85;19.0,122.8,50;19.6,130.5,35]; # TCR
myvect = [myvect;my_epac_2022_046];
nhcvect = [nhcvect;nhc_epac_2022_046];
btkvect = [btkvect;btk_epac_2022_046];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 47 ... BONNIE before 2022-07-05-15Z
# my at https://twitter.com/elioeFIN/status/1544315278653284359
# NHC at https://www.nhc.noaa.gov/archive/2022/ep04/ep042022.discus.032.shtml?

my_epac_2022_047 = [16.1,108.4,90;17.0,113.1,85;18.8,118.6,75;19.7,124.1,45;20.9,130.1,30];
nhc_epac_2022_047 = [16.0,108.3,95;16.8,112.7,85;18.2,118.4,75;19.5,125.1,60;20.4,131.3,45];
btk_epac_2022_047 = [16.0,108.5,85;17.2,113.1,80;18.2,119.3,65;19.4,126.6,40;19.4,134.0,30]; # TCR
myvect = [myvect;my_epac_2022_047];
nhcvect = [nhcvect;nhc_epac_2022_047];
btkvect = [btkvect;btk_epac_2022_047];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 48 ... BONNIE before 2022-07-05-21Z
# my at https://twitter.com/elioeFIN/status/1544399393868103682
# NHC at https://www.nhc.noaa.gov/archive/2022/ep04/ep042022.discus.033.shtml?

my_epac_2022_048 = [16.4,109.6,85;17.5,114.7,80;19.3,120.6,60;20.3,126.3,35;21.2,132.0,30];
nhc_epac_2022_048 = [16.3,109.6,95;17.4,114.2,85;18.8,120.3,65;20.0,127.1,50;20.5,133.6,35];
btk_epac_2022_048 = [16.3,109.5,85;17.5,114.5,85;18.6,121.0,55;19.5,128.6,40;19.4,135.5,25]; # TCR
myvect = [myvect;my_epac_2022_048];
nhcvect = [nhcvect;nhc_epac_2022_048];
btkvect = [btkvect;btk_epac_2022_048];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 49 ... BONNIE before 2022-07-06-21Z
# my at https://www.nhc.noaa.gov/archive/2022/ep04/ep042022.discus.037.shtml?
# NHC at https://twitter.com/elioeFIN/status/1544765159587069953

my_epac_2022_049 = [17.8,114.4,85;19.4,121.2,50;20.5,128.2,40;20.7,134.4,25];
nhc_epac_2022_049 = [17.6,114.4,75;18.8,120.9,55;19.6,128.2,35;19.8,135.0,25];
btk_epac_2022_049 = [17.5,114.5,85;18.6,121.0,55;19.5,128.6,40;19.4,135.5,25]; # TCR
myvect = [myvect;my_epac_2022_049];
nhcvect = [nhcvect;nhc_epac_2022_049];
btkvect = [btkvect;btk_epac_2022_049];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Epac 50 ... BONNIE before 2022-07-07-21Z
# my at https://twitter.com/elioeFIN/status/1545121579574730754
# NHC at https://www.nhc.noaa.gov/archive/2022/ep04/ep042022.discus.041.shtml?

my_epac_2022_050 = [19.0,120.9,60;20.2,128.8,35;20.3,135.1,25]; # typo in graphic says 2d long = 118.8
nhc_epac_2022_050 = [18.7,121.0,60;19.6,128.3,40;19.9,135.2,30];
btk_epac_2022_050 = [18.6,121.0,55;19.5,128.6,40;19.4,135.5,25]; # TCR
myvect = [myvect;my_epac_2022_050];
nhcvect = [nhcvect;nhc_epac_2022_050];
btkvect = [btkvect;btk_epac_2022_050];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 51 ... BONNIE before 2022-07-08-03Z
# my at https://twitter.com/elioeFIN/status/1545214268513173505
# NHC at https://www.nhc.noaa.gov/archive/2022/ep04/ep042022.discus.042.shtml?

my_epac_2022_051 = [19.3,122.9,55;20.1,130.6,35;20.3,136.8,30];
nhc_epac_2022_051 = [19.2,122.8,60;19.9,130.1,40;20.0,136.8,30];
btk_epac_2022_051 = [19.0,122.8,50;19.6,130.5,35;19.4,136.9,25]; # TCR
myvect = [myvect;my_epac_2022_051];
nhcvect = [nhcvect;nhc_epac_2022_051];
btkvect = [btkvect;btk_epac_2022_051];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 52 ... DARBY before 2022-07-10-03Z
# my at https://twitter.com/elioeFIN/status/1545940931525939202
# NHC at https://www.nhc.noaa.gov/archive/2022/ep05/ep052022.discus.002.shtml?

my_epac_2022_052 = [14.5,120.1,55;14.5,125.2,70;15.4,129.0,65;16.9,133.5,55;18.8,138.6,35];
nhc_epac_2022_052 = [14.4,120.1,55;14.5,125.2,75;15.3,129.9,80;16.6,134.3,65;18.0,139.5,45];
btk_epac_2022_052 = [14.5,119.9,65;14.8,125.9,120;14.6,132.0,95;15.6,137.5,100;17.3,142.8,75]; # TCR (epac only)
myvect = [myvect;my_epac_2022_052];
nhcvect = [nhcvect;nhc_epac_2022_052];
btkvect = [btkvect;btk_epac_2022_052];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 53 ... DARBY before 2022-07-10-21Z
# my at https://twitter.com/elioeFIN/status/1546211658338639878
# NHC at https://www.nhc.noaa.gov/archive/2022/ep05/ep052022.discus.005.shtml?

my_epac_2022_053 = [14.7,124.0,70;15.2,129.3,70;16.3,133.9,55;17.8,139.0,35;18.4,143.5,25];
nhc_epac_2022_053 = [14.6,123.7,75;15.0,128.7,80;16.2,133.8,60;17.8,138.7,40;18.5,144.0,30];
btk_epac_2022_053 = [14.6,124.3,120;14.6,130.5,105;15.1,136.0,100;16.9,141.5,85;17.6,146.8,50]; # TCR (epac only)
myvect = [myvect;my_epac_2022_053];
nhcvect = [nhcvect;nhc_epac_2022_053];
btkvect = [btkvect;btk_epac_2022_053];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 54 ... DARBY before 2022-07-11-03Z
# my at https://twitter.com/elioeFIN/status/1546299575497117696
# NHC at https://www.nhc.noaa.gov/archive/2022/ep05/ep052022.discus.006.shtml?

my_epac_2022_054 = [15.0,125.6,75;15.5,130.8,75;16.7,135.7,55;18.2,140.6,30;18.6,145.7,25];
nhc_epac_2022_054 = [14.9,125.2,80;15.4,130.4,80;16.7,135.3,60;18.0,140.5,40;18.5,145.5,30];
btk_epac_2022_054 = [14.8,125.9,120;14.6,132.0,95;15.6,137.5,100;17.3,142.8,75;17.7,148.5,40]; # TCR (epac only)
myvect = [myvect;my_epac_2022_054];
nhcvect = [nhcvect;nhc_epac_2022_054];
btkvect = [btkvect;btk_epac_2022_054];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 55 ... DARBY before 2022-07-11-15Z
# my at https://twitter.com/elioeFIN/status/1546486106803290113
# NHC at https://www.nhc.noaa.gov/archive/2022/ep05/ep052022.discus.009.shtml?

my_epac_2022_055 = [14.9,128.2,105;15.4,133.5,85;16.8,138.5,65;18.0,143.3,30;18.0,149.2,25];
nhc_epac_2022_055 = [14.8,128.1,120;15.4,133.2,85;16.7,138.5,55;17.5,143.3,35;17.3,149.0,30];
btk_epac_2022_055 = [14.7,129.0,115;14.8,134.7,90;16.5,140.2,90;17.5,145.4,60;17.5,152.3,40]; # TCR (epac only)
myvect = [myvect;my_epac_2022_055];
nhcvect = [nhcvect;nhc_epac_2022_055];
btkvect = [btkvect;btk_epac_2022_055];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 56 ... DARBY before 2022-07-11-21Z
# my at https://twitter.com/elioeFIN/status/1546573171507302401
# NHC at https://www.nhc.noaa.gov/archive/2022/ep05/ep052022.discus.010.shtml?

my_epac_2022_056 = [14.9,129.5,110;15.8,134.7,85;17.1,139.4,55;17.8,144.7,30;17.7,151.5,25];
nhc_epac_2022_056 = [14.9,129.7,120;15.6,134.7,80;17.0,140.0,50;17.4,145.3,35;17.3,151.4,30];
btk_epac_2022_056 = [14.6,130.5,105;15.1,136.0,100;16.9,141.5,85;17.6,146.8,50;17.7,154.5,35]; # TCR (epac only)
myvect = [myvect;my_epac_2022_056];
nhcvect = [nhcvect;nhc_epac_2022_056];
btkvect = [btkvect;btk_epac_2022_056];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 57 ... DARBY before 2022-07-12-03Z
# my at https://twitter.com/elioeFIN/status/1546660451592830978
# NHC at https://www.nhc.noaa.gov/archive/2022/ep05/ep052022.discus.011.shtml?

my_epac_2022_057 = [15.1,131.2,105;16.2,136.5,75;17.4,141.3,55;18.2,146.9,30;18.0,153.6,25];
nhc_epac_2022_057 = [15.1,131.3,115;16.1,136.4,80;17.3,141.6,50;17.6,147.1,35;17.4,153.5,30];
btk_epac_2022_057 = [14.6,132.0,95;15.6,137.5,100;17.3,142.8,75;17.7,148.5,40;17.7,156.5,35]; # TCR (epac only)
myvect = [myvect;my_epac_2022_057];
nhcvect = [nhcvect;nhc_epac_2022_057];
btkvect = [btkvect;btk_epac_2022_057];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 58 ... DARBY before 2022-07-12-15Z
# my at https://twitter.com/elioeFIN/status/1546844876007931905
# NHC at https://www.nhc.noaa.gov/archive/2022/ep05/ep052022.discus.013.shtml?

my_epac_2022_058 = [15.2,134.3,95;16.7,139.6,70;17.7,143.9,45;17.5,150.3,25];
nhc_epac_2022_058 = [15.2,134.4,100;16.4,139.5,75;17.2,144.6,45;17.1,150.8,30];
btk_epac_2022_058 = [14.8,134.7,90;16.5,140.2,90;17.5,145.4,60;17.5,152.3,40]; # TCR (epac only)
myvect = [myvect;my_epac_2022_058];
nhcvect = [nhcvect;nhc_epac_2022_058];
btkvect = [btkvect;btk_epac_2022_058];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Epac 59 ... DARBY before 2022-07-12-21Z
# my at https://twitter.com/elioeFIN/status/1546931165831073794
# NHC at https://www.nhc.noaa.gov/archive/2022/ep05/ep052022.discus.014.shtml?

my_epac_2022_059 = [15.3,135.8,85;17.0,140.6,60;17.5,145.2,35;17.0,152.2,25];
nhc_epac_2022_059 = [15.3,136.0,85;16.6,141.0,65;17.1,146.3,40;17.0,152.7,30];
btk_epac_2022_059 = [15.1,136.0,100;16.9,141.5,85;17.6,146.8,50;17.7,154.5,35]; # TCR (epac only)
myvect = [myvect;my_epac_2022_059];
nhcvect = [nhcvect;nhc_epac_2022_059];
btkvect = [btkvect;btk_epac_2022_059];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Epac 60 ... DARBY before 2022-07-13-21Z
# my at https://twitter.com/elioeFIN/status/1547309832394481668
# NHC at https://www.nhc.noaa.gov/archive/2022/ep05/ep052022.discus.018.shtml?

my_epac_2022_060 = [16.5,141.2,75;17.4,146.0,50;16.9,152.8,35];
nhc_epac_2022_060 = [16.3,141.2,80;16.8,146.5,50;16.5,152.9,30];
btk_epac_2022_060 = [16.9,141.5,85;17.6,146.8,50;17.7,154.5,35]; # TCR (epac only)
myvect = [myvect;my_epac_2022_060];
nhcvect = [nhcvect;nhc_epac_2022_060];
btkvect = [btkvect;btk_epac_2022_060];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 61 ... 96E before 2022-07-15-15Z
# my at https://twitter.com/elioeFIN/status/1547946626559254532
# NHC at https://www.nhc.noaa.gov/archive/2022/ep06/ep062022.discus.001.shtml?

my_epac_2022_061 = [13.8,103.5,45;15.3,106.8,60;17.0,110.1,70;18.6,114.4,70;20.8,119.4,55];
nhc_epac_2022_061 = [13.6,103.5,45;15.2,106.6,65;16.7,110.2,85;18.0,115.0,85;19.5,120.0,70];
btk_epac_2022_061 = [13.8,103.3,55;15.3,106.4,75;17.8,110.6,70;18.8,115.2,55;20.9,120.2,50]; # TCR
myvect = [myvect;my_epac_2022_061];
nhcvect = [nhcvect;nhc_epac_2022_061];
btkvect = [btkvect;btk_epac_2022_061];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 62 ... 06E before 2022-07-15-21Z
# my at https://twitter.com/elioeFIN/status/1548020266743123969
# NHC at https://www.nhc.noaa.gov/archive/2022/ep06/ep062022.discus.002.shtml?

my_epac_2022_062 = [14.4,103.6,50;15.6,106.6,70;17.0,110.3,70;18.7,114.6,70;21.1,119.2,60];
nhc_epac_2022_062 = [14.1,103.4,50;15.6,106.7,75;17.0,110.6,85;18.5,115.0,80;20.5,120.0,65];
btk_epac_2022_062 = [14.1,103.9,60;15.9,107.4,75;18.1,111.9,70;19.3,116.3,55;21.3,121.6,45]; # TCR
myvect = [myvect;my_epac_2022_062];
nhcvect = [nhcvect;nhc_epac_2022_062];
btkvect = [btkvect;btk_epac_2022_062];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 63 ... ESTELLE before 2022-07-17-21Z
# my at https://twitter.com/elioeFIN/status/1548748558026817540
# NHC at https://www.nhc.noaa.gov/archive/2022/ep06/ep062022.discus.010.shtml?

my_epac_2022_063 = [17.4,111.9,80;18.5,116.6,80;20.5,121.2,55;22.4,125.2,35;23.4,128.8,20];
nhc_epac_2022_063 = [17.3,111.8,95;18.3,116.5,90;20.3,121.2,60;21.9,125.2,40;22.8,128.8,30];
btk_epac_2022_063 = [18.1,111.9,70;19.3,116.3,55;21.3,121.6,45;22.3,126.0,30;23.0,129.0,25]; # TCR
myvect = [myvect;my_epac_2022_063];
nhcvect = [nhcvect;nhc_epac_2022_063];
btkvect = [btkvect;btk_epac_2022_063];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 64 ... ESTELLE before 2022-07-18-03Z
# my at https://twitter.com/elioeFIN/status/1548835028913852417
# NHC at https://www.nhc.noaa.gov/archive/2022/ep06/ep062022.discus.011.shtml?

my_epac_2022_064 = [17.7,112.8,80;19.0,117.5,75;21.2,121.9,50;23.2,124.9,30;24.1,128.8,20];
nhc_epac_2022_064 = [17.7,112.6,80;18.9,117.2,80;20.8,121.8,55;22.0,125.5,35;23.0,129.0,25];
btk_epac_2022_064 = [18.2,113.1,65;19.9,117.4,55;21.7,122.8,40;22.4,126.9,25;23.0,129.6,25]; # TCR
myvect = [myvect;my_epac_2022_064];
nhcvect = [nhcvect;nhc_epac_2022_064];
btkvect = [btkvect;btk_epac_2022_064];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 65 ... ESTELLE before 2022-07-18-15Z
# my at https://twitter.com/elioeFIN/status/1549027016254623744
# NHC at https://www.nhc.noaa.gov/archive/2022/ep06/ep062022.discus.013.shtml?

my_epac_2022_065 = [18.8,115.3,65;20.4,120.1,60;22.4,123.8,40;23.8,126.7,25;23.8,129.8,20];
nhc_epac_2022_065 = [18.8,115.2,75;20.3,119.8,65;22.1,123.9,45;23.2,127.3,30;23.5,130.1,25];
btk_epac_2022_065 = [18.8,115.2,55;20.9,120.2,50;22.3,125.0,30;22.9,128.3,25;23.4,131.0,20]; # TCR
myvect = [myvect;my_epac_2022_065];
nhcvect = [nhcvect;nhc_epac_2022_065];
btkvect = [btkvect;btk_epac_2022_065];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 66 ... FRANK before 2022-07-26-15Z
# my at https://twitter.com/elioeFIN/status/1551926889731833856
# NHC at https://www.nhc.noaa.gov/archive/2022/ep07/ep072022.discus.002.shtml?

my_epac_2022_066 = [12.1,106.1,45;12.4,109.8,55;13.6,113.9,70;15.3,117.2,80;18.4,120.3,80];
nhc_epac_2022_066 = [12.1,105.9,40;12.6,109.5,45;13.6,113.1,65;15.0,116.5,80;17.5,119.5,80];
btk_epac_2022_066 = [12.3,105.5,35;12.9,109.6,45;14.0,112.6,55;16.2,115.8,80;18.9,119.0,70]; # TCR
myvect = [myvect;my_epac_2022_066];
nhcvect = [nhcvect;nhc_epac_2022_066];
btkvect = [btkvect;btk_epac_2022_066];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 67 ... FRANK before 2022-07-26-21Z
# my at https://twitter.com/elioeFIN/status/1552012468381163526
# NHC at https://www.nhc.noaa.gov/archive/2022/ep07/ep072022.discus.003.shtml?

my_epac_2022_067 = [12.3,106.9,45;13.1,110.9,55;14.2,114.7,70;15.8,117.3,80;19.1,119.7,70];
nhc_epac_2022_067 = [12.5,106.7,40;13.4,110.6,45;14.3,114.3,60;15.9,117.1,75;18.4,120.0,75];
btk_epac_2022_067 = [12.4,106.4,40;13.0,110.5,50;14.4,113.4,60;16.9,116.5,80;19.7,119.8,70]; # TCR
myvect = [myvect;my_epac_2022_067];
nhcvect = [nhcvect;nhc_epac_2022_067];
btkvect = [btkvect;btk_epac_2022_067];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 68 ... FRANK before 2022-07-27-21Z
# my at https://twitter.com/elioeFIN/status/1552372041189302279
# NHC at https://www.nhc.noaa.gov/archive/2022/ep07/ep072022.discus.007.shtml?

my_epac_2022_068 = [13.2,110.2,50;14.7,113.7,70;17.0,117.1,85;19.4,120.3,60;21.4,123.4,45];
nhc_epac_2022_068 = [13.1,110.3,50;14.6,113.8,70;16.6,117.2,85;19.0,120.5,75;21.0,123.5,55];
btk_epac_2022_068 = [13.0,110.5,50;14.4,113.4,60;16.9,116.5,80;19.7,119.8,70;22.5,122.9,45]; # TCR
myvect = [myvect;my_epac_2022_068];
nhcvect = [nhcvect;nhc_epac_2022_068];
btkvect = [btkvect;btk_epac_2022_068];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 69 ... GEORGETTE before 2022-07-28-09Z
# my at https://twitter.com/elioeFIN/status/1552555782033612803
# NHC at https://www.nhc.noaa.gov/archive/2022/ep08/ep082022.discus.004.shtml?

my_epac_2022_069 = [14.5,119.7,45;13.4,121.4,45;14.9,120.0,40];
nhc_epac_2022_069 = [14.4,120.0,50;13.6,121.7,45;14.2,121.5,35];
btk_epac_2022_069 = [15.4,121.3,50;14.3,125.5,45;13.3,128.9,40]; # TCR
myvect = [myvect;my_epac_2022_069];
nhcvect = [nhcvect;nhc_epac_2022_069];
btkvect = [btkvect;btk_epac_2022_069];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 70 ... FRANK before 2022-07-28-15Z
# my at https://twitter.com/elioeFIN/status/1552647697051557889
# NHC at https://www.nhc.noaa.gov/archive/2022/ep07/ep072022.discus.010.shtml?

my_epac_2022_070 = [14.4,112.8,65;16.9,116.3,75;19.3,119.9,65;21.8,123.3,45;24.1,126.2,35];
nhc_epac_2022_070 = [14.4,112.9,60;16.7,116.5,80;19.1,120.1,85;21.5,123.5,60;23.5,126.0,40];
btk_epac_2022_070 = [14.0,112.6,55;16.2,115.8,80;18.9,119.0,70;21.9,122.1,55;24.4,125.2,35]; # TCR
myvect = [myvect;my_epac_2022_070];
nhcvect = [nhcvect;nhc_epac_2022_070];
btkvect = [btkvect;btk_epac_2022_070];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 71 ... FRANK before 2022-07-29-09Z
# my at https://twitter.com/elioeFIN/status/1552919519089270787
# NHC at https://www.nhc.noaa.gov/archive/2022/ep07/ep072022.discus.013.shtml?

my_epac_2022_071 = [15.7,115.2,75;18.3,118.7,80;20.7,121.9,55;22.9,124.6,35;25.2,127.5,25];
nhc_epac_2022_071 = [15.5,115.2,80;18.0,118.7,90;20.4,122.1,70;22.8,125.2,45;25.0,128.0,30];
btk_epac_2022_071 = [15.5,115.0,80;18.3,118.2,75;21.2,121.3,60;23.7,124.5,40;26.9,126.9,30]; # TCR
myvect = [myvect;my_epac_2022_071];
nhcvect = [nhcvect;nhc_epac_2022_071];
btkvect = [btkvect;btk_epac_2022_071];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 72 ... FRANK before 2022-07-29-15Z
# my at https://twitter.com/elioeFIN/status/1553016528873857024
# NHC at https://www.nhc.noaa.gov/archive/2022/ep07/ep072022.discus.014.shtml?

my_epac_2022_072 = [16.5,116.0,75;19.2,119.5,75;21.9,122.6,50;24.6,125.5,30;25.5,127.8,20];
nhc_epac_2022_072 = [16.5,116.1,80;18.9,119.6,85;21.5,122.8,65;24.0,126.0,40;26.0,128.5,25];
btk_epac_2022_072 = [16.2,115.8,80;18.9,119.0,70;21.9,122.1,55;24.4,125.2,35;27.9,127.3,30]; # TCR
myvect = [myvect;my_epac_2022_072];
nhcvect = [nhcvect;nhc_epac_2022_072];
btkvect = [btkvect;btk_epac_2022_072];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 73 ... FRANK before 2022-07-31-09Z
# my at https://twitter.com/elioeFIN/status/1553649532717748224
# NHC at https://www.nhc.noaa.gov/archive/2022/ep07/ep072022.discus.021.shtml?

my_epac_2022_073 = [21.3,121.0,60;24.9,123.4,40;28.7,125.3,20];
nhc_epac_2022_073 = [21.2,121.1,70;24.4,123.9,40;27.8,126.2,25];
btk_epac_2022_073 = [21.2,121.3,60;23.7,124.5,40;26.9,126.9,30]; # TCR
myvect = [myvect;my_epac_2022_073];
nhcvect = [nhcvect;nhc_epac_2022_073];
btkvect = [btkvect;btk_epac_2022_073];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 74 ... FRANK before 2022-07-31-15Z
# my at https://twitter.com/elioeFIN/status/1553730659805528066
# NHC at https://www.nhc.noaa.gov/archive/2022/ep07/ep072022.discus.022.shtml?

my_epac_2022_074 = [22.0,121.5,55;25.9,123.9,35;29.7,125.4,20];
nhc_epac_2022_074 = [21.9,121.8,55;25.2,124.5,35;28.7,126.4,25];
btk_epac_2022_074 = [21.9,122.1,55;24.4,125.2,35;27.9,127.3,30]; # TCR
myvect = [myvect;my_epac_2022_074];
nhcvect = [nhcvect;nhc_epac_2022_074];
btkvect = [btkvect;btk_epac_2022_074];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 75 ... 09E before 2022-08-06-21Z
# my at https://twitter.com/elioeFIN/status/1555997615849889793
# NHC at https://www.nhc.noaa.gov/archive/2022/ep09/ep092022.discus.002.shtml?

my_epac_2022_075 = [17.1,109.9,40;20.0,113.7,50;22.4,117.0,45;24.1,120.3,35;25.0,123.3,30];
nhc_epac_2022_075 = [17.1,110.1,40;19.8,113.5,50;21.7,116.6,50;23.0,120.0,40;24.0,123.0,35];
btk_epac_2022_075 = [17.2,110.4,35;20.3,113.9,65;22.4,117.3,65;23.8,120.9,45;24.2,124.8,30]; # TCR
myvect = [myvect;my_epac_2022_075];
nhcvect = [nhcvect;nhc_epac_2022_075];
btkvect = [btkvect;btk_epac_2022_075];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 76 ... 09E before 2022-08-07-09Z
# my at https://twitter.com/elioeFIN/status/1556177152671973377
# NHC at https://www.nhc.noaa.gov/archive/2022/ep09/ep092022.discus.004.shtml?

my_epac_2022_076 = [18.9,112.2,40;21.6,115.7,45;23.5,118.9,40;24.2,122.1,25;24.6,125.0,20];
nhc_epac_2022_076 = [18.7,112.2,40;21.1,115.5,45;22.8,118.7,35;23.7,121.8,30;24.0,125.0,30];
btk_epac_2022_076 = [18.8,112.2,45;21.4,115.7,75;23.3,118.8,55;24.0,123.0,35;24.1,126.5,25]; # TCR
myvect = [myvect;my_epac_2022_076];
nhcvect = [nhcvect;nhc_epac_2022_076];
btkvect = [btkvect;btk_epac_2022_076];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 77 ... HOWARD before 2022-08-07-21Z
# my at https://twitter.com/elioeFIN/status/1556360202210971653
# NHC at https://www.nhc.noaa.gov/archive/2022/ep09/ep092022.discus.006.shtml?

my_epac_2022_077 = [20.6,113.5,45;23.3,117.0,45;25.0,119.9,35;25.3,123.0,25;24.8,125.7,20];
nhc_epac_2022_077 = [20.6,113.3,45;22.9,116.8,50;24.5,120.1,35;25.0,123.0,30;24.5,126.0,25];
btk_epac_2022_077 = [20.3,113.9,65;22.4,117.3,65;23.8,120.9,45;24.2,124.8,30;23.6,128.0,20]; # TCR
myvect = [myvect;my_epac_2022_077];
nhcvect = [nhcvect;nhc_epac_2022_077];
btkvect = [btkvect;btk_epac_2022_077];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 78 ... HOWARD before 2022-08-08-09Z
# my at https://twitter.com/elioeFIN/status/1556538515030261765
# NHC at https://www.nhc.noaa.gov/archive/2022/ep09/ep092022.discus.008.shtml?

my_epac_2022_078 = [21.8,115.5,50;24.0,119.3,40;25.2,122.2,30;24.9,125.0,20];
nhc_epac_2022_078 = [21.7,115.5,50;23.6,119.1,45;24.6,122.5,30;24.6,125.4,30];
btk_epac_2022_078 = [21.4,115.7,75;23.3,118.8,55;24.0,123.0,35;24.1,126.5,25]; # TCR
myvect = [myvect;my_epac_2022_078];
nhcvect = [nhcvect;nhc_epac_2022_078];
btkvect = [btkvect;btk_epac_2022_078];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Epac 79 ... HOWARD before 2022-08-08-21Z
# my at https://twitter.com/elioeFIN/status/1556721980719734784
# NHC at https://www.nhc.noaa.gov/archive/2022/ep09/ep092022.discus.010.shtml?

my_epac_2022_079 = [22.6,117.6,65;24.2,121.2,50;25.1,123.8,30;24.5,125.8,15];
nhc_epac_2022_079 = [22.6,117.4,70;24.0,120.8,50;24.7,123.6,30;24.9,125.7,25];
btk_epac_2022_079 = [22.4,117.3,65;23.8,120.9,45;24.2,124.8,30;23.6,128.0,20]; # TCR
myvect = [myvect;my_epac_2022_079];
nhcvect = [nhcvect;nhc_epac_2022_079];
btkvect = [btkvect;btk_epac_2022_079];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Epac 80 ... HOWARD before 2022-08-09-09Z
# my at https://twitter.com/elioeFIN/status/1556901565256065024
# NHC at https://www.nhc.noaa.gov/archive/2022/ep09/ep092022.discus.012.shtml?

my_epac_2022_080 = [23.2,119.2,55;25.0,122.5,40;25.6,125.2,25];
nhc_epac_2022_080 = [23.2,119.2,60;24.4,122.5,40;25.0,125.1,30];
btk_epac_2022_080 = [23.3,118.8,55;24.0,123.0,35;24.1,126.5,25]; # TCR
myvect = [myvect;my_epac_2022_080];
nhcvect = [nhcvect;nhc_epac_2022_080];
btkvect = [btkvect;btk_epac_2022_080];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Wpac 11 ... TD / 10W before 2022-08-21-21Z
# my at https://twitter.com/elioeFIN/status/1561436017009336321

my_wpac_2022_11 = [17.3,124.0,40;19.0,120.2,45;21.2,115.9,50;23.3,111.2,35];
nhc_wpac_2022_11 = [17.5,123.5,40;19.5,120.6,50;21.8,117.0,55;23.3,113.0,35];
btk_wpac_2022_11 = [16.3,123.2,50;19.0,118.8,55;20.8,113.0,50;21.7,106.5,25]; # JTWC best track
myvect = [myvect;my_wpac_2022_11];
nhcvect = [nhcvect;nhc_wpac_2022_11];
btkvect = [btkvect;btk_wpac_2022_11];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Wpac 12 ... MA-ON before 2022-08-22-21Z
# my at https://twitter.com/elioeFIN/status/1561799024524541953

my_wpac_2022_12 = [19.0,119.9,50;20.9,115.1,55;23.1,109.7,30];
nhc_wpac_2022_12 = [18.8,119.9,60;20.8,115.2,70;22.6,109.4,35];
btk_wpac_2022_12 = [19.0,118.8,55;20.8,113.0,50;21.7,106.5,25]; # JTWC best track
myvect = [myvect;my_wpac_2022_12];
nhcvect = [nhcvect;nhc_wpac_2022_12];
btkvect = [btkvect;btk_wpac_2022_12];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Wpac 13 ... MA-ON before 2022-08-23-09Z
# my at https://twitter.com/elioeFIN/status/1561985971436093441

my_wpac_2022_13 = [20.1,117.7,60;22.3,111.9,60;24.0,106.1,30];
nhc_wpac_2022_13 = [19.9,117.4,60;21.9,111.9,65;22.9,106.7,35];
btk_wpac_2022_13 = [19.7,116.5,55;21.8,109.9,35;21.8,102.7,20]; # JTWC best track (days 1-2 only)
myvect = [myvect;my_wpac_2022_13];
nhcvect = [nhcvect;nhc_wpac_2022_13];
btkvect = [btkvect;btk_wpac_2022_13];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Wpac 14 ... MA-ON before 2022-08-23-21Z
# my at https://twitter.com/elioeFIN/status/1562159912758775808

my_wpac_2022_14 = [20.9,113.9,65;22.7,108.0,35];
nhc_wpac_2022_14 = [21.1,113.8,65;22.8,107.5,50];
btk_wpac_2022_14 = [20.8,113.0,50;21.7,106.5,25]; # JTWC best track
myvect = [myvect;my_wpac_2022_14];
nhcvect = [nhcvect;nhc_wpac_2022_14];
btkvect = [btkvect;btk_wpac_2022_14];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Atl 021 ... 91L before 2022-08-28-21Z
# my at https://twitter.com/elioeFIN/status/1563971068842352644
# (no NHC advisory)

# Atl 022 ... 91L before 2022-08-29-09Z
# my at https://twitter.com/elioeFIN/status/1564150528283648000
# (no NHC advisory)

# Atl 023 ... 91L before 2022-08-29-15Z
# my at https://twitter.com/elioeFIN/status/1564244393112092673
# (no NHC advisory)

# Atl 024 ... 91L before 2022-08-29-21Z
# my at https://twitter.com/elioeFIN/status/1564332857174138882
# (no NHC advisory)

# Atl 025 ... 91L before 2022-08-30-09Z
# my at https://twitter.com/elioeFIN/status/1564511423639830529
# (no NHC advisory)

# Wpac 15 ... HINNAMNOR before 2022-08-30-15Z
# my at https://twitter.com/elioeFIN/status/1564607543183384590

my_wpac_2022_15 = [25.0,128.1,140;22.5,126.0,120;22.8,125.1,105;24.6,125.2,95;27.5,125.0,90];
nhc_wpac_2022_15 = [25.0,128.1,135;22.9,125.8,120;22.9,125.1,100;24.8,124.8,95;27.0,124.5,100];
btk_wpac_2022_15 = [24.7,127.7,130;21.3,125.5,120;22.1,124.7,75;24.4,124.8,85;27.7,124.7,105]; # JTWC best track
myvect = [myvect;my_wpac_2022_15];
nhcvect = [nhcvect;nhc_wpac_2022_15];
btkvect = [btkvect;btk_wpac_2022_15];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Atl 026 ... 91L before 2022-08-30-21Z
# my at https://twitter.com/elioeFIN/status/1564693285427363841
# (no NHC advisory)

# Wpac 16 ... HINNAMNOR before 2022-08-31-09Z
# my at https://twitter.com/elioeFIN/status/1564877744613326850

my_wpac_2022_16 = [22.4,125.4,115;22.1,124.7,100;23.8,124.2,95;26.4,123.4,100;29.4,124.2,110];
nhc_wpac_2022_16 = [22.7,125.8,120;22.3,124.8,105;23.8,124.2,100;26.0,123.9,105;29.0,124.0,115];
btk_wpac_2022_16 = [21.7,125.5,135;22.0,125.0,80;23.7,124.8,85;27.1,124.8,105;31.0,125.6,100]; # JTWC best track
myvect = [myvect;my_wpac_2022_16];
nhcvect = [nhcvect;nhc_wpac_2022_16];
btkvect = [btkvect;btk_wpac_2022_16];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 17 ... HINNAMNOR before 2022-08-31-15Z
# my at https://twitter.com/elioeFIN/status/1564967632331227136 

my_wpac_2022_17 = [21.6,125.2,110;22.1,124.6,100;24.3,124.4,100;27.5,123.6,105;30.6,125.2,105];
nhc_wpac_2022_17 = [22.2,125.3,110;22.5,124.4,100;24.3,124.1,105;26.9,123.8,110;29.8,123.8,115];
btk_wpac_2022_17 = [21.3,125.5,120;22.1,124.7,75;24.4,124.8,85;27.7,124.7,105;32.5,126.6,90]; # JTWC best track
myvect = [myvect;my_wpac_2022_17];
nhcvect = [nhcvect;nhc_wpac_2022_17];
btkvect = [btkvect;btk_wpac_2022_17];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Atl 027 ... 91L before 2022-08-31-21Z
# my at https://twitter.com/elioeFIN/status/1565055496117174273
# (no NHC advisory)

# Wpac 18 ... HINNAMNOR before 2022-09-01-09Z
# my at https://twitter.com/elioeFIN/status/1565242100551237632

my_wpac_2022_18 = [21.9,125.0,110;23.4,124.7,105;26.5,124.3,110;30.2,125.4,105;36.9,131.9,85];
nhc_wpac_2022_18 = [21.6,124.8,110;23.4,124.2,100;25.8,124.0,115;29.0,124.5,105;35.1,130.0,80];
btk_wpac_2022_18 = [22.0,125.0,80;23.7,124.8,85;27.1,124.8,105;31.0,125.6,100;39.9,133.7,60]; # JTWC best track
myvect = [myvect;my_wpac_2022_18];
nhcvect = [nhcvect;nhc_wpac_2022_18];
btkvect = [btkvect;btk_wpac_2022_18];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Atl 028 ... 05L before 2022-09-01-15Z
# my at https://twitter.com/elioeFIN/status/1565325043797729280
# NHC at https://www.nhc.noaa.gov/archive/2022/al05/al052022.discus.002.shtml?

my_atl_2022_028 = [38.0,44.0,50;37.7,44.5,65;38.0,44.9,75;39.9,43.4,80;42.5,41.3,75];
nhc_atl_2022_028 = [38.2,44.0,45;38.0,44.2,65;38.5,44.9,75;40.0,43.6,80;42.0,42.0,75];
btk_atl_2022_028 = [37.8,43.6,65;38.0,44.2,60;38.1,45.4,70;39.9,44.1,75;42.1,41.8,65]; # TCR
myvect = [myvect;my_atl_2022_028];
nhcvect = [nhcvect;nhc_atl_2022_028];
btkvect = [btkvect;btk_atl_2022_028];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 029 ... DANIELLE before 2022-09-01-21Z
# my at https://twitter.com/elioeFIN/status/1565415881198501890
# NHC at https://www.nhc.noaa.gov/archive/2022/al05/al052022.discus.003.shtml?

my_atl_2022_029 = [38.0,44.4,65;37.9,45.0,75;38.3,45.9,80;40.3,44.6,80;42.6,42.7,75];
nhc_atl_2022_029 = [38.0,44.1,70;38.0,44.7,80;38.7,44.9,85;40.5,43.5,80;42.5,41.7,75];
btk_atl_2022_029 = [37.9,43.5,65;38.0,44.6,60;38.4,45.2,75;40.6,43.6,75;42.3,41.0,65]; # TCR
myvect = [myvect;my_atl_2022_029];
nhcvect = [nhcvect;nhc_atl_2022_029];
btkvect = [btkvect;btk_atl_2022_029];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 030 ... DANIELLE before 2022-09-02-09Z
# my at https://twitter.com/elioeFIN/status/1565595486970679296
# NHC at https://www.nhc.noaa.gov/archive/2022/al05/al052022.discus.005.shtml?

my_atl_2022_030 = [37.7,43.6,75;37.7,44.0,75;38.4,43.4,85;40.1,40.9,85;42.3,38.3,75];
nhc_atl_2022_030 = [37.8,43.7,70;38.2,44.6,80;39.2,43.7,85;41.0,41.4,80;42.5,38.0,75];
btk_atl_2022_030 = [38.0,43.8,60;37.9,45.3,70;39.2,44.6,75;41.8,42.5,65;42.9,38.6,70]; # TCR
myvect = [myvect;my_atl_2022_030];
nhcvect = [nhcvect;nhc_atl_2022_030];
btkvect = [btkvect;btk_atl_2022_030];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 031 ... DANIELLE before 2022-09-02-15Z
# my at https://twitter.com/elioeFIN/status/1565690257139433476
# NHC at https://www.nhc.noaa.gov/archive/2022/al05/al052022.discus.006.shtml?

my_atl_2022_031 = [38.0,43.5,80;37.9,44.1,80;39.0,42.6,80;40.7,39.9,75;42.9,36.1,70];
nhc_atl_2022_031 = [38.1,43.5,75;38.5,44.4,85;39.6,43.1,85;41.0,40.5,80;42.5,36.4,70];
btk_atl_2022_031 = [38.0,44.2,60;38.1,45.4,70;39.9,44.1,75;42.1,41.8,65;43.5,37.2,70]; # TCR
myvect = [myvect;my_atl_2022_031];
nhcvect = [nhcvect;nhc_atl_2022_031];
btkvect = [btkvect;btk_atl_2022_031];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 032 ... DANIELLE before 2022-09-02-21Z
# my at https://twitter.com/elioeFIN/status/1565779370039541760
# NHC at https://www.nhc.noaa.gov/archive/2022/al05/al052022.discus.007.shtml?

my_atl_2022_032 = [37.9,44.3,75;38.2,44.5,75;39.1,43.0,80;40.5,41.2,75;42.7,37.1,70];
nhc_atl_2022_032 = [38.0,44.2,65;38.3,44.9,75;39.6,43.6,75;41.5,41.0,70;43.0,37.0,65];
btk_atl_2022_032 = [38.0,44.6,60;38.4,45.2,75;40.6,43.6,75;42.3,41.0,65;44.4,35.6,70]; # TCR
myvect = [myvect;my_atl_2022_032];
nhcvect = [nhcvect;nhc_atl_2022_032];
btkvect = [btkvect;btk_atl_2022_032];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 033 ... DANIELLE before 2022-09-03-09Z
# my at https://twitter.com/elioeFIN/status/1565959932486328326
# NHC at https://www.nhc.noaa.gov/archive/2022/al05/al052022.discus.009.shtml?

my_atl_2022_033 = [38.0,44.7,65;38.8,43.9,65;40.1,41.6,65;42.5,38.8,65;46.5,33.9,60];
nhc_atl_2022_033 = [38.1,44.7,65;39.1,44.3,75;40.7,42.6,75;43.0,39.5,70;46.5,35.5,65];
btk_atl_2022_033 = [37.9,45.3,70;39.2,44.6,75;41.8,42.5,65;42.9,38.6,70;46.2,32.4,60]; # TCR
myvect = [myvect;my_atl_2022_033];
nhcvect = [nhcvect;nhc_atl_2022_033];
btkvect = [btkvect;btk_atl_2022_033];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 034 ... EARL before 2022-09-03-15Z
# my at https://twitter.com/elioeFIN/status/1566054545096065024
# NHC at https://www.nhc.noaa.gov/archive/2022/al06/al062022.discus.003.shtml?

my_atl_2022_034 = [20.1,65.0,40;22.3,65.9,50;24.6,66.0,60;26.2,65.3,70;27.3,63.1,85];
nhc_atl_2022_034 = [20.3,65.0,40;21.8,66.3,45;24.0,66.6,50;25.3,65.9,55;27.0,64.5,60];
btk_atl_2022_034 = [19.8,64.6,45;21.5,65.2,55;23.5,65.7,55;25.4,65.8,75;28.7,65.3,85]; # TCR
myvect = [myvect;my_atl_2022_034];
nhcvect = [nhcvect;nhc_atl_2022_034];
btkvect = [btkvect;btk_atl_2022_034];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 035 ... DANIELLE before 2022-09-03-21Z
# my at https://twitter.com/elioeFIN/status/1566138843799199745
# NHC at https://www.nhc.noaa.gov/archive/2022/al05/al052022.discus.011.shtml?

my_atl_2022_035 = [38.2,45.5,70;39.5,43.9,75;41.1,41.6,70;43.3,37.4,65;46.9,30.9,60];
nhc_atl_2022_035 = [38.4,45.4,70;39.9,44.1,75;41.7,41.7,70;44.2,36.9,65;46.7,30.7,60];
btk_atl_2022_035 = [38.4,45.2,75;40.6,43.6,75;42.3,41.0,65;44.4,35.6,70;48.5,30.8,55]; # TCR
myvect = [myvect;my_atl_2022_035];
nhcvect = [nhcvect;nhc_atl_2022_035];
btkvect = [btkvect;btk_atl_2022_035];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 036 ... EARL before 2022-09-03-21Z
# my at https://twitter.com/elioeFIN/status/1566142283229134848
# NHC at https://www.nhc.noaa.gov/archive/2022/al06/al062022.discus.004.shtml?

my_atl_2022_036 = [20.0,65.5,45;21.8,66.4,50;23.5,66.3,55;25.0,65.6,65;27.2,63.7,85];
nhc_atl_2022_036 = [20.5,65.4,50;22.2,66.4,55;24.1,66.6,60;25.6,65.6,65;27.7,63.7,75];
btk_atl_2022_036 = [20.0,65.0,50;22.0,65.2,60;23.9,65.7,65;26.1,65.6,80;29.7,64.8,80]; # TCR
myvect = [myvect;my_atl_2022_036];
nhcvect = [nhcvect;nhc_atl_2022_036];
btkvect = [btkvect;btk_atl_2022_036];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 037 ... EARL before 2022-09-04-09Z
# my at https://twitter.com/elioeFIN/status/1566323673417584641
# NHC at https://www.nhc.noaa.gov/archive/2022/al06/al062022.discus.006.shtml?

my_atl_2022_037 = [21.0,66.0,50;23.1,66.0,55;25.0,65.7,70;26.3,64.7,80;28.5,63.2,100];
nhc_atl_2022_037 = [21.1,66.2,50;23.0,66.6,55;25.0,66.5,60;26.5,65.5,70;28.5,63.5,85];
btk_atl_2022_037 = [20.8,65.4,55;23.1,65.3,55;25.0,65.9,75;27.7,65.5,90;31.9,63.2,80]; # TCR
myvect = [myvect;my_atl_2022_037];
nhcvect = [nhcvect;nhc_atl_2022_037];
btkvect = [btkvect;btk_atl_2022_037];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 038 ... EARL before 2022-09-04-15Z
# my at https://twitter.com/elioeFIN/status/1566415775115755522
# NHC at https://www.nhc.noaa.gov/archive/2022/al06/al062022.discus.007.shtml?

my_atl_2022_038 = [21.5,65.1,55;23.7,65.2,65;25.5,64.3,70;27.2,62.8,80;30.0,60.8,100];
nhc_atl_2022_038 = [21.5,65.2,55;23.5,65.5,65;25.7,65.0,75;27.2,64.0,85;29.6,61.8,100];
btk_atl_2022_038 = [21.5,65.2,55;23.5,65.7,55;25.4,65.8,75;28.7,65.3,85;33.4,61.9,85]; # TCR
myvect = [myvect;my_atl_2022_038];
nhcvect = [nhcvect;nhc_atl_2022_038];
btkvect = [btkvect;btk_atl_2022_038];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 039 ... DANIELLE before 2022-09-04-21Z
# my at https://twitter.com/elioeFIN/status/1566505731678998528
# NHC at https://www.nhc.noaa.gov/archive/2022/al05/al052022.discus.015.shtml?

my_atl_2022_039 = [40.2,43.7,75;41.8,40.2,75;43.4,34.6,65;46.2,27.8,60;48.3,19.1,40];
nhc_atl_2022_039 = [40.2,43.7,80;42.1,40.4,75;44.0,34.9,65;45.9,27.6,55;47.0,19.6,45];
btk_atl_2022_039 = [40.6,43.6,75;42.3,41.0,65;44.4,35.6,70;48.5,30.8,55;49.8,34.8,45]; # TCR
myvect = [myvect;my_atl_2022_039];
nhcvect = [nhcvect;nhc_atl_2022_039];
btkvect = [btkvect;btk_atl_2022_039];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 040 ... EARL before 2022-09-04-21Z
# my at https://twitter.com/elioeFIN/status/1566509014929883138
# NHC at https://www.nhc.noaa.gov/archive/2022/al06/al062022.discus.008.shtml?

my_atl_2022_040 = [22.1,65.3,60;24.2,65.7,65;26.2,64.9,75;28.5,63.8,85;31.3,60.9,105];
nhc_atl_2022_040 = [22.3,65.4,55;24.6,65.6,65;26.4,65.1,75;28.2,64.0,85;31.4,61.5,105];
btk_atl_2022_040 = [21.0,65.2,60;23.9,65.7,65;26.1,65.6,80;29.7,64.8,80;34.9,59.8,90]; # TCR
myvect = [myvect;my_atl_2022_040];
nhcvect = [nhcvect;nhc_atl_2022_040];
btkvect = [btkvect;btk_atl_2022_040];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 041 ... EARL before 2022-09-05-09Z
# my at https://twitter.com/elioeFIN/status/1566685998280577024
# NHC at https://www.nhc.noaa.gov/archive/2022/al06/al062022.discus.010.shtml?

my_atl_2022_041 = [22.7,65.6,55;24.9,65.5,60;27.2,64.8,80;30.2,63.0,95;33.7,58.9,110];
nhc_atl_2022_041 = [22.9,65.7,55;25.1,65.9,60;27.3,65.4,75;30.0,64.0,90;33.5,60.0,105];
btk_atl_2022_041 = [23.1,65.3,55;25.0,65.9,75;27.7,65.5,90;31.9,63.2,80;40.0,54.3,90]; # TCR
myvect = [myvect;my_atl_2022_041];
nhcvect = [nhcvect;nhc_atl_2022_041];
btkvect = [btkvect;btk_atl_2022_041];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 042 ... EARL before 2022-09-06-15Z
# my at https://twitter.com/elioeFIN/status/1567139367294046210
# NHC at https://www.nhc.noaa.gov/archive/2022/al06/al062022.discus.015.shtml?

my_atl_2022_042 = [25.4,65.8,65;28.6,64.6,75;32.6,61.1,95;39.1,52.8,95;43.2,45.5,55];
nhc_atl_2022_042 = [25.5,65.7,60;28.6,65.0,80;33.0,61.4,100;39.3,52.8,95;44.0,44.0,65];
btk_atl_2022_042 = [25.4,65.8,75;28.7,65.3,85;33.4,61.9,85;42.4,53.3,80;44.2,52.0,50]; # TCR
myvect = [myvect;my_atl_2022_042];
nhcvect = [nhcvect;nhc_atl_2022_042];
btkvect = [btkvect;btk_atl_2022_042];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 81 ... KAY before 2022-09-06-15Z
# my at https://twitter.com/elioeFIN/status/1567143392580194304
# NHC at https://www.nhc.noaa.gov/archive/2022/ep12/ep122022.discus.009.shtml?

my_epac_2022_081 = [20.9,112.7,85;24.8,114.8,75;28.3,116.4,45;31.2,118.3,30;30.9,119.9,25];
nhc_epac_2022_081 = [20.7,112.6,95;24.6,114.3,90;28.0,116.0,60;30.2,118.6,45;30.5,120.9,30];
btk_epac_2022_081 = [20.6,112.3,85;25.2,113.5,65;30.0,116.4,40;30.9,120.2,30;30.3,121.3,20]; # TCR
myvect = [myvect;my_epac_2022_081];
nhcvect = [nhcvect;nhc_epac_2022_081];
btkvect = [btkvect;btk_epac_2022_081];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Wpac 19 ... TD / 14W before 2022-09-07-15Z
# my at https://twitter.com/elioeFIN/status/1567504175675711492

my_wpac_2022_19 = [18.6,132.6,75;20.9,130.5,105;23.6,128.2,120;24.5,126.4,110;26.4,125.5,95];
nhc_wpac_2022_19 = [18.5,131.8,75;20.8,129.3,105;22.7,127.3,120;24.0,126.0,115;25.9,125.0,100];
btk_wpac_2022_19 = [17.4,130.9,40;19.5,127.7,55;21.7,125.5,75;23.3,124.4,100;24.9,124.0,85]; # JTWC best track
myvect = [myvect;my_wpac_2022_19];
nhcvect = [nhcvect;nhc_wpac_2022_19];
btkvect = [btkvect;btk_wpac_2022_19];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Atl 043 ... EARL before 2022-09-07-15Z
# my at https://twitter.com/elioeFIN/status/1567508020871004161
# NHC at https://www.nhc.noaa.gov/archive/2022/al06/al062022.discus.019.shtml?

my_atl_2022_043 = [28.4,65.1,95;32.8,61.0,105;39.6,51.9,105;45.2,45.3,60;44.5,43.0,45];
nhc_atl_2022_043 = [28.5,65.2,90;33.0,61.5,110;40.1,53.1,100;45.0,49.0,60;47.0,47.9,45];
btk_atl_2022_043 = [28.7,65.3,85;33.4,61.9,85;42.4,53.3,80;44.2,52.0,50;43.9,51.9,40]; # TCR
myvect = [myvect;my_atl_2022_043];
nhcvect = [nhcvect;nhc_atl_2022_043];
btkvect = [btkvect;btk_atl_2022_043];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 82 ... KAY before 2022-09-07-15Z
# my at https://twitter.com/elioeFIN/status/1567511203274006529
# NHC at https://www.nhc.noaa.gov/archive/2022/ep12/ep122022.discus.013.shtml?

my_epac_2022_082 = [25.0,114.0,80;28.9,116.6,55;31.3,119.0,40;31.1,120.9,20;29.4,120.3,15];
nhc_epac_2022_082 = [24.9,114.0,85;28.9,116.1,65;30.9,118.9,40;30.9,121.2,30;29.4,121.9,20];
btk_epac_2022_082 = [25.2,113.5,65;30.0,116.4,40;30.9,120.2,30;30.3,121.3,20;28.5,121.8,15]; # TCR
myvect = [myvect;my_epac_2022_082];
nhcvect = [nhcvect;nhc_epac_2022_082];
btkvect = [btkvect;btk_epac_2022_082];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Atl 044 ... EARL before 2022-09-07-21Z
# my at https://twitter.com/elioeFIN/status/1567593487943585792
# NHC at https://www.nhc.noaa.gov/archive/2022/al06/al062022.discus.020.shtml?

my_atl_2022_044 = [29.5,64.4,100;34.7,58.8,115;41.9,49.4,90;46.1,42.6,55;45.8,43.7,40];
nhc_atl_2022_044 = [29.7,64.5,95;35.0,59.4,115;41.8,50.6,80;45.0,46.0,50;47.0,41.0,40];
btk_atl_2022_044 = [29.7,64.8,80;34.9,59.8,90;43.3,52.8,70;44.3,51.9,45;43.2,51.2,35]; # TCR
myvect = [myvect;my_atl_2022_044];
nhcvect = [nhcvect;nhc_atl_2022_044];
btkvect = [btkvect;btk_atl_2022_044];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 045 ... EARL before 2022-09-08-15Z
# my at https://twitter.com/elioeFIN/status/1567863544321826816
# NHC at https://www.nhc.noaa.gov/archive/2022/al06/al062022.discus.023.shtml?

my_atl_2022_045 = [33.2,61.9,110;40.7,53.2,95;45.3,46.4,55;47.5,44.5,40;46.7,38.3,55];
nhc_atl_2022_045 = [33.5,61.7,110;40.9,53.5,100;44.9,48.1,50;46.1,46.2,40;47.1,40.7,40];
btk_atl_2022_045 = [33.4,61.9,85;42.4,53.3,80;44.2,52.0,50;43.9,51.9,40;43.4,45.2,35]; # TCR
myvect = [myvect;my_atl_2022_045];
nhcvect = [nhcvect;nhc_atl_2022_045];
btkvect = [btkvect;btk_atl_2022_045];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 83 ... KAY before 2022-09-08-15Z
# my at https://twitter.com/elioeFIN/status/1567868916201832448
# NHC at https://www.nhc.noaa.gov/archive/2022/ep12/ep122022.discus.017.shtml?

my_epac_2022_083 = [29.9,116.2,50;31.7,119.9,35;32.2,121.8,25;30.8,120.9,20];
nhc_epac_2022_083 = [29.6,116.0,55;31.5,118.9,40;31.3,120.8,30;30.0,121.0,20];
btk_epac_2022_083 = [30.0,116.4,40;30.9,120.2,30;30.3,121.3,20;28.5,121.8,15]; # TCR
myvect = [myvect;my_epac_2022_083];
nhcvect = [nhcvect;nhc_epac_2022_083];
btkvect = [btkvect;btk_epac_2022_083];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Wpac 20 ... MUIFA before 2022-09-09-15Z
# my at https://twitter.com/elioeFIN/status/1568229079047933952

my_wpac_2022_20 = [21.6,125.2,95;22.6,123.3,110;23.8,122.7,105;24.7,122.9,85;26.7,123.2,60];
nhc_wpac_2022_20 = [22.1,125.7,90;23.4,124.1,110;24.4,123.6,100;25.6,123.6,85;27.3,123.4,65];
btk_wpac_2022_20 = [21.7,125.5,75;23.3,124.4,100;24.9,124.0,85;26.8,123.9,85;29.9,122.3,75]; # JTWC best track
myvect = [myvect;my_wpac_2022_20];
nhcvect = [nhcvect;nhc_wpac_2022_20];
btkvect = [btkvect;btk_wpac_2022_20];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 21 ... MUIFA before 2022-09-10-15Z
# my at https://twitter.com/elioeFIN/status/1568588786153541633

my_wpac_2022_21 = [23.1,124.0,100;24.5,123.3,110;25.8,123.5,95;29.0,123.1,75;33.0,121.0,50];
nhc_wpac_2022_21 = [23.4,124.4,115;24.6,124.0,100;26.1,123.9,90;29.3,123.1,65;33.1,121.8,45];
btk_wpac_2022_21 = [23.3,124.4,100;24.9,124.0,85;26.8,123.9,85;29.9,122.3,75;35.3,120.4,40]; # JTWC best track
myvect = [myvect;my_wpac_2022_21];
nhcvect = [nhcvect;nhc_wpac_2022_21];
btkvect = [btkvect;btk_wpac_2022_21];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 22 ... MUIFA before 2022-09-11-15Z
# my at https://twitter.com/elioeFIN/status/1568953646418907136

my_wpac_2022_22 = [25.0,124.3,100;26.3,124.4,85;29.3,123.8,75;33.7,122.3,50;38.1,120.3,25];
nhc_wpac_2022_22 = [24.8,124.2,95;26.0,124.3,85;28.4,123.4,75;31.9,121.7,55;36.0,120.3,30];
btk_wpac_2022_22 = [24.9,124.0,85;26.8,123.9,85;29.9,122.3,75;35.3,120.4,40;40.9,124.0,15]; # JTWC best track
myvect = [myvect;my_wpac_2022_22];
nhcvect = [nhcvect;nhc_wpac_2022_22];
btkvect = [btkvect;btk_wpac_2022_22];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 23 ... 15W before 2022-09-11-15Z
# my at https://twitter.com/elioeFIN/status/1568958833350811649

my_wpac_2022_23 = [22.5,162.0,55;24.9,162.7,75;30.3,163.0,80;39.6,168.9,65];
nhc_wpac_2022_23 = [22.2,162.2,55;24.4,163.0,75;29.0,163.6,80;38.4,169.3,70];
btk_wpac_2022_23 = [22.6,162.7,45;25.9,162.9,60;32.0,161.7,70;45.4,168.2,50]; # JTWC best track
myvect = [myvect;my_wpac_2022_23];
nhcvect = [nhcvect;nhc_wpac_2022_23];
btkvect = [btkvect;btk_wpac_2022_23];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Wpac 24 ... MUIFA before 2022-09-11-21Z
# my at https://twitter.com/elioeFIN/status/1569041166116737024

my_wpac_2022_24 = [25.3,124.2,90;26.9,124.0,80;30.4,123.0,70;35.2,120.6,40];
nhc_wpac_2022_24 = [25.2,124.3,90;26.7,124.1,75;29.8,122.5,65;33.0,120.6,50];
btk_wpac_2022_24 = [25.2,124.1,85;27.2,123.5,85;31.2,122.0,65;36.5,120.6,35]; # JTWC best track
myvect = [myvect;my_wpac_2022_24];
nhcvect = [nhcvect;nhc_wpac_2022_24];
btkvect = [btkvect;btk_wpac_2022_24];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Wpac 25 ... MUIFA before 2022-09-12-15Z
# my at https://twitter.com/elioeFIN/status/1569315589671247873

my_wpac_2022_25 = [26.6,124.0,75;29.6,122.6,65;34.7,120.3,40;37.1,119.9,25];
nhc_wpac_2022_25 = [26.8,123.8,75;30.0,122.1,65;33.6,119.5,40;35.2,119.0,20];
btk_wpac_2022_25 = [26.8,123.9,85;29.9,122.3,75;35.3,120.4,40;40.9,124.0,15]; # JTWC best track
myvect = [myvect;my_wpac_2022_25];
nhcvect = [nhcvect;nhc_wpac_2022_25];
btkvect = [btkvect;btk_wpac_2022_25];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Wpac 26 ... 16W before 2022-09-13-15Z
# my at https://twitter.com/elioeFIN/status/1569681806332420097

my_wpac_2022_26 = [23.5,139.4,45;24.7,136.6,60;26.2,133.7,80;28.1,130.8,90;30.6,128.6,85];
nhc_wpac_2022_26 = [23.4,139.2,45;24.2,136.1,60;25.8,132.7,75;28.1,130.2,95;31.5,129.3,90];
btk_wpac_2022_26 = [22.9,140.2,40;23.5,137.3,75;24.8,134.7,130;27.6,132.0,125;31.9,130.6,80]; # JTWC best track
myvect = [myvect;my_wpac_2022_26];
nhcvect = [nhcvect;nhc_wpac_2022_26];
btkvect = [btkvect;btk_wpac_2022_26];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 27 ... NANMADOL before 2022-09-13-21Z
# my at https://twitter.com/elioeFIN/status/1569773020993961984

my_wpac_2022_27 = [23.6,139.1,50;24.6,135.9,75;26.0,132.8,90;28.5,130.3,100;32.0,128.2,85];
nhc_wpac_2022_27 = [23.5,139.1,55;24.4,135.6,75;25.7,132.5,100;28.3,129.9,95;31.7,128.9,85];
btk_wpac_2022_27 = [23.1,139.7,50;23.4,136.3,90;25.5,133.8,135;28.6,131.4,115;33.2,130.3,70]; # JTWC best track
myvect = [myvect;my_wpac_2022_27];
nhcvect = [nhcvect;nhc_wpac_2022_27];
btkvect = [btkvect;btk_wpac_2022_27];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 28 ... NANMADOL before 2022-09-14-15Z
# my at https://twitter.com/elioeFIN/status/1570040473145823232

my_wpac_2022_28 = [23.9,136.8,70;25.1,134.0,90;27.8,131.1,100;31.2,130.2,90;33.6,132.1,60];
nhc_wpac_2022_28 = [23.5,137.2,70;25.1,134.0,95;27.9,131.4,105;31.4,130.3,80;33.7,132.4,55];
btk_wpac_2022_28 = [23.5,137.3,75;24.8,134.7,130;27.6,132.0,125;31.9,130.6,80;36.1,134.3,50]; # JTWC best track
myvect = [myvect;my_wpac_2022_28];
nhcvect = [nhcvect;nhc_wpac_2022_28];
btkvect = [btkvect;btk_wpac_2022_28];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Atl 046 ... 07L before 2022-09-14-21Z
# my at https://twitter.com/elioeFIN/status/1570128121642520579
# NHC at https://www.nhc.noaa.gov/archive/2022/al07/al072022.discus.002.shtml?

my_atl_2022_046 = [16.9,54.4,35;16.5,59.0,40;16.9,62.8,40;17.8,66.3,40;19.4,69.3,45];
nhc_atl_2022_046 = [17.0,54.6,40;17.1,59.9,40;17.6,64.5,40;18.4,68.3,40;20.0,70.5,40];
btk_atl_2022_046 = [16.3,54.8,50;16.3,60.4,45;16.5,64.0,50;17.8,66.9,75;19.6,69.5,85]; # TCR
myvect = [myvect;my_atl_2022_046];
nhcvect = [nhcvect;nhc_atl_2022_046];
btkvect = [btkvect;btk_atl_2022_046];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 047 ... 07L before 2022-09-15-03Z
# my at https://twitter.com/elioeFIN/status/1570215161452969986
# NHC at https://www.nhc.noaa.gov/archive/2022/al07/al072022.discus.003.shtml?

my_atl_2022_047 = [17.0,56.0,40;16.9,60.6,35;17.2,64.1,40;18.2,67.4,40;20.4,69.5,45];
nhc_atl_2022_047 = [17.1,56.3,50;17.3,61.5,50;17.8,65.8,50;18.7,68.6,50;20.5,70.6,50];
btk_atl_2022_047 = [16.1,56.2,50;16.4,61.6,50;16.5,64.7,50;18.1,67.8,75;20.2,70.1,95]; # TCR
myvect = [myvect;my_atl_2022_047];
nhcvect = [nhcvect;nhc_atl_2022_047];
btkvect = [btkvect;btk_atl_2022_047];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 048 ... FIONA before 2022-09-15-15Z
# my at https://twitter.com/elioeFIN/status/1570395410144829443
# NHC at https://www.nhc.noaa.gov/archive/2022/al07/al072022.discus.005.shtml?

my_atl_2022_048 = [16.6,58.4,50;16.8,62.4,55;17.5,65.4,50;19.4,67.9,55;22.1,70.6,60];
nhc_atl_2022_048 = [16.7,58.7,45;17.2,63.4,50;17.8,66.6,55;19.3,68.6,55;21.5,70.4,60];
btk_atl_2022_048 = [15.8,58.8,45;16.4,63.3,50;17.2,66.2,65;18.8,68.9,75;21.5,71.2,100]; # TCR
myvect = [myvect;my_atl_2022_048];
nhcvect = [nhcvect;nhc_atl_2022_048];
btkvect = [btkvect;btk_atl_2022_048];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 29 ... NANMADOL before 2022-09-15-15Z
# my at https://twitter.com/elioeFIN/status/1570401915971981312

my_wpac_2022_29 = [25.0,133.9,110;27.8,131.5,110;31.4,130.1,95;35.2,133.6,60];
nhc_wpac_2022_29 = [25.1,134.0,100;27.9,131.2,120;31.4,130.0,100;34.9,133.7,70];
btk_wpac_2022_29 = [24.8,134.7,130;27.6,132.0,125;31.9,130.6,80;36.1,134.3,50]; # JTWC best track
myvect = [myvect;my_wpac_2022_29];
nhcvect = [nhcvect;nhc_wpac_2022_29];
btkvect = [btkvect;btk_wpac_2022_29];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Atl 049 ... FIONA before 2022-09-16-15Z
# my at https://twitter.com/elioeFIN/status/1570756695185592324
# NHC at https://www.nhc.noaa.gov/archive/2022/al07/al072022.discus.009.shtml?

my_atl_2022_049 = [16.7,63.4,55;17.3,67.0,55;18.9,69.2,50;21.1,71.4,55;23.3,72.3,65];
nhc_atl_2022_049 = [16.6,63.5,50;17.3,67.3,55;18.5,69.6,60;20.5,71.3,55;22.5,72.4,65];
btk_atl_2022_049 = [16.4,63.3,50;17.2,66.2,65;18.8,68.9,75;21.5,71.2,100;24.2,71.7,115]; # TCR
myvect = [myvect;my_atl_2022_049];
nhcvect = [nhcvect;nhc_atl_2022_049];
btkvect = [btkvect;btk_atl_2022_049];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 84 ... LESTER before 2022-09-16-15Z
# my at https://twitter.com/elioeFIN/status/1570759804834152450
# NHC at https://www.nhc.noaa.gov/archive/2022/ep13/ep132022.discus.004.shtml?

my_epac_2022_084 = [15.5,98.9,45];
nhc_epac_2022_084 = [15.7,99.1,45];
btk_epac_2022_084 = [15.8,97.0,30]; # TCR
myvect = [myvect;my_epac_2022_084];
nhcvect = [nhcvect;nhc_epac_2022_084];
btkvect = [btkvect;btk_epac_2022_084];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;2];

# Atl 050 ... FIONA before 2022-09-16-21Z
# my at https://twitter.com/elioeFIN/status/1570851668157427713
# NHC at https://www.nhc.noaa.gov/archive/2022/al07/al072022.discus.010.shtml?

my_atl_2022_050 = [17.3,64.7,50;17.9,67.8,60;19.9,69.5,60;22.6,71.1,70;24.8,71.6,70];
nhc_atl_2022_050 = [17.2,64.9,50;18.2,68.2,60;19.6,70.2,55;21.6,71.7,60;23.6,72.2,70];
btk_atl_2022_050 = [16.5,64.0,50;17.8,66.9,75;19.5,69.5,85;22.3,71.7,100;25.1,71.6,115]; # TCR
myvect = [myvect;my_atl_2022_050];
nhcvect = [nhcvect;nhc_atl_2022_050];
btkvect = [btkvect;btk_atl_2022_050];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 051 ... FIONA before 2022-09-17-15Z
# my at https://twitter.com/elioeFIN/status/1571124417035640832
# NHC at https://www.nhc.noaa.gov/archive/2022/al07/al072022.discus.013.shtml?

my_atl_2022_051 = [17.2,65.9,60;19.0,68.2,70;21.3,69.9,70;24.0,70.3,85;27.5,70.3,95];
nhc_atl_2022_051 = [17.3,66.0,60;19.2,68.3,70;21.6,70.0,80;23.9,70.6,85;27.6,69.7,90];
btk_atl_2022_051 = [17.2,66.2,65;18.8,68.9,75;21.5,71.2,100;24.2,71.7,115;28.0,70.6,115]; # TCR
myvect = [myvect;my_atl_2022_051];
nhcvect = [nhcvect;nhc_atl_2022_051];
btkvect = [btkvect;btk_atl_2022_051];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 052 ... FIONA before 2022-09-17-21Z
# my at https://twitter.com/elioeFIN/status/1571214923287363584
# NHC at https://www.nhc.noaa.gov/archive/2022/al07/al072022.discus.014.shtml?

my_atl_2022_052 = [17.9,66.5,65;19.7,68.7,70;22.4,70.3,85;25.5,70.7,90;29.8,69.0,100];
nhc_atl_2022_052 = [18.1,66.7,65;20.1,69.0,70;22.7,70.5,80;25.4,70.7,90;29.9,68.8,95];
btk_atl_2022_052 = [17.8,66.9,75;19.5,69.5,85;22.3,71.7,100;25.1,71.6,115;29.5,70.0,115]; # TCR
myvect = [myvect;my_atl_2022_052];
nhcvect = [nhcvect;nhc_atl_2022_052];
btkvect = [btkvect;btk_atl_2022_052];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 053 ... FIONA before 2022-09-18-15Z
# my at https://twitter.com/elioeFIN/status/1571485024653803520
# NHC at https://www.nhc.noaa.gov/archive/2022/al07/al072022.discus.017.shtml?

my_atl_2022_053 = [18.9,68.3,70;21.8,69.9,85;24.4,70.2,95;28.4,68.7,95;34.3,64.5,100];
nhc_atl_2022_053 = [18.9,68.4,75;21.8,70.1,90;24.6,70.6,100;28.5,69.3,100;34.8,64.6,100];
btk_atl_2022_053 = [18.8,68.9,75;21.5,71.2,100;24.2,71.7,115;28.0,70.6,115;34.3,65.0,115]; # TCR
myvect = [myvect;my_atl_2022_053];
nhcvect = [nhcvect;nhc_atl_2022_053];
btkvect = [btkvect;btk_atl_2022_053];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 85 ... MADELINE before 2022-09-18-15Z
# my at https://twitter.com/elioeFIN/status/1571487902202314752
# NHC at https://www.nhc.noaa.gov/archive/2022/ep14/ep142022.discus.004.shtml?

my_epac_2022_085 = [20.6,108.9,40;21.6,111.2,30;22.2,113.7,20;23.1,115.7,20;22.8,118.2,20];
nhc_epac_2022_085 = [20.4,108.8,45;21.3,111.3,35;21.6,113.8,25;21.4,116.9,25;21.1,119.7,20];
btk_epac_2022_085 = [20.5,108.7,55;21.1,111.6,30;21.7,114.2,30;21.8,117.1,25;21.3,120.6,20]; # TCR
myvect = [myvect;my_epac_2022_085];
nhcvect = [nhcvect;nhc_epac_2022_085];
btkvect = [btkvect;btk_epac_2022_085];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Atl 054 ... FIONA before 2022-09-18-21Z
# my at https://twitter.com/elioeFIN/status/1571574790506577925
# NHC at https://www.nhc.noaa.gov/archive/2022/al07/al072022.discus.018.shtml?

my_atl_2022_054 = [19.7,69.1,85;22.6,70.4,100;25.8,70.3,105;30.3,68.1,110;37.1,61.9,105];
nhc_atl_2022_054 = [20.0,69.2,85;22.8,70.8,100;25.7,70.7,110;30.0,68.5,105;37.5,61.5,95];
btk_atl_2022_054 = [19.5,69.5,85;22.3,71.7,100;25.1,71.6,115;29.5,70.0,115;37.8,61.7,110]; # TCR
myvect = [myvect;my_atl_2022_054];
nhcvect = [nhcvect;nhc_atl_2022_054];
btkvect = [btkvect;btk_atl_2022_054];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 86 ... MADELINE before 2022-09-18-21Z
# my at https://twitter.com/elioeFIN/status/1571578897329975296
# NHC at https://www.nhc.noaa.gov/archive/2022/ep14/ep142022.discus.005.shtml?

my_epac_2022_086 = [20.8,109.4,40;21.5,112.0,30;22.6,114.0,20;21.7,117.3,20;21.4,120.4,20];
nhc_epac_2022_086 = [20.4,109.7,40;21.3,112.1,30;21.6,114.9,25;21.4,117.8,25;21.0,120.5,20];
btk_epac_2022_086 = [20.8,109.5,50;21.2,112.2,30;21.8,115.0,25;21.7,117.8,25;21.0,121.8,20]; # TCR
myvect = [myvect;my_epac_2022_086];
nhcvect = [nhcvect;nhc_epac_2022_086];
btkvect = [btkvect;btk_epac_2022_086];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Atl 055 ... FIONA before 2022-09-19-15Z
# my at https://twitter.com/elioeFIN/status/1571847501229195266
# NHC at https://www.nhc.noaa.gov/archive/2022/al07/al072022.discus.021.shtml?

my_atl_2022_055 = [21.5,70.5,90;24.3,70.7,100;28.3,69.3,105;34.1,64.7,105;45.3,55.4,80];
nhc_atl_2022_055 = [21.5,70.7,90;24.2,71.2,105;28.2,69.9,110;33.3,65.3,105;45.0,57.5,80];
btk_atl_2022_055 = [21.5,71.2,100;24.2,71.7,115;28.0,70.6,115;34.3,65.0,115;46.8,61.2,75]; # TCR
myvect = [myvect;my_atl_2022_055];
nhcvect = [nhcvect;nhc_atl_2022_055];
btkvect = [btkvect;btk_atl_2022_055];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 056 ... FIONA before 2022-09-19-21Z
# my at https://twitter.com/elioeFIN/status/1571936694114594816
# NHC at https://www.nhc.noaa.gov/archive/2022/al07/al072022.discus.022.shtml?

my_atl_2022_056 = [22.8,70.8,100;25.5,70.5,105;29.9,68.2,115;37.5,61.5,115;50.8,57.2,60];
nhc_atl_2022_056 = [22.8,71.1,100;25.7,71.0,115;29.9,68.9,110;37.0,62.3,105;48.5,58.5,80];
btk_atl_2022_056 = [22.3,71.7,100;25.1,71.6,115;29.5,70.0,115;37.8,61.7,110;47.9,60.8,65]; # TCR
myvect = [myvect;my_atl_2022_056];
nhcvect = [nhcvect;nhc_atl_2022_056];
btkvect = [btkvect;btk_atl_2022_056];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 057 ... FIONA before 2022-09-20-21Z
# my at https://twitter.com/elioeFIN/status/1572301996367179778
# NHC at https://www.nhc.noaa.gov/archive/2022/al07/al072022.discus.026.shtml?

my_atl_2022_057 = [24.7,71.8,115;29.2,70.0,115;36.8,63.8,110;48.6,59.9,75;52.8,59.7,40];
nhc_atl_2022_057 = [25.0,71.9,115;29.4,70.1,120;36.9,63.5,105;46.5,60.0,85;55.0,58.0,55];
btk_atl_2022_057 = [25.1,71.6,115;29.5,70.0,115;37.8,61.7,110;47.9,60.8,65;55.5,58.0,40]; # TCR
myvect = [myvect;my_atl_2022_057];
nhcvect = [nhcvect;nhc_atl_2022_057];
btkvect = [btkvect;btk_atl_2022_057];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 058 ... FIONA before 2022-09-21-21Z
# my at https://twitter.com/elioeFIN/status/1572661397527400448
# NHC at https://www.nhc.noaa.gov/archive/2022/al07/al072022.discus.030.shtml?

my_atl_2022_058 = [29.3,69.7,120;37.7,63.2,115;48.8,62.1,70;54.9,61.2,40;60.8,60.8,35];
nhc_atl_2022_058 = [29.5,69.6,120;37.4,63.0,110;47.0,61.0,75;52.5,60.5,45;60.0,59.1,35];
btk_atl_2022_058 = [29.5,70.0,115;37.8,61.7,110;47.9,60.8,65;55.5,58.0,40;60.5,58.5,35]; # TCR
myvect = [myvect;my_atl_2022_058];
nhcvect = [nhcvect;nhc_atl_2022_058];
btkvect = [btkvect;btk_atl_2022_058];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 30 ... NORU before 2022-09-23-09Z
# my at https://twitter.com/elioeFIN/status/1573222096477749250

my_wpac_2022_30 = [17.2,127.4,50;17.0,121.8,65;17.3,115.9,60;16.9,110.0,80;17.3,104.3,45];
nhc_wpac_2022_30 = [17.6,127.0,50;17.6,121.2,60;17.7,115.1,70;17.6,109.2,80;17.3,103.5,45];
btk_wpac_2022_30 = [15.8,126.9,70;15.0,122.4,130;15.9,116.9,75;15.6,111.2,130;15.6,105.3,50]; # JTWC best track
myvect = [myvect;my_wpac_2022_30];
nhcvect = [nhcvect;nhc_wpac_2022_30];
btkvect = [btkvect;btk_wpac_2022_30];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Atl 059 ... 09L before 2022-09-23-15Z
# my at https://twitter.com/elioeFIN/status/1573299991216537600
# NHC at https://www.nhc.noaa.gov/archive/2022/al09/al092022.discus.002.shtml?

my_atl_2022_059 = [14.7,74.1,35;16.3,78.6,45;20.2,81.9,70;24.1,83.6,85;27.4,81.8,100];
nhc_atl_2022_059 = [14.7,74.1,35;16.1,78.3,45;19.8,81.4,75;23.5,82.8,90;26.7,82.1,100];
btk_atl_2022_059 = [14.5,74.4,40;15.0,79.4,40;18.7,82.4,70;22.6,83.6,100;26.0,82.7,140]; # TCR
myvect = [myvect;my_atl_2022_059];
nhcvect = [nhcvect;nhc_atl_2022_059];
btkvect = [btkvect;btk_atl_2022_059];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 060 ... 09L before 2022-09-23-21Z
# my at https://twitter.com/elioeFIN/status/1573389749640986624
# NHC at https://www.nhc.noaa.gov/archive/2022/al09/al092022.discus.003.shtml?

my_atl_2022_060 = [14.7,75.6,35;16.8,80.0,45;20.5,83.1,75;24.4,84.1,90;27.8,82.4,80];
nhc_atl_2022_060 = [15.0,75.4,35;16.8,79.7,50;20.7,82.3,80;24.4,83.2,95;27.0,82.7,100];
btk_atl_2022_060 = [14.4,75.8,40;15.8,80.1,40;19.7,83.0,80;23.5,83.3,105;26.6,82.4,135]; # TCR
myvect = [myvect;my_atl_2022_060];
nhcvect = [nhcvect;nhc_atl_2022_060];
btkvect = [btkvect;btk_atl_2022_060];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 061 ... IAN before 2022-09-24-15Z
# my at https://twitter.com/elioeFIN/status/1573659394436374529
# NHC at https://www.nhc.noaa.gov/archive/2022/al09/al092022.discus.006.shtml?

my_atl_2022_061 = [15.2,78.9,55;18.7,82.6,80;22.2,84.8,100;25.8,85.0,105;29.2,83.2,80];
nhc_atl_2022_061 = [15.5,78.9,55;18.8,82.3,85;22.7,84.1,100;26.0,83.9,105;28.6,82.9,95];
btk_atl_2022_061 = [15.0,79.4,45;18.7,82.4,70;22.6,83.6,100;26.0,82.7,140;28.4,80.6,60]; # TCR
myvect = [myvect;my_atl_2022_061];
nhcvect = [nhcvect;nhc_atl_2022_061];
btkvect = [btkvect;btk_atl_2022_061];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 062 ... IAN before 2022-09-25-15Z
# my at https://twitter.com/elioeFIN/status/1574033114929762306
# NHC at https://www.nhc.noaa.gov/archive/2022/al09/al092022.discus.010.shtml?

my_atl_2022_062 = [18.2,82.7,75;22.1,84.5,105;25.7,84.8,110;28.1,84.2,90;30.3,84.0,45];
nhc_atl_2022_062 = [18.1,82.5,70;22.0,84.4,105;25.5,84.8,115;28.0,84.4,95;30.3,83.7,65];
btk_atl_2022_062 = [18.7,82.4,70;22.6,83.6,100;26.0,82.7,140;28.4,80.6,60;31.5,79.0,75]; # TCR
myvect = [myvect;my_atl_2022_062];
nhcvect = [nhcvect;nhc_atl_2022_062];
btkvect = [btkvect;btk_atl_2022_062];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 063 ... IAN before 2022-09-26-09Z
# my at https://twitter.com/elioeFIN/status/1574296929269334016
# NHC at https://www.nhc.noaa.gov/archive/2022/al09/al092022.discus.013.shtml?

my_atl_2022_063 = [21.5,84.0,100;25.0,84.5,120;27.5,83.8,100;28.9,83.0,60;32.5,82.8,30];
nhc_atl_2022_063 = [21.7,83.9,105;25.3,84.1,120;27.7,83.4,100;29.2,83.0,80;32.0,82.9,35];
btk_atl_2022_063 = [21.8,83.6,100;25.2,82.9,120;27.7,81.1,65;30.3,79.1,75;35.3,79.7,30]; # TCR
myvect = [myvect;my_atl_2022_063];
nhcvect = [nhcvect;nhc_atl_2022_063];
btkvect = [btkvect;btk_atl_2022_063];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 064 ... IAN before 2022-09-26-15Z
# my at https://twitter.com/elioeFIN/status/1574386605988937730
# NHC at https://www.nhc.noaa.gov/archive/2022/al09/al092022.discus.014.shtml?

my_atl_2022_064 = [22.6,84.1,105;26.1,84.0,110;27.8,83.0,75;29.3,83.1,50;32.5,83.4,30];
nhc_atl_2022_064 = [22.7,84.0,105;26.1,83.8,120;28.0,83.2,90;29.8,82.9,55;32.8,82.6,30];
btk_atl_2022_064 = [22.6,83.6,100;26.0,82.7,140;28.4,80.6,60;31.5,79.0,75;35.8,79.9,20]; # TCR (except day 5)
myvect = [myvect;my_atl_2022_064];
nhcvect = [nhcvect;nhc_atl_2022_064];
btkvect = [btkvect;btk_atl_2022_064];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 065 ... IAN before 2022-09-27-09Z
# my at https://twitter.com/elioeFIN/status/1574668542271623168
# NHC at https://www.nhc.noaa.gov/archive/2022/al09/al092022.discus.017.shtml?

my_atl_2022_065 = [25.1,83.5,120;27.3,82.7,95;28.9,81.9,45;32.0,82.3,25];
nhc_atl_2022_065 = [25.4,83.5,115;27.6,82.6,105;29.0,82.0,55;31.7,82.2,30];
btk_atl_2022_065 = [25.2,82.9,120;27.7,81.1,65;30.3,79.1,75;35.3,79.7,30]; # TCR 
myvect = [myvect;my_atl_2022_065];
nhcvect = [nhcvect;nhc_atl_2022_065];
btkvect = [btkvect;btk_atl_2022_065];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 066 ... IAN before 2022-09-27-15Z
# my at https://twitter.com/elioeFIN/status/1574746273936076800
# NHC at https://www.nhc.noaa.gov/archive/2022/al09/al092022.discus.018.shtml?

my_atl_2022_066 = [25.9,82.9,120;27.5,81.9,75;28.7,81.8,50;32.1,82.3,30];
nhc_atl_2022_066 = [26.0,83.0,115;27.8,82.1,75;29.5,81.5,50;33.0,81.8,35];
btk_atl_2022_066 = [26.0,82.7,140;28.4,80.6,60;31.5,79.0,75;35.8,79.9,20]; # TCR (except day 4)
myvect = [myvect;my_atl_2022_066];
nhcvect = [nhcvect;nhc_atl_2022_066];
btkvect = [btkvect;btk_atl_2022_066];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 067 ... IAN before 2022-09-28-15Z
# my at https://twitter.com/elioeFIN/status/1575141101534601222
# NHC at https://www.nhc.noaa.gov/archive/2022/al09/al092022.discus.024.shtml?

my_atl_2022_067 = [28.1,81.3,65;30.2,80.7,45;33.4,82.1,30];
nhc_atl_2022_067 = [28.3,81.4,60;30.8,80.6,55;34.7,81.5,30];
btk_atl_2022_067 = [28.4,80.6,60;31.5,79.0,75;35.8,79.9,20]; # TCR (except day 3)
myvect = [myvect;my_atl_2022_067];
nhcvect = [nhcvect;nhc_atl_2022_067];
btkvect = [btkvect;btk_atl_2022_067];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Epac 87 ... 16E before 2022-09-29-09Z
# my at https://twitter.com/elioeFIN/status/1575384701799485442
# NHC at https://www.nhc.noaa.gov/archive/2022/ep16/ep162022.discus.002.shtml?

my_epac_2022_087 = [16.4,107.6,55;18.3,108.4,70;20.2,107.9,75;23.2,107.4,35];
nhc_epac_2022_087 = [16.4,107.7,55;17.9,108.5,70;20.0,108.2,70;22.6,107.4,55];
btk_epac_2022_087 = [15.6,106.7,50;17.1,107.0,60;18.6,106.9,105;21.7,106.6,85]; # TCR
myvect = [myvect;my_epac_2022_087];
nhcvect = [nhcvect;nhc_epac_2022_087];
btkvect = [btkvect;btk_epac_2022_087];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Epac 88 ... ORLENE before 2022-09-29-21Z
# my at https://twitter.com/elioeFIN/status/1575565547928170496
# NHC at https://www.nhc.noaa.gov/archive/2022/ep16/ep162022.discus.004.shtml?

my_epac_2022_088 = [16.8,107.9,60;18.3,107.4,80;20.5,106.9,70;23.6,106.0,25];
nhc_epac_2022_088 = [16.9,108.1,60;18.6,108.2,80;20.8,107.8,80;23.5,107.0,65];
btk_epac_2022_088 = [16.3,106.9,50;17.7,107.1,75;20.0,107.0,100;23.2,106.0,45]; # TCR
myvect = [myvect;my_epac_2022_088];
nhcvect = [nhcvect;nhc_epac_2022_088];
btkvect = [btkvect;btk_epac_2022_088];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Epac 89 ... ORLENE before 2022-09-30-15Z
# my at https://twitter.com/elioeFIN/status/1575833032938098689
# NHC at https://www.nhc.noaa.gov/archive/2022/ep16/ep162022.discus.007.shtml?

my_epac_2022_089 = [17.4,107.3,75;19.3,106.6,80;21.9,105.8,35];
nhc_epac_2022_089 = [17.5,107.3,70;19.7,107.0,85;22.9,106.4,60];
btk_epac_2022_089 = [17.4,107.0,65;19.3,106.9,115;22.6,106.2,75]; # TCR
myvect = [myvect;my_epac_2022_089];
nhcvect = [nhcvect;nhc_epac_2022_089];
btkvect = [btkvect;btk_epac_2022_089];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 90 ... ORLENE before 2022-09-30-21Z
# my at https://twitter.com/elioeFIN/status/1575927283751141376
# NHC at https://www.nhc.noaa.gov/archive/2022/ep16/ep162022.discus.008.shtml?

my_epac_2022_090 = [17.9,107.2,75;19.7,106.8,75;22.2,105.9,35];
nhc_epac_2022_090 = [18.0,107.2,75;20.6,106.8,80;23.0,106.4,60];
btk_epac_2022_090 = [17.7,107.1,75;20.0,107.0,100;23.2,106.0,45]; # TCR
myvect = [myvect;my_epac_2022_090];
nhcvect = [nhcvect;nhc_epac_2022_090];
btkvect = [btkvect;btk_epac_2022_090];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 91 ... ORLENE before 2022-10-01-15Z
# my at https://twitter.com/elioeFIN/status/1576193454110973958
# NHC at https://www.nhc.noaa.gov/archive/2022/ep16/ep162022.discus.011.shtml?

my_epac_2022_091 = [19.2,106.9,70;21.4,105.8,50];
nhc_epac_2022_091 = [19.2,106.8,80;21.6,106.3,65];
btk_epac_2022_091 = [19.3,106.9,115;22.6,106.2,75]; # TCR
myvect = [myvect;my_epac_2022_091];
nhcvect = [nhcvect;nhc_epac_2022_091];
btkvect = [btkvect;btk_epac_2022_091];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Epac 92 ... ORLENE before 2022-10-01-21Z
# my at https://twitter.com/elioeFIN/status/1576289580437106688
# NHC at https://www.nhc.noaa.gov/archive/2022/ep16/ep162022.discus.012.shtml?

my_epac_2022_092 = [19.6,107.0,80;21.6,106.2,50];
nhc_epac_2022_092 = [19.7,106.8,85;22.1,106.2,65];
btk_epac_2022_092 = [20.0,107.0,100;23.2,106.0,45]; # TCR
myvect = [myvect;my_epac_2022_092];
nhcvect = [nhcvect;nhc_epac_2022_092];
btkvect = [btkvect;btk_epac_2022_092];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Epac 93 ... ORLENE before 2022-10-02-15Z
# my at https://twitter.com/elioeFIN/status/1576557035864612866
# NHC at https://www.nhc.noaa.gov/archive/2022/ep16/ep162022.discus.016.shtml?

my_epac_2022_093 = [21.7,106.7,90];
nhc_epac_2022_093 = [21.7,106.4,85];
btk_epac_2022_093 = [22.6,106.2,75]; # TCR
myvect = [myvect;my_epac_2022_093];
nhcvect = [nhcvect;nhc_epac_2022_093];
btkvect = [btkvect;btk_epac_2022_093];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;2];

# Epac 94 ... ORLENE before 2022-10-02-21Z
# my at https://twitter.com/elioeFIN/status/1576653832909893633
# NHC at https://www.nhc.noaa.gov/archive/2022/ep16/ep162022.discus.017.shtml?

my_epac_2022_094 = [22.4,106.3,65];
nhc_epac_2022_094 = [22.4,106.3,80];
btk_epac_2022_094 = [23.2,106.0,45]; # TCR
myvect = [myvect;my_epac_2022_094];
nhcvect = [nhcvect;nhc_epac_2022_094];
btkvect = [btkvect;btk_epac_2022_094];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;2];

# Epac 95 ... ORLENE before 2022-10-03-09Z
# my at https://twitter.com/elioeFIN/status/1576834465036652544
# NHC at https://www.nhc.noaa.gov/archive/2022/ep16/ep162022.discus.019.shtml?
# (nothing to be verified - not even after TCR release)

# Atl 068 ... 91L before 2022-10-05-21Z
# my at https://twitter.com/elioeFIN/status/1577744225923481619
# (no NHC advisory)

# Shem 001 ... 02 / 03S before 2022-10-06-15Z
# my at https://twitter.com/elioeFIN/status/1578009294716293123

my_shem_2023_001 = [11.0,85.2,35;14.1,86.1,40;16.9,86.2,40;16.4,83.9,35];
nhc_shem_2023_001 = [10.5,85.8,40;12.9,85.8,40;15.2,86.1,35;15.4,85.0,30];
btk_shem_2023_001 = [10.5,84.7,35;13.1,86.0,40;15.5,87.0,25;16.9,87.2,30]; # JTWC best track (except day 4)
myvect = [myvect;my_shem_2023_001];
nhcvect = [nhcvect;nhc_shem_2023_001];
btkvect = [btkvect;btk_shem_2023_001];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Atl 069 ... 13L before 2022-10-06-21Z
# my at https://twitter.com/elioeFIN/status/1578101937353867265
# NHC at https://www.nhc.noaa.gov/archive/2022/al13/al132022.discus.002.shtml?

my_atl_2022_069 = [12.4,73.2,40;12.8,79.3,60;12.8,84.3,75;14.4,89.2,35];
nhc_atl_2022_069 = [12.6,73.6,40;13.0,79.6,60;13.3,84.1,75;14.8,89.1,35];
btk_atl_2022_069 = [12.8,73.8,40;12.6,80.5,60;12.3,86.2,45;14.5,91.0,25]; # TCR (except day 4)
myvect = [myvect;my_atl_2022_069];
nhcvect = [nhcvect;nhc_atl_2022_069];
btkvect = [btkvect;btk_atl_2022_069];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 070 ... 13L before 2022-10-07-15Z
# my at https://twitter.com/elioeFIN/status/1578371475463372801
# NHC at https://www.nhc.noaa.gov/archive/2022/al13/al132022.discus.005.shtml?

my_atl_2022_070 = [13.1,78.4,55;13.2,83.3,80;14.5,88.4,30];
nhc_atl_2022_070 = [13.2,78.7,55;13.1,83.6,75;14.5,88.5,30];
btk_atl_2022_070 = [12.7,78.9,55;12.3,84.7,65;13.7,89.9,30]; # TCR
myvect = [myvect;my_atl_2022_070];
nhcvect = [nhcvect;nhc_atl_2022_070];
btkvect = [btkvect;btk_atl_2022_070];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Atl 071 ... JULIA before 2022-10-07-21Z
# my at https://twitter.com/elioeFIN/status/1578464569307328512
# NHC at https://www.nhc.noaa.gov/archive/2022/al13/al132022.discus.006.shtml?

my_atl_2022_071 = [13.0,80.2,60;13.2,85.2,50;13.9,89.7,30];
nhc_atl_2022_071 = [13.0,80.1,55;13.2,85.0,50;14.3,89.8,25];
btk_atl_2022_071 = [12.6,80.5,60;12.3,86.2,45;14.5,91.0,25]; # TCR (except day 3)
myvect = [myvect;my_atl_2022_071];
nhcvect = [nhcvect;nhc_atl_2022_071];
btkvect = [btkvect;btk_atl_2022_071];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Atl 072 ... JULIA before 2022-10-08-15Z
# my at https://twitter.com/elioeFIN/status/1578734176966443008
# NHC at https://www.nhc.noaa.gov/archive/2022/al13/al132022.discus.009.shtml?

my_atl_2022_072 = [12.5,84.4,60;13.3,89.1,35];
nhc_atl_2022_072 = [12.5,84.3,65;13.2,89.5,30];
btk_atl_2022_072 = [12.3,84.7,65;13.7,89.9,30]; # TCR
myvect = [myvect;my_atl_2022_072];
nhcvect = [nhcvect;nhc_atl_2022_072];
btkvect = [btkvect;btk_atl_2022_072];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Atl 073 ... JULIA before 2022-10-08-21Z
# my at https://twitter.com/elioeFIN/status/1578828361719500800
# NHC at https://www.nhc.noaa.gov/archive/2022/al13/al132022.discus.010.shtml?

my_atl_2022_073 = [12.4,86.0,45;12.9,91.0,30];
nhc_atl_2022_073 = [12.6,86.0,40;13.3,91.3,30];
btk_atl_2022_073 = [12.3,86.2,45;14.5,91.0,25]; # TCR (except day 2)
myvect = [myvect;my_atl_2022_073];
nhcvect = [nhcvect;nhc_atl_2022_073];
btkvect = [btkvect;btk_atl_2022_073];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Atl 074 ... KARL before 2022-10-12-09Z
# my at https://twitter.com/elioeFIN/status/1580104905536126976
# NHC at https://www.nhc.noaa.gov/archive/2022/al14/al142022.discus.003.shtml?

my_atl_2022_074 = [21.6,94.8,45;19.8,94.6,40;18.5,95.4,25];
nhc_atl_2022_074 = [21.7,95.3,45;20.2,95.5,40;18.6,96.1,25];
btk_atl_2022_074 = [22.4,94.3,45;20.3,92.6,35;18.7,92.9,25]; # TCR
myvect = [myvect;my_atl_2022_074];
nhcvect = [nhcvect;nhc_atl_2022_074];
btkvect = [btkvect;btk_atl_2022_074];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Epac 096 ... 90E before 2022-10-19-15Z
# my at https://twitter.com/elioeFIN/status/1582721257769816064
# (no NHC advisory)

# Epac 097 ... 90E before 2022-10-19-21Z
# my at https://twitter.com/elioeFIN/status/1582813259773915136
# (no NHC advisory)

# Epac 098 ... 19E before 2022-10-20-15Z
# my at https://twitter.com/elioeFIN/status/1583084359908986880
# NHC at https://www.nhc.noaa.gov/archive/2022/ep19/ep192022.discus.003.shtml?

my_epac_2022_098 = [15.9,103.6,50;17.5,105.5,65;20.7,106.2,70];
nhc_epac_2022_098 = [15.7,103.7,55;17.2,105.5,75;20.3,105.9,85];
btk_epac_2022_098 = [16.2,104.1,55;17.6,106.2,110;22.1,105.5,100]; # TCR
myvect = [myvect;my_epac_2022_098];
nhcvect = [nhcvect;nhc_epac_2022_098];
btkvect = [btkvect;btk_epac_2022_098];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 099 ... ROSLYN before 2022-10-20-21Z
# my at https://twitter.com/elioeFIN/status/1583174602884526081
# NHC at https://www.nhc.noaa.gov/archive/2022/ep19/ep192022.discus.004.shtml?

my_epac_2022_099 = [16.3,104.5,50;18.8,106.4,70;22.5,105.9,50];
nhc_epac_2022_099 = [16.4,104.6,55;18.5,106.3,75;21.8,106.0,85];
btk_epac_2022_099 = [16.4,104.7,60;18.5,106.6,115;23.9,103.9,60]; # TCR
myvect = [myvect;my_epac_2022_099];
nhcvect = [nhcvect;nhc_epac_2022_099];
btkvect = [btkvect;btk_epac_2022_099];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 100 ... ROSLYN before 2022-10-21-15Z
# my at https://twitter.com/elioeFIN/status/1583449358447411200
# NHC at https://www.nhc.noaa.gov/archive/2022/ep19/ep192022.discus.007.shtml?

my_epac_2022_100 = [18.1,106.1,80;22.2,106.0,75];
nhc_epac_2022_100 = [18.1,106.0,85;21.7,105.8,95];
btk_epac_2022_100 = [17.6,106.2,110;22.1,105.5,100]; # TCR
myvect = [myvect;my_epac_2022_100];
nhcvect = [nhcvect;nhc_epac_2022_100];
btkvect = [btkvect;btk_epac_2022_100];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Nio 08 ... SITRANG before 2022-10-23-21Z
# my at https://twitter.com/elioeFIN/status/1584260078236237825

my_nio_2022_08 = [21.7,90.7,50];
nhc_nio_2022_08 = [21.5,90.5,45];
btk_nio_2022_08 = [24.8,91.2,35]; # JTWC best track
myvect = [myvect;my_nio_2022_08];
nhcvect = [nhcvect;nhc_nio_2022_08];
btkvect = [btkvect;btk_nio_2022_08];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;3];

# Wpac 31 ... TD / 93W before 2022-10-26-15Z
# my at https://twitter.com/elioeFIN/status/1585263310802456577
# (no JTWC forecast)

# Wpac 32 ... TD / 93W before 2022-10-26-21Z
# my at https://twitter.com/elioeFIN/status/1585353041473335296
# (no JTWC forecast)

# Wpac 33 ... NALGAE before 2022-10-27-15Z
# my at https://twitter.com/elioeFIN/status/1585620392181465089

my_wpac_2022_33 = [13.3,126.4,50;14.8,122.4,70;15.6,119.5,40;16.9,119.3,45;19.5,119.7,45];
nhc_wpac_2022_33 = [13.2,126.4,50;14.7,122.6,75;16.2,119.6,55;18.1,118.4,45;20.1,119.7,55];
btk_wpac_2022_33 = [13.0,125.3,50;14.6,121.0,45;15.4,117.5,45;17.6,116.4,65;19.9,115.6,55]; # JTWC best track
myvect = [myvect;my_wpac_2022_33];
nhcvect = [nhcvect;nhc_wpac_2022_33];
btkvect = [btkvect;btk_wpac_2022_33];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 34 ... NALGAE before 2022-10-27-21Z
# my at https://twitter.com/elioeFIN/status/1585710923809001472

my_wpac_2022_34 = [13.5,125.1,55;15.0,121.2,75;15.7,118.6,50;18.0,118.3,45;19.8,119.3,55];
nhc_wpac_2022_34 = [13.7,125.2,60;15.3,121.2,60;16.8,118.9,50;18.7,118.7,55;20.3,119.0,50];
btk_wpac_2022_34 = [13.5,123.9,55;15.8,119.9,40;15.8,117.3,45;18.1,116.1,75;20.6,115.3,50]; # JTWC best track
myvect = [myvect;my_wpac_2022_34];
nhcvect = [nhcvect;nhc_wpac_2022_34];
btkvect = [btkvect;btk_wpac_2022_34];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 35 ... NALGAE before 2022-10-28-15Z
# my at https://twitter.com/elioeFIN/status/1585983906649493505

my_wpac_2022_35 = [14.5,121.3,50;15.6,118.2,45;17.7,117.9,55;19.4,118.2,50;21.4,119.0,50];
nhc_wpac_2022_35 = [14.7,121.0,55;16.5,118.0,45;18.0,117.7,50;19.3,118.0,55;20.6,117.9,50];
btk_wpac_2022_35 = [14.6,121.0,45;15.4,117.5,45;17.6,116.4,65;19.9,115.6,55;21.4,114.6,40]; # JTWC best track
myvect = [myvect;my_wpac_2022_35];
nhcvect = [nhcvect;nhc_wpac_2022_35];
btkvect = [btkvect;btk_wpac_2022_35];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 36 ... NALGAE before 2022-10-28-21Z
# my at https://twitter.com/elioeFIN/status/1586071881597472768

my_wpac_2022_36 = [14.9,119.7,45;16.1,116.8,45;18.4,116.7,55;20.0,116.4,55;21.0,116.0,45];
nhc_wpac_2022_36 = [15.6,119.6,55;17.4,117.1,65;18.9,117.0,60;20.1,117.1,50;21.6,117.3,40];
btk_wpac_2022_36 = [15.8,119.9,40;15.8,117.3,45;18.1,116.1,75;20.6,115.3,50;21.9,114.0,30]; # JTWC best track
myvect = [myvect;my_wpac_2022_36];
nhcvect = [nhcvect;nhc_wpac_2022_36];
btkvect = [btkvect;btk_wpac_2022_36];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Atl 075 ... 15L before 2022-10-31-03Z
# my at https://twitter.com/elioeFIN/status/1586887775382544384
# NHC at https://www.nhc.noaa.gov/archive/2022/al15/al152022.discus.002.shtml?

my_atl_2022_075 = [16.0,78.8,45;16.8,83.7,50;16.9,88.4,65;15.9,92.2,25];
nhc_atl_2022_075 = [16.3,78.4,40;17.1,83.1,55;17.1,87.4,70;16.0,91.0,30];
btk_atl_2022_075 = [15.6,78.8,40;16.7,84.1,55;17.5,88.6,65;18.1,92.7,30]; # TCR
myvect = [myvect;my_atl_2022_075];
nhcvect = [nhcvect;nhc_atl_2022_075];
btkvect = [btkvect;btk_atl_2022_075];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 076 ... 15L before 2022-10-31-09Z
# my at https://twitter.com/elioeFIN/status/1586974538574733312
# NHC at https://www.nhc.noaa.gov/archive/2022/al15/al152022.discus.003.shtml?

my_atl_2022_076 = [16.1,79.8,45;16.9,84.8,60;16.9,89.0,65;16.2,92.6,25];
nhc_atl_2022_076 = [16.4,79.7,45;17.2,84.7,60;17.2,88.6,70;16.0,92.0,30];
btk_atl_2022_076 = [15.9,79.9,40;17.0,85.5,60;17.7,89.6,45;18.3,93.6,30]; # TCR
myvect = [myvect;my_atl_2022_076];
nhcvect = [nhcvect;nhc_atl_2022_076];
btkvect = [btkvect;btk_atl_2022_076];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Wpac 37 ... NALGAE before 2022-10-31-21Z
# my at https://twitter.com/elioeFIN/status/1587158900649902082

my_wpac_2022_37 = [19.9,115.1,55;21.8,112.9,35;22.2,110.7,30];
nhc_wpac_2022_37 = [20.1,115.2,55;21.4,113.2,35;21.2,111.1,25];
btk_wpac_2022_37 = [20.6,115.3,50;21.9,114.0,30;22.9,112.1,15]; # JTWC best track (days 1-2 only)
myvect = [myvect;my_wpac_2022_37];
nhcvect = [nhcvect;nhc_wpac_2022_37];
btkvect = [btkvect;btk_wpac_2022_37];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Atl 077 ... LISA before 2022-10-31-21Z
# my at https://twitter.com/elioeFIN/status/1587162162891554817
# NHC at https://www.nhc.noaa.gov/archive/2022/al15/al152022.discus.005.shtml?

my_atl_2022_077 = [16.3,82.8,50;16.9,87.6,60;16.6,91.1,30];
nhc_atl_2022_077 = [16.2,82.8,50;17.0,87.6,65;16.9,90.9,30];
btk_atl_2022_077 = [16.5,82.5,50;17.3,87.7,75;18.0,91.7,30]; # TCR
myvect = [myvect;my_atl_2022_077];
nhcvect = [nhcvect;nhc_atl_2022_077];
btkvect = [btkvect;btk_atl_2022_077];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Atl 078 ... LISA before 2022-11-01-03Z
# my at https://twitter.com/elioeFIN/status/1587248597036421121
# NHC at https://www.nhc.noaa.gov/archive/2022/al15/al152022.discus.006.shtml?

my_atl_2022_078 = [16.4,83.8,55;16.7,88.6,60;16.0,91.7,25;16.2,94.4,25];
nhc_atl_2022_078 = [16.4,83.9,55;16.9,88.3,65;16.8,91.2,25;17.0,93.5,20];
btk_atl_2022_078 = [16.7,84.1,55;17.5,88.6,65;18.1,92.7,30;19.4,95.4,25]; # TCR
myvect = [myvect;my_atl_2022_078];
nhcvect = [nhcvect;nhc_atl_2022_078];
btkvect = [btkvect;btk_atl_2022_078];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 079 ... LISA before 2022-11-01-15Z
# my at https://twitter.com/elioeFIN/status/1587438779056406529
# NHC at https://www.nhc.noaa.gov/archive/2022/al15/al152022.discus.008.shtml?

my_atl_2022_079 = [16.9,86.2,60;17.1,89.8,35;17.6,93.1,30];
nhc_atl_2022_079 = [16.8,86.0,70;17.0,89.4,45;17.5,92.5,20];
btk_atl_2022_079 = [17.1,86.7,70;17.9,90.6,30;18.7,94.5,25]; # TCR
myvect = [myvect;my_atl_2022_079];
nhcvect = [nhcvect;nhc_atl_2022_079];
btkvect = [btkvect;btk_atl_2022_079];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Atl 080 ... LISA before 2022-11-01-21Z
# my at https://twitter.com/elioeFIN/status/1587522569866948608
# NHC at https://www.nhc.noaa.gov/archive/2022/al15/al152022.discus.009.shtml?

my_atl_2022_080 = [17.2,87.2,70;17.2,91.0,35;18.4,93.8,20];
nhc_atl_2022_080 = [17.2,87.2,80;17.3,90.4,35;18.4,93.4,30];
btk_atl_2022_080 = [17.3,87.7,75;18.0,91.7,30;19.2,95.2,25]; # TCR
myvect = [myvect;my_atl_2022_080];
nhcvect = [nhcvect;nhc_atl_2022_080];
btkvect = [btkvect;btk_atl_2022_080];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Atl 081 ... LISA before 2022-11-02-21Z
# my at https://twitter.com/elioeFIN/status/1587883357832347648
# NHC at https://www.nhc.noaa.gov/archive/2022/al15/al152022.discus.013.shtml?

my_atl_2022_081 = [17.7,91.9,35;18.9,95.4,30];
nhc_atl_2022_081 = [17.9,91.8,30;19.2,94.7,30];
btk_atl_2022_081 = [18.0,91.7,30;19.2,95.2,25]; # TCR
myvect = [myvect;my_atl_2022_081];
nhcvect = [nhcvect;nhc_atl_2022_081];
btkvect = [btkvect;btk_atl_2022_081];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Atl 082 ... NICOLE before 2022-11-07-21Z
# my at https://twitter.com/elioeFIN/status/1589698451637702656
# NHC at https://www.nhc.noaa.gov/archive/2022/al17/al172022.discus.003.shtml?

my_atl_2022_082 = [27.5,72.9,50;26.6,77.0,60;27.4,81.7,40;30.7,82.6,35;36.3,74.6,40];
nhc_atl_2022_082 = [27.6,73.2,45;26.7,77.6,60;28.0,82.3,40;31.2,82.6,40;37.5,73.8,45];
btk_atl_2022_082 = [27.6,73.3,50;26.5,77.3,60;29.0,82.8,40;35.4,83.8,25;46.0,67.3,40]; # TCR (except day 5 self-made)
myvect = [myvect;my_atl_2022_082];
nhcvect = [nhcvect;nhc_atl_2022_082];
btkvect = [btkvect;btk_atl_2022_082];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 083 ... NICOLE before 2022-11-08-03Z
# my at https://twitter.com/elioeFIN/status/1589783534352621568
# NHC at https://www.nhc.noaa.gov/archive/2022/al17/al172022.discus.004.shtml?

my_atl_2022_083 = [27.1,74.7,55;26.7,78.7,60;28.9,83.1,40;33.7,80.6,35;41.9,68.4,50];
nhc_atl_2022_083 = [27.2,74.5,45;26.8,78.8,65;28.9,82.6,40;33.1,80.2,30;41.2,70.0,45];
btk_atl_2022_083 = [27.2,74.3,60;26.7,78.4,65;30.1,84.0,35;38.7,80.0,35;47.4,60.5,45]; # TCR (but days 4+5 self-made)
myvect = [myvect;my_atl_2022_083];
nhcvect = [nhcvect;nhc_atl_2022_083];
btkvect = [btkvect;btk_atl_2022_083];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 084 ... NICOLE before 2022-11-08-21Z
# my at https://twitter.com/elioeFIN/status/1590059917775638530
# NHC at https://www.nhc.noaa.gov/archive/2022/al17/al172022.discus.007.shtml?

my_atl_2022_084 = [26.9,77.2,65;29.2,82.1,50;35.0,81.3,35;46.6,69.0,35];
nhc_atl_2022_084 = [26.7,77.2,65;28.6,82.4,55;34.7,81.9,35;45.0,71.0,40];
btk_atl_2022_084 = [26.5,77.3,60;29.0,82.8,40;35.4,83.8,25;46.0,67.3,40]; # TCR (but day 4 self-made)
myvect = [myvect;my_atl_2022_084];
nhcvect = [nhcvect;nhc_atl_2022_084];
btkvect = [btkvect;btk_atl_2022_084];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 085 ... NICOLE before 2022-11-09-03Z
# my at https://twitter.com/elioeFIN/status/1590147920372043776
# NHC at https://www.nhc.noaa.gov/archive/2022/al17/al172022.discus.008.shtml?

my_atl_2022_085 = [26.9,78.7,65;29.7,83.2,45;37.1,79.2,35;49.1,63.4,45];
nhc_atl_2022_085 = [26.9,78.8,65;29.7,83.4,40;37.3,80.0,25;47.5,64.5,20];
btk_atl_2022_085 = [26.7,78.4,65;30.1,84.0,35;38.7,80.0,35;47.4,60.5,45]; # TCR (but days 3+4 self-made)
myvect = [myvect;my_atl_2022_085];
nhcvect = [nhcvect;nhc_atl_2022_085];
btkvect = [btkvect;btk_atl_2022_085];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 086 ... NICOLE before 2022-11-09-21Z
# my at https://twitter.com/elioeFIN/status/1590421408651259904
# NHC at https://www.nhc.noaa.gov/archive/2022/al17/al172022.discus.011.shtml?

my_atl_2022_086 = [28.8,82.8,45;34.5,82.4,30];
nhc_atl_2022_086 = [28.8,82.8,45;34.6,82.2,30];
btk_atl_2022_086 = [29.0,82.8,40;35.4,83.8,25]; # TCR
myvect = [myvect;my_atl_2022_086];
nhcvect = [nhcvect;nhc_atl_2022_086];
btkvect = [btkvect;btk_atl_2022_086];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Nio 09 ... BOB 09 / 96B before 2022-12-06-21Z
# my at https://twitter.com/elioeFIN/status/1600204929116667904
# (no JTWC forecast)

# Nio 10 ... BOB 09 / 96B before 2022-12-07-03Z
# my at https://twitter.com/elioeFIN/status/1600290430184091649
# (no JTWC forecast)

# Nio 11 ... BOB 09 / 96B before 2022-12-07-21Z
# my at https://twitter.com/elioeFIN/status/1600565506586525696
# (no JTWC forecast)

# Nio 12 ... MANDOUS before 2022-12-08-03Z
# my at https://twitter.com/elioeFIN/status/1600658214970077184
# (no JTWC forecast)

# Nio 13 ... MANDOUS before 2022-12-08-15Z
# my at https://twitter.com/elioeFIN/status/1600845976733818882
# (no JTWC forecast)

# Nio 14 ... MANDOUS before 2022-12-08-21Z
# my at https://twitter.com/elioeFIN/status/1600928654929690625
# (no JTWC forecast)

# Wpac 38 ... TD / 29W before 2022-12-10-21Z
# my at https://twitter.com/elioeFIN/status/1601659450464825344

my_wpac_2022_38 = [18.4,127.4,35;19.2,129.6,30];
nhc_wpac_2022_38 = [19.3,127.7,40;20.7,130.2,35];
btk_wpac_2022_38 = [19.2,128.4,50;19.1,131.2,25]; # JTWC best track
myvect = [myvect;my_wpac_2022_38];
nhcvect = [nhcvect;nhc_wpac_2022_38];
btkvect = [btkvect;btk_wpac_2022_38];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 002 ... DARIAN before 2022-12-18-21Z
# my at https://twitter.com/elioeFIN/status/1604556653365444614

my_shem_2023_002 = [12.9,94.1,65;14.0,93.8,65;14.6,92.4,65;14.7,89.7,60;15.5,88.1,55];
nhc_shem_2023_002 = [12.9,93.6,60;13.8,93.4,60;14.2,92.1,55;14.5,89.4,55;15.7,84.3,60];
btk_shem_2023_002 = [12.9,93.4,75;14.2,92.1,130;13.5,89.1,125;12.7,85.7,95;12.3,83.3,120]; # JTWC best track
myvect = [myvect;my_shem_2023_002];
nhcvect = [nhcvect;nhc_shem_2023_002];
btkvect = [btkvect;btk_shem_2023_002];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 003 ... DARIAN before 2022-12-19-03Z
# my at https://twitter.com/elioeFIN/status/1604648071664734209
# (no JTWC forecast)

# Shem 004 ... DARIAN before 2022-12-19-15Z
# my at https://twitter.com/elioeFIN/status/1604829355028676609

my_shem_2023_004 = [13.6,93.5,80;14.2,92.1,65;14.4,89.3,70;15.0,86.7,70;15.8,85.9,55];
nhc_shem_2023_004 = [13.5,93.5,75;14.0,91.8,65;14.1,89.3,65;14.5,87.0,75;15.2,85.2,70];
btk_shem_2023_004 = [14.0,92.7,120;13.7,89.9,135;12.8,86.5,105;12.4,83.8,115;13.0,83.7,110]; # JTWC best track
myvect = [myvect;my_shem_2023_004];
nhcvect = [nhcvect;nhc_shem_2023_004];
btkvect = [btkvect;btk_shem_2023_004];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 005 ... DARIAN before 2022-12-19-21Z
# my at https://twitter.com/elioeFIN/status/1604921732242046997

my_shem_2023_005 = [14.1,93.0,70;14.1,90.7,65;14.0,87.7,75;14.8,85.3,75;15.9,84.5,70];
nhc_shem_2023_005 = [14.0,92.7,75;14.0,90.2,65;13.6,87.0,70;13.9,84.6,75;14.9,83.3,70];
btk_shem_2023_005 = [14.2,92.1,130;13.5,89.1,125;12.7,85.7,95;12.3,83.3,120;13.5,84.1,95]; # JTWC best track
myvect = [myvect;my_shem_2023_005];
nhcvect = [nhcvect;nhc_shem_2023_005];
btkvect = [btkvect;btk_shem_2023_005];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 006 ... DARIAN before 2022-12-20-03Z
# my at https://twitter.com/elioeFIN/status/1605009444240494592
# (no JTWC forecast)

# Shem 007 ... DARIAN before 2022-12-20-15Z
# my at https://twitter.com/elioeFIN/status/1605190086072606721
# (no JTWC forecast)

# Shem 008 ... DARIAN before 2022-12-20-21Z
# my at https://twitter.com/elioeFIN/status/1605281832559431698

my_shem_2023_008 = [14.0,89.0,120;13.6,85.3,105;13.7,82.1,100;14.3,80.6,85;15.7,81.0,70];
nhc_shem_2023_008 = [14.1,89.3,115;13.6,85.8,100;13.6,82.4,95;14.2,80.8,100;15.4,80.7,90];
btk_shem_2023_008 = [13.5,89.1,125;12.7,85.7,95;12.3,83.3,120;13.5,84.1,95;16.2,85.3,95]; # JTWC best track
myvect = [myvect;my_shem_2023_008];
nhcvect = [nhcvect;nhc_shem_2023_008];
btkvect = [btkvect;btk_shem_2023_008];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 009 ... DARIAN before 2022-12-21-15Z
# my at https://twitter.com/elioeFIN/status/1605551700827181057
# (no JTWC forecast)

# Shem 010 ... DARIAN before 2022-12-22-21Z
# my at https://twitter.com/elioeFIN/status/1606005619277893635

my_shem_2023_010 = [12.3,82.7,105;13.7,82.7,105;15.8,84.0,95;17.9,84.0,70;19.5,79.5,50];
nhc_shem_2023_010 = [12.7,82.9,95;13.6,82.6,90;15.4,83.3,75;16.7,83.1,65;18.6,79.6,50];
btk_shem_2023_010 = [12.3,83.3,120;13.5,84.1,95;16.2,85.3,95;17.1,84.3,100;18.8,80.6,65]; # JTWC best track
myvect = [myvect;my_shem_2023_010];
nhcvect = [nhcvect;nhc_shem_2023_010];
btkvect = [btkvect;btk_shem_2023_010];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 011 ... DARIAN before 2022-12-23-15Z
# my at https://twitter.com/elioeFIN/status/1606286168441737218

my_shem_2023_011 = [12.8,83.1,115;15.8,84.0,100;16.6,84.0,80;18.1,81.4,75;20.4,76.3,50];
nhc_shem_2023_011 = [13.0,83.2,125;15.2,84.3,90;16.5,84.1,85;18.3,80.9,60;20.7,75.9,45];
btk_shem_2023_011 = [13.0,83.7,110;15.6,85.1,90;16.9,84.9,110;18.6,82.0,70;20.5,76.7,50]; # JTWC best track
myvect = [myvect;my_shem_2023_011];
nhcvect = [nhcvect;nhc_shem_2023_011];
btkvect = [btkvect;btk_shem_2023_011];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 012 ... DARIAN before 2022-12-23-21Z
# my at https://twitter.com/elioeFIN/status/1606373679427948561
# (no JTWC forecast)

# Shem 013 ... DARIAN before 2022-12-24-15Z
# my at https://twitter.com/elioeFIN/status/1606643038889148416

my_shem_2023_013 = [15.8,84.6,85;17.2,83.8,80;18.7,81.0,60;22.0,75.6,50;24.9,70.7,40];
nhc_shem_2023_013 = [15.6,84.8,80;17.0,84.9,70;18.9,82.1,55;21.9,77.1,45;25.1,72.4,40];
btk_shem_2023_013 = [15.6,85.1,90;16.9,84.9,110;18.6,82.0,70;20.5,76.7,50;24.5,71.5,50]; # JTWC best track
myvect = [myvect;my_shem_2023_013];
nhcvect = [nhcvect;nhc_shem_2023_013];
btkvect = [btkvect;btk_shem_2023_013];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 014 ... DARIAN before 2022-12-24-21Z
# my at https://twitter.com/elioeFIN/status/1606732440927707137
# (no JTWC forecast)

# Shem 015 ... DARIAN before 2022-12-25-15Z
# my at https://twitter.com/elioeFIN/status/1606999852595961857

my_shem_2023_015 = [17.0,84.9,65;18.7,82.0,55;21.9,76.7,55;25.2,71.7,45;28.5,68.9,35];
nhc_shem_2023_015 = [17.2,84.7,75;18.7,81.9,65;21.7,76.8,55;24.7,71.9,45;28.0,69.0,40];
btk_shem_2023_015 = [16.9,84.9,110;18.6,82.0,70;20.5,76.7,50;24.5,71.5,50;28.1,69.2,50]; # JTWC best track
myvect = [myvect;my_shem_2023_015];
nhcvect = [nhcvect;nhc_shem_2023_015];
btkvect = [btkvect;btk_shem_2023_015];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 016 ... DARIAN before 2022-12-25-21Z
# my at https://twitter.com/elioeFIN/status/1607100687766245376
# (no JTWC forecast)

# Shem 017 ... DARIAN before 2022-12-26-15Z
# my at https://twitter.com/elioeFIN/status/1607361886802124802

my_shem_2023_017 = [18.2,81.7,95;21.8,75.8,65;24.7,71.4,55;28.5,68.6,50;32.1,68.1,40];
nhc_shem_2023_017 = [18.5,81.7,80;21.3,76.4,55;24.6,71.7,45;28.2,68.7,45;31.7,68.9,40];
btk_shem_2023_017 = [18.6,82.0,70;20.5,76.7,50;24.5,71.5,50;28.1,69.2,50;32.6,68.7,30]; # JTWC best track
myvect = [myvect;my_shem_2023_017];
nhcvect = [nhcvect;nhc_shem_2023_017];
btkvect = [btkvect;btk_shem_2023_017];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 018 ... 05/08S before 2023-01-17-21Z
# my at https://twitter.com/elioeFIN/status/1615427605372538880

my_shem_2023_018 = [13.7,51.6,40;14.8,50.0,40;15.6,49.3,35];
nhc_shem_2023_018 = [14.4,51.6,60;15.8,49.1,40;17.2,48.0,30];
btk_shem_2023_018 = [13.5,51.7,55;15.8,48.7,30;16.9,46.4,20]; # JTWC best track
myvect = [myvect;my_shem_2023_018];
nhcvect = [nhcvect;nhc_shem_2023_018];
btkvect = [btkvect;btk_shem_2023_018];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 019 ... 05/08S before 2023-01-18-03Z
# my at https://twitter.com/elioeFIN/status/1615517362932817921
# (no JTWC forecast)

# Shem 020 ... CHENESO before 2023-01-18-21Z
# my at https://twitter.com/elioeFIN/status/1615793162806562834

my_shem_2023_020 = [15.2,49.0,35;16.3,48.1,25];
nhc_shem_2023_020 = [14.9,48.9,40;17.0,47.9,25];
btk_shem_2023_020 = [15.8,48.7,30;16.9,46.4,20]; # JTWC best track
myvect = [myvect;my_shem_2023_020];
nhcvect = [nhcvect;nhc_shem_2023_020];
btkvect = [btkvect;btk_shem_2023_020];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 021 ... IRENE before 2023-01-18-21Z
# my at https://twitter.com/elioeFIN/status/1615796489481068544

my_shem_2023_021 = [23.8,175.2,50];
nhc_shem_2023_021 = [23.5,174.3,50];
btk_shem_2023_021 = [25.1,176.5,35]; # JTWC best track
myvect = [myvect;my_shem_2023_021];
nhcvect = [nhcvect;nhc_shem_2023_021];
btkvect = [btkvect;btk_shem_2023_021];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;3];

# Shem 022 ... CHENESO before 2023-01-23-21Z
# my at https://twitter.com/elioeFIN/status/1617599623295823873
# (no JTWC forecast)

# Shem 023 ... CHENESO before 2023-01-24-03Z
# my at https://twitter.com/elioeFIN/status/1617691893063909376

my_shem_2023_023 = [19.9,42.2,60;20.5,42.1,70;21.0,41.3,75;22.7,39.4,85;25.6,40.4,80];
nhc_shem_2023_023 = [20.2,42.3,60;20.3,41.9,70;20.9,41.1,75;22.9,39.6,80;24.6,40.4,70];
btk_shem_2023_023 = [20.2,43.0,65;19.6,43.2,75;21.1,42.2,50;24.1,41.4,75;27.7,43.8,55]; # JTWC best track
myvect = [myvect;my_shem_2023_023];
nhcvect = [nhcvect;nhc_shem_2023_023];
btkvect = [btkvect;btk_shem_2023_023];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 024 ... CHENESO before 2023-01-24-21Z
# my at https://twitter.com/elioeFIN/status/1617969874609012736
# (no JTWC forecast)

# Shem 025 ... CHENESO before 2023-01-25-21Z
# my at https://twitter.com/elioeFIN/status/1618328499953205248
# (no JTWC forecast)

# Shem 026 ... CHENESO before 2023-01-26-03Z
# my at https://twitter.com/elioeFIN/status/1618415879829749762

my_shem_2023_026 = [21.4,42.3,100;23.8,40.9,105;27.5,43.0,90;31.7,47.9,75;37.9,59.3,60];
nhc_shem_2023_026 = [21.1,42.0,90;23.5,40.9,95;27.3,43.4,75;31.1,50.0,65;36.7,60.5,55];
btk_shem_2023_026 = [21.1,42.2,50;24.1,41.4,75;27.7,43.8,55;32.7,51.5,35;40.2,62.2,45]; # JTWC best track (except day 5)
myvect = [myvect;my_shem_2023_026];
nhcvect = [nhcvect;nhc_shem_2023_026];
btkvect = [btkvect;btk_shem_2023_026];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 027 ... CHENESO before 2023-01-26-21Z
# my at https://twitter.com/elioeFIN/status/1618687277986910208
# (no JTWC forecast)

# Shem 028 ... CHENESO before 2023-01-27-21Z
# my at https://twitter.com/elioeFIN/status/1619048289680384000
# (no JTWC forecast)

# Shem 029 ... FREDDY before 2023-02-06-21Z
# my at https://twitter.com/elioeFIN/status/1622676892468842516

my_shem_2023_029 = [14.7,115.8,75;15.6,112.3,90;15.5,109.9,85;15.8,106.7,85;16.1,103.2,75];
nhc_shem_2023_029 = [14.6,115.9,85;15.3,113.0,105;15.4,110.3,85;15.7,107.2,95;16.2,103.4,85];
btk_shem_2023_029 = [14.8,115.1,90;16.0,112.1,70;15.5,108.9,65;14.7,105.6,70;14.9,101.9,120]; # JTWC best track
myvect = [myvect;my_shem_2023_029];
nhcvect = [nhcvect;nhc_shem_2023_029];
btkvect = [btkvect;btk_shem_2023_029];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 030 ... FREDDY before 2023-02-07-03Z
# my at https://twitter.com/elioeFIN/status/1622770131351871493

my_shem_2023_030 = [15.1,115.2,85;15.8,111.9,90;15.8,109.2,90;16.5,106.0,85;16.8,102.6,70];
nhc_shem_2023_030 = [15.4,115.0,95;15.8,112.0,100;15.9,109.3,95;16.2,106.1,90;16.7,102.3,80];
btk_shem_2023_030 = [15.1,114.5,90;15.5,110.7,60;15.4,108.2,65;14.7,104.9,75;15.0,101.1,110]; # JTWC best track
myvect = [myvect;my_shem_2023_030];
nhcvect = [nhcvect;nhc_shem_2023_030];
btkvect = [btkvect;btk_shem_2023_030];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 031 ... FREDDY before 2023-02-07-09Z
# my at https://twitter.com/elioeFIN/status/1622854661832048640

my_shem_2023_031 = [15.6,113.5,90;15.8,110.4,95;15.8,107.8,90;16.1,104.2,85;16.7,100.2,65];
nhc_shem_2023_031 = [15.6,114.1,110;15.9,111.2,90;15.8,108.3,100;16.3,105.0,95;16.9,101.2,80];
btk_shem_2023_031 = [15.5,113.7,90;15.4,110.3,55;15.3,107.6,65;14.7,103.9,90;15.1,100.0,100]; # JTWC best track
myvect = [myvect;my_shem_2023_031];
nhcvect = [nhcvect;nhc_shem_2023_031];
btkvect = [btkvect;btk_shem_2023_031];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 032 ... 11U / 94S before 2023-02-07-09Z
# my at https://twitter.com/elioeFIN/status/1622858015543029762
# (no JTWC forecast)

# Shem 033 ... FREDDY before 2023-02-07-21Z
# my at https://twitter.com/elioeFIN/status/1623035302829821958

my_shem_2023_033 = [15.6,112.1,105;15.8,109.0,95;15.7,105.9,100;16.2,102.3,85;16.7,98.8,65];
nhc_shem_2023_033 = [15.7,112.3,90;15.6,109.5,85;15.5,106.5,90;16.2,102.9,95;16.4,98.7,85];
btk_shem_2023_033 = [16.0,112.1,70;15.5,108.9,65;14.7,105.6,70;14.9,101.9,120;15.1,98.0,100]; # JTWC best track
myvect = [myvect;my_shem_2023_033];
nhcvect = [nhcvect;nhc_shem_2023_033];
btkvect = [btkvect;btk_shem_2023_033];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 034 ... FREDDY before 2023-02-08-03Z
# my at https://twitter.com/elioeFIN/status/1623131454078058496

my_shem_2023_034 = [15.7,111.4,90;15.9,108.5,90;15.7,105.2,90;16.3,101.1,75;16.2,97.4,60];
nhc_shem_2023_034 = [15.7,111.6,80;15.5,108.7,80;15.5,105.5,95;15.9,101.5,90;16.1,97.5,85];
btk_shem_2023_034 = [15.5,110.7,60;15.4,108.2,65;14.7,104.9,75;15.0,101.1,110;15.1,96.9,95]; # JTWC best track
myvect = [myvect;my_shem_2023_034];
nhcvect = [nhcvect;nhc_shem_2023_034];
btkvect = [btkvect;btk_shem_2023_034];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 035 ... 14U/12P before 2023-02-08-03Z
# my at https://twitter.com/elioeFIN/status/1623135373416169473

my_shem_2023_035 = [17.8,153.2,60;22.1,157.3,80;27.0,164.3,65;29.7,169.6,55;31.4,174.1,45];
nhc_shem_2023_035 = [18.0,153.4,60;22.5,157.9,75;27.2,164.4,70;29.7,169.9,60;32.9,173.4,50];
btk_shem_2023_035 = [18.0,153.0,50;22.0,157.7,85;27.8,165.6,60;30.9,171.8,45;34.0,176.1,55]; # JTWC best track (except day 5)
myvect = [myvect;my_shem_2023_035];
nhcvect = [nhcvect;nhc_shem_2023_035];
btkvect = [btkvect;btk_shem_2023_035];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 036 ... FREDDY before 2023-02-08-09Z
# my at https://twitter.com/elioeFIN/status/1623220221237395459

my_shem_2023_036 = [15.8,110.3,95;15.7,107.4,95;15.9,104.1,85;16.4,100.5,75;16.3,96.8,55];
nhc_shem_2023_036 = [15.6,110.8,85;15.5,107.8,85;15.6,104.4,90;15.9,100.7,90;16.0,96.9,85];
btk_shem_2023_036 = [15.4,110.3,55;15.3,107.6,65;14.7,103.9,90;15.1,100.0,100;15.3,95.8,90]; # JTWC best track
myvect = [myvect;my_shem_2023_036];
nhcvect = [nhcvect;nhc_shem_2023_036];
btkvect = [btkvect;btk_shem_2023_036];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 037 ... GABRIELLE before 2023-02-08-09Z
# my at https://twitter.com/elioeFIN/status/1623224864466255873
# (5-day btk is missing! not in ral ucar or colostate)

my_shem_2023_037 = [18.6,153.2,70;23.2,158.4,80;27.3,164.9,65;29.4,170.4,55];
nhc_shem_2023_037 = [19.0,153.9,70;23.7,159.1,75;27.8,165.3,70;30.5,170.3,60];
btk_shem_2023_037 = [19.1,153.9,60;23.3,159.6,90;28.6,167.0,60;31.8,173.1,55]; # JTWC best track (except day 4)
myvect = [myvect;my_shem_2023_037];
nhcvect = [nhcvect;nhc_shem_2023_037];
btkvect = [btkvect;btk_shem_2023_037];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 038 ... FREDDY before 2023-02-08-21Z
# my at https://twitter.com/elioeFIN/status/1623405184029261889

my_shem_2023_038 = [15.8,109.2,80;15.7,105.9,85;15.9,102.2,80;16.0,98.7,70;16.2,95.7,55];
nhc_shem_2023_038 = [16.2,109.3,60;15.9,106.0,70;16.2,102.5,75;16.6,98.9,75;16.8,94.9,65];
btk_shem_2023_038 = [15.5,108.9,65;14.7,105.6,70;14.9,101.9,120;15.1,98.0,100;15.4,93.5,85]; # JTWC best track
myvect = [myvect;my_shem_2023_038];
nhcvect = [nhcvect;nhc_shem_2023_038];
btkvect = [btkvect;btk_shem_2023_038];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 039 ... DINGANI before 2023-02-09-21Z
# my at https://twitter.com/elioeFIN/status/1623761150394396675

my_shem_2023_039 = [15.9,81.7,45;16.3,77.2,65;18.5,74.4,65;20.2,72.5,50;21.1,69.5,45];
nhc_shem_2023_039 = [15.8,81.7,50;16.3,77.3,55;18.1,74.3,60;19.3,72.2,55;20.8,68.9,45];
btk_shem_2023_039 = [15.9,81.8,50;15.9,77.3,50;17.8,74.4,75;20.5,73.0,70;24.5,71.4,60]; # JTWC best track
myvect = [myvect;my_shem_2023_039];
nhcvect = [nhcvect;nhc_shem_2023_039];
btkvect = [btkvect;btk_shem_2023_039];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 040 ... FREDDY before 2023-02-09-21Z
# my at https://twitter.com/elioeFIN/status/1623766772171112453
# (no JTWC forecast)

# Shem 041 ... GABRIELLE before 2023-02-10-03Z
# my at https://twitter.com/elioeFIN/status/1623855185133969410

my_shem_2023_041 = [27.0,165.3,65];
nhc_shem_2023_041 = [27.3,165.0,70];
btk_shem_2023_041 = [27.8,165.6,60]; # JTWC best track
myvect = [myvect;my_shem_2023_041];
nhcvect = [nhcvect;nhc_shem_2023_041];
btkvect = [btkvect;btk_shem_2023_041];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;3];

# Shem 042 ... DINGANI before 2023-02-10-21Z
# my at https://twitter.com/elioeFIN/status/1624126921675091970

my_shem_2023_042 = [16.2,77.2,65;18.2,74.3,75;20.6,72.7,60;22.7,70.3,45;25.0,66.9,30];
nhc_shem_2023_042 = [16.5,77.1,55;18.2,74.2,70;19.7,72.7,60;20.8,70.3,50;22.3,67.0,45];
btk_shem_2023_042 = [15.9,77.3,50;17.8,74.4,75;20.5,73.0,70;24.5,71.4,60;28.7,68.3,40]; # JTWC best track
myvect = [myvect;my_shem_2023_042];
nhcvect = [nhcvect;nhc_shem_2023_042];
btkvect = [btkvect;btk_shem_2023_042];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 043 ... FREDDY before 2023-02-10-21Z
# my at https://twitter.com/elioeFIN/status/1624130464779739136
# (no JTWC forecast)

# Shem 044 ... FREDDY before 2023-02-11-15Z
# my at https://twitter.com/elioeFIN/status/1624398554209959939

my_shem_2023_044 = [15.0,99.2,100;15.6,94.9,70;15.6,90.5,65;16.0,86.2,65;16.0,81.8,55];
nhc_shem_2023_044 = [15.3,99.2,105;15.6,95.1,85;15.8,90.6,75;16.0,86.2,75;16.3,81.4,90];
btk_shem_2023_044 = [15.1,99.0,100;15.4,94.9,90;15.3,90.0,110;14.9,85.0,130;14.9,79.5,115]; # JTWC best track
myvect = [myvect;my_shem_2023_044];
nhcvect = [nhcvect;nhc_shem_2023_044];
btkvect = [btkvect;btk_shem_2023_044];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 045 ... FREDDY before 2023-02-12-03Z
# my at https://twitter.com/elioeFIN/status/1624575177597022208

my_shem_2023_045 = [15.2,97.0,95;15.4,92.5,70;15.8,88.1,65;16.1,83.6,65;16.3,78.8,65];
nhc_shem_2023_045 = [15.5,97.1,100;15.7,92.5,75;15.8,87.6,80;16.1,83.1,90;16.7,78.6,90];
btk_shem_2023_045 = [15.1,96.9,95;15.4,92.4,80;15.1,87.6,125;14.8,82.3,130;15.4,76.5,125]; # JTWC best track
myvect = [myvect;my_shem_2023_045];
nhcvect = [nhcvect;nhc_shem_2023_045];
btkvect = [btkvect;btk_shem_2023_045];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 046 ... FREDDY before 2023-02-12-21Z
# my at https://twitter.com/elioeFIN/status/1624850230112911360
# (no JTWC forecast)

# Shem 047 ... DINGANI before 2023-02-13-21Z
# my at https://twitter.com/elioeFIN/status/1625215197873840139

my_shem_2023_047 = [23.9,70.7,50;28.2,66.8,45;30.0,67.0,35];
nhc_shem_2023_047 = [24.2,71.5,55;28.4,67.8,40;30.3,67.2,35];
btk_shem_2023_047 = [24.5,71.4,60;28.7,68.3,40;32.7,68.8,25]; # JTWC best track
myvect = [myvect;my_shem_2023_047];
nhcvect = [nhcvect;nhc_shem_2023_047];
btkvect = [btkvect;btk_shem_2023_047];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 048 ... FREDDY before 2023-02-13-21Z
# my at https://twitter.com/elioeFIN/status/1625217891351011343
# (no JTWC forecast)

# Shem 049 ... FREDDY before 2023-02-14-03Z
# my at https://twitter.com/elioeFIN/status/1625300579508490242

my_shem_2023_049 = [15.2,87.7,85;14.8,82.8,95;14.8,78.3,95;14.4,73.5,95;15.0,70.4,95];
nhc_shem_2023_049 = [15.2,87.9,80;14.7,83.0,90;14.9,78.3,110;15.2,74.1,105;15.2,70.0,100];
btk_shem_2023_049 = [15.1,87.6,125;14.8,82.3,130;15.4,76.5,125;16.0,71.4,115;16.6,67.0,140]; # JTWC best track
myvect = [myvect;my_shem_2023_049];
nhcvect = [nhcvect;nhc_shem_2023_049];
btkvect = [btkvect;btk_shem_2023_049];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 050 ... FREDDY before 2023-02-14-21Z
# my at https://twitter.com/elioeFIN/status/1625572292951433219
# (no JTWC forecast)

# Shem 051 ... FREDDY before 2023-02-15-21Z
# my at https://twitter.com/elioeFIN/status/1625936681856630784
# (no JTWC forecast)

# Shem 052 ... FREDDY before 2023-02-16-03Z
# my at https://twitter.com/elioeFIN/status/1626029945217511425

my_shem_2023_052 = [14.8,77.0,110;15.4,72.2,110;16.7,68.2,110;17.0,63.2,105;18.0,55.9,110];
nhc_shem_2023_052 = [15.2,77.2,130;15.9,72.8,120;16.2,68.8,120;17.4,63.4,115;18.8,55.9,115];
btk_shem_2023_052 = [15.4,76.6,125;16.0,71.4,115;16.6,67.0,140;18.1,60.6,130;19.8,52.7,100]; # JTWC best track
myvect = [myvect;my_shem_2023_052];
nhcvect = [nhcvect;nhc_shem_2023_052];
btkvect = [btkvect;btk_shem_2023_052];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 053 ... FREDDY before 2023-02-16-15Z
# my at https://twitter.com/elioeFIN/status/1626220319718375424

my_shem_2023_053 = [15.3,73.9,125;15.5,69.9,120;16.4,65.3,115;17.9,58.9,115;19.2,51.7,110];
nhc_shem_2023_053 = [15.7,74.2,120;16.1,69.6,120;16.8,64.9,115;18.2,58.7,110;19.7,51.1,100];
btk_shem_2023_053 = [15.8,74.0,125;16.2,69.2,115;17.3,64.0,130;18.9,56.7,115;20.8,49.4,95]; # JTWC best track
myvect = [myvect;my_shem_2023_053];
nhcvect = [nhcvect;nhc_shem_2023_053];
btkvect = [btkvect;btk_shem_2023_053];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 054 ... FREDDY before 2023-02-16-21Z
# my at https://twitter.com/elioeFIN/status/1626301053095247873
# (no JTWC forecast)

# Shem 055 ... FREDDY before 2023-02-17-15Z
# my at https://twitter.com/elioeFIN/status/1626570509742661632

my_shem_2023_055 = [16.0,69.3,120;16.6,63.9,120;18.3,57.8,120;20.0,50.2,115;21.3,43.6,30];
nhc_shem_2023_055 = [16.3,69.2,110;17.1,64.3,120;18.5,57.8,115;20.0,50.9,95;21.3,44.0,55];
btk_shem_2023_055 = [16.2,69.2,115;17.3,64.0,130;18.9,56.7,115;20.8,49.4,95;22.0,43.6,25]; # JTWC best track
myvect = [myvect;my_shem_2023_055];
nhcvect = [nhcvect;nhc_shem_2023_055];
btkvect = [btkvect;btk_shem_2023_055];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 056 ... FREDDY before 2023-02-18-21Z
# my at https://twitter.com/elioeFIN/status/1627027469956968449
# (no JTWC forecast)

# Shem 057 ... FREDDY before 2023-02-19-03Z
# my at https://twitter.com/elioeFIN/status/1627117553049821189

my_shem_2023_057 = [18.0,60.9,145;19.4,53.6,120;20.9,47.2,100;21.0,41.1,50;20.2,35.8,65];
nhc_shem_2023_057 = [18.0,61.3,135;19.6,54.0,115;21.0,47.4,90;21.6,42.0,45;21.2,37.5,60];
btk_shem_2023_057 = [18.1,60.6,130;19.8,52.7,100;21.0,46.5,60;22.1,41.4,45;22.5,37.6,60]; # JTWC best track
myvect = [myvect;my_shem_2023_057];
nhcvect = [nhcvect;nhc_shem_2023_057];
btkvect = [btkvect;btk_shem_2023_057];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 058 ... FREDDY before 2023-02-19-09Z
# my at https://twitter.com/elioeFIN/status/1627208093892313088
# (no JTWC forecast)

# Shem 059 ... FREDDY before 2023-02-19-21Z
# my at https://twitter.com/elioeFIN/status/1627394671813992451
# (no JTWC forecast)

# Shem 060 ... FREDDY before 2023-02-20-03Z
# my at https://twitter.com/elioeFIN/status/1627472549469646849

my_shem_2023_060 = [19.6,53.4,115;21.1,46.9,60;22.0,40.9,45;20.9,35.8,55;21.5,32.2,25];
nhc_shem_2023_060 = [19.9,53.8,110;21.6,47.2,90;21.7,41.5,45;20.6,36.1,65;20.4,31.2,40];
btk_shem_2023_060 = [19.8,52.7,100;21.0,46.5,60;22.1,41.4,45;22.5,37.6,60;22.7,34.0,40]; # JTWC best track
myvect = [myvect;my_shem_2023_060];
nhcvect = [nhcvect;nhc_shem_2023_060];
btkvect = [btkvect;btk_shem_2023_060];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 061 ... FREDDY before 2023-02-20-15Z
# my at https://twitter.com/elioeFIN/status/1627662996653604865

my_shem_2023_061 = [20.9,49.8,115;22.0,43.6,30;21.8,38.3,55;20.9,33.5,45;21.7,30.2,25];
nhc_shem_2023_061 = [21.0,49.5,105;22.5,43.7,50;22.2,38.9,65;22.0,33.8,40;22.1,29.8,25];
btk_shem_2023_061 = [20.8,49.4,95;22.0,43.6,25;22.5,39.6,55;22.5,35.5,50;22.8,33.1,25]; # JTWC best track
myvect = [myvect;my_shem_2023_061];
nhcvect = [nhcvect;nhc_shem_2023_061];
btkvect = [btkvect;btk_shem_2023_061];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 062 ... FREDDY before 2023-02-20-21Z
# my at https://twitter.com/elioeFIN/status/1627747644721270798
# (no JTWC forecast)

# Shem 063 ... FREDDY before 2023-02-21-03Z
# my at https://twitter.com/elioeFIN/status/1627837332509409280

my_shem_2023_063 = [21.4,46.2,55;21.4,40.1,50;21.0,35.0,65;21.1,30.9,20;22.4,29.5,20];
nhc_shem_2023_063 = [21.7,46.5,70;22.6,41.0,50;22.5,36.6,65;22.8,33.2,40;23.1,30.6,25];
btk_shem_2023_063 = [21.0,46.5,60;22.1,41.4,45;22.5,37.6,60;22.7,34.0,40;22.2,33.3,20]; # JTWC best track
myvect = [myvect;my_shem_2023_063];
nhcvect = [nhcvect;nhc_shem_2023_063];
btkvect = [btkvect;btk_shem_2023_063];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 064 ... FREDDY before 2023-02-21-15Z
# my at https://twitter.com/elioeFIN/status/1628024650838990851

my_shem_2023_064 = [21.8,43.0,25;21.7,37.9,55;21.7,33.7,50;22.3,30.6,25];
nhc_shem_2023_064 = [22.0,43.6,40;22.3,38.8,60;22.2,34.3,50;23.1,31.9,30];
btk_shem_2023_064 = [22.0,43.6,25;22.5,39.4,55;22.5,35.5,50;22.8,33.1,25]; # JTWC best track
myvect = [myvect;my_shem_2023_064];
nhcvect = [nhcvect;nhc_shem_2023_064];
btkvect = [btkvect;btk_shem_2023_064];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 065 ... ENALA before 2023-02-22-21Z
# my at https://twitter.com/elioeFIN/status/1628478560745783296

my_shem_2023_065 = [19.6,71.1,50;23.7,69.9,45;26.0,67.8,40;28.2,66.0,25;28.8,64.7,20];
nhc_shem_2023_065 = [19.3,70.9,55;22.2,69.0,50;24.5,66.7,45;26.0,64.3,45;26.9,62.9,45];
btk_shem_2023_065 = [19.8,71.0,75;23.4,69.5,65;27.1,67.9,45;28.8,66.8,45;28.4,67.9,35]; # JTWC best track
myvect = [myvect;my_shem_2023_065];
nhcvect = [nhcvect;nhc_shem_2023_065];
btkvect = [btkvect;btk_shem_2023_065];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 066 ... FREDDY before 2023-02-22-21Z
# my at https://twitter.com/elioeFIN/status/1628483669747806208
# (no JTWC forecast)

# Shem 067 ... FREDDY before 2023-02-23-03Z
# my at https://twitter.com/elioeFIN/status/1628564775448768513

my_shem_2023_067 = [21.9,36.6,65;21.8,32.8,25];
nhc_shem_2023_067 = [21.7,36.5,55;22.0,32.6,30];
btk_shem_2023_067 = [22.5,37.6,60;22.7,34.0,40]; # JTWC best track
myvect = [myvect;my_shem_2023_067];
nhcvect = [nhcvect;nhc_shem_2023_067];
btkvect = [btkvect;btk_shem_2023_067];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 068 ... JUDY before 2023-02-27-21Z
# my at https://twitter.com/elioeFIN/status/1630287392040013826

my_shem_2023_068 = [17.0,168.0,70;20.8,169.8,75;24.1,173.5,65;27.1,179.9,50];
nhc_shem_2023_068 = [17.4,168.3,80;21.6,170.8,80;25.3,175.1,65;29.2,181.5,50];
btk_shem_2023_068 = [17.0,168.2,85;21.2,171.4,90;24.8,175.7,80;27.2,185.5,60]; # JTWC best track
myvect = [myvect;my_shem_2023_068];
nhcvect = [nhcvect;nhc_shem_2023_068];
btkvect = [btkvect;btk_shem_2023_068];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 069 ... JUDY before 2023-02-28-03Z
# my at https://twitter.com/elioeFIN/status/1630376416423428096

my_shem_2023_069 = [18.2,168.3,75;21.9,170.9,70;25.4,174.5,60;29.1,180.5,40];
nhc_shem_2023_069 = [17.9,168.0,80;22.1,171.4,80;25.7,175.7,65;29.5,182.5,50];
btk_shem_2023_069 = [18.2,168.6,100;22.4,172.4,85;25.6,177.4,70;27.7,187.4,55]; # JTWC best track
myvect = [myvect;my_shem_2023_069];
nhcvect = [nhcvect;nhc_shem_2023_069];
btkvect = [btkvect;btk_shem_2023_069];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 070 ... KEVIN before 2023-03-02-21Z
# my at https://twitter.com/elioeFIN/status/1631373526870401050

my_shem_2023_070 = [18.5,169.5,90;22.9,176.0,90;27.1,186.4,65;30.3,198.7,40];
nhc_shem_2023_070 = [19.4,169.4,90;23.8,175.9,85;27.9,185.6,60;31.4,194.7,40];
btk_shem_2023_070 = [19.7,170.0,115;24.6,177.3,105;29.0,188.1,65;33.0,196.4,35]; # JTWC best track
myvect = [myvect;my_shem_2023_070];
nhcvect = [nhcvect;nhc_shem_2023_070];
btkvect = [btkvect;btk_shem_2023_070];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 071 ... KEVIN before 2023-03-03-03Z
# my at https://twitter.com/elioeFIN/status/1631458312611930112

my_shem_2023_071 = [20.4,171.0,95;24.3,178.2,85;28.0,188.6,55];
nhc_shem_2023_071 = [20.2,170.7,100;24.8,178.2,85;28.9,187.7,60];
btk_shem_2023_071 = [20.8,171.4,135;25.8,180.2,90;29.6,190.1,50]; # JTWC best track
myvect = [myvect;my_shem_2023_071];
nhcvect = [nhcvect;nhc_shem_2023_071];
btkvect = [btkvect;btk_shem_2023_071];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 072 ... FREDDY before 2023-03-03-21Z
# my at https://twitter.com/elioeFIN/status/1631735399990059008
# (no JTWC forecast)

# Shem 073 ... FREDDY before 2023-03-04-21Z
# my at https://twitter.com/elioeFIN/status/1632099464289697795
# (no JTWC forecast)

# Shem 074 ... FREDDY before 2023-03-05-21Z
# my at https://twitter.com/elioeFIN/status/1632462269585014784
# (no JTWC forecast)

# Shem 075 ... FREDDY before 2023-03-06-03Z
# my at https://twitter.com/elioeFIN/status/1632550912253214721

my_shem_2023_075 = [23.4,42.5,55;21.9,41.6,75;20.7,40.3,75;20.0,39.2,90;19.0,38.3,75];
nhc_shem_2023_075 = [23.7,42.5,50;22.0,41.4,65;20.5,40.2,70;19.3,39.4,70;18.3,38.8,80];
btk_shem_2023_075 = [23.8,42.6,65;22.2,41.0,95;20.5,39.6,60;19.0,38.5,70;18.0,37.6,75]; # JTWC best track
myvect = [myvect;my_shem_2023_075];
nhcvect = [nhcvect;nhc_shem_2023_075];
btkvect = [btkvect;btk_shem_2023_075];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 076 ... FREDDY before 2023-03-06-21Z
# my at https://twitter.com/elioeFIN/status/1632824127181529088
# (no JTWC forecast)

# Shem 077 ... FREDDY before 2023-03-07-21Z
# my at https://twitter.com/elioeFIN/status/1633182771446272001
# (no JTWC forecast)

# Shem 078 ... FREDDY before 2023-03-08-03Z
# my at https://twitter.com/elioeFIN/status/1633275607042736129

my_shem_2023_078 = [20.7,39.3,90;19.0,37.4,75;17.8,36.6,75;17.9,34.6,40;17.7,32.7,20];
nhc_shem_2023_078 = [20.7,39.4,95;19.4,37.9,85;18.0,36.5,75;17.0,35.0,50;16.4,33.3,30];
btk_shem_2023_078 = [20.5,39.6,60;19.0,38.5,70;18.0,37.6,75;17.5,36.9,75;16.9,35.1,30]; # JTWC best track
myvect = [myvect;my_shem_2023_078];
nhcvect = [nhcvect;nhc_shem_2023_078];
btkvect = [btkvect;btk_shem_2023_078];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 079 ... FREDDY before 2023-03-08-21Z
# my at https://twitter.com/elioeFIN/status/1633551421512482817
# (no JTWC forecast)

# Shem 080 ... FREDDY before 2023-03-09-21Z
# my at https://twitter.com/elioeFIN/status/1633908893372825623
# (no JTWC forecast)

# Shem 081 ... FREDDY before 2023-03-10-03Z
# my at https://twitter.com/elioeFIN/status/1634001560060428290

my_shem_2023_081 = [18.0,37.6,85;18.0,36.5,40;17.4,35.7,35;18.1,35.2,30];
nhc_shem_2023_081 = [18.2,37.8,80;17.7,37.1,90;17.4,36.5,55;17.2,36.0,35];
btk_shem_2023_081 = [18.0,37.6,75;17.5,36.9,75;16.9,35.1,30;16.2,34.4,20]; # JTWC best track (except day 4)
myvect = [myvect;my_shem_2023_081];
nhcvect = [nhcvect;nhc_shem_2023_081];
btkvect = [btkvect;btk_shem_2023_081];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 082 ... HERMAN before 2023-03-29-15Z
# my at https://twitter.com/elioeFIN/status/1641067320972914689

my_shem_2023_082 = [15.5,105.3,50;16.7,106.8,35;17.4,106.5,30;17.5,104.4,25;16.0,101.2,25];
nhc_shem_2023_082 = [15.2,105.3,50;16.3,106.8,30;16.9,106.2,25;17.0,104.0,25;16.5,101.3,25];
btk_shem_2023_082 = [15.8,105.3,90;17.8,106.7,130;19.4,107.2,80;19.8,105.3,30;19.5,103.8,20]; # JTWC best track
myvect = [myvect;my_shem_2023_082];
nhcvect = [nhcvect;nhc_shem_2023_082];
btkvect = [btkvect;btk_shem_2023_082];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 083 ... HERMAN before 2023-03-29-21Z
# my at https://twitter.com/elioeFIN/status/1641156914473062405

my_shem_2023_083 = [15.8,105.9,50;17.0,107.1,35;17.7,105.7,30;17.9,103.2,25;16.8,100.0,25];
nhc_shem_2023_083 = [15.7,105.8,50;16.7,106.7,30;17.1,105.6,25;17.1,103.2,25;16.5,100.4,25];
btk_shem_2023_083 = [16.3,105.8,110;18.2,106.9,120;19.6,106.7,60;19.9,104.8,25;19.3,103.4,25]; # JTWC best track
myvect = [myvect;my_shem_2023_083];
nhcvect = [nhcvect;nhc_shem_2023_083];
btkvect = [btkvect;btk_shem_2023_083];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 084 ... HERMAN before 2023-03-30-03Z
# my at https://twitter.com/elioeFIN/status/1641244460993445888
# (no JTWC forecast)

# Shem 085 ... HERMAN before 2023-03-30-15Z
# my at https://twitter.com/elioeFIN/status/1641435044685443072
# (no JTWC forecast)

# Shem 086 ... HERMAN before 2023-03-30-21Z
# my at https://twitter.com/elioeFIN/status/1641523681259036681
# (no JTWC forecast)

# Shem 087 ... HERMAN before 2023-03-31-03Z
# my at https://twitter.com/elioeFIN/status/1641617052019609600
# (no JTWC forecast)

# Shem 088 ... HERMAN before 2023-03-31-15Z
# my at https://twitter.com/elioeFIN/status/1641801319349379072
# (no JTWC forecast)

# Shem 089 ... HERMAN before 2023-04-01-21Z
# my at https://twitter.com/elioeFIN/status/1642241778274168832

my_shem_2023_089 = [20.0,105.6,45;19.5,104.3,35;18.2,101.7,35];
nhc_shem_2023_089 = [20.1,105.8,35;19.5,104.3,35;19.2,102.7,25];
btk_shem_2023_089 = [19.9,104.8,25;19.3,103.4,25;18.5,100.3,25]; # JTWC best track (day 1 only)
myvect = [myvect;my_shem_2023_089];
nhcvect = [nhcvect;nhc_shem_2023_089];
btkvect = [btkvect;btk_shem_2023_089];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 090 ... HERMAN before 2023-04-02-03Z
# my at https://twitter.com/elioeFIN/status/1642340067380273155

my_shem_2023_090 = [20.2,105.5,35;20.1,103.9,30];
nhc_shem_2023_090 = [20.1,105.7,35;19.7,104.0,30];
btk_shem_2023_090 = [20.0,104.4,20;19.5,102.6,25]; # JTWC best track (day 1 only)
myvect = [myvect;my_shem_2023_090];
nhcvect = [nhcvect;nhc_shem_2023_090];
btkvect = [btkvect;btk_shem_2023_090];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 091 ... 23U / 98S before 2023-04-08-21Z
# my at https://twitter.com/elioeFIN/status/1644790414677876743

my_shem_2023_091 = [12.3,125.9,45;14.0,122.4,65;16.0,119.5,90;18.5,117.9,95;22.1,120.8,65];
nhc_shem_2023_091 = [12.7,125.3,45;14.4,122.4,65;16.1,119.9,115;18.3,118.9,140;21.8,121.3,70];
btk_shem_2023_091 = [12.5,124.8,45;13.5,122.3,40;15.4,120.2,70;17.1,119.1,100;20.5,119.9,100]; # JTWC best track
myvect = [myvect;my_shem_2023_091];
nhcvect = [nhcvect;nhc_shem_2023_091];
btkvect = [btkvect;btk_shem_2023_091];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 092 ... 23U / 18S before 2023-04-09-03Z
# my at https://twitter.com/elioeFIN/status/1644874025749848064

my_shem_2023_092 = [12.7,124.4,55;14.7,121.6,80;16.5,119.8,115;19.4,118.8,130;23.0,122.8,40];
nhc_shem_2023_092 = [13.4,123.8,60;15.2,121.1,80;17.0,119.3,115;19.7,119.1,130;24.0,123.5,45];
btk_shem_2023_092 = [12.5,124.2,40;13.9,121.3,45;15.6,119.9,70;17.8,118.9,110;21.4,121.3,75]; # JTWC best track
myvect = [myvect;my_shem_2023_092];
nhcvect = [nhcvect;nhc_shem_2023_092];
btkvect = [btkvect;btk_shem_2023_092];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 093 ... 23U / 18S before 2023-04-09-15Z
# my at https://twitter.com/elioeFIN/status/1645057734272745472

my_shem_2023_093 = [13.7,122.3,80;15.4,120.1,105;17.1,118.7,125;20.7,120.1,85;26.2,128.3,30];
nhc_shem_2023_093 = [14.5,122.0,65;16.3,119.9,105;18.6,119.2,130;22.0,121.7,90;25.6,127.6,40];
btk_shem_2023_093 = [13.1,123.2,40;15.1,120.5,70;16.0,119.7,85;19.6,119.1,135;22.2,125.4,45]; # JTWC best track
myvect = [myvect;my_shem_2023_093];
nhcvect = [nhcvect;nhc_shem_2023_093];
btkvect = [btkvect;btk_shem_2023_093];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 094 ... 23U / 18S before 2023-04-09-21Z
# my at https://twitter.com/elioeFIN/status/1645151499863879681

my_shem_2023_094 = [14.1,121.5,60;15.6,119.7,105;17.7,118.5,125;21.3,121.1,75;26.4,131.1,35];
nhc_shem_2023_094 = [14.7,121.2,70;16.1,119.7,105;18.4,119.0,130;22.3,122.0,90;28.0,131.6,40];
btk_shem_2023_094 = [13.5,122.3,40;15.4,120.2,70;17.1,119.1,100;20.5,119.9,100;22.7,128.3,35]; # JTWC best track
myvect = [myvect;my_shem_2023_094];
nhcvect = [nhcvect;nhc_shem_2023_094];
btkvect = [btkvect;btk_shem_2023_094];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 095 ... 23U / 18S before 2023-04-10-21Z
# my at https://twitter.com/elioeFIN/status/1645511866456702981

my_shem_2023_095 = [15.3,120.7,80;17.6,119.7,125;20.7,122.1,80;25.0,132.7,30];
nhc_shem_2023_095 = [15.3,120.3,75;17.5,119.2,120;20.3,121.5,105;24.2,130.4,30];
btk_shem_2023_095 = [15.4,120.2,70;17.1,119.1,100;20.5,119.9,100;22.7,128.3,35]; # JTWC best track
myvect = [myvect;my_shem_2023_095];
nhcvect = [nhcvect;nhc_shem_2023_095];
btkvect = [btkvect;btk_shem_2023_095];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Wpac 001 ... TD / 90W before 2023-04-11-21Z
# my at https://twitter.com/elioeFIN/status/1645870835767611402
# (no JTWC forecast)

# Shem 096 ... ILSA before 2023-04-11-21Z
# my at https://twitter.com/elioeFIN/status/1645875171000037378

my_shem_2023_096 = [17.1,119.1,105;19.7,120.4,95;22.2,127.9,35];
nhc_shem_2023_096 = [17.5,119.2,115;20.1,121.0,115;23.2,129.8,40];
btk_shem_2023_096 = [17.1,119.1,100;20.5,119.9,100;22.7,128.3,35]; # JTWC best track
myvect = [myvect;my_shem_2023_096];
nhcvect = [nhcvect;nhc_shem_2023_096];
btkvect = [btkvect;btk_shem_2023_096];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 097 ... ILSA before 2023-04-12-03Z
# my at https://twitter.com/elioeFIN/status/1645960041328001026

my_shem_2023_097 = [17.4,118.8,110;20.3,121.7,85;22.6,131.4,35];
nhc_shem_2023_097 = [17.6,119.0,115;20.2,122.1,110;22.8,131.4,30];
btk_shem_2023_097 = [17.8,118.9,110;21.4,121.3,75;23.0,130.5,30]; # JTWC best track
myvect = [myvect;my_shem_2023_097];
nhcvect = [nhcvect;nhc_shem_2023_097];
btkvect = [btkvect;btk_shem_2023_097];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Wpac 002 ... TD / 90W before 2023-04-12-03Z
# my at https://twitter.com/elioeFIN/status/1645964854275059714
# (no JTWC forecast) 

# Shem 098 ... ILSA before 2023-04-12-15Z
# my at https://twitter.com/elioeFIN/status/1646142090592632835

my_shem_2023_098 = [19.0,119.4,115;21.8,125.2,45];
nhc_shem_2023_098 = [19.0,119.6,130;21.7,125.3,45];
btk_shem_2023_098 = [19.6,119.1,135;22.2,125.4,45]; # JTWC best track
myvect = [myvect;my_shem_2023_098];
nhcvect = [nhcvect;nhc_shem_2023_098];
btkvect = [btkvect;btk_shem_2023_098];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Wpac 003 ... TD / 01W before 2023-04-19-15Z
# my at https://twitter.com/elioeFIN/status/1648680488322703361

my_wpac_2023_003 = [9.4,156.4,35;10.7,153.5,40;11.4,150.1,30];
nhc_wpac_2023_003 = [7.6,156.5,35;9.1,154.5,30;9.9,152.9,20];
btk_wpac_2023_003 = [9.3,156.6,40;10.2,155.7,40;10.3,153.0,15]; # JTWC best track
myvect = [myvect;my_wpac_2023_003];
nhcvect = [nhcvect;nhc_wpac_2023_003];
btkvect = [btkvect;btk_wpac_2023_003];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Wpac 004 ... TD / 01W before 2023-04-19-21Z
# my at https://twitter.com/elioeFIN/status/1648770542902599681

my_wpac_2023_004 = [8.9,155.7,35;10.5,154.4,30;11.3,152.1,20;11.9,149.2,15];
nhc_wpac_2023_004 = [8.3,156.2,40;9.7,154.2,30;10.4,152.1,25;10.9,150.2,20];
btk_wpac_2023_004 = [9.7,156.4,45;10.2,154.8,30;10.7,152.7,15;10.5,152.2,20]; # JTWC best track
myvect = [myvect;my_wpac_2023_004];
nhcvect = [nhcvect;nhc_wpac_2023_004];
btkvect = [btkvect;btk_wpac_2023_004];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Wpac 005 ... SANVU before 2023-04-20-15Z
# my at https://twitter.com/elioeFIN/status/1649038080181977088

my_wpac_2023_005 = [11.0,154.9,35;12.4,152.9,25;13.1,150.6,25;13.0,147.7,15];
nhc_wpac_2023_005 = [11.0,154.5,35;11.9,152.4,30;12.5,150.0,30;12.9,148.1,20];
btk_wpac_2023_005 = [10.2,155.7,40;10.3,153.0,15;10.5,152.3,15;10.9,150.4,15]; # JTWC best track
myvect = [myvect;my_wpac_2023_005];
nhcvect = [nhcvect;nhc_wpac_2023_005];
btkvect = [btkvect;btk_wpac_2023_005];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Wpac 006 ... SANVU before 2023-04-20-21Z
# my at https://twitter.com/elioeFIN/status/1649132582783668224

my_wpac_2023_006 = [10.9,154.6,40;12.2,153.0,30;12.5,150.7,25;12.7,147.8,20];
nhc_wpac_2023_006 = [10.9,154.3,35;11.9,152.2,30;12.5,149.8,25;13.1,147.7,20];
btk_wpac_2023_006 = [10.2,154.8,30;10.7,152.7,15;10.5,152.2,20;11.0,149.6,15]; # JTWC best track
myvect = [myvect;my_wpac_2023_006];
nhcvect = [nhcvect;nhc_wpac_2023_006];
btkvect = [btkvect;btk_wpac_2023_006];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Wpac 007 ... SANVU before 2023-04-21-15Z
# my at https://twitter.com/elioeFIN/status/1649404917969305602

my_wpac_2023_007 = [11.1,154.2,40;11.8,152.0,30;12.1,148.9,20;14.4,145.7,20];
nhc_wpac_2023_007 = [11.2,154.4,35;11.8,152.4,30;12.4,149.9,25;13.1,146.9,20];
btk_wpac_2023_007 = [10.3,153.0,15;10.5,152.3,15;10.9,150.4,15;10.4,148.3,15]; # JTWC best track
myvect = [myvect;my_wpac_2023_007];
nhcvect = [nhcvect;nhc_wpac_2023_007];
btkvect = [btkvect;btk_wpac_2023_007];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Wpac 008 ... SANVU before 2023-04-21-21Z
# my at https://twitter.com/elioeFIN/status/1649495607629819905

my_wpac_2023_008 = [11.2,153.7,30;11.5,151.8,25;12.3,148.5,20;12.9,143.0,15];
nhc_wpac_2023_008 = [11.1,153.5,35;11.7,151.3,30;12.3,148.7,25;12.7,145.2,20];
btk_wpac_2023_008 = [10.7,152.7,15;10.5,152.2,20;11.0,149.6,15;10.2,147.8,15]; # JTWC best track
myvect = [myvect;my_wpac_2023_008];
nhcvect = [nhcvect;nhc_wpac_2023_008];
btkvect = [btkvect;btk_wpac_2023_008];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Nio 01 ... BOB 02 / 91B before 2023-05-09-21Z
# my at https://twitter.com/elioeFIN/status/1656009538011635718
# (no JTWC forecast)

# Nio 02 ... BOB 02 / 91B before 2023-05-10-03Z
# my at https://twitter.com/elioeFIN/status/1656103740917575685
# (no JTWC forecast)

# Nio 03 ... BOB 02 / 91B before 2023-05-10-15Z
# my at https://twitter.com/elioeFIN/status/1656290612277018625
# (no JTWC forecast)

# Nio 04 ... BOB 02 / 91B before 2023-05-10-21Z
# my at https://twitter.com/elioeFIN/status/1656374876888879108
# (no JTWC forecast)

# Nio 05 ... BOB 02 / 91B before 2023-05-11-03Z
# my at https://twitter.com/elioeFIN/status/1656464752380354560

my_nio_2023_05 = [13.0,88.2,60;15.6,89.4,80;19.1,92.5,75;24.6,97.6,20];
nhc_nio_2023_05 = [13.6,88.1,65;15.7,89.3,85;19.0,91.8,90;23.7,95.1,35];
btk_nio_2023_05 = [13.4,88.2,65;15.3,89.2,110;18.7,91.9,145;26.2,97.8,20]; # JTWC best track
myvect = [myvect;my_nio_2023_05];
nhcvect = [nhcvect;nhc_nio_2023_05];
btkvect = [btkvect;btk_nio_2023_05];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Nio 06 ... MOCHA before 2023-05-11-21Z
# my at https://twitter.com/elioeFIN/status/1656744376075255809

my_nio_2023_06 = [15.1,89.1,85;18.3,91.4,95;22.3,94.3,60];
nhc_nio_2023_06 = [14.7,88.7,85;17.3,90.7,110;21.6,93.1,80];
btk_nio_2023_06 = [14.9,88.9,105;17.9,91.3,140;23.8,95.8,45]; # JTWC best track
myvect = [myvect;my_nio_2023_06];
nhcvect = [nhcvect;nhc_nio_2023_06];
btkvect = [btkvect;btk_nio_2023_06];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Nio 07 ... MOCHA before 2023-05-12-03Z
# my at https://twitter.com/elioeFIN/status/1656834921309118464

my_nio_2023_07 = [15.7,89.0,85;18.8,91.3,105;24.3,94.6,45];
nhc_nio_2023_07 = [15.3,89.3,90;18.6,91.5,120;23.7,94.4,60];
btk_nio_2023_07 = [15.3,89.2,110;18.7,91.9,145;26.2,97.8,20]; # JTWC best track
myvect = [myvect;my_nio_2023_07];
nhcvect = [nhcvect;nhc_nio_2023_07];
btkvect = [btkvect;btk_nio_2023_07];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Nio 08 ... MOCHA before 2023-05-12-21Z
# my at https://twitter.com/elioeFIN/status/1657102731662839812

my_nio_2023_08 = [18.0,90.8,120;22.5,93.9,65];
nhc_nio_2023_08 = [18.1,90.8,120;23.1,94.3,50];
btk_nio_2023_08 = [17.9,91.3,140;23.8,95.8,45]; # JTWC best track
myvect = [myvect;my_nio_2023_08];
nhcvect = [nhcvect;nhc_nio_2023_08];
btkvect = [btkvect;btk_nio_2023_08];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 099 ... 10 / 92S before 2023-05-13-21Z
# my at https://twitter.com/elioeFIN/status/1657461892615471114
# (no JTWC forecast)

# Shem 100 ... FABIEN before 2023-05-14-21Z
# my at https://twitter.com/elioeFIN/status/1657824335036284928

my_shem_2023_100 = [6.0,76.6,75;8.2,74.5,95;9.4,73.4,105;10.5,72.5,95;10.7,70.9,85];
nhc_shem_2023_100 = [6.2,76.8,85;7.9,74.7,105;9.4,73.6,100;10.1,72.7,95;10.6,71.8,85];
btk_shem_2023_100 = [5.8,76.8,90;7.8,74.5,105;8.9,73.0,65;9.2,71.0,45;9.9,69.6,45]; # JTWC best track
myvect = [myvect;my_shem_2023_100];
nhcvect = [nhcvect;nhc_shem_2023_100];
btkvect = [btkvect;btk_shem_2023_100];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 101 ... FABIEN before 2023-05-15-03Z
# my at https://twitter.com/elioeFIN/status/1657921398784884738

my_shem_2023_101 = [6.4,76.2,95;8.5,74.5,105;9.9,73.2,105;10.4,72.1,100;10.6,71.0,95];
nhc_shem_2023_101 = [6.7,76.3,95;8.3,74.4,105;9.0,73.7,90;9.5,73.0,85;10.1,72.4,80];
btk_shem_2023_101 = [6.2,76.1,90;8.3,74.1,100;8.9,72.5,55;9.5,70.4,40;9.9,69.4,50]; # JTWC best track
myvect = [myvect;my_shem_2023_101];
nhcvect = [nhcvect;nhc_shem_2023_101];
btkvect = [btkvect;btk_shem_2023_101];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 102 ... FABIEN before 2023-05-15-21Z
# my at https://twitter.com/elioeFIN/status/1658187923957661696

my_shem_2023_102 = [7.8,74.2,105;9.4,72.7,95;9.6,70.7,90;9.7,68.8,85;9.4,69.0,70];
nhc_shem_2023_102 = [8.1,74.0,110;9.3,72.3,105;9.4,70.5,95;9.3,69.8,90;9.2,69.3,80];
btk_shem_2023_102 = [7.8,74.5,105;8.9,73.0,65;9.2,71.0,45;9.9,69.6,45;10.2,69.0,40]; # JTWC best track
myvect = [myvect;my_shem_2023_102];
nhcvect = [nhcvect;nhc_shem_2023_102];
btkvect = [btkvect;btk_shem_2023_102];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 103 ... FABIEN before 2023-05-16-03Z
# my at https://twitter.com/elioeFIN/status/1658280019892883457

my_shem_2023_103 = [8.6,73.5,105;9.6,71.7,105;9.5,69.4,100;8.8,68.1,85;8.7,68.5,70];
nhc_shem_2023_103 = [8.4,73.7,100;9.3,72.1,90;9.3,70.2,85;9.2,69.4,80;8.9,69.3,70];
btk_shem_2023_103 = [8.3,74.1,100;8.9,72.5,55;9.5,70.4,40;9.9,69.4,50;10.3,68.9,35]; # JTWC best track
myvect = [myvect;my_shem_2023_103];
nhcvect = [nhcvect;nhc_shem_2023_103];
btkvect = [btkvect;btk_shem_2023_103];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 104 ... FABIEN before 2023-05-16-15Z
# my at https://twitter.com/elioeFIN/status/1658460076598861824

my_shem_2023_104 = [9.2,73.1,100;9.6,71.1,90;9.2,69.4,85;8.8,69.0,75;9.0,69.4,70];
nhc_shem_2023_104 = [9.2,73.1,100;9.6,71.1,95;9.3,69.3,90;9.2,68.9,85;9.0,68.6,70];
btk_shem_2023_104 = [8.8,73.4,80;9.0,71.6,45;9.8,69.8,40;10.1,69.2,50;10.8,68.8,30]; # JTWC best track
myvect = [myvect;my_shem_2023_104];
nhcvect = [nhcvect;nhc_shem_2023_104];
btkvect = [btkvect;btk_shem_2023_104];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 105 ... FABIEN before 2023-05-16-21Z
# my at https://twitter.com/elioeFIN/status/1658550234283139073

my_shem_2023_105 = [9.6,72.3,100;9.5,70.1,95;9.2,68.6,90;9.2,68.1,80;9.5,68.5,65];
nhc_shem_2023_105 = [9.5,72.4,95;9.7,70.3,90;9.4,69.1,85;9.3,68.9,75;9.1,68.7,65];
btk_shem_2023_105 = [8.9,73.0,65;9.2,71.0,45;9.9,69.6,45;10.2,69.0,40;10.9,68.8,25]; # JTWC best track
myvect = [myvect;my_shem_2023_105];
nhcvect = [nhcvect;nhc_shem_2023_105];
btkvect = [btkvect;btk_shem_2023_105];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 106 ... FABIEN before 2023-05-17-03Z
# my at https://twitter.com/elioeFIN/status/1658640300040937472

my_shem_2023_106 = [9.4,72.0,90;9.6,69.7,90;9.4,68.5,80;9.3,68.8,60;10.3,69.4,50];
nhc_shem_2023_106 = [9.8,72.1,80;9.9,69.9,75;9.7,69.1,70;9.6,68.9,65;9.4,68.9,45];
btk_shem_2023_106 = [8.9,72.5,55;9.5,70.4,40;9.9,69.4,50;10.3,68.9,35;11.7,69.0,30]; # JTWC best track
myvect = [myvect;my_shem_2023_106];
nhcvect = [nhcvect;nhc_shem_2023_106];
btkvect = [btkvect;btk_shem_2023_106];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 107 ... FABIEN before 2023-05-17-09Z
# my at https://twitter.com/elioeFIN/status/1658733262703939585

my_shem_2023_107 = [9.7,72.1,80;9.7,69.8,75;9.7,70.0,65;10.1,70.4,50;10.9,70.9,35];
nhc_shem_2023_107 = [9.8,72.0,80;9.9,70.2,75;9.8,69.7,70;9.9,69.5,65;10.2,69.7,45];
btk_shem_2023_107 = [8.9,71.0,50;9.7,70.0,40;10.0,69.3,50;10.5,68.8,30;12.6,69.3,30]; # JTWC best track
myvect = [myvect;my_shem_2023_107];
nhcvect = [nhcvect;nhc_shem_2023_107];
btkvect = [btkvect;btk_shem_2023_107];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 108 ... FABIEN before 2023-05-17-15Z
# my at https://twitter.com/elioeFIN/status/1658833855007150083

my_shem_2023_108 = [9.6,71.2,70;9.3,69.0,65;9.3,68.5,55;9.7,68.4,55;10.4,68.5,45];
nhc_shem_2023_108 = [9.6,71.4,80;9.6,69.7,70;9.8,69.5,60;10.4,70.0,55;11.1,70.2,45];
btk_shem_2023_108 = [9.0,71.6,45;9.8,69.8,40;10.1,69.2,50;10.8,68.8,30;12.9,69.4,30]; # JTWC best track
myvect = [myvect;my_shem_2023_108];
nhcvect = [nhcvect;nhc_shem_2023_108];
btkvect = [btkvect;btk_shem_2023_108];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 109 ... FABIEN before 2023-05-17-21Z
# my at https://twitter.com/elioeFIN/status/1658915726500012034

my_shem_2023_109 = [9.4,70.9,65;9.3,69.2,60;9.5,69.9,50;10.1,69.9,45;11.2,69.3,45];
nhc_shem_2023_109 = [9.2,71.3,60;9.4,69.8,55;9.8,70.0,50;10.3,70.4,45;10.9,70.3,35];
btk_shem_2023_109 = [9.2,71.0,45;9.9,69.6,45;10.2,69.0,40;10.9,68.8,25;13.2,69.6,30]; # JTWC best track
myvect = [myvect;my_shem_2023_109];
nhcvect = [nhcvect;nhc_shem_2023_109];
btkvect = [btkvect;btk_shem_2023_109];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 110 ... FABIEN before 2023-05-18-21Z
# my at https://twitter.com/elioeFIN/status/1659281294939783168

my_shem_2023_110 = [9.8,69.2,45;10.3,68.9,45;11.2,69.8,55;11.4,68.9,45;12.0,68.0,45];
nhc_shem_2023_110 = [9.8,69.5,45;10.2,69.6,40;10.6,70.0,40;11.5,70.1,35;12.5,69.2,35];
btk_shem_2023_110 = [9.9,69.6,45;10.2,69.0,40;10.9,68.8,25;13.2,69.6,30;15.7,70.4,30]; # JTWC best track
myvect = [myvect;my_shem_2023_110];
nhcvect = [nhcvect;nhc_shem_2023_110];
btkvect = [btkvect;btk_shem_2023_110];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 111 ... FABIEN before 2023-05-19-03Z
# my at https://twitter.com/elioeFIN/status/1659368096144973824

my_shem_2023_111 = [10.1,69.4,40;10.4,69.7,50;11.4,69.9,50;12.5,69.3,30;12.9,68.6,30];
nhc_shem_2023_111 = [9.9,69.5,40;10.4,69.8,40;10.9,70.0,35;11.8,69.8,30;12.7,69.0,30];
btk_shem_2023_111 = [9.9,69.4,50;10.3,68.9,35;11.7,69.0,30;13.8,70.1,30;16.5,69.9,30]; # JTWC best track
myvect = [myvect;my_shem_2023_111];
nhcvect = [nhcvect;nhc_shem_2023_111];
btkvect = [btkvect;btk_shem_2023_111];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 112 ... FABIEN before 2023-05-19-21Z
# my at https://twitter.com/elioeFIN/status/1659635958839386114

my_shem_2023_112 = [11.1,69.2,45;12.1,68.9,55;13.2,69.0,45;13.5,68.2,35];
nhc_shem_2023_112 = [10.8,69.3,45;11.6,69.3,40;12.3,69.1,35;12.7,68.5,30];
btk_shem_2023_112 = [10.2,69.0,40;10.9,68.8,25;13.2,69.6,30;15.7,70.4,30]; # JTWC best track
myvect = [myvect;my_shem_2023_112];
nhcvect = [nhcvect;nhc_shem_2023_112];
btkvect = [btkvect;btk_shem_2023_112];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 113 ... FABIEN before 2023-05-20-03Z
# my at https://twitter.com/elioeFIN/status/1659729617085710337
# (no JTWC forecast)

# Wpac 009 ... TD / 02W before 2023-05-20-03Z
# my at https://twitter.com/elioeFIN/status/1659734586471882753

my_wpac_2023_009 = [6.7,148.6,35;9.1,146.9,50;12.2,146.4,65;14.9,145.1,95;16.2,143.0,100];
nhc_wpac_2023_009 = [7.2,148.4,50;9.8,147.3,75;12.5,146.6,85;14.9,145.2,90;16.9,143.2,95];
btk_wpac_2023_009 = [7.0,148.9,50;9.0,147.4,85;11.2,146.8,115;13.0,145.6,105;14.2,143.5,140]; # JTWC best track
myvect = [myvect;my_wpac_2023_009];
nhcvect = [nhcvect;nhc_wpac_2023_009];
btkvect = [btkvect;btk_wpac_2023_009];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 010 ... MAWAR before 2023-05-21-21Z
# my at https://twitter.com/elioeFIN/status/1660365061314035721

my_wpac_2023_010 = [10.8,146.8,90;13.0,145.9,100;14.3,143.4,115;14.7,139.6,120;15.6,135.4,125];
nhc_wpac_2023_010 = [11.0,147.1,85;13.2,145.8,95;14.4,143.4,105;15.5,139.2,110;16.4,135.0,115];
btk_wpac_2023_010 = [10.5,146.8,100;12.7,145.7,120;14.1,144.2,125;14.9,140.4,155;16.0,134.9,140]; # JTWC best track
myvect = [myvect;my_wpac_2023_010];
nhcvect = [nhcvect;nhc_wpac_2023_010];
btkvect = [btkvect;btk_wpac_2023_010];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 011 ... MAWAR before 2023-05-22-03Z
# my at https://twitter.com/elioeFIN/status/1660452536988446727

my_wpac_2023_011 = [11.5,146.6,100;13.5,144.8,105;14.5,141.6,115;15.1,137.3,125;16.5,133.0,130];
nhc_wpac_2023_011 = [11.4,146.7,95;13.6,145.1,100;14.5,142.4,110;15.3,138.0,120;16.2,133.4,125];
btk_wpac_2023_011 = [11.2,146.8,115;13.0,145.6,105;14.2,143.5,140;15.1,139.2,165;16.3,133.5,135]; # JTWC best track
myvect = [myvect;my_wpac_2023_011];
nhcvect = [nhcvect;nhc_wpac_2023_011];
btkvect = [btkvect;btk_wpac_2023_011];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 012 ... MAWAR before 2023-05-22-21Z
# my at https://twitter.com/elioeFIN/status/1660725721919004677

my_wpac_2023_012 = [12.7,145.5,110;13.7,143.0,120;14.6,139.2,120;15.5,134.2,135;17.3,130.3,135];
nhc_wpac_2023_012 = [12.7,145.4,120;13.9,143.0,120;14.8,139.2,125;15.8,134.3,125;17.3,129.9,130];
btk_wpac_2023_012 = [12.7,145.7,120;14.1,144.2,125;14.9,140.4,155;16.0,134.9,140;17.0,129.7,115]; # JTWC best track
myvect = [myvect;my_wpac_2023_012];
nhcvect = [nhcvect;nhc_wpac_2023_012];
btkvect = [btkvect;btk_wpac_2023_012];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 013 ... MAWAR before 2023-05-23-03Z
# my at https://twitter.com/elioeFIN/status/1660816163834822656

my_wpac_2023_013 = [13.1,145.3,120;14.0,142.6,120;15.0,138.1,130;15.8,132.8,140;18.3,129.2,140];
nhc_wpac_2023_013 = [13.2,145.2,125;14.2,142.5,125;15.2,138.3,130;16.2,133.5,135;18.3,129.6,130];
btk_wpac_2023_013 = [13.0,145.6,105;14.2,143.5,140;15.1,139.2,165;16.3,133.5,135;17.2,128.7,110]; # JTWC best track
myvect = [myvect;my_wpac_2023_013];
nhcvect = [nhcvect;nhc_wpac_2023_013];
btkvect = [btkvect;btk_wpac_2023_013];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 014 ... MAWAR before 2023-05-23-15Z
# my at https://twitter.com/elioeFIN/status/1660996685835673600

my_wpac_2023_014 = [13.6,143.9,130;14.5,140.3,130;15.5,135.3,145;16.5,129.8,150;18.8,126.9,135];
nhc_wpac_2023_014 = [13.7,144.0,135;14.6,140.5,130;15.7,135.6,140;17.1,130.5,140;18.9,126.7,125];
btk_wpac_2023_014 = [13.8,144.7,120;14.7,141.5,155;15.7,136.5,145;16.8,130.9,125;18.0,127.3,105]; # JTWC best track
myvect = [myvect;my_wpac_2023_014];
nhcvect = [nhcvect;nhc_wpac_2023_014];
btkvect = [btkvect;btk_wpac_2023_014];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 015 ... MAWAR before 2023-05-23-21Z
# my at https://twitter.com/elioeFIN/status/1661092226422718468

my_wpac_2023_015 = [13.9,143.5,125;14.8,139.6,130;15.9,134.5,140;17.0,129.0,140;19.1,126.7,130];
nhc_wpac_2023_015 = [13.8,143.4,125;14.8,139.3,130;16.0,134.2,140;17.6,129.3,130;19.5,125.5,115];
btk_wpac_2023_015 = [14.1,144.2,125;14.9,140.4,155;16.0,134.9,140;17.0,129.7,115;18.6,126.7,105]; # JTWC best track
myvect = [myvect;my_wpac_2023_015];
nhcvect = [nhcvect;nhc_wpac_2023_015];
btkvect = [btkvect;btk_wpac_2023_015];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 016 ... MAWAR before 2023-05-24-21Z
# my at https://twitter.com/elioeFIN/status/1661449062237851655

my_wpac_2023_016 = [14.9,140.0,130;16.0,134.2,140;16.9,128.5,140;18.5,125.1,130;20.8,124.1,105];
nhc_wpac_2023_016 = [15.1,140.0,135;16.0,134.8,145;17.2,130.1,130;18.9,126.4,115;21.0,124.3,95];
btk_wpac_2023_016 = [14.9,140.4,155;16.0,134.9,140;17.0,129.7,115;18.6,126.7,105;20.1,125.4,85]; # JTWC best track
myvect = [myvect;my_wpac_2023_016];
nhcvect = [nhcvect;nhc_wpac_2023_016];
btkvect = [btkvect;btk_wpac_2023_016];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 017 ... MAWAR before 2023-05-25-03Z
# my at https://twitter.com/elioeFIN/status/1661540653010939905

my_wpac_2023_017 = [15.4,139.0,135;16.4,133.1,145;17.7,127.7,130;19.4,124.6,110;21.6,124.0,95];
nhc_wpac_2023_017 = [15.2,139.0,145;16.3,133.5,140;17.7,128.9,125;19.4,125.8,105;21.4,124.2,90];
btk_wpac_2023_017 = [15.1,139.2,165;16.3,133.5,135;17.2,128.7,110;19.0,126.2,105;20.4,125.1,80]; # JTWC best track
myvect = [myvect;my_wpac_2023_017];
nhcvect = [nhcvect;nhc_wpac_2023_017];
btkvect = [btkvect;btk_wpac_2023_017];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 018 ... MAWAR before 2023-05-25-21Z
# my at https://twitter.com/elioeFIN/status/1661811081881288720

my_wpac_2023_018 = [16.1,134.9,145;17.1,129.4,130;18.9,125.6,120;20.6,124.0,100;21.9,124.5,80];
nhc_wpac_2023_018 = [15.9,135.2,150;17.2,130.0,135;18.9,126.2,115;20.1,124.3,95;21.5,123.7,80];
btk_wpac_2023_018 = [16.0,134.9,140;17.0,129.7,115;18.6,126.7,105;20.1,125.4,85;21.2,125.0,65]; # JTWC best track
myvect = [myvect;my_wpac_2023_018];
nhcvect = [nhcvect;nhc_wpac_2023_018];
btkvect = [btkvect;btk_wpac_2023_018];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 019 ... MAWAR before 2023-05-26-15Z
# my at https://twitter.com/elioeFIN/status/1662088120752283649

my_wpac_2023_019 = [16.8,130.7,140;18.0,126.6,125;19.7,124.3,100;21.1,123.5,80;23.0,125.1,60];
nhc_wpac_2023_019 = [16.9,131.3,140;18.3,127.5,120;19.8,125.2,95;21.0,124.6,75;22.1,125.2,65];
btk_wpac_2023_019 = [16.8,130.9,125;18.0,127.3,105;19.7,125.6,90;20.9,125.1,70;22.7,125.5,55]; # JTWC best track
myvect = [myvect;my_wpac_2023_019];
nhcvect = [nhcvect;nhc_wpac_2023_019];
btkvect = [btkvect;btk_wpac_2023_019];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 020 ... MAWAR before 2023-05-27-03Z
# my at https://twitter.com/elioeFIN/status/1662273517755199492

my_wpac_2023_020 = [17.3,128.4,120;18.7,125.3,105;20.3,123.7,80;21.6,123.7,75;23.1,124.9,65];
nhc_wpac_2023_020 = [17.5,128.5,125;19.1,125.4,105;20.5,124.0,90;21.4,124.1,75;23.1,125.0,65];
btk_wpac_2023_020 = [17.2,128.7,110;19.0,126.2,105;20.4,125.1,80;21.5,125.1,65;24.2,125.9,45]; # JTWC best track
myvect = [myvect;my_wpac_2023_020];
nhcvect = [nhcvect;nhc_wpac_2023_020];
btkvect = [btkvect;btk_wpac_2023_020];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 021 ... MAWAR before 2023-05-27-21Z
# my at https://twitter.com/elioeFIN/status/1662542549628616706

my_wpac_2023_021 = [18.5,125.8,100;19.9,123.5,90;20.6,122.1,75;21.9,121.5,65;24.3,122.6,55];
nhc_wpac_2023_021 = [18.5,126.1,110;19.8,124.1,95;20.6,123.5,80;21.6,123.6,70;23.2,124.1,60];
btk_wpac_2023_021 = [18.6,126.7,105;20.1,125.4,85;21.2,125.0,65;23.5,125.3,55;26.8,128.1,45]; # JTWC best track
myvect = [myvect;my_wpac_2023_021];
nhcvect = [nhcvect;nhc_wpac_2023_021];
btkvect = [btkvect;btk_wpac_2023_021];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 022 ... MAWAR before 2023-05-28-21Z
# my at https://twitter.com/elioeFIN/status/1662900559513366530

my_wpac_2023_022 = [20.0,124.8,95;20.6,123.7,85;22.1,122.9,70;24.2,123.1,60;26.5,126.2,45];
nhc_wpac_2023_022 = [20.0,125.1,95;21.0,124.5,85;22.4,124.3,70;24.4,124.9,55;25.9,126.4,45];
btk_wpac_2023_022 = [20.1,125.4,85;21.2,125.0,65;23.5,125.3,55;26.8,128.1,45;29.8,135.3,35]; # JTWC best track
myvect = [myvect;my_wpac_2023_022];
nhcvect = [nhcvect;nhc_wpac_2023_022];
btkvect = [btkvect;btk_wpac_2023_022];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 023 ... MAWAR before 2023-05-29-03Z
# my at https://twitter.com/elioeFIN/status/1662989375896969228

my_wpac_2023_023 = [20.3,124.4,95;21.3,123.7,85;22.8,123.3,70;25.0,123.5,55;27.4,127.3,40];
nhc_wpac_2023_023 = [20.5,124.7,90;21.5,124.2,80;23.2,124.3,70;25.1,125.4,55;26.5,127.2,45];
btk_wpac_2023_023 = [20.4,125.1,80;21.5,125.1,65;24.2,125.9,45;27.5,129.6,40;30.7,137.6,35]; # JTWC best track
myvect = [myvect;my_wpac_2023_023];
nhcvect = [nhcvect;nhc_wpac_2023_023];
btkvect = [btkvect;btk_wpac_2023_023];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 024 ... MAWAR before 2023-05-29-09Z
# my at https://twitter.com/elioeFIN/status/1663079234233851904

my_wpac_2023_024 = [20.7,124.4,85;21.7,123.9,80;23.7,124.0,65;25.4,125.3,55;27.3,129.5,45];
nhc_wpac_2023_024 = [20.7,124.9,95;21.8,124.7,80;23.4,124.7,70;25.0,126.1,55;26.4,128.6,45];
btk_wpac_2023_024 = [20.6,125.0,75;22.3,125.4,60;24.9,126.4,40;28.3,131.3,40;32.4,140.4,35]; # JTWC best track (except day 5)
myvect = [myvect;my_wpac_2023_024];
nhcvect = [nhcvect;nhc_wpac_2023_024];
btkvect = [btkvect;btk_wpac_2023_024];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 025 ... MAWAR before 2023-05-29-21Z
# my at https://twitter.com/elioeFIN/status/1663266728334245900

my_wpac_2023_025 = [21.3,124.9,75;22.8,125.1,65;25.1,125.9,60;26.0,128.0,50];
nhc_wpac_2023_025 = [21.3,124.9,75;22.8,125.1,65;24.8,126.1,55;26.3,128.2,50];
btk_wpac_2023_025 = [21.2,125.0,65;23.5,125.3,55;26.8,128.1,45;29.8,135.3,35]; # JTWC best track
myvect = [myvect;my_wpac_2023_025];
nhcvect = [nhcvect;nhc_wpac_2023_025];
btkvect = [btkvect;btk_wpac_2023_025];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Wpac 026 ... MAWAR before 2023-05-30-03Z
# my at https://twitter.com/elioeFIN/status/1663352825672343553

my_wpac_2023_026 = [21.7,124.8,65;23.5,124.8,55;25.4,125.3,45;27.0,129.9,45];
nhc_wpac_2023_026 = [21.7,124.9,70;23.5,125.5,60;25.4,127.0,50;26.9,129.5,45];
btk_wpac_2023_026 = [21.5,125.1,65;24.2,125.9,45;27.5,129.6,40;30.7,137.6,35]; # JTWC best track
myvect = [myvect;my_wpac_2023_026];
nhcvect = [nhcvect;nhc_wpac_2023_026];
btkvect = [btkvect;btk_wpac_2023_026];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Wpac 027 ... MAWAR before 2023-05-30-21Z
# my at https://twitter.com/elioeFIN/status/1663627988766715905

my_wpac_2023_027 = [23.1,124.9,55;25.5,126.3,50;27.5,131.5,45];
nhc_wpac_2023_027 = [23.0,125.5,55;25.7,127.8,50;27.8,132.1,45];
btk_wpac_2023_027 = [23.5,125.3,55;26.8,128.1,45;29.8,135.3,35]; # JTWC best track
myvect = [myvect;my_wpac_2023_027];
nhcvect = [nhcvect;nhc_wpac_2023_027];
btkvect = [btkvect;btk_wpac_2023_027];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Atl 001 ... 91L before 2023-06-01-21Z
# my at https://twitter.com/elioeFIN/status/1664350987484643328
# NHC at https://www.nhc.noaa.gov/archive/2023/al02/al022023.discus.001.shtml?

my_atl_2023_001 = [26.3,86.5,35;23.3,85.5,25];
nhc_atl_2023_001 = [26.4,86.6,35;23.7,85.7,30];
btk_atl_2023_001 = [26.7,86.0,35;23.9,85.0,25]; # TCR
myvect = [myvect;my_atl_2023_001];
nhcvect = [nhcvect;nhc_atl_2023_001];
btkvect = [btkvect;btk_atl_2023_001];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Atl 002 ... 02L before 2023-06-02-03Z
# my at https://twitter.com/elioeFIN/status/1664438016247463936
# NHC at https://www.nhc.noaa.gov/archive/2023/al02/al022023.discus.002.shtml?

my_atl_2023_002 = [25.1,86.6,30;22.3,85.7,20];
nhc_atl_2023_002 = [25.4,86.4,30;22.9,85.1,25];
btk_atl_2023_002 = [25.9,85.7,35;23.5,84.1,25]; # TCR
myvect = [myvect;my_atl_2023_002];
nhcvect = [nhcvect;nhc_atl_2023_002];
btkvect = [btkvect;btk_atl_2023_002];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Wpac 028 ... TD/98W before 2023-06-06-03Z
# my at https://twitter.com/elioeFIN/status/1665898305505701889

my_wpac_2023_028 = [14.8,133.6,40;16.2,131.5,45;17.0,129.7,60;18.5,129.3,65;20.0,129.0,65];
nhc_wpac_2023_028 = [15.2,134.0,45;16.2,131.9,60;17.2,130.2,70;18.4,129.7,75;21.0,130.1,85];
btk_wpac_2023_028 = [14.6,134.1,40;15.9,131.8,65;17.3,130.2,80;19.1,129.9,90;23.2,131.7,75]; # JTWC best track
myvect = [myvect;my_wpac_2023_028];
nhcvect = [nhcvect;nhc_wpac_2023_028];
btkvect = [btkvect;btk_wpac_2023_028];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 029 ... GUCHOL before 2023-06-06-15Z
# my at https://twitter.com/elioeFIN/status/1666078702877433856

my_wpac_2023_029 = [14.7,133.0,45;16.3,130.9,65;18.0,130.4,70;19.4,130.9,75;22.2,132.7,80];
nhc_wpac_2023_029 = [15.9,133.2,55;16.9,131.2,80;18.0,130.3,80;19.9,130.4,85;23.2,131.7,85];
btk_wpac_2023_029 = [15.3,133.0,50;16.4,130.9,80;18.2,130.0,75;20.7,130.6,90;25.5,133.6,50]; # JTWC best track
myvect = [myvect;my_wpac_2023_029];
nhcvect = [nhcvect;nhc_wpac_2023_029];
btkvect = [btkvect;btk_wpac_2023_029];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Nio 09 ... ARB 01/02A before 2023-06-06-15Z
# my at https://twitter.com/elioeFIN/status/1666082548018221058

my_nio_2023_09 = [13.8,65.9,65;15.4,65.3,80;17.1,65.1,85;19.2,64.5,80;19.8,64.5,80];
nhc_nio_2023_09 = [13.4,66.2,70;14.6,66.3,75;15.9,66.1,75;17.6,65.5,80;18.8,65.1,80];
btk_nio_2023_09 = [13.3,66.2,85;14.2,66.0,75;15.7,67.3,65;17.2,67.3,105;18.7,67.9,90]; # JTWC best track
myvect = [myvect;my_nio_2023_09];
nhcvect = [nhcvect;nhc_nio_2023_09];
btkvect = [btkvect;btk_nio_2023_09];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 030 ... GUCHOL before 2023-06-07-03Z
# my at https://twitter.com/elioeFIN/status/1666254887909244929

my_wpac_2023_030 = [15.8,132.2,60;17.5,130.8,75;19.2,130.8,70;21.6,131.9,85;25.4,135.9,85];
nhc_wpac_2023_030 = [15.5,132.4,65;17.0,130.7,85;18.3,130.5,85;21.4,132.5,80;25.1,135.7,80];
btk_wpac_2023_030 = [15.9,131.8,65;17.3,130.2,85;19.1,129.9,90;23.2,131.7,75;28.1,136.6,50]; # JTWC best track
myvect = [myvect;my_wpac_2023_030];
nhcvect = [nhcvect;nhc_wpac_2023_030];
btkvect = [btkvect;btk_wpac_2023_030];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Nio 10 ... BIPARJOY before 2023-06-07-03Z
# my at https://twitter.com/elioeFIN/status/1666258899194847232

my_nio_2023_10 = [13.9,66.2,90;15.4,65.3,90;16.7,64.7,80;18.6,64.7,75;19.7,63.4,65];
nhc_nio_2023_10 = [13.6,66.3,95;14.9,65.9,100;15.9,65.2,90;17.1,64.7,80;18.6,63.9,75];
btk_nio_2023_10 = [13.7,66.1,75;14.8,66.4,65;16.4,67.3,95;17.8,67.7,95;19.2,67.7,80]; # JTWC best track
myvect = [myvect;my_nio_2023_10];
nhcvect = [nhcvect;nhc_nio_2023_10];
btkvect = [btkvect;btk_nio_2023_10];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Nio 11 ... BIPARJOY before 2023-06-08-15Z
# my at https://twitter.com/elioeFIN/status/1666803236379176960

my_nio_2023_11 = [15.7,65.9,90;16.9,65.5,85;18.4,65.6,80;19.7,65.8,70;21.2,64.9,55];
nhc_nio_2023_11 = [15.8,66.0,90;17.2,66.2,90;18.6,66.3,80;19.8,65.7,75;21.2,65.1,65];
btk_nio_2023_11 = [15.7,67.3,65;17.2,67.3,105;18.7,67.9,90;19.9,67.2,90;21.1,66.4,95]; # JTWC best track
myvect = [myvect;my_nio_2023_11];
nhcvect = [nhcvect;nhc_nio_2023_11];
btkvect = [btkvect;btk_nio_2023_11];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 031 ... GUCHOL before 2023-06-08-21Z
# my at https://twitter.com/elioeFIN/status/1666882892423626781

my_wpac_2023_031 = [18.4,130.0,100;20.9,131.0,95;24.7,134.9,95;28.9,140.4,75];
nhc_wpac_2023_031 = [18.6,130.0,90;21.1,131.0,80;24.7,134.1,70;29.6,140.1,60];
btk_wpac_2023_031 = [18.6,129.9,85;22.2,130.8,80;26.9,134.7,45;32.3,141.7,45]; # JTWC best track
myvect = [myvect;my_wpac_2023_031];
nhcvect = [nhcvect;nhc_wpac_2023_031];
btkvect = [btkvect;btk_wpac_2023_031];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Nio 12 ... BIPARJOY before 2023-06-08-21Z
# my at https://twitter.com/elioeFIN/status/1666885814125576196

my_nio_2023_12 = [15.9,66.2,85;17.3,66.1,80;18.5,65.8,70;19.5,65.2,65;21.1,65.0,55];
nhc_nio_2023_12 = [15.8,66.6,80;17.3,66.9,90;18.6,66.9,80;20.0,66.2,75;21.3,65.7,65];
btk_nio_2023_12 = [16.3,67.4,70;17.6,67.4,100;19.0,67.8,85;20.3,67.2,85;21.2,66.4,85]; # JTWC best track
myvect = [myvect;my_nio_2023_12];
nhcvect = [nhcvect;nhc_nio_2023_12];
btkvect = [btkvect;btk_nio_2023_12];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Nio 13 ... BIPARJOY before 2023-06-09-21Z
# my at https://twitter.com/elioeFIN/status/1667247061497008137

my_nio_2023_13 = [17.5,67.7,75;19.2,67.7,70;20.4,67.0,55;21.6,66.7,50;22.6,66.2,45];
nhc_nio_2023_13 = [17.6,67.7,85;19.2,67.9,80;20.5,67.6,70;21.7,67.2,65;22.8,67.1,65];
btk_nio_2023_13 = [17.6,67.4,100;19.0,67.8,85;20.3,67.2,85;21.2,66.4,85;22.2,66.7,60]; # JTWC best track
myvect = [myvect;my_nio_2023_13];
nhcvect = [nhcvect;nhc_nio_2023_13];
btkvect = [btkvect;btk_nio_2023_13];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 032 ... GUCHOL before 2023-06-09-21Z
# my at https://twitter.com/elioeFIN/status/1667252957539192842

my_wpac_2023_032 = [21.4,130.9,85;25.4,134.7,75;30.8,141.1,70];
nhc_wpac_2023_032 = [21.2,130.8,85;25.1,134.7,70;30.2,140.7,55];
btk_wpac_2023_032 = [22.2,130.8,80;26.9,134.7,45;32.3,141.7,45]; # JTWC best track
myvect = [myvect;my_wpac_2023_032];
nhcvect = [nhcvect;nhc_wpac_2023_032];
btkvect = [btkvect;btk_wpac_2023_032];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Nio 14 ... BIPARJOY before 2023-06-10-03Z
# my at https://twitter.com/elioeFIN/status/1667346958908891137

my_nio_2023_14 = [17.9,67.4,85;19.4,67.2,80;20.8,66.5,70;22.3,66.1,60;23.4,66.3,55];
nhc_nio_2023_14 = [18.1,67.7,80;19.6,67.7,75;21.0,67.3,70;22.1,67.1,65;23.2,67.0,55];
btk_nio_2023_14 = [17.8,67.7,95;19.2,67.7,80;20.7,67.0,85;21.3,66.3,85;22.3,66.9,55]; # JTWC best track
myvect = [myvect;my_nio_2023_14];
nhcvect = [nhcvect;nhc_nio_2023_14];
btkvect = [btkvect;btk_nio_2023_14];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Nio 15 ... BIPARJOY before 2023-06-10-15Z
# my at https://twitter.com/elioeFIN/status/1667530209677963267

my_nio_2023_15 = [18.9,67.6,65;20.2,67.3,70;21.6,66.8,65;22.4,66.3,50;24.0,66.7,45];
nhc_nio_2023_15 = [18.8,67.7,90;20.2,67.3,80;21.5,66.8,75;22.7,67.1,65;23.7,67.8,50];
btk_nio_2023_15 = [18.7,67.9,90;19.9,67.2,90;21.1,66.4,95;21.8,66.7,70;22.8,68.2,55]; # JTWC best track
myvect = [myvect;my_nio_2023_15];
nhcvect = [nhcvect;nhc_nio_2023_15];
btkvect = [btkvect;btk_nio_2023_15];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Nio 16 ... BIPARJOY before 2023-06-11-21Z
# my at https://twitter.com/elioeFIN/status/1667971694961541125

my_nio_2023_16 = [20.6,67.7,75;21.8,67.2,70;22.6,67.4,65;24.3,69.4,40;25.5,72.2,25];
nhc_nio_2023_16 = [20.5,67.4,100;21.7,67.2,85;22.8,67.7,75;24.0,69.7,50;25.3,72.1,30];
btk_nio_2023_16 = [20.3,67.2,85;21.2,66.4,85;22.2,66.7,60;23.3,68.6,50;24.7,70.8,35]; # JTWC best track
myvect = [myvect;my_nio_2023_16];
nhcvect = [nhcvect;nhc_nio_2023_16];
btkvect = [btkvect;btk_nio_2023_16];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Nio 17 ... BIPARJOY before 2023-06-12-03Z
# my at https://twitter.com/elioeFIN/status/1668066146241638400

my_nio_2023_17 = [20.7,67.5,80;21.9,67.3,70;22.8,67.5,55;24.1,70.1,35;25.2,72.8,25];
nhc_nio_2023_17 = [20.9,67.2,80;21.9,67.0,75;22.7,67.6,70;24.0,68.9,50;25.5,71.8,30];
btk_nio_2023_17 = [20.7,67.0,85;21.3,66.3,85;22.3,66.9,55;23.5,69.0,45;25.1,71.1,30]; # JTWC best track
myvect = [myvect;my_nio_2023_17];
nhcvect = [nhcvect;nhc_nio_2023_17];
btkvect = [btkvect;btk_nio_2023_17];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Nio 18 ... BIPARJOY before 2023-06-12-21Z
# my at https://twitter.com/elioeFIN/status/1668338149247045632

my_nio_2023_18 = [21.2,66.9,75;22.2,67.2,65;23.6,68.7,55;25.0,71.6,30];
nhc_nio_2023_18 = [21.2,66.8,85;22.3,67.2,75;23.7,68.8,55;25.2,71.4,30];
btk_nio_2023_18 = [21.2,66.4,85;22.2,66.7,60;23.3,68.6,50;24.7,70.8,35]; # JTWC best track
myvect = [myvect;my_nio_2023_18];
nhcvect = [nhcvect;nhc_nio_2023_18];
btkvect = [btkvect;btk_nio_2023_18];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Nio 19 ... BIPARJOY before 2023-06-13-21Z
# my at https://twitter.com/elioeFIN/status/1668696079464890374

my_nio_2023_19 = [22.6,67.0,70;24.1,69.2,50;25.5,72.5,35];
nhc_nio_2023_19 = [22.8,67.5,70;24.1,69.4,55;25.4,72.4,30];
btk_nio_2023_19 = [22.2,66.7,60;23.3,68.6,50;24.7,70.8,35]; # JTWC best track
myvect = [myvect;my_nio_2023_19];
nhcvect = [nhcvect;nhc_nio_2023_19];
btkvect = [btkvect;btk_nio_2023_19];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Nio 20 ... BIPARJOY before 2023-06-14-03Z
# my at https://twitter.com/elioeFIN/status/1668786809898250240

my_nio_2023_20 = [22.8,67.4,75;24.0,69.6,45;25.2,72.7,20];
nhc_nio_2023_20 = [22.8,67.3,70;24.3,69.6,50;25.4,72.8,30];
btk_nio_2023_20 = [22.3,66.9,55;23.5,69.0,45;25.1,71.1,30]; # JTWC best track
myvect = [myvect;my_nio_2023_20];
nhcvect = [nhcvect;nhc_nio_2023_20];
btkvect = [btkvect;btk_nio_2023_20];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Nio 21 ... BIPARJOY before 2023-06-14-21Z
# my at https://twitter.com/elioeFIN/status/1669058641331101707

my_nio_2023_21 = [23.6,68.6,45;25.1,70.9,30];
nhc_nio_2023_21 = [23.7,68.3,60;25.1,71.1,30];
btk_nio_2023_21 = [23.3,68.6,50;24.7,70.8,35]; # JTWC best track
myvect = [myvect;my_nio_2023_21];
nhcvect = [nhcvect;nhc_nio_2023_21];
btkvect = [btkvect;btk_nio_2023_21];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Atl 003 ... 92L before 2023-06-18-21Z
# my at https://twitter.com/elioeFIN/status/1670514375180926976
# (no NHC forecast)

# Atl 004 ... 92L before 2023-06-19-03Z
# my at https://twitter.com/elioeFIN/status/1670605469809799169
# (no NHC forecast)

# Atl 005 ... 03L before 2023-06-19-21Z
# my at https://twitter.com/elioeFIN/status/1670873489803210761
# NHC at https://www.nhc.noaa.gov/archive/2023/al03/al032023.discus.002.shtml?

my_atl_2023_005 = [12.2,47.5,55;13.1,52.9,70;14.0,57.8,70;14.9,63.3,65;16.4,67.7,65];
nhc_atl_2023_005 = [12.2,47.7,50;13.2,52.9,65;14.3,58.3,70;15.5,63.6,65;17.0,68.5,60];
btk_atl_2023_005 = [12.0,48.0,40;13.3,53.3,55;13.4,58.8,55;13.1,65.6,45;13.1,72.9,35]; # TCR (except day 5)
myvect = [myvect;my_atl_2023_005];
nhcvect = [nhcvect;nhc_atl_2023_005];
btkvect = [btkvect;btk_atl_2023_005];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 006 ... BRET before 2023-06-20-03Z
# my at https://twitter.com/elioeFIN/status/1670963104413253632
# NHC at https://www.nhc.noaa.gov/archive/2023/al03/al032023.discus.003.shtml?

my_atl_2023_006 = [12.5,48.6,60;13.3,54.0,70;14.0,58.9,65;14.8,64.2,65];
nhc_atl_2023_006 = [12.3,48.7,55;13.3,53.9,65;14.3,59.4,60;15.0,64.5,55];
btk_atl_2023_006 = [12.4,49.4,45;13.4,54.6,55;13.3,60.3,55;13.0,67.4,45]; # TCR
myvect = [myvect;my_atl_2023_006];
nhcvect = [nhcvect;nhc_atl_2023_006];
btkvect = [btkvect;btk_atl_2023_006];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 007 ... BRET before 2023-06-20-15Z
# my at https://twitter.com/elioeFIN/status/1671143746333732865
# NHC at https://www.nhc.noaa.gov/archive/2023/al03/al032023.discus.005.shtml?

my_atl_2023_007 = [12.6,51.9,50;13.4,56.8,50;13.9,63.0,55;14.7,69.5,55];
nhc_atl_2023_007 = [12.7,51.9,45;13.6,57.3,55;14.2,63.6,50;14.4,70.4,45];
btk_atl_2023_007 = [13.0,52.0,50;13.5,57.3,60;13.2,63.8,50;13.0,70.9,40]; # TCR
myvect = [myvect;my_atl_2023_007];
nhcvect = [nhcvect;nhc_atl_2023_007];
btkvect = [btkvect;btk_atl_2023_007];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 008 ... 93L before 2023-06-20-15Z
# my at https://twitter.com/elioeFIN/status/1671149266310676481
# (no NHC forecast)

# Atl 009 ... BRET before 2023-06-21-03Z
# my at https://twitter.com/elioeFIN/status/1671323462797803521
# NHC at https://www.nhc.noaa.gov/archive/2023/al03/al032023.discus.007.shtml?

my_atl_2023_009 = [13.3,54.8,60;13.7,60.4,50;14.1,67.3,40];
nhc_atl_2023_009 = [13.3,54.7,55;14.0,60.6,55;14.6,67.6,45];
btk_atl_2023_009 = [13.4,54.6,55;13.3,60.3,55;13.0,67.4,45]; # TCR
myvect = [myvect;my_atl_2023_009];
nhcvect = [nhcvect;nhc_atl_2023_009];
btkvect = [btkvect;btk_atl_2023_009];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Atl 010 ... BRET before 2023-06-21-09Z
# my at https://twitter.com/elioeFIN/status/1671414332746285056
# NHC at https://www.nhc.noaa.gov/archive/2023/al03/al032023.discus.008.shtml?

my_atl_2023_010 = [13.3,55.6,60;14.1,61.3,50;14.8,68.2,45];
nhc_atl_2023_010 = [13.5,55.7,55;14.2,61.8,50;14.8,69.0,40];
btk_atl_2023_010 = [13.5,55.9,60;13.3,62.0,50;13.0,69.2,40]; # TCR
myvect = [myvect;my_atl_2023_010];
nhcvect = [nhcvect;nhc_atl_2023_010];
btkvect = [btkvect;btk_atl_2023_010];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Atl 011 ... BRET before 2023-06-21-21Z
# my at https://twitter.com/elioeFIN/status/1671597330053619724
# NHC at https://www.nhc.noaa.gov/archive/2023/al03/al032023.discus.010.shtml?

my_atl_2023_011 = [13.7,58.4,55;14.1,64.8,50;14.9,71.2,35];
nhc_atl_2023_011 = [13.8,58.5,55;14.5,65.2,50;14.9,72.2,40];
btk_atl_2023_011 = [13.4,58.8,55;13.1,65.6,45;13.1,72.9,35]; # TCR (except day 3)
myvect = [myvect;my_atl_2023_011];
nhcvect = [nhcvect;nhc_atl_2023_011];
btkvect = [btkvect;btk_atl_2023_011];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Atl 012 ... 93L before 2023-06-21-21Z
# my at https://twitter.com/elioeFIN/status/1671604302899453952
# (no NHC forecast)

# Atl 013 ... BRET before 2023-06-22-03Z
# my at https://twitter.com/elioeFIN/status/1671685999364038656
# NHC at https://www.nhc.noaa.gov/archive/2023/al03/al032023.discus.011.shtml?

my_atl_2023_013 = [13.8,60.0,60;14.0,66.6,45];
nhc_atl_2023_013 = [14.0,60.1,55;14.5,67.0,45];
btk_atl_2023_013 = [13.3,60.3,55;13.0,67.4,45]; # TCR
myvect = [myvect;my_atl_2023_013];
nhcvect = [nhcvect;nhc_atl_2023_013];
btkvect = [btkvect;btk_atl_2023_013];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Atl 014 ... 04L before 2023-06-22-15Z
# my at https://twitter.com/elioeFIN/status/1671868400841240577
# NHC at https://www.nhc.noaa.gov/archive/2023/al04/al042023.discus.002.shtml?

my_atl_2023_014 = [12.6,47.2,40;15.1,52.1,50;18.2,57.2,45;21.3,61.8,40;23.5,64.5,40];
nhc_atl_2023_014 = [12.8,47.2,40;15.5,52.2,50;18.6,57.4,45;21.7,62.3,35;24.0,65.2,30];
btk_atl_2023_014 = [12.2,47.5,45;15.7,52.5,50;20.5,57.6,40;23.6,62.2,25;25.2,64.8,20]; # TCR (days 1-3 only)
myvect = [myvect;my_atl_2023_014];
nhcvect = [nhcvect;nhc_atl_2023_014];
btkvect = [btkvect;btk_atl_2023_014];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 015 ... CINDY before 2023-06-23-09Z
# my at https://twitter.com/elioeFIN/status/1672144995980128258
# NHC at https://www.nhc.noaa.gov/archive/2023/al04/al042023.discus.005.shtml?

my_atl_2023_015 = [14.3,51.1,55;17.7,56.0,60;20.9,59.8,45;23.0,63.5,45];
nhc_atl_2023_015 = [14.3,51.2,50;17.7,56.5,50;20.9,61.4,40;23.5,65.0,35];
btk_atl_2023_015 = [14.6,51.2,50;19.4,56.4,45;23.0,61.0,30;24.7,64.5,20]; # TCR (days 1-2 only)
myvect = [myvect;my_atl_2023_015];
nhcvect = [nhcvect;nhc_atl_2023_015];
btkvect = [btkvect;btk_atl_2023_015];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 016 ... CINDY before 2023-06-24-21Z
# my at https://twitter.com/elioeFIN/status/1672685067355684866
# NHC at https://www.nhc.noaa.gov/archive/2023/al04/al042023.discus.011.shtml?

my_atl_2023_016 = [21.6,58.5,45;25.0,60.7,40];
nhc_atl_2023_016 = [21.8,58.8,40;25.5,61.4,35];
btk_atl_2023_016 = [21.6,58.8,40;24.0,63.1,25]; # TCR (day 1 only)
myvect = [myvect;my_atl_2023_016];
nhcvect = [nhcvect;nhc_atl_2023_016];
btkvect = [btkvect;btk_atl_2023_016];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Atl 017 ... CINDY before 2023-06-25-03Z
# my at https://twitter.com/elioeFIN/status/1672774063251509248
# NHC at https://www.nhc.noaa.gov/archive/2023/al04/al042023.discus.012.shtml?

my_atl_2023_017 = [22.3,59.2,45;25.8,61.5,35];
nhc_atl_2023_017 = [22.4,59.3,40;25.7,61.5,35];
btk_atl_2023_017 = [22.5,59.9,35;24.4,63.8,25]; # TCR (day 1 only)
myvect = [myvect;my_atl_2023_017];
nhcvect = [nhcvect;nhc_atl_2023_017];
btkvect = [btkvect;btk_atl_2023_017];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Epac 001 ... ADRIAN before 2023-06-27-21Z
# my at https://twitter.com/elioeFIN/status/1673771449490784256
# NHC at https://www.nhc.noaa.gov/archive/2023/ep01/ep012023.discus.001.shtml?

my_epac_2023_001 = [15.4,108.8,60;15.7,111.8,75;16.1,114.1,65;16.5,115.5,45;17.6,116.1,35];
nhc_epac_2023_001 = [15.4,108.8,65;15.6,111.6,75;16.0,113.7,70;16.4,115.1,50;17.3,115.0,35];
btk_epac_2023_001 = [15.3,108.1,70;16.2,110.4,75;17.3,112.5,90;18.5,114.7,50;19.7,117.1,25]; # TCR
myvect = [myvect;my_epac_2023_001];
nhcvect = [nhcvect;nhc_epac_2023_001];
btkvect = [btkvect;btk_epac_2023_001];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 002 ... ADRIAN before 2023-06-28-21Z
# my at https://twitter.com/elioeFIN/status/1674134158744997945
# NHC at https://www.nhc.noaa.gov/archive/2023/ep01/ep012023.discus.005.shtml?

my_epac_2023_002 = [15.7,111.0,75;16.6,113.8,70;17.4,115.8,50;18.2,116.3,25;19.5,116.9,20];
nhc_epac_2023_002 = [15.8,111.0,80;16.4,113.4,70;17.1,115.5,50;17.6,117.0,30;17.6,117.6,20];
btk_epac_2023_002 = [16.2,110.4,75;17.3,112.5,90;18.5,114.7,50;19.7,117.1,25;20.2,120.0,20]; # TCR
myvect = [myvect;my_epac_2023_002];
nhcvect = [nhcvect;nhc_epac_2023_002];
btkvect = [btkvect;btk_epac_2023_002];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 003 ... 92E before 2023-06-28-21Z
# my at https://twitter.com/elioeFIN/status/1674137909753008153
# (no NHC forecast)

# Epac 004 ... ADRIAN before 2023-06-29-03Z
# my at https://twitter.com/elioeFIN/status/1674223257086558208
# NHC at https://www.nhc.noaa.gov/archive/2023/ep01/ep012023.discus.006.shtml?

my_epac_2023_004 = [16.1,111.5,70;16.7,114.3,60;17.6,116.4,40;18.5,117.5,20;18.3,118.2,15];
nhc_epac_2023_004 = [15.8,111.4,80;16.4,114.0,70;17.1,116.0,45;17.3,116.7,30;17.3,117.5,20];
btk_epac_2023_004 = [16.5,111.0,80;17.6,113.1,80;18.8,115.2,45;19.9,117.8,25;20.1,120.6,20]; # TCR
myvect = [myvect;my_epac_2023_004];
nhcvect = [nhcvect;nhc_epac_2023_004];
btkvect = [btkvect;btk_epac_2023_004];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 005 ... 92E before 2023-06-29-03Z
# my at https://twitter.com/elioeFIN/status/1674228105609633793
# NHC at https://www.nhc.noaa.gov/archive/2023/ep02/ep022023.discus.001.shtml?

my_epac_2023_005 = [15.2,100.3,40;17.9,103.6,60];
nhc_epac_2023_005 = [15.4,100.1,35;17.9,103.7,55];
btk_epac_2023_005 = [15.4,99.9,45;18.4,103.7,65]; # TCR
myvect = [myvect;my_epac_2023_005];
nhcvect = [nhcvect;nhc_epac_2023_005];
btkvect = [btkvect;btk_epac_2023_005];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Epac 006 ... ADRIAN before 2023-06-29-15Z
# my at https://twitter.com/elioeFIN/status/1674406905446277122
# NHC at https://www.nhc.noaa.gov/archive/2023/ep01/ep012023.discus.008.shtml?

my_epac_2023_006 = [16.7,112.6,75;17.8,115.6,55;18.1,117.5,35;18.9,117.9,20;19.3,118.1,20];
nhc_epac_2023_006 = [16.6,112.7,75;17.3,115.0,60;17.8,116.8,35;18.1,118.3,25;18.0,119.5,20];
btk_epac_2023_006 = [17.0,111.9,90;18.2,114.2,55;19.4,116.4,30;20.1,119.3,20;19.9,121.7,15]; # TCR
myvect = [myvect;my_epac_2023_006];
nhcvect = [nhcvect;nhc_epac_2023_006];
btkvect = [btkvect;btk_epac_2023_006];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 007 ... 02E before 2023-06-29-15Z
# my at https://twitter.com/elioeFIN/status/1674415170435837956
# NHC at https://www.nhc.noaa.gov/archive/2023/ep02/ep022023.discus.003.shtml?

my_epac_2023_007 = [16.4,101.8,50;18.9,105.7,65];
nhc_epac_2023_007 = [16.5,101.9,55;19.3,105.6,65];
btk_epac_2023_007 = [16.8,101.8,70;20.0,105.6,50]; # TCR (except day 2)
myvect = [myvect;my_epac_2023_007];
nhcvect = [nhcvect;nhc_epac_2023_007];
btkvect = [btkvect;btk_epac_2023_007];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Epac 008 ... BEATRIZ before 2023-06-29-21Z
# my at https://twitter.com/elioeFIN/status/1674496497683931136
# NHC at https://www.nhc.noaa.gov/archive/2023/ep02/ep022023.discus.004.shtml?

my_epac_2023_008 = [16.7,102.2,60;19.3,105.4,60];
nhc_epac_2023_008 = [17.2,102.4,65;20.0,105.7,60];
btk_epac_2023_008 = [17.5,102.7,75;20.7,106.2,25]; # TCR (except day 2 self-made)
myvect = [myvect;my_epac_2023_008];
nhcvect = [nhcvect;nhc_epac_2023_008];
btkvect = [btkvect;btk_epac_2023_008];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Epac 009 ... ADRIAN before 2023-06-30-03Z
# my at https://twitter.com/elioeFIN/status/1674585443105484802
# NHC at https://www.nhc.noaa.gov/archive/2023/ep01/ep012023.discus.010.shtml?

my_epac_2023_009 = [17.7,113.7,70;18.9,116.3,40;18.9,118.4,30;19.5,120.0,20];
nhc_epac_2023_009 = [17.6,113.5,75;18.5,115.8,50;18.7,117.6,30;18.7,118.9,20];
btk_epac_2023_009 = [17.6,113.1,80;18.8,115.2,45;19.9,117.8,25;20.1,120.6,20]; # TCR
myvect = [myvect;my_epac_2023_009];
nhcvect = [nhcvect;nhc_epac_2023_009];
btkvect = [btkvect;btk_epac_2023_009];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Epac 010 ... BEATRIZ before 2023-06-30-03Z
# my at https://twitter.com/elioeFIN/status/1674590136674271232
# NHC at https://www.nhc.noaa.gov/archive/2023/ep02/ep022023.discus.005.shtml?

my_epac_2023_010 = [17.8,103.0,60];
nhc_epac_2023_010 = [17.9,103.2,65];
btk_epac_2023_010 = [18.4,103.7,65]; # TCR
myvect = [myvect;my_epac_2023_010];
nhcvect = [nhcvect;nhc_epac_2023_010];
btkvect = [btkvect;btk_epac_2023_010];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;2];

# Epac 011 ... ADRIAN before 2023-07-01-15Z
# my at https://twitter.com/elioeFIN/status/1675138870206255104
# NHC at https://www.nhc.noaa.gov/archive/2023/ep01/ep012023.discus.016.shtml?

my_epac_2023_011 = [19.4,116.5,30;20.2,120.1,20];
nhc_epac_2023_011 = [19.2,116.5,30;19.8,119.0,20];
btk_epac_2023_011 = [19.4,116.4,30;20.1,119.3,20]; # TCR
myvect = [myvect;my_epac_2023_011];
nhcvect = [nhcvect;nhc_epac_2023_011];
btkvect = [btkvect;btk_epac_2023_011];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Epac 012 ... 93E before 2023-07-07-03Z
# my at https://twitter.com/elioeFIN/status/1677132854717739008
# (no NHC advisory)

# Epac 013 ... 93E before 2023-07-07-15Z
# my at https://twitter.com/elioeFIN/status/1677318591107014659
# (no NHC advisory)

# Epac 014 ... 93E before 2023-07-07-21Z
# my at https://twitter.com/elioeFIN/status/1677395049821118499
# (no NHC advisory)

# Epac 015 ... 94E before 2023-07-10-21Z
# my at https://twitter.com/elioeFIN/status/1678489206279008257
# (no NHC advisory)

# Epac 016 ... 94E before 2023-07-11-21Z
# my at https://twitter.com/elioeFIN/status/1678842151407329286
# NHC at https://www.nhc.noaa.gov/archive/2023/ep03/ep032023.discus.001.shtml?

my_epac_2023_016 = [13.0,113.0,40;13.5,119.1,55;14.8,124.8,60;16.7,130.1,55;19.1,137.1,45];
nhc_epac_2023_016 = [12.9,113.1,40;13.2,118.8,60;14.3,124.6,75;15.7,130.6,70;16.8,137.0,55];
btk_epac_2023_016 = [12.4,112.8,55;12.7,118.0,70;13.7,123.9,110;14.9,129.7,90;16.0,135.6,60]; # TCR
myvect = [myvect;my_epac_2023_016];
nhcvect = [nhcvect;nhc_epac_2023_016];
btkvect = [btkvect;btk_epac_2023_016];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 017 ... 03E before 2023-07-12-03Z
# my at https://twitter.com/elioeFIN/status/1678933688522768385
# NHC at https://www.nhc.noaa.gov/archive/2023/ep03/ep032023.discus.002.shtml?

my_epac_2023_017 = [13.0,114.4,45;13.6,120.0,65;14.9,125.9,65;16.6,131.4,55;17.4,137.2,40];
nhc_epac_2023_017 = [12.9,114.5,45;13.4,120.1,65;14.6,126.0,75;16.0,132.5,70;17.0,138.5,55];
btk_epac_2023_017 = [12.4,114.3,60;13.0,119.7,85;14.0,125.3,100;15.2,131.2,80;16.4,137.2,55]; # TCR
myvect = [myvect;my_epac_2023_017];
nhcvect = [nhcvect;nhc_epac_2023_017];
btkvect = [btkvect;btk_epac_2023_017];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 018 ... CALVIN before 2023-07-12-15Z
# my at https://twitter.com/elioeFIN/status/1679117670581452802
# NHC at https://www.nhc.noaa.gov/archive/2023/ep03/ep032023.discus.004.shtml?

my_epac_2023_018 = [13.0,117.0,65;14.0,122.9,80;15.2,128.8,70;16.9,134.4,55;18.3,140.8,35];
nhc_epac_2023_018 = [12.9,117.1,65;13.8,122.8,80;15.0,128.9,75;16.1,135.2,65;17.3,141.5,50];
btk_epac_2023_018 = [12.5,116.6,65;13.4,122.6,105;14.6,128.2,90;15.7,134.0,65;16.7,140.5,45]; # TCR (Epac only)
myvect = [myvect;my_epac_2023_018];
nhcvect = [nhcvect;nhc_epac_2023_018];
btkvect = [btkvect;btk_epac_2023_018];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 019 ... CALVIN before 2023-07-13-09Z
# my at https://twitter.com/elioeFIN/status/1679392633834151936
# NHC at https://www.nhc.noaa.gov/archive/2023/ep03/ep032023.discus.007.shtml?

my_epac_2023_019 = [13.1,121.2,70;14.3,127.2,75;15.6,133.1,60;16.7,138.7,45;17.8,146.1,30];
nhc_epac_2023_019 = [13.2,121.0,80;14.4,126.7,80;15.7,132.6,70;16.8,138.9,55;17.7,145.7,45];
btk_epac_2023_019 = [13.1,121.3,95;14.4,126.7,90;15.5,132.6,75;16.6,138.8,50;17.3,146.5,40]; # TCR (Epac only)
myvect = [myvect;my_epac_2023_019];
nhcvect = [nhcvect;nhc_epac_2023_019];
btkvect = [btkvect;btk_epac_2023_019];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 020 ... CALVIN before 2023-07-13-15Z
# my at https://twitter.com/elioeFIN/status/1679476936832155651
# NHC at https://www.nhc.noaa.gov/archive/2023/ep03/ep032023.discus.008.shtml?

my_epac_2023_020 = [13.5,122.2,75;14.6,128.1,70;16.2,133.8,55;17.6,139.1,40;18.9,146.4,30];
nhc_epac_2023_020 = [13.5,122.1,80;14.7,127.8,80;16.0,133.9,70;17.0,140.4,55;17.9,147.6,45];
btk_epac_2023_020 = [13.4,122.6,105;14.6,128.2,90;15.7,134.0,65;16.7,140.5,45;17.4,148.5,40]; # TCR (Epac only)
myvect = [myvect;my_epac_2023_020];
nhcvect = [nhcvect;nhc_epac_2023_020];
btkvect = [btkvect;btk_epac_2023_020];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Atl 018 ... 94L before 2023-07-13-15Z
# my at https://twitter.com/elioeFIN/status/1679480873811361793
# (no NHC advisory)

# Epac 021 ... CALVIN before 2023-07-13-21Z
# my at https://twitter.com/elioeFIN/status/1679574323575570432
# NHC at https://www.nhc.noaa.gov/archive/2023/ep03/ep032023.discus.009.shtml?

my_epac_2023_021 = [13.8,123.8,80;15.1,130.0,70;16.4,135.7,55;17.5,141.9,40;18.5,150.2,30];
nhc_epac_2023_021 = [13.7,123.7,85;14.9,129.4,80;16.2,135.2,65;17.3,141.9,50;18.2,149.1,40];
btk_epac_2023_021 = [13.7,123.9,110;14.9,129.7,90;16.0,135.6,60;17.0,142.4,45;17.6,150.5,45]; # TCR (Epac only)
myvect = [myvect;my_epac_2023_021];
nhcvect = [nhcvect;nhc_epac_2023_021];
btkvect = [btkvect;btk_epac_2023_021];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 022 ... CALVIN before 2023-07-14-03Z
# my at https://twitter.com/elioeFIN/status/1679658221189906434
# NHC at https://www.nhc.noaa.gov/archive/2023/ep03/ep032023.discus.010.shtml?

my_epac_2023_022 = [14.3,125.6,85;15.7,131.9,70;16.9,138.0,55;17.9,144.7,40;19.2,152.5,30];
nhc_epac_2023_022 = [14.3,125.5,95;15.5,131.2,85;16.7,137.4,60;17.7,144.2,45;18.6,151.3,35];
btk_epac_2023_022 = [14.0,125.3,100;15.2,131.2,80;16.4,137.2,55;17.2,144.4,40;17.8,152.3,50]; # TCR (Epac only)
myvect = [myvect;my_epac_2023_022];
nhcvect = [nhcvect;nhc_epac_2023_022];
btkvect = [btkvect;btk_epac_2023_022];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Atl 019 ... 94L before 2023-07-14-03Z
# my at https://twitter.com/elioeFIN/status/1679661340024008704
# (no NHC advisory)

# Atl 020 ... DON before 2023-07-14-15Z
# my at https://twitter.com/elioeFIN/status/1679841731955642370
# NHC at https://www.nhc.noaa.gov/archive/2023/al05/al052023.discus.002.shtml?

my_atl_2023_020 = [35.9,47.9,45;38.5,47.8,40;39.0,44.3,35;36.2,40.5,40;33.4,39.3,50];
nhc_atl_2023_020 = [36.0,47.8,40;38.5,47.7,35;38.6,43.9,35;35.7,40.0,35;33.7,38.6,40];
btk_atl_2023_020 = [36.2,48.4,40;38.9,48.5,30;38.9,43.6,30;36.0,39.4,35;33.9,39.3,35]; # TCR
myvect = [myvect;my_atl_2023_020];
nhcvect = [nhcvect;nhc_atl_2023_020];
btkvect = [btkvect;btk_atl_2023_020];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 023 ... CALVIN before 2023-07-14-21Z
# my at https://twitter.com/elioeFIN/status/1679932985234079747
# NHC at https://www.nhc.noaa.gov/archive/2023/ep03/ep032023.discus.013.shtml?

my_epac_2023_023 = [15.0,129.5,90;16.2,136.0,65;17.1,142.1,50;18.2,148.6,35;19.4,156.8,30];
nhc_epac_2023_023 = [15.1,129.5,100;16.3,135.5,75;17.4,141.9,50;18.3,149.1,40;19.0,156.0,35];
btk_epac_2023_023 = [14.9,129.7,90;16.0,135.6,60;17.0,142.4,45;17.6,150.5,45;17.9,157.7,35]; # TCR (Epac only)
myvect = [myvect;my_epac_2023_023];
nhcvect = [nhcvect;nhc_epac_2023_023];
btkvect = [btkvect;btk_epac_2023_023];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Atl 021 ... DON before 2023-07-14-21Z
# my at https://twitter.com/elioeFIN/status/1679937023073763344
# NHC at https://www.nhc.noaa.gov/archive/2023/al05/al052023.discus.003.shtml?

my_atl_2023_021 = [36.5,48.8,40;38.8,47.9,35;38.0,44.1,35;34.7,41.2,40;32.9,40.5,45];
nhc_atl_2023_021 = [36.5,48.7,40;38.7,47.7,35;37.9,43.7,35;35.0,40.7,35;33.0,40.6,40];
btk_atl_2023_021 = [37.1,48.7,35;39.4,47.5,30;38.4,42.2,30;35.3,39.2,35;33.8,39.9,40]; # TCR
myvect = [myvect;my_atl_2023_021];
nhcvect = [nhcvect;nhc_atl_2023_021];
btkvect = [btkvect;btk_atl_2023_021];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 024 ... CALVIN before 2023-07-15-21Z
# my at https://twitter.com/elioeFIN/status/1680295049983139840
# NHC at https://www.nhc.noaa.gov/archive/2023/ep03/ep032023.discus.017.shtml?

my_epac_2023_024 = [16.3,135.9,65;17.1,143.6,45;18.2,149.6,35;19.1,156.6,30];
nhc_epac_2023_024 = [16.3,135.8,65;17.3,142.5,50;18.3,149.9,40;19.4,156.8,35];
btk_epac_2023_024 = [16.0,135.6,60;17.0,142.4,45;17.6,150.5,45;17.9,157.7,35]; # TCR (Epac only)
myvect = [myvect;my_epac_2023_024];
nhcvect = [nhcvect;nhc_epac_2023_024];
btkvect = [btkvect;btk_epac_2023_024];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Atl 022 ... DON before 2023-07-15-21Z
# my at https://twitter.com/elioeFIN/status/1680298723698520066
# NHC at https://www.nhc.noaa.gov/archive/2023/al05/al052023.discus.007.shtml?

my_atl_2023_022 = [39.2,47.8,35;38.6,43.6,35;35.2,40.9,30;32.9,41.0,35;33.1,42.5,45];
nhc_atl_2023_022 = [39.3,47.3,30;38.6,43.1,30;35.4,40.7,30;33.2,41.0,35;33.5,42.0,35];
btk_atl_2023_022 = [39.4,47.5,30;38.4,42.2,30;35.3,39.2,35;33.8,39.9,40;34.5,43.3,40]; # TCR
myvect = [myvect;my_atl_2023_022];
nhcvect = [nhcvect;nhc_atl_2023_022];
btkvect = [btkvect;btk_atl_2023_022];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 025 ... CALVIN before 2023-07-16-03Z
# my at https://twitter.com/elioeFIN/status/1680385674631864320
# NHC at https://www.nhc.noaa.gov/archive/2023/ep03/ep032023.discus.018.shtml?

my_epac_2023_025 = [16.5,137.6,65;17.3,144.7,45;18.4,151.3,40];
nhc_epac_2023_025 = [16.6,137.6,65;17.4,144.4,50;18.4,151.6,40];
btk_epac_2023_025 = [16.4,137.2,55;17.2,144.4,40;17.8,152.3,50]; # TCR (Epac only)
myvect = [myvect;my_epac_2023_025];
nhcvect = [nhcvect;nhc_epac_2023_025];
btkvect = [btkvect;btk_epac_2023_025];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Atl 023 ... DON before 2023-07-16-03Z
# my at https://twitter.com/elioeFIN/status/1680389826086928384
# NHC at https://www.nhc.noaa.gov/archive/2023/al05/al052023.discus.008.shtml?

my_atl_2023_023 = [39.6,46.8,35;38.1,42.8,30;34.5,41.6,30;32.9,42.1,35;33.8,43.1,40];
nhc_atl_2023_023 = [39.7,46.6,30;38.2,42.6,30;35.1,41.0,30;33.5,41.6,35;34.2,42.8,35];
btk_atl_2023_023 = [39.5,46.4,30;37.8,40.9,35;34.6,39.1,35;33.8,40.6,45;34.6,44.2,40]; # TCR
myvect = [myvect;my_atl_2023_023];
nhcvect = [nhcvect;nhc_atl_2023_023];
btkvect = [btkvect;btk_atl_2023_023];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 024 ... DON before 2023-07-16-15Z
# my at https://twitter.com/elioeFIN/status/1680574688227995650
# NHC at https://www.nhc.noaa.gov/archive/2023/al05/al052023.discus.010.shtml?

my_atl_2023_024 = [39.1,44.8,35;36.1,41.5,35;33.2,42.4,30;32.7,44.8,40;34.5,47.2,45];
nhc_atl_2023_024 = [38.9,44.6,30;36.2,41.2,30;33.5,41.8,30;33.0,43.6,35;35.0,47.0,35];
btk_atl_2023_024 = [38.9,43.6,30;36.0,39.4,35;33.9,39.3,35;34.3,42.2,40;35.4,46.0,45]; # TCR
myvect = [myvect;my_atl_2023_024];
nhcvect = [nhcvect;nhc_atl_2023_024];
btkvect = [btkvect;btk_atl_2023_024];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 026 ... CALVIN before 2023-07-16-21Z
# my at https://twitter.com/elioeFIN/status/1680655339203510272
# NHC at https://www.nhc.noaa.gov/archive/2023/ep03/ep032023.discus.021.shtml?

my_epac_2023_026 = [17.2,142.0,40;18.0,149.6,35;19.1,156.5,30];
nhc_epac_2023_026 = [17.1,142.3,40;18.1,149.7,35;19.2,157.0,35];
btk_epac_2023_026 = [17.0,142.4,45;17.6,150.5,45;17.9,157.7,35]; # TCR exists only for EPac
myvect = [myvect;my_epac_2023_026];
nhcvect = [nhcvect;nhc_epac_2023_026];
btkvect = [btkvect;btk_epac_2023_026];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Atl 025 ... DON before 2023-07-16-21Z
# my at https://twitter.com/elioeFIN/status/1680661982674919424
# NHC at https://www.nhc.noaa.gov/archive/2023/al05/al052023.discus.011.shtml?

my_atl_2023_025 = [38.4,43.2,35;34.9,41.3,30;32.3,42.5,30;33.6,46.0,40;35.1,49.4,45];
nhc_atl_2023_025 = [38.5,42.9,30;35.3,40.6,30;33.0,41.5,30;33.4,44.3,35;35.5,48.0,35];
btk_atl_2023_025 = [38.4,42.2,30;35.3,39.2,35;33.8,39.9,40;34.5,43.3,40;36.2,47.0,45]; # TCR
myvect = [myvect;my_atl_2023_025];
nhcvect = [nhcvect;nhc_atl_2023_025];
btkvect = [btkvect;btk_atl_2023_025];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 026 ... DON before 2023-07-17-21Z
# my at https://twitter.com/elioeFIN/status/1681021374746222592
# NHC at https://www.nhc.noaa.gov/archive/2023/al05/al052023.discus.015.shtml?

my_atl_2023_026 = [35.4,39.4,35;33.5,40.9,35;34.1,44.4,40;36.4,48.3,50;40.2,51.8,55];
nhc_atl_2023_026 = [35.4,39.4,30;33.6,40.5,35;34.4,43.0,40;36.7,46.8,45;40.5,50.0,45];
btk_atl_2023_026 = [35.3,39.2,35;33.8,39.9,40;34.5,43.3,40;36.2,47.0,45;39.5,50.1,65]; # TCR
myvect = [myvect;my_atl_2023_026];
nhcvect = [nhcvect;nhc_atl_2023_026];
btkvect = [btkvect;btk_atl_2023_026];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 027 ... DON before 2023-07-18-21Z
# my at https://twitter.com/elioeFIN/status/1681384894914543616
# NHC at https://www.nhc.noaa.gov/archive/2023/al05/al052023.discus.019.shtml?

my_atl_2023_027 = [33.7,40.1,40;33.9,43.4,45;36.0,47.2,45;40.4,50.2,50;45.5,49.0,40];
nhc_atl_2023_027 = [33.7,40.0,35;34.3,42.6,40;36.5,46.3,45;40.5,49.5,45;46.0,47.5,40];
btk_atl_2023_027 = [33.8,39.9,40;34.5,43.3,40;36.2,47.0,45;39.5,50.1,65;44.7,47.3,50]; # TCR
myvect = [myvect;my_atl_2023_027];
nhcvect = [nhcvect;nhc_atl_2023_027];
btkvect = [btkvect;btk_atl_2023_027];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 028 ... DON before 2023-07-19-03Z
# my at https://twitter.com/elioeFIN/status/1681470431109300224
# NHC at https://www.nhc.noaa.gov/archive/2023/al05/al052023.discus.020.shtml?

my_atl_2023_028 = [33.6,40.6,40;34.2,44.2,45;37.0,48.4,40;41.9,50.4,45;47.3,46.0,35];
nhc_atl_2023_028 = [33.5,40.5,40;34.6,43.5,45;37.3,47.7,45;42.1,49.6,45;47.2,44.6,35];
btk_atl_2023_028 = [33.8,40.6,45;34.6,44.2,40;36.9,48.2,45;40.7,49.9,65;45.9,45.7,45]; # TCR
myvect = [myvect;my_atl_2023_028];
nhcvect = [nhcvect;nhc_atl_2023_028];
btkvect = [btkvect;btk_atl_2023_028];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 029 ... DON before 2023-07-19-21Z
# my at https://twitter.com/elioeFIN/status/1681749638477410306
# NHC at https://www.nhc.noaa.gov/archive/2023/al05/al052023.discus.023.shtml?

my_atl_2023_029 = [34.0,42.9,45;35.5,46.4,45;38.5,49.8,45;42.3,49.3,45;45.6,44.0,30];
nhc_atl_2023_029 = [34.1,42.7,50;35.9,46.1,50;39.0,48.6,45;43.0,48.0,45;45.5,44.0,35];
btk_atl_2023_029 = [34.5,43.3,40;36.2,47.0,45;39.5,50.1,65;44.7,47.3,50;47.8,39.7,40]; # TCR
myvect = [myvect;my_atl_2023_029];
nhcvect = [nhcvect;nhc_atl_2023_029];
btkvect = [btkvect;btk_atl_2023_029];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 030 ... DON before 2023-07-20-21Z
# my at https://twitter.com/elioeFIN/status/1682106948898963457
# NHC at https://www.nhc.noaa.gov/archive/2023/al05/al052023.discus.027.shtml?

my_atl_2023_030 = [36.0,47.2,45;39.5,50.7,45;44.6,50.6,35;49.6,43.2,30];
nhc_atl_2023_030 = [36.2,47.1,45;39.7,50.4,45;44.6,50.4,35;49.7,42.4,30];
btk_atl_2023_030 = [36.2,47.0,45;39.5,50.1,65;44.7,47.3,50;47.8,39.7,40]; # TCR
myvect = [myvect;my_atl_2023_030];
nhcvect = [nhcvect;nhc_atl_2023_030];
btkvect = [btkvect;btk_atl_2023_030];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Wpac 033 ... TD/98W before 2023-07-20-21Z
# my at https://twitter.com/elioeFIN/status/1682112486391119873
# (no JTWC forecast)

# Atl 031 ... DON before 2023-07-21-03Z
# my at https://twitter.com/elioeFIN/status/1682199104426786817
# NHC at https://www.nhc.noaa.gov/archive/2023/al05/al052023.discus.028.shtml?

my_atl_2023_031 = [36.7,48.1,45;40.7,51.1,45;45.8,49.5,25];
nhc_atl_2023_031 = [36.9,48.1,45;41.1,50.9,40;46.2,49.6,30];
btk_atl_2023_031 = [36.9,48.2,45;40.7,49.9,65;45.9,45.7,45]; # TCR
myvect = [myvect;my_atl_2023_031];
nhcvect = [nhcvect;nhc_atl_2023_031];
btkvect = [btkvect;btk_atl_2023_031];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Atl 032 ... DON before 2023-07-21-15Z
# my at https://twitter.com/elioeFIN/status/1682379176190287873
# NHC at https://www.nhc.noaa.gov/archive/2023/al05/al052023.discus.030.shtml?

my_atl_2023_032 = [38.7,50.0,45;43.5,50.6,40;48.6,45.3,25];
nhc_atl_2023_032 = [38.8,49.9,45;43.7,50.6,40;48.4,45.5,30];
btk_atl_2023_032 = [38.5,49.9,55;43.3,48.5,55;47.3,41.9,40]; # TCR
myvect = [myvect;my_atl_2023_032];
nhcvect = [nhcvect;nhc_atl_2023_032];
btkvect = [btkvect;btk_atl_2023_032];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Wpac 034 ... DOKSURI before 2023-07-21-21Z
# my at https://twitter.com/elioeFIN/status/1682468856936144901

my_wpac_2023_034 = [14.4,130.1,50;15.0,128.2,75;17.7,126.9,95;20.8,125.3,110;25.5,123.4,105];
nhc_wpac_2023_034 = [14.7,129.8,50;15.4,128.2,80;17.4,126.8,95;20.7,125.0,105;24.0,122.6,105];
btk_wpac_2023_034 = [14.6,129.5,45;15.1,127.0,90;17.0,125.1,125;19.0,121.5,120;20.0,120.0,80]; # JTWC best track
myvect = [myvect;my_wpac_2023_034];
nhcvect = [nhcvect;nhc_wpac_2023_034];
btkvect = [btkvect;btk_wpac_2023_034];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Atl 033 ... DON before 2023-07-21-21Z
# my at https://twitter.com/elioeFIN/status/1682472202724159495
# NHC at https://www.nhc.noaa.gov/archive/2023/al05/al052023.discus.031.shtml?

my_atl_2023_033 = [39.6,50.3,55;44.3,48.1,45;47.4,41.2,30];
nhc_atl_2023_033 = [40.0,50.2,55;44.6,48.6,40;48.7,41.0,30];
btk_atl_2023_033 = [39.5,50.1,65;44.7,47.3,50;47.8,39.7,40]; # TCR
myvect = [myvect;my_atl_2023_033];
nhcvect = [nhcvect;nhc_atl_2023_033];
btkvect = [btkvect;btk_atl_2023_033];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Wpac 035 ... DOKSURI before 2023-07-22-21Z
# my at https://twitter.com/elioeFIN/status/1682831008972910592

my_wpac_2023_035 = [15.2,127.5,70;17.5,127.5,95;20.4,123.4,105;23.0,121.1,100;27.0,119.6,65];
nhc_wpac_2023_035 = [15.3,127.9,70;17.5,126.0,95;20.2,123.8,110;23.4,121.6,115;26.9,119.5,75];
btk_wpac_2023_035 = [15.1,127.0,90;17.0,125.1,125;19.0,121.5,120;20.0,120.0,80;22.7,119.0,90]; # JTWC best track
myvect = [myvect;my_wpac_2023_035];
nhcvect = [nhcvect;nhc_wpac_2023_035];
btkvect = [btkvect;btk_wpac_2023_035];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 036 ... DOKSURI before 2023-07-23-21Z
# my at https://twitter.com/elioeFIN/status/1683192226929692679

my_wpac_2023_036 = [17.0,125.0,110;19.0,121.8,130;21.2,120.6,105;24.7,118.6,70;29.3,117.1,35];
nhc_wpac_2023_036 = [17.1,124.8,125;19.3,121.9,120;21.2,120.2,105;24.2,118.4,80;28.0,116.6,50];
btk_wpac_2023_036 = [17.0,125.1,125;19.0,121.5,120;20.0,120.0,80;22.7,119.0,90;29.0,117.2,35]; # JTWC best track
myvect = [myvect;my_wpac_2023_036];
nhcvect = [nhcvect;nhc_wpac_2023_036];
btkvect = [btkvect;btk_wpac_2023_036];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 037 ... DOKSURI before 2023-07-24-21Z
# my at https://twitter.com/elioeFIN/status/1683563941052416003

my_wpac_2023_037 = [18.8,121.8,115;20.5,120.1,105;24.1,118.4,80;27.9,116.3,40];
nhc_wpac_2023_037 = [19.0,122.3,125;20.8,120.1,105;23.8,118.1,70;27.3,116.1,45];
btk_wpac_2023_037 = [19.0,121.5,120;20.0,120.0,80;22.7,119.0,90;29.0,117.2,35]; # JTWC best track
myvect = [myvect;my_wpac_2023_037];
nhcvect = [nhcvect;nhc_wpac_2023_037];
btkvect = [btkvect;btk_wpac_2023_037];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Wpac 038 ... DOKSURI before 2023-07-25-15Z
# my at https://twitter.com/elioeFIN/status/1683840763510284292

my_wpac_2023_038 = [20.0,120.6,105;22.7,118.6,85;26.5,116.5,40];
nhc_wpac_2023_038 = [20.5,120.2,105;23.1,118.0,75;26.5,116.1,45];
btk_wpac_2023_038 = [19.6,120.6,90;21.8,119.1,100;27.4,117.9,45]; # JTWC best track
myvect = [myvect;my_wpac_2023_038];
nhcvect = [nhcvect;nhc_wpac_2023_038];
btkvect = [btkvect;btk_wpac_2023_038];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Wpac 039 ... DOKSURI before 2023-07-25-21Z
# my at https://twitter.com/elioeFIN/status/1683916966656966656

my_wpac_2023_039 = [20.3,119.8,100;24.3,118.4,75;29.0,115.8,40];
nhc_wpac_2023_039 = [20.5,119.7,105;23.5,117.8,75;27.7,115.5,40];
btk_wpac_2023_039 = [20.0,120.0,80;22.7,119.0,90;29.0,117.2,35]; # JTWC best track
myvect = [myvect;my_wpac_2023_039];
nhcvect = [nhcvect;nhc_wpac_2023_039];
btkvect = [btkvect;btk_wpac_2023_039];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Wpac 040 ... TD / 91W before 2023-07-26-21Z
# my at https://twitter.com/elioeFIN/status/1684284155528351747
# (no JTWC advisory)

# Wpac 041 ... KHANUN before 2023-07-27-21Z
# my at https://twitter.com/elioeFIN/status/1684651613489643520

my_wpac_2023_041 = [15.6,135.6,40;19.4,134.3,65;24.2,131.4,95;27.6,126.8,120;30.9,123.1,100];
nhc_wpac_2023_041 = [15.7,134.3,45;19.2,133.1,60;23.9,130.3,90;27.0,125.6,110;29.4,121.5,100];
btk_wpac_2023_041 = [14.6,134.7,45;17.8,132.9,55;21.2,132.2,105;24.1,130.2,115;25.6,127.4,115]; # JTWC best track
myvect = [myvect;my_wpac_2023_041];
nhcvect = [nhcvect;nhc_wpac_2023_041];
btkvect = [btkvect;btk_wpac_2023_041];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 042 ... KHANUN before 2023-07-28-15Z
# my at https://twitter.com/elioeFIN/status/1684929123334938624

my_wpac_2023_042 = [17.9,133.7,45;22.7,131.5,75;27.0,128.0,100;28.5,123.4,100;31.8,120.3,70];
nhc_wpac_2023_042 = [17.9,134.0,45;22.5,131.9,60;26.0,127.9,100;28.8,123.8,105;31.4,120.3,75];
btk_wpac_2023_042 = [16.9,133.2,50;20.4,132.4,90;23.5,131.0,115;25.3,128.0,120;26.2,125.6,100]; # JTWC best track
myvect = [myvect;my_wpac_2023_042];
nhcvect = [nhcvect;nhc_wpac_2023_042];
btkvect = [btkvect;btk_wpac_2023_042];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 043 ... KHANUN before 2023-07-28-21Z
# my at https://twitter.com/elioeFIN/status/1685010727726174208

my_wpac_2023_043 = [18.8,132.9,50;23.2,131.0,70;27.2,128.0,95;29.0,123.5,100;31.6,121.1,65];
nhc_wpac_2023_043 = [18.7,133.4,50;23.0,131.2,70;26.4,127.3,90;28.7,123.3,80;31.5,119.5,55];
btk_wpac_2023_043 = [17.8,132.9,55;21.2,132.2,105;24.1,130.2,115;25.6,127.4,115;26.5,125.0,100]; # JTWC best track
myvect = [myvect;my_wpac_2023_043];
nhcvect = [nhcvect;nhc_wpac_2023_043];
btkvect = [btkvect;btk_wpac_2023_043];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Atl 034 ... 96L before 2023-07-29-21Z
# my at https://twitter.com/elioeFIN/status/1685370380846854145
# (no NHC advisory)

# Wpac 044 ... KHANUN before 2023-07-29-21Z
# my at https://twitter.com/elioeFIN/status/1685375206758432769

my_wpac_2023_044 = [22.2,131.8,70;26.0,128.7,85;27.6,124.9,95;29.3,121.7,75;30.8,119.8,45];
nhc_wpac_2023_044 = [21.7,131.3,75;25.1,127.9,90;27.1,124.1,95;28.3,120.9,65;30.2,117.7,40];
btk_wpac_2023_044 = [21.2,132.2,105;24.1,130.2,115;25.6,127.4,115;26.5,125.0,100;27.0,124.3,70]; # JTWC best track
myvect = [myvect;my_wpac_2023_044];
nhcvect = [nhcvect;nhc_wpac_2023_044];
btkvect = [btkvect;btk_wpac_2023_044];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Epac 027 ... 96E before 2023-07-30-21Z
# my at https://twitter.com/elioeFIN/status/1685733106374885376
# (no NHC advisory)

# Wpac 045 ... KHANUN before 2023-07-31-21Z
# my at https://twitter.com/elioeFIN/status/1686093895648628736

my_wpac_2023_045 = [25.6,127.4,115;27.0,124.9,105;27.9,122.9,80;29.0,122.8,65;29.2,123.4,70];
nhc_wpac_2023_045 = [25.6,127.7,115;26.4,125.5,100;26.8,124.8,80;27.5,125.8,65;27.9,127.1,65];
btk_wpac_2023_045 = [25.6,127.4,115;26.5,125.0,100;27.0,124.3,70;27.7,126.4,50;27.9,128.9,50]; # JTWC best track
myvect = [myvect;my_wpac_2023_045];
nhcvect = [nhcvect;nhc_wpac_2023_045];
btkvect = [btkvect;btk_wpac_2023_045];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Epac 028 ... 96E before 2023-07-31-21Z
# my at https://twitter.com/elioeFIN/status/1686099705363673088
# NHC at https://www.nhc.noaa.gov/archive/2023/ep05/ep052023.discus.001.shtml?

my_epac_2023_028 = [15.7,108.8,40;15.3,114.1,50;14.5,119.3,65;13.5,124.9,75;13.2,130.9,75];
nhc_epac_2023_028 = [15.8,109.0,40;15.1,114.3,65;14.3,119.3,85;13.3,125.1,90;12.7,130.9,90];
btk_epac_2023_028 = [16.1,109.4,55;15.5,114.9,90;14.5,121.0,105;13.8,127.7,100;13.3,134.0,115]; # TCR
myvect = [myvect;my_epac_2023_028];
nhcvect = [nhcvect;nhc_epac_2023_028];
btkvect = [btkvect;btk_epac_2023_028];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 029 ... DORA before 2023-08-01-21Z
# my at https://twitter.com/elioeFIN/status/1686459148085366784
# NHC at https://www.nhc.noaa.gov/archive/2023/ep05/ep052023.discus.005.shtml?

my_epac_2023_029 = [15.9,115.0,90;15.4,121.1,95;14.5,127.3,85;13.6,133.4,75;12.5,139.5,65];
nhc_epac_2023_029 = [15.9,115.1,90;15.0,121.0,110;13.9,127.1,100;13.2,133.5,95;12.5,139.5,90];
btk_epac_2023_029 = [15.5,114.9,90;14.5,121.0,105;13.8,127.7,100;13.3,134.0,115;12.9,141.2,120]; # TCR (Epac only)
myvect = [myvect;my_epac_2023_029];
nhcvect = [nhcvect;nhc_epac_2023_029];
btkvect = [btkvect;btk_epac_2023_029];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 030 ... DORA before 2023-08-02-03Z
# my at https://twitter.com/elioeFIN/status/1686545976738140160
# NHC at https://www.nhc.noaa.gov/archive/2023/ep05/ep052023.discus.006.shtml?

my_epac_2023_030 = [16.0,116.3,95;15.1,122.5,95;14.1,128.7,80;13.6,135.1,70;12.7,140.8,65];
nhc_epac_2023_030 = [15.8,116.4,95;15.0,122.3,105;14.0,128.7,95;13.1,134.9,85;12.7,140.8,80];
btk_epac_2023_030 = [15.3,116.2,110;14.2,122.6,120;13.7,129.3,90;13.2,135.6,130;12.7,143.1,120]; # TCR (Epac only)
myvect = [myvect;my_epac_2023_030];
nhcvect = [nhcvect;nhc_epac_2023_030];
btkvect = [btkvect;btk_epac_2023_030];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 031 ... DORA before 2023-08-02-09Z
# my at https://twitter.com/elioeFIN/status/1686635376285188096
# NHC at https://www.nhc.noaa.gov/archive/2023/ep05/ep052023.discus.007.shtml?

my_epac_2023_031 = [15.5,117.4,110;14.8,123.8,95;14.0,130.0,80;13.0,135.9,75;12.4,142.1,65];
nhc_epac_2023_031 = [15.4,117.4,110;14.4,123.5,100;13.5,130.0,85;12.9,136.2,80;12.7,142.6,75];
btk_epac_2023_031 = [15.1,117.7,115;14.1,124.3,115;13.5,130.8,90;13.1,137.4,130;12.6,145.2,120]; # TCR (Epac only)
myvect = [myvect;my_epac_2023_031];
nhcvect = [nhcvect;nhc_epac_2023_031];
btkvect = [btkvect;btk_epac_2023_031];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 032 ... DORA before 2023-08-02-21Z
# my at https://twitter.com/elioeFIN/status/1686816539280818196
# NHC at https://www.nhc.noaa.gov/archive/2023/ep05/ep052023.discus.009.shtml?

my_epac_2023_032 = [15.0,121.1,105;14.7,127.6,80;14.0,133.7,70;13.0,140.0,70;13.2,146.7,55];
nhc_epac_2023_032 = [14.9,120.7,115;14.1,127.1,95;13.3,133.3,80;12.6,139.8,80;12.5,146.9,75];
btk_epac_2023_032 = [14.5,121.0,105;13.8,127.7,100;13.3,134.0,115;12.9,141.2,120;12.3,149.3,115]; # TCR (Epac only)
myvect = [myvect;my_epac_2023_032];
nhcvect = [nhcvect;nhc_epac_2023_032];
btkvect = [btkvect;btk_epac_2023_032];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Wpac 046 ... KHANUN before 2023-08-02-21Z
# my at https://twitter.com/elioeFIN/status/1686821363875463175

my_wpac_2023_046 = [26.6,123.6,95;27.4,125.2,80;28.7,127.8,70;29.1,129.8,65;31.5,130.6,70];
nhc_wpac_2023_046 = [27.0,124.1,80;27.4,125.5,65;27.8,128.0,60;28.5,130.1,65;29.5,131.9,65];
btk_wpac_2023_046 = [27.0,124.3,70;27.7,126.4,50;27.9,128.9,50;27.7,131.0,50;28.7,131.0,50]; # JTWC best track
myvect = [myvect;my_wpac_2023_046];
nhcvect = [nhcvect;nhc_wpac_2023_046];
btkvect = [btkvect;btk_wpac_2023_046];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Epac 033 ... DORA before 2023-08-03-03Z
# my at https://twitter.com/elioeFIN/status/1686909640594923521
# NHC at https://www.nhc.noaa.gov/archive/2023/ep05/ep052023.discus.010.shtml?

my_epac_2023_033 = [14.5,122.4,115;13.8,128.9,85;13.2,135.1,80;12.8,141.7,75;12.7,148.7,65];
nhc_epac_2023_033 = [14.7,122.2,115;13.9,128.5,90;13.2,134.8,85;12.9,141.5,80;13.0,149.0,75];
btk_epac_2023_033 = [14.2,122.6,120;13.7,129.3,90;13.2,135.6,130;12.7,143.1,120;12.1,151.3,115]; # TCR (Epac only)
myvect = [myvect;my_epac_2023_033];
nhcvect = [nhcvect;nhc_epac_2023_033];
btkvect = [btkvect;btk_epac_2023_033];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 034 ... DORA before 2023-08-03-21Z
# my at https://twitter.com/elioeFIN/status/1687178718538543104
# NHC at https://www.nhc.noaa.gov/archive/2023/ep05/ep052023.discus.013.shtml?

my_epac_2023_034 = [13.7,127.3,90;13.7,134.0,80;13.1,140.4,75;12.7,147.5,70;12.7,155.2,55];
nhc_epac_2023_034 = [13.8,127.4,100;13.3,133.5,85;12.8,140.4,85;12.5,148.0,80;12.5,155.5,75];
btk_epac_2023_034 = [13.8,127.7,100;13.3,134.0,115;12.9,141.2,120;12.3,149.3,115;11.5,157.1,115]; # TCR (Epac only)
myvect = [myvect;my_epac_2023_034];
nhcvect = [nhcvect;nhc_epac_2023_034];
btkvect = [btkvect;btk_epac_2023_034];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Wpac 047 ... KHANUN before 2023-08-03-21Z
# my at https://twitter.com/elioeFIN/status/1687183780769918976

my_wpac_2023_047 = [27.1,125.8,55;28.3,128.6,50;29.1,131.1,55;30.6,131.5,75;33.3,131.5,85];
nhc_wpac_2023_047 = [27.4,125.9,60;27.7,128.8,55;28.3,131.3,60;29.7,132.5,65;31.6,133.0,70];
btk_wpac_2023_047 = [27.7,126.4,55;28.0,128.9,50;27.7,131.0,50;28.7,131.0,50;30.4,129.8,50]; # JTWC best track
myvect = [myvect;my_wpac_2023_047];
nhcvect = [nhcvect;nhc_wpac_2023_047];
btkvect = [btkvect;btk_wpac_2023_047];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# EPac 035 ... DORA before 2023-08-04-03Z
# my at https://twitter.com/elioeFIN/status/1687268500895588352
# NHC at https://www.nhc.noaa.gov/archive/2023/ep05/ep052023.discus.014.shtml?

my_epac_2023_035 = [13.6,129.1,100;13.1,135.4,90;12.5,142.1,90;12.3,149.5,75;12.4,156.9,60];
nhc_epac_2023_035 = [13.6,128.8,105;13.0,135.0,95;12.6,141.8,95;12.4,149.4,90;12.7,157.6,80];
btk_epac_2023_035 = [13.7,129.3,90;13.2,135.6,130;12.7,143.1,120;12.1,151.3,115;11.4,159.2,115]; # TCR (Epac only)
myvect = [myvect;my_epac_2023_035];
nhcvect = [nhcvect;nhc_epac_2023_035];
btkvect = [btkvect;btk_epac_2023_035];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Wpac 048 ... KHANUN before 2023-08-04-03Z
# my at https://twitter.com/elioeFIN/status/1687283606916370432

my_wpac_2023_048 = [27.5,126.6,50;28.1,129.3,55;29.3,131.8,65;30.7,132.2,65;33.7,131.9,75];
nhc_wpac_2023_048 = [27.6,126.6,55;27.8,129.4,55;28.4,131.6,60;29.8,132.4,60;31.6,132.7,60];
btk_wpac_2023_048 = [27.8,127.0,50;27.8,129.7,50;27.9,131.2,50;29.0,130.9,45;30.9,129.5,55]; # JTWC best track
myvect = [myvect;my_wpac_2023_048];
nhcvect = [nhcvect;nhc_wpac_2023_048];
btkvect = [btkvect;btk_wpac_2023_048];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Epac 036 ... DORA before 2023-08-04-15Z
# my at https://twitter.com/elioeFIN/status/1687459528244146176
# NHC at https://www.nhc.noaa.gov/archive/2023/ep05/ep052023.discus.016.shtml?

my_epac_2023_036 = [13.8,132.5,80;13.6,139.6,85;13.1,146.5,75;12.8,154.0,70;13.6,163.0,50];
nhc_epac_2023_036 = [13.7,132.4,90;13.2,139.1,90;12.9,146.3,85;13.0,154.5,80;13.0,162.0,75];
btk_epac_2023_036 = [13.4,132.5,95;13.0,139.2,125;12.4,147.3,115;11.5,155.2,115;11.4,163.1,115]; # TCR (Epac only)
myvect = [myvect;my_epac_2023_036];
nhcvect = [nhcvect;nhc_epac_2023_036];
btkvect = [btkvect;btk_epac_2023_036];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 037 ... DORA before 2023-08-04-21Z
# my at https://twitter.com/elioeFIN/status/1687541120404803584
# NHC at https://www.nhc.noaa.gov/archive/2023/ep05/ep052023.discus.017.shtml?

my_epac_2023_037 = [13.6,134.2,90;13.2,141.4,85;12.9,148.5,80;12.4,156.6,65;12.7,164.4,55];
nhc_epac_2023_037 = [13.5,134.0,85;13.1,141.0,85;12.8,148.4,85;12.5,156.5,80;13.0,164.0,75];
btk_epac_2023_037 = [13.3,134.0,115;12.9,141.2,120;12.3,149.3,115;11.5,157.1,115;11.5,165.1,120]; # TCR (Epac only)
myvect = [myvect;my_epac_2023_037];
nhcvect = [nhcvect;nhc_epac_2023_037];
btkvect = [btkvect;btk_epac_2023_037];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 038 ... 97E before 2023-08-04-21Z
# my at https://twitter.com/elioeFIN/status/1687544628487053312
# (no NHC advisory)

# Wpac 049 ... KHANUN before 2023-08-04-21Z
# my at https://twitter.com/elioeFIN/status/1687550094806003714

my_wpac_2023_049 = [28.2,128.7,50;28.4,131.1,55;29.8,131.0,50;32.1,130.3,50;37.1,129.5,55];
nhc_wpac_2023_049 = [28.0,129.0,55;28.4,131.3,60;30.0,131.8,65;32.2,131.2,60;35.9,130.7,50];
btk_wpac_2023_049 = [27.9,128.9,50;27.7,131.0,50;28.7,131.0,50;30.4,129.8,50;33.6,128.7,55]; # JTWC best track
myvect = [myvect;my_wpac_2023_049];
nhcvect = [nhcvect;nhc_wpac_2023_049];
btkvect = [btkvect;btk_wpac_2023_049];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Epac 039 ... DORA before 2023-08-05-21Z
# my at https://twitter.com/elioeFIN/status/1687904402546237440
# NHC at https://www.nhc.noaa.gov/archive/2023/ep05/ep052023.discus.022.shtml?

my_epac_2023_039 = [12.9,140.8,110;12.8,148.6,85;12.6,156.0,75;13.0,163.8,55;14.1,171.5,55];
nhc_epac_2023_039 = [12.9,140.9,110;12.5,148.3,90;12.3,156.2,80;12.5,164.0,70;13.5,171.5,65];
btk_epac_2023_039 = [12.9,141.2,120;12.3,149.3,115;11.5,157.1,115;11.5,165.1,120;12.5,172.2,105]; # TCR exists only for Epac
myvect = [myvect;my_epac_2023_039];
nhcvect = [nhcvect;nhc_epac_2023_039];
btkvect = [btkvect;btk_epac_2023_039];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 040 ... 06E before 2023-08-05-21Z
# my at https://twitter.com/elioeFIN/status/1687907748933976064
# NHC at https://www.nhc.noaa.gov/archive/2023/ep06/ep062023.discus.002.shtml?

my_epac_2023_040 = [21.9,111.9,55;24.8,117.4,40;26.4,120.5,20;28.3,120.2,15];
nhc_epac_2023_040 = [22.0,112.0,50;24.6,118.0,45;26.2,121.0,30;27.5,121.1,25];
btk_epac_2023_040 = [22.1,112.2,60;24.9,119.2,30;26.1,122.8,20;27.4,121.7,15]; # TCR
myvect = [myvect;my_epac_2023_040];
nhcvect = [nhcvect;nhc_epac_2023_040];
btkvect = [btkvect;btk_epac_2023_040];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Cpac 01 ... DORA before 2023-08-06-21Z
# my at https://twitter.com/elioeFIN/status/1688270609153667072
# CPHC at https://www.nhc.noaa.gov/archive/2023/ep05/ep052023.discus.026.shtml?

my_cpac_2023_01 = [12.5,148.5,100;12.5,156.7,85;12.9,163.3,75;13.8,171.7,65;15.7,179.2,50];
nhc_cpac_2023_01 = [12.6,148.7,110;12.3,156.2,95;12.7,163.9,85;13.9,171.3,80;15.8,178.1,75];
btk_cpac_2023_01 = [12.3,149.3,115;11.5,157.1,115;11.5,165.1,120;12.5,172.2,105;14.8,178.6,95];
myvect = [myvect;my_cpac_2023_01];
nhcvect = [nhcvect;nhc_cpac_2023_01];
btkvect = [btkvect;btk_cpac_2023_01];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Epac 041 ... EUGENE before 2023-08-06-21Z
# my at https://twitter.com/elioeFIN/status/1688272508410015744
# NHC at https://www.nhc.noaa.gov/archive/2023/ep06/ep062023.discus.006.shtml?

my_epac_2023_041 = [24.8,118.8,45;26.5,122.0,25];
nhc_epac_2023_041 = [24.9,118.9,45;26.5,122.3,25];
btk_epac_2023_041 = [24.9,119.2,30;26.1,122.8,20]; # TCR
myvect = [myvect;my_epac_2023_041];
nhcvect = [nhcvect;nhc_epac_2023_041];
btkvect = [btkvect;btk_epac_2023_041];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Cpac 02 ... DORA before 2023-08-07-03Z
# my at https://twitter.com/elioeFIN/status/1688356281214488577
# CPHC at https://www.nhc.noaa.gov/archive/2023/ep05/ep052023.discus.027.shtml?

my_cpac_2023_02 = [12.5,150.9,105;12.3,158.5,90;12.7,166.0,80;14.1,173.5,70;16.1,179.7,55];
nhc_cpac_2023_02 = [12.4,150.8,110;12.2,158.4,95;12.9,165.6,85;13.9,173.1,75;16.1,179.7,65];
btk_cpac_2023_02 = [12.1,151.3,115;11.4,159.2,115;11.6,166.9,125;12.9,173.8,105;15.6,179.6,89.6]; # day 5 JMA btk
myvect = [myvect;my_cpac_2023_02];
nhcvect = [nhcvect;nhc_cpac_2023_02];
btkvect = [btkvect;btk_cpac_2023_02];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Cpac 03 ... DORA before 2023-08-07-21Z
# my at https://twitter.com/elioeFIN/status/1688631300658225152
# CPHC at https://www.nhc.noaa.gov/archive/2023/ep05/ep052023.discus.030.shtml?

my_cpac_2023_03 = [11.9,156.5,100;12.5,163.4,90;13.7,170.9,85;16.1,178.7,70;18.1,184.7,55];
nhc_cpac_2023_03 = [12.0,156.6,105;12.5,164.1,100;13.7,171.6,95;15.6,178.6,85;17.5,184.5,70];
btk_cpac_2023_03 = [11.5,157.1,115;11.5,165.1,120;12.5,172.2,105;14.8,178.6,95;17.6,183.6,65];
myvect = [myvect;my_cpac_2023_03];
nhcvect = [nhcvect;nhc_cpac_2023_03];
btkvect = [btkvect;btk_cpac_2023_03];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Wpac 050 ... LAN before 2023-08-08-21Z
# my at https://twitter.com/elioeFIN/status/1688994907493449729

my_wpac_2023_050 = [24.8,144.6,65;26.0,143.0,75;27.2,143.0,75;29.9,140.9,80;32.9,139.4,75];
nhc_wpac_2023_050 = [25.2,144.9,70;26.6,143.3,80;28.8,142.5,85;31.0,140.7,80;33.0,139.4,70];
btk_wpac_2023_050 = [25.0,144.6,65;26.4,142.9,110;28.2,142.3,90;29.4,140.0,70;31.4,137.9,85]; # JTWC best track
myvect = [myvect;my_wpac_2023_050];
nhcvect = [nhcvect;nhc_wpac_2023_050];
btkvect = [btkvect;btk_wpac_2023_050];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 051 ... LAN before 2023-08-09-21Z
# my at https://twitter.com/elioeFIN/status/1689358338700476416

my_wpac_2023_051 = [26.2,142.9,70;28.4,142.6,80;30.7,140.5,80;33.2,138.7,70;36.9,138.2,45];
nhc_wpac_2023_051 = [26.5,143.0,70;28.6,142.4,90;30.7,140.7,95;33.1,139.2,85;36.1,138.9,55];
btk_wpac_2023_051 = [26.4,142.9,110;28.2,142.3,90;29.4,140.0,70;31.4,137.9,85;33.4,136.1,75]; # JTWC best track
myvect = [myvect;my_wpac_2023_051];
nhcvect = [nhcvect;nhc_wpac_2023_051];
btkvect = [btkvect;btk_wpac_2023_051];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 052 ... LAN before 2023-08-10-21Z
# my at https://twitter.com/elioeFIN/status/1689715752582963200

my_wpac_2023_052 = [28.2,142.0,110;29.3,139.9,100;31.7,137.8,100;33.5,136.6,65;38.1,136.5,50];
nhc_wpac_2023_052 = [28.3,142.0,115;29.8,140.2,100;31.8,138.8,90;34.4,138.0,75;37.8,137.5,60];
btk_wpac_2023_052 = [28.2,142.3,90;29.4,140.0,70;31.4,137.9,85;33.4,136.1,75;37.0,134.7,45]; # JTWC best track
myvect = [myvect;my_wpac_2023_052];
nhcvect = [nhcvect;nhc_wpac_2023_052];
btkvect = [btkvect;btk_wpac_2023_052];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 053 ... LAN before 2023-08-11-15Z
# my at https://twitter.com/elioeFIN/status/1690001188878442497

my_wpac_2023_053 = [29.3,140.3,90;30.8,138.0,85;33.0,136.9,65;36.1,136.4,40;42.2,137.8,50];
nhc_wpac_2023_053 = [29.2,140.6,95;30.7,138.3,90;33.1,136.7,80;36.6,136.3,60;41.1,137.5,45];
btk_wpac_2023_053 = [29.0,140.7,75;30.8,138.5,85;32.8,136.6,80;36.2,134.7,45;40.8,136.2,35]; # JTWC best track
myvect = [myvect;my_wpac_2023_053];
nhcvect = [nhcvect;nhc_wpac_2023_053];
btkvect = [btkvect;btk_wpac_2023_053];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Epac 042 ... 07E before 2023-08-12-21Z
# my at https://twitter.com/elioeFIN/status/1690444643907903488
# NHC at https://www.nhc.noaa.gov/archive/2023/ep07/ep072023.discus.001.shtml?

my_epac_2023_042 = [15.7,116.0,50;16.3,119.4,70;17.3,122.9,60;17.7,127.8,40;18.5,132.9,30];
nhc_epac_2023_042 = [15.5,115.9,50;16.1,119.2,75;17.1,122.8,70;17.6,127.7,50;17.8,133.1,35];
btk_epac_2023_042 = [15.3,116.1,65;15.8,118.7,115;17.1,122.2,90;16.8,127.3,45;16.3,132.9,35]; # TCR
myvect = [myvect;my_epac_2023_042];
nhcvect = [nhcvect;nhc_epac_2023_042];
btkvect = [btkvect;btk_epac_2023_042];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 043 ... FERNANDA before 2023-08-13-21Z
# my at https://twitter.com/elioeFIN/status/1690807006989254656
# NHC at https://www.nhc.noaa.gov/archive/2023/ep07/ep072023.discus.005.shtml?

my_epac_2023_043 = [16.2,119.1,90;17.4,122.6,80;17.7,127.1,60;18.0,131.9,40;18.4,137.7,30];
nhc_epac_2023_043 = [16.2,119.0,95;17.3,122.5,85;17.7,127.2,65;18.0,132.5,45;18.0,138.0,35];
btk_epac_2023_043 = [15.8,118.7,115;17.1,122.2,90;16.8,127.3,45;16.3,132.9,35;16.0,138.2,35]; # TCR
myvect = [myvect;my_epac_2023_043];
nhcvect = [nhcvect;nhc_epac_2023_043];
btkvect = [btkvect;btk_epac_2023_043];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 044 ... 99E before 2023-08-13-21Z
# my at https://twitter.com/elioeFIN/status/1690807516882432000
# (no NHC advisory)

# Epac 045 ... FERNANDA before 2023-08-14-03Z
# my at https://twitter.com/elioeFIN/status/1690893792759742464
# NHC at https://www.nhc.noaa.gov/archive/2023/ep07/ep072023.discus.006.shtml?

my_epac_2023_045 = [16.4,119.6,105;17.4,123.6,85;17.7,128.6,55;18.0,134.5,40;17.7,139.9,35];
nhc_epac_2023_045 = [16.3,119.8,115;17.2,123.8,95;17.4,129.0,65;17.7,134.6,40;18.0,140.5,30];
btk_epac_2023_045 = [16.2,119.4,110;17.2,123.4,85;16.6,128.6,40;16.2,134.2,35;16.0,139.4,30]; # TCR
myvect = [myvect;my_epac_2023_045];
nhcvect = [nhcvect;nhc_epac_2023_045];
btkvect = [btkvect;btk_epac_2023_045];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 046 ... FERNANDA before 2023-08-15-21Z
# my at https://twitter.com/elioeFIN/status/1691532329934536704
# NHC at https://www.nhc.noaa.gov/archive/2023/ep07/ep072023.discus.013.shtml?

my_epac_2023_046 = [17.5,127.4,60;17.9,133.1,40;18.3,139.0,30;18.7,144.8,25;18.6,150.1,25];
nhc_epac_2023_046 = [17.6,127.2,65;17.9,132.8,35;18.4,138.8,30;18.4,144.9,25;18.2,150.5,25];
btk_epac_2023_046 = [16.8,127.3,45;16.3,132.9,35;16.0,138.2,35;15.8,143.7,30;15.4,149.2,25]; # TCR
myvect = [myvect;my_epac_2023_046];
nhcvect = [nhcvect;nhc_epac_2023_046];
btkvect = [btkvect;btk_epac_2023_046];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 047 ... 90E before 2023-08-15-21Z
# my at https://twitter.com/elioeFIN/status/1691541914762276864
# (no NHC advisory)

# Epac 048 ... 90E before 2023-08-16-03Z
# my at https://twitter.com/elioeFIN/status/1691627954873229409
# (no NHC advisory)

# Epac 049 ... HILARY before 2023-08-16-21Z
# my at https://twitter.com/elioeFIN/status/1691892384278213050
# NHC at https://www.nhc.noaa.gov/archive/2023/ep09/ep092023.discus.002.shtml?

my_epac_2023_049 = [15.5,107.5,60;18.2,111.4,85;22.3,113.8,90;28.6,115.4,60;35.1,118.3,35];
nhc_epac_2023_049 = [15.6,107.6,65;18.2,111.3,90;22.3,113.7,105;27.8,115.2,70;34.3,118.3,40];
btk_epac_2023_049 = [15.8,108.4,90;18.2,111.9,110;22.9,113.9,85;30.3,115.7,50;43.5,116.7,25]; # TCR (except day 5)
myvect = [myvect;my_epac_2023_049];
nhcvect = [nhcvect;nhc_epac_2023_049];
btkvect = [btkvect;btk_epac_2023_049];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 050 ... HILARY before 2023-08-17-03Z
# my at https://twitter.com/elioeFIN/status/1691979958439010756
# NHC at https://www.nhc.noaa.gov/archive/2023/ep09/ep092023.discus.003.shtml?

my_epac_2023_050 = [15.3,109.0,65;18.0,112.4,95;22.1,114.3,90;27.6,115.7,60;33.9,119.5,30];
nhc_epac_2023_050 = [15.5,109.1,75;18.5,112.5,100;22.6,114.0,95;28.3,115.4,60;34.3,117.7,35];
btk_epac_2023_050 = [16.4,109.5,105;19.2,112.6,115;24.3,114.3,75;33.6,117.6,45;46.2,112.8,20]; # TCR days 1-3, operational day 4, self-made day 5
myvect = [myvect;my_epac_2023_050];
nhcvect = [nhcvect;nhc_epac_2023_050];
btkvect = [btkvect;btk_epac_2023_050];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 051 ... HILARY before 2023-08-17-15Z
# my at https://twitter.com/elioeFIN/status/1692173139747516652
# NHC at https://www.nhc.noaa.gov/archive/2023/ep09/ep092023.discus.005.shtml?

my_epac_2023_051 = [17.9,111.3,105;21.5,114.0,120;26.7,115.5,80;34.1,118.0,45;41.1,119.8,20];
nhc_epac_2023_051 = [17.6,111.2,115;21.2,113.7,115;26.6,115.0,85;33.4,116.8,50;41.0,119.0,25];
btk_epac_2023_051 = [17.3,111.1,115;21.5,113.5,100;28.1,115.3,55;40.6,118.0,30;49.6,109.3,10]; # TCR days 1-3, operational day 4, self-made day 5
myvect = [myvect;my_epac_2023_051];
nhcvect = [nhcvect;nhc_epac_2023_051];
btkvect = [btkvect;btk_epac_2023_051];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 052 ... HILARY before 2023-08-17-21Z
# my at https://twitter.com/elioeFIN/status/1692257436332097545
# NHC at https://www.nhc.noaa.gov/archive/2023/ep09/ep092023.discus.006.shtml?

my_epac_2023_052 = [18.6,112.1,115;22.5,114.2,110;28.4,115.9,70;35.5,118.3,40;46.0,120.2,20];
nhc_epac_2023_052 = [18.4,112.0,120;22.4,113.8,115;28.5,115.4,85;35.4,118.4,30;43.0,120.0,20];
btk_epac_2023_052 = [18.2,111.9,110;22.9,113.9,85;30.3,115.7,50;43.5,116.7,25;50.8,108.0,10]; # TCR days 1-3, operational day 4, self-made day 5
myvect = [myvect;my_epac_2023_052];
nhcvect = [nhcvect;nhc_epac_2023_052];
btkvect = [btkvect;btk_epac_2023_052];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Atl 035 ... 98L before 2023-08-17-21Z
# my at https://twitter.com/elioeFIN/status/1692262629400596530
# (no NHC advisory)

# Epac 053 ... HILARY before 2023-08-18-03Z
# my at https://twitter.com/elioeFIN/status/1692344377182392428
# NHC at https://www.nhc.noaa.gov/archive/2023/ep09/ep092023.discus.007.shtml?

my_epac_2023_053 = [19.4,112.7,120;23.6,114.3,105;30.0,116.4,65;38.3,119.4,30];
nhc_epac_2023_053 = [19.4,112.6,125;24.0,114.3,100;30.7,116.1,55;39.0,118.3,25];
btk_epac_2023_053 = [19.2,112.6,115;24.3,114.3,75;33.6,117.6,45;46.2,112.8,20]; # TCR days 1-2, operational day 3, self-made day 4
myvect = [myvect;my_epac_2023_053];
nhcvect = [nhcvect;nhc_epac_2023_053];
btkvect = [btkvect;btk_epac_2023_053];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Epac 054 ... HILARY before 2023-08-18-21Z
# my at https://twitter.com/elioeFIN/status/1692613333160010054
# NHC at https://www.nhc.noaa.gov/archive/2023/ep09/ep092023.discus.010.shtml?

my_epac_2023_054 = [22.6,114.1,95;29.4,116.2,55;39.7,117.8,25];
nhc_epac_2023_054 = [22.6,114.1,105;29.4,116.1,65;39.3,117.7,30];
btk_epac_2023_054 = [22.9,113.9,85;30.3,115.7,50;43.5,116.7,25]; # TCR (day 3 operational)
myvect = [myvect;my_epac_2023_054];
nhcvect = [nhcvect;nhc_epac_2023_054];
btkvect = [btkvect;btk_epac_2023_054];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 055 ... HILARY before 2023-08-19-21Z
# my at https://twitter.com/elioeFIN/status/1692978332520808801
# NHC at https://www.nhc.noaa.gov/archive/2023/ep09/ep092023.discus.014.shtml?

my_epac_2023_055 = [31.1,116.3,55];
nhc_epac_2023_055 = [30.8,116.2,60];
btk_epac_2023_055 = [30.3,115.7,50]; # TCR
myvect = [myvect;my_epac_2023_055];
nhcvect = [nhcvect;nhc_epac_2023_055];
btkvect = [btkvect;btk_epac_2023_055];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;2];

# Atl 036 ... EMILY before 2023-08-20-21Z
# my at https://twitter.com/elioeFIN/status/1693335747464466889
# NHC at https://www.nhc.noaa.gov/archive/2023/al07/al072023.discus.002.shtml?

my_atl_2023_036 = [21.3,42.8,35;22.9,47.1,30;25.7,49.7,25;30.1,50.5,30;35.8,50.6,35];
nhc_atl_2023_036 = [21.3,42.6,35;23.1,46.7,30;26.4,49.4,30;31.2,50.0,30;37.5,49.1,25];
btk_atl_2023_036 = [21.4,42.2,30;24.4,46.1,30;27.8,49.6,35;30.5,48.7,30;34.3,48.9,30]; # TCR (days 1-4 only)
myvect = [myvect;my_atl_2023_036];
nhcvect = [nhcvect;nhc_atl_2023_036];
btkvect = [btkvect;btk_atl_2023_036];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 037 ... 90L before 2023-08-20-21Z
# my at https://twitter.com/elioeFIN/status/1693343122892173626
# NHC at https://www.nhc.noaa.gov/archive/2023/al08/al082023.discus.001.shtml?

my_atl_2023_037 = [15.2,70.7,45;16.9,71.8,50;21.1,71.3,50;24.0,68.6,55;25.6,64.3,65];
nhc_atl_2023_037 = [15.4,70.7,45;17.2,71.5,55;21.0,70.6,55;23.9,67.5,65;25.4,65.0,75];
btk_atl_2023_037 = [14.1,70.0,45;15.6,71.3,35;19.4,70.8,35;22.2,69.3,50;21.8,67.3,45]; # TCR
myvect = [myvect;my_atl_2023_037];
nhcvect = [nhcvect;nhc_atl_2023_037];
btkvect = [btkvect;btk_atl_2023_037];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 038 ... EMILY before 2023-08-21-03Z
# my at https://twitter.com/elioeFIN/status/1693429879474196681
# NHC at https://www.nhc.noaa.gov/archive/2023/al07/al072023.discus.003.shtml?

my_atl_2023_038 = [21.5,43.7,30;23.6,47.5,30;27.2,49.5,30;33.0,50.3,35];
nhc_atl_2023_038 = [21.5,43.6,35;23.6,47.5,30;27.5,49.6,30;32.9,50.0,30];
btk_atl_2023_038 = [21.9,43.1,30;25.3,47.2,35;28.6,49.6,35;31.4,48.6,30]; # TCR
myvect = [myvect;my_atl_2023_038];
nhcvect = [nhcvect;nhc_atl_2023_038];
btkvect = [btkvect;btk_atl_2023_038];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 039 ... FRANKLIN before 2023-08-21-03Z
# my at https://twitter.com/elioeFIN/status/1693433845104648322
# NHC at https://www.nhc.noaa.gov/archive/2023/al08/al082023.discus.002.shtml?

my_atl_2023_039 = [15.0,71.5,45;17.7,71.7,50;21.5,70.8,50;24.0,67.5,65;25.6,64.0,75];
nhc_atl_2023_039 = [15.3,71.0,50;18.1,71.4,55;21.9,69.9,50;24.3,67.0,60;26.2,64.4,70];
btk_atl_2023_039 = [14.0,70.4,45;16.5,71.4,35;20.6,70.6,40;22.4,68.5,50;22.2,66.5,50]; # TCR
myvect = [myvect;my_atl_2023_039];
nhcvect = [nhcvect;nhc_atl_2023_039];
btkvect = [btkvect;btk_atl_2023_039];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 040 ... FRANKLIN before 2023-08-21-15Z
# my at https://twitter.com/elioeFIN/status/1693614307005620485
# NHC at https://www.nhc.noaa.gov/archive/2023/al08/al082023.discus.004.shtml?

my_atl_2023_040 = [15.5,71.2,55;19.3,70.8,45;22.6,68.9,50;24.4,65.6,60;26.2,63.6,75];
nhc_atl_2023_040 = [15.7,71.0,50;19.2,70.6,45;22.8,68.4,55;24.4,65.2,65;26.4,63.7,75];
btk_atl_2023_040 = [14.8,71.1,40;18.3,71.1,40;22.0,70.0,50;21.9,67.9,45;23.2,66.5,65]; # TCR
myvect = [myvect;my_atl_2023_040];
nhcvect = [nhcvect;nhc_atl_2023_040];
btkvect = [btkvect;btk_atl_2023_040];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 041 ... FRANKLIN before 2023-08-21-21Z
# my at https://twitter.com/elioeFIN/status/1693702486140297273
# NHC at https://www.nhc.noaa.gov/archive/2023/al08/al082023.discus.005.shtml?

my_atl_2023_041 = [15.3,71.5,50;18.7,70.9,40;21.3,69.5,45;22.9,66.7,60;25.3,65.6,60];
nhc_atl_2023_041 = [15.3,71.3,50;19.1,70.8,40;22.2,68.7,50;23.6,66.0,60;25.6,65.5,70];
btk_atl_2023_041 = [15.6,71.3,35;19.4,70.8,35;22.2,69.3,50;21.8,67.3,45;23.5,67.3,70]; # TCR
myvect = [myvect;my_atl_2023_041];
nhcvect = [nhcvect;nhc_atl_2023_041];
btkvect = [btkvect;btk_atl_2023_041];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 042 ... 92L before 2023-08-21-21Z
# my at https://twitter.com/elioeFIN/status/1693704720370545092
# (no NHC advisory)

# Atl 043 ... FRANKLIN before 2023-08-22-03Z
# my at https://twitter.com/elioeFIN/status/1693792677039419599
# NHC at https://www.nhc.noaa.gov/archive/2023/al08/al082023.discus.006.shtml?

my_atl_2023_043 = [16.2,70.8,55;19.8,70.1,45;22.5,67.6,45;23.4,66.1,60;25.3,66.4,65];
nhc_atl_2023_043 = [16.3,70.7,55;20.1,70.0,45;22.6,67.8,55;23.7,65.7,60;25.9,65.8,70];
btk_atl_2023_043 = [16.5,71.4,35;20.6,70.6,40;22.4,68.5,50;22.2,66.5,50;23.9,67.9,75]; # TCR
myvect = [myvect;my_atl_2023_043];
nhcvect = [nhcvect;nhc_atl_2023_043];
btkvect = [btkvect;btk_atl_2023_043];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 044 ... 92L before 2023-08-22-03Z
# my at https://twitter.com/elioeFIN/status/1693795277864415643
# (no NHC advisory)

# Atl 045 ... FRANKLIN before 2023-08-22-21Z
# my at https://twitter.com/elioeFIN/status/1694069445860208795
# NHC at https://www.nhc.noaa.gov/archive/2023/al08/al082023.discus.009.shtml?

my_atl_2023_045 = [19.1,71.1,40;21.9,69.5,45;21.9,67.4,50;23.1,66.9,65;27.3,67.7,85];
nhc_atl_2023_045 = [19.1,70.9,35;22.0,69.3,40;22.9,67.3,50;24.3,66.7,60;27.6,67.7,75];
btk_atl_2023_045 = [19.4,70.8,35;22.2,69.3,50;21.8,67.3,45;23.5,67.3,70;25.5,69.7,80]; # TCR
myvect = [myvect;my_atl_2023_045];
nhcvect = [nhcvect;nhc_atl_2023_045];
btkvect = [btkvect;btk_atl_2023_045];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 046 ... FRANKLIN before 2023-08-23-21Z
# my at https://twitter.com/elioeFIN/status/1694429125111337186
# NHC at https://www.nhc.noaa.gov/archive/2023/al08/al082023.discus.013.shtml?

my_atl_2023_046 = [22.3,69.0,45;22.8,66.2,50;24.2,65.5,65;27.7,67.0,85;31.5,67.6,85];
nhc_atl_2023_046 = [22.5,68.8,45;23.3,66.3,55;24.6,65.5,65;28.0,67.0,85;31.6,67.4,90];
btk_atl_2023_046 = [22.2,69.3,50;21.8,67.3,45;23.5,67.3,70;25.5,69.7,80;28.2,71.1,125]; # TCR
myvect = [myvect;my_atl_2023_046];
nhcvect = [nhcvect;nhc_atl_2023_046];
btkvect = [btkvect;btk_atl_2023_046];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 047 ... FRANKLIN before 2023-08-24-03Z
# my at https://twitter.com/elioeFIN/status/1694518062894985305
# NHC at https://www.nhc.noaa.gov/archive/2023/al08/al082023.discus.014.shtml?

my_atl_2023_047 = [23.0,68.1,50;23.6,65.8,55;25.8,66.1,65;29.4,67.5,95;33.2,67.3,90];
nhc_atl_2023_047 = [23.0,68.1,50;23.7,65.8,55;25.8,65.9,70;29.2,67.5,90;33.0,67.4,95];
btk_atl_2023_047 = [22.4,68.5,50;22.2,66.5,50;23.9,67.9,75;26.0,70.3,85;28.9,71.1,130]; # TCR
myvect = [myvect;my_atl_2023_047];
nhcvect = [nhcvect;nhc_atl_2023_047];
btkvect = [btkvect;btk_atl_2023_047];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 048 ... EMILY before 2023-08-24-03Z
# my at https://twitter.com/elioeFIN/status/1694525349579636988
# (no NHC advisory)

# Atl 049 ... FRANKLIN before 2023-08-24-15Z
# my at https://twitter.com/elioeFIN/status/1694705140308353223
# NHC at https://www.nhc.noaa.gov/archive/2023/al08/al082023.discus.016.shtml?

my_atl_2023_049 = [23.0,67.6,55;23.8,66.3,60;26.5,67.6,75;30.5,69.0,85;34.6,68.1,90];
nhc_atl_2023_049 = [23.0,67.7,55;23.9,66.4,65;26.6,67.3,80;30.0,68.5,95;34.5,67.5,90];
btk_atl_2023_049 = [21.9,67.9,45;23.2,66.5,65;24.9,69.1,80;27.5,70.9,125;30.3,70.7,115]; # TCR
myvect = [myvect;my_atl_2023_049];
nhcvect = [nhcvect;nhc_atl_2023_049];
btkvect = [btkvect;btk_atl_2023_049];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 054 ... SAOLA before 2023-08-24-15Z
# my at https://twitter.com/elioeFIN/status/1694709747931623863

my_wpac_2023_054 = [19.8,123.6,65;17.8,123.0,90;16.2,123.1,105;18.0,124.1,100;20.0,123.8,120];
nhc_wpac_2023_054 = [19.8,123.4,75;18.0,122.9,100;17.3,123.4,105;18.0,123.8,110;19.4,122.8,120];
btk_wpac_2023_054 = [19.5,123.6,90;17.5,123.1,110;16.2,123.2,115;17.9,124.0,110;19.3,122.7,135]; # JTWC best track
myvect = [myvect;my_wpac_2023_054];
nhcvect = [nhcvect;nhc_wpac_2023_054];
btkvect = [btkvect;btk_wpac_2023_054];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Atl 050 ... FRANKLIN before 2023-08-25-03Z
# my at https://twitter.com/elioeFIN/status/1694879532434747604
# NHC at https://www.nhc.noaa.gov/archive/2023/al08/al082023.discus.018.shtml?

my_atl_2023_050 = [23.2,66.5,55;25.0,67.0,65;27.9,68.3,90;32.1,68.2,100;37.6,65.3,85];
nhc_atl_2023_050 = [23.2,66.7,55;24.8,67.0,65;27.8,68.1,90;31.9,68.2,95;37.1,65.6,85];
btk_atl_2023_050 = [22.2,66.5,50;23.9,67.9,75;26.0,70.3,85;28.9,71.1,130;31.8,69.5,100]; # TCR
myvect = [myvect;my_atl_2023_050];
nhcvect = [nhcvect;nhc_atl_2023_050];
btkvect = [btkvect;btk_atl_2023_050];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 055 ... SAOLA before 2023-08-25-03Z
# my at https://twitter.com/elioeFIN/status/1694888517271212378

my_wpac_2023_055 = [18.5,123.6,80;16.7,124.5,100;17.9,125.5,105;20.4,124.4,115;22.7,121.8,100];
nhc_wpac_2023_055 = [18.3,123.9,85;16.8,124.1,105;17.1,125.0,105;18.9,124.4,110;20.8,122.3,120];
btk_wpac_2023_055 = [18.6,123.2,95;16.8,122.9,115;16.9,124.4,90;18.6,123.3,100;20.1,121.0,135]; # JTWC best track
myvect = [myvect;my_wpac_2023_055];
nhcvect = [nhcvect;nhc_wpac_2023_055];
btkvect = [btkvect;btk_wpac_2023_055];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Atl 051 ... FRANKLIN before 2023-08-25-21Z
# my at https://twitter.com/elioeFIN/status/1695156576510779755
# NHC at https://www.nhc.noaa.gov/archive/2023/al08/al082023.discus.021.shtml?

my_atl_2023_051 = [22.5,66.4,50;25.4,67.8,60;28.6,68.7,75;32.8,67.7,80;38.4,62.6,80];
nhc_atl_2023_051 = [22.8,66.6,50;25.4,67.7,60;29.2,68.9,85;33.0,67.7,95;37.8,62.7,80];
btk_atl_2023_051 = [23.5,67.3,70;25.5,69.7,80;28.2,71.1,125;31.1,70.2,110;33.9,66.7,90]; # TCR
myvect = [myvect;my_atl_2023_051];
nhcvect = [nhcvect;nhc_atl_2023_051];
btkvect = [btkvect;btk_atl_2023_051];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 056 ... SAOLA before 2023-08-25-21Z
# my at https://twitter.com/elioeFIN/status/1695160798107038148

my_wpac_2023_056 = [17.5,123.0,100;17.2,124.0,120;18.7,124.3,125;21.6,122.8,105;23.6,120.2,105];
nhc_wpac_2023_056 = [17.5,123.3,110;17.0,124.3,110;18.6,124.6,120;20.6,123.0,130;22.4,120.8,115];
btk_wpac_2023_056 = [17.1,123.0,120;16.0,123.8,100;18.2,123.9,100;19.9,121.8,140;20.9,118.7,130]; # JTWC best track
myvect = [myvect;my_wpac_2023_056];
nhcvect = [nhcvect;nhc_wpac_2023_056];
btkvect = [btkvect;btk_wpac_2023_056];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Atl 052 ... FRANKLIN before 2023-08-26-21Z
# my at https://twitter.com/elioeFIN/status/1695518228443762789
# NHC at https://www.nhc.noaa.gov/archive/2023/al08/al082023.discus.025.shtml?

my_atl_2023_052 = [25.5,69.2,90;28.4,70.4,110;31.4,69.7,105;34.4,65.8,105;38.9,56.2,85];
nhc_atl_2023_052 = [25.9,68.9,95;28.7,69.9,110;32.0,69.4,105;35.2,65.6,90;39.1,56.5,75];
btk_atl_2023_052 = [25.5,69.7,80;28.2,71.1,125;31.1,70.2,110;33.9,66.7,90;35.6,61.1,80]; # TCR
myvect = [myvect;my_atl_2023_052];
nhcvect = [nhcvect;nhc_atl_2023_052];
btkvect = [btkvect;btk_atl_2023_052];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 053 ... 93L before 2023-08-26-21Z
# my at https://twitter.com/elioeFIN/status/1695523034394734811
# NHC at https://www.nhc.noaa.gov/archive/2023/al10/al102023.discus.001.shtml?

my_atl_2023_053 = [21.0,86.1,35;22.3,86.0,50;26.3,85.6,65;31.5,83.8,50;35.5,79.5,35];
nhc_atl_2023_053 = [20.9,86.2,35;22.0,85.7,45;26.3,85.3,65;31.5,83.0,45;35.0,79.0,30];
btk_atl_2023_053 = [19.9,85.8,40;21.2,85.2,60;25.3,84.8,80;31.5,82.5,60;33.6,74.6,55]; # TCR
myvect = [myvect;my_atl_2023_053];
nhcvect = [nhcvect;nhc_atl_2023_053];
btkvect = [btkvect;btk_atl_2023_053];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 056 ... 92E before 2023-08-26-21Z
# my at https://twitter.com/elioeFIN/status/1695527300148690981
# (no NHC advisory)

# Atl 054 ... FRANKLIN before 2023-08-27-03Z
# my at https://twitter.com/elioeFIN/status/1695607690188226838
# NHC at https://www.nhc.noaa.gov/archive/2023/al08/al082023.discus.026.shtml?

my_atl_2023_054 = [26.1,69.9,100;29.0,70.6,115;32.0,69.3,100;35.6,64.4,90;40.3,54.4,70];
nhc_atl_2023_054 = [26.2,69.8,100;29.2,70.4,115;32.5,68.9,105;35.8,63.7,90;41.0,52.5,75];
btk_atl_2023_054 = [26.0,70.3,85;28.9,71.1,130;31.8,69.5,100;34.4,65.2,90;36.4,59.7,75]; # TCR
myvect = [myvect;my_atl_2023_054];
nhcvect = [nhcvect;nhc_atl_2023_054];
btkvect = [btkvect;btk_atl_2023_054];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 055 ... 10L before 2023-08-27-03Z
# my at https://twitter.com/elioeFIN/status/1695608144871690366
# NHC at https://www.nhc.noaa.gov/archive/2023/al10/al102023.discus.002.shtml?

my_atl_2023_055 = [20.7,86.2,50;23.1,85.9,55;27.6,84.7,65;33.1,81.1,45;35.6,76.7,40];
nhc_atl_2023_055 = [20.9,86.2,40;23.1,85.7,55;27.5,84.8,70;32.7,81.5,45;35.2,76.7,35];
btk_atl_2023_055 = [19.8,85.4,45;21.8,85.1,60;26.9,84.7,90;32.7,80.9,50;33.4,72.3,55]; # TCR
myvect = [myvect;my_atl_2023_055];
nhcvect = [nhcvect;nhc_atl_2023_055];
btkvect = [btkvect;btk_atl_2023_055];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 056 ... 10L before 2023-08-27-09Z
# my at https://twitter.com/elioeFIN/status/1695697602195472828
# NHC at https://www.nhc.noaa.gov/archive/2023/al10/al102023.discus.003.shtml?

my_atl_2023_056 = [20.6,86.6,45;23.4,86.5,60;28.4,85.3,75;33.4,81.6,40;35.3,77.2,35];
nhc_atl_2023_056 = [20.6,86.3,45;23.3,86.2,60;28.5,84.7,80;33.0,81.2,45;35.0,75.5,35];
btk_atl_2023_056 = [19.9,85.2,55;22.6,85.0,65;28.3,84.5,105;33.5,78.9,50;32.7,70.5,50]; # TCR
myvect = [myvect;my_atl_2023_056];
nhcvect = [nhcvect;nhc_atl_2023_056];
btkvect = [btkvect;btk_atl_2023_056];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 057 ... 10E before 2023-08-27-09Z
# my at https://twitter.com/elioeFIN/status/1695702184854262239
# NHC at https://www.nhc.noaa.gov/archive/2023/ep10/ep102023.discus.002.shtml?

my_epac_2023_057 = [18.0,122.6,35;18.7,127.3,30;18.4,132.8,30;18.7,137.5,25;19.0,141.2,20];
nhc_epac_2023_057 = [17.9,122.8,40;18.3,127.8,40;18.0,133.5,35;18.3,138.3,30;18.8,141.2,25];
btk_epac_2023_057 = [17.5,122.6,35;19.5,126.4,40;18.8,132.3,30;19.1,136.4,25;18.8,139.0,25]; # TCR
myvect = [myvect;my_epac_2023_057];
nhcvect = [nhcvect;nhc_epac_2023_057];
btkvect = [btkvect;btk_epac_2023_057];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Atl 057 ... IDALIA before 2023-08-27-21Z
# my at https://twitter.com/elioeFIN/status/1695876870116348228
# NHC at https://www.nhc.noaa.gov/archive/2023/al10/al102023.discus.005.shtml?

my_atl_2023_057 = [21.6,85.0,55;25.7,84.7,70;31.3,81.8,60;34.5,76.5,45;35.0,72.8,40];
nhc_atl_2023_057 = [21.7,85.0,55;25.6,84.5,75;31.3,81.9,50;34.5,76.0,50;35.0,71.0,55];
btk_atl_2023_057 = [21.2,85.2,60;25.3,84.8,80;31.5,82.5,60;33.6,74.6,55;32.1,67.1,50]; # TCR
myvect = [myvect;my_atl_2023_057];
nhcvect = [nhcvect;nhc_atl_2023_057];
btkvect = [btkvect;btk_atl_2023_057];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 058 ... IDALIA before 2023-08-28-03Z
# my at https://twitter.com/elioeFIN/status/1695966304090423601
# NHC at https://www.nhc.noaa.gov/archive/2023/al10/al102023.discus.006.shtml?

my_atl_2023_058 = [22.3,85.1,55;26.7,84.6,80;32.4,80.3,45;35.8,73.3,50;35.6,67.9,45];
nhc_atl_2023_058 = [22.2,85.0,70;26.8,84.3,95;32.0,80.1,55;34.3,73.4,50;34.4,67.8,50];
btk_atl_2023_058 = [21.8,85.1,60;26.9,84.7,90;32.7,80.9,50;33.4,72.3,55;31.9,65.7,50]; # TCR
myvect = [myvect;my_atl_2023_058];
nhcvect = [nhcvect;nhc_atl_2023_058];
btkvect = [btkvect;btk_atl_2023_058];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 059 ... FRANKLIN before 2023-08-28-03Z
# my at https://twitter.com/elioeFIN/status/1695971812977311848
# NHC at https://www.nhc.noaa.gov/archive/2023/al08/al082023.discus.030.shtml?

my_atl_2023_059 = [28.8,71.4,110;32.3,69.7,105;35.7,65.1,85;39.8,56.0,80;43.4,46.5,60];
nhc_atl_2023_059 = [28.9,71.2,110;32.2,69.5,110;35.2,64.2,95;37.5,57.0,80;42.0,49.5,65];
btk_atl_2023_059 = [28.9,71.1,130;31.8,69.5,100;34.4,65.2,90;36.4,59.7,75;39.6,52.0,70]; # TCR
myvect = [myvect;my_atl_2023_059];
nhcvect = [nhcvect;nhc_atl_2023_059];
btkvect = [btkvect;btk_atl_2023_059];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 060 ... IDALIA before 2023-08-28-09Z
# my at https://twitter.com/elioeFIN/status/1696060249235448126
# NHC at https://www.nhc.noaa.gov/archive/2023/al10/al102023.discus.007.shtml?

my_atl_2023_060 = [22.7,85.2,70;27.6,84.4,95;32.8,79.8,55;35.4,73.3,50;35.2,68.8,45];
nhc_atl_2023_060 = [22.6,85.1,70;27.7,84.0,100;32.8,79.0,55;34.5,72.0,50;34.5,67.0,50];
btk_atl_2023_060 = [22.6,85.0,65;28.3,84.5,105;33.5,78.9,50;32.7,70.5,50;31.8,64.7,50]; # TCR
myvect = [myvect;my_atl_2023_060];
nhcvect = [nhcvect;nhc_atl_2023_060];
btkvect = [btkvect;btk_atl_2023_060];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 061 ... IDALIA before 2023-08-29-03Z
# my at https://twitter.com/elioeFIN/status/1696325002574844161
# NHC at https://www.nhc.noaa.gov/archive/2023/al10/al102023.discus.010.shtml?

my_atl_2023_061 = [26.0,84.9,85;31.5,81.9,55;33.6,75.8,45;33.5,71.2,45;32.5,70.4,40];
nhc_atl_2023_061 = [26.2,84.6,90;31.5,81.6,50;34.0,76.0,50;33.5,72.0,45;33.0,70.0,45];
btk_atl_2023_061 = [26.9,84.7,90;32.7,80.9,50;33.4,72.3,55;31.9,65.7,50;32.0,62.2,50]; # TCR
myvect = [myvect;my_atl_2023_061];
nhcvect = [nhcvect;nhc_atl_2023_061];
btkvect = [btkvect;btk_atl_2023_061];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 062 ... IDALIA before 2023-08-29-21Z
# my at https://twitter.com/elioeFIN/status/1696602549053214796
# NHC at https://www.nhc.noaa.gov/archive/2023/al10/al102023.discus.013.shtml?

my_atl_2023_062 = [30.9,83.1,65;33.8,76.8,40;33.3,71.0,40;32.9,69.6,45;31.9,70.3,40];
nhc_atl_2023_062 = [31.0,82.9,75;33.9,77.1,45;33.3,71.8,45;32.3,69.6,45;31.7,69.0,45];
btk_atl_2023_062 = [31.5,82.5,60;33.6,74.6,55;32.1,67.1,50;31.8,63.1,50;34.9,59.7,55]; # TCR
myvect = [myvect;my_atl_2023_062];
nhcvect = [nhcvect;nhc_atl_2023_062];
btkvect = [btkvect;btk_atl_2023_062];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 063 ... FRANKLIN before 2023-08-29-21Z
# my at https://twitter.com/elioeFIN/status/1696607801726980134
# NHC at https://www.nhc.noaa.gov/archive/2023/al08/al082023.discus.037.shtml?

my_atl_2023_063 = [33.8,66.9,95;35.4,60.9,85;36.7,53.2,60;41.7,47.2,50];
nhc_atl_2023_063 = [34.3,66.5,100;36.6,59.8,85;40.6,50.2,70;46.0,40.2,65];
btk_atl_2023_063 = [33.9,66.7,90;35.6,61.1,80;38.8,54.6,70;44.8,43.4,65]; # TCR
myvect = [myvect;my_atl_2023_063];
nhcvect = [nhcvect;nhc_atl_2023_063];
btkvect = [btkvect;btk_atl_2023_063];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 064 ... IDALIA before 2023-08-30-03Z
# my at https://twitter.com/elioeFIN/status/1696693211052310953
# NHC at https://www.nhc.noaa.gov/archive/2023/al10/al102023.discus.014.shtml?

my_atl_2023_064 = [32.2,81.6,55;34.2,74.7,40;32.9,69.8,40;32.6,68.4,45;31.8,68.9,40];
nhc_atl_2023_064 = [32.3,81.3,70;33.8,75.0,50;32.9,71.0,45;32.0,69.4,45;31.0,68.4,45];
btk_atl_2023_064 = [32.7,80.9,50;33.4,72.3,55;31.9,65.7,50;32.0,62.2,50;36.2,58.9,60]; # TCR
myvect = [myvect;my_atl_2023_064];
nhcvect = [nhcvect;nhc_atl_2023_064];
btkvect = [btkvect;btk_atl_2023_064];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 065 ... FRANKLIN before 2023-08-30-03Z
# my at https://twitter.com/elioeFIN/status/1696698344943300761
# NHC at https://www.nhc.noaa.gov/archive/2023/al08/al082023.discus.038.shtml?

my_atl_2023_065 = [34.7,65.5,90;36.2,59.7,75;38.0,52.6,65;40.9,46.0,60];
nhc_atl_2023_065 = [34.7,65.0,90;36.8,58.0,75;40.3,49.5,60;45.2,41.0,55];
btk_atl_2023_065 = [34.4,65.2,90;36.4,59.7,75;39.6,52.0,65;45.8,41.0,65]; # TCR
myvect = [myvect;my_atl_2023_065];
nhcvect = [nhcvect;nhc_atl_2023_065];
btkvect = [btkvect;btk_atl_2023_065];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 066 ... IDALIA before 2023-08-30-21Z
# my at https://twitter.com/elioeFIN/status/1696968973932241269
# NHC at https://www.nhc.noaa.gov/archive/2023/al10/al102023.discus.017.shtml?

my_atl_2023_066 = [34.3,75.4,45;33.4,69.2,40;32.7,67.1,45;33.7,65.4,40;35.8,61.6,40];
nhc_atl_2023_066 = [34.1,75.7,50;32.8,69.7,45;31.7,67.3,45;32.3,65.1,45;34.4,61.3,45];
btk_atl_2023_066 = [33.6,74.6,55;32.1,67.1,50;31.8,63.1,50;34.9,59.7,55;40.5,57.9,55]; # TCR
myvect = [myvect;my_atl_2023_066];
nhcvect = [nhcvect;nhc_atl_2023_066];
btkvect = [btkvect;btk_atl_2023_066];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 067 ... FRANKLIN before 2023-08-30-21Z
# my at https://twitter.com/elioeFIN/status/1696969673890263220
# NHC at https://www.nhc.noaa.gov/archive/2023/al08/al082023.discus.041.shtml?

my_atl_2023_067 = [35.6,61.1,75;38.4,54.2,65;43.7,46.3,55;47.1,41.8,45;50.5,36.7,35];
nhc_atl_2023_067 = [35.8,60.8,75;38.1,53.9,65;41.6,47.5,60;45.0,42.4,45;50.0,37.5,40];
btk_atl_2023_067 = [35.6,61.1,80;38.8,54.6,70;44.8,43.4,65;47.7,33.4,55;46.7,26.8,40]; # TCR
myvect = [myvect;my_atl_2023_067];
nhcvect = [nhcvect;nhc_atl_2023_067];
btkvect = [btkvect;btk_atl_2023_067];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 068 ... IDALIA before 2023-08-31-03Z
# my at https://twitter.com/elioeFIN/status/1697052545380696240
# NHC at https://www.nhc.noaa.gov/archive/2023/al10/al102023.discus.018.shtml?

my_atl_2023_068 = [34.2,73.8,45;32.7,69.0,40;31.8,68.2,40;33.5,65.9,45;35.7,61.7,45];
nhc_atl_2023_068 = [33.9,73.8,50;32.3,69.0,45;31.4,67.6,45;32.0,65.4,45;33.5,63.0,45];
btk_atl_2023_068 = [33.4,72.3,55;31.9,65.7,50;32.0,62.2,50;36.2,58.9,60;41.1,58.7,50]; # TCR
myvect = [myvect;my_atl_2023_068];
nhcvect = [nhcvect;nhc_atl_2023_068];
btkvect = [btkvect;btk_atl_2023_068];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 069 ... FRANKLIN before 2023-08-31-03Z
# my at https://twitter.com/elioeFIN/status/1697058975508779091
# NHC at https://www.nhc.noaa.gov/archive/2023/al08/al082023.discus.042.shtml?

my_atl_2023_069 = [36.3,59.5,70;40.3,52.2,70;44.3,44.9,50;46.1,40.5,35;47.7,38.1,35];
nhc_atl_2023_069 = [36.5,59.0,75;39.2,52.3,65;42.7,46.3,60;45.9,41.2,45;50.1,35.5,40];
btk_atl_2023_069 = [36.4,59.7,75;39.6,52.0,70;45.8,41.0,65;47.8,30.8,50;46.0,26.6,40]; # TCR
myvect = [myvect;my_atl_2023_069];
nhcvect = [nhcvect;nhc_atl_2023_069];
btkvect = [btkvect;btk_atl_2023_069];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 070 ... IDALIA before 2023-08-31-21Z
# my at https://twitter.com/elioeFIN/status/1697328608853754226
# NHC at https://www.nhc.noaa.gov/archive/2023/al10/al102023.discus.021.shtml?

my_atl_2023_070 = [31.7,68.1,50;30.8,66.1,45;31.8,63.9,50;36.0,59.5,55;40.1,58.0,50];
nhc_atl_2023_070 = [31.8,68.3,45;30.9,65.9,45;32.1,63.4,50;35.1,60.5,50;38.0,59.9,45];
btk_atl_2023_070 = [32.1,67.1,50;31.8,63.1,50;34.9,59.7,55;40.5,57.9,55;42.6,59.8,40]; # TCR
myvect = [myvect;my_atl_2023_070];
nhcvect = [nhcvect;nhc_atl_2023_070];
btkvect = [btkvect;btk_atl_2023_070];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 071 ... 95L before 2023-09-03-03Z
# my at https://twitter.com/elioeFIN/status/1698145173304139789
# (no NHC advisory)

# Atl 072 ... 95L before 2023-09-03-09Z
# my at https://twitter.com/elioeFIN/status/1698238238983352753
# (no NHC advisory)

# Epac 058 ... 93E before 2023-09-03-21Z
# my at https://twitter.com/elioeFIN/status/1698413419991318677
# (no NHC advisory)

# Atl 073 ... 95L before 2023-09-04-03Z
# my at https://twitter.com/elioeFIN/status/1698503666511057244
# (no NHC advisory)

# Epac 059 ... 93E before 2023-09-04-03Z
# my at https://twitter.com/elioeFIN/status/1698516239658668374
# (no NHC advisory)

# Atl 074 ... 95L before 2023-09-04-21Z
# my at https://twitter.com/elioeFIN/status/1698779929033179493
# (no NHC advisory)

# Atl 075 ... 13L before 2023-09-05-21Z
# my at https://twitter.com/elioeFIN/status/1699140775500534117
# NHC at https://www.nhc.noaa.gov/archive/2023/al13/al132023.discus.002.shtml?

my_atl_2023_075 = [14.2,46.1,60;15.9,50.9,75;18.3,55.7,105;20.8,59.8,125;22.3,64.1,130];
nhc_atl_2023_075 = [14.4,46.2,60;16.2,51.0,80;18.3,56.0,110;20.4,60.5,120;22.2,64.3,125];
btk_atl_2023_075 = [14.6,46.1,65;16.6,50.7,105;18.5,55.1,125;20.4,58.8,95;21.9,61.4,105]; # TCR
myvect = [myvect;my_atl_2023_075];
nhcvect = [nhcvect;nhc_atl_2023_075];
btkvect = [btkvect;btk_atl_2023_075];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 060 ... JOVA before 2023-09-05-21Z
# my at https://twitter.com/elioeFIN/status/1699146117106057701
# NHC at https://www.nhc.noaa.gov/archive/2023/ep11/ep112023.discus.005.shtml?

my_epac_2023_060 = [14.3,111.6,75;16.1,116.8,95;18.7,121.7,85;21.0,126.4,65;23.1,131.3,55];
nhc_epac_2023_060 = [14.3,111.6,85;16.2,116.5,110;18.8,121.4,105;21.5,126.3,75;23.5,130.7,60];
btk_epac_2023_060 = [14.6,111.1,115;17.4,116.6,125;20.1,121.9,75;22.6,125.8,45;24.5,127.4,30]; # TCR
myvect = [myvect;my_epac_2023_060];
nhcvect = [nhcvect;nhc_epac_2023_060];
btkvect = [btkvect;btk_epac_2023_060];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Atl 076 ... LEE before 2023-09-06-03Z
# my at https://twitter.com/elioeFIN/status/1699231499415900198
# NHC at https://www.nhc.noaa.gov/archive/2023/al13/al132023.discus.003.shtml?

my_atl_2023_076 = [14.9,47.3,70;16.6,52.1,85;18.9,56.9,120;21.1,61.0,135;22.5,64.7,135];
nhc_atl_2023_076 = [14.9,47.2,65;16.6,52.2,90;18.9,57.1,115;20.8,61.5,125;22.5,65.0,130];
btk_atl_2023_076 = [15.1,47.1,70;17.0,51.8,135;19.0,56.0,105;20.8,59.5,85;22.3,61.9,105]; # TCR
myvect = [myvect;my_atl_2023_076];
nhcvect = [nhcvect;nhc_atl_2023_076];
btkvect = [btkvect;btk_atl_2023_076];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 061 ... JOVA before 2023-09-06-03Z
# my at https://twitter.com/elioeFIN/status/1699243672498249794
# NHC at https://www.nhc.noaa.gov/archive/2023/ep11/ep112023.discus.006.shtml?

my_epac_2023_061 = [14.9,112.5,75;17.0,117.5,100;19.6,122.3,80;22.3,126.8,55;24.1,130.3,45];
nhc_epac_2023_061 = [14.8,112.5,90;16.8,117.5,115;19.4,122.5,100;22.1,127.0,65;24.2,131.1,50];
btk_epac_2023_061 = [15.3,112.4,140;18.0,117.9,115;20.7,123.2,70;23.3,126.2,45;24.7,127.7,30]; # TCR
myvect = [myvect;my_epac_2023_061];
nhcvect = [nhcvect;nhc_epac_2023_061];
btkvect = [btkvect;btk_epac_2023_061];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Atl 077 ... LEE before 2023-09-06-21Z
# my at https://twitter.com/elioeFIN/status/1699505296337457270
# NHC at https://www.nhc.noaa.gov/archive/2023/al13/al132023.discus.006.shtml?

my_atl_2023_077 = [16.5,50.6,75;18.7,55.3,105;20.8,59.5,125;22.3,62.7,125;23.6,65.5,125];
nhc_atl_2023_077 = [16.5,50.6,85;18.6,55.3,110;20.4,59.4,130;21.9,62.9,130;23.0,65.2,125];
btk_atl_2023_077 = [16.6,50.7,105;18.5,55.1,125;20.4,58.8,95;21.9,61.4,105;23.5,63.9,100]; # TCR
myvect = [myvect;my_atl_2023_077];
nhcvect = [nhcvect;nhc_atl_2023_077];
btkvect = [btkvect;btk_atl_2023_077];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 062 ... JOVA before 2023-09-06-21Z
# my at https://twitter.com/elioeFIN/status/1699507705025552618
# NHC at https://www.nhc.noaa.gov/archive/2023/ep11/ep112023.discus.009.shtml?

my_epac_2023_062 = [16.7,116.2,125;19.1,121.5,115;21.6,126.1,75;24.1,129.7,55;26.0,133.2,40];
nhc_epac_2023_062 = [16.7,116.3,130;19.0,121.6,110;21.7,126.5,80;24.0,129.9,55;25.4,133.4,40];
btk_epac_2023_062 = [17.4,116.6,125;20.1,121.9,75;22.6,125.8,45;24.5,127.4,30;24.6,129.0,25]; # TCR
myvect = [myvect;my_epac_2023_062];
nhcvect = [nhcvect;nhc_epac_2023_062];
btkvect = [btkvect;btk_epac_2023_062];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Atl 078 ... LEE before 2023-09-07-03Z
# my at https://twitter.com/elioeFIN/status/1699591420309389340
# NHC at https://www.nhc.noaa.gov/archive/2023/al13/al132023.discus.007.shtml?

my_atl_2023_078 = [16.9,51.9,85;19.2,56.4,115;21.0,60.1,130;22.5,63.1,130;23.1,65.5,130];
nhc_atl_2023_078 = [17.0,51.9,85;19.1,56.5,120;20.8,60.3,135;22.0,63.5,130;23.0,66.1,125];
btk_atl_2023_078 = [17.0,51.8,135;19.0,56.0,105;20.8,59.5,85;22.3,61.9,105;23.7,64.5,100]; # TCR
myvect = [myvect;my_atl_2023_078];
nhcvect = [nhcvect;nhc_atl_2023_078];
btkvect = [btkvect;btk_atl_2023_078];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 063 ... JOVA before 2023-09-07-03Z
# my at https://twitter.com/elioeFIN/status/1699601823445778607
# NHC at https://www.nhc.noaa.gov/archive/2023/ep11/ep112023.discus.010.shtml?

my_epac_2023_063 = [17.7,117.8,125;20.0,123.0,100;22.8,127.4,65;25.6,130.3,45;26.0,133.9,35];
nhc_epac_2023_063 = [17.6,117.8,135;20.0,123.0,100;22.8,127.6,65;24.6,130.5,45;25.5,134.0,35];
btk_epac_2023_063 = [18.0,117.9,115;20.7,123.2,70;23.3,126.2,45;24.7,127.7,30;24.4,129.5,25]; # TCR
myvect = [myvect;my_epac_2023_063];
nhcvect = [nhcvect;nhc_epac_2023_063];
btkvect = [btkvect;btk_epac_2023_063];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Atl 079 ... LEE before 2023-09-07-21Z
# my at https://twitter.com/elioeFIN/status/1699863988270494030
# NHC at https://www.nhc.noaa.gov/archive/2023/al13/al132023.discus.010.shtml?

my_atl_2023_079 = [18.7,55.3,140;20.5,59.2,135;21.8,62.1,130;23.1,64.6,125;23.9,66.6,125];
nhc_atl_2023_079 = [18.7,55.2,145;20.6,59.0,135;22.0,61.8,130;23.1,64.3,130;24.0,66.4,120];
btk_atl_2023_079 = [18.5,55.1,125;20.4,58.8,95;21.9,61.4,105;23.5,63.9,100;24.5,66.2,100]; # TCR
myvect = [myvect;my_atl_2023_079];
nhcvect = [nhcvect;nhc_atl_2023_079];
btkvect = [btkvect;btk_atl_2023_079];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 064 ... JOVA before 2023-09-07-21Z
# my at https://twitter.com/elioeFIN/status/1699868103910269078
# NHC at https://www.nhc.noaa.gov/archive/2023/ep11/ep112023.discus.013.shtml?

my_epac_2023_064 = [19.7,122.0,90;22.0,126.2,55;24.5,128.7,35;25.3,131.2,25;24.8,134.7,20];
nhc_epac_2023_064 = [19.8,122.0,95;22.4,126.4,60;24.5,129.1,40;25.0,131.1,30;24.2,133.2,25];
btk_epac_2023_064 = [20.1,121.9,75;22.6,125.8,45;24.5,127.4,30;24.6,129.0,25;22.7,132.5,20]; # TCR
myvect = [myvect;my_epac_2023_064];
nhcvect = [nhcvect;nhc_epac_2023_064];
btkvect = [btkvect;btk_epac_2023_064];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Atl 080 ... LEE before 2023-09-08-21Z
# my at https://twitter.com/elioeFIN/status/1700228064540492203
# NHC at https://www.nhc.noaa.gov/archive/2023/al13/al132023.discus.014.shtml?

my_atl_2023_080 = [20.5,58.6,115;21.8,61.4,120;22.9,64.0,120;23.8,66.2,120;25.1,67.8,110];
nhc_atl_2023_080 = [20.6,58.6,120;21.9,61.3,125;23.0,63.7,125;23.7,66.0,120;25.1,67.6,110];
btk_atl_2023_080 = [20.4,58.8,95;21.9,61.4,105;23.5,63.9,100;24.5,66.2,100;26.8,67.6,90]; # TCR
myvect = [myvect;my_atl_2023_080];
nhcvect = [nhcvect;nhc_atl_2023_080];
btkvect = [btkvect;btk_atl_2023_080];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 081 ... MARGOT before 2023-09-08-21Z
# my at https://twitter.com/elioeFIN/status/1700232243669536834
# NHC at https://www.nhc.noaa.gov/archive/2023/al14/al142023.discus.006.shtml?

my_atl_2023_081 = [20.9,38.5,45;23.4,40.9,55;26.5,41.9,65;29.7,42.4,75;32.5,43.6,80];
nhc_atl_2023_081 = [21.0,38.5,45;23.6,41.0,55;26.9,42.2,70;30.0,42.6,75;33.1,43.4,75];
btk_atl_2023_081 = [20.7,38.3,40;23.3,40.0,50;26.4,39.9,65;31.0,39.4,75;34.4,40.6,75]; # TCR
myvect = [myvect;my_atl_2023_081];
nhcvect = [nhcvect;nhc_atl_2023_081];
btkvect = [btkvect;btk_atl_2023_081];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Med 01 ... DANIEL before 2023-09-09-03Z
# my at https://twitter.com/elioeFIN/status/1700303588478669194
# (no U.S. agency issuing forecasts in basin)

# Atl 082 ... LEE before 2023-09-09-03Z
# my at https://twitter.com/elioeFIN/status/1700316067527065701
# NHC at https://www.nhc.noaa.gov/archive/2023/al13/al132023.discus.015.shtml?

my_atl_2023_082 = [20.9,59.4,100;22.1,62.0,115;23.0,64.3,115;23.5,66.6,110;25.1,67.8,105];
nhc_atl_2023_082 = [20.8,59.4,95;22.0,62.0,115;22.8,64.2,120;23.5,66.4,120;25.3,67.7,105];
btk_atl_2023_082 = [20.8,59.5,85;22.3,61.9,105;23.7,64.5,100;24.9,66.6,100;27.6,67.8,90]; # TCR
myvect = [myvect;my_atl_2023_082];
nhcvect = [nhcvect;nhc_atl_2023_082];
btkvect = [btkvect;btk_atl_2023_082];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 083 ... MARGOT before 2023-09-09-03Z
# my at https://twitter.com/elioeFIN/status/1700321119884996884
# NHC at https://www.nhc.noaa.gov/archive/2023/al14/al142023.discus.007.shtml?

my_atl_2023_083 = [21.6,39.6,45;23.8,41.7,55;26.6,42.9,70;29.9,43.5,80;32.9,44.8,85];
nhc_atl_2023_083 = [21.5,39.5,45;23.9,41.6,55;27.0,42.4,65;30.0,43.0,70;33.0,43.5,75];
btk_atl_2023_083 = [21.2,38.9,45;24.0,40.0,55;27.5,39.6,70;32.1,39.6,75;35.1,40.7,75]; # TCR
myvect = [myvect;my_atl_2023_083];
nhcvect = [nhcvect;nhc_atl_2023_083];
btkvect = [btkvect;btk_atl_2023_083];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 084 ... LEE before 2023-09-09-21Z
# my at https://twitter.com/elioeFIN/status/1700589707715899522
# NHC at https://www.nhc.noaa.gov/archive/2023/al13/al132023.discus.018.shtml?

my_atl_2023_084 = [22.0,61.7,115;23.1,64.3,120;23.8,66.2,115;25.0,68.2,105;28.1,68.4,95];
nhc_atl_2023_084 = [22.1,61.6,110;23.3,64.1,120;23.9,66.3,115;25.1,67.8,105;27.9,68.2,100];
btk_atl_2023_084 = [21.9,61.4,105;23.5,63.9,100;24.5,66.2,100;26.8,67.6,90;31.1,68.3,75]; # TCR
myvect = [myvect;my_atl_2023_084];
nhcvect = [nhcvect;nhc_atl_2023_084];
btkvect = [btkvect;btk_atl_2023_084];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 085 ... MARGOT before 2023-09-09-21Z
# my at https://twitter.com/elioeFIN/status/1700594505051689415
# NHC at https://www.nhc.noaa.gov/archive/2023/al14/al142023.discus.010.shtml?

my_atl_2023_085 = [22.9,40.2,50;26.0,41.1,55;29.6,40.8,65;33.3,41.2,65;34.8,41.8,70];
nhc_atl_2023_085 = [23.1,40.3,50;26.0,41.0,55;29.7,41.3,65;33.1,41.8,70;34.8,41.8,75];
btk_atl_2023_085 = [23.3,40.0,50;26.4,39.9,65;31.0,39.4,75;34.4,40.6,75;36.6,39.6,70]; # TCR
myvect = [myvect;my_atl_2023_085];
nhcvect = [nhcvect;nhc_atl_2023_085];
btkvect = [btkvect;btk_atl_2023_085];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 086 ... LEE before 2023-09-10-21Z
# my at https://twitter.com/elioeFIN/status/1700953871818920243
# NHC at https://www.nhc.noaa.gov/archive/2023/al13/al132023.discus.022.shtml?

my_atl_2023_086 = [23.3,64.0,110;24.1,66.2,105;25.5,67.8,95;28.9,68.1,90;33.5,67.5,80];
nhc_atl_2023_086 = [23.3,63.9,120;24.2,66.2,115;25.6,67.6,100;28.9,68.0,90;33.6,67.4,80];
btk_atl_2023_086 = [23.5,63.9,100;24.5,66.2,100;26.8,67.6,90;31.1,68.3,75;37.1,66.7,75]; # TCR
myvect = [myvect;my_atl_2023_086];
nhcvect = [nhcvect;nhc_atl_2023_086];
btkvect = [btkvect;btk_atl_2023_086];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 087 ... MARGOT before 2023-09-10-21Z
# my at https://twitter.com/elioeFIN/status/1700958874558230896
# NHC at https://www.nhc.noaa.gov/archive/2023/al14/al142023.discus.014.shtml?

my_atl_2023_087 = [26.8,40.2,60;30.8,40.4,70;34.2,41.2,70;36.3,40.4,75;36.7,40.3,65];
nhc_atl_2023_087 = [26.8,40.4,65;30.8,40.5,75;34.3,41.4,75;36.3,41.3,75;37.2,41.2,70];
btk_atl_2023_087 = [26.4,39.9,65;31.0,39.4,75;34.4,40.6,75;36.6,39.6,70;36.1,37.8,55]; # TCR
myvect = [myvect;my_atl_2023_087];
nhcvect = [nhcvect;nhc_atl_2023_087];
btkvect = [btkvect;btk_atl_2023_087];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 088 ... LEE before 2023-09-11-03Z
# my at https://twitter.com/elioeFIN/status/1701039611386974485
# NHC at https://www.nhc.noaa.gov/archive/2023/al13/al132023.discus.023.shtml?

my_atl_2023_088 = [23.5,64.4,110;24.6,66.5,105;26.6,67.4,95;30.5,67.3,90;36.0,66.3,75];
nhc_atl_2023_088 = [23.6,64.4,120;24.6,66.4,110;26.5,67.7,95;30.2,67.9,85;35.5,67.0,70];
btk_atl_2023_088 = [23.7,64.5,100;24.9,66.6,100;27.6,67.8,90;32.1,67.8,75;38.7,65.9,75]; # TCR
myvect = [myvect;my_atl_2023_088];
nhcvect = [nhcvect;nhc_atl_2023_088];
btkvect = [btkvect;btk_atl_2023_088];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 089 ... MARGOT before 2023-09-11-03Z
# my at https://twitter.com/elioeFIN/status/1701042832486646035
# NHC at https://www.nhc.noaa.gov/archive/2023/al14/al142023.discus.015.shtml?

my_atl_2023_089 = [27.7,40.2,65;31.9,40.7,75;34.6,42.2,75;36.9,41.5,70;37.8,41.8,60];
nhc_atl_2023_089 = [27.8,40.0,65;31.8,40.5,75;34.8,41.6,75;36.6,41.0,75;37.5,40.8,65];
btk_atl_2023_089 = [27.5,39.6,70;32.1,39.6,75;35.1,40.7,75;36.7,39.1,65;35.7,37.8,55]; # TCR
myvect = [myvect;my_atl_2023_089];
nhcvect = [nhcvect;nhc_atl_2023_089];
btkvect = [btkvect;btk_atl_2023_089];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 090 ... LEE before 2023-09-12-21Z
# my at https://twitter.com/elioeFIN/status/1701678788742983879
# NHC at https://www.nhc.noaa.gov/archive/2023/al13/al132023.discus.030.shtml?

my_atl_2023_090 = [26.6,67.6,100;30.6,68.2,85;35.9,66.7,75;42.6,65.4,55;46.8,65.4,40];
nhc_atl_2023_090 = [26.7,67.6,95;30.7,68.2,85;36.4,66.8,75;42.8,66.5,65;47.1,64.5,40];
btk_atl_2023_090 = [26.8,67.6,90;31.1,68.3,75;37.1,66.7,75;43.8,66.4,55;48.6,60.1,40]; # TCR
myvect = [myvect;my_atl_2023_090];
nhcvect = [nhcvect;nhc_atl_2023_090];
btkvect = [btkvect;btk_atl_2023_090];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 091 ... MARGOT before 2023-09-12-21Z
# my at https://twitter.com/elioeFIN/status/1701683354054148566
# NHC at https://www.nhc.noaa.gov/archive/2023/al14/al142023.discus.022.shtml?

my_atl_2023_091 = [34.4,41.0,70;36.4,40.5,70;37.4,40.8,55;38.4,43.1,50;40.2,44.3,50];
nhc_atl_2023_091 = [34.4,41.0,70;36.4,40.7,70;37.5,41.0,65;38.1,42.5,50;40.0,43.0,45];
btk_atl_2023_091 = [34.4,40.6,75;36.6,39.6,70;36.1,37.8,55;34.3,39.2,45;34.7,43.0,35]; # TCR
myvect = [myvect;my_atl_2023_091];
nhcvect = [nhcvect;nhc_atl_2023_091];
btkvect = [btkvect;btk_atl_2023_091];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 092 ... LEE before 2023-09-13-03Z
# my at https://twitter.com/elioeFIN/status/1701764802790453480
# NHC at https://www.nhc.noaa.gov/archive/2023/al13/al132023.discus.031.shtml?

my_atl_2023_092 = [27.6,67.7,95;31.9,67.6,80;37.9,65.5,70;44.9,65.2,50;48.7,61.9,40];
nhc_atl_2023_092 = [27.7,67.8,95;32.1,67.9,80;38.0,66.6,75;44.0,66.4,60;48.5,62.0,40];
btk_atl_2023_092 = [27.6,67.8,90;32.1,67.8,75;38.7,65.9,75;44.7,66.2,55;50.7,57.9,35]; # TCR
myvect = [myvect;my_atl_2023_092];
nhcvect = [nhcvect;nhc_atl_2023_092];
btkvect = [btkvect;btk_atl_2023_092];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 093 ... MARGOT before 2023-09-13-03Z
# my at https://twitter.com/elioeFIN/status/1701770486554735011
# NHC at https://www.nhc.noaa.gov/archive/2023/al14/al142023.discus.023.shtml?

my_atl_2023_093 = [35.1,40.8,75;37.0,39.8,65;37.1,40.5,55;38.0,42.8,45;40.9,42.3,55];
nhc_atl_2023_093 = [35.1,40.8,70;36.9,40.2,70;37.5,40.6,60;38.4,42.4,50;40.6,42.0,45];
btk_atl_2023_093 = [35.1,40.7,75;36.7,39.1,65;35.7,37.8,55;34.0,40.1,40;35.3,43.6,30]; # TCR
myvect = [myvect;my_atl_2023_093];
nhcvect = [nhcvect;nhc_atl_2023_093];
btkvect = [btkvect;btk_atl_2023_093];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 094 ... LEE before 2023-09-14-03Z
# my at https://twitter.com/elioeFIN/status/1702125680337506531
# NHC at https://www.nhc.noaa.gov/archive/2023/al13/al132023.discus.035.shtml?

my_atl_2023_094 = [31.9,67.8,80;37.8,66.0,70;43.8,65.0,55;50.3,58.3,35;54.8,46.1,45];
nhc_atl_2023_094 = [31.9,68.0,85;37.7,66.5,75;44.0,66.3,60;49.4,60.9,40;53.7,50.0,35];
btk_atl_2023_094 = [32.1,67.8,75;38.7,65.9,75;44.7,66.2,55;50.7,57.9,35;53.7,32.0,30]; # TCR (except day 5 self-made)
myvect = [myvect;my_atl_2023_094];
nhcvect = [nhcvect;nhc_atl_2023_094];
btkvect = [btkvect;btk_atl_2023_094];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 095 ... MARGOT before 2023-09-14-03Z
# my at https://twitter.com/elioeFIN/status/1702132441119404037
# NHC at https://www.nhc.noaa.gov/archive/2023/al14/al142023.discus.027.shtml?

my_atl_2023_095 = [36.5,39.6,65;35.9,40.0,60;35.3,42.6,45;37.7,43.9,50;40.5,40.2,50];
nhc_atl_2023_095 = [36.4,39.6,65;36.1,39.6,55;35.5,41.7,45;37.2,43.2,45;40.4,40.2,45];
btk_atl_2023_095 = [36.7,39.1,65;35.7,37.8,55;34.0,40.1,40;35.3,43.6,30;39.0,41.7,25]; # TCR (except day 5 self-made)
myvect = [myvect;my_atl_2023_095];
nhcvect = [nhcvect;nhc_atl_2023_095];
btkvect = [btkvect;btk_atl_2023_095];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 096 ... LEE before 2023-09-14-15Z
# my at https://twitter.com/elioeFIN/status/1702307162582569024
# NHC at https://www.nhc.noaa.gov/archive/2023/al13/al132023.discus.037.shtml?

my_atl_2023_096 = [34.8,67.3,75;41.2,66.4,60;47.0,63.2,40;53.6,52.5,35];
nhc_atl_2023_096 = [35.0,67.2,70;41.5,66.5,65;47.0,63.6,45;52.6,52.2,35];
btk_atl_2023_096 = [35.1,67.1,75;42.7,66.3,65;47.3,63.0,40;52.6,48.6,40]; # TCR
myvect = [myvect;my_atl_2023_096];
nhcvect = [nhcvect;nhc_atl_2023_096];
btkvect = [btkvect;btk_atl_2023_096];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 097 ... MARGOT before 2023-09-14-15Z
# my at https://twitter.com/elioeFIN/status/1702314037189783664
# NHC at https://www.nhc.noaa.gov/archive/2023/al14/al142023.discus.029.shtml?

my_atl_2023_097 = [36.6,38.9,60;35.4,39.6,50;34.9,42.9,40;37.6,43.1,50;40.7,39.0,45];
nhc_atl_2023_097 = [36.7,38.9,65;35.5,39.5,55;35.1,42.3,45;37.5,43.3,45;40.0,39.0,45];
btk_atl_2023_097 = [36.5,38.1,55;34.7,38.5,50;34.3,42.0,35;36.8,43.6,30;39.6,36.9,25]; # TCR (except day 5 self-made)
myvect = [myvect;my_atl_2023_097];
nhcvect = [nhcvect;nhc_atl_2023_097];
btkvect = [btkvect;btk_atl_2023_097];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 098 ... LEE before 2023-09-15-03Z
# my at https://twitter.com/elioeFIN/status/1702489246748098752
# NHC at https://www.nhc.noaa.gov/archive/2023/al13/al132023.discus.039.shtml?

my_atl_2023_098 = [38.3,66.8,70;44.7,65.8,45;50.8,59.2,35;56.1,43.5,35];
nhc_atl_2023_098 = [38.4,66.6,75;44.3,66.0,60;49.6,59.1,40;54.5,42.5,35];
btk_atl_2023_098 = [38.7,65.9,75;44.7,66.2,55;50.7,57.9,35;53.7,32.0,30]; # TCR (except day 4 self-made)
myvect = [myvect;my_atl_2023_098];
nhcvect = [nhcvect;nhc_atl_2023_098];
btkvect = [btkvect;btk_atl_2023_098];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 099 ... MARGOT before 2023-09-15-03Z
# my at https://twitter.com/elioeFIN/status/1702493137174659419
# NHC at https://www.nhc.noaa.gov/archive/2023/al14/al142023.discus.031.shtml?

my_atl_2023_099 = [36.0,38.6,60;35.1,41.1,45;36.3,43.3,45;39.7,41.1,50;40.8,34.5,40];
nhc_atl_2023_099 = [36.1,38.8,60;35.4,41.1,45;36.5,43.3,45;39.2,41.0,45;40.1,35.5,40];
btk_atl_2023_099 = [35.7,37.8,55;34.0,40.1,40;35.3,43.6,30;39.0,41.7,25;38.3,33.2,25]; # TCR (except day 4-5 self-made)
myvect = [myvect;my_atl_2023_099];
nhcvect = [nhcvect;nhc_atl_2023_099];
btkvect = [btkvect;btk_atl_2023_099];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 100 ... 15L before 2023-09-16-21Z
# my at https://twitter.com/elioeFIN/status/1703129179359682909
# NHC at https://www.nhc.noaa.gov/archive/2023/al15/al152023.discus.006.shtml?

my_atl_2023_100 = [24.2,49.9,50;26.9,52.9,70;29.8,56.1,85;34.2,56.7,85;39.0,50.9,80];
nhc_atl_2023_100 = [24.2,49.7,45;26.9,52.9,65;30.0,56.4,95;34.6,57.3,90;39.6,52.0,80];
btk_atl_2023_100 = [24.5,49.4,55;27.5,51.7,70;31.1,54.7,85;36.7,53.6,80;42.8,42.8,70]; # TCR
myvect = [myvect;my_atl_2023_100];
nhcvect = [nhcvect;nhc_atl_2023_100];
btkvect = [btkvect;btk_atl_2023_100];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 101 ... 15L before 2023-09-17-03Z
# my at https://twitter.com/elioeFIN/status/1703213473138655632
# NHC at https://www.nhc.noaa.gov/archive/2023/al15/al152023.discus.007.shtml?

my_atl_2023_101 = [25.2,50.7,60;27.8,53.8,75;31.4,56.1,90;36.2,54.7,90;41.9,46.2,80];
nhc_atl_2023_101 = [25.3,50.6,55;27.8,54.0,75;31.3,56.7,95;36.0,55.6,85;41.9,47.3,80];
btk_atl_2023_101 = [25.3,50.0,60;28.2,52.4,75;32.4,55.0,85;38.3,51.6,80;44.3,38.7,65]; # TCR
myvect = [myvect;my_atl_2023_101];
nhcvect = [nhcvect;nhc_atl_2023_101];
btkvect = [btkvect;btk_atl_2023_101];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 102 ... MARGOT before 2023-09-17-03Z
# my at https://twitter.com/elioeFIN/status/1703217638917214591
# NHC at https://www.nhc.noaa.gov/archive/2023/al14/al142023.discus.039.shtml?

my_atl_2023_102 = [34.7,43.2,35;37.1,41.7,35;36.5,35.7,25;36.2,32.8,25;38.0,30.0,25];
nhc_atl_2023_102 = [35.1,43.1,30;37.9,41.1,30;37.8,35.3,35;37.0,32.0,30;37.6,29.0,25];
btk_atl_2023_102 = [35.3,43.6,30;39.0,41.7,25;38.3,33.2,25;36.0,29.5,25;34.9,28.7,25]; # TCR (except days 2-5 self-made)
myvect = [myvect;my_atl_2023_102];
nhcvect = [nhcvect;nhc_atl_2023_102];
btkvect = [btkvect;btk_atl_2023_102];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 103 ... NIGEL before 2023-09-17-21Z
# my at https://twitter.com/elioeFIN/status/1703485033284096441
# NHC at https://www.nhc.noaa.gov/archive/2023/al15/al152023.discus.010.shtml?

my_atl_2023_103 = [27.6,52.2,80;30.6,55.2,100;35.3,54.7,90;40.8,46.7,80;48.2,29.8,55];
nhc_atl_2023_103 = [27.8,52.1,85;31.0,55.0,100;35.7,54.2,90;41.3,45.9,75;47.8,31.7,60];
btk_atl_2023_103 = [27.5,51.7,70;31.1,54.7,85;36.7,53.6,80;42.8,42.8,70;48.9,26.8,55]; # TCR
myvect = [myvect;my_atl_2023_103];
nhcvect = [nhcvect;nhc_atl_2023_103];
btkvect = [btkvect;btk_atl_2023_103];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 104 ... NIGEL before 2023-09-18-03Z
# my at https://twitter.com/elioeFIN/status/1703575450658746383
# NHC at https://www.nhc.noaa.gov/archive/2023/al15/al152023.discus.011.shtml?

my_atl_2023_104 = [28.3,52.8,95;31.9,55.4,100;37.2,53.3,90;43.0,42.5,80;50.6,25.3,55];
nhc_atl_2023_104 = [28.5,52.8,90;32.1,55.2,100;37.4,52.5,90;43.1,42.1,75;50.8,28.0,60];
btk_atl_2023_104 = [28.2,52.4,75;32.4,55.0,85;38.3,51.6,80;44.3,38.7,65;50.9,24.0,55]; # TCR
myvect = [myvect;my_atl_2023_104];
nhcvect = [nhcvect;nhc_atl_2023_104];
btkvect = [btkvect;btk_atl_2023_104];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 065 ... 95E before 2023-09-18-03Z
# my at https://twitter.com/elioeFIN/status/1703587306651767089
# (no NHC advisory)

# Atl 105 ... NIGEL before 2023-09-18-21Z
# my at https://twitter.com/elioeFIN/status/1703854471283896572
# NHC at https://www.nhc.noaa.gov/archive/2023/al15/al152023.discus.014.shtml?

my_atl_2023_105 = [31.0,54.8,90;36.2,53.7,85;42.0,43.9,70;48.6,27.4,50;56.6,16.2,45];
nhc_atl_2023_105 = [31.0,54.5,90;36.2,53.5,95;42.1,43.9,75;48.0,29.0,60;56.0,18.0,50];
btk_atl_2023_105 = [31.1,54.7,85;36.7,53.6,80;42.8,42.8,70;48.9,26.8,55;57.7,23.2,55]; # TCR
myvect = [myvect;my_atl_2023_105];
nhcvect = [nhcvect;nhc_atl_2023_105];
btkvect = [btkvect;btk_atl_2023_105];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 066 ... 13E before 2023-09-19-21Z
# my at https://twitter.com/elioeFIN/status/1704216904980746590
# NHC at https://www.nhc.noaa.gov/archive/2023/ep13/ep132023.discus.002.shtml?

my_epac_2023_066 = [16.0,123.8,40;17.7,127.1,40;20.3,128.6,30;21.6,130.6,25];
nhc_epac_2023_066 = [15.9,124.1,50;17.4,126.6,45;20.4,127.8,30;22.3,128.7,25];
btk_epac_2023_066 = [16.0,123.9,45;17.4,125.6,35;21.1,125.6,30;23.1,126.0,25]; # TCR
myvect = [myvect;my_epac_2023_066];
nhcvect = [nhcvect;nhc_epac_2023_066];
btkvect = [btkvect;btk_epac_2023_066];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Atl 106 ... NIGEL before 2023-09-20-03Z
# my at https://twitter.com/elioeFIN/status/1704301716034719905
# NHC at https://www.nhc.noaa.gov/archive/2023/al15/al152023.discus.019.shtml?

my_atl_2023_106 = [38.2,51.8,80;44.2,38.8,65;50.9,23.8,45;58.1,21.1,55;56.5,21.1,50];
nhc_atl_2023_106 = [38.4,51.3,85;44.4,39.0,65;50.8,25.9,50;57.1,22.0,45;58.9,21.5,35];
btk_atl_2023_106 = [38.3,51.6,80;44.3,38.7,65;50.9,24.0,55;58.3,25.6,50;58.0,20.9,40]; # TCR
myvect = [myvect;my_atl_2023_106];
nhcvect = [nhcvect;nhc_atl_2023_106];
btkvect = [btkvect;btk_atl_2023_106];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 067 ... KENNETH before 2023-09-20-03Z
# my at https://twitter.com/elioeFIN/status/1704311012399153641
# NHC at https://www.nhc.noaa.gov/archive/2023/ep13/ep132023.discus.003.shtml?

my_epac_2023_067 = [16.1,124.8,40;18.1,126.9,35;20.4,128.0,25;22.7,128.7,20];
nhc_epac_2023_067 = [15.8,124.6,50;17.7,126.8,40;20.4,127.6,30;21.4,128.8,20];
btk_epac_2023_067 = [16.3,124.5,45;18.0,125.9,35;21.8,125.4,30;23.2,126.4,25]; # TCR
myvect = [myvect;my_epac_2023_067];
nhcvect = [nhcvect;nhc_epac_2023_067];
btkvect = [btkvect;btk_epac_2023_067];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Atl 107 ... NIGEL before 2023-09-20-21Z
# my at https://twitter.com/elioeFIN/status/1704572696669937988
# NHC at https://www.nhc.noaa.gov/archive/2023/al15/al152023.discus.022.shtml?

my_atl_2023_107 = [42.7,43.0,70;48.4,27.1,45;55.7,21.0,45;55.0,25.3,45];
nhc_atl_2023_107 = [42.8,43.2,75;49.0,27.6,55;56.0,23.5,50;57.0,23.5,40];
btk_atl_2023_107 = [42.8,42.8,70;48.9,26.8,55;57.7,23.2,55;56.4,23.5,45]; # TCR
myvect = [myvect;my_atl_2023_107];
nhcvect = [nhcvect;nhc_atl_2023_107];
btkvect = [btkvect;btk_atl_2023_107];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Epac 068 ... KENNETH before 2023-09-20-21Z
# my at https://twitter.com/elioeFIN/status/1704576217968410770
# NHC at https://www.nhc.noaa.gov/archive/2023/ep13/ep132023.discus.006.shtml?

my_epac_2023_068 = [17.4,126.3,45;21.1,126.8,30;22.6,127.4,20];
nhc_epac_2023_068 = [17.3,126.4,45;20.0,127.1,30;21.8,127.5,25];
btk_epac_2023_068 = [17.4,125.6,35;21.1,125.6,30;23.1,126.0,25]; # TCR
myvect = [myvect;my_epac_2023_068];
nhcvect = [nhcvect;nhc_epac_2023_068];
btkvect = [btkvect;btk_epac_2023_068];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Atl 108 ... 16L before 2023-09-21-21Z
# my at https://twitter.com/elioeFIN/status/1704940403638624355
# NHC at https://www.nhc.noaa.gov/archive/2023/al16/al162023.discus.002.shtml?

my_atl_2023_108 = [32.2,76.4,45;35.4,77.6,40;39.3,77.4,25];
nhc_atl_2023_108 = [32.6,76.0,45;35.6,77.0,50;38.7,76.1,30];
btk_atl_2023_108 = [32.7,76.1,60;36.3,77.5,40;38.9,76.9,20]; # TCR
myvect = [myvect;my_atl_2023_108];
nhcvect = [nhcvect;nhc_atl_2023_108];
btkvect = [btkvect;btk_atl_2023_108];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Atl 109 ... OPHELIA before 2023-09-22-21Z
# my at https://twitter.com/elioeFIN/status/1705297785514336346
# NHC at https://www.nhc.noaa.gov/archive/2023/al16/al162023.discus.006.shtml?

my_atl_2023_109 = [36.1,77.5,40;38.2,77.4,20];
nhc_atl_2023_109 = [36.1,77.2,45;38.9,76.6,25];
btk_atl_2023_109 = [36.3,77.5,40;38.9,76.9,20]; # TCR
myvect = [myvect;my_atl_2023_109];
nhcvect = [nhcvect;nhc_atl_2023_109];
btkvect = [btkvect;btk_atl_2023_109];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Atl 110 ... 90L before 2023-09-22-21Z
# my at https://twitter.com/elioeFIN/status/1705303810577420474
# (no NHC advisory)

# Atl 111 ... 17L before 2023-09-23-21Z
# my at https://twitter.com/elioeFIN/status/1705662810808549845
# NHC at https://www.nhc.noaa.gov/archive/2023/al17/al172023.discus.002.shtml?

my_atl_2023_111 = [16.1,43.6,40;16.7,47.8,40;17.3,50.3,45;20.6,52.0,50;24.1,52.7,60];
nhc_atl_2023_111 = [15.9,43.8,40;16.7,48.3,45;18.0,51.4,50;21.0,53.5,55;24.0,54.0,60];
btk_atl_2023_111 = [16.6,42.0,45;17.1,46.2,45;17.1,50.8,40;17.8,53.7,45;18.6,54.8,40]; # TCR
myvect = [myvect;my_atl_2023_111];
nhcvect = [nhcvect;nhc_atl_2023_111];
btkvect = [btkvect;btk_atl_2023_111];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 069 ... 97E before 2023-09-23-21Z
# my at https://twitter.com/elioeFIN/status/1705657495732023606
# NHC at https://www.nhc.noaa.gov/archive/2023/ep14/ep142023.discus.001.shtml?

my_epac_2023_069 = [15.0,125.4,30;15.5,130.8,35;15.3,136.6,35];
nhc_epac_2023_069 = [14.7,125.2,40;14.9,130.5,45;14.3,136.5,35];
btk_epac_2023_069 = [15.1,124.9,30;15.7,129.6,25;13.9,135.8,20]; # TCR
myvect = [myvect;my_epac_2023_069];
nhcvect = [nhcvect;nhc_epac_2023_069];
btkvect = [btkvect;btk_epac_2023_069];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Atl 112 ... PHILIPPE before 2023-09-24-03Z
# my at https://twitter.com/elioeFIN/status/1705758678647787824
# NHC at https://www.nhc.noaa.gov/archive/2023/al17/al172023.discus.003.shtml?

my_atl_2023_112 = [15.8,44.8,40;16.8,48.8,40;17.5,51.6,40;20.9,53.7,50;23.7,54.6,50];
nhc_atl_2023_112 = [15.9,44.8,40;16.7,49.1,45;18.3,52.0,50;21.2,53.9,55;23.5,54.5,60];
btk_atl_2023_112 = [16.9,42.9,45;17.4,47.3,45;17.2,51.6,40;18.1,54.3,40;18.5,54.9,40]; # TCR
myvect = [myvect;my_atl_2023_112];
nhcvect = [nhcvect;nhc_atl_2023_112];
btkvect = [btkvect;btk_atl_2023_112];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 070 ... 14E before 2023-09-24-03Z
# my at https://twitter.com/elioeFIN/status/1705753905802461400
# NHC at https://www.nhc.noaa.gov/archive/2023/ep14/ep142023.discus.002.shtml?

my_epac_2023_070 = [14.9,126.4,35;14.7,131.4,35;14.0,137.6,30];
nhc_epac_2023_070 = [14.5,126.6,40;14.4,131.7,40;13.6,137.7,35];
btk_epac_2023_070 = [15.1,125.9,25;15.3,131.1,25;13.3,137.7,20]; # TCR
myvect = [myvect;my_epac_2023_070];
nhcvect = [nhcvect;nhc_epac_2023_070];
btkvect = [btkvect;btk_epac_2023_070];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Atl 113 ... PHILIPPE before 2023-09-24-21Z
# my at https://twitter.com/elioeFIN/status/1706024343895978294
# NHC at https://www.nhc.noaa.gov/archive/2023/al17/al172023.discus.006.shtml?

my_atl_2023_113 = [17.7,46.6,45;18.7,50.6,45;21.2,53.2,45;23.8,55.3,55;25.0,56.3,55];
nhc_atl_2023_113 = [17.8,46.4,45;18.8,50.4,45;21.0,53.5,50;23.0,55.5,55;25.0,57.0,60];
btk_atl_2023_113 = [17.1,46.2,45;17.1,50.8,40;17.8,53.7,45;18.6,54.8,40;18.0,55.6,45]; # TCR
myvect = [myvect;my_atl_2023_113];
nhcvect = [nhcvect;nhc_atl_2023_113];
btkvect = [btkvect;btk_atl_2023_113];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 071 ... 14E before 2023-09-24-21Z
# my at https://twitter.com/elioeFIN/status/1706020054813270169
# NHC at https://www.nhc.noaa.gov/archive/2023/ep14/ep142023.discus.005.shtml?

my_epac_2023_071 = [15.3,130.1,25;14.6,136.0,25];
nhc_epac_2023_071 = [15.1,130.0,25;13.8,135.8,25];
btk_epac_2023_071 = [15.7,129.6,25;13.9,135.8,20]; # TCR
myvect = [myvect;my_epac_2023_071];
nhcvect = [nhcvect;nhc_epac_2023_071];
btkvect = [btkvect;btk_epac_2023_071];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Atl 114 ... PHILIPPE before 2023-09-25-03Z
# my at https://twitter.com/elioeFIN/status/1706112746889093501
# NHC at https://www.nhc.noaa.gov/archive/2023/al17/al172023.discus.007.shtml?

my_atl_2023_114 = [18.0,47.4,45;19.0,50.9,45;21.4,53.1,50;23.8,54.8,55;25.0,56.3,50];
nhc_atl_2023_114 = [18.1,47.3,45;19.3,51.0,45;21.6,54.0,50;23.4,55.9,55;25.5,57.0,55];
btk_atl_2023_114 = [17.4,47.3,45;17.2,51.6,40;18.1,54.3,40;18.5,54.9,40;17.6,55.7,45]; # TCR
myvect = [myvect;my_atl_2023_114];
nhcvect = [nhcvect;nhc_atl_2023_114];
btkvect = [btkvect;btk_atl_2023_114];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 072 ... 14E before 2023-09-25-03Z
# my at https://twitter.com/elioeFIN/status/1706116987217174557
# NHC at https://www.nhc.noaa.gov/archive/2023/ep14/ep142023.discus.006.shtml?

my_epac_2023_072 = [15.0,131.0,25];
nhc_epac_2023_072 = [14.6,131.1,25];
btk_epac_2023_072 = [15.3,131.1,25]; # TCR
myvect = [myvect;my_epac_2023_072];
nhcvect = [nhcvect;nhc_epac_2023_072];
btkvect = [btkvect;btk_epac_2023_072];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;2];

# Atl 115 ... PHILIPPE before 2023-09-25-21Z
# my at https://twitter.com/elioeFIN/status/1706399705322713196
# NHC at https://www.nhc.noaa.gov/archive/2023/al17/al172023.discus.010.shtml?

my_atl_2023_115 = [18.4,50.3,40;20.4,53.8,40;22.2,56.0,45;23.0,57.7,45;23.3,59.4,40];
nhc_atl_2023_115 = [18.4,50.4,40;20.4,54.0,40;22.2,56.3,40;22.9,57.7,40;23.4,59.5,35];
btk_atl_2023_115 = [17.1,50.8,40;17.8,53.7,45;18.6,54.8,40;18.0,55.6,45;16.4,56.3,50]; # TCR
myvect = [myvect;my_atl_2023_115];
nhcvect = [nhcvect;nhc_atl_2023_115];
btkvect = [btkvect;btk_atl_2023_115];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 116 ... PHILIPPE before 2023-09-26-21Z
# my at https://twitter.com/elioeFIN/status/1706754663150727560
# NHC at https://www.nhc.noaa.gov/archive/2023/al17/al172023.discus.014.shtml?

my_atl_2023_116 = [18.6,54.5,40;20.0,57.6,35;20.1,61.3,30;20.5,65.1,30;20.6,67.1,30];
nhc_atl_2023_116 = [18.4,54.5,35;19.7,57.9,35;20.1,61.0,30;20.2,64.0,25;20.3,67.8,25];
btk_atl_2023_116 = [17.8,53.7,45;18.6,54.8,40;18.0,55.6,45;16.4,56.3,50;16.2,58.8,45]; # TCR
myvect = [myvect;my_atl_2023_116];
nhcvect = [nhcvect;nhc_atl_2023_116];
btkvect = [btkvect;btk_atl_2023_116];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 117 ... 91L before 2023-09-26-21Z
# my at https://twitter.com/elioeFIN/status/1706755353138913458
# (no NHC forecast)

# Atl 118 ... PHILIPPE before 2023-09-27-03Z
# my at https://twitter.com/elioeFIN/status/1706842102183682071
# NHC at https://www.nhc.noaa.gov/archive/2023/al17/al172023.discus.015.shtml?

my_atl_2023_118 = [19.1,55.2,40;20.2,58.2,35;20.4,61.7,30;20.6,65.4,30;20.5,68.8,30];
nhc_atl_2023_118 = [18.8,55.2,35;19.8,58.3,35;20.0,61.5,30;20.1,64.7,25;20.2,67.0,25];
btk_atl_2023_118 = [18.1,54.3,40;18.5,54.9,40;17.6,55.7,45;16.1,56.7,50;16.5,59.0,45]; # TCR
myvect = [myvect;my_atl_2023_118];
nhcvect = [nhcvect;nhc_atl_2023_118];
btkvect = [btkvect;btk_atl_2023_118];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 119 ... PHILIPPE before 2023-09-27-21Z
# my at https://twitter.com/elioeFIN/status/1707111939262796132
# NHC at https://www.nhc.noaa.gov/archive/2023/al17/al172023.discus.018.shtml?

my_atl_2023_119 = [18.6,56.6,45;18.6,58.2,40;17.7,59.0,40;17.0,61.3,55;17.5,63.4,60];
nhc_atl_2023_119 = [18.6,56.5,40;18.9,58.8,40;18.7,61.6,35;18.4,64.0,30;18.2,66.3,30];
btk_atl_2023_119 = [18.6,54.8,40;18.0,55.6,45;16.4,56.3,50;16.2,58.8,45;17.3,61.2,45]; # TCR
myvect = [myvect;my_atl_2023_119];
nhcvect = [nhcvect;nhc_atl_2023_119];
btkvect = [btkvect;btk_atl_2023_119];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 120 ... 91L before 2023-09-27-21Z
# my at https://twitter.com/elioeFIN/status/1707114826462347538
# (no NHC forecast)

# Atl 121 ... PHILIPPE before 2023-09-28-21Z
# my at https://twitter.com/elioeFIN/status/1707473962140045573
# NHC at https://www.nhc.noaa.gov/archive/2023/al17/al172023.discus.022.shtml?

my_atl_2023_121 = [18.3,55.7,40;17.1,56.1,45;16.4,57.0,50;18.4,57.5,60;21.7,57.7,70];
nhc_atl_2023_121 = [18.7,55.9,35;17.9,56.4,45;17.0,57.6,45;18.6,58.6,45;20.6,59.1,40];
btk_atl_2023_121 = [18.0,55.6,45;16.4,56.3,50;16.2,58.8,45;17.3,61.2,45;19.1,64.5,40]; # TCR
myvect = [myvect;my_atl_2023_121];
nhcvect = [nhcvect;nhc_atl_2023_121];
btkvect = [btkvect;btk_atl_2023_121];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 122 ... RINA before 2023-09-28-21Z
# my at https://twitter.com/elioeFIN/status/1707478892414374291
# NHC at https://www.nhc.noaa.gov/archive/2023/al18/al182023.discus.002.shtml?

my_atl_2023_122 = [19.4,47.8,40;20.1,49.8,45;21.9,53.6,40];
nhc_atl_2023_122 = [19.4,47.9,45;20.1,50.1,45;21.5,53.3,40];
btk_atl_2023_122 = [19.8,47.5,45;22.1,51.0,40;25.8,55.3,30]; # TCR
myvect = [myvect;my_atl_2023_122];
nhcvect = [nhcvect;nhc_atl_2023_122];
btkvect = [btkvect;btk_atl_2023_122];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Atl 123 ... PHILIPPE before 2023-09-29-03Z
# my at https://twitter.com/elioeFIN/status/1707562414739247449
# NHC at https://www.nhc.noaa.gov/archive/2023/al17/al172023.discus.023.shtml?

my_atl_2023_123 = [18.0,56.0,40;16.8,56.4,50;16.4,57.3,45;18.7,57.6,55;21.6,58.0,75];
nhc_atl_2023_123 = [17.9,55.6,40;17.2,56.2,45;17.0,57.0,50;18.8,57.6,50;21.7,58.3,50];
btk_atl_2023_123 = [17.6,55.7,45;16.1,56.7,50;16.5,59.0,45;17.6,61.9,45;19.5,65.2,40]; # TCR
myvect = [myvect;my_atl_2023_123];
nhcvect = [nhcvect;nhc_atl_2023_123];
btkvect = [btkvect;btk_atl_2023_123];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 124 ... RINA before 2023-09-29-03Z
# my at https://twitter.com/elioeFIN/status/1707569127202680900
# NHC at https://www.nhc.noaa.gov/archive/2023/al18/al182023.discus.003.shtml?

my_atl_2023_124 = [19.5,48.2,40;20.0,50.7,40;21.5,54.7,35];
nhc_atl_2023_124 = [19.6,48.3,45;20.4,50.7,40;22.0,54.1,35];
btk_atl_2023_124 = [20.2,48.4,45;23.0,52.2,35;26.7,55.6,30]; # TCR
myvect = [myvect;my_atl_2023_124];
nhcvect = [nhcvect;nhc_atl_2023_124];
btkvect = [btkvect;btk_atl_2023_124];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Atl 125 ... PHILIPPE before 2023-09-30-21Z
# my at https://twitter.com/elioeFIN/status/1708204620403642754
# NHC at https://www.nhc.noaa.gov/archive/2023/al17/al172023.discus.030.shtml?

my_atl_2023_125 = [16.4,57.7,55;17.9,59.0,60;21.2,59.7,65;25.6,59.0,80;29.7,55.4,90];
nhc_atl_2023_125 = [16.6,57.4,55;18.5,58.9,60;21.6,59.7,70;25.7,59.0,80;29.5,56.0,80];
btk_atl_2023_125 = [16.2,58.8,45;17.3,61.2,45;19.1,64.5,40;22.2,65.8,35;26.4,66.1,45]; # TCR
myvect = [myvect;my_atl_2023_125];
nhcvect = [nhcvect;nhc_atl_2023_125];
btkvect = [btkvect;btk_atl_2023_125];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 057 ... KOINU before 2023-10-01-03Z
# my at https://twitter.com/elioeFIN/status/1708288256440250747

my_wpac_2023_057 = [19.2,127.9,80;20.5,125.7,90;21.8,123.5,95;22.3,120.4,100;23.0,118.5,75];
nhc_wpac_2023_057 = [19.4,128.0,75;20.9,126.0,90;21.9,123.8,100;22.1,121.3,110;22.2,118.8,105];
btk_wpac_2023_057 = [19.1,127.4,105;20.6,125.2,105;22.2,123.5,105;22.0,120.8,110;21.8,117.7,90]; # JTWC best track
myvect = [myvect;my_wpac_2023_057];
nhcvect = [nhcvect;nhc_wpac_2023_057];
btkvect = [btkvect;btk_wpac_2023_057];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Atl 126 ... PHILIPPE before 2023-10-01-03Z
# my at https://twitter.com/elioeFIN/status/1708293987688215032
# NHC at https://www.nhc.noaa.gov/archive/2023/al17/al172023.discus.031.shtml?

my_atl_2023_126 = [16.8,58.9,50;17.9,60.8,50;20.0,61.9,55;23.8,61.5,50;28.4,58.6,65];
nhc_atl_2023_126 = [17.1,58.6,50;18.6,60.3,60;21.1,61.2,65;24.8,61.1,75;28.5,59.2,80];
btk_atl_2023_126 = [16.5,59.0,45;17.6,61.9,45;19.5,65.2,40;23.1,66.0,35;27.6,66.0,45]; # TCR
myvect = [myvect;my_atl_2023_126];
nhcvect = [nhcvect;nhc_atl_2023_126];
btkvect = [btkvect;btk_atl_2023_126];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 058 ... KOINU before 2023-10-01-09Z
# my at https://twitter.com/elioeFIN/status/1708376627221032992

my_wpac_2023_058 = [19.5,127.3,90;21.2,125.4,100;22.8,123.2,105;23.3,121.2,95;23.4,119.1,70];
nhc_wpac_2023_058 = [19.8,127.5,90;21.2,125.3,105;21.9,123.1,110;22.3,121.3,110;22.4,119.0,100];
btk_wpac_2023_058 = [19.6,126.7,110;21.2,124.9,100;22.1,122.6,115;22.1,120.0,90;21.7,116.8,100]; # JTWC best track
myvect = [myvect;my_wpac_2023_058];
nhcvect = [nhcvect;nhc_wpac_2023_058];
btkvect = [btkvect;btk_wpac_2023_058];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Atl 127 ... PHILIPPE before 2023-10-01-09Z
# my at https://twitter.com/elioeFIN/status/1708381533747196309
# NHC at https://www.nhc.noaa.gov/archive/2023/al17/al172023.discus.032.shtml?

my_atl_2023_127 = [17.4,59.9,45;18.9,61.9,50;21.7,63.4,60;25.2,63.1,65;29.0,60.1,65];
nhc_atl_2023_127 = [17.6,59.8,45;19.2,61.3,50;21.9,62.0,55;25.5,61.6,65;28.9,59.8,70];
btk_atl_2023_127 = [16.8,59.7,45;18.1,62.7,45;20.2,65.4,40;24.0,66.2,40;28.7,65.5,45]; # TCR
myvect = [myvect;my_atl_2023_127];
nhcvect = [nhcvect;nhc_atl_2023_127];
btkvect = [btkvect;btk_atl_2023_127];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 128 ... PHILIPPE before 2023-10-01-21Z
# my at https://twitter.com/elioeFIN/status/1708561429370998813
# NHC at https://www.nhc.noaa.gov/archive/2023/al17/al172023.discus.034.shtml?

my_atl_2023_128 = [17.5,61.2,50;19.6,62.8,50;22.4,64.3,50;26.8,63.4,55;31.2,61.6,65];
nhc_atl_2023_128 = [17.7,60.8,45;19.9,62.0,50;23.1,62.2,55;26.9,61.1,65;30.0,58.0,75];
btk_atl_2023_128 = [17.3,61.2,45;19.1,64.5,40;22.2,65.8,35;26.4,66.1,45;32.3,69.9,35]; # TCR (except day 5 self-made)
myvect = [myvect;my_atl_2023_128];
nhcvect = [nhcvect;nhc_atl_2023_128];
btkvect = [btkvect;btk_atl_2023_128];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 059 ... KOINU before 2023-10-01-21Z
# my at https://twitter.com/elioeFIN/status/1708565510193844373

my_wpac_2023_059 = [20.2,125.9,95;22.1,123.9,115;22.2,121.7,95;22.9,119.4,90;22.4,117.7,95];
nhc_wpac_2023_059 = [20.4,126.2,95;21.7,123.7,105;22.1,121.7,105;22.3,119.8,90;22.3,117.9,75];
btk_wpac_2023_059 = [20.3,125.6,110;22.0,124.2,90;21.9,121.2,120;21.9,118.3,70;21.2,115.7,105]; # JTWC best track
myvect = [myvect;my_wpac_2023_059];
nhcvect = [nhcvect;nhc_wpac_2023_059];
btkvect = [btkvect;btk_wpac_2023_059];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Atl 129 ... PHILIPPE before 2023-10-02-03Z
# my at https://twitter.com/elioeFIN/status/1708652248153158114
# NHC at https://www.nhc.noaa.gov/archive/2023/al17/al172023.discus.035.shtml?

my_atl_2023_129 = [17.8,60.6,50;20.5,61.9,55;24.1,62.5,55;27.7,61.4,65;30.9,58.2,70];
nhc_atl_2023_129 = [17.8,60.7,45;20.3,61.7,50;23.8,61.7,55;27.5,60.2,65;30.1,57.6,75];
btk_atl_2023_129 = [17.6,61.9,45;19.5,65.2,40;23.1,66.0,35;27.6,66.0,45;33.3,69.6,35]; # TCR (except day 5 self-made)
myvect = [myvect;my_atl_2023_129];
nhcvect = [nhcvect;nhc_atl_2023_129];
btkvect = [btkvect;btk_atl_2023_129];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 060 ... KOINU before 2023-10-02-03Z
# my at https://twitter.com/elioeFIN/status/1708661673530122552

my_wpac_2023_060 = [20.7,125.4,110;22.3,123.5,120;23.1,120.8,95;23.7,118.6,90;24.7,117.2,70];
nhc_wpac_2023_060 = [20.8,125.3,115;22.0,123.0,105;22.4,120.7,90;22.6,119.2,70;22.7,117.8,65];
btk_wpac_2023_060 = [20.6,125.2,105;22.2,123.5,105;22.0,120.8,110;21.8,117.7,90;21.1,115.4,100]; # JTWC best track
myvect = [myvect;my_wpac_2023_060];
nhcvect = [nhcvect;nhc_wpac_2023_060];
btkvect = [btkvect;btk_wpac_2023_060];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Atl 130 ... PHILIPPE before 2023-10-02-21Z
# my at https://twitter.com/elioeFIN/status/1708925981690323103
# NHC at https://www.nhc.noaa.gov/archive/2023/al17/al172023.discus.038.shtml?

my_atl_2023_130 = [18.9,62.7,45;21.7,64.1,45;25.1,64.8,50;30.0,63.4,50;34.5,60.4,55];
nhc_atl_2023_130 = [19.1,62.6,45;22.2,63.4,45;26.0,63.8,55;30.6,62.2,60;35.0,60.0,65];
btk_atl_2023_130 = [19.1,64.5,40;22.2,65.8,35;26.4,66.1,45;32.3,69.9,35;38.7,68.5,40]; # TCR (except days 4+5 self-made)
myvect = [myvect;my_atl_2023_130];
nhcvect = [nhcvect;nhc_atl_2023_130];
btkvect = [btkvect;btk_atl_2023_130];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 131 ... PHILIPPE before 2023-10-03-21Z
# my at https://twitter.com/elioeFIN/status/1709293369241763914
# NHC at https://www.nhc.noaa.gov/archive/2023/al17/al172023.discus.042.shtml?

my_atl_2023_131 = [21.3,66.3,40;25.8,67.4,40;33.0,66.1,45;40.1,65.1,50;48.6,65.5,45];
nhc_atl_2023_131 = [22.0,66.1,40;26.2,66.6,40;32.2,65.7,45;38.1,66.0,50;45.8,66.9,45];
btk_atl_2023_131 = [22.2,65.8,35;26.4,66.1,45;32.3,69.9,35;38.7,68.5,40;48.6,75.4,40]; # TCR (except days 3-5 self-made)
myvect = [myvect;my_atl_2023_131];
nhcvect = [nhcvect;nhc_atl_2023_131];
btkvect = [btkvect;btk_atl_2023_131];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 073 ... LIDIA before 2023-10-03-21Z
# my at https://twitter.com/elioeFIN/status/1709298094548906238
# NHC at https://www.nhc.noaa.gov/archive/2023/ep15/ep152023.discus.003.shtml?

my_epac_2023_073 = [14.6,109.1,40;15.8,110.1,40;16.0,111.2,50;15.8,111.5,55;15.7,112.5,60];
nhc_epac_2023_073 = [14.5,108.9,40;15.7,109.8,50;15.9,111.1,55;15.7,112.5,60;15.8,114.1,65];
btk_epac_2023_073 = [15.1,108.8,45;15.9,109.6,50;16.2,110.9,60;16.0,112.2,55;17.3,112.8,60]; # TCR
myvect = [myvect;my_epac_2023_073];
nhcvect = [nhcvect;nhc_epac_2023_073];
btkvect = [btkvect;btk_epac_2023_073];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Atl 132 ... PHILIPPE before 2023-10-04-21Z
# my at https://twitter.com/elioeFIN/status/1709649652671193176
# NHC at https://www.nhc.noaa.gov/archive/2023/al17/al172023.discus.046.shtml?

my_atl_2023_132 = [25.8,66.6,40;33.6,66.0,50;43.0,67.7,45;53.3,71.5,35];
nhc_atl_2023_132 = [26.6,66.0,35;33.3,65.3,45;40.9,65.9,50;50.5,69.5,40];
btk_atl_2023_132 = [26.4,66.1,45;32.3,69.9,35;38.7,68.5,40;48.6,75.4,40]; # TCR (except days 2-4 self-made)
myvect = [myvect;my_atl_2023_132];
nhcvect = [nhcvect;nhc_atl_2023_132];
btkvect = [btkvect;btk_atl_2023_132];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Epac 074 ... LIDIA before 2023-10-04-21Z
# my at https://twitter.com/elioeFIN/status/1709644461406400648
# NHC at https://www.nhc.noaa.gov/archive/2023/ep15/ep152023.discus.007.shtml?

my_epac_2023_074 = [16.2,109.8,45;16.2,111.1,50;16.1,113.1,55;16.6,113.8,50;16.8,113.6,50];
nhc_epac_2023_074 = [16.1,109.9,50;16.0,111.3,50;15.8,113.0,60;16.1,114.4,60;16.6,114.9,60];
btk_epac_2023_074 = [15.9,109.6,50;16.2,110.9,60;16.0,112.2,55;17.3,112.8,60;17.8,111.4,65]; # TCR
myvect = [myvect;my_epac_2023_074];
nhcvect = [nhcvect;nhc_epac_2023_074];
btkvect = [btkvect;btk_epac_2023_074];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Atl 133 ... PHILIPPE before 2023-10-05-21Z
# my at https://twitter.com/elioeFIN/status/1710012675042766887
# NHC at https://www.nhc.noaa.gov/archive/2023/al17/al172023.discus.050.shtml?

my_atl_2023_133 = [32.1,66.4,45;39.6,67.8,50;49.1,73.7,30];
nhc_atl_2023_133 = [32.5,65.7,45;39.0,66.2,50;48.6,71.4,40];
btk_atl_2023_133 = [32.3,69.9,35;38.7,68.5,40;48.6,75.4,40]; # self-made (nothing in TCR)
myvect = [myvect;my_atl_2023_133];
nhcvect = [nhcvect;nhc_atl_2023_133];
btkvect = [btkvect;btk_atl_2023_133];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Epac 075 ... LIDIA before 2023-10-05-21Z
# my at https://twitter.com/elioeFIN/status/1710017827531280640
# NHC at https://www.nhc.noaa.gov/archive/2023/ep15/ep152023.discus.011.shtml?

my_epac_2023_075 = [16.1,110.9,50;16.6,113.2,60;17.5,114.2,60;18.2,113.6,50;18.5,112.0,45];
nhc_epac_2023_075 = [16.2,111.1,55;16.4,113.0,65;17.5,113.9,65;18.3,113.1,55;18.8,111.6,55];
btk_epac_2023_075 = [16.2,110.9,60;16.0,112.2,55;17.3,112.8,60;17.8,111.4,65;19.3,107.1,105]; # TCR
myvect = [myvect;my_epac_2023_075];
nhcvect = [nhcvect;nhc_epac_2023_075];
btkvect = [btkvect;btk_epac_2023_075];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Atl 134 ... PHILIPPE before 2023-10-06-03Z
# my at https://twitter.com/elioeFIN/status/1710097269301678102
# NHC at https://www.nhc.noaa.gov/archive/2023/al17/al172023.discus.051.shtml?

my_atl_2023_134 = [34.0,64.9,50;41.9,66.5,50;50.8,73.8,35];
nhc_atl_2023_134 = [33.6,65.9,50;40.5,66.9,50;49.5,73.0,35];
btk_atl_2023_134 = [33.3,69.6,35;42.3,68.7,40;49.2,77.6,40]; # self-made (nothing in TCR)
myvect = [myvect;my_atl_2023_134];
nhcvect = [nhcvect;nhc_atl_2023_134];
btkvect = [btkvect;btk_atl_2023_134];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Epac 076 ... LIDIA before 2023-10-06-03Z
# my at https://twitter.com/elioeFIN/status/1710114129518735668
# NHC at https://www.nhc.noaa.gov/archive/2023/ep15/ep152023.discus.012.shtml?

my_epac_2023_076 = [16.3,111.6,60;16.6,113.5,65;17.5,113.9,60;18.0,112.3,60;18.2,110.9,50];
nhc_epac_2023_076 = [15.9,111.4,60;16.4,113.2,70;17.3,113.7,65;18.2,112.5,55;18.6,110.6,55];
btk_epac_2023_076 = [16.2,111.3,55;16.0,112.4,60;17.8,112.7,60;18.1,110.6,70;20.1,105.5,120]; # TCR
myvect = [myvect;my_epac_2023_076];
nhcvect = [nhcvect;nhc_epac_2023_076];
btkvect = [btkvect;btk_epac_2023_076];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Atl 135 ... PHILIPPE before 2023-10-06-09Z
# my at https://twitter.com/elioeFIN/status/1710193124423741455
# NHC at https://www.nhc.noaa.gov/archive/2023/al17/al172023.discus.052.shtml?

my_atl_2023_135 = [35.3,65.0,45;43.2,67.2,50];
nhc_atl_2023_135 = [35.0,65.6,50;42.3,67.3,50];
btk_atl_2023_135 = [33.9,69.3,40;44.4,69.3,40]; # self-made (nothing in TCR)
myvect = [myvect;my_atl_2023_135];
nhcvect = [nhcvect;nhc_atl_2023_135];
btkvect = [btkvect;btk_atl_2023_135];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Epac 077 ... LIDIA before 2023-10-06-09Z
# my at https://twitter.com/elioeFIN/status/1710197720353300663
# NHC at https://www.nhc.noaa.gov/archive/2023/ep15/ep152023.discus.013.shtml?

my_epac_2023_077 = [16.9,111.7,60;17.6,113.3,65;18.6,113.1,55;19.5,111.3,55;20.4,109.5,50];
nhc_epac_2023_077 = [16.6,111.8,65;17.1,113.5,70;18.2,113.5,60;19.1,111.7,55;20.5,109.3,50];
btk_epac_2023_077 = [16.1,111.7,55;16.3,112.6,60;18.1,112.4,55;18.4,109.7,75;21.7,103.5,60]; # TCR
myvect = [myvect;my_epac_2023_077];
nhcvect = [nhcvect;nhc_epac_2023_077];
btkvect = [btkvect;btk_epac_2023_077];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 078 ... LIDIA before 2023-10-06-21Z
# my at https://twitter.com/elioeFIN/status/1710374640248406331
# NHC at https://www.nhc.noaa.gov/archive/2023/ep15/ep152023.discus.015.shtml?

my_epac_2023_078 = [16.6,112.9,60;17.6,113.7,55;18.7,112.6,55;19.6,111.0,55];
nhc_epac_2023_078 = [16.6,112.8,65;17.6,113.6,60;18.7,112.7,60;19.8,109.8,60];
btk_epac_2023_078 = [16.0,112.2,55;17.3,112.8,60;17.8,111.4,65;19.3,107.1,105]; # TCR
myvect = [myvect;my_epac_2023_078];
nhcvect = [nhcvect;nhc_epac_2023_078];
btkvect = [btkvect;btk_epac_2023_078];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Wpac 061 ... KOINU before 2023-10-06-21Z
# my at https://twitter.com/elioeFIN/status/1710380086040449192

my_wpac_2023_061 = [21.2,114.7,85;21.1,113.0,65;21.1,110.3,40];
nhc_wpac_2023_061 = [21.1,114.4,75;20.7,112.9,55;19.7,110.7,40];
btk_wpac_2023_061 = [21.4,114.9,85;21.7,113.6,70;20.9,111.8,25]; # JTWC best track
myvect = [myvect;my_wpac_2023_061];
nhcvect = [nhcvect;nhc_wpac_2023_061];
btkvect = [btkvect;btk_wpac_2023_061];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Epac 079 ... LIDIA before 2023-10-07-03Z
# my at https://twitter.com/elioeFIN/status/1710464331547136274
# NHC at https://www.nhc.noaa.gov/archive/2023/ep15/ep152023.discus.016.shtml?

my_epac_2023_079 = [16.7,113.0,55;17.9,113.4,55;19.0,111.5,60;20.3,107.8,45];
nhc_epac_2023_079 = [16.8,113.0,65;17.9,112.3,60;19.0,111.5,65;20.5,108.5,60];
btk_epac_2023_079 = [16.0,112.4,60;17.8,112.7,60;18.1,110.6,70;20.1,105.5,120]; # TCR
myvect = [myvect;my_epac_2023_079];
nhcvect = [nhcvect;nhc_epac_2023_079];
btkvect = [btkvect;btk_epac_2023_079];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Wpac 062 ... BOLAVEN before 2023-10-07-21Z
# my at https://twitter.com/elioeFIN/status/1710738958903107667

my_wpac_2023_062 = [10.4,151.0,65;12.3,148.0,75;15.6,144.8,95;19.1,142.8,135;21.6,143.2,140];
nhc_wpac_2023_062 = [10.5,151.1,50;12.3,147.5,75;15.2,144.1,100;19.2,142.5,115;22.9,143.7,120];
btk_wpac_2023_062 = [10.7,151.5,50;13.0,147.5,60;16.0,144.5,100;19.7,142.9,165;24.1,145.4,140]; # JTWC best track
myvect = [myvect;my_wpac_2023_062];
nhcvect = [nhcvect;nhc_wpac_2023_062];
btkvect = [btkvect;btk_wpac_2023_062];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Epac 080 ... LIDIA before 2023-10-07-21Z
# my at https://twitter.com/elioeFIN/status/1710744333362598006
# NHC at https://www.nhc.noaa.gov/archive/2023/ep15/ep152023.discus.019.shtml?

my_epac_2023_080 = [17.2,112.8,55;18.5,111.8,55;20.0,107.5,65];
nhc_epac_2023_080 = [17.4,112.8,60;18.8,111.6,65;20.3,107.7,65];
btk_epac_2023_080 = [17.3,112.8,60;17.8,111.4,65;19.3,107.1,105]; # TCR
myvect = [myvect;my_epac_2023_080];
nhcvect = [nhcvect;nhc_epac_2023_080];
btkvect = [btkvect;btk_epac_2023_080];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 081 ... LIDIA before 2023-10-08-21Z
# my at https://twitter.com/elioeFIN/status/1711095813043065162
# NHC at https://www.nhc.noaa.gov/archive/2023/ep15/ep152023.discus.023.shtml?

my_epac_2023_081 = [19.0,111.4,60;21.4,106.6,75];
nhc_epac_2023_081 = [18.9,111.6,65;20.9,107.4,80];
btk_epac_2023_081 = [17.8,111.4,65;19.3,107.1,105]; # TCR
myvect = [myvect;my_epac_2023_081];
nhcvect = [nhcvect;nhc_epac_2023_081];
btkvect = [btkvect;btk_epac_2023_081];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Epac 082 ... 16E before 2023-10-08-21Z
# my at https://twitter.com/elioeFIN/status/1711098946271981918
# NHC at https://www.nhc.noaa.gov/archive/2023/ep16/ep162023.discus.004.shtml?

my_epac_2023_082 = [17.0,101.5,30];
nhc_epac_2023_082 = [17.2,101.7,45];
btk_epac_2023_082 = [17.3,101.1,60]; # TCR
myvect = [myvect;my_epac_2023_082];
nhcvect = [nhcvect;nhc_epac_2023_082];
btkvect = [btkvect;btk_epac_2023_082];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;2];

# Wpac 063 ... BOLAVEN before 2023-10-08-21Z
# my at https://twitter.com/elioeFIN/status/1711104153227755582

my_wpac_2023_063 = [12.7,148.3,75;16.3,145.0,100;20.1,143.2,125;23.6,145.0,135;28.3,148.7,115];
nhc_wpac_2023_063 = [12.7,148.1,70;15.5,144.8,90;19.6,143.5,125;23.2,145.0,125;27.8,149.2,115];
btk_wpac_2023_063 = [13.0,147.5,60;16.0,144.5,100;19.7,142.9,165;24.1,145.4,140;31.2,153.2,90]; # JTWC best track
myvect = [myvect;my_wpac_2023_063];
nhcvect = [nhcvect;nhc_wpac_2023_063];
btkvect = [btkvect;btk_wpac_2023_063];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Atl 136 ... 92L before 2023-10-09-03Z
# my at https://twitter.com/elioeFIN/status/1711185151999222211
# (no NHC forecast)

# Wpac 064 ... BOLAVEN before 2023-10-09-03Z
# my at https://twitter.com/elioeFIN/status/1711200424978768104

my_wpac_2023_064 = [13.3,147.0,85;17.3,143.9,105;21.0,143.1,135;24.5,145.7,130;30.0,151.5,105];
nhc_wpac_2023_064 = [13.2,146.9,70;16.5,144.3,110;20.1,143.6,130;24.0,145.7,120;28.6,149.8,105];
btk_wpac_2023_064 = [13.7,146.5,70;17.1,144.0,135;20.6,143.0,155;25.6,146.9,125;34.3,156.3,80]; # JTWC best track
myvect = [myvect;my_wpac_2023_064];
nhcvect = [nhcvect;nhc_wpac_2023_064];
btkvect = [btkvect;btk_wpac_2023_064];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 065 ... BOLAVEN before 2023-10-09-21Z
# my at https://twitter.com/elioeFIN/status/1711468178881040428

my_wpac_2023_065 = [16.6,144.1,80;20.1,142.4,105;23.8,144.5,115;29.3,149.0,90;38.7,159.1,80];
nhc_wpac_2023_065 = [16.5,143.9,85;20.2,142.5,130;23.8,144.4,125;28.8,149.2,110;36.2,158.3,90];
btk_wpac_2023_065 = [16.0,144.5,100;19.7,142.9,165;24.1,145.4,140;31.2,153.2,90;42.4,167.8,55]; # JTWC best track
myvect = [myvect;my_wpac_2023_065];
nhcvect = [nhcvect;nhc_wpac_2023_065];
btkvect = [btkvect;btk_wpac_2023_065];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Atl 137 ... SEAN before 2023-10-11-21Z
# my at https://twitter.com/elioeFIN/status/1712184379278053814
# NHC at https://www.nhc.noaa.gov/archive/2023/al19/al192023.discus.004.shtml?

my_atl_2023_137 = [12.4,38.5,40;13.9,41.1,40;16.2,43.3,35;18.2,46.2,35;18.9,50.3,35];
nhc_atl_2023_137 = [12.7,38.1,40;14.3,41.1,40;16.4,43.6,35;18.1,46.1,30;18.7,50.2,30];
btk_atl_2023_137 = [13.3,37.8,40;14.6,42.2,35;16.3,44.5,30;17.9,47.6,25;18.4,52.2,20]; # TCR
myvect = [myvect;my_atl_2023_137];
nhcvect = [nhcvect;nhc_atl_2023_137];
btkvect = [btkvect;btk_atl_2023_137];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 138 ... SEAN before 2023-10-12-21Z
# my at https://twitter.com/elioeFIN/status/1712547839728038131
# NHC at https://www.nhc.noaa.gov/archive/2023/al19/al192023.discus.008.shtml?

my_atl_2023_138 = [15.2,41.2,35;17.6,44.0,25;19.0,46.7,25];
nhc_atl_2023_138 = [15.5,41.2,35;18.0,43.8,30;19.9,45.9,25];
btk_atl_2023_138 = [14.6,42.2,35;16.3,44.5,30;17.9,47.6,25]; # TCR
myvect = [myvect;my_atl_2023_138];
nhcvect = [nhcvect;nhc_atl_2023_138];
btkvect = [btkvect;btk_atl_2023_138];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Atl 139 ... SEAN before 2023-10-13-03Z
# my at https://twitter.com/elioeFIN/status/1712635140814315797
# NHC at https://www.nhc.noaa.gov/archive/2023/al19/al192023.discus.009.shtml?

my_atl_2023_139 = [15.9,42.1,35;18.2,44.6,25;20.0,46.6,25];
nhc_atl_2023_139 = [16.1,42.3,35;18.4,44.7,30;20.1,46.6,25];
btk_atl_2023_139 = [14.9,42.7,35;16.8,45.1,30;18.1,48.6,25]; # TCR
myvect = [myvect;my_atl_2023_139];
nhcvect = [nhcvect;nhc_atl_2023_139];
btkvect = [btkvect;btk_atl_2023_139];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Atl 140 ... 94L before 2023-10-15-03Z
# my at https://twitter.com/elioeFIN/status/1713365164131500521
# (no NHC advisory)

# Atl 141 ... 94L before 2023-10-16-03Z
# my at https://twitter.com/elioeFIN/status/1713727917002264901
# (no NHC advisory)

# Epac 083 ... 90E before 2023-10-16-21Z
# my at https://twitter.com/elioeFIN/status/1714002292918141410
# (no NHC advisory)

# Epac 084 ... 90E before 2023-10-17-21Z
# my at https://twitter.com/elioeFIN/status/1714363945400590581
# NHC at https://www.nhc.noaa.gov/archive/2023/ep17/ep172023.discus.001.shtml?

my_epac_2023_084 = [15.1,108.4,55;17.0,109.0,85;19.1,109.8,90;20.9,111.3,80;21.9,112.2,75];
nhc_epac_2023_084 = [15.0,108.4,60;16.9,108.8,85;18.7,109.6,95;20.9,110.3,90;22.5,110.0,85];
btk_epac_2023_084 = [15.3,107.9,65;17.3,108.0,110;19.7,109.5,105;22.9,110.3,75;24.7,109.3,55]; # TCR
myvect = [myvect;my_epac_2023_084];
nhcvect = [nhcvect;nhc_epac_2023_084];
btkvect = [btkvect;btk_epac_2023_084];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Atl 142 ... 94L before 2023-10-18-03Z
# my at https://twitter.com/elioeFIN/status/1714450520276951299
# (no NHC advisory)

# Epac 085 ... NORMA before 2023-10-18-03Z
# my at https://twitter.com/elioeFIN/status/1714462751983095985
# NHC at https://www.nhc.noaa.gov/archive/2023/ep17/ep172023.discus.002.shtml?

my_epac_2023_085 = [15.6,108.4,70;17.7,108.8,90;19.5,109.6,95;21.5,110.2,80;22.9,109.2,75];
nhc_epac_2023_085 = [15.5,108.5,70;17.3,108.8,90;19.2,109.6,95;21.3,110.2,90;22.5,109.8,85];
btk_epac_2023_085 = [16.0,107.9,80;17.9,108.2,105;20.5,109.9,105;23.6,110.1,60;24.7,109.0,45]; # TCR
myvect = [myvect;my_epac_2023_085];
nhcvect = [nhcvect;nhc_epac_2023_085];
btkvect = [btkvect;btk_epac_2023_085];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 086 ... NORMA before 2023-10-18-09Z
# my at https://twitter.com/elioeFIN/status/1714542421856432395
# NHC at https://www.nhc.noaa.gov/archive/2023/ep17/ep172023.discus.003.shtml?

my_epac_2023_086 = [16.6,108.2,85;18.6,108.7,90;20.7,109.6,80;22.9,109.6,65;23.1,109.5,65];
nhc_epac_2023_086 = [16.2,108.3,85;17.9,108.9,95;20.0,109.8,85;22.1,110.1,80;22.9,109.4,75];
btk_epac_2023_086 = [16.4,107.8,105;18.5,108.5,100;21.4,110.1,100;24.3,109.8,50;24.5,108.7,35]; # TCR
myvect = [myvect;my_epac_2023_086];
nhcvect = [nhcvect;nhc_epac_2023_086];
btkvect = [btkvect;btk_epac_2023_086];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 087 ... NORMA before 2023-10-18-21Z
# my at https://twitter.com/elioeFIN/status/1714722329463251218
# NHC at https://www.nhc.noaa.gov/archive/2023/ep17/ep172023.discus.005.shtml?

my_epac_2023_087 = [17.8,108.1,95;20.5,109.2,80;23.1,109.8,60;22.6,109.7,45];
nhc_epac_2023_087 = [17.7,108.3,100;19.6,109.1,85;22.1,110.0,70;22.7,109.9,65];
btk_epac_2023_087 = [17.3,108.0,110;19.7,109.5,105;22.9,110.3,75;24.7,109.3,55]; # TCR
myvect = [myvect;my_epac_2023_087];
nhcvect = [nhcvect;nhc_epac_2023_087];
btkvect = [btkvect;btk_epac_2023_087];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Atl 143 ... 94L before 2023-10-18-21Z
# my at https://twitter.com/elioeFIN/status/1714727165730656276
# NHC at https://www.nhc.noaa.gov/archive/2023/al20/al202023.discus.001.shtml?

my_atl_2023_143 = [13.3,55.9,50;14.8,60.1,50;17.5,63.7,50;20.6,65.1,55;23.4,65.1,60];
nhc_atl_2023_143 = [13.5,55.9,50;15.0,60.2,55;17.5,62.7,55;21.4,63.4,60;26.1,60.2,60];
btk_atl_2023_143 = [13.5,56.4,50;14.1,58.9,65;16.6,61.0,75;19.4,63.4,75;22.1,63.8,65]; # TCR
myvect = [myvect;my_atl_2023_143];
nhcvect = [nhcvect;nhc_atl_2023_143];
btkvect = [btkvect;btk_atl_2023_143];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 088 ... NORMA before 2023-10-19-21Z
# my at https://twitter.com/elioeFIN/status/1715085238974435761
# NHC at https://www.nhc.noaa.gov/archive/2023/ep17/ep172023.discus.009.shtml?

my_epac_2023_088 = [20.0,108.9,90;23.7,109.1,65;24.9,108.8,40];
nhc_epac_2023_088 = [19.8,109.1,95;22.5,109.7,70;24.1,108.9,50];
btk_epac_2023_088 = [19.7,109.5,105;22.9,110.3,75;24.7,109.3,55]; # TCR
myvect = [myvect;my_epac_2023_088];
nhcvect = [nhcvect;nhc_epac_2023_088];
btkvect = [btkvect;btk_epac_2023_088];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Atl 144 ... TAMMY before 2023-10-19-21Z
# my at https://twitter.com/elioeFIN/status/1715090161032163531
# NHC at https://www.nhc.noaa.gov/archive/2023/al20/al202023.discus.006.shtml?

my_atl_2023_144 = [14.8,59.8,60;17.4,62.5,65;19.7,63.7,70;22.7,63.8,75;26.4,59.1,85];
nhc_atl_2023_144 = [15.0,59.9,55;17.9,62.4,65;21.0,63.3,75;24.3,62.3,75;28.5,57.5,75];
btk_atl_2023_144 = [14.1,58.9,65;16.6,61.0,75;19.4,63.4,75;22.1,63.8,65;24.0,62.0,65]; # TCR
myvect = [myvect;my_atl_2023_144];
nhcvect = [nhcvect;nhc_atl_2023_144];
btkvect = [btkvect;btk_atl_2023_144];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 145 ... TAMMY before 2023-10-20-03Z
# my at https://twitter.com/elioeFIN/status/1715174956953194783
# NHC at https://www.nhc.noaa.gov/archive/2023/al20/al202023.discus.007.shtml?

my_atl_2023_145 = [15.2,60.0,65;17.9,62.0,70;20.6,63.5,75;22.9,62.8,80;26.4,58.4,80];
nhc_atl_2023_145 = [15.3,59.9,60;18.0,62.0,70;21.5,63.0,80;24.0,62.0,80;28.0,57.5,75];
btk_atl_2023_145 = [14.5,59.6,70;17.5,61.7,80;20.2,63.9,75;22.6,63.5,65;24.5,61.2,75]; # TCR
myvect = [myvect;my_atl_2023_145];
nhcvect = [nhcvect;nhc_atl_2023_145];
btkvect = [btkvect;btk_atl_2023_145];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 089 ... NORMA before 2023-10-20-03Z
# my at https://twitter.com/elioeFIN/status/1715179662937096636
# NHC at https://www.nhc.noaa.gov/archive/2023/ep17/ep172023.discus.010.shtml?

my_epac_2023_089 = [20.5,109.1,80;23.2,109.2,60;24.4,108.4,40];
nhc_epac_2023_089 = [20.6,109.2,90;23.2,109.4,65;24.4,108.1,50];
btk_epac_2023_089 = [20.5,109.9,105;23.6,110.1,60;24.7,109.0,45]; # TCR
myvect = [myvect;my_epac_2023_089];
nhcvect = [nhcvect;nhc_epac_2023_089];
btkvect = [btkvect;btk_epac_2023_089];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Atl 146 ... TAMMY before 2023-10-20-15Z
# my at https://twitter.com/elioeFIN/status/1715359094872121816
# NHC at https://www.nhc.noaa.gov/archive/2023/al20/al202023.discus.009.shtml?

my_atl_2023_146 = [16.3,60.9,75;19.2,62.9,75;21.8,63.5,75;23.5,61.8,75;26.3,59.6,70];
nhc_atl_2023_146 = [16.4,60.9,75;19.3,62.7,80;22.0,63.3,80;24.4,61.4,80;28.2,57.7,75];
btk_atl_2023_146 = [15.6,60.6,75;18.7,62.8,75;21.6,64.0,70;23.6,62.6,65;26.1,59.4,95]; # TCR
myvect = [myvect;my_atl_2023_146];
nhcvect = [nhcvect;nhc_atl_2023_146];
btkvect = [btkvect;btk_atl_2023_146];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 090 ... NORMA before 2023-10-20-15Z
# my at https://twitter.com/elioeFIN/status/1715363506696945827
# NHC at https://www.nhc.noaa.gov/archive/2023/ep17/ep172023.discus.012.shtml?

my_epac_2023_090 = [22.2,110.1,75;24.2,109.2,55;24.8,107.6,35];
nhc_epac_2023_090 = [22.1,109.8,75;23.9,109.1,60;24.7,107.4,40];
btk_epac_2023_090 = [22.3,110.2,90;24.6,109.6,55;24.7,107.9,30]; # TCR
myvect = [myvect;my_epac_2023_090];
nhcvect = [nhcvect;nhc_epac_2023_090];
btkvect = [btkvect;btk_epac_2023_090];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Atl 147 ... TAMMY before 2023-10-21-21Z
# my at https://twitter.com/elioeFIN/status/1715812645654171968
# NHC at https://www.nhc.noaa.gov/archive/2023/al20/al202023.discus.014.shtml?

my_atl_2023_147 = [19.3,63.0,80;22.1,63.7,85;24.1,62.3,80;27.3,60.2,70;29.4,62.1,55];
nhc_atl_2023_147 = [19.5,62.9,80;22.2,63.7,85;23.8,63.4,85;25.6,62.9,75;28.0,62.6,60];
btk_atl_2023_147 = [19.4,63.4,75;22.1,63.8,65;24.0,62.0,65;27.5,58.3,85;31.0,59.5,65]; # TCR
myvect = [myvect;my_atl_2023_147];
nhcvect = [nhcvect;nhc_atl_2023_147];
btkvect = [btkvect;btk_atl_2023_147];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 091 ... NORMA before 2023-10-21-21Z
# my at https://twitter.com/elioeFIN/status/1715817633553973660
# NHC at https://www.nhc.noaa.gov/archive/2023/ep17/ep172023.discus.017.shtml?

my_epac_2023_091 = [24.7,109.3,50];
nhc_epac_2023_091 = [24.5,109.1,55];
btk_epac_2023_091 = [24.7,109.3,55]; # TCR
myvect = [myvect;my_epac_2023_091];
nhcvect = [nhcvect;nhc_epac_2023_091];
btkvect = [btkvect;btk_epac_2023_091];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;2];

# Atl 148 ... TAMMY before 2023-10-22-15Z
# my at https://twitter.com/elioeFIN/status/1716090436433916263
# NHC at https://www.nhc.noaa.gov/archive/2023/al20/al202023.discus.017.shtml?

my_atl_2023_148 = [21.2,63.9,75;22.8,63.0,75;24.8,61.1,70;28.7,60.6,65;30.7,63.1,50];
nhc_atl_2023_148 = [21.4,63.9,75;23.0,62.9,75;24.5,61.0,75;27.5,60.5,65;30.0,63.9,55];
btk_atl_2023_148 = [21.6,64.0,70;23.6,62.6,65;26.1,59.4,95;30.5,58.8,70;32.0,61.0,55]; # TCR
myvect = [myvect;my_atl_2023_148];
nhcvect = [nhcvect;nhc_atl_2023_148];
btkvect = [btkvect;btk_atl_2023_148];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 149 ... TAMMY before 2023-10-23-03Z
# my at https://twitter.com/elioeFIN/status/1716262681424900401
# NHC at https://www.nhc.noaa.gov/archive/2023/al20/al202023.discus.019.shtml?

my_atl_2023_149 = [22.4,63.5,75;23.9,61.9,75;27.0,60.3,70;30.1,61.0,50;31.6,63.7,45];
nhc_atl_2023_149 = [22.5,63.4,80;24.0,61.6,80;26.6,59.5,75;29.6,60.5,60;30.5,64.5,50];
btk_atl_2023_149 = [22.6,63.5,65;24.5,61.2,75;29.1,57.8,80;31.5,60.1,60;32.6,61.5,50]; # TCR
myvect = [myvect;my_atl_2023_149];
nhcvect = [nhcvect;nhc_atl_2023_149];
btkvect = [btkvect;btk_atl_2023_149];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 150 ... TAMMY before 2023-10-23-21Z
# my at https://twitter.com/elioeFIN/status/1716539235623170493
# NHC at https://www.nhc.noaa.gov/archive/2023/al20/al202023.discus.022.shtml?

my_atl_2023_150 = [23.9,61.8,75;27.2,58.9,75;31.3,59.0,50;33.0,59.8,45;33.7,61.3,50];
nhc_atl_2023_150 = [24.0,61.7,75;26.8,59.0,75;30.3,59.3,60;31.7,62.1,50;32.5,65.2,45];
btk_atl_2023_150 = [24.0,62.0,65;27.5,58.3,85;31.0,59.5,65;32.3,61.4,55;33.3,58.0,40]; # TCR
myvect = [myvect;my_atl_2023_150];
nhcvect = [nhcvect;nhc_atl_2023_150];
btkvect = [btkvect;btk_atl_2023_150];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 151 ... TAMMY before 2023-10-24-21Z
# my at https://twitter.com/elioeFIN/status/1716902914151821404
# NHC at https://www.nhc.noaa.gov/archive/2023/al20/al202023.discus.026.shtml?

my_atl_2023_151 = [27.3,59.4,70;30.6,60.5,55;32.3,61.0,40;33.8,59.3,45;33.4,57.6,45];
nhc_atl_2023_151 = [27.5,59.6,70;30.4,60.3,55;31.6,62.2,50;32.0,63.4,45;32.0,64.4,40];
btk_atl_2023_151 = [27.5,58.3,85;31.0,59.5,65;32.3,61.4,55;33.3,58.0,40;30.9,50.9,35]; # TCR
myvect = [myvect;my_atl_2023_151];
nhcvect = [nhcvect;nhc_atl_2023_151];
btkvect = [btkvect;btk_atl_2023_151];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 152 ... TAMMY before 2023-10-25-21Z
# my at https://twitter.com/elioeFIN/status/1717264531838124279
# NHC at https://www.nhc.noaa.gov/archive/2023/al20/al202023.discus.030.shtml?

my_atl_2023_152 = [30.5,60.0,65;31.5,62.2,50;32.4,60.1,50;31.9,55.4,45;30.8,55.3,40];
nhc_atl_2023_152 = [30.5,59.4,70;31.5,61.1,55;32.1,61.7,50;32.5,61.5,45;32.8,61.0,40];
btk_atl_2023_152 = [31.0,59.5,65;32.3,61.4,55;33.3,58.0,40;30.9,50.9,35;26.5,48.1,25]; # TCR
myvect = [myvect;my_atl_2023_152];
nhcvect = [nhcvect;nhc_atl_2023_152];
btkvect = [btkvect;btk_atl_2023_152];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 092 ... 19E before 2023-10-29-21Z
# my at https://twitter.com/elioeFIN/status/1718709387865522602
# NHC at https://www.nhc.noaa.gov/archive/2023/ep19/ep192023.discus.005.shtml?

my_epac_2023_092 = [11.1,91.0,45;11.7,89.1,45;11.2,89.6,35;10.0,92.4,35;8.5,97.5,35];
nhc_epac_2023_092 = [11.2,91.1,50;12.0,89.3,60;11.4,89.7,45;10.0,93.0,40;9.0,97.5,40];
btk_epac_2023_092 = [11.1,91.4,45;11.4,89.8,50;12.4,91.1,45;11.6,96.3,55;10.2,104.0,40]; # TCR
myvect = [myvect;my_epac_2023_092];
nhcvect = [nhcvect;nhc_epac_2023_092];
btkvect = [btkvect;btk_epac_2023_092];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Wpac 066 ... TD / 17W before 2023-11-12-21Z
# my at https://twitter.com/elioeFIN/status/1723784261168222293

my_wpac_2023_066 = [6.3,139.3,35;6.7,138.6,35;8.2,135.9,35;9.7,132.8,50;11.5,127.9,50];
nhc_wpac_2023_066 = [7.2,138.3,25;7.5,137.1,30;8.1,135.0,35;9.5,131.5,40;10.8,128.9,45];
btk_wpac_2023_066 = [5.4,140.1,25;5.8,138.6,20;5.7,137.3,20;6.9,135.7,15;9.6,131.5,15]; # JTWC best track (days 1-2 only)
myvect = [myvect;my_wpac_2023_066];
nhcvect = [nhcvect;nhc_wpac_2023_066];
btkvect = [btkvect;btk_wpac_2023_066];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 067 ... TD / 17W before 2023-11-13-03Z
# my at https://twitter.com/elioeFIN/status/1723877669798858857

my_wpac_2023_067 = [6.5,139.5,35;7.0,137.8,35;7.7,134.3,40;9.5,131.2,40;11.1,129.3,50];
nhc_wpac_2023_067 = [6.8,137.7,30;7.4,135.9,35;8.1,133.0,40;9.3,129.4,45;10.8,126.1,40];
btk_wpac_2023_067 = [5.3,140.0,25;6.0,137.5,20;5.9,136.6,20;8.8,135.8,15;9.6,130.0,15]; # JTWC best track (days 1-2 only)
myvect = [myvect;my_wpac_2023_067];
nhcvect = [nhcvect;nhc_wpac_2023_067];
btkvect = [btkvect;btk_wpac_2023_067];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 001 ... MAL before 2023-11-14-21Z
# my at https://twitter.com/elioeFIN/status/1724509381578887512

my_shem_2024_001 = [23.5,179.1,50;27.4,182.3,40];
nhc_shem_2024_001 = [23.3,178.9,55;27.8,182.8,40];
btk_shem_2024_001 = [23.8,180.7,55;28.0,184.4,35];
myvect = [myvect;my_shem_2024_001];
nhcvect = [nhcvect;nhc_shem_2024_001];
btkvect = [btkvect;btk_shem_2024_001];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 002 ... MAL before 2023-11-15-03Z
# my at https://twitter.com/elioeFIN/status/1724608390448488599

my_shem_2024_002 = [25.0,180.5,60;29.4,186.6,40];
nhc_shem_2024_002 = [24.7,180.5,60;29.3,184.7,45];
btk_shem_2024_002 = [24.9,180.2,50;29.7,184.8,35];
myvect = [myvect;my_shem_2024_002];
nhcvect = [nhcvect;nhc_shem_2024_002];
btkvect = [btkvect;btk_shem_2024_002];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 003 ... MAL before 2023-11-15-21Z
# my at https://twitter.com/elioeFIN/status/1724867549785935995

my_shem_2024_003 = [28.1,183.8,35];
nhc_shem_2024_003 = [28.0,183.2,40];
btk_shem_2024_003 = [28.0,184.4,35];
myvect = [myvect;my_shem_2024_003];
nhcvect = [nhcvect;nhc_shem_2024_003];
btkvect = [btkvect;btk_shem_2024_003];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;3];

# Nio 22 ... BOB 05 / 07B before 2023-11-16-21Z
# my at https://twitter.com/elioeFIN/status/1725231872534274139

my_nio_2023_22 = [22.0,90.2,45];
nhc_nio_2023_22 = [22.6,90.7,35];
btk_nio_2023_22 = [23.7,91.7,30]; # JTWC best track
myvect = [myvect;my_nio_2023_22];
nhcvect = [nhcvect;nhc_nio_2023_22];
btkvect = [btkvect;btk_nio_2023_22];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;3];

# Nio 23 ... BOB 06 / 95B before 2023-12-01-21Z
# my at https://twitter.com/elioeFIN/status/1730666849556132284
# (no JTWC forecast)

# Nio 24 ... BOB 06 / 95B before 2023-12-03-03Z
# my at https://twitter.com/elioeFIN/status/1731130675170832529

my_nio_2023_24 = [13.3,81.0,40;15.4,80.5,45;17.5,81.6,25];
nhc_nio_2023_24 = [13.2,81.1,55;15.2,80.4,55;17.0,80.5,30];
btk_nio_2023_24 = [13.0,81.5,55;14.8,80.1,60;17.3,80.6,30]; # JTWC best track
myvect = [myvect;my_nio_2023_24];
nhcvect = [nhcvect;nhc_nio_2023_24];
btkvect = [btkvect;btk_nio_2023_24];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Nio 25 ... MICHAUNG before 2023-12-03-09Z
# my at https://twitter.com/elioeFIN/status/1731208829046509900

my_nio_2023_25 = [13.5,81.2,55;15.6,81.0,50;17.4,81.6,25];
nhc_nio_2023_25 = [13.5,81.4,55;15.4,80.8,50;17.0,81.0,35];
btk_nio_2023_25 = [13.5,81.0,55;15.6,80.1,55;18.3,81.1,25]; # JTWC best track
myvect = [myvect;my_nio_2023_25];
nhcvect = [nhcvect;nhc_nio_2023_25];
btkvect = [btkvect;btk_nio_2023_25];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Nio 26 ... MICHAUNG before 2023-12-03-15Z
# my at https://twitter.com/elioeFIN/status/1731298702105387213

my_nio_2023_26 = [14.3,81.4,55;16.2,81.1,40];
nhc_nio_2023_26 = [14.2,81.4,55;16.0,81.3,50];
btk_nio_2023_26 = [13.9,80.6,60;16.0,80.1,45]; # JTWC best track
myvect = [myvect;my_nio_2023_26];
nhcvect = [nhcvect;nhc_nio_2023_26];
btkvect = [btkvect;btk_nio_2023_26];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Nio 27 ... MICHAUNG before 2023-12-04-03Z
# my at https://twitter.com/elioeFIN/status/1731495091867443471

my_nio_2023_27 = [15.2,80.4,65;17.0,80.7,35];
nhc_nio_2023_27 = [15.4,80.6,55;17.2,80.7,30];
btk_nio_2023_27 = [14.8,80.1,60;17.3,80.6,30]; # JTWC best track
myvect = [myvect;my_nio_2023_27];
nhcvect = [nhcvect;nhc_nio_2023_27];
btkvect = [btkvect;btk_nio_2023_27];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Nio 28 ... MICHAUNG before 2023-12-04-09Z
# my at https://twitter.com/elioeFIN/status/1731572753734467615

my_nio_2023_28 = [15.6,80.6,50;17.6,81.0,25];
nhc_nio_2023_28 = [15.4,80.6,50;17.3,80.9,30];
btk_nio_2023_28 = [15.6,80.1,55;18.3,81.1,25]; # JTWC best track
myvect = [myvect;my_nio_2023_28];
nhcvect = [nhcvect;nhc_nio_2023_28];
btkvect = [btkvect;btk_nio_2023_28];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 004 ... JASPER before 2023-12-08-09Z
# my at https://twitter.com/elioeFIN/status/1733023682241409427

my_shem_2024_004 = [15.6,155.6,95;16.1,153.8,70;16.3,151.4,60;15.9,149.5,65;15.9,146.8,80];
nhc_shem_2024_004 = [15.6,155.4,95;16.3,153.5,70;16.6,151.2,65;16.5,148.9,70;16.4,146.5,75];
btk_shem_2024_004 = [16.0,155.5,80;16.1,154.0,55;17.5,149.6,45;15.9,147.2,60;15.7,145.8,60];
myvect = [myvect;my_shem_2024_004];
nhcvect = [nhcvect;nhc_shem_2024_004];
btkvect = [btkvect;btk_shem_2024_004];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 005 ... JASPER before 2023-12-08-15Z
# my at https://twitter.com/elioeFIN/status/1733113882158232015

my_shem_2024_005 = [15.9,155.2,80;16.5,153.1,60;17.1,150.6,60;16.7,148.2,65;16.4,146.0,80];
nhc_shem_2024_005 = [16.0,155.2,85;16.6,153.2,65;16.8,150.9,60;16.7,148.6,65;16.6,146.2,75];
btk_shem_2024_005 = [15.8,155.2,70;17.5,152.9,50;16.7,149.1,45;15.5,147.3,50;15.8,145.0,50];
myvect = [myvect;my_shem_2024_005];
nhcvect = [nhcvect;nhc_shem_2024_005];
btkvect = [btkvect;btk_shem_2024_005];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 006 ... JASPER before 2023-12-08-21Z
# my at https://twitter.com/elioeFIN/status/1733206584036065473

my_shem_2024_006 = [16.3,154.7,65;16.9,151.8,55;16.6,149.4,50;16.7,147.1,60;16.8,144.7,55];
nhc_shem_2024_006 = [16.4,155.0,75;16.9,151.8,65;16.5,149.3,60;16.0,147.0,70;15.9,144.1,60];
btk_shem_2024_006 = [15.9,154.9,60;17.5,151.5,50;16.6,148.5,50;15.6,147.0,45;15.9,144.4,40];
myvect = [myvect;my_shem_2024_006];
nhcvect = [nhcvect;nhc_shem_2024_006];
btkvect = [btkvect;btk_shem_2024_006];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 007 ... JASPER before 2023-12-09-09Z
# my at https://twitter.com/elioeFIN/status/1733393327595094304

my_shem_2024_007 = [16.8,153.2,55;17.2,150.1,50;16.7,147.8,55;16.6,144.9,55;16.5,142.0,40];
nhc_shem_2024_007 = [17.3,153.1,65;17.5,150.0,55;16.8,147.7,60;16.6,144.8,55;16.7,142.1,40];
btk_shem_2024_007 = [16.1,154.0,55;17.5,149.6,45;15.9,147.2,60;15.7,145.8,60;16.4,143.6,30];
myvect = [myvect;my_shem_2024_007];
nhcvect = [nhcvect;nhc_shem_2024_007];
btkvect = [btkvect;btk_shem_2024_007];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 008 ... JASPER before 2023-12-09-15Z
# my at https://twitter.com/elioeFIN/status/1733486940459077833

my_shem_2024_008 = [17.2,152.1,55;17.1,149.2,50;16.4,147.0,55;16.4,143.9,45;16.7,141.2,40];
nhc_shem_2024_008 = [16.9,152.5,55;16.8,149.6,50;16.3,147.1,55;16.1,144.3,45;16.2,141.6,25];
btk_shem_2024_008 = [17.5,152.9,50;16.7,149.1,45;15.5,147.3,50;15.8,145.0,50;15.8,143.3,25];
myvect = [myvect;my_shem_2024_008];
nhcvect = [nhcvect;nhc_shem_2024_008];
btkvect = [btkvect;btk_shem_2024_008];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 009 ... JASPER before 2023-12-10-15Z
# my at https://twitter.com/elioeFIN/status/1733850396345454913

my_shem_2024_009 = [17.3,149.9,45;16.7,147.4,55;16.9,144.2,40;16.7,141.3,25];
nhc_shem_2024_009 = [17.8,149.8,50;17.2,147.5,55;17.2,144.6,45;16.8,142.2,25];
btk_shem_2024_009 = [16.7,149.1,45;15.5,147.3,50;15.8,145.0,50;15.8,143.3,25];
myvect = [myvect;my_shem_2024_009];
nhcvect = [nhcvect;nhc_shem_2024_009];
btkvect = [btkvect;btk_shem_2024_009];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 010 ... JASPER before 2023-12-11-03Z
# my at https://twitter.com/elioeFIN/status/1734033745361912055

my_shem_2024_010 = [16.9,147.8,40;16.5,145.7,60;17.5,143.4,30];
nhc_shem_2024_010 = [17.2,147.3,45;16.9,144.8,40;16.9,142.5,25];
btk_shem_2024_010 = [16.3,147.9,55;15.7,146.4,55;16.2,144.3,35];
myvect = [myvect;my_shem_2024_010];
nhcvect = [nhcvect;nhc_shem_2024_010];
btkvect = [btkvect;btk_shem_2024_010];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 011 ... JASPER before 2023-12-11-09Z
# my at https://twitter.com/elioeFIN/status/1734108532528599216

my_shem_2024_011 = [16.4,147.1,45;16.0,144.2,40;15.8,141.1,20];
nhc_shem_2024_011 = [16.6,147.5,50;16.6,145.0,45;16.7,142.5,30];
btk_shem_2024_011 = [15.9,147.2,60;15.7,145.8,60;16.4,143.6,30];
myvect = [myvect;my_shem_2024_011];
nhcvect = [nhcvect;nhc_shem_2024_011];
btkvect = [btkvect;btk_shem_2024_011];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 012 ... JASPER before 2023-12-11-21Z
# my at https://twitter.com/elioeFIN/status/1734295090435096835

my_shem_2024_012 = [16.1,146.4,50;16.5,143.5,35;16.2,141.4,20];
nhc_shem_2024_012 = [16.0,146.3,60;16.3,143.5,35;15.9,141.0,25];
btk_shem_2024_012 = [15.6,147.0,45;15.9,144.4,40;15.9,143.0,30];
myvect = [myvect;my_shem_2024_012];
nhcvect = [nhcvect;nhc_shem_2024_012];
btkvect = [btkvect;btk_shem_2024_012];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 013 ... JASPER before 2023-12-12-09Z
# my at https://twitter.com/elioeFIN/status/1734473885356085372

my_shem_2024_013 = [15.7,145.2,55;16.4,142.4,25];
nhc_shem_2024_013 = [16.0,145.0,55;16.0,142.3,30];
btk_shem_2024_013 = [15.7,145.8,60;16.4,143.6,30];
myvect = [myvect;my_shem_2024_013];
nhcvect = [nhcvect;nhc_shem_2024_013];
btkvect = [btkvect;btk_shem_2024_013];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 014 ... 01 / 95S before 2023-12-30-21Z
# my at https://twitter.com/elioeFIN/status/1741181424147853541
# (no JTWC forecast)

# Shem 015 ... 01 / 95S before 2023-12-31-03Z
# my at https://twitter.com/elioeFIN/status/1741271171574673640
# (no JTWC forecast)

# Shem 016 ... ALVARO before 2023-12-31-21Z
# my at https://twitter.com/elioeFIN/status/1741542152356667851
# (no JTWC forecast)

# Shem 017 ... ALVARO before 2024-01-01-21Z
# my at https://twitter.com/elioeFIN/status/1741910284648804726
# (no JTWC forecast)

# Shem 018 ... 02 / 97S before 2024-01-12-03Z
# my at https://twitter.com/elioeFIN/status/1745618549668725101
# (no JTWC forecast)

# Shem 019 ... 02 / 05S before 2024-01-12-21Z
# my at https://twitter.com/elioeFIN/status/1745888721046495646
# (no JTWC forecast)

# Shem 020 ... BELAL before 2024-01-13-03Z
# my at https://twitter.com/elioeFIN/status/1745979537622495624

my_shem_2024_020 = [17.8,54.0,75; 20.3,55.1,100;21.3,57.1,95; 21.8,59.5,85; 21.4,61.3,70];
nhc_shem_2024_020 = [17.5,54.2,70;19.5,54.9,95; 21.0,57.1,105;22.2,59.5,100;23.2,61.3,90];
btk_shem_2024_020 = [18.1,53.5,70;20.5,54.5,90; 22.1,57.8,65; 24.2,62.6,55; 24.0,64.9,45];
myvect = [myvect;my_shem_2024_020];
nhcvect = [nhcvect;nhc_shem_2024_020];
btkvect = [btkvect;btk_shem_2024_020];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 021 ... BELAL before 2024-01-13-21Z
# my at https://twitter.com/elioeFIN/status/1746249437645529397
# (no JTWC forecast)

# Shem 022 ... BELAL before 2024-01-14-21Z
# my at https://twitter.com/elioeFIN/status/1746614617541878105
# (no JTWC forecast)

# Shem 023 ... BELAL before 2024-01-15-03Z
# my at https://twitter.com/elioeFIN/status/1746703309644202204

my_shem_2024_023 = [21.9,57.2,70; 22.4,60.7,70;22.2,63.3,70;22.1,64.4,65;23.8,63.3,70];
nhc_shem_2024_023 = [21.9,57.3,90;22.6,60.8,80;22.5,63.0,75;21.8,63.8,70;21.4,63.8,65];
btk_shem_2024_023 = [22.1,57.8,65;24.2,62.6,55;24.0,64.9,45;23.3,64.6,30;24.3,62.4,25];
myvect = [myvect;my_shem_2024_023];
nhcvect = [nhcvect;nhc_shem_2024_023];
btkvect = [btkvect;btk_shem_2024_023];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 024 ... BELAL before 2024-01-15-09Z
# my at https://twitter.com/elioeFIN/status/1746794059656487034
# (no JTWC forecast)

# Shem 025 ... ANGGREK before 2024-01-15-21Z
# my at https://twitter.com/elioeFIN/status/1746982969246412834

my_shem_2024_025 = [9.3,94.2,50; 10.0,94.5,60;11.7,94.2,55;12.2,93.9,45;12.4,94.2,35];
nhc_shem_2024_025 = [9.6,94.5,45;10.9,95.0,60;11.8,95.0,60;12.9,94.8,50;13.4,94.6,40];
btk_shem_2024_025 = [9.5,94.2,45;10.6,94.0,45;12.2,93.2,45;12.7,92.4,55;12.0,92.6,70];
myvect = [myvect;my_shem_2024_025];
nhcvect = [nhcvect;nhc_shem_2024_025];
btkvect = [btkvect;btk_shem_2024_025];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 026 ... BELAL before 2024-01-16-03Z
# my at https://twitter.com/elioeFIN/status/1747072676575760746

my_shem_2024_026 = [22.9,61.4,70;22.9,64.0,55;23.2,64.7,45;24.4,64.1,30;25.8,65.2,25];
nhc_shem_2024_026 = [23.2,61.9,65;23.2,64.2,60;23.1,62.8,50;23.7,61.7,35;25.8,61.7,35];
btk_shem_2024_026 = [24.2,62.6,55;24.0,64.9,45;23.3,64.6,30;24.3,62.4,25;25.88,59.73,33.6]; # day 5 MFR data table
myvect = [myvect;my_shem_2024_026];
nhcvect = [nhcvect;nhc_shem_2024_026];
btkvect = [btkvect;btk_shem_2024_026];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 027 ... ANGGREK before 2024-01-16-03Z
# my at https://twitter.com/elioeFIN/status/1747074965071909141
# (no JTWC forecast)

# Shem 028 ... BELAL before 2024-01-16-09Z
# my at https://twitter.com/elioeFIN/status/1747158491838472597
# (no JTWC forecast)

# Shem 029 ... ANGGREK before 2024-01-16-09Z
# my at https://twitter.com/elioeFIN/status/1747162850076831801

my_shem_2024_029 = [10.1,94.3,50;11.6,94.6,55;12.8,94.1,55;13.1,93.7,40;12.7,93.5,30];
nhc_shem_2024_029 = [10.1,94.3,50;11.8,94.1,60;12.8,93.5,50;13.1,93.2,40;13.1,92.7,30];
btk_shem_2024_029 = [10.1,94.0,50;11.5,93.8,45;12.4,92.9,60;12.5,92.6,70;12.0,92.2,70];
myvect = [myvect;my_shem_2024_029];
nhcvect = [nhcvect;nhc_shem_2024_029];
btkvect = [btkvect;btk_shem_2024_029];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 030 ... ANGGREK before 2024-01-16-21Z
# my at https://twitter.com/elioeFIN/status/1747343689976807740

my_shem_2024_030 = [10.5,94.4,45;12.1,94.1,50;12.6,93.1,40;12.3,92.5,35;11.7,92.1,30];
nhc_shem_2024_030 = [10.8,94.3,60;12.5,93.6,55;13.1,92.7,50;13.2,91.5,40;13.2,90.2,35];
btk_shem_2024_030 = [10.6,94.0,45;12.2,93.2,45;12.7,92.4,55;12.0,92.6,70;12.3,91.8,50];
myvect = [myvect;my_shem_2024_030];
nhcvect = [nhcvect;nhc_shem_2024_030];
btkvect = [btkvect;btk_shem_2024_030];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 031 ... BELAL before 2024-01-17-03Z
# my at https://twitter.com/elioeFIN/status/1747434016209346922

my_shem_2024_031 = [24.1,64.7,50;23.8,63.0,30;25.8,61.0,20];
nhc_shem_2024_031 = [24.6,65.0,50;24.4,64.7,40;25.6,62.3,30];
btk_shem_2024_031 = [24.0,64.9,45;23.3,64.6,30;24.3,62.4,25];
myvect = [myvect;my_shem_2024_031];
nhcvect = [nhcvect;nhc_shem_2024_031];
btkvect = [btkvect;btk_shem_2024_031];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 032 ... ANGGREK before 2024-01-17-03Z
# my at https://twitter.com/elioeFIN/status/1747439052763087130
# (no JTWC forecast)

# Shem 033 ... BELAL before 2024-01-17-09Z
# my at https://twitter.com/elioeFIN/status/1747520995403968852
# (no JTWC forecast)

# Shem 034 ... ANGGREK before 2024-01-17-09Z
# my at https://twitter.com/elioeFIN/status/1747525431606014185

my_shem_2024_034 = [11.8,93.9,55;13.1,93.6,45;13.2,92.4,40;12.8,91.2,30;12.5,89.9,30];
nhc_shem_2024_034 = [11.6,93.7,60;12.7,93.0,55;13.2,92.2,55;13.1,91.0,50;12.9,89.8,50];
btk_shem_2024_034 = [11.5,93.8,45;12.4,92.9,60;12.5,92.6,75;12.0,92.2,70;12.3,91.5,45];
myvect = [myvect;my_shem_2024_034];
nhcvect = [nhcvect;nhc_shem_2024_034];
btkvect = [btkvect;btk_shem_2024_034];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 035 ... ANGGREK before 2024-01-17-21Z
# my at https://twitter.com/elioeFIN/status/1747704196181250303

my_shem_2024_035 = [12.0,93.8,45;12.7,93.4,40;12.6,92.7,40;12.3,91.7,40;12.4,90.7,30];
nhc_shem_2024_035 = [12.0,93.4,55;12.8,92.7,55;12.8,92.0,55;12.7,90.8,55;12.5,89.6,50];
btk_shem_2024_035 = [12.2,93.2,45;12.7,92.4,55;12.0,92.6,70;12.3,91.8,50;12.6,91.4,40];
myvect = [myvect;my_shem_2024_035];
nhcvect = [nhcvect;nhc_shem_2024_035];
btkvect = [btkvect;btk_shem_2024_035];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 036 ... BELAL before 2024-01-18-03Z
# my at https://twitter.com/elioeFIN/status/1747798203896885750

my_shem_2024_036 = [23.4,64.5,30;24.5,61.8,25];
nhc_shem_2024_036 = [23.8,64.5,40;24.5,62.3,30];
btk_shem_2024_036 = [23.3,64.6,30;24.3,62.4,25];
myvect = [myvect;my_shem_2024_036];
nhcvect = [nhcvect;nhc_shem_2024_036];
btkvect = [btkvect;btk_shem_2024_036];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 037 ... ANGGREK before 2024-01-18-03Z
# my at https://twitter.com/elioeFIN/status/1747798948419346827

my_shem_2024_037 = [12.4,93.3,45;12.8,92.4,45;12.9,91.3,40;12.6,90.0,45;12.2,89.1,45];
nhc_shem_2024_037 = [12.0,93.3,50;12.6,92.6,50;12.6,91.7,50;12.5,90.5,50;12.3,89.3,45];
btk_shem_2024_037 = [12.4,92.8,50;12.4,92.8,60;12.0,92.3,65;12.6,91.8,45;12.7,91.4,40];
myvect = [myvect;my_shem_2024_037];
nhcvect = [nhcvect;nhc_shem_2024_037];
btkvect = [btkvect;btk_shem_2024_037];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 038 ... ANGGREK before 2024-01-18-21Z
# my at https://twitter.com/elioeFIN/status/1748069222859567249

my_shem_2024_038 = [12.8,92.8,45;12.4,92.4,45;11.9,91.8,35;11.5,92.1,35;11.5,91.9,30];
nhc_shem_2024_038 = [12.9,92.4,50;12.8,91.7,50;12.5,91.0,50;12.2,90.4,45;11.9,89.9,45];
btk_shem_2024_038 = [12.7,92.4,55;12.0,92.6,70;12.3,91.8,50;12.6,91.4,40;13.5,91.5,50];
myvect = [myvect;my_shem_2024_038];
nhcvect = [nhcvect;nhc_shem_2024_038];
btkvect = [btkvect;btk_shem_2024_038];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 039 ... ANGGREK before 2024-01-19-03Z
# my at https://twitter.com/elioeFIN/status/1748159709096366586
# (no JTWC forecast)

# Shem 040 ... ANGGREK before 2024-01-19-09Z
# my at https://twitter.com/elioeFIN/status/1748240641081930076

my_shem_2024_040 = [12.4,92.1,50;11.8,92.0,50;11.6,91.3,45;11.5,91.8,45;11.2,91.9,50];
nhc_shem_2024_040 = [12.6,92.1,55;12.3,91.4,50;12.0,91.2,50;11.7,91.2,50;11.7,91.5,45];
btk_shem_2024_040 = [12.5,92.6,70;12.0,92.2,70;12.3,91.5,45;13.0,91.6,40;14.1,91.1,65];
myvect = [myvect;my_shem_2024_040];
nhcvect = [nhcvect;nhc_shem_2024_040];
btkvect = [btkvect;btk_shem_2024_040];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 041 ... ANGGREK before 2024-01-19-21Z
# my at https://twitter.com/elioeFIN/status/1748431945074196957

my_shem_2024_041 = [12.1,92.0,55;11.5,91.5,40;11.4,91.8,30;11.3,92.2,40;11.8,92.1,35];
nhc_shem_2024_041 = [12.5,91.7,50;12.1,90.9,45;11.8,90.8,45;11.7,91.0,45;11.7,91.3,45];
btk_shem_2024_041 = [12.0,92.6,70;12.3,91.8,50;12.6,91.4,40;13.5,91.5,50;14.4,91.1,80];
myvect = [myvect;my_shem_2024_041];
nhcvect = [nhcvect;nhc_shem_2024_041];
btkvect = [btkvect;btk_shem_2024_041];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 042 ... ANGGREK before 2024-01-20-15Z
# my at https://twitter.com/elioeFIN/status/1748706475793326213
# (no JTWC forecast)

# Shem 043 ... ANGGREK before 2024-01-21-03Z
# my at https://twitter.com/elioeFIN/status/1748882840962421148
# (no JTWC forecast)

# Shem 044 ... ANGGREK before 2024-01-21-09Z
# my at https://twitter.com/elioeFIN/status/1748967001765142888

my_shem_2024_044 = [12.1,91.6,65;12.5,90.9,65;13.2,90.1,60;14.7,89.1,65;16.8,86.2,70];
nhc_shem_2024_044 = [12.1,91.3,60;12.6,90.4,75;14.0,89.0,80;15.5,87.7,75;16.6,86.2,65];
btk_shem_2024_044 = [12.3,91.5,45;13.0,91.6,40;14.1,91.1,65;15.1,90.0,80;16.9,86.5,105];
myvect = [myvect;my_shem_2024_044];
nhcvect = [nhcvect;nhc_shem_2024_044];
btkvect = [btkvect;btk_shem_2024_044];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 045 ... 05U/07P before 2024-01-23-03Z
# my at https://twitter.com/elioeFIN/status/1749607835695038930

my_shem_2024_045 = [17.5,153.4,45;18.6,150.6,55;20.3,146.9,45;22.8,146.9,30];
nhc_shem_2024_045 = [17.5,152.6,50;18.7,149.5,65;21.3,146.0,40;22.6,146.1,20];
btk_shem_2024_045 = [17.3,153.0,40;18.2,149.1,55;21.2,143.7,30;22.4,141.9,25];
myvect = [myvect;my_shem_2024_045];
nhcvect = [nhcvect;nhc_shem_2024_045];
btkvect = [btkvect;btk_shem_2024_045];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 046 ... ANGGREK before 2024-01-23-03Z
# my at https://twitter.com/elioeFIN/status/1749611509183861100
# (no JTWC forecast)

# Shem 047 ... KIRRILY before 2024-01-24-21Z
# my at https://twitter.com/elioeFIN/status/1750250134934258000

my_shem_2024_047 = [19.7,145.9,45];
nhc_shem_2024_047 = [19.8,145.6,40];
btk_shem_2024_047 = [20.2,144.9,40];
myvect = [myvect;my_shem_2024_047];
nhcvect = [nhcvect;nhc_shem_2024_047];
btkvect = [btkvect;btk_shem_2024_047];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;3];

# Shem 048 ... KIRRILY before 2024-01-25-03Z
# my at https://twitter.com/elioeFIN/status/1750333759574982799

my_shem_2024_048 = [20.6,144.8,30];
nhc_shem_2024_048 = [20.6,144.8,35];
btk_shem_2024_048 = [21.2,143.7,30];
myvect = [myvect;my_shem_2024_048];
nhcvect = [nhcvect;nhc_shem_2024_048];
btkvect = [btkvect;btk_shem_2024_048];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;3];

# Shem 049 ... ANGGREK before 2024-01-25-03Z
# my at https://twitter.com/elioeFIN/status/1750340336553976197
# (no JTWC forecast)

# Shem 050 ... CANDICE before 2024-01-25-09Z
# my at https://twitter.com/elioeFIN/status/1750414666054992223
# (no JTWC forecast)

# Shem 051 ... ANGGREK before 2024-01-25-09Z
# my at https://twitter.com/elioeFIN/status/1750419775145054400

my_shem_2024_051 = [17.1,86.8,75;18.8,82.5,95;19.8,77.1,95;22.5,71.8,90;28.5,71.1,65];
nhc_shem_2024_051 = [17.1,86.5,90;18.8,82.0,95;20.1,77.3,105;22.9,72.8,100;26.0,71.2,80];
btk_shem_2024_051 = [16.9,86.5,105;18.9,82.0,100;20.3,76.4,90;23.7,71.1,105;29.1,72.8,100];
myvect = [myvect;my_shem_2024_051];
nhcvect = [nhcvect;nhc_shem_2024_051];
btkvect = [btkvect;btk_shem_2024_051];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 052 ... ANGGREK before 2024-01-26-21Z
# my at https://twitter.com/elioeFIN/status/1750961387277365657

my_shem_2024_052 = [19.1,79.4,115;20.9,73.5,110;25.4,70.5,95;30.0,72.7,75;32.8,79.7,55];
nhc_shem_2024_052 = [19.6,79.5,105;21.6,73.8,115;25.3,70.8,105;28.7,71.8,75;29.6,74.5,55];
btk_shem_2024_052 = [19.5,79.4,100;21.7,73.2,115;26.3,70.8,105;30.6,76.1,90;36.1,91.5,55];
myvect = [myvect;my_shem_2024_052];
nhcvect = [nhcvect;nhc_shem_2024_052];
btkvect = [btkvect;btk_shem_2024_052];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 053 ... ANGGREK before 2024-01-27-21Z
# my at https://twitter.com/elioeFIN/status/1751335964251681212

my_shem_2024_053 = [21.6,73.5,105;26.1,70.5,90;30.1,75.2,65;34.3,87.0,45];
nhc_shem_2024_053 = [21.7,73.6,105;26.2,71.2,90;29.9,75.6,65;33.7,86.1,50];
btk_shem_2024_053 = [21.7,73.2,115;26.3,70.8,105;30.6,76.1,90;36.1,91.5,55];
myvect = [myvect;my_shem_2024_053];
nhcvect = [nhcvect;nhc_shem_2024_053];
btkvect = [btkvect;btk_shem_2024_053];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 054 ... 05 / 09S before 2024-01-31-03Z
# my at https://twitter.com/elioeFIN/status/1752505408609030395

my_shem_2024_054 = [19.7,65.9,40;20.2,67.3,30];
nhc_shem_2024_054 = [19.7,66.4,40;19.9,67.0,50];
btk_shem_2024_054 = [19.5,66.2,35;19.2,67.7,35];
myvect = [myvect;my_shem_2024_054];
nhcvect = [nhcvect;nhc_shem_2024_054];
btkvect = [btkvect;btk_shem_2024_054];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 055 ... 06F / 95P before 2024-02-05-09Z
# my at https://twitter.com/elioeFIN/status/1754408217549934998
# (no JTWC forecast)

# Shem 056 ... 06U / 94P before 2024-02-07-09Z
# my at https://twitter.com/elioeFIN/status/1755136753160126568
# (no JTWC forecast)

# Shem 057 ... 05F / 12P before 2024-02-08-09Z
# my at https://twitter.com/elioeFIN/status/1755497893232779353

my_shem_2024_057 = [17.2,166.6,55;18.4,169.9,55;19.3,173.7,40;19.1,174.6,35];
nhc_shem_2024_057 = [17.2,166.3,50;18.4,169.4,45;18.6,172.4,40;19.0,173.6,35];
btk_shem_2024_057 = [16.9,165.4,35;16.7,170.4,30;18.9,175.0,30;19.2,176.6,25];
myvect = [myvect;my_shem_2024_057];
nhcvect = [nhcvect;nhc_shem_2024_057];
btkvect = [btkvect;btk_shem_2024_057];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 058 ... 05F / 12P before 2024-02-09-03Z
# my at https://twitter.com/elioeFIN/status/1755765893101928567

my_shem_2024_058 = [17.6,168.0,45;19.0,171.9,40;19.6,173.6,45];
nhc_shem_2024_058 = [17.7,168.3,35;18.9,171.9,40;19.5,173.0,40];
btk_shem_2024_058 = [17.1,168.4,35;19.2,174.2,35;18.9,176.0,25];
myvect = [myvect;my_shem_2024_058];
nhcvect = [nhcvect;nhc_shem_2024_058];
btkvect = [btkvect;btk_shem_2024_058];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 059 ... 05F / 12P before 2024-02-09-09Z
# my at https://twitter.com/elioeFIN/status/1755857632743530997

my_shem_2024_059 = [18.1,169.2,35;19.1,173.2,35;20.3,174.5,35];
nhc_shem_2024_059 = [18.3,168.7,40;19.1,172.5,35;19.4,173.4,35];
btk_shem_2024_059 = [16.7,170.4,30;18.9,175.0,30;19.2,176.6,25];
myvect = [myvect;my_shem_2024_059];
nhcvect = [nhcvect;nhc_shem_2024_059];
btkvect = [btkvect;btk_shem_2024_059];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 060 ... DJOUNGOU before 2024-02-15-21Z
# my at https://twitter.com/elioeFIN/status/1758218532934819970

my_shem_2024_060 = [16.1,68.6,50;16.8,73.6,65;21.4,82.2,65;28.1,91.6,65];
nhc_shem_2024_060 = [15.8,67.1,65;16.5,71.2,100;20.0,78.5,100;25.3,86.9,65];
btk_shem_2024_060 = [16.2,66.6,65;16.7,72.3,100;21.6,81.0,120;29.8,92.0,55];
myvect = [myvect;my_shem_2024_060];
nhcvect = [nhcvect;nhc_shem_2024_060];
btkvect = [btkvect;btk_shem_2024_060];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 061 ... DJOUNGOU before 2024-02-16-21Z
# my at https://twitter.com/elioeFIN/status/1758577225698250852

my_shem_2024_061 = [16.7,70.8,95;20.6,78.6,85;25.3,86.4,55];
nhc_shem_2024_061 = [17.0,71.1,105;20.9,78.8,105;26.2,87.2,75];
btk_shem_2024_061 = [16.7,72.3,100;21.6,81.0,120;29.8,92.0,55];
myvect = [myvect;my_shem_2024_061];
nhcvect = [nhcvect;nhc_shem_2024_061];
btkvect = [btkvect;btk_shem_2024_061];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 062 ... DJOUNGOU before 2024-02-17-03Z
# my at https://twitter.com/elioeFIN/status/1758664369746141574
# (no JTWC forecast)

# Shem 063 ... DJOUNGOU before 2024-02-17-09Z
# my at https://twitter.com/elioeFIN/status/1758758054269448462

my_shem_2024_063 = [18.5,74.8,100;24.0,83.6,75];
nhc_shem_2024_063 = [18.5,75.4,105;23.7,83.4,80];
btk_shem_2024_063 = [18.5,76.2,120;25.2,85.5,90];
myvect = [myvect;my_shem_2024_063];
nhcvect = [nhcvect;nhc_shem_2024_063];
btkvect = [btkvect;btk_shem_2024_063];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 064 ... DJOUNGOU before 2024-02-17-21Z
# my at https://twitter.com/elioeFIN/status/1758942334446703094

my_shem_2024_064 = [21.1,79.4,85;26.7,88.3,60];
nhc_shem_2024_064 = [20.8,80.4,115;26.6,89.4,70];
btk_shem_2024_064 = [21.6,81.0,120;29.8,92.0,55];
myvect = [myvect;my_shem_2024_064];
nhcvect = [nhcvect;nhc_shem_2024_064];
btkvect = [btkvect;btk_shem_2024_064];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 065 ... 07 / 16S before 2024-02-19-03Z
# my at https://twitter.com/elioeFIN/status/1759389609706811616

my_shem_2024_065 = [14.2,58.3,50;15.6,59.6,70;17.8,58.7,75;20.1,57.2,55;21.7,55.2,40];
nhc_shem_2024_065 = [14.2,58.5,50;15.6,60.3,75;17.9,59.6,85;20.1,58.6,75;21.4,57.2,60];
btk_shem_2024_065 = [14.0,57.6,50;14.8,60.6,45;19.3,59.1,55;22.3,57.5,50;23.8,58.0,35];
myvect = [myvect;my_shem_2024_065];
nhcvect = [nhcvect;nhc_shem_2024_065];
btkvect = [btkvect;btk_shem_2024_065];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 066 ... DJOUNGOU before 2024-02-19-03Z
# my at https://twitter.com/elioeFIN/status/1759392229741715943
# (no JTWC forecast)

# Shem 067 ... ELEANOR before 2024-02-20-03Z
# my at https://twitter.com/elioeFIN/status/1759751447443312946

my_shem_2024_067 = [15.2,59.8,70;17.9,58.9,75;21.5,57.8,70;23.6,56.4,50;22.8,53.5,40];
nhc_shem_2024_067 = [15.3,59.8,65;18.6,58.9,75;20.9,57.8,70;22.1,56.6,50;22.4,54.7,40];
btk_shem_2024_067 = [14.8,60.6,45;19.3,59.1,55;22.3,57.5,50;23.8,58.0,35;22.5,54.8,25];
myvect = [myvect;my_shem_2024_067];
nhcvect = [nhcvect;nhc_shem_2024_067];
btkvect = [btkvect;btk_shem_2024_067];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 068 ... ELEANOR before 2024-02-21-03Z
# my at https://twitter.com/elioeFIN/status/1760114898737230016

my_shem_2024_068 = [18.8,60.1,60;22.4,59.1,55;23.8,57.5,40;22.7,54.0,25];
nhc_shem_2024_068 = [18.0,60.3,55;21.0,59.7,65;22.6,59.3,50;22.7,57.9,35];
btk_shem_2024_068 = [19.3,59.1,55;22.3,57.5,50;23.8,58.0,35;22.5,54.8,25];
myvect = [myvect;my_shem_2024_068];
nhcvect = [nhcvect;nhc_shem_2024_068];
btkvect = [btkvect;btk_shem_2024_068];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 069 ... LINCOLN before 2024-02-22-21Z
# my at https://twitter.com/elioeFIN/status/1760746017748865124

my_shem_2024_069 = [20.1,113.4,50;24.6,114.0,35];
nhc_shem_2024_069 = [20.6,113.5,45;25.1,113.9,35];
btk_shem_2024_069 = [19.5,113.4,35;23.9,113.7,25];
myvect = [myvect;my_shem_2024_069];
nhcvect = [nhcvect;nhc_shem_2024_069];
btkvect = [btkvect;btk_shem_2024_069];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 070 ... ELEANOR before 2024-02-23-03Z
# my at https://twitter.com/elioeFIN/status/1760843041034641787

my_shem_2024_070 = [23.9,57.2,35;22.4,53.4,25];
nhc_shem_2024_070 = [23.1,56.4,40;22.0,53.2,30];
btk_shem_2024_070 = [23.8,58.0,35;22.5,54.8,25];
myvect = [myvect;my_shem_2024_070];
nhcvect = [nhcvect;nhc_shem_2024_070];
btkvect = [btkvect;btk_shem_2024_070];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 071 ... LINCOLN before 2024-02-23-03Z
# my at https://twitter.com/elioeFIN/status/1760843645249368341

my_shem_2024_071 = [21.3,112.9,40;25.8,114.1,25];
nhc_shem_2024_071 = [21.3,113.0,45;25.6,113.9,35];
btk_shem_2024_071 = [20.2,113.3,35;26.0,115.0,25];
myvect = [myvect;my_shem_2024_071];
nhcvect = [nhcvect;nhc_shem_2024_071];
btkvect = [btkvect;btk_shem_2024_071];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 072 ... ELEANOR before 2024-02-23-09Z
# my at https://twitter.com/elioeFIN/status/1760923762801729861
# (no JTWC forecast)

# Shem 073 ... ELEANOR before 2024-02-23-21Z
# my at https://twitter.com/elioeFIN/status/1761114119342641480
# (no JTWC forecast)

# Shem 074 ... 08U/91S before 2024-03-09-21Z
# my at https://twitter.com/elioeFIN/status/1766552718905053565
# (no JTWC forecast)

# Shem 075 ... 08U/91S before 2024-03-10-03Z
# my at https://twitter.com/elioeFIN/status/1766637533352337858
# (no JTWC forecast)

# Shem 076 ... FILIPO before 2024-03-11-03Z
# my at https://twitter.com/elioeFIN/status/1767000644315984245
# (no JTWC forecast)

# Shem 077 ... 08U/91S before 2024-03-11-03Z
# my at https://twitter.com/elioeFIN/status/1767006252851200378
# (no JTWC forecast)

# Shem 078 ... FILIPO before 2024-03-11-09Z
# my at https://twitter.com/elioeFIN/status/1767088892606365719

my_shem_2024_078 = [21.6,35.1,40;25.6,34.2,30;30.2,39.0,45;36.6,50.3,55];
nhc_shem_2024_078 = [21.7,34.9,45;25.1,34.2,40;29.6,38.7,55;34.9,48.6,55];
btk_shem_2024_078 = [21.5,34.9,50;26.0,33.1,35;31.4,38.9,40;37.23,52.88,61.6]; # day 4 MFR data table
myvect = [myvect;my_shem_2024_078];
nhcvect = [nhcvect;nhc_shem_2024_078];
btkvect = [btkvect;btk_shem_2024_078];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 079 ... 08U/91S before 2024-03-11-09Z
# my at https://twitter.com/elioeFIN/status/1767093655821602952

my_shem_2024_079 = [13.5,106.7,45;15.3,110.8,40;16.8,113.3,45;17.8,113.8,50;19.2,112.8,60];
nhc_shem_2024_079 = [13.4,106.8,45;15.3,112.5,50;16.2,115.4,55;17.1,116.0,55;18.0,115.5,50];
btk_shem_2024_079 = [13.4,106.1,40;14.9,110.8,35;16.2,115.0,35;17.8,114.8,35;17.3,114.0,35];
myvect = [myvect;my_shem_2024_079];
nhcvect = [nhcvect;nhc_shem_2024_079];
btkvect = [btkvect;btk_shem_2024_079];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 080 ... FILIPO before 2024-03-11-21Z
# my at https://twitter.com/elioeFIN/status/1767276276279136414

my_shem_2024_080 = [23.5,34.0,35;28.2,35.6,45;34.7,44.8,60;40.0,56.9,45];
nhc_shem_2024_080 = [23.1,34.0,35;27.5,35.5,60;32.9,44.2,60;37.0,55.4,50];
btk_shem_2024_080 = [24.5,33.8,35;28.2,35.6,40;35.3,45.9,50;38.14,60.37,39.2]; # day 4 MFR data table
myvect = [myvect;my_shem_2024_080];
nhcvect = [nhcvect;nhc_shem_2024_080];
btkvect = [btkvect;btk_shem_2024_080];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 081 ... FILIPO before 2024-03-12-03Z
# my at https://twitter.com/elioeFIN/status/1767357618350162013
# (no JTWC forecast)

# Shem 082 ... 08U/18S before 2024-03-12-21Z
# my at https://twitter.com/elioeFIN/status/1767628889461788709

my_shem_2024_082 = [15.4,113.1,40;16.6,115.2,45;17.8,114.6,55;18.4,113.9,65;19.6,113.5,60];
nhc_shem_2024_082 = [15.3,114.0,40;16.5,115.8,50;17.4,115.8,60;18.3,115.3,70;19.0,114.5,80];
btk_shem_2024_082 = [15.3,112.2,35;17.3,115.4,35;17.8,114.8,35;16.7,113.8,35;17.4,112.7,35];
myvect = [myvect;my_shem_2024_082];
nhcvect = [nhcvect;nhc_shem_2024_082];
btkvect = [btkvect;btk_shem_2024_082];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 083 ... 08U/18S before 2024-03-13-09Z
# my at https://twitter.com/elioeFIN/status/1767820378544517305

my_shem_2024_083 = [15.9,115.0,35;17.2,116.1,40;17.7,114.9,45;18.3,114.6,60;19.9,114.2,65];
nhc_shem_2024_083 = [15.8,114.1,40;17.0,115.6,50;17.7,115.4,60;18.5,114.9,70;19.6,114.0,80];
btk_shem_2024_083 = [16.2,115.0,35;17.8,114.8,35;17.3,114.0,35;17.1,112.8,35;17.0,112.2,30];
myvect = [myvect;my_shem_2024_083];
nhcvect = [nhcvect;nhc_shem_2024_083];
btkvect = [btkvect;btk_shem_2024_083];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 084 ... 08U/18S before 2024-03-14-21Z
# my at https://twitter.com/elioeFIN/status/1768359853590765799

my_shem_2024_084 = [18.1,115.3,35;18.5,114.2,40;19.0,113.4,55;19.6,112.0,60;20.4,111.2,60];
nhc_shem_2024_084 = [18.2,115.1,40;19.0,114.1,50;19.6,113.3,55;20.1,112.2,65;20.5,111.0,65];
btk_shem_2024_084 = [17.8,114.8,35;16.7,113.8,35;17.4,112.7,35;18.1,111.9,30;17.8,110.9,30];
myvect = [myvect;my_shem_2024_084];
nhcvect = [nhcvect;nhc_shem_2024_084];
btkvect = [btkvect;btk_shem_2024_084];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 085 ... 08U/18S before 2024-03-15-21Z
# my at https://twitter.com/elioeFIN/status/1768719098597314899

my_shem_2024_085 = [17.7,113.6,35;18.3,113.2,45;18.3,112.7,55;18.0,111.5,55;17.7,109.8,60];
nhc_shem_2024_085 = [17.7,114.2,35;18.1,113.9,35;18.5,113.6,40;17.9,112.2,40;17.8,110.7,45];
btk_shem_2024_085 = [16.7,113.8,35;17.4,112.7,35;18.1,111.9,30;17.9,110.9,30;17.9,107.9,60];
myvect = [myvect;my_shem_2024_085];
nhcvect = [nhcvect;nhc_shem_2024_085];
btkvect = [btkvect;btk_shem_2024_085];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 086 ... 08U/18S before 2024-03-16-21Z
# my at https://twitter.com/elioeFIN/status/1769084395158135061

my_shem_2024_086 = [17.3,113.6,35;17.5,113.6,35;17.3,112.3,35;16.8,109.6,45;16.8,106.4,50];
nhc_shem_2024_086 = [16.8,113.3,40;16.8,112.8,45;16.7,111.9,45;16.2,109.8,50;16.3,106.4,55];
btk_shem_2024_086 = [17.4,112.7,35;18.1,111.9,30;17.8,110.9,30;17.9,107.9,60;17.8,103.8,115];
myvect = [myvect;my_shem_2024_086];
nhcvect = [nhcvect;nhc_shem_2024_086];
btkvect = [btkvect;btk_shem_2024_086];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 087 ... 08U/18S before 2024-03-18-03Z
# my at https://twitter.com/elioeFIN/status/1769536052501336533

my_shem_2024_087 = [17.8,112.2,40;17.4,110.8,40;16.9,107.9,45;17.1,104.3,45;18.1,99.1,55];
nhc_shem_2024_087 = [17.4,111.6,35;17.0,110.3,35;16.8,107.7,40;16.6,103.9,45;17.3,98.8,50];
btk_shem_2024_087 = [18.5,111.8,30;17.8,110.4,35;17.9,106.7,70;17.9,102.6,115;19.3,96.5,85];
myvect = [myvect;my_shem_2024_087];
nhcvect = [nhcvect;nhc_shem_2024_087];
btkvect = [btkvect;btk_shem_2024_087];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 088 ... MEGAN before 2024-03-18-03Z
# my at https://twitter.com/elioeFIN/status/1769541054842253522

my_shem_2024_088 = [16.7,136.2,40;17.2,134.0,25];
nhc_shem_2024_088 = [16.7,135.8,50;17.2,133.5,30];
btk_shem_2024_088 = [16.9,135.6,30;17.9,133.4,20];
myvect = [myvect;my_shem_2024_088];
nhcvect = [nhcvect;nhc_shem_2024_088];
btkvect = [btkvect;btk_shem_2024_088];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 089 ... 08U/18S before 2024-03-18-09Z
# my at https://twitter.com/elioeFIN/status/1769624484066062348

my_shem_2024_089 = [17.7,112.0,35];
nhc_shem_2024_089 = [16.8,111.4,30];
btk_shem_2024_089 = [18.1,111.8,30];
myvect = [myvect;my_shem_2024_089];
nhcvect = [nhcvect;nhc_shem_2024_089];
btkvect = [btkvect;btk_shem_2024_089];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;3];

# Shem 090 ... MEGAN before 2024-03-18-09Z
# my at https://twitter.com/elioeFIN/status/1769629032109293829

my_shem_2024_090 = [17.0,135.7,30;17.0,132.8,25];
nhc_shem_2024_090 = [17.2,135.5,35;17.5,133.3,30];
btk_shem_2024_090 = [17.2,135.4,30;17.6,132.9,20];
myvect = [myvect;my_shem_2024_090];
nhcvect = [nhcvect;nhc_shem_2024_090];
btkvect = [btkvect;btk_shem_2024_090];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 091 ... 08U/18S before 2024-03-20-03Z
# my at https://twitter.com/elioeFIN/status/1770259307755348104

my_shem_2024_091 = [17.6,106.9,50;17.5,102.7,60;18.5,96.7,55;21.3,90.6,45;24.4,86.7,25];
nhc_shem_2024_091 = [17.6,107.3,45;17.9,102.7,75;19.2,96.7,70;21.7,91.3,55;24.8,87.4,35];
btk_shem_2024_091 = [17.9,106.7,70;17.9,102.6,115;19.3,96.5,85;22.2,91.2,50;24.0,87.2,25];
myvect = [myvect;my_shem_2024_091];
nhcvect = [nhcvect;nhc_shem_2024_091];
btkvect = [btkvect;btk_shem_2024_091];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 092 ... NEVILLE before 2024-03-20-09Z
# my at https://twitter.com/elioeFIN/status/1770352854911328499

my_shem_2024_092 = [17.6,106.1,55;17.9,101.2,70;19.3,95.0,60;21.5,89.5,40;24.0,86.0,30];
nhc_shem_2024_092 = [17.6,106.3,65;17.9,101.2,90;19.4,95.7,80;21.4,91.1,55;23.8,87.4,35];
btk_shem_2024_092 = [17.8,105.7,85;18.1,100.9,105;19.8,94.9,80;22.7,90.1,45;24.2,86.8,30];
myvect = [myvect;my_shem_2024_092];
nhcvect = [nhcvect;nhc_shem_2024_092];
btkvect = [btkvect;btk_shem_2024_092];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 093 ... NEVILLE before 2024-03-22-03Z
# my at https://twitter.com/elioeFIN/status/1770981046277783783

my_shem_2024_093 = [18.8,96.5,100;20.8,90.4,60;22.5,85.9,35];
nhc_shem_2024_093 = [18.9,96.7,90;20.9,90.9,55;22.9,86.5,30];
btk_shem_2024_093 = [19.3,96.5,85;22.2,91.2,50;24.0,87.2,25];
myvect = [myvect;my_shem_2024_093];
nhcvect = [nhcvect;nhc_shem_2024_093];
btkvect = [btkvect;btk_shem_2024_093];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 094 ... NEVILLE before 2024-03-22-09Z
# my at https://twitter.com/elioeFIN/status/1771074646512701835
# (no JTWC forecast)

# Shem 095 ... NEVILLE before 2024-03-22-21Z
# my at https://twitter.com/elioeFIN/status/1771255311371780491
# (no JTWC forecast)

# Shem 096 ... 09 / 95S before 2024-03-26-03Z
# my at https://twitter.com/elioeFIN/status/1772426654259843400

my_shem_2024_096 = [13.4,50.6,70;14.6,50.4,100;15.7,51.2,85;16.8,53.5,85;19.1,55.1,60];
nhc_shem_2024_096 = [13.1,50.5,60;14.0,50.4,80;15.7,51.3,95;17.1,53.2,75;19.1,55.7,60];
btk_shem_2024_096 = [12.9,50.1,90;13.9,48.8,40;14.3,47.7,20;16.0,51.0,20;17.26,52.55,22.4]; # day 5 MFR data table
myvect = [myvect;my_shem_2024_096];
nhcvect = [nhcvect;nhc_shem_2024_096];
btkvect = [btkvect;btk_shem_2024_096];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 097 ... GAMANE before 2024-03-27-03Z
# my at https://twitter.com/elioeFIN/status/1772798071555952664

my_shem_2024_097 = [14.2,49.1,45;16.1,50.0,35;16.7,52.1,45;17.7,54.0,35;19.1,55.4,30];
nhc_shem_2024_097 = [14.0,49.4,70;15.1,50.3,55;15.9,52.4,50;18.3,55.7,45;20.3,58.1,40];
btk_shem_2024_097 = [13.9,48.8,40;14.3,47.7,20;16.0,51.0,20;17.26,52.55,22.4;16.51,51.97,16.8]; # days 4-5 MFR data table
myvect = [myvect;my_shem_2024_097];
nhcvect = [nhcvect;nhc_shem_2024_097];
btkvect = [btkvect;btk_shem_2024_097];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 098 ... GAMANE before 2024-03-27-09Z
# my at https://twitter.com/elioeFIN/status/1772892846363640024
# (no JTWC forecast)

# Shem 099 ... 11U/21S before 2024-04-05-21Z
# my at https://twitter.com/elioeFIN/status/1776328323200618682

my_shem_2024_099 = [13.1,119.2,55;14.2,118.7,50;15.2,117.3,35;16.5,115.0,30;18.4,111.6,30];
nhc_shem_2024_099 = [14.3,120.0,60;15.7,119.2,60;16.6,117.6,50;17.9,115.0,40;19.5,111.7,35];
btk_shem_2024_099 = [14.3,119.7,65;15.9,118.9,115;16.9,118.1,45;18.6,116.1,40;21.2,114.6,30];
myvect = [myvect;my_shem_2024_099];
nhcvect = [nhcvect;nhc_shem_2024_099];
btkvect = [btkvect;btk_shem_2024_099];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 100 ... OLGA before 2024-04-06-21Z
# my at https://twitter.com/elioeFIN/status/1776689893940363507

my_shem_2024_100 = [15.7,119.3,65;16.8,117.4,45;18.0,114.3,35;19.8,110.8,25];
nhc_shem_2024_100 = [15.8,118.8,75;16.8,116.9,55;18.2,114.1,40;19.9,110.7,30];
btk_shem_2024_100 = [15.9,118.9,115;16.9,118.1,45;18.6,116.1,40;21.2,114.6,30];
myvect = [myvect;my_shem_2024_100];
nhcvect = [nhcvect;nhc_shem_2024_100];
btkvect = [btkvect;btk_shem_2024_100];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 101 ... OLGA before 2024-04-07-21Z
# my at https://twitter.com/elioeFIN/status/1777053704882978837

my_shem_2024_101 = [17.1,117.7,60;18.4,115.2,40;20.6,112.2,30;22.2,109.9,30];
nhc_shem_2024_101 = [17.3,117.4,80;18.7,115.0,55;20.3,112.0,40;21.7,110.1,30];
btk_shem_2024_101 = [16.9,118.1,45;18.6,116.1,40;21.2,114.6,30;21.7,113.6,25];
myvect = [myvect;my_shem_2024_101];
nhcvect = [nhcvect;nhc_shem_2024_101];
btkvect = [btkvect;btk_shem_2024_101];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 102 ... OLGA before 2024-04-08-03Z
# my at https://twitter.com/elioeFIN/status/1777143382977966256

my_shem_2024_102 = [17.6,117.2,65;19.2,115.0,40;21.2,112.2,30];
nhc_shem_2024_102 = [18.0,116.7,70;19.6,114.4,55;21.5,111.7,40];
btk_shem_2024_102 = [17.2,117.5,50;18.9,116.1,35;21.7,114.1,30];
myvect = [myvect;my_shem_2024_102];
nhcvect = [nhcvect;nhc_shem_2024_102];
btkvect = [btkvect;btk_shem_2024_102];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 103 ... 10 / 90S before 2024-04-30-21Z ... CERTIFIED
# my at https://twitter.com/elioeFIN/status/1785402503556682208
# (no JTWC forecast)

# Shem 104 ... 10 / 90S before 2024-05-01-03Z ... CERTIFIED
# my at https://twitter.com/elioeFIN/status/1785483909167219085
# (no JTWC forecast)

# Shem 105 ... 10 / 90S before 2024-05-01-09Z ... CERTIFIED
# my at https://twitter.com/elioeFIN/status/1785562966214983819
# (no JTWC forecast)

# Shem 106 ... HIDAYA before 2024-05-01-21Z ... CERTIFIED
# my at https://twitter.com/elioeFIN/status/1785753682132324475
# (no JTWC forecast)

# Shem 107 ... HIDAYA before 2024-05-02-09Z ... CERTIFIED
# my at https://twitter.com/elioeFIN/status/1785936628755677617
# (no JTWC forecast)

# Shem 108 ... HIDAYA before 2024-05-02-15Z ... CERTIFIED
# my at https://twitter.com/elioeFIN/status/1786025527825875155

my_shem_2024_108 = [8.7,41.9,50;7.7,39.5,35];
nhc_shem_2024_108 = [8.4,42.6,65;7.5,40.1,40];
btk_shem_2024_108 = [8.2,42.0,75;7.7,38.6,40];
myvect = [myvect;my_shem_2024_108];
nhcvect = [nhcvect;nhc_shem_2024_108];
btkvect = [btkvect;btk_shem_2024_108];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 109 ... HIDAYA before 2024-05-03-03Z ... CERTIFIED
# my at https://twitter.com/elioeFIN/status/1786208404211380708

my_shem_2024_109 = [8.1,41.2,70];
nhc_shem_2024_109 = [8.0,40.9,90];
btk_shem_2024_109 = [7.9,40.6,60];
myvect = [myvect;my_shem_2024_109];
nhcvect = [nhcvect;nhc_shem_2024_109];
btkvect = [btkvect;btk_shem_2024_109];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;3];

# Shem 110 ... HIDAYA before 2024-05-03-09Z ... CERTIFIED
# my at https://twitter.com/elioeFIN/status/1786295802534478036
# (no JTWC forecast)

# Shem 111 ... HIDAYA before 2024-05-03-15Z ... CERTIFIED
# my at https://twitter.com/elioeFIN/status/1786385158658003106

my_shem_2024_111 = [6.9,39.7,60];
nhc_shem_2024_111 = [7.4,39.7,55];
btk_shem_2024_111 = [7.7,38.6,40];
myvect = [myvect;my_shem_2024_111];
nhcvect = [nhcvect;nhc_shem_2024_111];
btkvect = [btkvect;btk_shem_2024_111];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;3];

# Shem 112 ... IALY before 2024-05-16-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1791183038765789199
# (no JTWC forecast)

# Shem 113 ... IALY before 2024-05-17-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1791276401242349670

my_shem_2024_113 = [9.2,49.9,45;9.2,48.2,55;8.3,47.8,50;8.0,48.3,40;6.5,47.2,20];
nhc_shem_2024_113 = [8.9,49.7,40;8.4,48.7,45;7.3,48.6,40;5.3,49.0,35;3.5,49.8,30];
btk_shem_2024_113 = [8.0,49.2,40;7.5,46.6,55;6.3,44.5,55;5.2,43.0,55;3.7,41.9,45];
myvect = [myvect;my_shem_2024_113];
nhcvect = [nhcvect;nhc_shem_2024_113];
btkvect = [btkvect;btk_shem_2024_113];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 114 ... IALY before 2024-05-17-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1791367003921387880
# (no JTWC forecast)

# Shem 115 ... IALY before 2024-05-17-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1791558402729976233
# (no JTWC forecast)

# Shem 116 ... IALY before 2024-05-18-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1791640800683561321

my_shem_2024_116 = [7.6,47.3,55;6.6,46.1,55];
nhc_shem_2024_116 = [7.3,47.6,40;5.9,46.9,30];
btk_shem_2024_116 = [7.5,46.6,55;6.3,44.5,55];
myvect = [myvect;my_shem_2024_116];
nhcvect = [nhcvect;nhc_shem_2024_116];
btkvect = [btkvect;btk_shem_2024_116];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 117 ... IALY before 2024-05-18-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1791729299084419517
# (no JTWC forecast)

# Shem 118 ... IALY before 2024-05-18-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1791909785270395010
# (no JTWC forecast)

# Shem 119 ... IALY before 2024-05-20-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1792366536797323593

my_shem_2024_119 = [4.0,43.8,45];
nhc_shem_2024_119 = [4.0,43.9,35];
btk_shem_2024_119 = [5.2,43.0,55];
myvect = [myvect;my_shem_2024_119];
nhcvect = [nhcvect;nhc_shem_2024_119];
btkvect = [btkvect;btk_shem_2024_119];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;3];

# Shem 120 ... IALY before 2024-05-20-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1792453207823937629
# (no JTWC forecast)

# Shem 121 ... IALY before 2024-05-20-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1792639964997452238
# (no JTWC forecast)

# Wpac 001 ... TD/93W before 2024-05-23-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1793546331572883850
# (no JTWC forecast)

# Wpac 002 ... TD/93W/(AGHON) before 2024-05-24-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1793816455651229746
# (no JTWC forecast)

# Nio 01 ... BOB 01 / 99B before 2024-05-24-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1793905523211018319
# (no JTWC forecast)

# Wpac 003 ... TD/93W/(AGHON) before 2024-05-24-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1793910516014055908
# (no JTWC forecast)

# Nio 02 ... BOB 01 / 99B before 2024-05-25-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1794176685266632941
# (no JTWC forecast)

# Wpac 004 ... 01W/(AGHON) before 2024-05-25-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1794183491208478937

my_wpac_2024_004 = [14.9,122.1,35;16.5,123.4,45;20.3,127.6,70;27.2,134.2,65;35.3,145.0,45];
nhc_wpac_2024_004 = [15.2,121.8,35;17.7,123.4,45;21.3,126.6,70;26.3,132.4,65;32.7,141.9,50];
btk_wpac_2024_004 = [14.1,121.4,55;15.8,122.8,90;18.5,125.5,75;24.3,130.8,70;28.2,134.8,55];
myvect = [myvect;my_wpac_2024_004];
nhcvect = [nhcvect;nhc_wpac_2024_004];
btkvect = [btkvect;btk_wpac_2024_004];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Nio 03 ... BOB 01 / 99B before 2024-05-25-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1794257949730517133
# (no JTWC forecast)

# Wpac 005 ... 01W/(AGHON) before 2024-05-25-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1794271325340815620

my_wpac_2024_005 = [14.6,121.5,40;17.1,123.2,50;20.6,126.4,65;24.3,132.7,50;26.4,135.7,45];
nhc_wpac_2024_005 = [14.8,121.5,35;16.6,123.3,60;19.4,126.2,75;24.0,130.7,60;28.6,135.9,45];
btk_wpac_2024_005 = [14.5,121.8,55;16.2,123.5,95;19.9,126.8,75;25.2,131.8,60;29.0,135.8,50];
myvect = [myvect;my_wpac_2024_005];
nhcvect = [nhcvect;nhc_wpac_2024_005];
btkvect = [btkvect;btk_wpac_2024_005];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Nio 04 ... REMAL before 2024-05-26-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1794533485119508615

my_nio_2024_04 = [22.1,89.1,40;24.5,90.8,25];
nhc_nio_2024_04 = [22.3,89.1,50;24.5,91.3,30];
btk_nio_2024_04 = [22.6,89.1,50;24.9,91.2,40];
myvect = [myvect;my_nio_2024_04];
nhcvect = [nhcvect;nhc_nio_2024_04];
btkvect = [btkvect;btk_nio_2024_04];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Nio 05 ... REMAL before 2024-05-26-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1794622967801880943

my_nio_2024_05 = [23.4,89.4,40];
nhc_nio_2024_05 = [23.0,89.3,40];
btk_nio_2024_05 = [23.2,89.3,45];
myvect = [myvect;my_nio_2024_05];
nhcvect = [nhcvect;nhc_nio_2024_05];
btkvect = [btkvect;btk_nio_2024_05];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;3];

# Wpac 006 ... EWINIAR/(AGHON) before 2024-05-26-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1794630646553579730

my_wpac_2024_006 = [16.8,123.4,75;20.0,127.3,90;24.0,131.3,80;27.9,135.9,55;31.8,142.7,40];
nhc_wpac_2024_006 = [16.7,123.5,85;20.1,126.8,100;24.4,130.8,85;28.6,135.4,60;33.0,142.2,45];
btk_wpac_2024_006 = [16.2,123.5,95;19.9,126.8,75;25.2,131.8,60;29.0,135.8,50;34.2,142.8,45];
myvect = [myvect;my_wpac_2024_006];
nhcvect = [nhcvect;nhc_wpac_2024_006];
btkvect = [btkvect;btk_wpac_2024_006];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 007 ... EWINIAR/(AGHON) before 2024-05-27-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1794900818778636493

my_wpac_2024_007 = [18.6,125.8,125;23.7,130.7,100;27.9,134.6,80;32.3,139.6,50];
nhc_wpac_2024_007 = [18.9,125.8,105;23.8,130.8,95;28.0,134.7,70;33.0,140.9,50];
btk_wpac_2024_007 = [18.5,125.5,75;24.3,130.8,70;28.2,134.8,55;33.1,139.9,45];
myvect = [myvect;my_wpac_2024_007];
nhcvect = [nhcvect;nhc_wpac_2024_007];
btkvect = [btkvect;btk_wpac_2024_007];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Wpac 008 ... EWINIAR/(AGHON) before 2024-05-27-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1794990487612318193

my_wpac_2024_008 = [19.8,126.8,100;24.8,131.9,85;28.5,135.8,65;34.2,142.8,50];
nhc_wpac_2024_008 = [19.8,127.0,100;24.5,131.5,90;29.2,136.4,65;33.9,143.2,50];
btk_wpac_2024_008 = [19.9,126.8,75;25.2,131.8,60;29.0,135.8,50;34.2,142.8,45];
myvect = [myvect;my_wpac_2024_008];
nhcvect = [nhcvect;nhc_wpac_2024_008];
btkvect = [btkvect;btk_wpac_2024_008];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Atl 001 ... 91L before 2024-06-17-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1802781515740254467
# NHC at https://www.nhc.noaa.gov/archive/2024/al01/al012024.discus.001.shtml?

my_atl_2024_001 = [22.0,93.1,45;23.5,97.6,45;24.0,104.1,30];
nhc_atl_2024_001 = [22.2,93.8,35;23.4,96.4,40;24.0,98.9,30];
btk_atl_2024_001 = [22.0,92.6,35;21.8,94.7,35;22.3,100.9,25];
myvect = [myvect;my_atl_2024_001];
nhcvect = [nhcvect;nhc_atl_2024_001];
btkvect = [btkvect;btk_atl_2024_001];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Atl 002 ... 92L before 2024-06-21-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1803962828019113993
# (no NHC advisory)

# Atl 003 ... 92L before 2024-06-21-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1804046552266051884
# (no NHC advisory)

# Atl 004 ... 92L before 2024-06-21-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1804230724133806366
# (no NHC advisory)

# Atl 005 ... 92L before 2024-06-22-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1804315170224685084
# (no NHC advisory)

# Atl 006 ... 93L before 2024-06-22-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1804598363829964879
# (no NHC advisory)

# Atl 007 ... 94L before 2024-06-26-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1805780523052319021
# (no NHC advisory)

# Atl 008 ... 94L before 2024-06-26-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1806039049997849084
# (no NHC advisory)

# Atl 009 ... 95L before 2024-06-27-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1806410438957003056
# (no NHC advisory)

# Atl 010 ... 95L before 2024-06-28-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1806502593394352391
# (no NHC advisory)

# Atl 011 ... 95L before 2024-06-28-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1806585447725899822
# (no NHC advisory)

# Atl 012 ... 02L before 2024-06-28-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1806776907310178725
# NHC at https://www.nhc.noaa.gov/archive/2024/al02/al022024.discus.001.shtml?

my_atl_2024_012 = [10.0,48.0,45;11.4,54.7,65;13.0,61.8,90;15.8,68.8,100;18.1,75.5,85];
nhc_atl_2024_012 = [10.1,48.0,40;11.3,54.8,65;13.0,61.9,85;15.5,69.2,90;17.5,76.4,80];
btk_atl_2024_012 = [10.0,48.5,60;10.9,55.7,115;12.8,62.3,130;15.6,69.9,135;17.2,76.8,120];
myvect = [myvect;my_atl_2024_012];
nhcvect = [nhcvect;nhc_atl_2024_012];
btkvect = [btkvect;btk_atl_2024_012];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 013 ... 96L before 2024-06-30-15Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1807404935329280258
# (no NHC advisory)

# Atl 014 ... 96L before 2024-07-01-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1807590725577572541
# (no NHC advisory)

# Atl 015 ... 96L before 2024-07-01-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1807688981787611490
# (no NHC advisory)

# Atl 016 ... 96L before 2024-07-01-15Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1807762147474129175
# (no NHC advisory)

# Epac 001 ... 92E before 2024-07-16-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1813287963251400802
# (no NHC advisory)

# Epac 002 ... 92E before 2024-07-17-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1813379270061781472
# (no NHC advisory)

# Wpac 009 ... 04W/(BUTCHOY) before 2024-07-19-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1814381032860463137

my_wpac_2024_009 = [16.8,112.1,35;18.8,111.3,35;21.1,110.1,25];
nhc_wpac_2024_009 = [16.8,112.2,35;18.9,110.7,45;20.8,109.9,35];
btk_wpac_2024_009 = [16.1,111.7,35;18.8,110.2,50;21.0,108.0,55];
myvect = [myvect;my_wpac_2024_009];
nhcvect = [nhcvect;nhc_wpac_2024_009];
btkvect = [btkvect;btk_wpac_2024_009];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Wpac 010 ... 05W/(CARINA) before 2024-07-19-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1814386723746357585

my_wpac_2024_010 = [16.1,127.6,35;17.7,126.4,50;18.9,126.0,80;22.0,126.0,115;24.9,124.3,105];
nhc_wpac_2024_010 = [16.5,126.9,30;18.3,125.8,40;20.0,125.8,50;22.6,125.5,75;25.4,124.4,95];
btk_wpac_2024_010 = [16.6,126.4,40;17.0,125.7,55;19.1,125.0,70;22.8,123.5,120;24.7,121.4,95];
myvect = [myvect;my_wpac_2024_010];
nhcvect = [nhcvect;nhc_wpac_2024_010];
btkvect = [btkvect;btk_wpac_2024_010];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 011 ... 04W/(BUTCHOY) before 2024-07-20-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1814750136087486565

my_wpac_2024_011 = [18.6,110.7,45;20.7,108.6,40;22.0,107.8,15];
nhc_wpac_2024_011 = [18.6,109.7,45;20.6,108.1,40;21.5,107.3,20];
btk_wpac_2024_011 = [18.8,110.2,50;21.0,108.0,55;21.9,106.3,20];
myvect = [myvect;my_wpac_2024_011];
nhcvect = [nhcvect;nhc_wpac_2024_011];
btkvect = [btkvect;btk_wpac_2024_011];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Wpac 012 ... GAEMI/(CARINA) before 2024-07-20-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1814752477272502600

my_wpac_2024_012 = [17.9,125.3,55;19.4,124.6,65;21.1,124.0,85;25.3,122.3,85;27.8,118.5,70];
nhc_wpac_2024_012 = [18.0,124.9,50;19.5,124.1,70;22.2,123.6,95;25.5,122.2,100;28.6,120.0,65];
btk_wpac_2024_012 = [17.0,125.7,55;19.1,125.0,70;22.8,123.5,120;24.7,121.4,95;25.6,118.6,45];
myvect = [myvect;my_wpac_2024_012];
nhcvect = [nhcvect;nhc_wpac_2024_012];
btkvect = [btkvect;btk_wpac_2024_012];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 013 ... PRAPIROON/(BUTCHOY) before 2024-07-21-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1814922917517336588

my_wpac_2024_013 = [19.8,109.3,35;21.6,108.8,20;22.2,107.2,15];
nhc_wpac_2024_013 = [19.9,109.2,35;21.5,108.1,25;22.2,107.6,20];
btk_wpac_2024_013 = [20.1,108.7,55;21.6,107.4,30;21.2,105.3,20];
myvect = [myvect;my_wpac_2024_013];
nhcvect = [nhcvect;nhc_wpac_2024_013];
btkvect = [btkvect;btk_wpac_2024_013];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Wpac 014 ... GAEMI/(CARINA) before 2024-07-21-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1814927978138042634

my_wpac_2024_014 = [18.2,125.4,55;20.0,125.4,70;24.2,124.1,95;26.2,121.2,80;28.4,119.4,50];
nhc_wpac_2024_014 = [18.2,125.3,60;20.4,124.9,80;23.6,124.2,100;26.3,122.1,75;28.8,119.8,50];
btk_wpac_2024_014 = [18.1,125.5,55;20.8,125.2,90;24.2,122.5,125;25.1,119.8,60;27.5,117.8,35];
myvect = [myvect;my_wpac_2024_014];
nhcvect = [nhcvect;nhc_wpac_2024_014];
btkvect = [btkvect;btk_wpac_2024_014];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 015 ... GAEMI/(CARINA) before 2024-07-21-21Z ... certification failed
# my at https://x.com/elioeFIN/status/1815107350417506597

my_wpac_2024_015 = [18.7,125.1,60;22.1,124.4,80;25.0,122.0,85;26.3,119.3,60;29.7,117.6,30];
nhc_wpac_2024_015 = [18.6,125.6,65;21.9,125.1,95;24.6,123.2,95;26.5,120.1,65;29.5,117.7,30];
btk_wpac_2024_015 = [19.1,125.0,70;22.8,123.5,120;24.7,121.4,95;25.6,118.6,45;29.5,116.5,25];
myvect = [myvect;my_wpac_2024_015];
nhcvect = [nhcvect;nhc_wpac_2024_015];
btkvect = [btkvect;btk_wpac_2024_015];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 016 ... GAEMI/(CARINA) before 2024-07-22-03Z ... certification failed
# my at https://x.com/elioeFIN/status/1815199501117751437

my_wpac_2024_016 = [19.8,125.4,65;23.2,123.9,95;25.4,120.8,85;26.8,118.2,50];
nhc_wpac_2024_016 = [19.7,125.7,65;23.0,124.4,95;25.2,121.5,85;26.9,118.5,45];
btk_wpac_2024_016 = [19.7,125.0,80;23.5,123.3,120;25.1,120.2,75;26.5,118.3,35];
myvect = [myvect;my_wpac_2024_016];
nhcvect = [nhcvect;nhc_wpac_2024_016];
btkvect = [btkvect;btk_wpac_2024_016];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Wpac 017 ... GAEMI/(CARINA) before 2024-07-22-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1815288221594452274

my_wpac_2024_017 = [20.6,125.1,75;24.0,123.0,100;25.3,119.8,70;27.4,117.5,40];
nhc_wpac_2024_017 = [20.8,125.3,70;24.1,123.5,90;25.9,120.6,70;27.8,118.3,45];
btk_wpac_2024_017 = [20.8,125.2,90;24.2,122.5,125;25.1,119.8,60;27.5,117.8,35];
myvect = [myvect;my_wpac_2024_017];
nhcvect = [nhcvect;nhc_wpac_2024_017];
btkvect = [btkvect;btk_wpac_2024_017];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Wpac 018 ... GAEMI/(CARINA) before 2024-07-25-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1816281426163085616

my_wpac_2024_018 = [27.2,117.9,40];
nhc_wpac_2024_018 = [27.0,117.5,45];
btk_wpac_2024_018 = [26.5,118.3,35];
myvect = [myvect;my_wpac_2024_018];
nhcvect = [nhcvect;nhc_wpac_2024_018];
btkvect = [btkvect;btk_wpac_2024_018];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;3];

# Wpac 019 ... GAEMI/(CARINA) before 2024-07-25-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1816377235328160134

my_wpac_2024_019 = [27.7,117.4,35];
nhc_wpac_2024_019 = [27.4,117.5,35];
btk_wpac_2024_019 = [27.5,117.8,35];
myvect = [myvect;my_wpac_2024_019];
nhcvect = [nhcvect;nhc_wpac_2024_019];
btkvect = [btkvect;btk_wpac_2024_019];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;3];

# Epac 003 ... 94E before 2024-07-30-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1818361826855600457
# (no NHC advisory)

# Epac 004 ... 94E before 2024-07-31-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1818460759778591156
# (no NHC advisory)

# Epac 005 ... 94E before 2024-07-31-09Z ... certification failed
# my at https://x.com/elioeFIN/status/1818545116216217614
# (no NHC advisory)

# Epac 006 ... 95E before 2024-07-31-09Z ... certification failed
# my at https://x.com/elioeFIN/status/1818549700955455594
# (no NHC advisory)

# Atl 017 ... 97L before 2024-08-02-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1819180878255300902
# (no NHC advisory)

# Atl 018 ... 97L before 2024-08-02-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1819269192836624831
# (no NHC advisory)

# Atl 019 ... 97L before 2024-08-02-15Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1819357188495724972
# NHC at https://www.nhc.noaa.gov/archive/2024/al04/al042024.discus.001.shtml?

my_atl_2024_019 = [23.3,80.7,30;27.3,82.6,40;31.1,81.0,40;32.5,79.4,40;33.5,77.3,45];
nhc_atl_2024_019 = [23.3,80.7,30;27.2,83.0,45;30.7,81.7,40;32.0,80.0,40;33.6,77.5,50];
btk_atl_2024_019 = [22.3,81.5,25;26.2,84.2,50;29.9,83.4,65;31.9,81.3,40;32.2,79.4,50];
myvect = [myvect;my_atl_2024_019];
nhcvect = [nhcvect;nhc_atl_2024_019];
btkvect = [btkvect;btk_atl_2024_019];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 007 ... 96E before 2024-08-03-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1819631515334013141
# (no NHC advisory)

# Wpac 020 ... 06W before 2024-08-07-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1821084999837254026

my_wpac_2024_020 = [28.6,144.4,40;32.7,145.9,45;37.2,146.2,55;41.0,147.7,45;44.6,150.7,20];
nhc_wpac_2024_020 = [28.3,144.0,40;32.6,145.2,50;37.0,145.6,55;40.1,146.7,45;43.1,148.6,30];
btk_wpac_2024_020 = [27.9,144.8,55;32.1,146.0,60;35.6,145.4,50;37.6,143.9,50;39.8,139.9,35];
myvect = [myvect;my_wpac_2024_020];
nhcvect = [nhcvect;nhc_wpac_2024_020];
btkvect = [btkvect;btk_wpac_2024_020];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Atl 020 ... 98L before 2024-08-11-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1822445374474183097
# (no NHC advisory)

# Atl 021 ... 98L before 2024-08-11-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1822534647672168676
# (no NHC advisory)

# Atl 022 ... 98L before 2024-08-11-15Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1822621629484064902
# (no NHC advisory)

# Wpac 021 ... YAGI/(ENTENG) before 2024-09-01-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1830330674928353482

my_wpac_2024_021 = [18.0,122.0,50;18.9,119.8,65;18.7,117.8,100;19.2,116.4,110;20.8,113.7,115];
nhc_wpac_2024_021 = [18.1,121.9,45;19.3,119.5,55;19.1,117.1,80;19.4,114.7,100;20.2,112.4,110];
btk_wpac_2024_021 = [18.2,120.6,40;18.9,118.5,60;19.2,116.3,120;19.2,113.0,135;20.2,109.0,105];
myvect = [myvect;my_wpac_2024_021];
nhcvect = [nhcvect;nhc_wpac_2024_021];
btkvect = [btkvect;btk_wpac_2024_021];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 022 ... YAGI/(ENTENG) before 2024-09-02-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1830413370199052502

my_wpac_2024_022 = [18.8,121.7,40;19.5,119.5,65;19.1,116.3,90;19.3,114.0,105;20.4,111.6,90];
nhc_wpac_2024_022 = [18.5,120.7,45;19.2,118.3,65;19.2,116.0,90;19.8,113.0,110;20.6,110.6,100];
btk_wpac_2024_022 = [18.4,119.6,40;19.1,117.7,70;19.0,115.8,140;19.2,112.2,130;20.3,108.2,115];
myvect = [myvect;my_wpac_2024_022];
nhcvect = [nhcvect;nhc_wpac_2024_022];
btkvect = [btkvect;btk_wpac_2024_022];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 023 ... YAGI/(ENTENG) before 2024-09-02-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1830503425806684607

my_wpac_2024_023 = [19.2,120.2,50;19.0,117.4,70;18.7,115.2,90;19.4,112.9,100;21.3,110.4,80];
nhc_wpac_2024_023 = [19.0,120.1,50;19.3,117.8,75;19.4,115.3,110;20.1,112.4,110;21.0,109.6,90];
btk_wpac_2024_023 = [18.5,119.1,40;19.1,117.4,80;19.2,115.1,125;19.7,111.3,125;21.0,106.9,110];
myvect = [myvect;my_wpac_2024_023];
nhcvect = [nhcvect;nhc_wpac_2024_023];
btkvect = [btkvect;btk_wpac_2024_023];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 024 ... YAGI/(ENTENG) before 2024-09-02-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1830687646429126901

my_wpac_2024_024 = [19.0,118.7,55;19.1,116.7,80;19.1,114.3,105;20.6,111.5,100;22.2,108.1,60];
nhc_wpac_2024_024 = [18.9,118.8,45;18.9,115.9,80;19.0,113.3,110;19.8,110.4,90;21.1,106.8,65];
btk_wpac_2024_024 = [18.9,118.5,60;19.2,116.3,120;19.2,113.0,135;20.2,109.0,105;21.2,105.1,60];
myvect = [myvect;my_wpac_2024_024];
nhcvect = [nhcvect;nhc_wpac_2024_024];
btkvect = [btkvect;btk_wpac_2024_024];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 025 ... YAGI/(ENTENG) before 2024-09-03-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1830868856056746273

my_wpac_2024_025 = [18.9,117.3,65;18.7,115.1,85;19.7,111.9,105;21.1,108.7,65;22.4,105.1,30];
nhc_wpac_2024_025 = [19.0,117.2,55;19.0,115.0,90;19.6,111.8,90;20.8,108.2,70;21.6,105.5,25];
btk_wpac_2024_025 = [19.1,117.4,80;19.2,115.1,125;19.7,111.3,125;21.0,106.9,110;21.5,104.2,35];
myvect = [myvect;my_wpac_2024_025];
nhcvect = [nhcvect;nhc_wpac_2024_025];
btkvect = [btkvect;btk_wpac_2024_025];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 026 ... YAGI/(ENTENG) before 2024-09-03-15Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1830960296623509538

my_wpac_2024_026 = [19.0,116.9,65;19.0,114.5,95;20.0,110.9,90;21.0,107.7,55;22.4,104.0,20];
nhc_wpac_2024_026 = [19.1,117.0,75;19.2,114.7,100;20.1,111.2,100;21.3,107.3,55;22.2,103.8,20];
btk_wpac_2024_026 = [19.2,116.9,110;19.3,114.1,125;20.0,110.2,120;21.0,105.9,75;23.0,103.1,35];
myvect = [myvect;my_wpac_2024_026];
nhcvect = [nhcvect;nhc_wpac_2024_026];
btkvect = [btkvect;btk_wpac_2024_026];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 027 ... YAGI/(ENTENG) before 2024-09-03-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1831050015734931813

my_wpac_2024_027 = [19.2,116.1,85;19.4,113.0,100;20.4,109.1,95;21.6,106.0,40;22.3,101.2,20];
nhc_wpac_2024_027 = [18.9,116.2,80;19.3,113.3,115;20.3,109.6,95;21.4,105.7,60;22.0,102.5,20];
btk_wpac_2024_027 = [19.2,116.3,120;19.2,113.0,135;20.2,109.0,105;21.2,105.1,60;22.0,103.3,25];
myvect = [myvect;my_wpac_2024_027];
nhcvect = [nhcvect;nhc_wpac_2024_027];
btkvect = [btkvect;btk_wpac_2024_027];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 028 ... YAGI/(ENTENG) before 2024-09-04-15Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1831321328122552687

my_wpac_2024_028 = [19.3,114.3,125;20.3,110.7,115;21.5,107.0,65;21.8,102.7,25];
nhc_wpac_2024_028 = [19.6,114.1,130;20.5,110.6,110;21.3,106.3,60;22.0,102.4,20];
btk_wpac_2024_028 = [19.3,114.1,125;20.0,110.2,120;21.0,105.9,75;23.0,103.1,35];
myvect = [myvect;my_wpac_2024_028];
nhcvect = [nhcvect;nhc_wpac_2024_028];
btkvect = [btkvect;btk_wpac_2024_028];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Wpac 029 ... YAGI/(ENTENG) before 2024-09-04-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1831408407372558733

my_wpac_2024_029 = [19.4,113.5,145;20.7,109.9,100;22.0,106.0,45;22.5,103.0,20];
nhc_wpac_2024_029 = [19.7,113.5,130;20.6,109.6,110;21.6,105.5,60;22.2,102.1,20];
btk_wpac_2024_029 = [19.2,113.0,135;20.2,109.0,105;21.2,105.1,60;22.0,103.3,25];
myvect = [myvect;my_wpac_2024_029];
nhcvect = [nhcvect;nhc_wpac_2024_029];
btkvect = [btkvect;btk_wpac_2024_029];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Wpac 030 ... YAGI/(ENTENG) before 2024-09-05-15Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1831680946820522449

my_wpac_2024_030 = [20.3,110.7,105;21.6,106.9,45;22.0,103.0,20];
nhc_wpac_2024_030 = [20.2,110.5,100;21.2,106.4,55;21.9,102.2,20];
btk_wpac_2024_030 = [20.0,110.2,120;21.0,105.9,75;23.0,103.1,35];
myvect = [myvect;my_wpac_2024_030];
nhcvect = [nhcvect;nhc_wpac_2024_030];
btkvect = [btkvect;btk_wpac_2024_030];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Wpac 031 ... YAGI/(ENTENG) before 2024-09-05-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1831794528564785231

my_wpac_2024_031 = [20.2,109.4,90;21.6,105.9,45;22.6,102.9,15];
nhc_wpac_2024_031 = [20.4,109.3,100;21.5,105.6,55;22.0,101.9,20];
btk_wpac_2024_031 = [20.2,109.0,105;21.2,105.1,60;22.0,103.3,25];
myvect = [myvect;my_wpac_2024_031];
nhcvect = [nhcvect;nhc_wpac_2024_031];
btkvect = [btkvect;btk_wpac_2024_031];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Atl 023 ... 91L before 2024-09-08-15Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1832771105909862431
# (no NHC advisory)

# Atl 024 ... 91L before 2024-09-08-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1832862088160506214
# NHC at https://www.nhc.noaa.gov/archive/2024/al06/al062024.discus.001.shtml?

my_atl_2024_024 = [23.2,95.8,50;25.5,96.6,55;29.0,95.0,55;33.6,92.1,30;37.7,90.8,20];
nhc_atl_2024_024 = [23.2,95.7,45;25.5,96.1,55;29.0,94.1,65;33.6,91.4,30;37.0,89.9,25];
btk_atl_2024_024 = [23.7,95.9,50;25.3,95.3,55;28.6,92.1,80;33.4,89.7,20;35.7,92.0,15];
myvect = [myvect;my_atl_2024_024];
nhcvect = [nhcvect;nhc_atl_2024_024];
btkvect = [btkvect;btk_atl_2024_024];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 025 ... 92L before 2024-09-08-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1832867283556823181
# (no NHC advisory)

# Epac 008 ... 94E before 2024-09-22-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1837936408167686568
# NHC at https://www.nhc.noaa.gov/archive/2024/ep10/ep102024.discus.001.shtml?

my_epac_2024_008 = [14.3,97.9,40;15.3,95.4,55;16.3,91.6,35];
nhc_epac_2024_008 = [14.4,98.2,45;15.0,96.6,55;16.1,94.1,55];
btk_epac_2024_008 = [15.2,98.4,80;17.4,100.7,30;16.7,101.5,45];
myvect = [myvect;my_epac_2024_008];
nhcvect = [nhcvect;nhc_epac_2024_008];
btkvect = [btkvect;btk_epac_2024_008];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Atl 026 ... 97L before 2024-09-23-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1838021298905067663
# (no NHC advisory)

# Atl 027 ... 98L before 2024-09-25-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1839025396055957840
# (no NHC advisory)

# Atl 028 ... 98L before 2024-09-27-15Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1839652933580816671
# NHC at https://www.nhc.noaa.gov/archive/2024/al11/al112024.discus.001.shtml?

my_atl_2024_028 = [19.3,46.1,50;20.5,49.0,45;21.7,49.7,40;23.3,48.9,40];
nhc_atl_2024_028 = [19.4,46.1,50;20.7,48.8,40;22.6,49.4,35;23.9,48.8,30];
btk_atl_2024_028 = [19.8,45.6,45;21.4,48.3,40;22.3,49.4,30;23.4,49.4,25]; # day 4 self-made
myvect = [myvect;my_atl_2024_028];
nhcvect = [nhcvect;nhc_atl_2024_028];
btkvect = [btkvect;btk_atl_2024_028];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Nio 06 ... BOB 07 / 98B before 2024-10-23-03Z ... certification failed
# my at https://x.com/elioeFIN/status/1848899127314420144
# (no JTWC forecast)

# Wpac 032 ... TRAMI/(KRISTINE) before 2024-10-23-03Z ... certification failed
# my at https://x.com/elioeFIN/status/1848904058196697230

my_wpac_2024_032 = [16.6,119.9,35;17.2,117.4,40;17.3,114.2,50;16.6,110.8,55;15.5,109.9,35];
nhc_wpac_2024_032 = [16.6,120.6,45;17.0,117.8,50;17.3,113.8,60;17.0,110.5,55;16.7,109.7,40];
btk_wpac_2024_032 = [17.0,121.2,45;16.9,118.8,50;17.0,113.5,60;16.5,108.4,45;15.5,107.9,25];
myvect = [myvect;my_wpac_2024_032];
nhcvect = [nhcvect;nhc_wpac_2024_032];
btkvect = [btkvect;btk_wpac_2024_032];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 033 ... TRAMI/(KRISTINE) before 2024-10-25-03Z ... certification failed
# my at https://x.com/elioeFIN/status/1849620053865509279

my_wpac_2024_033 = [17.3,113.8,55;17.1,109.8,45;16.5,109.6,35;16.6,110.8,30];
nhc_wpac_2024_033 = [17.2,114.8,55;16.8,111.3,50;16.0,110.5,35;15.6,111.8,30];
btk_wpac_2024_033 = [17.0,113.5,60;16.5,108.4,45;15.5,107.9,25;16.5,109.0,20];
myvect = [myvect;my_wpac_2024_033];
nhcvect = [nhcvect;nhc_wpac_2024_033];
btkvect = [btkvect;btk_wpac_2024_033];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Wpac 034 ... TRAMI/(KRISTINE) before 2024-10-26-21Z ... certification failed
# my at https://x.com/elioeFIN/status/1850261036617654326

my_wpac_2024_034 = [16.3,108.8,35;16.3,109.7,25];
nhc_wpac_2024_034 = [16.2,108.1,35;15.7,108.3,30];
btk_wpac_2024_034 = [15.3,107.8,30;16.4,108.7,25];
myvect = [myvect;my_wpac_2024_034];
nhcvect = [nhcvect;nhc_wpac_2024_034];
btkvect = [btkvect;btk_wpac_2024_034];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Wpac 035 ... KONG-REY/(LEON) before 2024-10-26-21Z ... certification failed
# my at https://x.com/elioeFIN/status/1850262893750628475

my_wpac_2024_035 = [16.9,131.1,40;17.7,128.6,65;19.5,126.8,90;22.0,125.0,85;25.6,123.3,85];
nhc_wpac_2024_035 = [16.9,131.0,50;17.7,128.4,70;19.3,126.9,90;21.5,125.9,105;24.1,125.1,110];
btk_wpac_2024_035 = [16.7,130.5,50;17.0,127.9,70;18.8,125.5,125;21.0,122.8,115;25.2,120.1,60];
myvect = [myvect;my_wpac_2024_035];
nhcvect = [nhcvect;nhc_wpac_2024_035];
btkvect = [btkvect;btk_wpac_2024_035];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 036 ... KONG-REY/(LEON) before 2024-10-28-03Z ... certification failed
# my at https://x.com/elioeFIN/status/1850710094746354024

my_wpac_2024_036 = [17.9,127.1,65;19.4,124.7,100;21.4,122.2,100;25.1,119.4,70;29.1,122.3,30];
nhc_wpac_2024_036 = [17.8,126.5,75;19.4,124.3,110;21.5,122.0,110;24.6,120.0,85;27.9,122.2,40];
btk_wpac_2024_036 = [17.4,127.2,80;19.1,124.9,130;22.0,122.2,115;26.7,120.6,55;32.6,130.3,40];
myvect = [myvect;my_wpac_2024_036];
nhcvect = [nhcvect;nhc_wpac_2024_036];
btkvect = [btkvect;btk_wpac_2024_036];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 037 ... KONG-REY/(LEON) before 2024-10-28-09Z ... certification failed 
# my at https://x.com/elioeFIN/status/1850797515827765530

my_wpac_2024_037 = [18.2,126.3,85;19.7,124.2,105;23.0,121.6,105;26.6,120.4,45;30.5,126.0,30];
nhc_wpac_2024_037 = [17.8,126.5,80;19.4,124.1,115;21.9,121.7,110;25.3,120.2,80;28.7,124.0,40];
btk_wpac_2024_037 = [17.8,126.5,95;19.8,124.2,125;23.1,121.3,100;28.3,121.5,50;34.1,135.0,35];
myvect = [myvect;my_wpac_2024_037];
nhcvect = [nhcvect;nhc_wpac_2024_037];
btkvect = [btkvect;btk_wpac_2024_037];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 038 ... KONG-REY/(LEON) before 2024-10-30-03Z ... certification failed
# my at https://x.com/elioeFIN/status/1851440750388527239

my_wpac_2024_038 = [22.0,122.2,130;26.2,120.3,65;30.1,124.9,55];
nhc_wpac_2024_038 = [21.8,122.2,130;26.0,120.6,60;30.5,124.8,45];
btk_wpac_2024_038 = [22.0,122.2,115;26.7,120.6,55;32.6,130.3,40];
myvect = [myvect;my_wpac_2024_038];
nhcvect = [nhcvect;nhc_wpac_2024_038];
btkvect = [btkvect;btk_wpac_2024_038];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Wpac 039 ... TORAJI/(NIKA) before 2024-11-10-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1855511314027651285

my_wpac_2024_039 = [16.6,121.2,65;18.8,117.6,50;20.0,115.0,45;20.6,112.4,25];
nhc_wpac_2024_039 = [16.8,120.8,65;18.4,117.4,45;19.6,115.0,40;20.1,113.2,35];
btk_wpac_2024_039 = [17.0,121.1,70;19.2,118.1,45;20.5,115.6,45;21.2,113.9,25];
myvect = [myvect;my_wpac_2024_039];
nhcvect = [nhcvect;nhc_wpac_2024_039];
btkvect = [btkvect;btk_wpac_2024_039];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Wpac 040 ... 27W before 2024-11-11-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1855786866970124544

my_wpac_2024_040 = [13.4,134.1,40;14.8,128.7,65;16.7,124.0,90;19.3,120.1,65;21.2,119.2,50];
nhc_wpac_2024_040 = [14.2,133.3,45;15.5,128.0,70;17.3,123.1,85;20.2,120.5,75;22.6,120.5,35];
btk_wpac_2024_040 = [13.6,133.7,45;15.1,127.8,70;17.2,123.1,130;20.5,120.1,65;22.4,120.3,30];
myvect = [myvect;my_wpac_2024_040];
nhcvect = [nhcvect;nhc_wpac_2024_040];
btkvect = [btkvect;btk_wpac_2024_040];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 041 ... USAGI/(OFEL) before 2024-11-12-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1856234741067903240

my_wpac_2024_041 = [15.6,126.4,65;18.1,122.1,90;20.7,120.2,80;21.6,119.5,45];
nhc_wpac_2024_041 = [15.9,126.4,80;18.3,122.3,100;20.9,120.6,85;22.8,121.7,60];
btk_wpac_2024_041 = [15.6,126.5,75;17.9,122.1,115;21.1,119.4,45;22.2,120.6,25];
myvect = [myvect;my_wpac_2024_041];
nhcvect = [nhcvect;nhc_wpac_2024_041];
btkvect = [btkvect;btk_wpac_2024_041];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Wpac 042 ... MAN-YI before 2024-11-12-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1856239655504531627

my_wpac_2024_042 = [13.5,143.3,35;12.1,137.3,60;12.6,130.7,95;14.6,125.5,100;17.1,122.6,75];
nhc_wpac_2024_042 = [13.5,142.9,45;12.7,136.8,60;13.3,131.0,90;15.2,126.6,100;17.3,123.9,90];
btk_wpac_2024_042 = [12.3,142.6,35;10.6,136.6,50;10.9,130.4,90;13.2,125.6,140;15.8,121.9,130];
myvect = [myvect;my_wpac_2024_042];
nhcvect = [nhcvect;nhc_wpac_2024_042];
btkvect = [btkvect;btk_wpac_2024_042];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 043 ... USAGI/(OFEL) before 2024-11-12-15Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1856322933272027187

my_wpac_2024_043 = [16.1,125.2,90;18.8,121.3,90;21.4,120.2,75;22.8,121.8,50];
nhc_wpac_2024_043 = [16.4,125.4,80;19.1,121.6,95;21.4,120.7,85;23.2,122.3,45];
btk_wpac_2024_043 = [16.2,125.3,115;18.8,121.1,55;21.5,119.6,40;22.1,120.3,25];
myvect = [myvect;my_wpac_2024_043];
nhcvect = [nhcvect;nhc_wpac_2024_043];
btkvect = [btkvect;btk_wpac_2024_043];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Wpac 044 ... MAN-YI before 2024-11-12-15Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1856328306129326249

my_wpac_2024_044 = [13.0,141.8,55;12.0,135.8,80;12.9,129.9,105;15.0,125.4,110;17.0,123.0,90];
nhc_wpac_2024_044 = [13.2,141.6,60;12.6,135.1,95;13.6,129.5,105;15.8,125.6,105;18.3,122.6,90];
btk_wpac_2024_044 = [11.9,141.2,35;10.6,135.0,55;11.5,129.0,100;13.9,124.6,130;16.6,120.7,90];
myvect = [myvect;my_wpac_2024_044];
nhcvect = [nhcvect;nhc_wpac_2024_044];
btkvect = [btkvect;btk_wpac_2024_044];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 001 ... BHEKI before 2024-11-15-15Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1857406159646278087
# (no JTWC forecast)

# Wpac 045 ... MAN-YI/(PEPITO) before 2024-11-15-15Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1857412718258450708

my_wpac_2024_045 = [13.9,125.0,135;16.3,121.2,85;18.6,116.8,55;18.2,113.5,40];
nhc_wpac_2024_045 = [13.6,124.5,125;16.1,120.3,85;18.1,116.0,65;18.1,112.5,45];
btk_wpac_2024_045 = [13.9,124.6,130;16.6,120.7,90;18.5,115.9,55;18.1,112.1,25];
myvect = [myvect;my_wpac_2024_045];
nhcvect = [nhcvect;nhc_wpac_2024_045];
btkvect = [btkvect;btk_wpac_2024_045];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 002 ... BHEKI before 2024-11-20-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1859050235781095818
# (no JTWC forecast)

# Nio 07 ... BOB 08 / 99B before 2024-11-26-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1861213485981454827
# (no JTWC forecast)

# Nio 08 ... BOB 08 / 99B before 2024-11-26-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1861312941837918656
# (no JTWC forecast)

# Nio 09 ... BOB 08 / 99B before 2024-11-26-15Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1861404574239584435
# (no JTWC forecast)

# Nio 10 ... BOB 08 / 99B before 2024-11-27-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1861590942882406811
# (no JTWC forecast)

# Nio 11 ... BOB 08 / 99B before 2024-11-27-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1861673271873184252
# (no JTWC forecast)

# Shem 003 ... 01U/96S before 2024-11-27-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1861677920143438007
# (no JTWC forecast)

# Nio 12 ... BOB 08 / 99B before 2024-11-27-15Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1861765488092631153
# (no JTWC forecast)

# Shem 004 ... 01U/03S before 2024-11-27-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1861851173696819218
# (no JTWC forecast)

# Nio 13 ... BOB 08 / 99B before 2024-11-27-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1861854665803006396
# (no JTWC forecast)

# Nio 14 ... BOB 08 / 99B before 2024-11-28-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1862033533381779657
# (no JTWC forecast)

# Shem 005 ... ROBYN before 2024-11-28-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1862038048147476986
# (no JTWC forecast)

# Nio 15 ... BOB 08 / 99B before 2024-11-29-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1862391193943851115
# (no JTWC forecast)

# Shem 006 ... 04 / 92S before 2024-12-09-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1866201067874349200

my_shem_2025_006 = [10.6,59.9,45;10.6,56.9,55;11.5,52.9,55;11.9,49.3,60;13.1,46.4,35];
nhc_shem_2025_006 = [10.5,60.1,50;10.7,57.6,60;11.6,54.0,60;12.3,49.9,50;12.9,46.3,35];
btk_shem_2025_006 = [10.5,59.8,60;10.5,56.7,120;10.9,52.2,125;11.9,47.5,110;13.2,42.8,115];
myvect = [myvect;my_shem_2025_006];
nhcvect = [nhcvect;nhc_shem_2025_006];
btkvect = [btkvect;btk_shem_2025_006];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 007 ... CHIDO before 2024-12-10-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1866294709737377904
# (no JTWC forecast)

# Shem 008 ... CHIDO before 2024-12-10-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1866385764004807018

my_shem_2025_008 = [10.4,57.7,65;10.7,53.9,80;11.8,50.0,65;12.8,46.5,50;13.7,41.8,45];
nhc_shem_2025_008 = [10.3,58.3,65;10.8,54.7,80;11.6,50.8,60;12.8,46.7,45;13.7,42.2,35];
btk_shem_2025_008 = [10.5,58.4,75;10.7,54.5,135;11.1,49.9,105;12.6,45.4,115;13.3,40.1,100];
myvect = [myvect;my_shem_2025_008];
nhcvect = [nhcvect;nhc_shem_2025_008];
btkvect = [btkvect;btk_shem_2025_008];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 009 ... CHIDO before 2024-12-11-03Z ... certification failed?
# my at https://x.com/elioeFIN/status/1866654921858355594
# (no JTWC forecast)

# Shem 010 ... CHIDO before 2024-12-12-03Z ... CERTIFIED 
# my at https://x.com/elioeFIN/status/1867011270588707304
# (no JTWC forecast)

# Shem 011 ... CHIDO before 2024-12-12-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1867107786473259485

my_shem_2025_011 = [10.9,50.2,115;12.2,45.8,90;13.4,41.5,70;14.6,37.3,30];
nhc_shem_2025_011 = [11.2,50.6,110;12.6,46.0,95;13.5,41.6,60;15.1,37.3,30];
btk_shem_2025_011 = [11.1,49.9,105;12.6,45.4,115;13.3,40.1,100;15.1,34.9,25];
myvect = [myvect;my_shem_2025_011];
nhcvect = [nhcvect;nhc_shem_2025_011];
btkvect = [btkvect;btk_shem_2025_011];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 012 ... CHIDO before 2024-12-13-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1867382862305276181

my_shem_2025_012 = [12.1,46.6,90;13.3,41.3,100;14.2,36.1,45];
nhc_shem_2025_012 = [12.1,47.0,105;13.0,42.1,100;14.0,36.9,65];
btk_shem_2025_012 = [12.1,46.4,115;13.2,41.4,115;14.8,35.8,35];
myvect = [myvect;my_shem_2025_012];
nhcvect = [nhcvect;nhc_shem_2025_012];
btkvect = [btkvect;btk_shem_2025_012];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 013 ... CHIDO before 2024-12-13-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1867655613032866104

my_shem_2025_013 = [12.9,42.9,100;13.5,37.4,45];
nhc_shem_2025_013 = [13.1,42.8,100;13.8,37.5,30];
btk_shem_2025_013 = [13.2,42.8,115;14.0,37.2,50];
myvect = [myvect;my_shem_2025_013];
nhcvect = [nhcvect;nhc_shem_2025_013];
btkvect = [btkvect;btk_shem_2025_013];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Wpac 046 ... 28W/(ROMINA) before 2024-12-23-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1871003364085125287

my_wpac_2024_046 = [11.4,111.2,35;11.2,109.4,25;11.6,106.6,20];
nhc_wpac_2024_046 = [11.3,111.3,35;10.9,109.5,25;9.7,106.5,20];
btk_wpac_2024_046 = [11.5,112.3,30;10.6,110.7,25;8.8,108.3,25];
myvect = [myvect;my_wpac_2024_046];
nhcvect = [nhcvect;nhc_wpac_2024_046];
btkvect = [btkvect;btk_wpac_2024_046];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Wpac 047 ... PABUK/(ROMINA) before 2024-12-23-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1871094344473567348

my_wpac_2024_047 = [10.8,111.3,35;11.5,108.9,20];
nhc_wpac_2024_047 = [11.1,111.3,35;10.6,109.4,20];
btk_wpac_2024_047 = [11.8,111.9,30;9.6,110.3,25];
myvect = [myvect;my_wpac_2024_047];
nhcvect = [nhcvect;nhc_wpac_2024_047];
btkvect = [btkvect;btk_wpac_2024_047];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 014 ... 07U/05S before 2024-12-27-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1872731531917312089
# (no JTWC forecast)

# Shem 015 ... 05/94S before 2025-01-08-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1876893452077510702
# (no JTWC forecast)

# Shem 016 ... DIKELEDI before 2025-01-09-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1877439831459897474

my_shem_2025_016 = [13.2,54.0,75;13.0,49.1,50;14.5,44.0,50;16.7,40.7,70;19.8,39.6,65];
nhc_shem_2025_016 = [13.0,54.5,60;12.4,49.2,60;13.6,44.7,60;15.3,41.7,60;17.7,40.6,60];
btk_shem_2025_016 = [13.3,54.2,55;12.9,49.0,75;14.3,43.5,70;15.5,40.2,70;18.9,39.8,60];
myvect = [myvect;my_shem_2025_016];
nhcvect = [nhcvect;nhc_shem_2025_016];
btkvect = [btkvect;btk_shem_2025_016];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 017 ... DIKELEDI before 2025-01-10-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1877523906895941826
# (no JTWC forecast)

# Shem 018 ... DIKELEDI before 2025-01-10-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1877615198787227827

my_shem_2025_018 = [12.8,51.2,85;13.7,46.3,50;15.1,41.9,60;17.6,40.0,60;21.3,38.8,65];
nhc_shem_2025_018 = [12.6,51.5,65;13.1,46.7,50;15.0,43.0,55;17.6,40.8,60;21.6,40.5,65];
btk_shem_2025_018 = [12.6,51.7,80;13.6,46.2,65;14.9,41.1,80;16.8,39.9,55;21.7,41.1,70];
myvect = [myvect;my_shem_2025_018];
nhcvect = [nhcvect;nhc_shem_2025_018];
btkvect = [btkvect;btk_shem_2025_018];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 019 ... 09U/97S before 2025-01-10-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1877618282540196051
# (no JTWC forecast)

# Shem 020 ... DIKELEDI before 2025-01-11-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1877888335709929499
# (no JTWC forecast)

# Shem 021 ... DIKELEDI before 2025-01-12-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1878251327521751180
# (no JTWC forecast)

# Shem 022 ... DIKELEDI before 2025-01-12-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1878340300608844100

my_shem_2025_022 = [15.5,41.9,90;17.9,40.1,105;21.2,40.2,115;25.9,43.5,90;28.5,45.9,60];
nhc_shem_2025_022 = [15.3,42.4,75;17.6,40.3,95;21.1,40.6,100;26.1,42.8,90;29.8,46.9,65];
btk_shem_2025_022 = [14.9,41.1,80;16.8,39.9,55;21.7,41.1,70;28.9,44.7,100;33.7,54.8,50];
myvect = [myvect;my_shem_2025_022];
nhcvect = [nhcvect;nhc_shem_2025_022];
btkvect = [btkvect;btk_shem_2025_022];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 023 ... DIKELEDI before 2025-01-13-03Z ... certification failed?
# my at https://x.com/elioeFIN/status/1878617259159278059
# (no JTWC forecast)

# Shem 024 ... DIKELEDI before 2025-01-15-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1879611826423648447

my_shem_2025_024 = [31.9,49.2,90;34.3,61.0,55];
nhc_shem_2025_024 = [31.1,48.7,75;33.5,58.4,50];
btk_shem_2025_024 = [32.2,49.0,75;35.0,61.9,45];
myvect = [myvect;my_shem_2025_024];
nhcvect = [nhcvect;nhc_shem_2025_024];
btkvect = [btkvect;btk_shem_2025_024];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];




##
##
## IN TOTAL

my3d = 12756/1.852/2*[ cos(myvect(:,1)/180*pi).*cos(myvect(:,2)/180*pi) , cos(myvect(:,1)/180*pi).*sin(myvect(:,2)/180*pi) , sin(myvect(:,1)/180*pi) ];
nhc3d = 12756/1.852/2*[ cos(nhcvect(:,1)/180*pi).*cos(nhcvect(:,2)/180*pi) , cos(nhcvect(:,1)/180*pi).*sin(nhcvect(:,2)/180*pi) , sin(nhcvect(:,1)/180*pi) ];
btk3d = 12756/1.852/2*[ cos(btkvect(:,1)/180*pi).*cos(btkvect(:,2)/180*pi) , cos(btkvect(:,1)/180*pi).*sin(btkvect(:,2)/180*pi) , sin(btkvect(:,1)/180*pi) ];

myposerror = sqrt( (my3d(:,1)-btk3d(:,1)).^2 + (my3d(:,2)-btk3d(:,2)).^2 + (my3d(:,3)-btk3d(:,3)).^2 );
nhcposerror = sqrt( (nhc3d(:,1)-btk3d(:,1)).^2 + (nhc3d(:,2)-btk3d(:,2)).^2 + (nhc3d(:,3)-btk3d(:,3)).^2 );
ourposdiff = sqrt( (nhc3d(:,1)-my3d(:,1)).^2 + (nhc3d(:,2)-my3d(:,2)).^2 + (nhc3d(:,3)-my3d(:,3)).^2 );
myinterror = abs( myvect(:,3)-btkvect(:,3) );
nhcinterror = abs( nhcvect(:,3)-btkvect(:,3) );
ourintdiff = abs( nhcvect(:,3)-myvect(:,3) );

j = 3; # change this number to change the basin in which you want a comparison

[sum(myposerror.*(leadtimevect==1).*(basinvect==j))/sum(nhcposerror.*(leadtimevect==1).*(basinvect==j)) , sum(myinterror.*(leadtimevect==1).*(basinvect==j))/sum(nhcinterror.*(leadtimevect==1).*(basinvect==j)) , sum((leadtimevect==1).*(basinvect==j))]
[sum(myposerror.*(leadtimevect==2).*(basinvect==j))/sum(nhcposerror.*(leadtimevect==2).*(basinvect==j)) , sum(myinterror.*(leadtimevect==2).*(basinvect==j))/sum(nhcinterror.*(leadtimevect==2).*(basinvect==j)) , sum((leadtimevect==2).*(basinvect==j))]
[sum(myposerror.*(leadtimevect==3).*(basinvect==j))/sum(nhcposerror.*(leadtimevect==3).*(basinvect==j)) , sum(myinterror.*(leadtimevect==3).*(basinvect==j))/sum(nhcinterror.*(leadtimevect==3).*(basinvect==j)) , sum((leadtimevect==3).*(basinvect==j))]
[sum(myposerror.*(leadtimevect==4).*(basinvect==j))/sum(nhcposerror.*(leadtimevect==4).*(basinvect==j)) , sum(myinterror.*(leadtimevect==4).*(basinvect==j))/sum(nhcinterror.*(leadtimevect==4).*(basinvect==j)) , sum((leadtimevect==4).*(basinvect==j))]
[sum(myposerror.*(leadtimevect==5).*(basinvect==j))/sum(nhcposerror.*(leadtimevect==5).*(basinvect==j)) , sum(myinterror.*(leadtimevect==5).*(basinvect==j))/sum(nhcinterror.*(leadtimevect==5).*(basinvect==j)) , sum((leadtimevect==5).*(basinvect==j))]