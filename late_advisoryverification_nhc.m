# to be run with GNU Octave
# data last added 2025/01/20, data ready for all forecasts issued on or before 2025/01/15

# to compare elioe's performance to U.S. agencies;
# regarding "late advisories" posted after NHC/CPHC/JTWC advisories had become public (if they existed in that advisory cycle);
# the code includes American forecast (nhcvect), elioe's forecast (myvect) and actual position and 1-min wind (btkvect)
# ... whenever all three are available.
# "basinvect" numbers: 1 for North Atlantic (agency=NHC), 2 for East Pacific (agency=NHC), 3 for WPac/NIO/SHem (agency=JTWC), 4 for CPac (agency=CPHC)

# in CPac/EPac/NAtl, if not stated in comment otherwise, data source is operational track originally from https://ftp.nhc.noaa.gov/atcf/btk/
# in case of revisions to data, I may have recorded the values before or after such revision
# in other basins, if not stated in comment otherwise, the values may be from https://tropical.atmos.colostate.edu/Realtime/
# or https://hurricanes.ral.ucar.edu/realtime/current/ or https://www.ssd.noaa.gov/PS/TROP/DATA/ATCF/JTWC/

# if specified in a comment, the data may come from tropical cyclone reports, or (post-season analysis) best track files of JTWC
# or, rarely in WPac/NIO/SHem, it could be from a local RSMC, if nothing else is available
# however, local RSMC data is used only if both position and wind speed is available
# and 10-min winds converted to 1-min by multiplying by 1.12, and 3-min winds converted to 1-min by multiplying by 1.06

# additionally, data points may be "self-made": for 2020-22 those would be mostly based on synoptic charts published by NHC, as well as FU Berlin
# and those data points would exist in cases where FU Berlin disagreed with NHC regarding a system's dissipation (in NAtl only)
# for 2023, those "self-made" data points are based on model initializations (in NAtl/EPac only)

# note that "Atl #11" accidentally was given for two advisories in 2020... 
# numbering is therefore failure from #11(2) to #18

# a special case is PTC 03L / Claudette of 2021, which I consider to be two separate systems. The part of code to compare errors of PTC 03L using
# data of Claudette exists in chronologically proper place, but is behind comment markers by default.

# position error is calculated along a straight line assuming Earth is a sphere

nhcvect = [];
myvect = [];
btkvect = [];
leadtimevect = [];
basinvect = [];

# Epac 01 ... JULIO around 2020-09-06-15Z
# my at https://twitter.com/elioeFIN/status/1302624323149144064
# NHC at https://www.nhc.noaa.gov/archive/2020/ep15/ep152020.discus.004.shtml?
# (nothing to be verified... not even after tcr release)

# Atl 01 ... SEVENTEEN around 2020-09-07-03Z
# my at https://twitter.com/elioeFIN/status/1302814466493603840
# NHC at https://www.nhc.noaa.gov/archive/2020/al17/al172020.discus.001.shtml?

nhc_atl_2020_01 = [17.2,42.7,35;18.0,44.6,45;19.2,48.2,55;20.4,51.9,50;21.2,55.5,45];
my_atl_2020_01 = [17.2,42.7,40;18.0,44.6,60;19.2,48.2,60;20.4,51.9,55;21.3,55.4,50];
btk_atl_2020_01 = [17.6,42.4,40;18.9,44.5,50;20.4,47.6,50;22.3,50.3,50;25.4,54.3,60]; # TCR
nhcvect = [nhcvect;nhc_atl_2020_01]; 
myvect = [myvect;my_atl_2020_01];
btkvect = [btkvect;btk_atl_2020_01];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 02 ... EIGHTEEN around 2020-09-07-15Z
# my at https://twitter.com/elioeFIN/status/1302987759062331394
# NHC at https://www.nhc.noaa.gov/archive/2020/al18/al182020.discus.002.shtml?

nhc_atl_2020_02 = [16.5,25.8,45;17.4,31.5,55;18.6,36.5,65;20.6,40.6,70;23.2,43.8,65];
my_atl_2020_02 = [16.6,25.9,45;17.5,31.1,55;19.3,37.1,55;22.8,39.9,60;24.5,43.5,40];
btk_atl_2020_02 = [16.4,25.7,35;17.3,31.2,35;18.4,35.3,40;19.9,39.3,35;22.8,44.0,30]; # tcr
nhcvect = [nhcvect;nhc_atl_2020_02]; 
myvect = [myvect;my_atl_2020_02];
btkvect = [btkvect;btk_atl_2020_02];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 03 ... PAULETTE around 2020-09-07-21Z
# my at https://twitter.com/elioeFIN/status/1303076819491577859
# NHC at https://www.nhc.noaa.gov/archive/2020/al17/al172020.discus.004.shtml?

nhc_atl_2020_03 = [18.8,43.6,45;20.3,46.8,50;21.1,50.7,50;21.8,53.8,50;24.0,56.5,50];
my_atl_2020_03 = [18.8,43.6,45;20.2,46.7,50;21.4,50.8,55;22.9,53.7,50;24.3,57.4,45];
btk_atl_2020_03 = [18.6,43.7,50;20.0,46.8,50;21.8,49.6,45;24.3,53.1,55;28.0,57.8,60]; # TCR
nhcvect = [nhcvect;nhc_atl_2020_03]; 
myvect = [myvect;my_atl_2020_03];
btkvect = [btkvect;btk_atl_2020_03];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 04 ... RENE around 2020-09-08-03Z
# my at https://twitter.com/elioeFIN/status/1303168482427760640
# NHC at https://www.nhc.noaa.gov/archive/2020/al18/al182020.discus.004.shtml?

nhc_atl_2020_04 = [16.8,28.2,45;18.2,33.6,60;20.2,38.3,70;23.1,41.9,65;27.6,44.1,55];
my_atl_2020_04 = [16.8,28.3,50;18.2,33.3,65;20.1,38.9,70;23.0,42.6,60;27.5,43.8,45];
btk_atl_2020_04 = [16.8,28.6,30;17.9,33.5,35;19.1,37.2,35;21.1,41.8,35;24.7,46.0,30]; # TCR
nhcvect = [nhcvect;nhc_atl_2020_04]; 
myvect = [myvect;my_atl_2020_04];
btkvect = [btkvect;btk_atl_2020_04];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 05 ... PAULETTE around 2020-09-08-21Z
# my at https://twitter.com/elioeFIN/status/1303439691409223680
# NHC at https://www.nhc.noaa.gov/archive/2020/al17/al172020.discus.008.shtml?

nhc_atl_2020_05 = [19.9,47.2,55;20.5,50.6,50;21.4,53.2,45;23.5,55.5,45;26.5,59.0,50];
my_atl_2020_05 = [19.9,47.2,60;20.5,50.5,55;21.2,53.3,45;22.6,55.6,40;26.9,59.1,45];
btk_atl_2020_05 = [20.0,46.8,50;21.8,49.6,45;24.3,53.1,55;28.0,57.8,60;30.2,62.6,75]; # TCR
nhcvect = [nhcvect;nhc_atl_2020_05]; 
myvect = [myvect;my_atl_2020_05];
btkvect = [btkvect;btk_atl_2020_05];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 06 ... RENE around 2020-09-09-03Z
# my at https://twitter.com/elioeFIN/status/1303532762268397569
# NHC at https://www.nhc.noaa.gov/archive/2020/al18/al182020.discus.008.shtml?

nhc_atl_2020_06 = [18.4,33.7,40;20.5,38.1,60;24.2,41.4,60;28.5,42.6,50;30.2,40.3,40];
my_atl_2020_06 = [18.5,33.8,45;20.6,37.8,65;24.3,41.5,55;28.7,43.0,45;31.0,39.5,30];
btk_atl_2020_06 = [17.9,33.5,35;19.1,37.2,35;21.1,41.8,35;24.7,46.0,30;27.5,47.8,25]; # TCR
nhcvect = [nhcvect;nhc_atl_2020_06]; 
myvect = [myvect;my_atl_2020_06];
btkvect = [btkvect;btk_atl_2020_06];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 07 ... PAULETTE around 2020-09-10-21Z
# my at https://twitter.com/elioeFIN/status/1304164654760030209
# NHC at https://www.nhc.noaa.gov/archive/2020/al17/al172020.discus.016.shtml?

nhc_atl_2020_07 = [23.6,53.4,40;26.6,56.8,45;29.2,61.4,65;31.5,65.5,75;34.5,64.0,80];
my_atl_2020_07 = [23.6,53.4,40;26.6,56.8,45;29.2,61.4,60;31.4,65.5,70;33.6,64.1,65];
btk_atl_2020_07 = [24.3,53.1,55;28.0,57.8,60;30.2,62.6,75;33.9,64.4,90;38.7,56.7,85]; # TCR
nhcvect = [nhcvect;nhc_atl_2020_07]; 
myvect = [myvect;my_atl_2020_07];
btkvect = [btkvect;btk_atl_2020_07];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 08 ... PAULETTE around 2020-09-11-21Z
# my at https://twitter.com/elioeFIN/status/1304529649897213953
# NHC at https://www.nhc.noaa.gov/archive/2020/al17/al172020.discus.020.shtml?

nhc_atl_2020_08 = [27.5,57.5,65;29.8,62.3,80;32.6,65.3,90;36.0,62.0,95;39.0,56.0,85];
my_atl_2020_08 = [27.5,57.5,60;29.7,62.1,75;32.4,64.9,85;35.8,61.5,95;38.1,55.2,80];
btk_atl_2020_08 = [28.0,57.8,60;30.2,62.6,75;33.9,64.4,90;38.7,56.7,85;44.3,43.1,70]; # TCR
nhcvect = [nhcvect;nhc_atl_2020_08]; 
myvect = [myvect;my_atl_2020_08];
btkvect = [btkvect;btk_atl_2020_08];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 09 ... NINETEEN around 2020-09-12-03Z
# my at https://twitter.com/elioeFIN/status/1304619137537368064
# NHC at https://www.nhc.noaa.gov/archive/2020/al19/al192020.discus.002.shtml?

nhc_atl_2020_09 = [26.8,82.9,35;28.8,85.9,45;29.7,87.7,60;30.2,89.5,60;31.3,90.9,25];
my_atl_2020_09 = [26.8,83.0,35;28.7,86.0,50;29.3,88.3,60;30.3,90.5,50;31.5,91.8,25];
btk_atl_2020_09 = [26.0,82.5,35;27.9,86.0,50;28.7,87.7,75;29.6,88.0,75;31.6,86.7,35]; # TCR
nhcvect = [nhcvect;nhc_atl_2020_09]; 
myvect = [myvect;my_atl_2020_09];
btkvect = [btkvect;btk_atl_2020_09];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 10 ... SALLY around 2020-09-13-15Z
# my at https://twitter.com/elioeFIN/status/1305166199957917702
# NHC at https://www.nhc.noaa.gov/archive/2020/al19/al192020.discus.008.shtml?

nhc_atl_2020_10 = [28.5,88.2,65;29.7,90.2,65;31.5,90.3,35;33.6,88.3,25];
my_atl_2020_10 = [28.5,88.3,65;29.7,90.2,70;31.0,90.5,40;32.5,89.4,25];
btk_atl_2020_10 = [28.4,86.9,65;29.0,88.1,70;30.5,87.6,85;32.6,85.2,30]; # TCR
nhcvect = [nhcvect;nhc_atl_2020_10]; 
myvect = [myvect;my_atl_2020_10];
btkvect = [btkvect;btk_atl_2020_10];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 11 ... PAULETTE around 2020-09-13-21Z
# my at https://twitter.com/elioeFIN/status/1305250141692194822
# NHC at https://www.nhc.noaa.gov/archive/2020/al17/al172020.discus.028.shtml?

nhc_atl_2020_11 = [33.9,64.8,95;38.1,57.8,100;42.4,47.4,80;45.5,38.7,60;44.4,34.1,45];
my_atl_2020_11 = [34.0,64.8,100;38.1,58.0,95;41.7,47.3,75;44.0,39.2,55;43.8,35.2,45];
btk_atl_2020_11 = [33.9,64.4,90;38.7,56.7,85;44.3,43.1,70;46.6,33.0,50;41.0,31.2,40]; # TCR
nhcvect = [nhcvect;nhc_atl_2020_11]; 
myvect = [myvect;my_atl_2020_11];
btkvect = [btkvect;btk_atl_2020_11];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 02 ... KARINA around 2020-09-14-03Z
# my at https://twitter.com/elioeFIN/status/1305340266434494470
# NHC at https://www.nhc.noaa.gov/archive/2020/ep16/ep162020.discus.005.shtml?

nhc_epac_2020_02 = [19.4,119.7,45;21.0,122.1,40;22.3,124.5,30;22.5,126.5,25];
my_epac_2020_02 = [19.5,120.1,45;21.2,122.3,40;22.6,124.4,30;23.1,126.7,25];
btk_epac_2020_02 = [18.7,119.3,50;21.3,122.5,50;23.1,124.6,30;23.6,126.5,25]; # TCR
nhcvect = [nhcvect;nhc_epac_2020_02]; 
myvect = [myvect;my_epac_2020_02];
btkvect = [btkvect;btk_epac_2020_02];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Atl 11 ... TEDDY around 2020-09-14-21Z
# my at https://twitter.com/elioeFIN/status/1305627915451801606
# NHC at https://www.nhc.noaa.gov/archive/2020/al20/al202020.discus.009.shtml?

# (see numbering failure)
nhc_atl_2020_11b = [14.5,47.7,70;16.6,50.8,85;19.3,53.6,100;22.0,56.0,105;24.5,58.5,100];
my_atl_2020_11b = [14.5,47.8,65;16.5,51.2,85;18.9,54.4,95;21.7,57.0,100;24.9,58.1,95];
btk_atl_2020_11b = [14.2,47.4,55;16.8,50.2,85;19.7,53.7,115;22.5,56.5,105;26.2,59.7,100]; # TCR
nhcvect = [nhcvect;nhc_atl_2020_11b]; 
myvect = [myvect;my_atl_2020_11b];
btkvect = [btkvect;btk_atl_2020_11b];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 12 ... TEDDY around 2020-09-15-03Z
# my at https://twitter.com/elioeFIN/status/1305702482107076609
# NHC at https://www.nhc.noaa.gov/archive/2020/al20/al202020.discus.010.shtml?

nhc_atl_2020_12 = [14.8,48.3,70;17.3,51.3,90;19.9,54.2,105;22.6,56.9,105;25.5,60.0,105];
my_atl_2020_12 = [14.9,48.3,70;17.3,51.5,90;19.7,54.9,100;22.3,57.8,100;25.3,59.5,100];
btk_atl_2020_12 = [14.7,48.0,65;17.4,51.1,85;20.4,54.4,120;23.5,57.2,105;26.9,60.8,100]; # TCR
nhcvect = [nhcvect;nhc_atl_2020_12]; 
myvect = [myvect;my_atl_2020_12];
btkvect = [btkvect;btk_atl_2020_12];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 13 ... SALLY around 2020-09-15-15Z
# my at https://twitter.com/elioeFIN/status/1305885530731749381
# NHC at https://www.nhc.noaa.gov/archive/2020/al19/al192020.discus.017.shtml?

nhc_atl_2020_13 = [30.2,88.1,70;31.9,86.6,35];
my_atl_2020_13 = [30.2,88.0,70;32.1,86.6,30];
btk_atl_2020_13 = [30.5,87.6,85;32.6,85.2,30]; # TCR
nhcvect = [nhcvect;nhc_atl_2020_13]; 
myvect = [myvect;my_atl_2020_13];
btkvect = [btkvect;btk_atl_2020_13];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Atl 14 ... TEDDY around 2020-09-15-21Z
# my at https://twitter.com/elioeFIN/status/1305975669638270979
# NHC at https://www.nhc.noaa.gov/archive/2020/al20/al202020.discus.013.shtml?

nhc_atl_2020_14 = [16.8,50.2,75;19.7,53.1,95;22.5,55.8,100;25.4,58.8,105;28.5,61.5,95];
my_atl_2020_14 = [16.7,50.1,85;19.7,53.2,100;22.3,56.6,100;24.9,59.7,105;28.2,61.1,115];
btk_atl_2020_14 = [16.8,50.2,85;19.7,53.7,115;22.5,56.5,105;26.2,59.7,100;28.5,63.3,80]; # TCR
nhcvect = [nhcvect;nhc_atl_2020_14]; 
myvect = [myvect;my_atl_2020_14];
btkvect = [btkvect;btk_atl_2020_14];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 15 ... TEDDY around 2020-09-17-03Z
# my at https://twitter.com/elioeFIN/status/1306431261402107904
# NHC at https://www.nhc.noaa.gov/archive/2020/al20/al202020.discus.019.shtml?

nhc_atl_2020_15 = [20.3,54.1,95;23.5,57.1,100;27.0,61.1,95;30.0,64.0,90;35.0,64.0,90];
my_atl_2020_15 = [20.3,54.1,100;23.4,57.0,100;26.5,61.8,100;29.3,65.1,100;34.4,64.3,85];
btk_atl_2020_15 = [20.4,54.4,120;23.5,57.2,105;26.9,60.8,95;29.0,63.7,80;34.6,61.4,85]; # TCR
nhcvect = [nhcvect;nhc_atl_2020_15]; 
myvect = [myvect;my_atl_2020_15];
btkvect = [btkvect;btk_atl_2020_15];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 16 ... TEDDY around 2020-09-17-21Z
# my at https://twitter.com/elioeFIN/status/1306704790668357633
# NHC at https://www.nhc.noaa.gov/archive/2020/al20/al202020.discus.022.shtml?

nhc_atl_2020_16 = [22.8,56.6,125;26.3,59.9,120;29.5,63.3,105;33.9,63.0,95;41.3,62.0,80];
my_atl_2020_16 = [22.8,56.5,120;26.3,59.8,120;28.9,64.2,105;33.1,64.6,95;41.5,62.0,70];
btk_atl_2020_16 = [22.5,56.5,105;26.2,59.7,100;28.5,63.3,80;32.2,61.8,80;40.3,64.2,80]; # TCR
nhcvect = [nhcvect;nhc_atl_2020_16]; 
myvect = [myvect;my_atl_2020_16];
btkvect = [btkvect;btk_atl_2020_16];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 17 ... TWENTY-TWO around 2020-09-18-15Z
# my at https://twitter.com/elioeFIN/status/1306975923229675520
# NHC at https://www.nhc.noaa.gov/archive/2020/al22/al222020.discus.004.shtml?

nhc_atl_2020_17 = [25.9,93.4,45;26.5,94.6,60;26.9,96.2,65;27.5,96.5,60;28.5,95.5,55];
my_atl_2020_17 = [25.9,93.3,50;26.4,94.6,60;26.4,95.8,65;26.5,95.7,60;27.9,95.7,45];
btk_atl_2020_17 = [26.4,92.4,50;27.1,92.8,55;27.8,95.5,45;28.8,96.8,35;30.0,94.6,25]; # TCR
nhcvect = [nhcvect;nhc_atl_2020_17]; 
myvect = [myvect;my_atl_2020_17];
btkvect = [btkvect;btk_atl_2020_17];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 18 ... BETA around 2020-09-19-21Z
# my at https://twitter.com/elioeFIN/status/1307431079540817923
# NHC at https://www.nhc.noaa.gov/archive/2020/al22/al222020.discus.009.shtml?

nhc_atl_2020_18 = [27.1,94.0,55;27.9,96.0,60;28.8,96.4,50;29.5,95.0,35;31.0,93.0,25];
my_atl_2020_18 = [27.1,93.8,60;27.8,95.9,65;28.3,96.0,50;29.3,94.9,35;30.7,92.5,25];
btk_atl_2020_18 = [27.5,93.6,55;28.1,96.0,40;28.9,96.5,25;30.3,93.8,25;33.0,89.1,20]; # TCR
nhcvect = [nhcvect;nhc_atl_2020_18]; 
myvect = [myvect;my_atl_2020_18];
btkvect = [btkvect;btk_atl_2020_18];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 03 ... LOWELL around 2020-09-22-03Z
# my at https://twitter.com/elioeFIN/status/1308243194379931648
# NHC at https://www.nhc.noaa.gov/archive/2020/ep17/ep172020.discus.006.shtml?

nhc_epac_2020_03 = [19.0,118.3,50;19.9,121.8,60;20.0,125.0,60;20.0,128.4,55;20.1,131.8,45];
my_epac_2020_03 = [19.0,118.4,50;20.2,122.0,60;20.2,124.6,60;20.0,128.0,55;20.6,131.3,50];
btk_epac_2020_03 = [19.1,118.2,40;20.9,122.5,40;21.7,126.3,40;21.5,131.2,30;21.3,136.5,30]; # TCR
nhcvect = [nhcvect;nhc_epac_2020_03]; 
myvect = [myvect;my_epac_2020_03];
btkvect = [btkvect;btk_epac_2020_03];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 04 ... LOWELL around 2020-09-22-21Z
# my at https://twitter.com/elioeFIN/status/1308512266153795585
# NHC at https://www.nhc.noaa.gov/archive/2020/ep17/ep172020.discus.009.shtml?

nhc_epac_2020_04 = [20.0,121.2,40;20.6,124.6,50;20.7,128.2,50;20.7,132.3,40;20.7,136.2,35];
my_epac_2020_04 = [19.9,121.4,50;20.5,124.6,50;20.8,127.9,45;20.9,132.5,40;20.6,137.4,35];
btk_epac_2020_04 = [20.5,121.5,45;21.7,125.3,40;21.5,129.8,30;21.5,135.2,30;21.0,140.8,25]; # TCR
nhcvect = [nhcvect;nhc_epac_2020_04]; 
myvect = [myvect;my_epac_2020_04];
btkvect = [btkvect;btk_epac_2020_04];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 05 ... MARIE around 2020-09-29-21Z
# my at https://twitter.com/elioeFIN/status/1311048091974479877
# NHC at https://www.nhc.noaa.gov/archive/2020/ep18/ep182020.discus.003.shtml?

nhc_epac_2020_05 = [14.6,114.5,60;15.3,120.3,90;17.2,124.9,100;19.6,128.5,85;21.4,131.6,60];
my_epac_2020_05 = [14.5,114.5,60;14.8,120.2,90;17.0,124.3,100;19.3,128.9,85;21.5,132.0,60];
btk_epac_2020_05 = [14.2,114.6,55;15.0,120.3,95;16.7,124.6,115;18.6,127.2,105;20.1,129.2,70]; # TCR
nhcvect = [nhcvect;nhc_epac_2020_05]; 
myvect = [myvect;my_epac_2020_05];
btkvect = [btkvect;btk_epac_2020_05];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 06 ... MARIE around 2020-09-30-21Z
# my at https://twitter.com/elioeFIN/status/1311412764074704898
# NHC at https://www.nhc.noaa.gov/archive/2020/ep18/ep182020.discus.007.shtml?

nhc_epac_2020_06 = [14.8,120.0,100;16.6,124.7,120;18.6,128.4,100;20.3,131.4,70;21.8,134.0,50];
my_epac_2020_06 = [14.7,119.9,95;16.3,124.6,115;18.6,128.4,95;20.6,131.3,70;21.9,134.2,45];
btk_epac_2020_06 = [15.0,120.3,95;16.7,124.6,115;18.6,127.2,105;20.1,129.2,70;21.0,132.3,45]; # TCR
nhcvect = [nhcvect;nhc_epac_2020_06]; 
myvect = [myvect;my_epac_2020_06];
btkvect = [btkvect;btk_epac_2020_06];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Atl 19 DESIGNATION IS SKIPPED TO CORRECT THE NUMBERING FAILURE AT Atl 11

# Atl 20 ... TWENTY-FIVE around 2020-10-02-21Z
# my at https://twitter.com/elioeFIN/status/1312134380576358400
# NHC at https://www.nhc.noaa.gov/archive/2020/al25/al252020.discus.002.shtml?

nhc_atl_2020_20 = [20.5,87.0,40;22.3,87.7,40;22.5,88.8,50];
my_atl_2020_20 = [20.5,87.1,40;22.2,87.8,40;22.5,88.7,45];
btk_atl_2020_20 = [20.4,87.5,60;22.7,87.7,55;22.3,87.9,30]; # TCR
nhcvect = [nhcvect;nhc_atl_2020_20]; 
myvect = [myvect;my_atl_2020_20];
btkvect = [btkvect;btk_atl_2020_20];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Atl 21 ... GAMMA around 2020-10-03-21Z
# my at https://twitter.com/elioeFIN/status/1312501408264978432
# NHC at https://www.nhc.noaa.gov/archive/2020/al25/al252020.discus.006.shtml?

nhc_atl_2020_21 = [22.0,88.2,40;22.0,89.1,45];
my_atl_2020_21 = [21.9,88.2,40;21.9,89.2,45];
btk_atl_2020_21 = [22.7,87.7,55;22.3,87.9,30]; # TCR
nhcvect = [nhcvect;nhc_atl_2020_21]; 
myvect = [myvect;my_atl_2020_21];
btkvect = [btkvect;btk_atl_2020_21];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Atl 22 ... GAMMA around 2020-10-04-21Z
# my at https://twitter.com/elioeFIN/status/1312865117818806272
# NHC at https://www.nhc.noaa.gov/archive/2020/al25/al252020.discus.010.shtml?

nhc_atl_2020_22 = [22.1,88.6,40];
my_atl_2020_22 = [22.1,88.6,40];
btk_atl_2020_22 = [22.3,87.9,30]; # TCR
nhcvect = [nhcvect;nhc_atl_2020_22]; 
myvect = [myvect;my_atl_2020_22];
btkvect = [btkvect;btk_atl_2020_22];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;1];

# Atl 23 ... TWENTY-SIX around 2020-10-05-03Z
# my at https://twitter.com/elioeFIN/status/1312953859564883968
# NHC at https://www.nhc.noaa.gov/archive/2020/al26/al262020.discus.002.shtml?

nhc_atl_2020_23 = [18.3,79.8,40;22.2,84.4,65;25.4,88.8,85;27.2,90.4,90;30.0,89.9,75];
my_atl_2020_23 = [18.2,79.7,35;22.1,84.3,65;25.2,88.7,80;27.4,89.7,90;29.6,89.2,55];
btk_atl_2020_23 = [16.6,79.8,65;19.3,84.6,100;22.3,90.2,80;25.3,93.5,105;30.1,92.9,75]; # TCR
nhcvect = [nhcvect;nhc_atl_2020_23]; 
myvect = [myvect;my_atl_2020_23];
btkvect = [btkvect;btk_atl_2020_23];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 24 ... DELTA around 2020-10-05-15Z
# my at https://twitter.com/elioeFIN/status/1313139047812886528
# NHC at https://www.nhc.noaa.gov/archive/2020/al26/al262020.discus.004.shtml?

nhc_atl_2020_24 = [18.7,81.7,60;22.8,86.8,85;26.0,90.7,90;28.8,91.1,85;33.1,88.2,40];
my_atl_2020_24 = [18.7,81.7,55;22.8,86.7,80;25.8,90.6,90;29.1,90.8,85;33.3,87.7,45];
btk_atl_2020_24 = [17.8,82.0,100;21.1,87.4,85;23.7,92.4,90;27.5,93.8,100;32.5,91.4,35]; # TCR
nhcvect = [nhcvect;nhc_atl_2020_24]; 
myvect = [myvect;my_atl_2020_24];
btkvect = [btkvect;btk_atl_2020_24];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 25 ... DELTA around 2020-10-05-21Z
# my at https://twitter.com/elioeFIN/status/1313227339975852033
# NHC at https://www.nhc.noaa.gov/archive/2020/al26/al262020.discus.005.shtml?

nhc_atl_2020_25 = [19.0,83.5,95;22.6,88.7,105;24.8,91.5,95;28.5,91.5,85;33.0,89.0,40];
my_atl_2020_25 = [19.1,83.4,90;22.6,88.7,100;24.8,91.3,100;28.9,90.8,85;34.2,86.8,45];
btk_atl_2020_25 = [18.5,83.3,120;21.7,88.8,75;24.5,93.1,100;28.7,93.6,90;33.3,90.6,25]; # TCR
nhcvect = [nhcvect;nhc_atl_2020_25]; 
myvect = [myvect;my_atl_2020_25];
btkvect = [btkvect;btk_atl_2020_25];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 26 ... DELTA around 2020-10-06-03Z
# my at https://twitter.com/elioeFIN/status/1313318345521999874
# NHC at https://www.nhc.noaa.gov/archive/2020/al26/al262020.discus.006.shtml?

nhc_atl_2020_26 = [19.8,84.6,100;23.0,89.5,105;25.2,91.7,100;28.6,91.2,85;33.6,88.4,35];
my_atl_2020_26 = [19.8,84.7,100;22.9,89.5,110;25.0,91.8,110;28.0,92.2,85;33.8,88.6,40];
btk_atl_2020_26 = [19.3,84.6,100;22.3,90.2,80;25.3,93.5,105;30.1,92.9,75;33.9,89.6,25]; # TCR
nhcvect = [nhcvect;nhc_atl_2020_26]; 
myvect = [myvect;my_atl_2020_26];
btkvect = [btkvect;btk_atl_2020_26];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 27 ... DELTA around 2020-10-06-21Z
# my at https://twitter.com/elioeFIN/status/1313587514205179904
# NHC at https://www.nhc.noaa.gov/archive/2020/al26/al262020.discus.009.shtml?

nhc_atl_2020_27 = [21.8,88.8,105;24.4,92.6,115;28.0,92.9,110;32.4,90.9,55;35.5,87.3,20];
my_atl_2020_27 = [21.8,88.7,110;24.4,92.5,115;27.9,92.8,100;32.1,90.8,55;35.8,85.8,35];
btk_atl_2020_27 = [21.7,88.8,75;24.5,93.1,100;28.7,93.6,90;33.3,90.6,25;35.1,86.3,20]; # TCR
nhcvect = [nhcvect;nhc_atl_2020_27]; 
myvect = [myvect;my_atl_2020_27];
btkvect = [btkvect;btk_atl_2020_27];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 28 ... DELTA around 2020-10-07-03Z
# my at https://twitter.com/elioeFIN/status/1313679287199969280
# NHC at https://www.nhc.noaa.gov/archive/2020/al26/al262020.discus.010.shtml?

nhc_atl_2020_28 = [22.3,89.8,105;25.0,92.7,115;29.0,92.2,110;33.0,89.8,50;36.0,86.0,20];
my_atl_2020_28 = [22.3,89.7,100;25.1,92.7,110;29.1,92.0,85;33.6,88.8,45;35.7,85.1,25];
btk_atl_2020_28 = [22.3,90.2,80;25.3,93.5,105;30.1,92.9,75;33.9,89.6,25;34.5,84.9,15]; # TCR
nhcvect = [nhcvect;nhc_atl_2020_28]; 
myvect = [myvect;my_atl_2020_28];
btkvect = [btkvect;btk_atl_2020_28];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 29 ... DELTA around 2020-10-07-21Z
# my at https://twitter.com/elioeFIN/status/1313949478546821121
# NHC at https://www.nhc.noaa.gov/archive/2020/al26/al262020.discus.013.shtml?

nhc_atl_2020_29 = [24.8,92.9,95;29.1,92.9,90;33.7,90.5,30;37.0,85.5,20];
my_atl_2020_29 = [24.7,93.0,100;29.1,92.8,90;33.5,90.3,35;36.2,86.5,20];
btk_atl_2020_29 = [24.5,93.1,100;28.7,93.6,90;33.3,90.6,25;35.1,86.3,20]; # TCR
nhcvect = [nhcvect;nhc_atl_2020_29]; 
myvect = [myvect;my_atl_2020_29];
btkvect = [btkvect;btk_atl_2020_29];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 30 ... EPSILON around 2020-10-19-21Z
# my at https://twitter.com/elioeFIN/status/1318300082207412224
# NHC at https://www.nhc.noaa.gov/archive/2020/al27/al272020.discus.003.shtml?

nhc_atl_2020_30 = [27.0,56.1,55;28.8,59.4,65;31.1,61.5,75;32.8,62.8,80;35.5,62.3,80];
my_atl_2020_30 = [27.0,56.1,55;28.7,59.5,65;30.9,61.3,70;32.6,61.8,80;34.7,62.1,90];
btk_atl_2020_30 = [27.3,55.3,55;29.3,59.6,100;31.5,61.5,75;34.9,61.7,75;38.6,59.7,70]; # TCR
nhcvect = [nhcvect;nhc_atl_2020_30]; 
myvect = [myvect;my_atl_2020_30];
btkvect = [btkvect;btk_atl_2020_30];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 31 ... EPSILON around 2020-10-20-03Z
# my at https://twitter.com/elioeFIN/status/1318387577200795649
# NHC at https://www.nhc.noaa.gov/archive/2020/al27/al272020.discus.004.shtml?

nhc_atl_2020_31 = [27.5,56.7,50;29.1,59.8,60;31.3,61.5,70;32.9,62.5,75;36.4,60.3,75];
my_atl_2020_31 = [27.6,56.6,50;29.1,59.9,65;31.4,61.3,75;32.8,61.6,75;36.0,60.7,80];
btk_atl_2020_31 = [28.3,56.3,65;29.5,60.4,100;32.2,61.6,75;36.1,62.0,75;40.3,57.6,65]; # TCR
nhcvect = [nhcvect;nhc_atl_2020_31]; 
myvect = [myvect;my_atl_2020_31];
btkvect = [btkvect;btk_atl_2020_31];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 32 ... EPSILON around 2020-10-20-21Z
# my at https://twitter.com/elioeFIN/status/1318663538152476672
# NHC at https://www.nhc.noaa.gov/archive/2020/al27/al272020.discus.007.shtml?

nhc_atl_2020_32 = [29.3,59.6,70;31.6,61.2,75;34.0,61.8,75;36.7,60.7,75;42.0,51.0,70];
my_atl_2020_32 = [29.2,59.5,65;31.6,61.1,70;34.0,61.7,80;36.3,60.3,80;42.0,50.8,75];
btk_atl_2020_32 = [29.3,59.6,100;31.5,61.5,75;34.9,61.7,75;38.6,59.7,70;45.0,46.9,60]; # TCR
nhcvect = [nhcvect;nhc_atl_2020_32]; 
myvect = [myvect;my_atl_2020_32];
btkvect = [btkvect;btk_atl_2020_32];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 33 ... EPSILON around 2020-10-21-03Z
# my at https://twitter.com/elioeFIN/status/1318749479609208832
# NHC at https://www.nhc.noaa.gov/archive/2020/al27/al272020.discus.008.shtml?

nhc_atl_2020_33 = [29.9,59.8,75;32.2,61.1,75;34.6,62.0,75;38.4,58.8,70;44.0,45.5,60];
my_atl_2020_33 = [29.8,59.8,70;32.2,61.2,70;34.5,62.0,75;38.1,59.3,75;44.2,45.8,70];
btk_atl_2020_33 = [29.5,60.4,100;32.2,61.6,75;36.1,62.0,75;40.3,57.6,65;47.2,41.2,60]; # TCR
nhcvect = [nhcvect;nhc_atl_2020_33]; 
myvect = [myvect;my_atl_2020_33];
btkvect = [btkvect;btk_atl_2020_33];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 34 ... EPSILON around 2020-10-21-21Z
# my at https://twitter.com/elioeFIN/status/1319024863944843269
# NHC at https://www.nhc.noaa.gov/archive/2020/al27/al272020.discus.012.shtml?

nhc_atl_2020_34 = [31.8,61.6,95;34.4,62.1,85;38.3,59.8,80;44.5,47.5,70;54.0,28.5,65];
my_atl_2020_34 = [31.7,61.5,90;34.4,62.1,80;38.1,59.9,80;43.8,48.2,70;51.8,26.3,70];
btk_atl_2020_34 = [31.5,61.5,75;34.9,61.7,75;38.6,59.7,70;45.0,46.9,60;54.9,30.4,60]; # TCR (but day 5 self-made)
nhcvect = [nhcvect;nhc_atl_2020_34]; 
myvect = [myvect;my_atl_2020_34];
btkvect = [btkvect;btk_atl_2020_34];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 35 ... TWENTY-EIGHT around 2020-10-25-03Z
# my at https://twitter.com/elioeFIN/status/1320199686192566272
# NHC at https://www.nhc.noaa.gov/archive/2020/al28/al282020.discus.002.shtml?

nhc_atl_2020_35 = [20.0,83.7,40;21.7,86.6,55;25.4,90.3,65;31.5,89.5,40];
my_atl_2020_35 = [19.9,83.8,40;21.6,86.5,60;25.1,90.2,70;31.6,89.5,40];
btk_atl_2020_35 = [18.2,83.8,55;19.9,86.6,70;23.2,90.8,55;30.2,89.9,85]; # TCR
nhcvect = [nhcvect;nhc_atl_2020_35]; 
myvect = [myvect;my_atl_2020_35];
btkvect = [btkvect;btk_atl_2020_35];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 36 ... ZETA around 2020-10-25-21Z
# my at https://twitter.com/elioeFIN/status/1320474783285415938
# NHC at https://www.nhc.noaa.gov/archive/2020/al28/al282020.discus.005.shtml?

nhc_atl_2020_36 = [19.7,85.7,65;23.2,89.6,65;29.4,90.3,60;37.0,83.0,25];
my_atl_2020_36 = [19.7,85.8,70;23.2,89.5,70;29.1,90.3,60;36.5,82.6,25];
btk_atl_2020_36 = [19.4,85.7,70;22.2,90.0,55;28.0,91.1,95;37.8,78.2,45]; # TCR
nhcvect = [nhcvect;nhc_atl_2020_36]; 
myvect = [myvect;my_atl_2020_36];
btkvect = [btkvect;btk_atl_2020_36];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 37 ... ZETA around 2020-10-26-15Z
# my at https://twitter.com/elioeFIN/status/1320745504578424833
# NHC at https://www.nhc.noaa.gov/archive/2020/al28/al282020.discus.008.shtml?

nhc_atl_2020_37 = [21.5,88.8,65;25.7,91.8,70;33.0,87.0,35;40.0,73.0,35];
my_atl_2020_37 = [21.4,88.9,60;25.8,91.7,70;32.8,86.8,45;39.3,72.6,35];
btk_atl_2020_37 = [21.3,89.0,60;26.0,91.7,80;35.3,83.6,45;42.9,58.4,50]; # TCR (but day 4 self-made)
nhcvect = [nhcvect;nhc_atl_2020_37]; 
myvect = [myvect;my_atl_2020_37];
btkvect = [btkvect;btk_atl_2020_37];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 38 ... ZETA around 2020-10-26-21Z
# my at https://twitter.com/elioeFIN/status/1320836450338906113
# NHC at https://www.nhc.noaa.gov/archive/2020/al28/al282020.discus.009.shtml?

nhc_atl_2020_38 = [22.1,89.9,65;26.8,91.4,70;35.0,83.5,30;42.0,68.0,35];
my_atl_2020_38 = [22.0,90.1,65;26.9,91.4,70;35.1,83.3,35;41.7,65.4,35];
btk_atl_2020_38 = [22.2,90.0,55;28.0,91.1,95;37.8,78.2,45;43.2,49.2,50]; # TCR (but day 4 self-made)
nhcvect = [nhcvect;nhc_atl_2020_38]; 
myvect = [myvect;my_atl_2020_38];
btkvect = [btkvect;btk_atl_2020_38];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 39 ... ETA around 2020-11-01-03Z
# my at https://twitter.com/elioeFIN/status/1322739478910377984
# NHC at https://www.nhc.noaa.gov/archive/2020/al29/al292020.discus.002.shtml?

nhc_atl_2020_39 = [15.3,78.8,50;14.7,82.1,70;13.7,83.7,70;14.0,85.5,35;14.5,87.0,25];
my_atl_2020_39 = [15.3,78.9,55;14.7,82.2,75;13.7,83.6,70;14.1,85.5,40;14.8,87.4,25];
btk_atl_2020_39 = [14.9,79.4,60;14.3,82.5,130;13.8,83.7,95;14.0,86.0,30;16.2,87.8,30]; # TCR
nhcvect = [nhcvect;nhc_atl_2020_39]; 
myvect = [myvect;my_atl_2020_39];
btkvect = [btkvect;btk_atl_2020_39];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 40 ... ETA around 2020-11-01-21Z
# my at https://twitter.com/elioeFIN/status/1323011091102945288
# NHC at https://www.nhc.noaa.gov/archive/2020/al29/al292020.discus.005.shtml?

nhc_atl_2020_40 = [14.7,82.1,80;14.0,83.8,75;14.1,85.7,35;14.7,88.0,25;15.5,88.5,25];
my_atl_2020_40 = [14.7,82.0,75;13.9,83.7,75;14.1,85.5,40;14.6,87.5,30;15.1,88.1,25];
btk_atl_2020_40 = [14.7,82.0,115;13.7,83.3,120;13.9,85.4,40;15.3,87.8,30;17.1,87.1,30]; # TCR
nhcvect = [nhcvect;nhc_atl_2020_40]; 
myvect = [myvect;my_atl_2020_40];
btkvect = [btkvect;btk_atl_2020_40];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 41 ... ETA around 2020-11-02-03Z
# my at https://twitter.com/elioeFIN/status/1323100512766566406
# NHC at https://www.nhc.noaa.gov/archive/2020/al29/al292020.discus.006.shtml?

nhc_atl_2020_41 = [14.5,82.6,90;14.0,84.2,60;14.2,86.5,30;14.9,88.4,25;15.7,88.5,25];
my_atl_2020_41 = [14.6,82.6,85;14.0,84.2,65;14.2,86.4,30;15.2,88.0,25;16.6,88.6,30];
btk_atl_2020_41 = [14.3,82.5,130;13.8,83.7,95;14.0,86.0,30;16.2,87.8,30;17.5,86.4,30]; # TCR
nhcvect = [nhcvect;nhc_atl_2020_41]; 
myvect = [myvect;my_atl_2020_41];
btkvect = [btkvect;btk_atl_2020_41];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 42 ... ETA around 2020-11-02-21Z
# my at https://twitter.com/elioeFIN/status/1323372916755582988
# NHC at https://www.nhc.noaa.gov/archive/2020/al29/al292020.discus.009.shtml?

nhc_atl_2020_42 = [14.0,83.7,90;14.2,85.5,30;15.5,88.3,25;16.7,88.1,25;18.0,86.0,30];
my_atl_2020_42 = [14.0,83.6,95;14.2,85.4,35;15.5,88.4,25;16.4,88.3,30;17.4,86.0,35];
btk_atl_2020_42 = [13.7,83.3,120;13.9,85.4,40;15.3,87.8,30;17.1,87.1,30;19.8,81.5,55]; # TCR
nhcvect = [nhcvect;nhc_atl_2020_42]; 
myvect = [myvect;my_atl_2020_42];
btkvect = [btkvect;btk_atl_2020_42];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 43 ... ETA around 2020-11-03-03Z
# my at https://twitter.com/elioeFIN/status/1323464373055164419
# NHC at https://www.nhc.noaa.gov/archive/2020/al29/al292020.discus.010.shtml?

nhc_atl_2020_43 = [13.9,84.0,90;14.3,86.3,30;15.4,88.7,30;16.8,87.9,30;17.9,85.3,40];
my_atl_2020_43 = [13.9,84.0,90;14.4,86.2,30;15.5,88.5,30;17.0,87.2,35;18.7,84.5,45];
btk_atl_2020_43 = [13.8,83.7,95;14.0,86.0,30;16.2,87.8,30;17.5,86.4,30;20.4,80.2,55]; # TCR
nhcvect = [nhcvect;nhc_atl_2020_43]; 
myvect = [myvect;my_atl_2020_43];
btkvect = [btkvect;btk_atl_2020_43];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 44 ... ETA around 2020-11-03-21Z
# my at https://twitter.com/elioeFIN/status/1323733156399403009
# NHC at https://www.nhc.noaa.gov/archive/2020/al29/al292020.discus.013.shtml?

nhc_atl_2020_44 = [14.1,85.5,40;15.4,88.5,25;17.0,87.7,30;20.0,83.5,40;24.0,80.5,45];
my_atl_2020_44 = [14.0,85.2,40;15.5,88.4,25;17.0,87.7,30;20.4,83.3,40;25.2,81.4,40];
btk_atl_2020_44 = [13.9,85.4,40;15.3,87.8,30;17.1,87.1,30;19.8,81.5,55;23.5,79.2,55]; # TCR
nhcvect = [nhcvect;nhc_atl_2020_44]; 
myvect = [myvect;my_atl_2020_44];
btkvect = [btkvect;btk_atl_2020_44];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 45 ... ETA around 2020-11-04-21Z
# my at https://twitter.com/elioeFIN/status/1324095730710183937
# NHC at https://www.nhc.noaa.gov/archive/2020/al29/al292020.discus.017.shtml?

nhc_atl_2020_45 = [15.1,87.8,25;17.7,86.7,30;20.5,82.6,45;24.0,80.5,50;25.5,82.5,50];
my_atl_2020_45 = [15.3,87.7,25;17.7,86.5,35;20.6,82.7,45;24.7,80.3,50;25.6,82.9,40];
btk_atl_2020_45 = [15.3,87.8,30;17.1,87.1,30;19.8,81.5,55;23.5,79.2,55;24.2,84.1,45]; # TCR
nhcvect = [nhcvect;nhc_atl_2020_45]; 
myvect = [myvect;my_atl_2020_45];
btkvect = [btkvect;btk_atl_2020_45];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 46 ... ETA around 2020-11-05-21Z
# my at https://twitter.com/elioeFIN/status/1324459738915098626
# NHC at https://www.nhc.noaa.gov/archive/2020/al29/al292020.discus.021.shtml?

nhc_atl_2020_46 = [18.1,86.3,35;20.1,83.1,45;22.4,80.1,50;23.5,82.0,50;24.5,84.5,55];
my_atl_2020_46 = [18.1,86.1,35;20.0,83.0,45;22.3,80.5,45;23.2,82.3,50;24.0,85.2,65];
btk_atl_2020_46 = [17.1,87.1,30;19.8,81.5,55;23.5,79.2,55;24.2,84.1,45;22.9,85.1,50]; # TCR
nhcvect = [nhcvect;nhc_atl_2020_46]; 
myvect = [myvect;my_atl_2020_46];
btkvect = [btkvect;btk_atl_2020_46];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 47 ... ETA around 2020-11-08-21Z
# my at https://twitter.com/elioeFIN/status/1325547852395909123
# NHC at https://www.nhc.noaa.gov/archive/2020/al29/al292020.discus.034.shtml?

nhc_atl_2020_47 = [24.6,83.4,65;24.0,85.1,65;25.8,84.8,60;27.1,84.0,55;29.0,82.8,50];
my_atl_2020_47 = [24.5,83.6,65;24.0,85.1,65;25.7,84.8,65;26.5,84.5,60;27.0,84.3,55];
btk_atl_2020_47 = [24.2,84.1,45;22.9,85.1,50;26.8,83.7,60;30.9,81.3,35;35.1,72.5,40]; # TCR
nhcvect = [nhcvect;nhc_atl_2020_47]; 
myvect = [myvect;my_atl_2020_47];
btkvect = [btkvect;btk_atl_2020_47];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 48 ... ETA around 2020-11-09-21Z
# my at https://twitter.com/elioeFIN/status/1325908521561567233
# NHC at https://www.nhc.noaa.gov/archive/2020/al29/al292020.discus.038.shtml?

nhc_atl_2020_48 = [23.4,85.5,55;25.6,85.4,55;27.2,85.4,45;28.0,85.4,40;28.6,85.6,30];
my_atl_2020_48 = [23.3,85.6,55;25.6,85.4,60;27.0,85.6,50;27.5,85.5,45;28.6,85.1,60];
btk_atl_2020_48 = [22.9,85.1,50;26.8,83.7,60;30.9,81.3,35;35.1,72.5,40;45.4,54.9,45]; # TCR (but day 5 self-made)
nhcvect = [nhcvect;nhc_atl_2020_48]; 
myvect = [myvect;my_atl_2020_48];
btkvect = [btkvect;btk_atl_2020_48];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 49 ... ETA around 2020-11-10-21Z
# my at https://twitter.com/elioeFIN/status/1326271244388405249
# NHC at https://www.nhc.noaa.gov/archive/2020/al29/al292020.discus.042.shtml?

nhc_atl_2020_49 = [25.6,84.8,60;27.9,84.3,55;29.1,84.0,40;29.7,84.6,35;30.7,84.9,30];
my_atl_2020_49 = [25.6,84.8,60;27.7,84.2,50;29.2,83.4,40;29.7,83.5,35;29.5,83.8,35];
btk_atl_2020_49 = [26.8,83.7,60;30.9,81.3,35;35.1,72.5,40;45.4,54.9,45;48.8,39.0,45]; # TCR (but days 4+5 self-made)
nhcvect = [nhcvect;nhc_atl_2020_49]; 
myvect = [myvect;my_atl_2020_49];
btkvect = [btkvect;btk_atl_2020_49];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 50 ... THETA around 2020-11-11-03Z
# my at https://twitter.com/elioeFIN/status/1326363971130101760
# NHC at https://www.nhc.noaa.gov/archive/2020/al30/al302020.discus.005.shtml?

nhc_atl_2020_50 = [30.1,32.5,55;31.0,27.7,55;32.2,23.2,55;32.8,21.4,50;34.5,20.1,40];
my_atl_2020_50 = [30.0,32.5,50;31.0,27.7,50;32.2,23.0,45;32.7,20.7,45;33.9,19.7,30];
btk_atl_2020_50 = [31.1,31.9,60;31.9,26.7,50;32.0,22.1,40;31.7,18.9,35;32.1,17.9,30]; # TCR
nhcvect = [nhcvect;nhc_atl_2020_50]; 
myvect = [myvect;my_atl_2020_50];
btkvect = [btkvect;btk_atl_2020_50];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 51 ... ETA around 2020-11-11-21Z
# my at https://twitter.com/elioeFIN/status/1326634777831739392
# NHC at https://www.nhc.noaa.gov/archive/2020/al29/al292020.discus.046.shtml?

nhc_atl_2020_51 = [30.4,81.5,35;33.8,75.2,25];
my_atl_2020_51 = [30.7,81.5,35;33.5,75.7,25];
btk_atl_2020_51 = [30.9,81.3,35;35.1,72.5,40]; # TCR
nhcvect = [nhcvect;nhc_atl_2020_51]; 
myvect = [myvect;my_atl_2020_51];
btkvect = [btkvect;btk_atl_2020_51];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Atl 52 ... THETA around 2020-11-12-21Z
# my at https://twitter.com/elioeFIN/status/1326995748672708608
# NHC at https://www.nhc.noaa.gov/archive/2020/al30/al302020.discus.012.shtml?

nhc_atl_2020_52 = [31.8,23.4,55;31.2,20.2,45;31.4,19.1,30;34.0,19.1,30];
my_atl_2020_52 = [31.7,23.4,50;31.2,20.2,40;31.4,18.9,30;33.9,18.2,30];
btk_atl_2020_52 = [32.0,23.1,50;31.7,19.5,35;31.6,18.0,30;35.1,17.7,25]; # TCR (but day 4 self-made)
nhcvect = [nhcvect;nhc_atl_2020_52]; 
myvect = [myvect;my_atl_2020_52];
btkvect = [btkvect;btk_atl_2020_52];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 53 ... IOTA around 2020-11-13-21Z
# my at https://twitter.com/elioeFIN/status/1327356527024410624
# NHC at https://www.nhc.noaa.gov/archive/2020/al31/al312020.discus.002.shtml?

nhc_atl_2020_53 = [13.7,76.2,55;14.2,79.3,85;15.0,82.8,105;15.2,85.5,50];
my_atl_2020_53 = [13.8,76.3,55;14.2,79.3,90;14.9,82.6,95;15.1,85.3,55];
btk_atl_2020_53 = [12.5,76.4,45;13.2,78.9,75;13.5,82.3,130;13.7,85.7,55]; # TCR
nhcvect = [nhcvect;nhc_atl_2020_53]; 
myvect = [myvect;my_atl_2020_53];
btkvect = [btkvect;btk_atl_2020_53];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 54 ... IOTA around 2020-11-14-15Z
# my at https://twitter.com/elioeFIN/status/1327631955257675776
# NHC at https://www.nhc.noaa.gov/archive/2020/al31/al312020.discus.005.shtml?

nhc_atl_2020_54 = [13.4,78.2,55;14.2,81.6,85;14.5,84.3,75;14.3,86.7,35];
my_atl_2020_54 = [13.5,78.1,60;14.3,81.6,90;14.4,84.4,80;14.5,86.8,40];
btk_atl_2020_54 = [13.1,78.0,70;13.5,81.5,135;13.7,84.7,75;13.7,89.0,25]; # TCR
nhcvect = [nhcvect;nhc_atl_2020_54]; 
myvect = [myvect;my_atl_2020_54];
btkvect = [btkvect;btk_atl_2020_54];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 55... IOTA around 2020-11-15-03Z
# my at https://twitter.com/elioeFIN/status/1327808856332898304
# NHC at https://www.nhc.noaa.gov/archive/2020/al31/al312020.discus.007.shtml?

nhc_atl_2020_55 = [13.3,79.5,90;14.0,82.7,110;14.0,85.2,45];
my_atl_2020_55 = [13.4,79.6,85;14.1,82.8,110;14.1,85.2,45];
btk_atl_2020_55 = [13.2,79.8,90;13.6,83.0,130;13.8,86.7,40]; # TCR
nhcvect = [nhcvect;nhc_atl_2020_55]; 
myvect = [myvect;my_atl_2020_55];
btkvect = [btkvect;btk_atl_2020_55];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Atl 56 ... IOTA around 2020-11-15-21Z
# my at https://twitter.com/elioeFIN/status/1328080903596355585
# NHC at https://www.nhc.noaa.gov/archive/2020/al31/al312020.discus.010.shtml?

nhc_atl_2020_56 = [14.0,82.1,120;14.4,84.9,60];
my_atl_2020_56 = [13.9,82.0,120;14.4,85.0,60];
btk_atl_2020_56 = [13.5,82.3,130;13.7,85.7,55]; # TCR
nhcvect = [nhcvect;nhc_atl_2020_56]; 
myvect = [myvect;my_atl_2020_56];
btkvect = [btkvect;btk_atl_2020_56];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Epac 07 ... TWENTY-ONE-E around 2020-11-18-03Z
# my at https://twitter.com/elioeFIN/status/1328897188731232258
# NHC at https://www.nhc.noaa.gov/archive/2020/ep21/ep212020.discus.002.shtml?

nhc_epac_2020_07 = [16.5,118.0,35;17.3,122.1,25];
my_epac_2020_07 = [16.3,117.8,35;17.1,122.1,25];
btk_epac_2020_07 = [16.8,117.8,40;16.8,121.7,30]; # TCR
nhcvect = [nhcvect;nhc_epac_2020_07]; 
myvect = [myvect;my_epac_2020_07];
btkvect = [btkvect;btk_epac_2020_07];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Shem 01 ... 03S around 2020-12-08-21Z
# my at https://twitter.com/elioeFIN/status/1336429676684865542

nhc_shem_2021_01 = [13.0,111.2,45;16.6,115.1,40;22.0,121.0,35];
my_shem_2021_01 = [13.0,111.2,45;16.6,115.0,45;21.9,120.7,35];
btk_shem_2021_01 = [13.3,110.9,35;18.0,115.8,45;24.3,123.0,25]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2021_01]; 
myvect = [myvect;my_shem_2021_01];
btkvect = [btkvect;btk_shem_2021_01];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Epac 01 ... ANDRES around 2021-05-09-15Z
# my at https://twitter.com/elioeFIN/status/1391410807653666819
# NHC at https://www.nhc.noaa.gov/archive/2021/ep01/ep012021.discus.002.shtml?

nhc_epac_2021_01 = [15.4,108.9,35;16.2,110.2,25;16.4,112.5,20];
my_epac_2021_01 = [15.5,109.3,35;16.3,110.5,25;16.3,113.2,20];
btk_epac_2021_01 = [15.3,109.3,35;15.9,111.1,20;15.7,114.0,20]; # TCR
nhcvect = [nhcvect;nhc_epac_2021_01];
myvect = [myvect;my_epac_2021_01];
btkvect = [btkvect;btk_epac_2021_01];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 02 ... ANDRES around 2021-05-09-21Z
# my at https://twitter.com/elioeFIN/status/1391502631672102913
# NHC at https://www.nhc.noaa.gov/archive/2021/ep01/ep012021.discus.003.shtml?

nhc_epac_2021_02 = [15.2,109.7,30;15.8,111.0,25];
my_epac_2021_02 = [15.2,109.9,30;16.2,111.2,25];
btk_epac_2021_02 = [15.8,109.6,35;15.9,111.7,20]; # TCR
nhcvect = [nhcvect;nhc_epac_2021_02];
myvect = [myvect;my_epac_2021_02];
btkvect = [btkvect;btk_epac_2021_02];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Nio 01 ... 01A around 2021-05-14-15Z
# my at https://twitter.com/elioeFIN/status/1393219971979882497

nhc_nio_2021_01 = [14.4,72.0,65;17.1,70.6,95;19.8,69.4,110;23.3,68.9,80];
my_nio_2021_01 = [14.3,72.1,60;16.9,70.5,90;19.6,69.1,105;22.5,67.6,80];
btk_nio_2021_01 = [13.9,73.2,65;16.8,72.5,100;20.0,71.4,100;23.2,71.9,55]; # JTWC best track
nhcvect = [nhcvect;nhc_nio_2021_01]; 
myvect = [myvect;my_nio_2021_01];
btkvect = [btkvect;btk_nio_2021_01];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Nio 02 ... TAUKTAE around 2021-05-15-15Z
# my at https://twitter.com/elioeFIN/status/1393585084003979264

nhc_nio_2021_02 = [16.8,71.6,85;19.7,70.1,105;22.6,70.0,85];
my_nio_2021_02 = [16.9,71.6,85;19.7,70.1,110;22.9,70.2,95];
btk_nio_2021_02 = [16.8,72.5,100;20.0,71.4,100;23.2,71.9,55]; # JTWC best track
nhcvect = [nhcvect;nhc_nio_2021_02]; 
myvect = [myvect;my_nio_2021_02];
btkvect = [btkvect;btk_nio_2021_02];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Nio 03 ... TAUKTAE around 2021-05-15-21Z
# my at https://twitter.com/elioeFIN/status/1393681656062545920

nhc_nio_2021_03 = [17.3,71.5,95;20.3,70.5,100;23.3,71.2,60];
my_nio_2021_03 = [17.3,71.5,100;20.4,70.6,105;23.8,71.7,60];
btk_nio_2021_03 = [17.8,72.0,115;20.9,71.3,110;24.2,73.2,45]; # JTWC best track
nhcvect = [nhcvect;nhc_nio_2021_03]; 
myvect = [myvect;my_nio_2021_03];
btkvect = [btkvect;btk_nio_2021_03];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Nio 04 ... TAUKTAE around 2021-05-16-03Z
# my at https://twitter.com/elioeFIN/status/1393768803876712461

nhc_nio_2021_04 = [17.9,71.4,105;20.9,70.9,65;24.0,72.2,40];
my_nio_2021_04 = [17.9,71.5,110;21.1,71.3,65;24.4,72.8,35];
btk_nio_2021_04 = [18.3,71.8,120;21.4,71.2,90;25.0,74.3,30]; # JTWC best track
nhcvect = [nhcvect;nhc_nio_2021_04]; 
myvect = [myvect;my_nio_2021_04];
btkvect = [btkvect;btk_nio_2021_04];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Nio 05 ... TAUKTAE around 2021-05-16-21Z
# my at https://twitter.com/elioeFIN/status/1394035068465713152

nhc_nio_2021_05 = [21.2,71.3,80;24.5,72.6,30];
my_nio_2021_05 = [21.2,71.2,100;24.4,72.6,35];
btk_nio_2021_05 = [20.9,71.3,110;24.2,73.2,45]; # JTWC best track
nhcvect = [nhcvect;nhc_nio_2021_05]; 
myvect = [myvect;my_nio_2021_05];
btkvect = [btkvect;btk_nio_2021_05];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Atl 01 ... 90L around 2021-05-20-21Z
# my at https://twitter.com/elioeFIN/status/1395491580677693451
# (no NHC forecast available)

# Atl 02 ... ANA around 2021-05-22-15Z
# my at https://twitter.com/elioeFIN/status/1396118578231906306
# NHC at https://www.nhc.noaa.gov/archive/2021/al01/al012021.discus.002.shtml?

nhc_atl_2021_02 = [35.8,61.2,35];
my_atl_2021_02 = [35.8,61.3,35];
btk_atl_2021_02 = [36.1,60.3,35]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_02];
myvect = [myvect;my_atl_2021_02];
btkvect = [btkvect;btk_atl_2021_02];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;1];

# Atl 03 ... ANA around 2021-05-22-21Z
# my at https://twitter.com/elioeFIN/status/1396207015085715458
# NHC at https://www.nhc.noaa.gov/archive/2021/al01/al012021.discus.003.shtml?

nhc_atl_2021_03 = [36.2,59.0,35];
my_atl_2021_03 = [36.0,59.2,35];
btk_atl_2021_03 = [36.8,58.7,35]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_03];
myvect = [myvect;my_atl_2021_03];
btkvect = [btkvect;btk_atl_2021_03];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;1];

# Nio 06 ... YAAS around 2021-05-24-21Z
# my at https://twitter.com/elioeFIN/status/1396932406750466050

nhc_nio_2021_06 = [19.5,87.6,70;21.6,86.1,40];
my_nio_2021_06 = [19.5,87.5,70;21.7,86.1,50];
btk_nio_2021_06 = [20.4,87.8,65;22.5,85.6,35]; # JTWC best track
nhcvect = [nhcvect;nhc_nio_2021_06]; 
myvect = [myvect;my_nio_2021_06];
btkvect = [btkvect;btk_nio_2021_06];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Nio 07 ... YAAS around 2021-05-25-03Z
# my at https://twitter.com/elioeFIN/status/1397021509575757825

nhc_nio_2021_07 = [20.7,87.0,70;22.4,85.2,35];
my_nio_2021_07 = [20.8,86.9,70;22.5,85.2,35];
btk_nio_2021_07 = [20.4,87.8,60;23.4,85.6,25]; # JTWC best track
nhcvect = [nhcvect;nhc_nio_2021_07]; 
myvect = [myvect;my_nio_2021_07];
btkvect = [btkvect;btk_nio_2021_07];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Wpac 01 ... 04W around 2021-05-30-03Z
# my at https://twitter.com/elioeFIN/status/1398836762571591683

nhc_wpac_2021_01 = [8.5,132.0,45;10.8,130.2,55;13.7,128.0,65;15.8,126.4,70;18.4,126.8,65];
my_wpac_2021_01 = [8.4,131.6,45;10.4,129.8,60;12.7,128.0,65;15.2,126.4,65;17.8,127.6,60];
btk_wpac_2021_01 = [8.1,130.4,45;10.1,127.3,35;12.7,122.3,30;16.4,119.1,35;20.4,118.7,35]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2021_01]; 
myvect = [myvect;my_wpac_2021_01];
btkvect = [btkvect;btk_wpac_2021_01];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Epac 03 ... 02E around 2021-05-31-03Z
# my at https://twitter.com/elioeFIN/status/1399197142607073285
# NHC at https://www.nhc.noaa.gov/archive/2021/ep02/ep022021.discus.002.shtml?

nhc_epac_2021_03 = [13.1,108.3,50;14.3,110.9,55;14.8,112.4,50;15.2,113.6,40;15.7,115.2,35];
my_epac_2021_03 = [13.5,108.4,50;15.1,111.4,55;15.6,112.8,55;17.2,115.1,45;17.4,115.4,35];
btk_epac_2021_03 = [13.6,109.0,45;14.8,111.2,45;15.5,113.0,30;15.7,114.5,25;16.2,117.5,25]; # TCR
nhcvect = [nhcvect;nhc_epac_2021_03];
myvect = [myvect;my_epac_2021_03];
btkvect = [btkvect;btk_epac_2021_03];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 04 ... BLANCA around 2021-05-31-21Z
# my at https://twitter.com/elioeFIN/status/1399469689877762053
# NHC at https://www.nhc.noaa.gov/archive/2021/ep02/ep022021.discus.005.shtml?

nhc_epac_2021_04 = [14.6,111.0,55;15.6,113.0,40;16.0,114.4,35;16.2,116.2,30];
my_epac_2021_04 = [14.9,110.9,55;16.0,112.7,45;16.8,114.2,35;16.6,116.0,30];
btk_epac_2021_04 = [14.6,110.8,45;15.4,112.6,30;15.5,114.0,30;16.3,116.8,25]; # TCR
nhcvect = [nhcvect;nhc_epac_2021_04];
myvect = [myvect;my_epac_2021_04];
btkvect = [btkvect;btk_epac_2021_04];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Epac 05 ... BLANCA around 2021-06-01-03Z
# my at https://twitter.com/elioeFIN/status/1399560202853158914
# NHC at https://www.nhc.noaa.gov/archive/2021/ep02/ep022021.discus.006.shtml?

nhc_epac_2021_05 = [15.1,111.6,50;15.9,113.2,40;16.1,114.6,35;16.1,116.5,30];
my_epac_2021_05 = [15.3,111.7,55;16.1,113.0,40;16.7,114.4,35;17.1,115.4,30];
btk_epac_2021_05 = [14.8,111.2,45;15.5,113.0,30;15.7,114.5,25;16.2,117.6,25]; # TCR
nhcvect = [nhcvect;nhc_epac_2021_05];
myvect = [myvect;my_epac_2021_05];
btkvect = [btkvect;btk_epac_2021_05];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Epac 06 ... BLANCA around 2021-06-02-21Z
# my at https://twitter.com/elioeFIN/status/1400193089835307011
# NHC at https://www.nhc.noaa.gov/archive/2021/ep02/ep022021.discus.013.shtml?

nhc_epac_2021_06 = [15.4,114.2,30;15.2,117.0,25];
my_epac_2021_06 = [15.6,114.1,25;15.5,116.6,20];
btk_epac_2021_06 = [15.5,114.0,30;16.3,116.8,25]; # TCR
nhcvect = [nhcvect;nhc_epac_2021_06];
myvect = [myvect;my_epac_2021_06];
btkvect = [btkvect;btk_epac_2021_06];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Epac 07 ... CARLOS around 2021-06-13-03Z
# my at https://twitter.com/elioeFIN/status/1403912881201106944
# NHC at https://www.nhc.noaa.gov/archive/2021/ep03/ep032021.discus.002.shtml?

nhc_epac_2021_07 = [11.4,126.5,45;10.6,127.4,45;10.3,128.0,40;11.5,128.1,35];
my_epac_2021_07 = [11.7,127.0,45;10.8,128.2,50;10.0,129.2,45;11.0,131.9,40];
btk_epac_2021_07 = [11.6,126.9,40;10.5,130.4,30;9.6,133.9,30;8.4,135.8,25]; # TCR
nhcvect = [nhcvect;nhc_epac_2021_07];
myvect = [myvect;my_epac_2021_07];
btkvect = [btkvect;btk_epac_2021_07];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Epac 08 ... CARLOS around 2021-06-13-15Z
# my at https://twitter.com/elioeFIN/status/1404093706957905926
# NHC at https://www.nhc.noaa.gov/archive/2021/ep03/ep032021.discus.004.shtml?

nhc_epac_2021_08 = [11.1,127.5,45;10.4,128.5,45;11.0,129.4,35];
my_epac_2021_08 = [11.3,127.9,50;10.4,129.4,45;9.6,132.2,40];
btk_epac_2021_08 = [11.2,128.6,35;10.0,132.2,30;8.8,134.9,25]; # TCR
nhcvect = [nhcvect;nhc_epac_2021_08];
myvect = [myvect;my_epac_2021_08];
btkvect = [btkvect;btk_epac_2021_08];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 09 ... CARLOS around 2021-06-13-21Z
# my at https://twitter.com/elioeFIN/status/1404180868206403585
# NHC at https://www.nhc.noaa.gov/archive/2021/ep03/ep032021.discus.005.shtml?

nhc_epac_2021_09 = [11.0,128.3,40;10.4,130.0,35;10.3,131.3,30];
my_epac_2021_09 = [11.1,128.4,45;10.5,129.7,35;11.5,131.4,30];
btk_epac_2021_09 = [10.9,129.5,30;9.9,133.1,30;8.5,135.3,25]; # TCR
nhcvect = [nhcvect;nhc_epac_2021_09];
myvect = [myvect;my_epac_2021_09];
btkvect = [btkvect;btk_epac_2021_09];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 10 ... CARLOS around 2021-06-14-03Z
# my at https://twitter.com/elioeFIN/status/1404271197186138114
# NHC at https://www.nhc.noaa.gov/archive/2021/ep03/ep032021.discus.006.shtml?

nhc_epac_2021_10 = [10.9,128.9,35;10.2,131.6,30;10.3,133.7,25];
my_epac_2021_10 = [11.0,128.7,35;10.6,130.7,30;11.2,132.8,30];
btk_epac_2021_10 = [10.5,130.4,30;9.6,133.9,30;8.4,135.8,25]; # TCR
nhcvect = [nhcvect;nhc_epac_2021_10];
myvect = [myvect;my_epac_2021_10];
btkvect = [btkvect;btk_epac_2021_10];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Atl 04 ... 03L around 2021-06-17-21Z
# my at https://twitter.com/elioeFIN/status/1405629129274413066
# NHC at https://www.nhc.noaa.gov/archive/2021/al03/al032021.discus.001.shtml?
# omitting since the designation switched between different low pressure systems

# nhc_atl_2021_04 = [26.5,92.5,35;31.5,89.5,30;35.0,84.0,20];
# my_atl_2021_04 = [24.3,93.7,35;26.7,94.8,25;34.5,91.5,25];
# btk_atl_2021_04 = [27.4,91.2,40;31.8,88.6,35;33.9,83.3,25];
# nhcvect = [nhcvect;nhc_atl_2021_04];
# myvect = [myvect;my_atl_2021_04];
# btkvect = [btkvect;btk_atl_2021_04];
# leadtimevect = [leadtimevect;1;2;3];
# basinvect = [basinvect;1;1;1];

# Atl 05 ... 03L around 2021-06-18-03Z
# my at https://twitter.com/elioeFIN/status/1405720203602845697
# NHC at https://www.nhc.noaa.gov/archive/2021/al03/al032021.discus.002.shtml?
# omitting since the designation switched between different low pressure systems

# nhc_atl_2021_05 = [27.2,92.4,35;32.0,88.8,30;35.6,83.0,20];
# my_atl_2021_05 = [24.2,94.2,35;26.2,95.2,25;29.6,92.9,20];
# btk_atl_2021_05 = [28.4,91.1,40;32.4,87.7,25;34.4,81.3,30];
# nhcvect = [nhcvect;nhc_atl_2021_05];
# myvect = [myvect;my_atl_2021_05];
# btkvect = [btkvect;btk_atl_2021_05];
# leadtimevect = [leadtimevect;1;2;3];
# basinvect = [basinvect;1;1;1];

# Epac 11 ... DOLORES around 2021-06-18-15Z
# my at https://twitter.com/elioeFIN/status/1405903721813483521
# NHC at https://www.nhc.noaa.gov/archive/2021/ep04/ep042021.discus.002.shtml?

nhc_epac_2021_11 = [16.8,104.3,55];
my_epac_2021_11 = [16.9,104.2,50];
btk_epac_2021_11 = [17.9,103.5,60]; # TCR
nhcvect = [nhcvect;nhc_epac_2021_11];
myvect = [myvect;my_epac_2021_11];
btkvect = [btkvect;btk_epac_2021_11];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;2];

# Epac 12 ... DOLORES around 2021-06-18-21Z
# my at https://twitter.com/elioeFIN/status/1405992167458418689
# NHC at https://www.nhc.noaa.gov/archive/2021/ep04/ep042021.discus.003.shtml?

nhc_epac_2021_12 = [18.5,104.0,55];
my_epac_2021_12 = [18.5,103.6,45];
btk_epac_2021_12 = [19.4,103.9,50]; # TCR
nhcvect = [nhcvect;nhc_epac_2021_12];
myvect = [myvect;my_epac_2021_12];
btkvect = [btkvect;btk_epac_2021_12];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;2];

# Atl 06 ... CLAUDETTE around 2021-06-20-21Z
# my at https://twitter.com/elioeFIN/status/1406716630059655174
# NHC at https://www.nhc.noaa.gov/archive/2021/al03/al032021.discus.013.shtml?

nhc_atl_2021_06 = [36.9,74.3,40;42.4,63.4,40];
my_atl_2021_06 = [36.8,74.5,40;42.2,63.3,35];
btk_atl_2021_06 = [37.0,73.5,40;42.6,62.4,40]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_06];
myvect = [myvect;my_atl_2021_06];
btkvect = [btkvect;btk_atl_2021_06];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Atl 07 ... CLAUDETTE around 2021-06-21-03Z
# my at https://twitter.com/elioeFIN/status/1406807222521315329
# NHC at https://www.nhc.noaa.gov/archive/2021/al03/al032021.discus.014.shtml?

nhc_atl_2021_07 = [38.1,71.7,40;44.5,61.0,40];
my_atl_2021_07 = [38.0,71.9,40;44.4,61.1,35];
btk_atl_2021_07 = [38.4,70.7,40;44.1,59.6,35]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_07];
myvect = [myvect;my_atl_2021_07];
btkvect = [btkvect;btk_atl_2021_07];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Wpac 02 ... CHAMPI around 2021-06-23-21Z
# my at https://twitter.com/elioeFIN/status/1407803636097421319

nhc_wpac_2021_02 = [21.2,139.4,50;24.9,139.5,65;30.3,141.8,60;37.6,147.4,45];
my_wpac_2021_02 = [21.1,139.4,50;24.8,139.4,65;29.6,141.5,55;38.9,147.2,45];
btk_wpac_2021_02 = [20.4,139.5,55;24.1,139.5,60;28.3,140.8,40;36.0,145.2,30]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2021_02];
myvect = [myvect;my_wpac_2021_02];
btkvect = [btkvect;btk_wpac_2021_02];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Wpac 03 ... CHAMPI around 2021-06-24-21Z
# my at https://twitter.com/elioeFIN/status/1408167158069305347

nhc_wpac_2021_03 = [23.2,138.9,70;27.3,139.9,75;34.9,144.4,50];
my_wpac_2021_03 = [23.2,138.9,70;27.4,140.0,70;35.0,145.0,50];
btk_wpac_2021_03 = [24.1,139.5,60;28.3,140.8,40;36.0,145.2,30]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2021_03];
myvect = [myvect;my_wpac_2021_03];
btkvect = [btkvect;btk_wpac_2021_03];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Epac 13 ... ENRIQUE around 2021-06-25-15Z
# my at https://twitter.com/elioeFIN/status/1408442765432791045
# NHC at https://www.nhc.noaa.gov/archive/2021/ep05/ep052021.discus.002.shtml?

nhc_epac_2021_13 = [16.4,104.6,65;17.6,106.1,85;19.2,107.5,65;20.1,108.6,50;20.9,109.8,40];
my_epac_2021_13 = [16.7,104.5,60;18.0,106.1,80;19.6,107.5,70;20.2,109.1,50;20.6,111.3,45];
btk_epac_2021_13 = [16.8,105.1,70;18.0,105.8,80;20.2,106.6,70;22.2,107.5,40;24.3,109.8,30]; # TCR
nhcvect = [nhcvect;nhc_epac_2021_13];
myvect = [myvect;my_epac_2021_13];
btkvect = [btkvect;btk_epac_2021_13];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 14 ... ENRIQUE around 2021-06-26-15Z
# my at https://twitter.com/elioeFIN/status/1408807883781951488
# NHC at https://www.nhc.noaa.gov/archive/2021/ep05/ep052021.discus.006.shtml?

nhc_epac_2021_14 = [18.3,106.0,95;20.1,107.1,75;21.3,108.4,50;22.1,109.5,35];
my_epac_2021_14 = [18.5,106.0,85;20.5,107.5,75;21.9,108.8,55;22.7,109.9,30];
btk_epac_2021_14 = [18.0,105.8,80;20.2,106.6,70;22.2,107.5,40;24.3,109.8,30]; # TCR
nhcvect = [nhcvect;nhc_epac_2021_14];
myvect = [myvect;my_epac_2021_14];
btkvect = [btkvect;btk_epac_2021_14];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Epac 15 ... ENRIQUE around 2021-06-26-21Z
# my at https://twitter.com/elioeFIN/status/1408895501626454021
# NHC at https://www.nhc.noaa.gov/archive/2021/ep05/ep052021.discus.007.shtml?

nhc_epac_2021_15 = [19.0,106.3,80;20.4,107.3,65;21.8,108.7,45;22.9,110.1,35];
my_epac_2021_15 = [18.9,106.6,75;20.5,107.1,65;21.9,108.7,45;22.1,109.8,35];
btk_epac_2021_15 = [18.7,105.7,80;20.5,107.0,60;22.9,108.0,35;24.4,110.1,25]; # TCR except day 4
nhcvect = [nhcvect;nhc_epac_2021_15];
myvect = [myvect;my_epac_2021_15];
btkvect = [btkvect;btk_epac_2021_15];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Epac 16 ... ENRIQUE around 2021-06-27-03Z
# my at https://twitter.com/elioeFIN/status/1408984226612002819
# NHC at https://www.nhc.noaa.gov/archive/2021/ep05/ep052021.discus.008.shtml?

nhc_epac_2021_16 = [19.1,106.3,75;20.8,107.7,65;21.9,109.0,45];
my_epac_2021_16 = [18.6,106.7,70;20.5,107.6,60;22.4,108.6,45];
btk_epac_2021_16 = [19.4,105.9,80;20.9,107.3,50;23.5,108.7,35]; # TCR
nhcvect = [nhcvect;nhc_epac_2021_16];
myvect = [myvect;my_epac_2021_16];
btkvect = [btkvect;btk_epac_2021_16];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 17 ... ENRIQUE around 2021-06-27-15Z
# my at https://twitter.com/elioeFIN/status/1409167324834406401
# NHC at https://www.nhc.noaa.gov/archive/2021/ep05/ep052021.discus.010.shtml?

nhc_epac_2021_17 = [19.9,106.9,80;21.1,108.0,60;22.6,109.4,40];
my_epac_2021_17 = [20.0,106.5,70;21.7,108.1,55;23.3,109.3,30];
btk_epac_2021_17 = [20.2,106.6,70;22.2,107.5,40;24.3,109.8,30]; # TCR
nhcvect = [nhcvect;nhc_epac_2021_17];
myvect = [myvect;my_epac_2021_17];
btkvect = [btkvect;btk_epac_2021_17];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 18 ... ENRIQUE around 2021-06-27-21Z
# my at https://twitter.com/elioeFIN/status/1409257908819406852
# NHC at https://www.nhc.noaa.gov/archive/2021/ep05/ep052021.discus.011.shtml?

nhc_epac_2021_18 = [20.5,106.8,75;21.8,107.9,55;23.6,109.5,35];
my_epac_2021_18 = [20.8,106.8,60;22.2,108.2,45;24.4,109.7,40];
btk_epac_2021_18 = [20.5,107.0,60;22.9,108.0,35;24.4,110.1,25]; # TCR except day 3
nhcvect = [nhcvect;nhc_epac_2021_18];
myvect = [myvect;my_epac_2021_18];
btkvect = [btkvect;btk_epac_2021_18];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 19 ... ENRIQUE around 2021-06-28-21Z
# my at https://twitter.com/elioeFIN/status/1409617524157779970
# NHC at https://www.nhc.noaa.gov/archive/2021/ep05/ep052021.discus.015.shtml?

nhc_epac_2021_19 = [22.1,108.5,40;23.7,110.3,30];
my_epac_2021_19 = [22.2,108.9,40;24.2,110.3,30];
btk_epac_2021_19 = [22.9,108.0,35;24.4,110.1,25]; # TCR except day 2
nhcvect = [nhcvect;nhc_epac_2021_19];
myvect = [myvect;my_epac_2021_19];
btkvect = [btkvect;btk_epac_2021_19];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Atl 08 ... 05L around 2021-07-01-03Z
# my at https://twitter.com/elioeFIN/status/1410437399621025793
# NHC at https://www.nhc.noaa.gov/archive/2021/al05/al052021.discus.002.shtml?

nhc_atl_2021_08 = [11.7,54.4,45;14.7,65.0,50;18.3,73.8,50;20.9,78.6,50;24.5,82.0,50];
my_atl_2021_08 = [11.6,54.3,45;14.7,64.8,55;18.4,74.3,55;22.4,78.3,55;26.6,79.3,55];
btk_atl_2021_08 = [11.5,55.0,50;14.7,65.1,70;17.6,74.4,55;20.1,78.6,55;22.9,82.0,50]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_08];
myvect = [myvect;my_atl_2021_08];
btkvect = [btkvect;btk_atl_2021_08];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 09 ... ELSA around 2021-07-01-15Z
# my at https://twitter.com/elioeFIN/status/1410617057519968262
# NHC at https://www.nhc.noaa.gov/archive/2021/al05/al052021.discus.004.shtml?

nhc_atl_2021_09 = [12.6,59.9,50;15.9,69.8,50;19.3,76.5,45;22.0,80.5,50;25.6,82.5,50];
my_atl_2021_09 = [12.5,59.8,50;16.1,69.7,65;20.3,76.4,55;23.7,78.7,55;28.3,78.0,60];
btk_atl_2021_09 = [13.0,59.8,65;16.6,70.3,60;18.5,76.5,50;21.3,80.7,55;24.6,82.7,55]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_09];
myvect = [myvect;my_atl_2021_09];
btkvect = [btkvect;btk_atl_2021_09];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 10 ... ELSA around 2021-07-01-21Z
# my at https://twitter.com/elioeFIN/status/1410705642457812996
# NHC at https://www.nhc.noaa.gov/archive/2021/al05/al052021.discus.005.shtml?

nhc_atl_2021_10 = [13.5,62.4,50;16.7,71.6,50;19.8,77.9,50;22.5,82.0,50;26.5,83.5,50];
my_atl_2021_10 = [13.2,62.1,50;16.3,71.4,65;19.2,78.0,55;22.5,81.6,50;26.4,83.9,55];
btk_atl_2021_10 = [13.8,62.4,75;17.2,72.5,60;19.3,77.6,50;22.1,81.5,55;25.5,82.9,60]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_10];
myvect = [myvect;my_atl_2021_10];
btkvect = [btkvect;btk_atl_2021_10];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 11 ... ELSA around 2021-07-02-03Z
# my at https://twitter.com/elioeFIN/status/1410796369732947968
# NHC at https://www.nhc.noaa.gov/archive/2021/al05/al052021.discus.006.shtml?

nhc_atl_2021_11 = [14.5,64.8,55;17.7,73.3,55;21.2,78.8,50;23.9,81.7,50;28.2,83.1,50];
my_atl_2021_11 = [14.4,64.6,60;18.0,73.6,70;21.5,78.3,55;23.5,81.9,55;28.5,81.7,45];
btk_atl_2021_11 = [14.7,65.1,70;17.6,74.4,55;20.1,78.6,55;22.9,82.0,50;26.6,83.2,65]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_11];
myvect = [myvect;my_atl_2021_11];
btkvect = [btkvect;btk_atl_2021_11];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 12 ... ELSA around 2021-07-02-15Z
# my at https://twitter.com/elioeFIN/status/1410981068421971970
# NHC at https://www.nhc.noaa.gov/archive/2021/al05/al052021.discus.009.shtml?

nhc_atl_2021_12 = [16.3,69.8,70;19.3,76.4,65;22.1,80.5,55;26.0,82.5,55;30.6,81.5,40];
my_atl_2021_12 = [16.2,69.8,75;19.6,76.6,70;22.8,80.8,55;26.0,82.4,55;31.9,80.0,45];
btk_atl_2021_12 = [16.6,70.3,60;18.5,76.5,50;21.3,80.7,55;24.6,82.7,55;29.1,83.6,55]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_12];
myvect = [myvect;my_atl_2021_12];
btkvect = [btkvect;btk_atl_2021_12];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 13 ... ELSA around 2021-07-03-21Z
# my at https://twitter.com/elioeFIN/status/1411431423161085952
# NHC at https://www.nhc.noaa.gov/archive/2021/al05/al052021.discus.014.shtml?

nhc_atl_2021_13 = [20.2,78.3,60;23.1,81.6,45;26.9,83.1,55;32.0,82.0,45;36.5,77.0,35];
my_atl_2021_13 = [20.1,78.4,60;22.9,81.8,45;26.7,83.4,55;31.3,82.4,45;36.9,77.1,35];
btk_atl_2021_13 = [19.3,77.6,50;22.1,81.5,55;25.5,82.9,60;30.3,83.4,45;35.5,79.0,45]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_13];
myvect = [myvect;my_atl_2021_13];
btkvect = [btkvect;btk_atl_2021_13];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 14 ... ELSA around 2021-07-04-03Z
# my at https://twitter.com/elioeFIN/status/1411521053696921601
# NHC at https://www.nhc.noaa.gov/archive/2021/al05/al052021.discus.015.shtml?

nhc_atl_2021_14 = [20.9,79.4,60;24.1,82.2,45;28.0,83.0,50;32.7,81.0,45;37.7,74.9,35];
my_atl_2021_14 = [20.8,79.4,60;24.1,82.0,45;28.1,82.4,50;32.1,80.7,40;36.8,74.8,30];
btk_atl_2021_14 = [20.1,78.6,55;22.9,82.0,50;26.6,83.2,65;31.5,82.7,45;36.8,77.4,45]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_14];
myvect = [myvect;my_atl_2021_14];
btkvect = [btkvect;btk_atl_2021_14];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 15 ... ELSA around 2021-07-04-21Z
# my at https://twitter.com/elioeFIN/status/1411791390829318146
# NHC at https://www.nhc.noaa.gov/archive/2021/al05/al052021.discus.018.shtml?

nhc_atl_2021_15 = [22.7,81.2,50;25.8,83.0,50;30.5,82.3,30;34.9,78.0,30;40.0,69.0,35];
my_atl_2021_15 = [22.8,81.3,50;25.6,83.4,40;30.0,83.0,35;33.5,80.2,35;38.5,71.1,35];
btk_atl_2021_15 = [22.1,81.5,55;25.5,82.9,60;30.3,83.4,45;35.5,79.0,45;42.0,71.0,45]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_15];
myvect = [myvect;my_atl_2021_15];
btkvect = [btkvect;btk_atl_2021_15];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 16 ... ELSA around 2021-07-05-03Z
# my at https://twitter.com/elioeFIN/status/1411885905456029700
# NHC at https://www.nhc.noaa.gov/archive/2021/al05/al052021.discus.019.shtml?

nhc_atl_2021_16 = [23.5,82.1,50;27.1,83.2,50;31.5,81.6,35;36.0,76.0,35;41.0,66.8,40];
my_atl_2021_16 = [23.4,82.2,50;27.2,83.4,45;31.2,81.8,35;35.2,77.5,30;39.4,69.0,30];
btk_atl_2021_16 = [22.9,82.0,50;26.6,83.2,65;31.5,82.7,45;36.8,77.4,45;44.0,68.3,40]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_16];
myvect = [myvect;my_atl_2021_16];
btkvect = [btkvect;btk_atl_2021_16];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 17 ... ELSA around 2021-07-05-21Z
# my at https://twitter.com/elioeFIN/status/1412156268895215618
# NHC at https://www.nhc.noaa.gov/archive/2021/al05/al052021.discus.022.shtml?

nhc_atl_2021_17 = [26.1,83.4,55;30.6,83.0,35;35.5,78.5,30;41.5,69.5,40;49.0,56.0,40];
my_atl_2021_17 = [26.0,83.5,55;31.0,82.7,40;35.9,77.5,30;41.4,68.8,40;49.7,54.7,35];
btk_atl_2021_17 = [25.5,82.9,60;30.3,83.4,45;35.5,79.0,45;42.0,71.0,45;50.8,55.1,35]; # TCR (but day 5 self-made)
nhcvect = [nhcvect;nhc_atl_2021_17];
myvect = [myvect;my_atl_2021_17];
btkvect = [btkvect;btk_atl_2021_17];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 18 ... ELSA around 2021-07-06-03Z
# my at https://twitter.com/elioeFIN/status/1412246195729227780
# NHC at https://www.nhc.noaa.gov/archive/2021/al05/al052021.discus.023.shtml?

nhc_atl_2021_18 = [26.9,83.3,55;31.6,82.0,30;36.9,76.1,30;43.3,66.0,40;50.5,52.4,40];
my_atl_2021_18 = [26.9,83.4,55;31.4,82.4,35;36.6,77.0,30;42.8,67.3,40;51.8,51.7,35];
btk_atl_2021_18 = [26.6,83.2,65;31.5,82.7,45;36.8,77.4,45;44.0,68.3,40;53.0,49.5,35]; # TCR (but day 5 self-made)
nhcvect = [nhcvect;nhc_atl_2021_18];
myvect = [myvect;my_atl_2021_18];
btkvect = [btkvect;btk_atl_2021_18];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 20 ... FELICIA around 2021-07-14-21Z
# my at https://twitter.com/elioeFIN/status/1415414373359697922
# NHC at https://www.nhc.noaa.gov/archive/2021/ep06/ep062021.discus.003.shtml?

nhc_epac_2021_20 = [15.5,118.8,80;15.2,121.9,85;14.9,125.1,75;14.9,128.9,70;14.8,133.2,60];
my_epac_2021_20 = [15.9,118.8,75;15.4,121.8,85;15.1,125.2,75;15.4,129.5,70;16.2,134.4,60];
btk_epac_2021_20 = [15.3,119.0,90;14.9,122.0,115;14.7,124.9,125;15.9,128.5,110;16.1,132.8,55]; # TCR
nhcvect = [nhcvect;nhc_epac_2021_20];
myvect = [myvect;my_epac_2021_20];
btkvect = [btkvect;btk_epac_2021_20];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 21 ... FELICIA around 2021-07-15-03Z
# my at https://twitter.com/elioeFIN/status/1415504912138575877
# NHC at https://www.nhc.noaa.gov/archive/2021/ep06/ep062021.discus.004.shtml?

nhc_epac_2021_21 = [15.5,120.0,80;15.0,123.0,85;14.7,126.5,75;14.8,130.2,70;15.0,134.5,65];
my_epac_2021_21 = [15.5,120.1,80;15.2,123.1,85;14.8,126.8,70;15.2,130.4,70;17.0,134.8,50];
btk_epac_2021_21 = [15.3,119.8,95;14.7,122.8,115;15.0,125.7,120;16.2,129.5,95;16.1,134.1,45]; # TCR
nhcvect = [nhcvect;nhc_epac_2021_21];
myvect = [myvect;my_epac_2021_21];
btkvect = [btkvect;btk_epac_2021_21];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 22 ... FELICIA around 2021-07-15-15Z
# my at https://twitter.com/elioeFIN/status/1415685734971756544
# NHC at https://www.nhc.noaa.gov/archive/2021/ep06/ep062021.discus.006.shtml?

nhc_epac_2021_22 = [15.1,121.5,95;14.6,124.7,85;14.4,128.2,80;14.5,132.1,70;14.5,136.0,65];
my_epac_2021_22 = [15.2,121.7,85;14.7,124.4,85;14.8,128.1,75;14.8,131.7,65;14.5,135.9,45];
btk_epac_2021_22 = [15.1,121.2,110;14.5,124.2,125;15.6,127.6,115;16.3,131.7,65;15.8,137.1,35]; # TCR
nhcvect = [nhcvect;nhc_epac_2021_22];
myvect = [myvect;my_epac_2021_22];
btkvect = [btkvect;btk_epac_2021_22];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 23 ... FELICIA around 2021-07-15-21Z
# my at https://twitter.com/elioeFIN/status/1415776424200445955
# NHC at https://www.nhc.noaa.gov/archive/2021/ep06/ep062021.discus.007.shtml?

nhc_epac_2021_23 = [14.9,122.0,90;14.5,125.3,85;14.5,128.9,75;14.5,132.8,65;14.5,136.5,60];
my_epac_2021_23 = [14.7,121.9,90;14.3,125.3,85;14.6,128.7,75;14.4,133.0,65;14.4,136.5,45];
btk_epac_2021_23 = [14.9,122.0,115;14.7,124.9,125;15.9,128.5,110;16.2,132.8,55;15.5,138.6,30]; # TCR
nhcvect = [nhcvect;nhc_epac_2021_23];
myvect = [myvect;my_epac_2021_23];
btkvect = [btkvect;btk_epac_2021_23];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 24 ... FELICIA around 2021-07-17-21Z
# my at https://twitter.com/elioeFIN/status/1416501206478897156
# NHC at https://www.nhc.noaa.gov/archive/2021/ep06/ep062021.discus.015.shtml?

nhc_epac_2021_24 = [15.8,128.5,110;16.1,132.6,85;15.6,137.4,60;14.7,142.6,40];
my_epac_2021_24 = [16.0,128.5,105;16.5,132.2,85;16.8,136.7,55;15.4,142.2,40];
btk_epac_2021_24 = [15.9,128.5,110;16.2,132.8,55;15.5,138.6,30;14.3,144.4,30]; # TCR
nhcvect = [nhcvect;nhc_epac_2021_24];
myvect = [myvect;my_epac_2021_24];
btkvect = [btkvect;btk_epac_2021_24];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Epac 25 ... GUILLERMO around 2021-07-18-03Z
# my at https://twitter.com/elioeFIN/status/1416591493368893450
# NHC at https://www.nhc.noaa.gov/archive/2021/ep07/ep072021.discus.003.shtml?

nhc_epac_2021_25 = [18.3,114.8,50;18.7,120.1,45;18.4,125.5,35];
my_epac_2021_25 = [18.7,114.7,45;18.9,120.0,45;18.5,125.5,35];
btk_epac_2021_25 = [18.6,114.6,45;19.2,121.0,30;18.5,127.2,30]; # TCR
nhcvect = [nhcvect;nhc_epac_2021_25];
myvect = [myvect;my_epac_2021_25];
btkvect = [btkvect;btk_epac_2021_25];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 26 ... FELICIA around 2021-07-18-21Z
# my at https://twitter.com/elioeFIN/status/1416865051953205250
# NHC at https://www.nhc.noaa.gov/archive/2021/ep06/ep062021.discus.019.shtml?

nhc_epac_2021_26 = [16.5,132.6,85;16.0,137.3,60;15.0,142.6,35];
my_epac_2021_26 = [16.7,132.5,80;16.5,137.2,60;15.4,142.4,35];
btk_epac_2021_26 = [16.2,132.8,55;15.5,138.6,30;14.3,144.4,30]; # TCR
nhcvect = [nhcvect;nhc_epac_2021_26];
myvect = [myvect;my_epac_2021_26];
btkvect = [btkvect;btk_epac_2021_26];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Wpac 04 ... IN-FA around 2021-07-22-03Z
# my at https://twitter.com/elioeFIN/status/1418043617382477833

nhc_wpac_2021_04 = [23.9,124.6,100;25.8,123.2,95;28.0,121.5,75;29.7,119.6,45;31.0,117.7,20];
my_wpac_2021_04 = [24.0,124.8,100;26.0,123.6,95;28.7,122.4,80;30.4,119.7,45;31.9,117.2,30];
btk_wpac_2021_04 = [24.2,125.4,75;26.4,124.7,70;29.7,122.9,55;30.7,121.2,40;31.3,119.3,25]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2021_04];
myvect = [myvect;my_wpac_2021_04];
btkvect = [btkvect;btk_wpac_2021_04];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 05 ... IN-FA around 2021-07-23-15Z
# my at https://twitter.com/elioeFIN/status/1418585451494092806

nhc_wpac_2021_05 = [27.3,123.9,75;29.0,121.9,60;29.2,120.2,40;28.9,118.8,20];
my_wpac_2021_05 = [27.3,124.0,75;29.0,122.4,60;29.6,120.5,35;28.9,119.9,20];
btk_wpac_2021_05 = [28.1,124.0,70;30.3,122.2,55;31.1,120.5,30;31.6,118.9,25]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2021_05];
myvect = [myvect;my_wpac_2021_05];
btkvect = [btkvect;btk_wpac_2021_05];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Wpac 06 ... IN-FA around 2021-07-24-03Z
# my at https://twitter.com/elioeFIN/status/1418766586119401473

nhc_wpac_2021_06 = [29.0,123.0,70;30.0,120.8,50;30.0,118.6,30;30.4,117.4,20];
my_wpac_2021_06 = [29.0,123.1,70;30.2,120.9,50;30.7,118.5,30;31.6,117.1,20];
btk_wpac_2021_06 = [29.7,122.9,55;30.7,121.2,40;31.3,119.3,25;32.7,117.8,25]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2021_06];
myvect = [myvect;my_wpac_2021_06];
btkvect = [btkvect;btk_wpac_2021_06];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Epac 27 ... HILDA around 2021-07-31-03Z
# my at https://twitter.com/elioeFIN/status/1421304171333046280
# NHC at https://www.nhc.noaa.gov/archive/2021/ep08/ep082021.discus.002.shtml?

nhc_epac_2021_27 = [14.1,118.4,60;15.3,122.0,75;16.5,124.8,70;18.0,127.0,60;19.5,131.0,50];
my_epac_2021_27 = [14.2,118.6,60;15.3,122.6,75;17.4,125.5,70;19.4,128.4,60;20.1,135.0,30];
btk_epac_2021_27 = [14.2,118.3,75;14.8,121.1,70;16.2,123.2,65;18.1,125.5,45;19.5,128.2,40]; # TCR
nhcvect = [nhcvect;nhc_epac_2021_27];
myvect = [myvect;my_epac_2021_27];
btkvect = [btkvect;btk_epac_2021_27];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 28 ... NINE-E around 2021-07-31-03Z
# my at https://twitter.com/elioeFIN/status/1421310732763865090
# NHC at https://www.nhc.noaa.gov/archive/2021/ep09/ep092021.discus.002.shtml?

nhc_epac_2021_28 = [12.3,127.3,30;12.7,130.0,35;13.4,133.0,40;13.8,135.9,45;14.5,138.9,50];
my_epac_2021_28 = [12.1,127.0,30;12.0,129.5,35;13.2,132.4,35;14.2,133.5,40;16.5,133.5,35];
btk_epac_2021_28 = [11.5,127.5,25;12.2,128.8,25;13.0,131.9,30;13.6,134.3,30;14.9,136.0,30]; # TCR
nhcvect = [nhcvect;nhc_epac_2021_28];
myvect = [myvect;my_epac_2021_28];
btkvect = [btkvect;btk_epac_2021_28];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 29 ... NINE-E around 2021-07-31-21Z
# my at https://twitter.com/elioeFIN/status/1421577015031967751
# NHC at https://www.nhc.noaa.gov/archive/2021/ep09/ep092021.discus.005.shtml?

nhc_epac_2021_29 = [11.6,130.4,30;12.2,133.5,35;13.0,135.8,40;14.0,138.1,45;15.4,140.8,45];
my_epac_2021_29 = [11.2,130.6,30;12.1,133.0,35;12.8,135.7,40;13.4,138.0,45;16.2,139.0,35];
btk_epac_2021_29 = [12.2,128.0,25;12.7,131.0,30;13.6,133.6,30;14.4,135.6,30;16.2,137.2,35]; # TCR
nhcvect = [nhcvect;nhc_epac_2021_29];
myvect = [myvect;my_epac_2021_29];
btkvect = [btkvect;btk_epac_2021_29];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 30 ... NINE-E around 2021-08-01-03Z
# my at https://twitter.com/elioeFIN/status/1421665671906304001
# NHC at https://www.nhc.noaa.gov/archive/2021/ep09/ep092021.discus.006.shtml?

nhc_epac_2021_30 = [12.0,130.0,30;12.5,133.0,30;13.5,135.6,30;14.5,138.0,35;15.5,141.0,40];
my_epac_2021_30 = [12.0,129.5,30;13.0,133.4,35;13.8,136.3,40;13.3,140.0,45;14.3,141.1,30];
btk_epac_2021_30 = [12.2,128.6,25;13.0,131.9,30;13.6,134.3,30;14.9,136.0,30;16.6,137.6,35]; # TCR
nhcvect = [nhcvect;nhc_epac_2021_30];
myvect = [myvect;my_epac_2021_30];
btkvect = [btkvect;btk_epac_2021_30];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 31 ... HILDA around 2021-08-01-03Z
# my at https://twitter.com/elioeFIN/status/1421670333313163268
# NHC at https://www.nhc.noaa.gov/archive/2021/ep08/ep082021.discus.006.shtml?

nhc_epac_2021_31 = [15.2,121.7,90;16.4,124.2,80;18.3,126.8,65;20.0,130.5,50;20.5,134.0,40];
my_epac_2021_31 = [15.3,121.4,80;16.4,123.6,80;18.5,126.7,65;20.8,127.7,50;22.2,131.7,30];
btk_epac_2021_31 = [14.8,121.1,70;16.2,123.2,65;18.1,125.5,45;19.5,128.2,40;22.0,131.7,30]; # TCR
nhcvect = [nhcvect;nhc_epac_2021_31];
myvect = [myvect;my_epac_2021_31];
btkvect = [btkvect;btk_epac_2021_31];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 32 ... HILDA around 2021-08-01-09Z
# my at https://twitter.com/elioeFIN/status/1421758197497479168
# NHC at https://www.nhc.noaa.gov/archive/2021/ep08/ep082021.discus.007.shtml?

nhc_epac_2021_32 = [15.3,122.1,80;16.7,124.3,75;18.7,126.9,55;20.1,130.9,45;20.7,135.3,35];
my_epac_2021_32 = [15.5,122.4,80;16.8,125.0,75;18.5,128.0,55;19.3,132.9,50;18.5,136.3,30];
btk_epac_2021_32 = [15.0,121.7,70;16.7,123.7,60;18.5,126.2,40;20.0,128.8,40;22.5,132.8,30]; # TCR
nhcvect = [nhcvect;nhc_epac_2021_32];
myvect = [myvect;my_epac_2021_32];
btkvect = [btkvect;btk_epac_2021_32];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 33 ... HILDA around 2021-08-02-03Z
# my at https://twitter.com/elioeFIN/status/1422030281444413441
# NHC at https://www.nhc.noaa.gov/archive/2021/ep08/ep082021.discus.010.shtml?

nhc_epac_2021_33 = [16.2,123.4,65;18.4,125.3,50;20.3,128.3,35;21.0,132.3,25;21.5,136.0,20];
my_epac_2021_33 = [16.5,123.4,65;18.8,125.0,50;20.6,128.7,35;22.1,131.6,25;22.7,136.2,25];
btk_epac_2021_33 = [16.2,123.2,65;18.1,125.5,45;19.5,128.2,40;22.0,131.7,30;22.6,134.7,25]; # TCR
nhcvect = [nhcvect;nhc_epac_2021_33];
myvect = [myvect;my_epac_2021_33];
btkvect = [btkvect;btk_epac_2021_33];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 34 ... NINE-E around 2021-08-05-03Z
# my at https://twitter.com/elioeFIN/status/1423115609458544641
# NHC at https://www.nhc.noaa.gov/archive/2021/ep09/ep092021.discus.009.shtml?

nhc_epac_2021_34 = [16.9,137.7,40;18.8,140.3,30;20.5,143.5,25];
my_epac_2021_34 = [16.9,137.9,35;19.0,140.6,30;20.7,143.7,25];
btk_epac_2021_34 = [16.6,137.6,35;17.9,140.5,25;19.3,142.9,20]; # TCR (except day 3)
nhcvect = [nhcvect;nhc_epac_2021_34];
myvect = [myvect;my_epac_2021_34];
btkvect = [btkvect;btk_epac_2021_34];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 35 ... KEVIN around 2021-08-08-03Z
# my at https://twitter.com/elioeFIN/status/1424200495321726976
# NHC at https://www.nhc.noaa.gov/archive/2021/ep11/ep112021.discus.003.shtml?

nhc_epac_2021_35 = [15.7,110.0,60;16.9,112.3,75;18.6,115.2,70;20.5,118.7,60;22.2,123.1,45];
my_epac_2021_35 = [16.0,109.9,55;17.3,112.5,75;18.6,115.4,75;20.3,120.1,60;21.2,124.3,50];
btk_epac_2021_35 = [15.9,110.0,50;17.3,112.7,40;19.2,115.4,40;21.6,117.8,35;23.7,122.3,25]; # TCR
nhcvect = [nhcvect;nhc_epac_2021_35];
myvect = [myvect;my_epac_2021_35];
btkvect = [btkvect;btk_epac_2021_35];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 36 ... KEVIN around 2021-08-08-09Z
# my at https://twitter.com/elioeFIN/status/1424292897671847944
# NHC at https://www.nhc.noaa.gov/archive/2021/ep11/ep112021.discus.004.shtml?

nhc_epac_2021_36 = [16.1,110.8,60;17.5,113.3,70;19.1,116.5,65;20.8,120.0,55;22.5,124.0,40];
my_epac_2021_36 = [16.0,111.0,55;17.2,113.0,70;19.0,117.1,65;20.3,120.7,55;21.6,124.5,45];
btk_epac_2021_36 = [16.1,110.6,45;17.9,113.5,40;19.8,115.8,40;22.2,118.8,30;24.1,123.4,25]; # TCR
nhcvect = [nhcvect;nhc_epac_2021_36];
myvect = [myvect;my_epac_2021_36];
btkvect = [btkvect;btk_epac_2021_36];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 37 ... KEVIN around 2021-08-08-21Z
# my at https://twitter.com/elioeFIN/status/1424472591130038277
# NHC at https://www.nhc.noaa.gov/archive/2021/ep11/ep112021.discus.006.shtml?

nhc_epac_2021_37 = [16.6,112.0,60;18.1,115.0,70;19.8,118.4,60;21.5,122.3,50;23.0,126.8,35];
my_epac_2021_37 = [16.7,111.8,60;18.4,114.9,70;19.9,118.7,65;21.4,122.4,50;22.7,126.2,30];
btk_epac_2021_37 = [16.9,111.7,40;18.7,114.9,45;21.1,117.1,35;23.2,121.1,25;25.5,125.7,25]; # TCR
nhcvect = [nhcvect;nhc_epac_2021_37];
myvect = [myvect;my_epac_2021_37];
btkvect = [btkvect;btk_epac_2021_37];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Atl 19 ... 06L around 2021-08-10-03Z
# my at https://twitter.com/elioeFIN/status/1424930858063081501
# NHC at https://www.nhc.noaa.gov/archive/2021/al06/al062021.discus.002.shtml?

nhc_atl_2021_19 = [17.5,66.0,45;19.9,71.5,35;21.7,76.1,35;23.4,79.9,40;26.1,82.4,45];
my_atl_2021_19 = [17.4,66.0,45;20.0,71.7,35;21.9,76.0,35;23.7,79.8,40;26.4,81.9,40];
btk_atl_2021_19 = [17.3,66.1,35;19.2,71.7,30;21.2,75.5,35;22.5,80.2,30;24.1,84.1,35]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_19];
myvect = [myvect;my_atl_2021_19];
btkvect = [btkvect;btk_atl_2021_19];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 20 ... 06L around 2021-08-10-21Z
# my at https://twitter.com/elioeFIN/status/1425202850485899278
# NHC at https://www.nhc.noaa.gov/archive/2021/al06/al062021.discus.005.shtml?

nhc_atl_2021_20 = [19.0,70.4,35;21.2,75.0,30;23.1,79.1,35;25.5,82.5,40;28.5,84.5,50];
my_atl_2021_20 = [19.2,70.3,35;21.6,74.9,35;23.3,79.1,40;25.8,81.9,45;29.4,84.1,50];
btk_atl_2021_20 = [18.5,70.4,35;20.9,74.7,30;22.3,79.0,30;23.3,83.5,30;26.4,85.2,40]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_20];
myvect = [myvect;my_atl_2021_20];
btkvect = [btkvect;btk_atl_2021_20];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 21 ... FRED around 2021-08-11-21Z
# my at https://twitter.com/elioeFIN/status/1425562732884107264
# NHC at https://www.nhc.noaa.gov/archive/2021/al06/al062021.discus.009.shtml?

nhc_atl_2021_21 = [20.9,75.0,30;22.9,79.2,35;25.3,82.0,40;28.5,84.0,50;31.0,85.0,45];
my_atl_2021_21 = [21.1,75.0,30;23.1,79.1,40;25.3,82.3,40;27.9,84.4,50;31.2,85.7,40];
btk_atl_2021_21 = [20.9,74.7,30;22.3,79.0,30;23.3,83.5,30;26.4,85.2,40;29.5,85.4,55]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_21];
myvect = [myvect;my_atl_2021_21];
btkvect = [btkvect;btk_atl_2021_21];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 22 ... FRED around 2021-08-12-03Z
# my at https://twitter.com/elioeFIN/status/1425655196697440263
# NHC at https://www.nhc.noaa.gov/archive/2021/al06/al062021.discus.010.shtml?

nhc_atl_2021_22 = [21.6,76.1,30;23.5,79.8,35;26.2,82.4,45;29.2,84.2,50;31.7,84.7,35];
my_atl_2021_22 = [21.5,76.1,30;23.5,79.9,35;25.7,83.0,45;28.1,85.0,50;31.0,85.3,40];
btk_atl_2021_22 = [21.2,75.5,35;22.5,80.2,30;24.1,84.1,35;27.0,85.8,50;30.6,85.4,45]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_22];
myvect = [myvect;my_atl_2021_22];
btkvect = [btkvect;btk_atl_2021_22];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 23 ... FRED around 2021-08-12-09Z
# my at https://twitter.com/elioeFIN/status/1425741899118354434
# NHC at https://www.nhc.noaa.gov/archive/2021/al06/al062021.discus.011.shtml?

nhc_atl_2021_23 = [22.0,77.2,30;23.8,80.3,35;26.6,82.6,45;29.5,84.4,50;32.2,84.7,35];
my_atl_2021_23 = [22.2,77.2,30;23.9,80.8,35;26.5,84.6,45;29.0,84.2,50;30.8,84.9,30];
btk_atl_2021_23 = [21.6,76.6,35;22.7,81.3,30;25.0,84.4,35;27.8,85.9,50;31.7,85.4,35]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_23];
myvect = [myvect;my_atl_2021_23];
btkvect = [btkvect;btk_atl_2021_23];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 24 ... FRED around 2021-08-12-21Z
# my at https://twitter.com/elioeFIN/status/1425926808546037763
# NHC at https://www.nhc.noaa.gov/archive/2021/al06/al062021.discus.013.shtml?

nhc_atl_2021_24 = [23.0,79.0,30;25.2,81.9,35;28.1,84.1,45;31.0,85.5,40;33.5,85.5,25];
my_atl_2021_24 = [22.8,79.1,30;24.4,82.5,35;26.9,84.8,45;29.3,86.5,40;32.8,85.9,25];
btk_atl_2021_24 = [22.3,79.0,30;23.3,83.5,30;26.4,85.2,40;29.5,85.4,55;34.0,84.7,25]; # TCR 
nhcvect = [nhcvect;nhc_atl_2021_24];
myvect = [myvect;my_atl_2021_24];
btkvect = [btkvect;btk_atl_2021_24];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 25 ... GRACE around 2021-08-15-03Z
# my at https://twitter.com/elioeFIN/status/1426745229831512065
# NHC at https://www.nhc.noaa.gov/archive/2021/al07/al072021.discus.007.shtml?

nhc_atl_2021_25 = [18.1,67.0,45;19.3,70.9,35;21.2,75.8,35;23.7,81.0,40;25.6,84.6,45];
my_atl_2021_25 = [18.1,67.0,45;19.4,71.0,40;21.0,75.8,40;23.5,81.1,40;25.6,84.1,55];
btk_atl_2021_25 = [17.1,68.1,30;17.9,73.2,35;18.3,78.6,55;19.7,84.8,70;20.8,91.1,55];
nhcvect = [nhcvect;nhc_atl_2021_25];
myvect = [myvect;my_atl_2021_25];
btkvect = [btkvect;btk_atl_2021_25];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 26 ... GRACE around 2021-08-15-09Z
# my at https://twitter.com/elioeFIN/status/1426834638006280193
# NHC at https://www.nhc.noaa.gov/archive/2021/al07/al072021.discus.008.shtml?

nhc_atl_2021_26 = [18.3,68.9,45;19.8,72.6,35;22.0,78.0,35;23.9,82.5,40;25.6,86.2,45];
my_atl_2021_26 = [18.1,67.9,45;19.7,71.7,40;21.7,77.1,35;23.5,81.7,45;25.0,85.5,45];
btk_atl_2021_26 = [17.2,69.6,30;18.0,74.8,40;18.7,80.1,55;19.9,86.4,70;20.7,92.6,60]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_26];
myvect = [myvect;my_atl_2021_26];
btkvect = [btkvect;btk_atl_2021_26];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 27 ... FRED around 2021-08-15-09Z
# my at https://twitter.com/elioeFIN/status/1426838147640483841
# NHC at https://www.nhc.noaa.gov/archive/2021/al06/al062021.discus.023.shtml?

nhc_atl_2021_27 = [27.0,86.6,40;30.3,87.1,45;35.0,85.8,20];
my_atl_2021_27 = [27.4,86.6,40;31.1,86.4,40;35.4,85.7,20];
btk_atl_2021_27 = [27.8,85.9,50;31.7,85.4,35;37.7,82.3,20]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_27];
myvect = [myvect;my_atl_2021_27];
btkvect = [btkvect;btk_atl_2021_27];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Atl 28 ... GRACE around 2021-08-15-21Z
# my at https://twitter.com/elioeFIN/status/1427014594267131916
# NHC at https://www.nhc.noaa.gov/archive/2021/al07/al072021.discus.010.shtml?

nhc_atl_2021_28 = [18.2,71.0,30;20.2,75.8,30;22.1,81.8,30;24.0,87.0,35;25.0,91.0,45];
my_atl_2021_28 = [18.1,71.0,30;19.2,76.2,35;20.9,82.9,30;22.8,88.3,45;24.8,92.9,50];
btk_atl_2021_28 = [17.8,71.7,35;18.3,77.4,50;19.6,83.0,70;20.5,89.5,45;20.6,94.7,85]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_28];
myvect = [myvect;my_atl_2021_28];
btkvect = [btkvect;btk_atl_2021_28];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 29 ... GRACE around 2021-08-16-21Z
# my at https://twitter.com/elioeFIN/status/1427377454524555267
# NHC at https://www.nhc.noaa.gov/archive/2021/al07/al072021.discus.014.shtml?

nhc_atl_2021_29 = [18.9,77.2,35;20.2,83.5,50;21.6,89.9,60;22.4,95.1,65;22.4,98.8,65];
my_atl_2021_29 = [18.9,77.1,35;20.2,83.3,50;21.6,89.6,60;22.8,94.1,70;23.0,97.7,60];
btk_atl_2021_29 = [18.3,77.4,50;19.6,83.0,70;20.5,89.5,45;20.6,94.6,80;19.7,99.5,40]; # TCR except day 5
nhcvect = [nhcvect;nhc_atl_2021_29];
myvect = [myvect;my_atl_2021_29];
btkvect = [btkvect;btk_atl_2021_29];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 30 ... GRACE around 2021-08-17-03Z
# my at https://twitter.com/elioeFIN/status/1427466050321502208
# NHC at https://www.nhc.noaa.gov/archive/2021/al07/al072021.discus.015.shtml?

nhc_atl_2021_30 = [19.1,78.8,40;20.3,85.1,50;21.6,91.3,55;22.2,95.9,65;22.5,100.0,40];
my_atl_2021_30 = [19.1,79.0,40;20.2,85.3,55;21.2,91.4,55;22.3,96.1,65;22.3,99.5,40];
btk_atl_2021_30 = [18.3,78.6,50;19.7,84.8,70;20.8,91.1,55;20.7,95.8,105;18.8,103.0,25]; # TCR except day 5
nhcvect = [nhcvect;nhc_atl_2021_30];
myvect = [myvect;my_atl_2021_30];
btkvect = [btkvect;btk_atl_2021_30];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 31 ... HENRI around 2021-08-17-03Z
# my at https://twitter.com/elioeFIN/status/1427469574472192003
# NHC at https://www.nhc.noaa.gov/archive/2021/al08/al082021.discus.005.shtml?

nhc_atl_2021_31 = [30.4,64.8,50;30.3,67.8,50;31.3,70.1,45;32.8,69.7,45;35.0,66.5,45];
my_atl_2021_31 = [30.4,64.9,50;30.3,68.0,60;30.7,70.6,50;32.2,70.7,50;34.2,67.7,45];
btk_atl_2021_31 = [30.2,64.5,55;29.7,68.0,60;29.7,72.0,55;31.6,73.7,60;37.6,70.9,65]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_31];
myvect = [myvect;my_atl_2021_31];
btkvect = [btkvect;btk_atl_2021_31];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 32 ... GRACE around 2021-08-17-21Z
# my at https://twitter.com/elioeFIN/status/1427744214465531908
# NHC at https://www.nhc.noaa.gov/archive/2021/al07/al072021.discus.018.shtml?

nhc_atl_2021_32 = [19.4,83.4,70;20.5,89.7,60;21.2,94.8,75;21.0,99.5,40;21.0,103.0,20];
my_atl_2021_32 = [19.5,83.2,70;20.4,89.4,60;20.7,94.5,70;20.4,99.4,45;21.8,104.6,25];
btk_atl_2021_32 = [19.6,83.0,70;20.5,89.5,45;20.6,94.7,85;19.7,99.5,40;19.3,107.6,30]; # TCR except days 4&5
nhcvect = [nhcvect;nhc_atl_2021_32];
myvect = [myvect;my_atl_2021_32];
btkvect = [btkvect;btk_atl_2021_32];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 33 ... GRACE around 2021-08-18-21Z
# my at https://twitter.com/elioeFIN/status/1428102438200954885
# NHC at https://www.nhc.noaa.gov/archive/2021/al07/al072021.discus.022.shtml?

nhc_atl_2021_33 = [20.7,89.3,55;20.8,94.6,70;20.0,99.9,30;19.5,104.0,20];
my_atl_2021_33 = [20.8,89.4,55;20.8,94.6,70;20.1,99.8,30;21.5,103.7,25];
btk_atl_2021_33 = [20.5,89.5,45;20.6,94.7,85;19.7,99.5,40;19.3,107.6,30]; # TCR except days 3&4
nhcvect = [nhcvect;nhc_atl_2021_33];
myvect = [myvect;my_atl_2021_33];
btkvect = [btkvect;btk_atl_2021_33];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 34 ... GRACE around 2021-08-19-03Z
# my at https://twitter.com/elioeFIN/status/1428192695932145675
# NHC at https://www.nhc.noaa.gov/archive/2021/al07/al072021.discus.023.shtml?

nhc_atl_2021_34 = [20.6,91.4,60;20.5,96.1,75;19.7,101.6,20];
my_atl_2021_34 = [20.7,91.3,60;20.5,96.5,70;19.7,102.1,20];
btk_atl_2021_34 = [20.8,91.1,55;20.7,95.8,105;18.8,103.0,25]; # TCR except day 3
nhcvect = [nhcvect;nhc_atl_2021_34];
myvect = [myvect;my_atl_2021_34];
btkvect = [btkvect;btk_atl_2021_34];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Atl 35 ... HENRI around 2021-08-19-03Z
# my at https://twitter.com/elioeFIN/status/1428196557715824642
# NHC at https://www.nhc.noaa.gov/archive/2021/al08/al082021.discus.013.shtml?

nhc_atl_2021_35 = [30.0,71.8,60;32.3,72.8,70;36.9,70.7,80;40.4,69.4,70;41.8,68.3,60];
my_atl_2021_35 = [30.1,71.7,65;32.4,72.8,70;37.4,70.5,80;41.0,68.9,65;42.4,67.0,45];
btk_atl_2021_35 = [29.7,72.0,55;31.6,73.7,60;37.6,70.9,65;41.8,73.0,30;41.4,72.7,20]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_35];
myvect = [myvect;my_atl_2021_35];
btkvect = [btkvect;btk_atl_2021_35];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 36 ... GRACE around 2021-08-19-21Z
# my at https://twitter.com/elioeFIN/status/1428464358066098181
# NHC at https://www.nhc.noaa.gov/archive/2021/al07/al072021.discus.026.shtml?

nhc_atl_2021_36 = [20.7,94.9,70;19.6,99.4,35];
my_atl_2021_36 = [20.9,94.7,70;20.1,99.7,35];
btk_atl_2021_36 = [20.6,94.7,85;19.7,99.5,40]; # TCR except day 2
nhcvect = [nhcvect;nhc_atl_2021_36];
myvect = [myvect;my_atl_2021_36];
btkvect = [btkvect;btk_atl_2021_36];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Atl 37 ... HENRI around 2021-08-20-15Z
# my at https://twitter.com/elioeFIN/status/1428733887342125058
# NHC at https://www.nhc.noaa.gov/archive/2021/al08/al082021.discus.019.shtml?

nhc_atl_2021_37 = [34.1,72.7,70;39.8,71.7,65;42.4,71.8,40;43.7,69.4,35];
my_atl_2021_37 = [34.1,72.9,70;40.1,71.9,65;42.9,72.2,40;44.9,68.4,30];
btk_atl_2021_37 = [33.6,72.7,65;40.7,71.3,55;41.6,74.2,25;42.2,69.6,20]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_37];
myvect = [myvect;my_atl_2021_37];
btkvect = [btkvect;btk_atl_2021_37];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 38 ... HENRI around 2021-08-22-03Z
# my at https://twitter.com/elioeFIN/status/1429280173422223366
# NHC at https://www.nhc.noaa.gov/archive/2021/al08/al082021.discus.025.shtml?

nhc_atl_2021_38 = [41.9,71.8,55;43.9,70.5,25];
my_atl_2021_38 = [42.0,71.8,50;44.2,71.5,25];
btk_atl_2021_38 = [41.8,73.0,30;41.4,72.7,20]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_38];
myvect = [myvect;my_atl_2021_38];
btkvect = [btkvect;btk_atl_2021_38];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Epac 38 ... MARTY around 2021-08-23-21Z
# my at https://twitter.com/elioeFIN/status/1429911770064461832
# NHC at https://www.nhc.noaa.gov/archive/2021/ep13/ep132021.discus.003.shtml?

nhc_epac_2021_38 = [21.0,118.6,35;20.9,122.6,30;20.8,127.0,20];
my_epac_2021_38 = [21.2,118.6,35;21.0,122.5,30;20.9,126.7,20];
btk_epac_2021_38 = [20.5,118.6,30;20.6,122.4,25;20.5,126.7,25]; # TCR
nhcvect = [nhcvect;nhc_epac_2021_38];
myvect = [myvect;my_epac_2021_38];
btkvect = [btkvect;btk_epac_2021_38];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 39 ... MARTY around 2021-08-24-03Z
# my at https://twitter.com/elioeFIN/status/1430001629680578563
# NHC at https://www.nhc.noaa.gov/archive/2021/ep13/ep132021.discus.004.shtml?

nhc_epac_2021_39 = [20.7,119.9,35;20.7,123.9,25;20.1,128.5,20];
my_epac_2021_39 = [20.4,120.2,35;21.0,124.0,25;20.2,128.4,20];
btk_epac_2021_39 = [20.5,119.6,30;20.7,123.4,25;20.2,127.8,25]; # TCR
nhcvect = [nhcvect;nhc_epac_2021_39];
myvect = [myvect;my_epac_2021_39];
btkvect = [btkvect;btk_epac_2021_39];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 40 ... 14E around 2021-08-26-03Z
# my at https://twitter.com/elioeFIN/status/1430727210030219266
# NHC at https://www.nhc.noaa.gov/archive/2021/ep14/ep142021.discus.002.shtml?

nhc_epac_2021_40 = [13.1,102.7,40;15.6,104.8,55;18.8,106.5,65;21.3,108.7,70];
my_epac_2021_40 = [13.3,101.9,40;15.4,104.5,50;19.2,105.6,50;21.5,109.3,60];
btk_epac_2021_40 = [13.6,101.9,40;16.0,105.0,55;20.6,105.4,65;23.6,106.7,35]; # TCR
nhcvect = [nhcvect;nhc_epac_2021_40];
myvect = [myvect;my_epac_2021_40];
btkvect = [btkvect;btk_epac_2021_40];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Epac 41 ... 14E around 2021-08-26-09Z
# my at https://twitter.com/elioeFIN/status/1430817815162937344
# NHC at https://www.nhc.noaa.gov/archive/2021/ep14/ep142021.discus.003.shtml?

nhc_epac_2021_41 = [13.9,102.8,40;16.5,105.1,55;19.5,106.3,65;21.5,108.5,70];
my_epac_2021_41 = [14.0,102.0,40;16.7,104.4,45;19.4,105.6,45;20.4,108.6,60];
btk_epac_2021_41 = [14.3,102.9,45;16.8,105.1,60;21.9,105.7,60;24.0,107.1,30]; # TCR
nhcvect = [nhcvect;nhc_epac_2021_41];
myvect = [myvect;my_epac_2021_41];
btkvect = [btkvect;btk_epac_2021_41];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Atl 39 ... 09L around 2021-08-26-21Z
# my at https://twitter.com/elioeFIN/status/1431000099820347394
# NHC at https://www.nhc.noaa.gov/archive/2021/al09/al092021.discus.002.shtml?

nhc_atl_2021_39 = [21.7,82.8,55;25.6,87.0,70;28.9,90.4,95;31.9,91.4,50;34.6,90.0,25];
my_atl_2021_39 = [21.5,82.7,55;25.7,86.9,65;28.3,90.3,95;31.6,91.3,50;33.2,91.3,30];
btk_atl_2021_39 = [21.5,82.6,70;25.6,86.6,80;29.2,90.4,125;32.2,90.5,35;35.1,87.1,20]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_39];
myvect = [myvect;my_atl_2021_39];
btkvect = [btkvect;btk_atl_2021_39];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 40 ... IDA around 2021-08-27-15Z
# my at https://twitter.com/elioeFIN/status/1431272785922379780
# NHC at https://www.nhc.noaa.gov/archive/2021/al09/al092021.discus.005.shtml?

nhc_atl_2021_40 = [24.0,85.8,75;27.6,89.7,105;30.3,91.3,60;33.3,90.2,30;35.2,87.1,20];
my_atl_2021_40 = [24.0,85.8,80;27.9,89.6,100;30.0,91.1,65;33.1,90.3,30;34.4,87.2,20];
btk_atl_2021_40 = [24.4,85.7,70;28.5,89.6,130;31.5,90.9,40;34.4,88.4,25;37.7,81.5,25]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_40];
myvect = [myvect;my_atl_2021_40];
btkvect = [btkvect;btk_atl_2021_40];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 42 ... NORA around 2021-08-27-21Z
# my at https://twitter.com/elioeFIN/status/1431364007705862147
# NHC at https://www.nhc.noaa.gov/archive/2021/ep14/ep142021.discus.009.shtml?

nhc_epac_2021_42 = [18.3,106.2,65;21.9,107.8,75];
my_epac_2021_42 = [18.2,106.0,60;22.1,107.9,60];
btk_epac_2021_42 = [19.1,105.3,75;23.2,106.3,40]; # TCR
nhcvect = [nhcvect;nhc_epac_2021_42];
myvect = [myvect;my_epac_2021_42];
btkvect = [btkvect;btk_epac_2021_42];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Atl 41 ... IDA around 2021-08-27-21Z
# my at https://twitter.com/elioeFIN/status/1431360447479955463
# NHC at https://www.nhc.noaa.gov/archive/2021/al09/al092021.discus.006.shtml?

nhc_atl_2021_41 = [25.3,86.9,105;28.6,90.6,120;31.5,91.1,40;34.4,89.3,30;36.0,86.0,20];
my_atl_2021_41 = [25.3,86.9,105;28.6,90.4,120;31.7,90.9,45;34.5,89.5,30;36.5,86.5,25];
btk_atl_2021_41 = [25.6,86.6,80;29.2,90.4,125;32.2,90.5,35;35.1,87.1,20;39.0,78.5,30]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_41];
myvect = [myvect;my_atl_2021_41];
btkvect = [btkvect;btk_atl_2021_41];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 43 ... NORA around 2021-08-28-21Z
# my at https://twitter.com/elioeFIN/status/1431725919673147392
# NHC at https://www.nhc.noaa.gov/archive/2021/ep14/ep142021.discus.013.shtml?

nhc_epac_2021_43 = [22.9,106.7,75];
my_epac_2021_43 = [23.1,106.7,70];
btk_epac_2021_43 = [23.2,106.3,40]; # TCR
nhcvect = [nhcvect;nhc_epac_2021_43];
myvect = [myvect;my_epac_2021_43];
btkvect = [btkvect;btk_epac_2021_43];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;2];

# Atl 42 ... IDA around 2021-08-28-21Z
# my at https://twitter.com/elioeFIN/status/1431728680737419269
# NHC at https://www.nhc.noaa.gov/archive/2021/al09/al092021.discus.010.shtml?

nhc_atl_2021_42 = [29.1,90.4,115;32.2,91.2,35;35.7,88.1,20;38.0,82.5,20];
my_atl_2021_42 = [29.2,90.3,115;32.2,90.9,40;35.7,88.5,20;37.7,84.2,20];
btk_atl_2021_42 = [29.2,90.4,125;32.2,90.5,35;35.1,87.1,20;39.0,78.5,30]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_42];
myvect = [myvect;my_atl_2021_42];
btkvect = [btkvect;btk_atl_2021_42];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 43 ... IDA around 2021-08-29-03Z
# my at https://twitter.com/elioeFIN/status/1431814826582552578
# NHC at https://www.nhc.noaa.gov/archive/2021/al09/al092021.discus.011.shtml?

nhc_atl_2021_43 = [29.9,90.7,85;33.1,90.6,30;36.3,86.7,20;38.6,80.6,20];
my_atl_2021_43 = [30.0,90.8,85;33.2,90.5,30;36.1,86.9,20;38.3,80.8,20];
btk_atl_2021_43 = [29.9,90.6,105;33.0,90.0,30;35.8,85.5,20;39.8,75.6,35]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_43];
myvect = [myvect;my_atl_2021_43];
btkvect = [btkvect;btk_atl_2021_43];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 44 ... 10L around 2021-08-29-03Z
# my at https://twitter.com/elioeFIN/status/1431815537571639301
# NHC at https://www.nhc.noaa.gov/archive/2021/al10/al102021.discus.004.shtml?

nhc_atl_2021_44 = [19.4,49.9,35;22.3,49.2,35;25.0,49.2,40];
my_atl_2021_44 = [19.4,50.2,35;22.2,49.8,35;25.2,49.5,35];
btk_atl_2021_44 = [19.8,50.5,30;22.6,50.9,35;24.6,51.2,30]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_44];
myvect = [myvect;my_atl_2021_44];
btkvect = [btkvect;btk_atl_2021_44];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Atl 45 ... 10L around 2021-08-29-21Z
# my at https://twitter.com/elioeFIN/status/1432082499337850883
# NHC at https://www.nhc.noaa.gov/archive/2021/al10/al102021.discus.007.shtml?

nhc_atl_2021_45 = [22.1,49.9,30;24.5,49.3,35;27.4,50.6,40];
my_atl_2021_45 = [21.9,50.3,30;24.0,50.1,40;26.5,51.7,40];
btk_atl_2021_45 = [22.1,50.9,35;23.9,50.9,30;28.0,52.7,25]; # TCR except day 3
nhcvect = [nhcvect;nhc_atl_2021_45];
myvect = [myvect;my_atl_2021_45];
btkvect = [btkvect;btk_atl_2021_45];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Atl 46 ... KATE around 2021-08-30-21Z
# my at https://twitter.com/elioeFIN/status/1432445504097591302
# NHC at https://www.nhc.noaa.gov/archive/2021/al10/al102021.discus.011.shtml?

nhc_atl_2021_46 = [24.7,50.7,30;27.0,52.1,35];
my_atl_2021_46 = [24.6,50.5,30;27.0,52.2,35];
btk_atl_2021_46 = [23.9,50.9,30;28.0,52.7,25]; # TCR except day 2
nhcvect = [nhcvect;nhc_atl_2021_46];
myvect = [myvect;my_atl_2021_46];
btkvect = [btkvect;btk_atl_2021_46];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Atl 47 ... KATE around 2021-08-31-03Z
# my at https://twitter.com/elioeFIN/status/1432535996978147334
# NHC at https://www.nhc.noaa.gov/archive/2021/al10/al102021.discus.012.shtml?

nhc_atl_2021_47 = [24.8,50.9,30];
my_atl_2021_47 = [24.7,51.0,30];
btk_atl_2021_47 = [24.6,51.2,25]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_47];
myvect = [myvect;my_atl_2021_47];
btkvect = [btkvect;btk_atl_2021_47];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;1];

# Atl 48 ... KATE around 2021-08-31-21Z
# my at https://twitter.com/elioeFIN/status/1432808114185818115
# NHC at https://www.nhc.noaa.gov/archive/2021/al10/al102021.discus.015.shtml?

nhc_atl_2021_48 = [26.9,52.6,30];
my_atl_2021_48 = [27.0,52.4,30];
btk_atl_2021_48 = [28.0,52.7,25]; # tcr has no value
nhcvect = [nhcvect;nhc_atl_2021_48];
myvect = [myvect;my_atl_2021_48];
btkvect = [btkvect;btk_atl_2021_48];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;1];

# Atl 49 ... KATE around 2021-09-01-15Z
# my at https://twitter.com/elioeFIN/status/1433085790326857735
# NHC at https://www.nhc.noaa.gov/archive/2021/al10/al102021.discus.018.shtml?
# (nothing verifiable, not even after TCR release)

# Atl 50 ... LARRY around 2021-09-01-15Z
# my at https://twitter.com/elioeFIN/status/1433086421896728581
# NHC at https://www.nhc.noaa.gov/archive/2021/al12/al122021.discus.004.shtml?

nhc_atl_2021_50 = [12.7,33.4,65;13.9,39.2,90;16.2,44.6,105;19.0,49.5,105;22.0,52.5,105];
my_atl_2021_50 = [12.8,33.0,70;14.3,38.9,80;16.5,44.0,100;19.2,48.2,100;21.6,52.3,100];
btk_atl_2021_50 = [13.3,33.3,70;14.4,40.0,80;16.4,45.3,110;19.2,49.4,110;21.6,52.7,105]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_50];
myvect = [myvect;my_atl_2021_50];
btkvect = [btkvect;btk_atl_2021_50];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 51 ... LARRY around 2021-09-02-03Z
# my at https://twitter.com/elioeFIN/status/1433264683859992576
# NHC at https://www.nhc.noaa.gov/archive/2021/al12/al122021.discus.006.shtml?

nhc_atl_2021_51 = [13.6,36.5,85;15.1,42.2,100;17.4,47.3,110;20.1,51.4,110;22.9,55.0,110];
my_atl_2021_51 = [13.7,36.5,85;15.3,42.4,95;17.7,47.4,105;20.0,51.8,105;23.1,55.0,110];
btk_atl_2021_51 = [13.9,36.7,75;15.2,42.7,100;17.7,47.5,105;20.7,51.2,110;22.7,54.2,105]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_51];
myvect = [myvect;my_atl_2021_51];
btkvect = [btkvect;btk_atl_2021_51];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 52 ... LARRY around 2021-09-02-15Z
# my at https://twitter.com/elioeFIN/status/1433446261009551367
# NHC at https://www.nhc.noaa.gov/archive/2021/al12/al122021.discus.008.shtml?

nhc_atl_2021_52 = [14.4,39.7,85;16.5,45.2,105;19.2,49.7,120;21.8,53.1,115;24.6,56.0,110];
my_atl_2021_52 = [14.4,39.7,85;16.5,44.9,100;19.3,49.3,115;21.8,52.3,110;24.5,54.7,105];
btk_atl_2021_52 = [14.4,40.0,80;16.4,45.3,110;19.2,49.4,110;21.6,52.7,105;24.0,55.4,95]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_52];
myvect = [myvect;my_atl_2021_52];
btkvect = [btkvect;btk_atl_2021_52];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 53 ... LARRY around 2021-09-02-21Z
# my at https://twitter.com/elioeFIN/status/1433537611105067009
# NHC at https://www.nhc.noaa.gov/archive/2021/al12/al122021.discus.009.shtml?

nhc_atl_2021_53 = [14.7,41.3,95;16.9,46.3,110;19.7,50.6,120;22.2,54.0,115;25.1,57.0,110];
my_atl_2021_53 = [14.8,41.3,95;17.0,46.3,105;19.7,50.9,115;22.4,54.1,110;25.1,56.9,110];
btk_atl_2021_53 = [14.7,41.4,90;17.0,46.5,105;20.0,50.3,110;22.1,53.5,105;24.7,56.0,95]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_53];
myvect = [myvect;my_atl_2021_53];
btkvect = [btkvect;btk_atl_2021_53];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 54 ... LARRY around 2021-09-03-03Z
# my at https://twitter.com/elioeFIN/status/1433623182129471494
# NHC at https://www.nhc.noaa.gov/archive/2021/al12/al122021.discus.010.shtml?

nhc_atl_2021_54 = [15.3,42.6,95;17.6,47.5,115;20.4,51.8,120;22.9,55.0,115;25.9,58.0,110];
my_atl_2021_54 = [15.4,42.6,95;17.7,47.5,100;20.4,51.7,110;22.8,55.0,110;25.8,57.8,120];
btk_atl_2021_54 = [15.2,42.7,100;17.7,47.5,105;20.7,51.2,110;22.7,54.2,105;25.4,56.5,95]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_54];
myvect = [myvect;my_atl_2021_54];
btkvect = [btkvect;btk_atl_2021_54];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 55 ... LARRY around 2021-09-05-15Z
# my at https://twitter.com/elioeFIN/status/1434532485723996164
# NHC at https://www.nhc.noaa.gov/archive/2021/al12/al122021.discus.020.shtml?

nhc_atl_2021_55 = [21.9,52.7,110;24.3,55.4,105;27.3,58.1,105;31.1,61.1,95;37.4,60.6,85];
my_atl_2021_55 = [21.9,52.6,115;24.2,55.5,100;27.2,58.1,100;30.7,60.7,95;37.1,60.3,80];
btk_atl_2021_55 = [21.6,52.7,105;24.0,55.4,95;27.2,57.9,90;31.3,61.5,80;38.9,61.1,70]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_55];
myvect = [myvect;my_atl_2021_55];
btkvect = [btkvect;btk_atl_2021_55];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 56 ... LARRY around 2021-09-05-21Z
# my at https://twitter.com/elioeFIN/status/1434624389673275402
# NHC at https://www.nhc.noaa.gov/archive/2021/al12/al122021.discus.021.shtml?

nhc_atl_2021_56 = [22.7,53.4,110;25.3,56.2,100;28.5,59.1,100;32.8,61.3,95;39.8,58.7,85];
my_atl_2021_56 = [22.7,53.5,110;25.3,56.4,100;28.4,59.3,95;32.5,61.7,90;39.8,59.2,85];
btk_atl_2021_56 = [22.1,53.5,105;24.7,56.0,95;28.2,58.9,90;32.8,62.1,80;41.9,59.5,70]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_56];
myvect = [myvect;my_atl_2021_56];
btkvect = [btkvect;btk_atl_2021_56];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 57 ... LARRY around 2021-09-06-09Z
# my at https://twitter.com/elioeFIN/status/1434807363769454599
# NHC at https://www.nhc.noaa.gov/archive/2021/al12/al122021.discus.023.shtml?

nhc_atl_2021_57 = [23.9,54.9,110;26.8,57.5,100;30.6,60.6,95;36.7,61.0,90;45.5,52.0,75];
my_atl_2021_57 = [23.8,54.9,110;26.8,57.6,95;30.7,60.8,90;36.7,61.0,85;45.3,50.8,70];
btk_atl_2021_57 = [23.3,54.8,100;26.2,57.1,95;30.1,60.8,80;36.5,62.2,75;48.8,53.3,65]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_57];
myvect = [myvect;my_atl_2021_57];
btkvect = [btkvect;btk_atl_2021_57];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 58 ... LARRY around 2021-09-06-15Z
# my at https://twitter.com/elioeFIN/status/1434897356403744772
# NHC at https://www.nhc.noaa.gov/archive/2021/al12/al122021.discus.024.shtml?

nhc_atl_2021_58 = [24.5,55.3,110;27.5,58.0,100;31.6,61.2,95;38.6,60.0,85;49.0,49.0,70];
my_atl_2021_58 = [24.4,55.2,110;27.5,58.1,95;31.7,61.0,95;38.4,59.9,85;48.8,48.6,65];
btk_atl_2021_58 = [24.0,55.4,95;27.2,57.9,90;31.3,61.5,80;38.9,61.0,70;52.5,49.7,60]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_58];
myvect = [myvect;my_atl_2021_58];
btkvect = [btkvect;btk_atl_2021_58];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 59 ... LARRY around 2021-09-06-21Z
# my at https://twitter.com/elioeFIN/status/1434985321138171907
# NHC at https://www.nhc.noaa.gov/archive/2021/al12/al122021.discus.025.shtml?

nhc_atl_2021_59 = [24.9,56.3,105;28.3,59.1,105;33.1,61.7,100;41.2,57.9,90;51.7,46.4,70];
my_atl_2021_59 = [24.9,56.1,105;28.3,59.3,95;33.1,61.7,95;40.7,57.9,85;52.0,44.7,60];
btk_atl_2021_59 = [24.7,56.0,95;28.2,58.9,95;32.8,62.1,80;41.9,59.5,70;55.3,46.8,55]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_59];
myvect = [myvect;my_atl_2021_59];
btkvect = [btkvect;btk_atl_2021_59];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 07 ... CONSON around 2021-09-07-03Z
# my at https://twitter.com/elioeFIN/status/1435070236638724104

nhc_wpac_2021_07 = [13.5,122.2,55;15.0,119.8,50;16.3,116.2,55;17.5,112.2,65;18.6,108.5,80];
my_wpac_2021_07 = [13.4,122.3,50;15.1,119.9,45;16.4,117.0,55;17.3,113.0,65;18.5,111.1,75];
btk_wpac_2021_07 = [13.7,121.4,60;15.3,118.3,40;15.7,112.8,45;15.8,109.9,50;15.3,109.2,35]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2021_07];
myvect = [myvect;my_wpac_2021_07];
btkvect = [btkvect;btk_wpac_2021_07];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Atl 60 ... LARRY around 2021-09-07-03Z
# my at https://twitter.com/elioeFIN/status/1435077688604172288
# NHC at https://www.nhc.noaa.gov/archive/2021/al12/al122021.discus.026.shtml?

nhc_atl_2021_60 = [25.6,56.8,100;29.2,59.9,95;34.6,61.8,90;44.0,55.7,80;55.5,43.4,65];
my_atl_2021_60 = [25.6,56.6,105;29.3,60.0,95;34.7,61.8,90;43.8,56.1,80;54.9,43.9,60];
btk_atl_2021_60 = [25.4,56.5,95;29.1,59.9,85;34.4,62.3,80;45.1,56.6,70;57.5,47.0,55]; # TCR (but day 5 self-made)
nhcvect = [nhcvect;nhc_atl_2021_60];
myvect = [myvect;my_atl_2021_60];
btkvect = [btkvect;btk_atl_2021_60];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 61 ... LARRY around 2021-09-07-21Z
# my at https://twitter.com/elioeFIN/status/1435350988970471426
# NHC at https://www.nhc.noaa.gov/archive/2021/al12/al122021.discus.029.shtml?

nhc_atl_2021_61 = [28.3,58.8,95;33.3,61.7,90;41.7,58.2,80;53.0,48.0,65;60.0,38.0,50];
my_atl_2021_61 = [28.1,58.8,95;33.2,61.8,85;41.5,58.4,80;54.3,48.0,60;58.9,39.8,45];
btk_atl_2021_61 = [28.2,58.9,90;32.8,62.1,80;41.9,59.5,70;55.3,46.8,55;61.5,41.0,55]; # TCR (but day 5 self-made)
nhcvect = [nhcvect;nhc_atl_2021_61];
myvect = [myvect;my_atl_2021_61];
btkvect = [btkvect;btk_atl_2021_61];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 08 ... CHANTHU around 2021-09-08-03Z
# my at https://twitter.com/elioeFIN/status/1435431979454017555

nhc_wpac_2021_08 = [16.3,128.3,135;18.4,124.0,125;20.4,121.2,130;22.1,119.1,95;23.8,117.3,70];
my_wpac_2021_08 = [16.3,128.2,135;18.4,123.8,125;20.5,120.7,130;21.8,118.3,105;23.0,116.0,70];
btk_wpac_2021_08 = [15.4,128.0,140;17.1,124.1,135;20.3,122.0,145;23.8,122.3,105;29.1,123.6,85]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2021_08];
myvect = [myvect;my_wpac_2021_08];
btkvect = [btkvect;btk_wpac_2021_08];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Epac 44 ... 15E around 2021-09-08-03Z
# my at https://twitter.com/elioeFIN/status/1435438061052207104
# NHC at https://www.nhc.noaa.gov/archive/2021/ep15/ep152021.discus.002.shtml?

nhc_epac_2021_44 = [19.4,108.4,45;21.7,110.6,65;23.7,113.7,55;24.5,116.5,40];
my_epac_2021_44 = [19.5,108.0,45;22.2,110.6,60;24.5,113.5,50;24.3,115.6,35];
btk_epac_2021_44 = [19.7,107.6,45;22.7,109.3,85;24.7,113.0,35;24.3,114.8,25]; # TCR
nhcvect = [nhcvect;nhc_epac_2021_44];
myvect = [myvect;my_epac_2021_44];
btkvect = [btkvect;btk_epac_2021_44];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Wpac 09 ... CHANTHU around 2021-09-08-09Z
# my at https://twitter.com/elioeFIN/status/1435535611868368923

nhc_wpac_2021_09 = [15.9,127.2,120;18.3,122.7,130;20.4,119.9,125;22.0,118.4,95;24.6,116.8,70];
my_wpac_2021_09 = [15.9,127.2,130;18.2,122.9,135;20.3,119.8,130;22.1,118.0,95;25.0,116.9,60];
btk_wpac_2021_09 = [15.8,127.1,130;17.8,123.5,145;21.0,121.5,130;25.3,122.3,105;30.7,123.4,75]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2021_09];
myvect = [myvect;my_wpac_2021_09];
btkvect = [btkvect;btk_wpac_2021_09];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Epac 45 ... OLAF around 2021-09-08-15Z
# my at https://twitter.com/elioeFIN/status/1435618535229861895
# NHC at https://www.nhc.noaa.gov/archive/2021/ep15/ep152021.discus.004.shtml?

nhc_epac_2021_45 = [20.6,109.0,55;22.9,112.2,55;23.8,115.4,35];
my_epac_2021_45 = [20.8,108.9,55;23.1,111.6,55;24.0,114.8,35];
btk_epac_2021_45 = [20.9,108.1,65;24.0,111.2,60;24.5,114.1,30]; # TCR
nhcvect = [nhcvect;nhc_epac_2021_45];
myvect = [myvect;my_epac_2021_45];
btkvect = [btkvect;btk_epac_2021_45];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 46 ... OLAF around 2021-09-08-21Z
# my at https://twitter.com/elioeFIN/status/1435710897050296321
# NHC at https://www.nhc.noaa.gov/archive/2021/ep15/ep152021.discus.005.shtml?

nhc_epac_2021_46 = [21.2,109.4,60;23.2,112.5,55;23.5,115.5,35];
my_epac_2021_46 = [21.4,109.0,55;23.4,112.0,50;23.8,114.4,35];
btk_epac_2021_46 = [21.8,108.6,75;24.5,112.2,45;24.4,114.5,25]; # TCR
nhcvect = [nhcvect;nhc_epac_2021_46];
myvect = [myvect;my_epac_2021_46];
btkvect = [btkvect;btk_epac_2021_46];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Atl 62 ... MINDY around 2021-09-09-03Z
# my at https://twitter.com/elioeFIN/status/1435801650195730441
# NHC at https://www.nhc.noaa.gov/archive/2021/al13/al132021.discus.002.shtml?

nhc_atl_2021_62 = [32.2,77.7,30];
my_atl_2021_62 = [32.5,77.4,30];
btk_atl_2021_62 = [32.1,76.8,30]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_62];
myvect = [myvect;my_atl_2021_62];
btkvect = [btkvect;btk_atl_2021_62];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;1];

# Epac 47 ... OLAF around 2021-09-09-03Z
# my at https://twitter.com/elioeFIN/status/1435798960757788673
# NHC at https://www.nhc.noaa.gov/archive/2021/ep15/ep152021.discus.006.shtml?

nhc_epac_2021_47 = [21.9,109.9,60;23.4,113.0,55;23.3,115.7,35];
my_epac_2021_47 = [21.9,109.6,55;23.6,112.5,45;23.0,114.9,30];
btk_epac_2021_47 = [22.7,109.3,85;24.7,113.0,35;24.3,114.8,25]; # TCR
nhcvect = [nhcvect;nhc_epac_2021_47];
myvect = [myvect;my_epac_2021_47];
btkvect = [btkvect;btk_epac_2021_47];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 48 ... OLAF around 2021-09-09-15Z
# my at https://twitter.com/elioeFIN/status/1435982558156795906
# NHC at https://www.nhc.noaa.gov/archive/2021/ep15/ep152021.discus.008.shtml?

nhc_epac_2021_48 = [23.3,110.7,65;24.1,113.5,45];
my_epac_2021_48 = [23.5,110.6,70;24.1,113.4,50];
btk_epac_2021_48 = [24.0,111.2,60;24.5,114.1,30]; # TCR
nhcvect = [nhcvect;nhc_epac_2021_48];
myvect = [myvect;my_epac_2021_48];
btkvect = [btkvect;btk_epac_2021_48];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Epac 49 ... OLAF around 2021-09-10-03Z
# my at https://twitter.com/elioeFIN/status/1436163384098103299
# NHC at https://www.nhc.noaa.gov/archive/2021/ep15/ep152021.discus.010.shtml?

nhc_epac_2021_49 = [24.6,112.3,65;24.4,114.8,45];
my_epac_2021_49 = [24.8,112.4,65;24.4,115.0,40];
btk_epac_2021_49 = [24.7,113.0,35;24.3,114.8,25]; # TCR
nhcvect = [nhcvect;nhc_epac_2021_49];
myvect = [myvect;my_epac_2021_49];
btkvect = [btkvect;btk_epac_2021_49];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Epac 50 ... OLAF around 2021-09-10-21Z
# my at https://twitter.com/elioeFIN/status/1436434603527524355
# NHC at https://www.nhc.noaa.gov/archive/2021/ep15/ep152021.discus.013.shtml?

nhc_epac_2021_50 = [24.7,114.8,25];
my_epac_2021_50 = [25.0,115.0,25];
btk_epac_2021_50 = [24.4,114.5,25]; # TCR
nhcvect = [nhcvect;nhc_epac_2021_50];
myvect = [myvect;my_epac_2021_50];
btkvect = [btkvect;btk_epac_2021_50];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;2];

# Atl 63 ... NICHOLAS around 2021-09-13-03Z
# my at https://twitter.com/elioeFIN/status/1437254473164931076
# NHC at https://www.nhc.noaa.gov/archive/2021/al14/al142021.discus.003.shtml?

nhc_atl_2021_63 = [27.0,96.5,50;29.9,95.4,45;31.0,94.0,30;31.7,92.0,20];
my_atl_2021_63 = [26.8,96.6,50;29.9,95.4,40;30.6,94.6,25;31.9,94.8,20];
btk_atl_2021_63 = [28.0,96.2,65;29.9,94.4,30;29.9,91.8,25;30.3,92.6,15]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_63];
myvect = [myvect;my_atl_2021_63];
btkvect = [btkvect;btk_atl_2021_63];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 64 ... NICHOLAS around 2021-09-13-09Z
# my at https://twitter.com/elioeFIN/status/1437343047126241282
# NHC at https://www.nhc.noaa.gov/archive/2021/al14/al142021.discus.005.shtml?

nhc_atl_2021_64 = [29.2,96.5,45;31.5,94.5,30;32.5,91.5,20];
my_atl_2021_64 = [29.3,96.5,50;31.8,94.3,30;32.9,92.6,25];
btk_atl_2021_64 = [28.8,95.7,65;30.2,93.8,30;29.3,91.6,20]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_64];
myvect = [myvect;my_atl_2021_64];
btkvect = [btkvect;btk_atl_2021_64];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Wpac 10 ... CHANTHU around 2021-09-14-09Z
# my at https://twitter.com/elioeFIN/status/1437698943907946498

nhc_wpac_2021_10 = [30.2,125.2,40;31.5,125.4,35;34.5,130.5,35;38.7,141.4,30];
my_wpac_2021_10 = [30.2,125.5,40;31.8,125.4,35;34.9,131.1,35;39.1,142.9,35];
btk_wpac_2021_10 = [30.1,125.6,45;30.9,125.4,55;33.4,129.1,40;34.4,137.7,25]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2021_10];
myvect = [myvect;my_wpac_2021_10];
btkvect = [btkvect;btk_wpac_2021_10];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Atl 65 ... ODETTE around 2021-09-18-09Z
# my at https://twitter.com/elioeFIN/status/1439154255919820801
# NHC at https://www.nhc.noaa.gov/archive/2021/al15/al152021.discus.003.shtml?

nhc_atl_2021_65 = [40.8,62.7,50;43.3,54.4,55;43.0,48.4,50;42.5,46.5,45;43.0,46.0,35];
my_atl_2021_65 = [40.8,62.8,50;43.4,54.6,55;43.6,47.9,45;44.0,46.4,45;44.2,48.0,30];
btk_atl_2021_65 = [39.9,61.9,45;45.0,51.6,55;41.8,45.4,50;41.3,39.9,45;44.2,41.8,40]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_65];
myvect = [myvect;my_atl_2021_65];
btkvect = [btkvect;btk_atl_2021_65];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 66 ... PETER around 2021-09-19-15Z
# my at https://twitter.com/elioeFIN/status/1439608361578868738
# NHC at https://www.nhc.noaa.gov/archive/2021/al16/al162021.discus.004.shtml?

nhc_atl_2021_66 = [19.2,60.8,35;21.3,64.9,35;23.8,67.0,35;25.5,67.4,30;27.2,66.7,30];
my_atl_2021_66 = [19.2,60.8,40;21.2,65.0,35;22.9,68.0,35;24.5,68.7,30;26.5,67.7,25];
btk_atl_2021_66 = [19.2,60.1,45;19.8,64.0,35;21.4,66.4,30;22.7,67.1,25;24.0,66.2,25]; # TCR (days 1-3 only)
nhcvect = [nhcvect;nhc_atl_2021_66];
myvect = [myvect;my_atl_2021_66];
btkvect = [btkvect;btk_atl_2021_66];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 67 ... ROSE around 2021-09-19-21Z
# my at https://twitter.com/elioeFIN/status/1439694980679864322
# NHC at https://www.nhc.noaa.gov/archive/2021/al17/al172021.discus.003.shtml?

nhc_atl_2021_67 = [17.9,33.3,45;22.0,36.0,40;24.7,38.0,35;26.7,40.6,30];
my_atl_2021_67 = [17.8,33.3,45;21.8,36.1,40;24.0,38.4,35;25.5,41.7,30];
btk_atl_2021_67 = [17.7,34.1,40;22.1,37.3,35;23.8,39.7,30;27.0,42.0,25]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_67];
myvect = [myvect;my_atl_2021_67];
btkvect = [btkvect;btk_atl_2021_67];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 68 ... PETER around 2021-09-20-09Z
# my at https://twitter.com/elioeFIN/status/1439876640616628225
# NHC at https://www.nhc.noaa.gov/archive/2021/al16/al162021.discus.007.shtml?

nhc_atl_2021_68 = [20.4,63.6,40;22.4,67.2,35;24.2,68.4,30;26.2,67.8,25;28.5,66.8,30];
my_atl_2021_68 = [20.3,63.6,40;22.1,67.2,35;24.0,68.6,30;25.2,68.8,25;27.8,67.6,25];
btk_atl_2021_68 = [19.6,63.2,40;21.0,65.8,30;22.2,67.0,25;23.8,66.9,25;24.8,64.1,25]; # TCR (days 1-2 only)
nhcvect = [nhcvect;nhc_atl_2021_68];
myvect = [myvect;my_atl_2021_68];
btkvect = [btkvect;btk_atl_2021_68];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 69 ... PETER around 2021-09-20-15Z
# my at https://twitter.com/elioeFIN/status/1439968080982052870
# NHC at https://www.nhc.noaa.gov/archive/2021/al16/al162021.discus.008.shtml?

nhc_atl_2021_69 = [20.8,64.8,40;22.7,67.9,35;24.5,68.7,30;26.5,67.6,30;28.6,66.4,35];
my_atl_2021_69 = [20.8,64.6,40;22.4,68.1,35;24.2,69.3,30;25.3,68.9,30;28.0,66.5,30];
btk_atl_2021_69 = [19.8,64.0,35;21.4,66.4,30;22.7,67.1,25;24.0,66.2,25;25.2,63.3,25]; # TCR (days 1-2 only)
nhcvect = [nhcvect;nhc_atl_2021_69];
myvect = [myvect;my_atl_2021_69];
btkvect = [btkvect;btk_atl_2021_69];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 70 ... ROSE around 2021-09-20-15Z
# my at https://twitter.com/elioeFIN/status/1439971137350471685
# NHC at https://www.nhc.noaa.gov/archive/2021/al17/al172021.discus.006.shtml?

nhc_atl_2021_70 = [21.0,36.1,35;24.1,38.1,35;26.7,40.0,30];
my_atl_2021_70 = [21.1,36.2,35;24.0,37.9,35;26.5,39.7,30];
btk_atl_2021_70 = [21.1,36.7,35;23.4,38.8,30;26.0,41.9,25]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_70];
myvect = [myvect;my_atl_2021_70];
btkvect = [btkvect;btk_atl_2021_70];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Atl 71 ... PETER around 2021-09-21-15Z
# my at https://twitter.com/elioeFIN/status/1440333724432752642
# NHC at https://www.nhc.noaa.gov/archive/2021/al16/al162021.discus.012.shtml?

nhc_atl_2021_71 = [21.7,67.0,30;23.4,67.6,25;25.4,66.2,25;27.5,64.4,25;29.8,62.5,25];
my_atl_2021_71 = [21.7,67.2,30;23.3,67.7,30;24.7,66.9,25;26.7,65.8,25;28.4,62.4,25];
btk_atl_2021_71 = [21.4,66.4,30;22.7,67.1,25;24.0,66.2,25;25.2,63.3,25;27.8,61.3,25]; # TCR (day 1 only)
nhcvect = [nhcvect;nhc_atl_2021_71];
myvect = [myvect;my_atl_2021_71];
btkvect = [btkvect;btk_atl_2021_71];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 72 ... ROSE around 2021-09-21-15Z
# my at https://twitter.com/elioeFIN/status/1440335961750065164
# NHC at https://www.nhc.noaa.gov/archive/2021/al17/al172021.discus.010.shtml?

nhc_atl_2021_72 = [24.1,38.8,30;26.9,40.6,30];
my_atl_2021_72 = [24.0,38.8,30;26.7,40.6,30];
btk_atl_2021_72 = [23.4,38.8,30;26.0,41.9,25]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_72];
myvect = [myvect;my_atl_2021_72];
btkvect = [btkvect;btk_atl_2021_72];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Atl 73 ... PETER around 2021-09-22-15Z
# my at https://twitter.com/elioeFIN/status/1440693247324549126
# NHC at https://www.nhc.noaa.gov/archive/2021/al16/al162021.discus.016.shtml?

nhc_atl_2021_73 = [23.3,67.1,25;25.1,66.3,25];
my_atl_2021_73 = [23.2,67.0,25;25.0,66.5,25];
btk_atl_2021_73 = [22.7,67.1,25;24.0,66.2,25]; # nothing in TCR
nhcvect = [nhcvect;nhc_atl_2021_73];
myvect = [myvect;my_atl_2021_73];
btkvect = [btkvect;btk_atl_2021_73];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Atl 74 ... ROSE around 2021-09-22-15Z
# my at https://twitter.com/elioeFIN/status/1440694135099301894
# NHC at https://www.nhc.noaa.gov/archive/2021/al17/al172021.discus.014.shtml?

nhc_atl_2021_74 = [26.1,41.1,30];
my_atl_2021_74 = [26.1,41.5,30];
btk_atl_2021_74 = [26.0,41.9,25]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_74];
myvect = [myvect;my_atl_2021_74];
btkvect = [btkvect;btk_atl_2021_74];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;1];

# Wpac 11 ... 20W around 2021-09-22-21Z
# my at https://twitter.com/elioeFIN/status/1440780257569562627

nhc_wpac_2021_11 = [14.2,143.5,55;16.6,140.6,85;18.6,139.3,105;20.5,139.1,125;22.4,139.5,130];
my_wpac_2021_11 = [14.0,143.1,55;16.7,140.2,90;18.7,138.7,110;20.2,138.7,125;22.4,139.1,130];
btk_wpac_2021_11 = [14.2,141.9,35;16.7,138.5,65;18.4,137.1,125;19.4,136.7,105;20.5,136.3,90]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2021_11];
myvect = [myvect;my_wpac_2021_11];
btkvect = [btkvect;btk_wpac_2021_11];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Atl 75 ... 18L around 2021-09-23-03Z
# my at https://twitter.com/elioeFIN/status/1440872171325181956
# NHC at https://www.nhc.noaa.gov/archive/2021/al18/al182021.discus.002.shtml?

nhc_atl_2021_75 = [10.9,39.6,35;12.0,44.3,55;13.2,47.5,80;14.5,50.2,90;16.0,53.3,100];
my_atl_2021_75 = [10.8,39.5,35;12.2,44.1,60;13.6,47.6,80;14.6,50.2,90;16.7,53.0,105];
btk_atl_2021_75 = [11.1,40.3,60;12.3,45.4,85;13.4,48.8,130;14.5,50.6,130;16.5,52.9,105]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_75];
myvect = [myvect;my_atl_2021_75];
btkvect = [btkvect;btk_atl_2021_75];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 76 ... SAM around 2021-09-23-15Z
# my at https://twitter.com/elioeFIN/status/1441059028981911555
# NHC at https://www.nhc.noaa.gov/archive/2021/al18/al182021.discus.004.shtml?

nhc_atl_2021_76 = [11.9,42.9,60;12.7,46.7,80;13.7,49.4,100;15.3,52.1,105;17.4,55.2,110];
my_atl_2021_76 = [11.8,42.7,60;12.8,46.9,75;13.8,50.2,95;15.5,52.7,105;17.4,56.0,115];
btk_atl_2021_76 = [11.6,43.0,65;12.8,47.2,105;13.8,50.0,130;15.4,51.7,105;17.3,54.1,115]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_76];
myvect = [myvect;my_atl_2021_76];
btkvect = [btkvect;btk_atl_2021_76];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 77 ... SAM around 2021-09-23-21Z
# my at https://twitter.com/elioeFIN/status/1441149129619656705
# NHC at https://www.nhc.noaa.gov/archive/2021/al18/al182021.discus.005.shtml?

nhc_atl_2021_77 = [11.9,44.2,75;12.6,47.4,100;13.7,50.0,110;15.2,52.5,110;17.5,55.5,110];
my_atl_2021_77 = [12.0,44.0,75;12.9,47.6,90;13.9,50.5,105;15.1,54.0,105;17.4,56.7,110];
btk_atl_2021_77 = [11.9,44.3,70;13.1,48.1,115;14.1,50.3,135;15.9,52.3,105;17.7,54.7,115]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_77];
myvect = [myvect;my_atl_2021_77];
btkvect = [btkvect;btk_atl_2021_77];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 78 ... SAM around 2021-09-24-09Z
# my at https://twitter.com/elioeFIN/status/1441328747240591363
# NHC at https://www.nhc.noaa.gov/archive/2021/al18/al182021.discus.007.shtml?

nhc_atl_2021_78 = [12.1,45.9,95;12.9,48.7,115;14.1,51.1,110;15.9,53.8,110;17.8,56.6,110];
my_atl_2021_78 = [12.1,46.0,100;12.9,48.9,110;14.1,51.5,110;16.1,54.0,110;18.0,57.2,115];
btk_atl_2021_78 = [12.6,46.3,95;13.6,49.4,130;15.0,51.1,115;16.9,53.5,115;18.6,55.9,115]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_78];
myvect = [myvect;my_atl_2021_78];
btkvect = [btkvect;btk_atl_2021_78];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 79 ... SAM around 2021-09-25-15Z
# my at https://twitter.com/elioeFIN/status/1441777886164254729
# NHC at https://www.nhc.noaa.gov/archive/2021/al18/al182021.discus.012.shtml?

nhc_atl_2021_79 = [13.7,49.8,115;15.0,51.9,120;16.6,54.1,115;18.4,56.5,110;20.7,59.8,110];
my_atl_2021_79 = [13.7,49.9,115;15.0,51.9,120;16.7,54.3,115;18.5,56.6,110;20.7,60.2,110];
btk_atl_2021_79 = [13.8,50.0,130;15.4,51.7,105;17.3,54.1,115;19.1,56.6,115;22.0,59.6,125]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_79];
myvect = [myvect;my_atl_2021_79];
btkvect = [btkvect;btk_atl_2021_79];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 80 ... SAM around 2021-09-26-15Z
# my at https://twitter.com/elioeFIN/status/1442142657338281984
# NHC at https://www.nhc.noaa.gov/archive/2021/al18/al182021.discus.016.shtml?

nhc_atl_2021_80 = [15.2,52.4,120;16.8,54.6,115;18.6,57.1,115;21.4,60.3,110;25.6,63.1,110];
my_atl_2021_80 = [15.1,52.3,120;16.7,54.4,110;18.4,57.2,115;20.9,60.7,110;24.1,64.2,105];
btk_atl_2021_80 = [15.4,51.7,105;17.3,54.1,115;19.1,56.6,115;22.0,59.6,125;27.4,61.9,130]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_80];
myvect = [myvect;my_atl_2021_80];
btkvect = [btkvect;btk_atl_2021_80];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 81 ... SAM around 2021-09-26-21Z
# my at https://twitter.com/elioeFIN/status/1442230475137986563
# NHC at https://www.nhc.noaa.gov/archive/2021/al18/al182021.discus.017.shtml?

nhc_atl_2021_81 = [15.5,52.5,125;17.2,54.7,120;19.2,57.4,115;22.1,60.5,110;26.6,62.9,110];
my_atl_2021_81 = [15.6,52.4,125;17.3,54.5,115;19.4,57.2,115;22.5,60.4,110;26.8,62.7,105];
btk_atl_2021_81 = [15.9,52.3,105;17.7,54.7,115;19.7,57.3,115;23.0,60.4,125;29.2,61.9,130]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_81];
myvect = [myvect;my_atl_2021_81];
btkvect = [btkvect;btk_atl_2021_81];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 82 ... SAM around 2021-09-27-15Z
# my at https://twitter.com/elioeFIN/status/1442507658003632133
# NHC at https://www.nhc.noaa.gov/archive/2021/al18/al182021.discus.020.shtml?

nhc_atl_2021_82 = [17.3,53.9,110;19.1,56.5,110;21.7,59.8,110;25.9,62.2,110;32.0,61.3,100];
my_atl_2021_82 = [17.4,54.0,110;19.1,56.6,105;22.0,60.0,105;26.4,62.4,105;31.3,62.1,90];
btk_atl_2021_82 = [17.3,54.1,115;19.1,56.6,115;22.0,59.6,125;27.4,61.9,130;33.4,60.1,115]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_82];
myvect = [myvect;my_atl_2021_82];
btkvect = [btkvect;btk_atl_2021_82];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 83 ... SAM around 2021-09-27-21Z
# my at https://twitter.com/elioeFIN/status/1442596848578048008
# NHC at https://www.nhc.noaa.gov/archive/2021/al18/al182021.discus.021.shtml?

nhc_atl_2021_83 = [17.8,54.6,115;19.8,57.3,110;22.9,60.5,110;27.8,62.0,105;34.7,59.6,100];
my_atl_2021_83 = [17.9,54.5,115;19.9,57.4,105;23.2,60.6,105;28.0,62.5,105;35.2,59.5,90];
btk_atl_2021_83 = [17.7,54.7,115;19.7,57.3,115;23.0,60.4,125;29.2,61.9,130;34.7,59.1,110]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_83];
myvect = [myvect;my_atl_2021_83];
btkvect = [btkvect;btk_atl_2021_83];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 84 ... SAM around 2021-09-28-15Z
# my at https://twitter.com/elioeFIN/status/1442868840048693253
# NHC at https://www.nhc.noaa.gov/archive/2021/al18/al182021.discus.024.shtml?

nhc_atl_2021_84 = [19.2,56.5,115;22.0,59.6,110;26.6,61.5,110;32.5,59.7,100;39.2,54.8,90];
my_atl_2021_84 = [19.2,56.5,115;22.2,59.6,110;27.1,61.3,105;32.7,60.3,95;39.0,54.7,75];
btk_atl_2021_84 = [19.1,56.6,115;22.0,59.6,125;27.4,61.9,130;33.4,60.1,115;37.3,55.4,85]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_84];
myvect = [myvect;my_atl_2021_84];
btkvect = [btkvect;btk_atl_2021_84];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 85 ... SAM around 2021-09-29-15Z
# my at https://twitter.com/elioeFIN/status/1443228672115318785
# NHC at https://www.nhc.noaa.gov/archive/2021/al18/al182021.discus.028.shtml?

nhc_atl_2021_85 = [21.8,59.6,120;26.6,61.8,115;32.0,60.9,105;36.2,57.3,90;39.5,53.0,75];
my_atl_2021_85 = [21.8,59.7,115;26.9,61.8,115;32.7,60.6,100;36.8,57.1,85;39.0,52.6,70];
btk_atl_2021_85 = [22.0,59.6,125;27.4,61.9,130;33.4,60.1,115;37.3,55.4,85;41.4,47.1,85]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_85];
myvect = [myvect;my_atl_2021_85];
btkvect = [btkvect;btk_atl_2021_85];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 86 ... SAM around 2021-09-29-21Z
# my at https://twitter.com/elioeFIN/status/1443322798471098373
# NHC at https://www.nhc.noaa.gov/archive/2021/al18/al182021.discus.029.shtml?

nhc_atl_2021_86 = [23.1,60.4,120;28.3,61.9,115;33.6,59.9,100;37.5,55.0,85;42.0,48.5,70];
my_atl_2021_86 = [23.0,60.3,120;28.7,61.7,115;34.0,59.9,100;37.9,55.8,85;41.4,48.1,60];
btk_atl_2021_86 = [23.0,60.4,125;29.2,61.9,130;34.7,59.1,110;38.0,53.9,85;43.8,43.6,80]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_86];
myvect = [myvect;my_atl_2021_86];
btkvect = [btkvect;btk_atl_2021_86];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 87 ... VICTOR around 2021-09-29-21Z
# my at https://twitter.com/elioeFIN/status/1443323538434400262
# NHC at https://www.nhc.noaa.gov/archive/2021/al20/al202021.discus.002.shtml?

nhc_atl_2021_87 = [9.5,28.9,55;11.4,32.4,70;14.7,35.8,60;19.3,38.9,50];
my_atl_2021_87 = [9.5,28.9,55;11.7,32.6,70;14.9,35.8,60;19.6,38.5,50];
btk_atl_2021_87 = [9.8,29.5,45;11.8,33.9,55;13.5,37.7,30;16.5,41.0,30]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_87];
myvect = [myvect;my_atl_2021_87];
btkvect = [btkvect;btk_atl_2021_87];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 88 ... SAM around 2021-09-30-15Z
# my at https://twitter.com/elioeFIN/status/1443595217056186368
# NHC at https://www.nhc.noaa.gov/archive/2021/al18/al182021.discus.032.shtml?

nhc_atl_2021_88 = [27.2,61.7,125;32.7,60.8,105;36.9,57.0,90;40.0,51.0,80;44.5,45.5,65];
my_atl_2021_88 = [27.1,61.8,120;33.2,60.5,105;37.4,57.1,90;40.8,51.1,75;45.6,44.8,60];
btk_atl_2021_88 = [27.4,61.9,130;33.4,60.1,115;37.3,55.4,85;41.4,47.1,85;52.2,39.6,65];
nhcvect = [nhcvect;nhc_atl_2021_88];
myvect = [myvect;my_atl_2021_88];
btkvect = [btkvect;btk_atl_2021_88];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 12 ... LIONROCK around 2021-10-08-15Z
# my at https://twitter.com/elioeFIN/status/1446490195864526898

nhc_wpac_2021_12 = [20.3,109.2,35;20.3,106.4,35];
my_wpac_2021_12 = [20.5,109.4,35;20.4,106.4,40];
btk_wpac_2021_12 = [20.1,109.0,35;20.8,106.3,20]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2021_12];
myvect = [myvect;my_wpac_2021_12];
btkvect = [btkvect;btk_wpac_2021_12];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Epac 51 ... PAMELA around 2021-10-10-21Z
# my at https://twitter.com/elioeFIN/status/1447305773374115851
# NHC at https://www.nhc.noaa.gov/archive/2021/ep16/ep162021.discus.003.shtml?

nhc_epac_2021_51 = [16.9,108.8,60;19.6,109.9,80;23.3,108.0,95];
my_epac_2021_51 = [16.9,108.9,60;19.8,109.9,75;23.7,107.6,90];
btk_epac_2021_51 = [17.0,108.4,55;20.6,109.3,60;25.1,104.8,40]; # TCR
nhcvect = [nhcvect;nhc_epac_2021_51];
myvect = [myvect;my_epac_2021_51];
btkvect = [btkvect;btk_epac_2021_51];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Wpac 13 ... KOMPASU around 2021-10-10-21Z
# my at https://twitter.com/elioeFIN/status/1447309410355892233

nhc_wpac_2021_13 = [19.5,119.5,60;19.2,113.6,70;19.3,108.0,60];
my_wpac_2021_13 = [19.9,118.5,65;19.3,113.4,75;19.3,107.5,60];
btk_wpac_2021_13 = [18.8,120.5,55;19.1,114.5,50;19.2,108.4,35]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2021_13];
myvect = [myvect;my_wpac_2021_13];
btkvect = [btkvect;btk_wpac_2021_13];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Wpac 14 ... NAMTHEUN around 2021-10-10-21Z
# my at https://twitter.com/elioeFIN/status/1447313260290715651

nhc_wpac_2021_14 = [19.7,154.5,50;22.0,151.4,60;24.0,150.6,65;26.9,152.2,55;30.3,154.9,40];
my_wpac_2021_14 = [20.0,155.0,55;22.0,151.5,65;24.8,151.1,65;28.3,153.0,55;30.2,154.7,40];
btk_wpac_2021_14 = [18.8,153.8,45;20.8,151.9,30;23.6,155.3,35;25.1,159.3,35;28.2,163.2,55]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2021_14];
myvect = [myvect;my_wpac_2021_14];
btkvect = [btkvect;btk_wpac_2021_14];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 15 ... NAMTHEUN around 2021-10-11-21Z
# my at https://twitter.com/elioeFIN/status/1447665040409120779

nhc_wpac_2021_15 = [21.3,150.1,50;22.9,148.1,50;24.7,149.0,40;27.2,151.4,35;29.2,155.0,25];
my_wpac_2021_15 = [21.2,149.9,50;23.0,148.2,55;24.8,149.4,40;27.6,151.6,35;30.0,154.3,25];
btk_wpac_2021_15 = [20.8,151.9,30;23.6,155.3,35;25.1,159.3,35;28.2,163.2,55;32.9,166.8,50]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2021_15];
myvect = [myvect;my_wpac_2021_15];
btkvect = [btkvect;btk_wpac_2021_15];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Epac 52 ... PAMELA around 2021-10-11-21Z
# my at https://twitter.com/elioeFIN/status/1447671329176657923
# NHC at https://www.nhc.noaa.gov/archive/2021/ep16/ep162021.discus.007.shtml?

nhc_epac_2021_52 = [20.0,108.9,85;24.3,105.8,45];
my_epac_2021_52 = [20.1,109.0,85;25.0,105.1,50];
btk_epac_2021_52 = [20.6,109.3,60;25.1,104.8,40]; # TCR
nhcvect = [nhcvect;nhc_epac_2021_52];
myvect = [myvect;my_epac_2021_52];
btkvect = [btkvect;btk_epac_2021_52];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Epac 53 ... PAMELA around 2021-10-12-03Z
# my at https://twitter.com/elioeFIN/status/1447758182365937665
# NHC at https://www.nhc.noaa.gov/archive/2021/ep16/ep162021.discus.008.shtml?

nhc_epac_2021_53 = [21.0,108.5,85;26.1,103.3,40];
my_epac_2021_53 = [20.9,108.8,80;26.0,103.5,40];
btk_epac_2021_53 = [21.5,108.9,60;26.5,102.6,25]; # TCR except day 2
nhcvect = [nhcvect;nhc_epac_2021_53];
myvect = [myvect;my_epac_2021_53];
btkvect = [btkvect;btk_epac_2021_53];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Epac 54 ... PAMELA around 2021-10-12-21Z
# my at https://twitter.com/elioeFIN/status/1448031756356145164
# NHC at https://www.nhc.noaa.gov/archive/2021/ep16/ep162021.discus.011.shtml?

nhc_epac_2021_54 = [25.4,105.2,35];
my_epac_2021_54 = [25.4,105.6,35];
btk_epac_2021_54 = [25.1,104.8,40]; # TCR
nhcvect = [nhcvect;nhc_epac_2021_54];
myvect = [myvect;my_epac_2021_54];
btkvect = [btkvect;btk_epac_2021_54];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;2];

# Epac 55 ... RICK around 2021-10-22-21Z
# my at https://twitter.com/elioeFIN/status/1451657748274421761
# NHC at https://www.nhc.noaa.gov/archive/2021/ep17/ep172021.discus.002.shtml?

nhc_epac_2021_55 = [14.6,102.0,60;16.1,102.6,80;18.3,103.3,65];
my_epac_2021_55 = [14.5,101.7,55;16.4,102.1,75;18.8,103.2,50];
btk_epac_2021_55 = [14.9,101.8,80;16.0,101.4,75;19.0,102.5,50]; # TCR
nhcvect = [nhcvect;nhc_epac_2021_55];
myvect = [myvect;my_epac_2021_55];
btkvect = [btkvect;btk_epac_2021_55];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 56 ... RICK around 2021-10-23-03Z
# my at https://twitter.com/elioeFIN/status/1451745859838881797
# NHC at https://www.nhc.noaa.gov/archive/2021/ep17/ep172021.discus.003.shtml?

nhc_epac_2021_56 = [14.8,102.1,70;16.4,102.8,90;19.4,103.5,60];
my_epac_2021_56 = [14.7,102.2,70;16.3,102.6,85;19.6,103.6,40];
btk_epac_2021_56 = [15.1,101.8,80;16.5,101.5,80;20.0,102.9,20]; # TCR
nhcvect = [nhcvect;nhc_epac_2021_56];
myvect = [myvect;my_epac_2021_56];
btkvect = [btkvect;btk_epac_2021_56];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 57 ... RICK around 2021-10-23-21Z
# my at https://twitter.com/elioeFIN/status/1452018758432792581
# NHC at https://www.nhc.noaa.gov/archive/2021/ep17/ep172021.discus.006.shtml?

nhc_epac_2021_57 = [16.5,102.1,100;18.9,102.7,60];
my_epac_2021_57 = [16.6,102.2,95;19.2,102.9,50];
btk_epac_2021_57 = [16.0,101.4,75;19.0,102.5,50]; # TCR
nhcvect = [nhcvect;nhc_epac_2021_57];
myvect = [myvect;my_epac_2021_57];
btkvect = [btkvect;btk_epac_2021_57];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Wpac 16 ... 25W around 2021-10-24-21Z
# my at https://twitter.com/elioeFIN/status/1452373885769461767

nhc_wpac_2021_16 = [17.8,137.5,50;19.1,137.3,70;21.3,137.7,80;25.0,139.6,80;29.8,143.5,70];
my_wpac_2021_16 = [17.9,137.4,50;19.2,137.4,70;21.3,137.9,75;25.5,140.2,80;32.3,146.6,65];
btk_wpac_2021_16 = [19.1,138.1,40;20.4,139.4,65;22.6,140.0,70;28.1,143.5,85;35.7,153.1,50]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2021_16];
myvect = [myvect;my_wpac_2021_16];
btkvect = [btkvect;btk_wpac_2021_16];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Epac 58 ... RICK around 2021-10-24-21Z
# my at https://twitter.com/elioeFIN/status/1452376659500351492
# NHC at https://www.nhc.noaa.gov/archive/2021/ep17/ep172021.discus.010.shtml?

nhc_epac_2021_58 = [18.4,102.6,50];
my_epac_2021_58 = [18.5,102.5,45];
btk_epac_2021_58 = [19.0,102.5,50]; # TCR
nhcvect = [nhcvect;nhc_epac_2021_58];
myvect = [myvect;my_epac_2021_58];
btkvect = [btkvect;btk_epac_2021_58];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;2];

# Atl 89 ... WANDA around 2021-10-31-15Z
# my at https://twitter.com/elioeFIN/status/1454828263352721411
# NHC at https://www.nhc.noaa.gov/archive/2021/al21/al212021.discus.003.shtml?

nhc_atl_2021_89 = [34.9,42.4,50;35.6,40.0,50;39.4,38.7,45;43.4,37.3,45;47.2,30.0,40];
my_atl_2021_89 = [34.9,42.7,50;35.2,40.6,45;38.8,39.6,45;42.8,38.7,45;46.3,32.1,35];
btk_atl_2021_89 = [34.1,43.4,40;35.5,40.7,40;38.4,39.9,40;41.7,39.7,40;41.1,37.8,45]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_89];
myvect = [myvect;my_atl_2021_89];
btkvect = [btkvect;btk_atl_2021_89];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 90 ... WANDA around 2021-10-31-21Z
# my at https://twitter.com/elioeFIN/status/1454917172157878275
# NHC at https://www.nhc.noaa.gov/archive/2021/al21/al212021.discus.004.shtml?

nhc_atl_2021_90 = [35.2,42.2,45;36.8,40.2,45;40.7,39.4,45;44.1,37.0,45;45.4,32.0,40];
my_atl_2021_90 = [35.0,42.6,45;36.6,40.9,45;40.5,40.3,45;42.5,39.5,45;44.0,35.0,35];
btk_atl_2021_90 = [34.1,42.6,35;36.2,40.5,40;39.3,39.7,45;42.1,39.6,40;39.6,37.5,45]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_90];
myvect = [myvect;my_atl_2021_90];
btkvect = [btkvect;btk_atl_2021_90];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 91 ... WANDA around 2021-11-01-03Z
# my at https://twitter.com/elioeFIN/status/1455008232150347777
# NHC at https://www.nhc.noaa.gov/archive/2021/al21/al212021.discus.005.shtml?

nhc_atl_2021_91 = [35.1,42.2,45;37.4,40.7,45;40.9,39.9,45;43.1,37.3,45;43.0,33.0,40];
my_atl_2021_91 = [34.9,42.4,45;37.4,40.9,45;40.8,40.0,50;43.0,38.1,45;42.4,34.0,35];
btk_atl_2021_91 = [34.4,41.9,35;36.9,40.4,45;40.2,39.7,45;42.3,39.0,45;38.4,38.0,45]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_91];
myvect = [myvect;my_atl_2021_91];
btkvect = [btkvect;btk_atl_2021_91];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 92 ... WANDA around 2021-11-01-21Z
# my at https://twitter.com/elioeFIN/status/1455280334036144141
# NHC at https://www.nhc.noaa.gov/archive/2021/al21/al212021.discus.008.shtml?

nhc_atl_2021_92 = [36.0,40.4,45;39.9,39.7,45;42.8,38.3,45;43.4,33.3,45;42.5,31.0,40];
my_atl_2021_92 = [35.9,40.4,45;39.8,39.7,45;42.3,38.3,45;43.5,33.0,45;42.2,30.5,40];
btk_atl_2021_92 = [36.2,40.5,40;39.3,39.7,45;42.1,39.6,40;39.6,37.5,45;37.1,38.0,35]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_92];
myvect = [myvect;my_atl_2021_92];
btkvect = [btkvect;btk_atl_2021_92];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 93 ... WANDA around 2021-11-02-03Z
# my at https://twitter.com/elioeFIN/status/1455368103035015168
# NHC at https://www.nhc.noaa.gov/archive/2021/al21/al212021.discus.009.shtml?

nhc_atl_2021_93 = [36.9,40.2,45;40.9,39.7,45;42.9,38.0,45;43.2,33.4,45;43.0,29.0,40];
my_atl_2021_93 = [36.8,40.2,45;40.8,39.8,45;43.0,38.0,40;41.8,33.8,40;42.0,29.2,35];
btk_atl_2021_93 = [36.9,40.4,40;40.2,39.7,45;42.3,39.0,45;38.4,38.0,45;37.4,37.4,35]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_93];
myvect = [myvect;my_atl_2021_93];
btkvect = [btkvect;btk_atl_2021_93];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 94 ... WANDA around 2021-11-03-21Z
# my at https://twitter.com/elioeFIN/status/1456006500376358916
# NHC at https://www.nhc.noaa.gov/archive/2021/al21/al212021.discus.016.shtml?

nhc_atl_2021_94 = [41.9,39.1,50;40.3,37.0,50;38.1,36.6,45;42.4,31.5,45];
my_atl_2021_94 = [42.2,39.0,50;41.0,36.6,45;39.0,36.5,40;44.5,31.5,50];
btk_atl_2021_94 = [42.1,39.6,40;39.6,37.5,45;37.1,38.0,35;40.9,32.8,40]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_94];
myvect = [myvect;my_atl_2021_94];
btkvect = [btkvect;btk_atl_2021_94];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 95 ... WANDA around 2021-11-04-03Z
# my at https://twitter.com/elioeFIN/status/1456093633606737920
# NHC at https://www.nhc.noaa.gov/archive/2021/al21/al212021.discus.017.shtml?

nhc_atl_2021_95 = [42.0,38.8,50;39.0,37.3,50;38.1,36.6,45;44.7,29.0,45];
my_atl_2021_95 = [42.2,38.8,45;39.2,37.5,45;38.4,37.0,45;44.6,30.7,50];
btk_atl_2021_95 = [42.3,39.0,45;38.4,38.0,45;37.4,37.4,35;43.2,29.7,40]; # TCR
nhcvect = [nhcvect;nhc_atl_2021_95];
myvect = [myvect;my_atl_2021_95];
btkvect = [btkvect;btk_atl_2021_95];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Epac 59 ... 18E around 2021-11-06-21Z
# my at https://twitter.com/elioeFIN/status/1457089953566011402
# NHC at https://www.nhc.noaa.gov/archive/2021/ep18/ep182021.discus.010.shtml?

nhc_epac_2021_59 = [8.3,101.7,30;9.2,106.6,35;10.2,111.6,35;10.4,116.8,35];
my_epac_2021_59 = [8.5,101.5,35;9.3,106.8,40;10.2,111.9,45;10.6,115.9,50];
btk_epac_2021_59 = [8.5,102.2,35;10.3,107.4,30;11.6,112.3,25;11.7,117.6,25]; # TCR (except day 4)
nhcvect = [nhcvect;nhc_epac_2021_59];
myvect = [myvect;my_epac_2021_59];
btkvect = [btkvect;btk_epac_2021_59];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Epac 60 ... 18E around 2021-11-07-03Z
# my at https://twitter.com/elioeFIN/status/1457182740961533957
# NHC at https://www.nhc.noaa.gov/archive/2021/ep18/ep182021.discus.011.shtml?

nhc_epac_2021_60 = [8.8,102.7,30;9.6,107.7,35;10.3,112.6,35];
my_epac_2021_60 = [8.9,102.5,35;9.7,108.0,45;10.4,113.0,50];
btk_epac_2021_60 = [9.0,103.4,35;10.7,108.7,30;11.8,113.6,25]; # TCR
nhcvect = [nhcvect;nhc_epac_2021_60];
myvect = [myvect;my_epac_2021_60];
btkvect = [btkvect;btk_epac_2021_60];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 61 ... TERRY around 2021-11-07-21Z
# my at https://twitter.com/elioeFIN/status/1457453450892128258
# NHC at https://www.nhc.noaa.gov/archive/2021/ep18/ep182021.discus.014.shtml?

nhc_epac_2021_61 = [9.4,106.9,40;9.8,111.7,35;10.0,116.7,30];
my_epac_2021_61 = [9.3,106.7,40;10.0,112.1,40;10.0,116.9,45];
btk_epac_2021_61 = [10.3,107.4,30;11.6,112.3,25;11.7,117.6,25]; # TCR (except day 3)
nhcvect = [nhcvect;nhc_epac_2021_61];
myvect = [myvect;my_epac_2021_61];
btkvect = [btkvect;btk_epac_2021_61];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 62 ... SANDRA around 2021-11-07-21Z
# my at https://twitter.com/elioeFIN/status/1457454182152249347
# NHC at https://www.nhc.noaa.gov/archive/2021/ep19/ep192021.discus.002.shtml?

nhc_epac_2021_62 = [15.3,117.5,35;15.5,121.2,30];
my_epac_2021_62 = [15.3,117.5,35;15.7,121.3,25];
btk_epac_2021_62 = [14.9,117.3,30;14.4,121.5,25]; # TCR
nhcvect = [nhcvect;nhc_epac_2021_62];
myvect = [myvect;my_epac_2021_62];
btkvect = [btkvect;btk_epac_2021_62];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Epac 63 ... TERRY around 2021-11-08-21Z
# my at https://twitter.com/elioeFIN/status/1457813363946397697
# NHC at https://www.nhc.noaa.gov/archive/2021/ep18/ep182021.discus.018.shtml?

nhc_epac_2021_63 = [11.4,112.2,30;11.7,117.4,25];
my_epac_2021_63 = [11.6,112.1,30;11.8,117.8,35];
btk_epac_2021_63 = [11.6,112.3,25;11.7,117.6,25]; # TCR (except day 2)
nhcvect = [nhcvect;nhc_epac_2021_63];
myvect = [myvect;my_epac_2021_63];
btkvect = [btkvect;btk_epac_2021_63];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Epac 64 ... TERRY around 2021-11-09-03Z
# my at https://twitter.com/elioeFIN/status/1457903347097341956
# NHC at https://www.nhc.noaa.gov/archive/2021/ep18/ep182021.discus.019.shtml?

nhc_epac_2021_64 = [11.4,113.5,30];
my_epac_2021_64 = [11.6,113.5,35];
btk_epac_2021_64 = [11.8,113.6,25]; # TCR
nhcvect = [nhcvect;nhc_epac_2021_64];
myvect = [myvect;my_epac_2021_64];
btkvect = [btkvect;btk_epac_2021_64];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;2];

# Shem 01 ... PADDY around 2021-11-22-21Z
# my at https://twitter.com/elioeFIN/status/1462884462203740161

nhc_shem_2022_01 = [14.2,106.5,40;14.0,104.6,30];
my_shem_2022_01 = [14.0,107.1,45;13.9,105.3,35];
btk_shem_2022_01 = [13.9,106.9,35;14.3,105.3,25]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2022_01];
myvect = [myvect;my_shem_2022_01];
btkvect = [btkvect;btk_shem_2022_01];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Wpac 17 ... 27W around 2021-11-29-21Z
# my at https://twitter.com/elioeFIN/status/1465420527393202176

nhc_wpac_2021_17 = [14.3,137.1,50;16.0,135.8,80;18.2,136.6,95;20.5,138.6,80];
my_wpac_2021_17 = [14.2,137.5,50;16.2,135.7,80;18.5,136.3,100;21.1,138.4,75];
btk_wpac_2021_17 = [13.4,137.3,50;15.8,135.5,65;19.5,137.5,125;26.2,144.3,65]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2021_17];
myvect = [myvect;my_wpac_2021_17];
btkvect = [btkvect;btk_wpac_2021_17];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Wpac 18 ... 27W around 2021-11-30-03Z
# my at https://twitter.com/elioeFIN/status/1465510297687502855

nhc_wpac_2021_18 = [14.1,136.3,60;16.3,135.1,90;19.0,136.6,105;21.9,139.1,80];
my_wpac_2021_18 = [13.9,136.4,60;16.4,135.2,90;18.9,136.2,100;21.4,138.8,75];
btk_wpac_2021_18 = [13.9,136.6,50;16.6,135.6,75;21.0,138.8,125;28.5,146.6,40]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2021_18];
myvect = [myvect;my_wpac_2021_18];
btkvect = [btkvect;btk_wpac_2021_18];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Wpac 19 ... NYATOH around 2021-11-30-21Z
# my at https://twitter.com/elioeFIN/status/1465789545178402816

nhc_wpac_2021_19 = [15.4,135.3,75;18.9,137.2,90;22.6,141.4,65];
my_wpac_2021_19 = [15.5,135.4,75;18.7,137.1,90;22.4,141.2,65];
btk_wpac_2021_19 = [15.8,135.5,65;19.5,137.5,125;26.2,144.3,65]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2021_19];
myvect = [myvect;my_wpac_2021_19];
btkvect = [btkvect;btk_wpac_2021_19];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Wpac 20 ... NYATOH around 2021-12-01-03Z
# my at https://twitter.com/elioeFIN/status/1465874055354097670

nhc_wpac_2021_20 = [16.3,135.6,90;20.2,138.3,85;24.6,143.1,65];
my_wpac_2021_20 = [16.1,135.3,85;20.0,138.1,80;24.0,142.4,65];
btk_wpac_2021_20 = [16.6,135.6,75;21.0,138.8,125;28.5,146.6,40]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2021_20];
myvect = [myvect;my_wpac_2021_20];
btkvect = [btkvect;btk_wpac_2021_20];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Wpac 21 ... NYATOH around 2021-12-01-21Z
# my at https://twitter.com/elioeFIN/status/1466144957710979074

nhc_wpac_2021_21 = [19.7,137.5,95;24.4,142.6,60];
my_wpac_2021_21 = [19.8,137.6,90;23.9,142.2,55];
btk_wpac_2021_21 = [19.5,137.5,125;26.2,144.3,65]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2021_21];
myvect = [myvect;my_wpac_2021_21];
btkvect = [btkvect;btk_wpac_2021_21];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Wpac 22 ... NYATOH around 2021-12-02-21Z
# my at https://twitter.com/elioeFIN/status/1466505856019800075

nhc_wpac_2021_22 = [23.9,142.6,80];
my_wpac_2021_22 = [24.0,142.5,80];
btk_wpac_2021_22 = [26.2,144.3,65]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2021_22];
myvect = [myvect;my_wpac_2021_22];
btkvect = [btkvect;btk_wpac_2021_22];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;3];

# Shem 02 ... 07U/03P around 2021-12-11-21Z
# my at https://twitter.com/elioeFIN/status/1469777366570446855

nhc_shem_2022_02 = [15.9,159.0,60;19.0,163.0,75;20.3,165.8,75;21.5,169.2,70];
my_shem_2022_02 = [16.4,159.0,55;19.3,163.1,70;22.9,167.7,65;28.5,172.5,65];
btk_shem_2022_02 = [16.4,158.8,65;20.1,163.8,55;24.2,170.6,55;30.6,179.0,55]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2022_02];
myvect = [myvect;my_shem_2022_02];
btkvect = [btkvect;btk_shem_2022_02];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 03 ... RUBY around 2021-12-12-21Z
# my at https://twitter.com/elioeFIN/status/1470129341535330310

nhc_shem_2022_03 = [19.4,163.3,85;22.9,170.0,80;27.9,174.9,70];
my_shem_2022_03 = [19.4,163.1,80;23.0,169.4,70;29.3,175.1,60];
btk_shem_2022_03 = [20.1,163.8,55;24.2,170.6,55;30.6,179.0,55]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2022_03];
myvect = [myvect;my_shem_2022_03];
btkvect = [btkvect;btk_shem_2022_03];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Wpac 23 ... RAI around 2021-12-13-21Z
# my at https://twitter.com/elioeFIN/status/1470492116963020806

nhc_wpac_2021_23 = [8.8,134.1,75;9.8,129.2,100;10.4,124.4,90;11.4,120.0,85;12.8,115.9,85];
my_wpac_2021_23 = [8.6,134.4,70;9.6,129.7,95;10.4,124.7,90;11.5,120.0,80;12.5,115.6,90];
btk_wpac_2021_23 = [8.7,133.4,65;9.4,128.9,125;10.2,122.5,110;10.7,117.4,90;12.6,112.2,130]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2021_23];
myvect = [myvect;my_wpac_2021_23];
btkvect = [btkvect;btk_wpac_2021_23];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 24 ... RAI around 2021-12-14-03Z
# my at https://twitter.com/elioeFIN/status/1470581611666231302

nhc_wpac_2021_24 = [9.1,132.1,80;9.9,127.7,95;10.6,123.0,85;11.7,118.4,85;13.4,114.7,90];
my_wpac_2021_24 = [9.1,132.6,80;10.0,128.0,95;10.5,122.9,80;11.8,118.2,80;13.0,114.0,90];
btk_wpac_2021_24 = [8.8,132.4,70;9.7,127.6,150;10.0,121.1,95;11.0,115.9,100;13.1,111.4,120]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2021_24];
myvect = [myvect;my_wpac_2021_24];
btkvect = [btkvect;btk_wpac_2021_24];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 25 ... RAI around 2021-12-14-21Z
# my at https://twitter.com/elioeFIN/status/1470863666178404353

nhc_wpac_2021_25 = [9.9,128.5,80;10.5,123.0,85;11.3,118.3,90;12.7,113.7,105;15.1,111.5,90];
my_wpac_2021_25 = [9.8,128.6,85;10.2,123.3,80;11.2,118.2,85;12.8,113.3,95;15.2,111.1,75];
btk_wpac_2021_25 = [9.4,128.9,125;10.2,122.5,110;10.7,117.4,90;12.6,112.2,130;15.9,110.7,75]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2021_25];
myvect = [myvect;my_wpac_2021_25];
btkvect = [btkvect;btk_wpac_2021_25];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 26 ... RAI around 2021-12-15-21Z
# my at https://twitter.com/elioeFIN/status/1471219146352386049

nhc_wpac_2021_26 = [10.0,123.5,120;11.0,118.2,100;12.5,113.4,110;14.7,110.8,75;18.1,111.1,40];
my_wpac_2021_26 = [9.9,123.2,110;11.0,117.8,95;12.6,112.6,100;14.9,110.4,70;18.1,111.3,40];
btk_wpac_2021_26 = [10.2,122.5,110;10.7,117.4,90;12.6,112.2,130;15.9,110.7,75;19.9,113.1,40]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2021_26];
myvect = [myvect;my_wpac_2021_26];
btkvect = [btkvect;btk_wpac_2021_26];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 27 ... RAI around 2021-12-16-21Z
# my at https://twitter.com/elioeFIN/status/1471582162189176842

nhc_wpac_2021_27 = [10.9,116.7,100;12.7,112.0,105;15.6,110.0,75;18.3,111.0,40];
my_wpac_2021_27 = [10.9,116.8,95;12.9,111.7,95;16.1,109.9,75;18.7,111.1,45];
btk_wpac_2021_27 = [10.7,117.4,90;12.6,112.2,130;15.9,110.7,75;19.9,113.1,40]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2021_27];
myvect = [myvect;my_wpac_2021_27];
btkvect = [btkvect;btk_wpac_2021_27];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Wpac 28 ... RAI around 2021-12-17-03Z
# my at https://twitter.com/elioeFIN/status/1471674817543913476

nhc_wpac_2021_28 = [10.7,115.5,105;12.9,111.2,100;16.1,110.1,70;18.6,111.6,40];
my_wpac_2021_28 = [10.9,115.4,95;13.0,110.8,90;17.0,110.0,60;19.4,111.7,40];
btk_wpac_2021_28 = [11.0,115.9,100;13.1,111.4,120;17.3,110.8,70;20.6,113.8,35];
nhcvect = [nhcvect;nhc_wpac_2021_28];
myvect = [myvect;my_wpac_2021_28];
btkvect = [btkvect;btk_wpac_2021_28];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 04 ... TD03F / 05P around 2022-01-08-21Z
# my at https://twitter.com/elioeFIN/status/1479922315056095236

nhc_shem_2022_04 = [19.4,175.2,45;19.8,173.7,45;21.0,172.7,40;24.0,175.1,40;26.7,177.0,35];
my_shem_2022_04 = [19.4,176.0,45;19.9,175.0,55;22.0,175.0,65;25.0,176.1,50;27.7,178.3,40];
btk_shem_2022_04 = [20.0,177.1,45;20.7,174.3,45;21.8,173.7,55;24.9,175.1,45;27.5,177.5,60]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2022_04];
myvect = [myvect;my_shem_2022_04];
btkvect = [btkvect;btk_shem_2022_04];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 05 ... TD03F / 05P around 2022-01-09-03Z
# my at https://twitter.com/elioeFIN/status/1480008460540469248

nhc_shem_2022_05 = [19.1,175.0,45;19.8,173.3,45;21.5,173.2,40;24.3,175.7,40;27.1,177.4,35];
my_shem_2022_05 = [19.1,175.7,45;19.6,174.6,50;21.3,174.5,50;24.0,176.5,45;27.1,178.3,40];
btk_shem_2022_05 = [20.1,176.6,40;20.8,173.8,45;22.8,173.9,60;25.6,175.9,45;27.9,177.4,50]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2022_05];
myvect = [myvect;my_shem_2022_05];
btkvect = [btkvect;btk_shem_2022_05];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 06 ... TIFFANY around 2022-01-10-21Z
# my at https://twitter.com/elioeFIN/status/1480644282570711049

nhc_shem_2022_06 = [14.5,137.2,55;14.8,133.3,30];
my_shem_2022_06 = [14.3,137.4,55;14.4,133.2,35];
btk_shem_2022_06 = [14.8,136.7,55;15.1,131.8,25]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2022_06];
myvect = [myvect;my_shem_2022_06];
btkvect = [btkvect;btk_shem_2022_06];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 07 ... CODY around 2022-01-10-21Z
# my at https://twitter.com/elioeFIN/status/1480645767492739077

nhc_shem_2022_07 = [21.8,173.5,55;24.4,175.4,55;27.4,178.4,50];
my_shem_2022_07 = [21.8,173.5,50;24.4,175.6,50;26.9,177.8,40];
btk_shem_2022_07 = [21.8,173.7,55;24.9,175.1,45;27.5,177.5,60]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2022_07];
myvect = [myvect;my_shem_2022_07];
btkvect = [btkvect;btk_shem_2022_07];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 08 ... 01 / 93S around 2022-01-21-21Z
# my at https://twitter.com/elioeFIN/status/1484628149069824000
# (no JTWC forecast)

# Shem 09 ... 01 / 93S around 2022-01-22-15Z
# my at https://twitter.com/elioeFIN/status/1484899778421002243
# (no JTWC forecast)

# Shem 10 ... BATSIRAI around 2022-01-28-03Z
# my at https://twitter.com/elioeFIN/status/1486896816838873091

nhc_shem_2022_10 = [19.4,72.1,50;19.5,68.8,55;18.8,65.8,65;18.8,63.4,70;19.6,60.0,60];
my_shem_2022_10 = [19.1,72.6,45;19.4,69.3,50;19.0,66.2,50;18.7,63.0,50;19.2,59.5,50];
btk_shem_2022_10 = [18.3,71.6,55;17.5,68.1,90;16.3,64.5,90;16.4,62.2,65;18.1,58.3,105]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2022_10];
myvect = [myvect;my_shem_2022_10];
btkvect = [btkvect;btk_shem_2022_10];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 11 ... BATSIRAI around 2022-01-28-15Z
# my at https://twitter.com/elioeFIN/status/1487080764755820545

nhc_shem_2022_11 = [19.2,70.6,50;18.6,66.6,70;18.2,63.3,75;18.4,60.3,65;18.8,57.6,60];
my_shem_2022_11 = [19.1,70.7,50;18.3,67.1,65;17.9,63.6,70;18.3,60.2,70;19.4,57.2,65];
btk_shem_2022_11 = [17.9,69.8,75;16.6,65.9,95;15.8,63.2,75;17.1,60.0,80;18.8,56.7,125]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2022_11];
myvect = [myvect;my_shem_2022_11];
btkvect = [btkvect;btk_shem_2022_11];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 12 ... BATSIRAI around 2022-01-30-03Z
# my at https://twitter.com/elioeFIN/status/1487625521349500930

nhc_shem_2022_12 = [16.8,64.6,90;17.2,61.2,95;18.2,57.6,100;18.9,54.2,100;18.9,52.0,100];
my_shem_2022_12 = [16.5,64.6,85;16.9,61.3,85;18.2,57.6,90;19.1,54.8,100;19.2,52.6,95];
btk_shem_2022_12 = [16.3,64.5,90;16.4,62.2,65;18.1,58.3,105;19.0,55.7,115;19.3,53.8,110]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2022_12];
myvect = [myvect;my_shem_2022_12];
btkvect = [btkvect;btk_shem_2022_12];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 13 ... BATSIRAI around 2022-01-31-15Z
# my at https://twitter.com/elioeFIN/status/1488166788055670791

nhc_shem_2022_13 = [16.7,60.1,85;18.3,57.0,90;18.7,54.7,105;18.8,52.4,105;19.5,50.0,90];
my_shem_2022_13 = [16.9,60.0,80;18.5,56.8,95;18.8,54.2,105;19.0,52.5,115;20.0,49.7,100];
btk_shem_2022_13 = [17.1,60.0,80;18.8,56.7,125;19.2,55.0,110;19.4,52.5,115;20.8,49.4,100]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2022_13];
myvect = [myvect;my_shem_2022_13];
btkvect = [btkvect;btk_shem_2022_13];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 14 ... BATSIRAI around 2022-02-01-03Z
# my at https://twitter.com/elioeFIN/status/1488341853258850304

nhc_shem_2022_14 = [18.0,59.0,70;18.9,55.7,90;19.0,53.3,105;19.3,50.7,110;19.4,48.1,90];
my_shem_2022_14 = [18.0,59.1,75;18.9,55.9,90;19.2,53.1,100;19.5,50.8,105;19.8,47.9,60];
btk_shem_2022_14 = [18.1,58.3,105;19.0,55.7,115;19.3,53.8,110;19.9,51.3,105;21.5,46.6,60]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2022_14];
myvect = [myvect;my_shem_2022_14];
btkvect = [btkvect;btk_shem_2022_14];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 15 ... 16U/09P around 2022-02-01-15Z
# my at https://twitter.com/elioeFIN/status/1488529276517376019

nhc_shem_2022_15 = [15.6,156.6,35;16.7,160.3,40];
my_shem_2022_15 = [15.7,156.3,35;17.1,159.7,35];
btk_shem_2022_15 = [15.5,156.1,25;17.6,160.0,20]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2022_15];
myvect = [myvect;my_shem_2022_15];
btkvect = [btkvect;btk_shem_2022_15];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 16 ... BATSIRAI around 2022-02-01-15Z
# my at https://twitter.com/elioeFIN/status/1488530064375525381

nhc_shem_2022_16 = [18.4,56.7,100;19.1,54.0,105;19.3,51.5,110;20.1,48.4,90;21.0,44.2,55];
my_shem_2022_16 = [18.4,56.8,100;19.0,53.9,100;19.0,51.3,110;19.7,48.2,90;20.7,44.3,35];
btk_shem_2022_16 = [18.8,56.7,125;19.2,55.0,110;19.4,52.5,115;20.8,49.4,100;22.7,44.2,35]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2022_16];
myvect = [myvect;my_shem_2022_16];
btkvect = [btkvect;btk_shem_2022_16];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 17 ... 16U/09P around 2022-02-03-03Z
# my at https://twitter.com/elioeFIN/status/1489069380768043020

nhc_shem_2022_17 = [18.2,163.5,25];
my_shem_2022_17 = [18.3,163.4,25];
btk_shem_2022_17 = [19.4,162.8,30]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2022_17];
myvect = [myvect;my_shem_2022_17];
btkvect = [btkvect;btk_shem_2022_17];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;3];

# Shem 18 ... BATSIRAI around 2022-02-03-03Z
# my at https://twitter.com/elioeFIN/status/1489073113883189253

nhc_shem_2022_18 = [19.4,53.3,105;19.6,50.1,110;20.6,45.3,55;22.0,40.8,50;22.9,39.1,65];
my_shem_2022_18 = [19.4,53.3,105;19.6,50.0,110;21.0,44.9,45;22.1,40.4,50;23.1,39.2,60];
btk_shem_2022_18 = [19.3,53.8,110;19.9,51.3,105;21.5,46.6,60;23.0,42.4,40;26.2,41.4,45]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2022_18];
myvect = [myvect;my_shem_2022_18];
btkvect = [btkvect;btk_shem_2022_18];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 19 ... DOVI around 2022-02-09-21Z
# my at https://twitter.com/elioeFIN/status/1491517859238920194

nhc_shem_2022_19 = [23.0,166.2,65;29.5,165.5,65];
my_shem_2022_19 = [23.2,166.6,60;29.6,166.1,55];
btk_shem_2022_19 = [23.8,166.4,80;31.8,166.2,65]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2022_19];
myvect = [myvect;my_shem_2022_19];
btkvect = [btkvect;btk_shem_2022_19];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 20 ... DUMAKO around 2022-02-13-21Z
# my at https://twitter.com/elioeFIN/status/1492964339816579076

nhc_shem_2022_20 = [16.7,53.7,55;15.9,50.0,45;14.6,47.0,25];
my_shem_2022_20 = [16.6,53.4,50;16.0,49.7,40;14.5,45.5,25];
btk_shem_2022_20 = [16.8,52.9,45;17.1,48.4,30;16.7,43.5,25]; # JTWC best track (except day 3)
nhcvect = [nhcvect;nhc_shem_2022_20];
myvect = [myvect;my_shem_2022_20];
btkvect = [btkvect;btk_shem_2022_20];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 21 ... DUMAKO around 2022-02-14-21Z
# my at https://twitter.com/elioeFIN/status/1493325758604926976

nhc_shem_2022_21 = [16.3,48.9,40];
my_shem_2022_21 = [16.2,49.1,30];
btk_shem_2022_21 = [17.2,48.5,35]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2022_21];
myvect = [myvect;my_shem_2022_21];
btkvect = [btkvect;btk_shem_2022_21];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;3];

# Shem 22 ... 05/13S around 2022-02-16-21Z
# my at https://twitter.com/elioeFIN/status/1494061228284694533

nhc_shem_2022_22 = [14.3,64.5,55;15.5,61.8,70;16.9,59.0,80;17.5,56.7,95;18.0,53.8,95];
my_shem_2022_22 = [14.1,64.2,50;15.5,61.3,60;17.1,58.5,75;17.7,56.2,90;18.3,53.0,95];
btk_shem_2022_22 = [13.7,63.7,50;15.1,60.5,75;16.8,57.1,85;17.6,54.6,115;18.5,52.1,90]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2022_22];
myvect = [myvect;my_shem_2022_22];
btkvect = [btkvect;btk_shem_2022_22];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 23 ... EMNATI around 2022-02-17-15Z
# my at https://twitter.com/elioeFIN/status/1494329736549396484

nhc_shem_2022_23 = [14.7,61.0,75;16.3,57.9,85;17.2,55.5,95;17.9,52.8,90;18.8,49.7,75];
my_shem_2022_23 = [14.7,61.7,60;16.7,58.7,70;18.0,56.0,95;18.3,53.1,105;19.4,49.8,110];
btk_shem_2022_23 = [14.5,61.6,75;16.3,58.3,75;17.4,55.4,115;18.2,52.7,95;20.8,49.5,75]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2022_23];
myvect = [myvect;my_shem_2022_23];
btkvect = [btkvect;btk_shem_2022_23];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 24 ... EMNATI around 2022-02-18-03Z
# my at https://twitter.com/elioeFIN/status/1494509008350236686

nhc_shem_2022_24 = [14.6,59.6,75;16.0,57.0,85;17.6,54.9,95;18.1,51.9,80;19.4,48.2,65];
my_shem_2022_24 = [15.2,59.7,70;16.9,56.8,95;17.9,54.4,110;18.2,51.4,100;19.9,47.7,70];
btk_shem_2022_24 = [15.4,59.8,65;17.1,56.6,100;17.7,54.0,105;19.1,51.2,90;22.6,47.8,65]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2022_24];
myvect = [myvect;my_shem_2022_24];
btkvect = [btkvect;btk_shem_2022_24];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 25 ... EMNATI around 2022-02-20-21Z
# my at https://twitter.com/elioeFIN/status/1495498312765607939

nhc_shem_2022_25 = [19.0,51.6,120;21.5,47.8,85;24.7,44.1,45;27.8,41.6,50;31.9,41.3,50];
my_shem_2022_25 = [19.1,51.7,110;21.6,48.1,75;25.1,44.2,40;28.7,41.3,45;31.6,41.0,45];
btk_shem_2022_25 = [18.5,52.1,90;21.6,48.8,75;24.8,44.1,35;28.9,41.4,50;34.13,42.8,56.0]; # JTWC best track (except day 5 MFR)
nhcvect = [nhcvect;nhc_shem_2022_25];
myvect = [myvect;my_shem_2022_25];
btkvect = [btkvect;btk_shem_2022_25];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 26 ... EMNATI around 2022-02-21-15Z
# my at https://twitter.com/elioeFIN/status/1495776195610390528
# (no JTWC forecast)

# Shem 27 ... EMNATI around 2022-02-21-21Z
# my at https://twitter.com/elioeFIN/status/1495873266195521537

nhc_shem_2022_27 = [21.4,48.7,90;24.8,45.3,55;28.4,42.6,45;31.6,43.3,45];
my_shem_2022_27 = [21.5,48.5,95;25.3,44.9,45;29.2,42.2,45;32.2,42.6,50];
btk_shem_2022_27 = [21.6,48.8,75;24.8,44.1,35;28.9,41.4,50;34.13,42.8,56.0]; # JTWC best track (except day 4 MFR)
nhcvect = [nhcvect;nhc_shem_2022_27];
myvect = [myvect;my_shem_2022_27];
btkvect = [btkvect;btk_shem_2022_27];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 28 ... EMNATI around 2022-02-22-21Z
# my at https://twitter.com/elioeFIN/status/1496234667003064330

nhc_shem_2022_28 = [24.9,45.4,55;28.3,43.0,50;31.5,43.3,45];
my_shem_2022_28 = [25.0,45.1,45;28.7,42.5,45;32.0,42.5,45];
btk_shem_2022_28 = [24.8,44.1,35;28.9,41.4,50;34.13,42.8,56.0]; # JTWC best track (except day 3 MFR)
nhcvect = [nhcvect;nhc_shem_2022_28];
myvect = [myvect;my_shem_2022_28];
btkvect = [btkvect;btk_shem_2022_28];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 29 ... ANIKA around 2022-02-25-21Z
# my at https://twitter.com/elioeFIN/status/1497320228744794117

nhc_shem_2022_29 = [13.8,127.4,45;13.9,126.9,45;14.0,126.1,45;15.2,124.2,45;16.5,122.3,45];
my_shem_2022_29 = [13.9,127.3,50; 14.4,126.6,40;15.0,125.4,40;15.7,123.6,45;17.6,120.5,40];
btk_shem_2022_29 = [14.2,126.8,35;15.3,125.9,30;17.5,123.7,20;18.2,121.6,35;20.4,121.1,35]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2022_29];
myvect = [myvect;my_shem_2022_29];
btkvect = [btkvect;btk_shem_2022_29];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 30 ... ANIKA around 2022-02-26-21Z
# my at https://twitter.com/elioeFIN/status/1497682706314022913

nhc_shem_2022_30 = [14.9,125.9,30;15.7,124.6,30];
my_shem_2022_30 = [14.8,125.9,40;15.3,124.4,40];
btk_shem_2022_30 = [15.3,125.9,30;17.5,123.7,20]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2022_30];
myvect = [myvect;my_shem_2022_30];
btkvect = [btkvect;btk_shem_2022_30];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 31 ... VERNON around 2022-02-27-03Z
# my at https://twitter.com/elioeFIN/status/1497771546504536068

nhc_shem_2022_31 = [12.7,86.9,90;15.0,85.4,80;18.0,84.1,80;21.5,81.9,75;25.5,79.1,65];
my_shem_2022_31 = [13.2,87.0,80;15.4,85.2,80;18.9,83.5,80;22.5,80.8,70;27.2,77.6,50];
btk_shem_2022_31 = [13.8,87.8,45;14.8,87.0,45;17.7,84.6,50;22.0,82.3,60;27.2,80.3,45]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2022_31];
myvect = [myvect;my_shem_2022_31];
btkvect = [btkvect;btk_shem_2022_31];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 32 ... VERNON around 2022-03-01-03Z
# my at https://twitter.com/elioeFIN/status/1498499300715896833

nhc_shem_2022_32 = [16.9,84.9,50;19.4,82.3,55;23.2,79.5,55;26.9,77.5,50];
my_shem_2022_32 = [17.8,84.3,55;20.5,81.6,60;24.0,79.0,50;27.8,77.7,45];
btk_shem_2022_32 = [17.7,84.6,50;22.0,82.3,60;27.2,80.3,45;30.4,79.5,45]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2022_32];
myvect = [myvect;my_shem_2022_32];
btkvect = [btkvect;btk_shem_2022_32];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Nio 01 ... BOB 01 / 90B around 2022-03-04-15Z
# my at https://twitter.com/elioeFIN/status/1499769617052581900
# (no JTWC forecast)

# Shem 33 ... GOMBE around 2022-03-08-21Z
# my at https://twitter.com/elioeFIN/status/1501299306749480968

nhc_shem_2022_33 = [15.2,44.6,50;15.6,42.2,75;15.9,39.6,65;16.1,38.1,40;17.1,38.0,30];
my_shem_2022_33 = [15.1,44.7,55;15.4,42.6,80;15.5,39.3,70;15.5,37.8,35;16.9,38.3,30];
btk_shem_2022_33 = [15.3,44.4,50;15.8,41.3,85;15.1,38.4,40;15.6,35.1,25;17.1,35.4,20]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2022_33];
myvect = [myvect;my_shem_2022_33];
btkvect = [btkvect;btk_shem_2022_33];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 34 ... GOMBE around 2022-03-09-21Z
# my at https://twitter.com/elioeFIN/status/1501657851927973894

nhc_shem_2022_34 = [15.5,41.0,100;15.5,38.5,55;15.6,37.5,30;16.2,37.6,25];
my_shem_2022_34 = [15.6,41.3,100;15.4,38.6,45;15.7,37.3,25;16.8,37.7,25];
btk_shem_2022_34 = [15.8,41.3,85;15.1,38.4,40;15.6,35.1,25;17.1,35.4,20]; # JTWC best track (days 1-2 only)
nhcvect = [nhcvect;nhc_shem_2022_34];
myvect = [myvect;my_shem_2022_34];
btkvect = [btkvect;btk_shem_2022_34];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 35 ... GOMBE around 2022-03-10-21Z
# my at https://twitter.com/elioeFIN/status/1502024923782553607

nhc_shem_2022_35 = [15.6,38.7,50;16.0,37.2,30;17.3,37.5,30;18.8,38.6,35;20.1,39.7,45];
my_shem_2022_35 = [15.4,38.6,45;16.0,37.0,25;17.0,36.9,25;18.8,38.0,35;19.9,39.9,45];
btk_shem_2022_35 = [15.1,38.4,40;15.6,35.1,25;17.1,35.4,20;18.3,37.4,20;18.4,37.9,25]; # JTWC best track (day 1 only)
nhcvect = [nhcvect;nhc_shem_2022_35];
myvect = [myvect;my_shem_2022_35];
btkvect = [btkvect;btk_shem_2022_35];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 36 ... GOMBE around 2022-03-11-03Z
# my at https://twitter.com/elioeFIN/status/1502112489613451266

nhc_shem_2022_36 = [15.2,38.3,35;15.7,36.9,30;17.4,37.5,30;18.7,38.6,35;19.5,39.5,50];
my_shem_2022_36 = [15.2,38.0,35;15.8,36.4,25;17.5,37.6,30;19.0,38.5,40;20.1,39.5,45];
btk_shem_2022_36 = [15.1,37.3,30;15.9,34.7,25;17.4,35.7,20;18.5,37.3,25;17.9,37.8,25]; # no JTWC btk values
nhcvect = [nhcvect;nhc_shem_2022_36];
myvect = [myvect;my_shem_2022_36];
btkvect = [btkvect;btk_shem_2022_36];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 37 ... GOMBE around 2022-03-11-15Z
# my at https://twitter.com/elioeFIN/status/1502298084440780805
# (no JTWC forecast)

# Shem 38 ... GOMBE around 2022-03-11-21Z
# my at https://twitter.com/elioeFIN/status/1502384130327252994

nhc_shem_2022_38 = [15.7,36.4,30;17.0,36.3,30;18.3,37.6,30;18.7,38.0,30;19.1,38.3,25];
my_shem_2022_38 = [15.7,36.6,25;16.9,36.2,25;18.8,37.1,25;19.3,37.7,35;19.6,38.6,35];
btk_shem_2022_38 = [15.6,35.1,25;17.1,35.4,20;18.3,37.4,20;18.4,37.9,25;17.9,37.4,25]; # no JTWC btk values
nhcvect = [nhcvect;nhc_shem_2022_38];
myvect = [myvect;my_shem_2022_38];
btkvect = [btkvect;btk_shem_2022_38];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 39 ... 27U/20S around 2022-03-13-21Z
# my at https://twitter.com/elioeFIN/status/1503113211171811332

nhc_shem_2022_39 = [15.7,99.3,45;16.4,95.5,45;17.0,91.6,40;17.5,88.4,30];
my_shem_2022_39 = [15.5,99.5,45;16.1,95.5,50;16.7,91.6,35;17.3,88.4,25];
btk_shem_2022_39 = [16.7,98.8,65;17.6,95.3,55;19.6,92.6,40;23.7,93.9,30]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2022_39];
myvect = [myvect;my_shem_2022_39];
btkvect = [btkvect;btk_shem_2022_39];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 40 ... 28U/93S around 2022-03-20-09Z
# my at https://twitter.com/elioeFIN/status/1505464868803166209
# (no JTWC forecast)

# Nio 02 ... BOB 02 / 91B around 2022-03-20-09Z
# my at https://twitter.com/elioeFIN/status/1505480761390080001
# (no JTWC forecast)

# Nio 03 ... BOB 02 / 91B around 2022-03-20-21Z
# my at https://twitter.com/elioeFIN/status/1505648398887759874
# (no JTWC forecast)

# Shem 41 ... CHARLOTTE around 2022-03-22-03Z
# my at https://twitter.com/elioeFIN/status/1506100902448574466

nhc_shem_2022_41 = [17.5,107.9,80;18.9,106.6,50;22.4,107.2,40;26.7,109.9,40];
my_shem_2022_41 = [17.3,107.9,80;19.0,106.8,50;22.2,107.6,40;27.6,111.8,45];
btk_shem_2022_41 = [18.3,108.9,75;19.9,107.4,35;24.8,106.9,30;29.4,108.6,35]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2022_41];
myvect = [myvect;my_shem_2022_41];
btkvect = [btkvect;btk_shem_2022_41];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 42 ... CHARLOTTE around 2022-03-22-09Z
# my at https://twitter.com/elioeFIN/status/1506200444841996289

nhc_shem_2022_42 = [18.0,107.4,65;19.8,106.5,50;24.2,107.7,45;27.6,109.7,35];
my_shem_2022_42 = [17.8,107.3,65;19.7,106.5,45;24.0,108.0,40;28.8,112.3,40];
btk_shem_2022_42 = [19.1,108.5,65;21.1,107.3,30;26.5,107.2,40;28.4,108.9,35]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2022_42];
myvect = [myvect;my_shem_2022_42];
btkvect = [btkvect;btk_shem_2022_42];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 43 ... HALIMA around 2022-03-24-03Z
# my at https://twitter.com/elioeFIN/status/1506827936527228938

nhc_shem_2022_43 = [14.0,74.6,90;17.3,74.7,110;21.7,76.2,95;24.3,78.4,70;25.1,81.5,55];
my_shem_2022_43 = [14.0,74.8,85;16.9,75.0,100;21.3,76.8,80;23.5,79.4,60;24.3,82.5,40];
btk_shem_2022_43 = [13.4,73.7,95;15.5,73.5,90;19.5,75.8,55;21.9,79.8,45;22.0,82.3,50]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2022_43];
myvect = [myvect;my_shem_2022_43];
btkvect = [btkvect;btk_shem_2022_43];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 44 ... HALIMA around 2022-03-25-15Z
# my at https://twitter.com/elioeFIN/status/1507370399188852739

nhc_shem_2022_44 = [17.6,73.9,120;20.6,76.1,90;21.4,79.0,70;21.1,80.6,60;20.6,81.6,55];
my_shem_2022_44 = [17.5,73.9,120;20.4,76.4,85;21.8,79.3,60;21.3,81.3,55;21.0,82.7,55];
btk_shem_2022_44 = [17.3,74.4,65;21.0,77.9,45;22.3,81.3,45;21.4,82.5,40;19.5,82.5,45]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2022_44];
myvect = [myvect;my_shem_2022_44];
btkvect = [btkvect;btk_shem_2022_44];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 45 ... HALIMA around 2022-03-26-03Z
# my at https://twitter.com/elioeFIN/status/1507553744954830859

nhc_shem_2022_45 = [19.1,74.9,110;20.9,78.0,75;20.7,80.4,60;19.7,81.7,60;19.0,82.5,65];
my_shem_2022_45 = [19.1,75.2,100;20.7,78.2,75;20.5,80.7,60;19.6,82.1,55;19.4,83.4,65];
btk_shem_2022_45 = [19.5,75.8,55;21.9,79.8,45;22.0,82.3,50;20.2,82.2,45;19.5,83.3,35]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2022_45];
myvect = [myvect;my_shem_2022_45];
btkvect = [btkvect;btk_shem_2022_45];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 46 ... HALIMA around 2022-03-27-03Z
# my at https://twitter.com/elioeFIN/status/1507918745527889920

nhc_shem_2022_46 = [22.0,79.8,60;21.8,82.0,50;20.8,82.5,35;19.6,82.2,30];
my_shem_2022_46 = [21.7,80.1,55;21.3,82.8,45;20.1,82.7,40;19.3,81.9,35];
btk_shem_2022_46 = [21.9,79.8,45;22.0,82.3,50;20.2,82.2,45;19.5,83.3,35]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2022_46];
myvect = [myvect;my_shem_2022_46];
btkvect = [btkvect;btk_shem_2022_46];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 47 ... HALIMA around 2022-03-28-15Z
# my at https://twitter.com/elioeFIN/status/1508456497616982026

nhc_shem_2022_47 = [21.4,82.9,35];
my_shem_2022_47 = [21.3,82.6,45];
btk_shem_2022_47 = [21.4,82.5,40]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2022_47];
myvect = [myvect;my_shem_2022_47];
btkvect = [btkvect;btk_shem_2022_47];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;3];

# Shem 48 ... HALIMA around 2022-03-29-15Z
# my at https://twitter.com/elioeFIN/status/1508815573383364629

nhc_shem_2022_48 = [20.2,82.2,40;19.8,82.9,35;19.4,82.7,30];
my_shem_2022_48 = [20.1,82.0,50;19.3,83.1,35;18.6,83.0,30];
btk_shem_2022_48 = [19.5,82.5,45;19.7,84.3,35;19.4,84.6,25]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2022_48];
myvect = [myvect;my_shem_2022_48];
btkvect = [btkvect;btk_shem_2022_48];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 49 ... HALIMA around 2022-03-30-15Z
# my at https://twitter.com/elioeFIN/status/1509182074929954821

nhc_shem_2022_49 = [19.1,83.5,35;18.7,83.2,30];
my_shem_2022_49 = [19.0,83.2,40;18.4,83.1,30];
btk_shem_2022_49 = [19.7,84.3,35;19.4,84.6,25]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2022_49];
myvect = [myvect;my_shem_2022_49];
btkvect = [btkvect;btk_shem_2022_49];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 50 ... HALIMA around 2022-03-31-15Z
# my at https://twitter.com/elioeFIN/status/1509544089120817159

nhc_shem_2022_50 = [19.3,84.3,35;19.2,82.3,35;18.5,78.6,30];
my_shem_2022_50 = [19.2,84.1,35;19.1,82.6,30;18.9,79.0,30];
btk_shem_2022_50 = [19.4,84.6,25;18.8,84.5,25;18.7,82.5,20]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2022_50];
myvect = [myvect;my_shem_2022_50];
btkvect = [btkvect;btk_shem_2022_50];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 51 ... 10F / 23P around 2022-04-04-21Z
# my at https://twitter.com/elioeFIN/status/1511087243158564870

nhc_shem_2022_51 = [19.3,161.1,65;21.6,162.1,55;23.8,163.1,50;25.7,164.7,45;26.7,165.7,40];
my_shem_2022_51 = [19.7,161.8,60;22.0,162.1,55;24.5,162.2,45;26.1,163.7,45;26.4,164.2,35];
btk_shem_2022_51 = [18.8,161.7,50;21.7,164.1,55;24.7,165.2,40;25.9,167.8,40;25.4,170.4,30]; # JTWC best track (except day 5)
nhcvect = [nhcvect;nhc_shem_2022_51];
myvect = [myvect;my_shem_2022_51];
btkvect = [btkvect;btk_shem_2022_51];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 52 ... FILI around 2022-04-05-03Z
# my at https://twitter.com/elioeFIN/status/1511173106760572930

nhc_shem_2022_52 = [19.2,160.6,60;21.8,161.4,50;24.2,162.5,45;26.1,164.2,40];
my_shem_2022_52 = [19.3,161.3,55;21.7,161.9,55;24.2,163.0,40;25.6,164.8,40];
btk_shem_2022_52 = [19.3,162.2,60;22.4,164.3,50;25.3,165.8,35;25.8,168.3,40]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2022_52];
myvect = [myvect;my_shem_2022_52];
btkvect = [btkvect;btk_shem_2022_52];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 53 ... FILI around 2022-04-05-09Z
# my at https://twitter.com/elioeFIN/status/1511264581414526977

nhc_shem_2022_53 = [19.9,161.8,55;22.5,162.8,55;25.1,164.1,50];
my_shem_2022_53 = [19.8,161.6,55;22.4,162.7,50;24.8,164.9,50];
btk_shem_2022_53 = [19.8,162.8,55;23.0,164.5,45;25.8,166.4,35]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2022_53];
myvect = [myvect;my_shem_2022_53];
btkvect = [btkvect;btk_shem_2022_53];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 54 ... FILI around 2022-04-05-21Z
# my at https://twitter.com/elioeFIN/status/1511452211557060616

nhc_shem_2022_54 = [21.0,163.4,60;23.5,165.1,50;24.7,167.3,40];
my_shem_2022_54 = [21.3,163.1,65;23.6,164.7,55;24.6,167.3,40];
btk_shem_2022_54 = [21.7,164.1,55;24.7,165.2,40;25.9,167.8,40]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2022_54];
myvect = [myvect;my_shem_2022_54];
btkvect = [btkvect;btk_shem_2022_54];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 55 ... FILI around 2022-04-06-03Z
# my at https://twitter.com/elioeFIN/status/1511534745150185473

nhc_shem_2022_55 = [22.1,163.8,50;24.6,165.9,40;25.3,167.9,35];
my_shem_2022_55 = [22.1,163.9,60;24.2,165.9,45;24.8,168.4,35];
btk_shem_2022_55 = [22.4,164.3,50;25.3,165.8,35;25.8,168.3,40]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2022_55];
myvect = [myvect;my_shem_2022_55];
btkvect = [btkvect;btk_shem_2022_55];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Wpac 01 ... TD / 02W around 2022-04-07-03Z
# my at https://twitter.com/elioeFIN/status/1511894463957938177

nhc_wpac_2022_01 = [4.7,146.7,35;6.7,145.2,50;9.8,142.9,70;12.7,141.2,85;15.5,140.4,90];
my_wpac_2022_01 = [5.1,146.1,35;6.7,145.1,45;10.3,141.4,65;13.2,140.0,75;15.7,136.8,75];
btk_wpac_2022_01 = [5.1,146.3,40;7.1,144.4,40;10.5,140.1,50;12.5,136.5,55;15.4,135.0,60]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2022_01];
myvect = [myvect;my_wpac_2022_01];
btkvect = [btkvect;btk_wpac_2022_01];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 02 ... TD / 02W around 2022-04-07-15Z
# my at https://twitter.com/elioeFIN/status/1512085682616889349

nhc_wpac_2022_02 = [5.5,145.3,40;7.9,143.1,55;11.2,140.0,70;13.8,137.7,85;16.9,136.1,100];
my_wpac_2022_02 = [5.5,145.4,40;7.7,143.3,55;11.2,139.2,65;14.3,136.9,75;17.1,135.8,80];
btk_wpac_2022_02 = [6.1,145.5,40;8.7,142.6,45;11.5,137.9,55;13.7,135.8,55;16.1,135.3,65]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2022_02];
myvect = [myvect;my_wpac_2022_02];
btkvect = [btkvect;btk_wpac_2022_02];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 03 ... MALAKAS around 2022-04-08-15Z
# my at https://twitter.com/elioeFIN/status/1512444071528353800

nhc_wpac_2022_03 = [9.0,142.8,50;12.0,139.2,70;14.7,136.6,90;16.9,135.6,100;19.2,136.4,100];
my_wpac_2022_03 = [8.7,142.9,55;12.1,138.8,75;15.3,135.9,90;17.5,135.2,95;19.8,135.7,85];
btk_wpac_2022_03 = [8.7,142.6,45;11.5,137.9,55;13.7,135.8,55;16.1,135.3,65;19.0,137.6,95]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2022_03];
myvect = [myvect;my_wpac_2022_03];
btkvect = [btkvect;btk_wpac_2022_03];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 04 ... MALAKAS around 2022-04-09-09Z
# my at https://twitter.com/elioeFIN/status/1512720894875082754

nhc_wpac_2022_04 = [11.2,139.7,60;13.8,136.5,80;16.2,135.8,95;18.5,137.0,85;21.3,138.7,70];
my_wpac_2022_04 = [11.6,139.4,60;14.1,136.0,80;16.5,135.3,95;18.5,136.9,90;21.8,138.0,70];
btk_wpac_2022_04 = [11.2,138.8,55;13.1,136.1,55;15.8,135.0,60;17.9,137.0,90;21.7,138.5,80]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2022_04];
myvect = [myvect;my_wpac_2022_04];
btkvect = [btkvect;btk_wpac_2022_04];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 05 ... MALAKAS around 2022-04-09-15Z
# my at https://twitter.com/elioeFIN/status/1512802768335032320

nhc_wpac_2022_05 = [11.8,138.8,60;14.4,136.0,85;16.4,135.7,100;19.0,137.2,90;22.3,139.3,80];
my_wpac_2022_05 = [12.0,138.4,65;14.5,135.5,85;16.8,135.3,95;19.1,137.2,90;22.7,138.6,75];
btk_wpac_2022_05 = [11.5,137.9,55;13.7,135.8,55;16.1,135.3,65;19.0,137.6,95;22.6,139.2,75]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2022_05];
myvect = [myvect;my_wpac_2022_05];
btkvect = [btkvect;btk_wpac_2022_05];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 06 ... MALAKAS around 2022-04-09-21Z
# my at https://twitter.com/elioeFIN/status/1512894612406513669

nhc_wpac_2022_06 = [12.7,137.9,70;15.3,135.7,90;17.4,136.1,100;20.1,137.5,90;23.3,139.5,80];
my_wpac_2022_06 = [12.5,137.5,70;15.0,135.4,90;17.8,135.7,100;20.3,136.9,90;23.5,139.7,75];
btk_wpac_2022_06 = [12.0,137.0,55;14.6,135.4,50;16.5,135.8,80;19.7,137.5,105;24.5,139.6,70]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2022_06];
myvect = [myvect;my_wpac_2022_06];
btkvect = [btkvect;btk_wpac_2022_06];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 07 ... MALAKAS around 2022-04-10-15Z
# my at https://twitter.com/elioeFIN/status/1513162684308639755

nhc_wpac_2022_07 = [14.6,134.1,75;16.8,133.8,95;19.4,134.9,100;22.8,136.7,85;27.4,139.7,60];
my_wpac_2022_07 = [14.2,134.6,80;16.3,134.4,95;18.8,135.9,95;21.9,137.6,80;26.7,140.7,60];
btk_wpac_2022_07 = [13.7,135.8,55;16.1,135.3,65;19.0,137.6,95;22.6,139.2,75;30.2,143.9,45]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2022_07];
myvect = [myvect;my_wpac_2022_07];
btkvect = [btkvect;btk_wpac_2022_07];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 08 ... MALAKAS around 2022-04-10-21Z
# my at https://twitter.com/elioeFIN/status/1513255257534574596

nhc_wpac_2022_08 = [14.4,134.9,75;16.6,135.1,95;19.2,136.1,100;23.1,138.3,80;27.4,141.5,60];
my_wpac_2022_08 = [14.4,134.9,80;16.5,135.1,95;19.2,136.4,95;22.6,138.6,80;27.8,142.5,65];
btk_wpac_2022_08 = [14.6,135.4,50;16.5,135.8,80;19.7,137.5,105;24.5,139.6,70;31.9,146.0,45]; # JTWC best track (except day 5)
nhcvect = [nhcvect;nhc_wpac_2022_08];
myvect = [myvect;my_wpac_2022_08];
btkvect = [btkvect;btk_wpac_2022_08];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 09 ... MALAKAS around 2022-04-11-15Z
# my at https://twitter.com/elioeFIN/status/1513529873423532035

nhc_wpac_2022_09 = [16.6,135.2,95;19.3,136.4,105;22.9,138.4,90;28.1,142.7,65];
my_wpac_2022_09 = [16.4,135.2,90;18.9,136.6,100;22.8,139.0,85;28.0,143.7,65];
btk_wpac_2022_09 = [16.1,135.3,65;19.0,137.6,95;22.6,139.2,75;30.2,143.9,45]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2022_09];
myvect = [myvect;my_wpac_2022_09];
btkvect = [btkvect;btk_wpac_2022_09];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Wpac 10 ... MALAKAS around 2022-04-11-21Z
# my at https://twitter.com/elioeFIN/status/1513624428713807872

nhc_wpac_2022_10 = [17.0,135.9,90;19.7,137.4,100;23.8,139.6,85;29.3,144.6,60];
my_wpac_2022_10 = [17.0,135.9,90;19.7,137.6,95;23.4,140.1,80;29.1,145.5,65];
btk_wpac_2022_10 = [16.5,135.8,80;19.7,137.5,105;24.5,139.6,70;31.9,146.0,45]; # JTWC best track (days 1-3 only)
nhcvect = [nhcvect;nhc_wpac_2022_10];
myvect = [myvect;my_wpac_2022_10];
btkvect = [btkvect;btk_wpac_2022_10];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Wpac 11 ... MALAKAS around 2022-04-12-15Z
# my at https://twitter.com/elioeFIN/status/1513892079423873035

nhc_wpac_2022_11 = [18.8,137.0,115;22.7,139.0,85;28.8,143.8,65];
my_wpac_2022_11 = [18.9,136.9,105;23.0,139.1,80;28.9,145.5,65];
btk_wpac_2022_11 = [19.0,137.6,95;22.6,139.2,75;30.2,143.9,45]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2022_11];
myvect = [myvect;my_wpac_2022_11];
btkvect = [btkvect;btk_wpac_2022_11];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 56 ... JASMINE around 2022-04-24-21Z
# my at https://twitter.com/elioeFIN/status/1518332372831326209

nhc_shem_2022_56 = [21.0,40.4,40;21.1,42.0,30];
my_shem_2022_56 = [21.1,40.3,55;21.3,42.1,40];
btk_shem_2022_56 = [21.9,41.1,65;23.9,44.8,35]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2022_56];
myvect = [myvect;my_shem_2022_56];
btkvect = [btkvect;btk_shem_2022_56];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Nio 04 ... BOB 03 / 02B around 2022-05-07-15Z
# my at https://twitter.com/elioeFIN/status/1522960965742075904

nhc_nio_2022_04 = [12.7,87.5,65;14.9,85.6,70;16.5,85.1,60;18.0,85.8,50;19.5,87.2,40];
my_nio_2022_04 = [12.8,87.4,65;14.8,85.3,65;16.1,84.8,55;17.7,85.5,45;18.9,86.9,35];
btk_nio_2022_04 = [12.6,87.7,60;14.3,84.8,55;15.0,82.4,55;15.8,81.1,35;15.0,80.2,20]; # JTWC best track
nhcvect = [nhcvect;nhc_nio_2022_04];
myvect = [myvect;my_nio_2022_04];
btkvect = [btkvect;btk_nio_2022_04];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Nio 05 ... BOB 03 / 02B around 2022-05-07-21Z
# my at https://twitter.com/elioeFIN/status/1523048031733661697

nhc_nio_2022_05 = [13.1,87.1,70;15.1,85.6,70;16.7,85.5,60;18.3,86.3,50;19.7,87.8,40];
my_nio_2022_05 = [13.3,87.5,60;15.1,85.5,65;17.0,85.1,55;18.4,85.8,45;19.7,87.5,30];
btk_nio_2022_05 = [13.1,87.2,60;14.5,84.2,60;15.2,81.8,45;15.6,80.6,25;14.7,80.3,20]; # JTWC best track
nhcvect = [nhcvect;nhc_nio_2022_05];
myvect = [myvect;my_nio_2022_05];
btkvect = [btkvect;btk_nio_2022_05];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 57 ... KARIM around 2022-05-07-21Z
# my at https://twitter.com/elioeFIN/status/1523052169129304064

nhc_shem_2022_57 = [11.0,91.0,55;13.8,92.1,60;17.5,93.8,50;19.4,96.4,40];
my_shem_2022_57 = [10.9,91.0,50;13.6,92.2,55;17.6,93.8,45;19.6,96.8,40];
btk_shem_2022_57 = [11.0,90.6,60;13.9,91.1,60;18.7,93.2,45;18.8,97.9,35]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2022_57];
myvect = [myvect;my_shem_2022_57];
btkvect = [btkvect;btk_shem_2022_57];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Nio 06 ... BOB 03 / 02B around 2022-05-08-03Z
# my at https://twitter.com/elioeFIN/status/1523139970998800385

nhc_nio_2022_06 = [13.6,86.5,70;15.3,85.4,60;17.0,85.5,45;18.5,86.5,40;20.1,88.2,35];
my_nio_2022_06 = [13.6,86.5,70;15.3,85.5,60;17.4,85.5,45;18.8,86.2,45;20.9,87.4,30];
btk_nio_2022_06 = [13.7,86.2,60;14.7,83.6,65;15.5,81.6,40;15.4,80.3,25;14.7,81.0,20]; # JTWC best track
nhcvect = [nhcvect;nhc_nio_2022_06];
myvect = [myvect;my_nio_2022_06];
btkvect = [btkvect;btk_nio_2022_06];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Nio 07 ... ASANI around 2022-05-08-15Z
# my at https://twitter.com/elioeFIN/status/1523314669293010945

nhc_nio_2022_07 = [14.6,85.8,60;16.2,84.8,50;17.6,85.2,40;19.2,86.6,35];
my_nio_2022_07 = [14.7,85.6,65;16.1,84.6,50;17.9,84.9,40;19.7,86.3,35];
btk_nio_2022_07 = [14.3,84.8,55;15.0,82.4,55;15.8,81.1,35;15.0,80.2,20]; # JTWC best track
nhcvect = [nhcvect;nhc_nio_2022_07];
myvect = [myvect;my_nio_2022_07];
btkvect = [btkvect;btk_nio_2022_07];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Nio 08 ... ASANI around 2022-05-08-21Z
# my at https://twitter.com/elioeFIN/status/1523404700724654080

nhc_nio_2022_08 = [15.1,85.0,55;16.6,84.5,45;18.1,85.1,40;19.8,87.1,35];
my_nio_2022_08 = [15.1,85.2,60;16.9,84.9,50;18.8,85.4,45;20.3,87.1,35];
btk_nio_2022_08 = [14.5,84.2,60;15.2,81.8,45;15.6,80.6,25;14.7,80.3,20]; # JTWC best track
nhcvect = [nhcvect;nhc_nio_2022_08];
myvect = [myvect;my_nio_2022_08];
btkvect = [btkvect;btk_nio_2022_08];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 58 ... KARIM around 2022-05-09-21Z
# my at https://twitter.com/elioeFIN/status/1523768592948338688

nhc_shem_2022_58 = [17.8,93.3,50;16.2,95.4,35];
my_shem_2022_58 = [17.9,93.2,50;17.3,96.0,35];
btk_shem_2022_58 = [18.7,93.2,45;18.8,97.9,35]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2022_58];
myvect = [myvect;my_shem_2022_58];
btkvect = [btkvect;btk_shem_2022_58];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Nio 09 ... ASANI around 2022-05-09-21Z
# my at https://twitter.com/elioeFIN/status/1523773840853442560

nhc_nio_2022_09 = [16.2,82.9,45;17.1,82.5,30;17.8,84.0,25];
my_nio_2022_09 = [16.2,83.1,45;17.5,83.0,35;17.9,83.7,25];
btk_nio_2022_09 = [15.2,81.8,45;15.6,80.6,25;14.7,80.3,20]; # JTWC best track
nhcvect = [nhcvect;nhc_nio_2022_09];
myvect = [myvect;my_nio_2022_09];
btkvect = [btkvect;btk_nio_2022_09];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Nio 10 ... ASANI around 2022-05-10-03Z
# my at https://twitter.com/elioeFIN/status/1523860391855640578

nhc_nio_2022_10 = [16.2,82.7,50;17.3,82.8,35;17.8,84.7,30];
my_nio_2022_10 = [16.0,82.7,50;17.1,82.7,35;17.7,84.3,30];
btk_nio_2022_10 = [15.5,81.6,40;15.4,80.3,25;14.7,81.0,20];
nhcvect = [nhcvect;nhc_nio_2022_10];
myvect = [myvect;my_nio_2022_10];
btkvect = [btkvect;btk_nio_2022_10];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 59 ... GINA around 2022-05-18-21Z
# my at https://twitter.com/elioeFIN/status/1527032920837332992

nhc_shem_2022_59 = [16.4,167.2,45;17.7,165.9,40;18.7,165.5,30;20.6,166.9,25];
my_shem_2022_59 = [16.5,167.3,45;17.7,165.7,40;19.0,165.0,30;21.0,166.5,25];
btk_shem_2022_59 = [17.6,168.1,35;19.7,168.7,35;20.5,171.1,35;22.1,171.5,25]; # JTWC best track (except day 4)
nhcvect = [nhcvect;nhc_shem_2022_59];
myvect = [myvect;my_shem_2022_59];
btkvect = [btkvect;btk_shem_2022_59];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 60 ... GINA around 2022-05-19-03Z
# my at https://twitter.com/elioeFIN/status/1527119122286493698

nhc_shem_2022_60 = [17.1,167.2,35;18.1,166.0,30;19.5,165.8,25];
my_shem_2022_60 = [17.3,167.3,40;18.3,166.1,35;20.1,166.6,30];
btk_shem_2022_60 = [18.3,167.8,35;20.1,169.4,35;20.6,171.5,30]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2022_60];
myvect = [myvect;my_shem_2022_60];
btkvect = [btkvect;btk_shem_2022_60];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 61 ... GINA around 2022-05-19-09Z
# my at https://twitter.com/elioeFIN/status/1527206223057235968

nhc_shem_2022_61 = [17.8,167.2,35;18.8,166.3,30;20.1,166.5,25];
my_shem_2022_61 = [17.5,167.1,35;18.9,166.5,30;20.4,166.8,30];
btk_shem_2022_61 = [18.7,167.6,35;20.4,170.0,35;20.9,171.5,25]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2022_61];
myvect = [myvect;my_shem_2022_61];
btkvect = [btkvect;btk_shem_2022_61];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 62 ... GINA around 2022-05-19-21Z
# my at https://twitter.com/elioeFIN/status/1527388529168240660

nhc_shem_2022_62 = [18.6,167.3,35;19.7,167.2,30;21.1,168.0,25];
my_shem_2022_62 = [18.7,166.9,35;20.0,167.1,30;22.9,169.0,25];
btk_shem_2022_62 = [19.7,168.7,35;20.5,171.1,35;22.1,171.5,25]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2022_62];
myvect = [myvect;my_shem_2022_62];
btkvect = [btkvect;btk_shem_2022_62];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Epac 01 ... 91E around 2022-05-27-03Z
# my at https://twitter.com/elioeFIN/status/1530021644047097867
# (no NHC forecast)

# Epac 02 ... 91E around 2022-05-27-15Z
# my at https://twitter.com/elioeFIN/status/1530203262275788800
# (no NHC forecast)

# Epac 03 ... 01E around 2022-05-28-03Z
# my at https://twitter.com/elioeFIN/status/1530383467338518528
# NHC at https://www.nhc.noaa.gov/archive/2022/ep01/ep012022.discus.001.shtml?

nhc_epac_2022_03 = [13.2,98.9,50;14.2,98.7,70;15.7,96.9,80;17.2,95.1,30];
my_epac_2022_03 = [13.2,99.1,45;14.5,99.3,65;16.0,97.0,70;17.6,94.6,25];
btk_epac_2022_03 = [13.8,98.8,55;14.3,98.5,95;15.9,96.4,70;18.0,94.7,20]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_03];
myvect = [myvect;my_epac_2022_03];
btkvect = [btkvect;btk_epac_2022_03];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Epac 04 ... AGATHA around 2022-05-28-09Z
# my at https://twitter.com/elioeFIN/status/1530476438037614592
# NHC at https://www.nhc.noaa.gov/archive/2022/ep01/ep012022.discus.002.shtml?

nhc_epac_2022_04 = [13.4,98.7,60;14.6,98.1,80;16.2,96.2,65;17.9,94.7,25];
my_epac_2022_04 = [13.4,98.8,55;14.8,98.3,75;16.4,96.2,55;18.3,94.3,25];
btk_epac_2022_04 = [13.9,99.1,65;14.6,98.0,90;16.5,95.8,50;18.3,94.6,20]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_04];
myvect = [myvect;my_epac_2022_04];
btkvect = [btkvect;btk_epac_2022_04];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Epac 05 ... AGATHA around 2022-05-28-21Z
# my at https://twitter.com/elioeFIN/status/1530652150220603399
# NHC at https://www.nhc.noaa.gov/archive/2022/ep01/ep012022.discus.004.shtml?

nhc_epac_2022_05 = [14.4,98.0,80;15.7,96.5,85;17.5,94.5,30];
my_epac_2022_05 = [14.4,97.9,75;16.1,96.5,80;18.1,93.9,30];
btk_epac_2022_05 = [14.0,98.9,95;15.4,96.9,90;17.7,94.9,20]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_05];
myvect = [myvect;my_epac_2022_05];
btkvect = [btkvect;btk_epac_2022_05];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 06 ... AGATHA around 2022-05-29-03Z
# my at https://twitter.com/elioeFIN/status/1530743522697043970
# NHC at https://www.nhc.noaa.gov/archive/2022/ep01/ep012022.discus.005.shtml?

nhc_epac_2022_06 = [14.6,98.2,75;15.9,96.4,60];
my_epac_2022_06 = [14.7,98.3,70;16.4,96.9,55];
btk_epac_2022_06 = [14.3,98.6,95;15.9,96.4,70]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_06];
myvect = [myvect;my_epac_2022_06];
btkvect = [btkvect;btk_epac_2022_06];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Epac 07 ... AGATHA around 2022-05-29-09Z
# my at https://twitter.com/elioeFIN/status/1530833441620897792
# NHC at https://www.nhc.noaa.gov/archive/2022/ep01/ep012022.discus.006.shtml?

nhc_epac_2022_07 = [14.9,98.0,75;16.3,96.1,55];
my_epac_2022_07 = [14.9,98.3,70;16.5,96.1,50];
btk_epac_2022_07 = [14.6,98.0,90;16.5,95.8,50]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_07];
myvect = [myvect;my_epac_2022_07];
btkvect = [btkvect;btk_epac_2022_07];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Epac 08 ... AGATHA around 2022-05-29-21Z
# my at https://twitter.com/elioeFIN/status/1531015818561171456
# NHC at https://www.nhc.noaa.gov/archive/2022/ep01/ep012022.discus.008.shtml?

nhc_epac_2022_08 = [15.2,97.1,105;17.1,95.2,30];
my_epac_2022_08 = [15.2,97.0,100;17.3,95.3,30];
btk_epac_2022_08 = [15.4,96.9,90;17.7,94.9,20]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_08];
myvect = [myvect;my_epac_2022_08];
btkvect = [btkvect;btk_epac_2022_08];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Epac 09 ... AGATHA around 2022-05-30-03Z
# my at https://twitter.com/elioeFIN/status/1531107313980956673
# NHC at https://www.nhc.noaa.gov/archive/2022/ep01/ep012022.discus.009.shtml?

nhc_epac_2022_09 = [15.6,96.2,105;17.6,94.4,25];
my_epac_2022_09 = [15.7,96.4,95;17.8,94.5,25];
btk_epac_2022_09 = [15.9,96.4,70;18.0,94.7,20]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_09];
myvect = [myvect;my_epac_2022_09];
btkvect = [btkvect;btk_epac_2022_09];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Epac 10 ... AGATHA around 2022-05-30-09Z
# my at https://twitter.com/elioeFIN/status/1531198183396737025
# NHC at https://www.nhc.noaa.gov/archive/2022/ep01/ep012022.discus.010.shtml?

nhc_epac_2022_10 = [16.3,95.6,60];
my_epac_2022_10 = [16.2,95.6,55];
btk_epac_2022_10 = [16.5,95.8,50]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_10];
myvect = [myvect;my_epac_2022_10];
btkvect = [btkvect;btk_epac_2022_10];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;2];

# Epac 11 ... AGATHA around 2022-05-30-21Z
# my at https://twitter.com/elioeFIN/status/1531379748756246532
# NHC at https://www.nhc.noaa.gov/archive/2022/ep01/ep012022.discus.012.shtml?

nhc_epac_2022_11 = [17.3,94.7,25];
my_epac_2022_11 = [17.4,94.6,25];
btk_epac_2022_11 = [17.7,94.9,20]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_11];
myvect = [myvect;my_epac_2022_11];
btkvect = [btkvect;btk_epac_2022_11];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;2];

# Atl 001 ... 91L around 2022-06-01-21Z
# my at https://twitter.com/elioeFIN/status/1532106868566392832
# (no NHC advisory)

# Atl 002 ... 01L around 2022-06-02-21Z
# my at https://twitter.com/elioeFIN/status/1532470450328068096
# NHC at https://www.nhc.noaa.gov/archive/2022/al01/al012022.discus.001.shtml?

nhc_atl_2022_002 = [23.5,86.5,35;26.5,82.3,35;30.6,76.0,45;33.5,70.0,45;36.0,64.0,40];
my_atl_2022_002 = [23.3,86.6,35;26.0,82.3,35;30.6,76.0,45;33.8,68.1,45;36.4,62.0,45];
btk_atl_2022_002 = [22.8,86.3,35;27.2,80.4,40;31.0,72.5,60;34.7,62.2,50;42.6,47.3,65]; # TCR but day 5 self-made
nhcvect = [nhcvect;nhc_atl_2022_002];
myvect = [myvect;my_atl_2022_002];
btkvect = [btkvect;btk_atl_2022_002];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 003 ... 01L around 2022-06-03-03Z
# my at https://twitter.com/elioeFIN/status/1532559032665481220
# NHC at https://www.nhc.noaa.gov/archive/2022/al01/al012022.discus.002.shtml?

nhc_atl_2022_003 = [23.9,85.7,35;27.6,80.6,35;31.6,74.1,45;34.2,67.5,45;35.9,62.5,40];
my_atl_2022_003 = [24.3,85.5,35;27.9,80.4,40;31.7,72.8,45;34.7,64.8,40;38.0,60.0,40];
btk_atl_2022_003 = [23.9,85.1,35;28.0,78.8,40;32.1,70.2,60;36.3,58.0,50;43.7,43.2,65]; # TCR but days 4-5 self-made
nhcvect = [nhcvect;nhc_atl_2022_003];
myvect = [myvect;my_atl_2022_003];
btkvect = [btkvect;btk_atl_2022_003];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 004 ... 01L around 2022-06-03-09Z
# my at https://twitter.com/elioeFIN/status/1532651274084270081
# NHC at https://www.nhc.noaa.gov/archive/2022/al01/al012022.discus.003.shtml?

nhc_atl_2022_004 = [25.3,83.2,40;29.1,77.5,40;32.5,70.2,45;34.1,62.8,45;34.8,57.4,40];
my_atl_2022_004 = [25.0,83.4,45;29.0,77.6,45;32.8,69.2,45;35.3,60.2,45;37.6,54.6,35];
btk_atl_2022_004 = [25.0,83.7,35;28.8,77.2,45;33.0,67.8,55;39.0,53.5,55;46.1,38.9,60]; # TCR but days 4-5 self-made
nhcvect = [nhcvect;nhc_atl_2022_004];
myvect = [myvect;my_atl_2022_004];
btkvect = [btkvect;btk_atl_2022_004];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 005 ... 01L around 2022-06-03-21Z
# my at https://twitter.com/elioeFIN/status/1532827609708605440
# NHC at https://www.nhc.noaa.gov/archive/2022/al01/al012022.discus.005.shtml?

nhc_atl_2022_005 = [26.4,81.5,40;30.5,75.0,45;33.1,66.8,45;34.0,59.5,40;35.5,54.0,40];
my_atl_2022_005 = [26.2,81.7,40;30.3,74.9,45;32.6,66.3,45;33.4,56.6,35;34.5,54.1,30];
btk_atl_2022_005 = [27.2,80.4,40;31.0,72.5,60;34.7,62.2,50;42.6,47.3,65;50.6,31.6,60]; # TCR but days 4-5 self-made
nhcvect = [nhcvect;nhc_atl_2022_005];
myvect = [myvect;my_atl_2022_005];
btkvect = [btkvect;btk_atl_2022_005];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 006 ... 01L around 2022-06-04-03Z
# my at https://twitter.com/elioeFIN/status/1532920720501755905
# NHC at https://www.nhc.noaa.gov/archive/2022/al01/al012022.discus.006.shtml?

nhc_atl_2022_006 = [28.4,78.8,40;32.3,72.0,45;34.3,64.4,45;35.1,58.1,40;37.2,52.8,40];
my_atl_2022_006 = [28.2,79.3,40;32.0,71.9,45;34.3,62.9,45;35.3,56.1,40;37.0,50.8,40];
btk_atl_2022_006 = [28.0,78.8,40;32.1,70.2,60;36.3,58.0,50;43.7,43.2,65;51.8,28.3,65]; # TCR but days 3-5 self-made
nhcvect = [nhcvect;nhc_atl_2022_006];
myvect = [myvect;my_atl_2022_006];
btkvect = [btkvect;btk_atl_2022_006];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 007 ... 01L around 2022-06-04-09Z
# my at https://twitter.com/elioeFIN/status/1533013254355705856
# NHC at https://www.nhc.noaa.gov/archive/2022/al01/al012022.discus.007.shtml?

nhc_atl_2022_007 = [28.6,78.6,40;32.8,70.2,45;34.7,61.5,40;37.5,52.0,40;42.0,42.5,40];
my_atl_2022_007 = [28.1,78.6,45;32.7,69.4,45;34.9,58.9,40;37.3,50.4,40;41.6,39.0,30];
btk_atl_2022_007 = [28.8,77.2,45;33.0,67.8,55;39.0,53.5,55;46.1,38.9,60;53.4,25.7,60]; # TCR but days 3-5 self-made
nhcvect = [nhcvect;nhc_atl_2022_007];
myvect = [myvect;my_atl_2022_007];
btkvect = [btkvect;btk_atl_2022_007];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 008 ... 01L around 2022-06-04-15Z
# my at https://twitter.com/elioeFIN/status/1533103033101557761
# NHC at https://www.nhc.noaa.gov/archive/2022/al01/al012022.discus.008.shtml?

nhc_atl_2022_008 = [29.7,76.0,40;33.7,66.8,45;35.7,56.9,40;39.0,48.0,35;44.5,37.5,35];
my_atl_2022_008 = [29.8,75.7,40;33.3,67.1,40;36.0,54.4,35;39.4,45.2,40;44.8,34.8,35];
btk_atl_2022_008 = [29.9,75.0,50;33.8,65.2,55;42.0,50.3,60;48.1,36.0,60;56.6,20.5,50]; # TCR but days 3-5 self-made
nhcvect = [nhcvect;nhc_atl_2022_008];
myvect = [myvect;my_atl_2022_008];
btkvect = [btkvect;btk_atl_2022_008];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 009 ... 01L around 2022-06-05-03Z
# my at https://twitter.com/elioeFIN/status/1533282964649435138
# NHC at https://www.nhc.noaa.gov/archive/2022/al01/al012022.discus.010.shtml?

nhc_atl_2022_009 = [31.5,72.3,45;33.9,64.0,40;34.7,55.1,35;35.9,50.6,30;38.6,45.0,30];
my_atl_2022_009 = [31.2,72.9,45;33.7,62.9,40;34.2,55.6,30;35.2,49.8,30;38.5,45.1,25];
btk_atl_2022_009 = [32.1,70.2,60;36.3,58.0,50;43.7,43.2,65;51.8,28.3,65;58.2,17.9,45]; # TCR but days 2-5 self-made
nhcvect = [nhcvect;nhc_atl_2022_009];
myvect = [myvect;my_atl_2022_009];
btkvect = [btkvect;btk_atl_2022_009];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 010 ... ALEX around 2022-06-05-09Z
# my at https://twitter.com/elioeFIN/status/1533374794103676928
# NHC at https://www.nhc.noaa.gov/archive/2022/al01/al012022.discus.011.shtml?

nhc_atl_2022_010 = [32.0,70.0,50;34.0,60.5,40;34.2,52.6,30;34.7,49.0,30];
my_atl_2022_010 = [31.9,69.9,50;33.7,59.2,40;35.4,50.2,30;37.1,45.4,30];
btk_atl_2022_010 = [33.0,67.8,55;39.0,53.5,55;46.1,38.9,60;53.4,25.7,60]; # TCR but days 2-4 self-made
nhcvect = [nhcvect;nhc_atl_2022_010];
myvect = [myvect;my_atl_2022_010];
btkvect = [btkvect;btk_atl_2022_010];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 011 ... ALEX around 2022-06-05-21Z
# my at https://twitter.com/elioeFIN/status/1533552268313874435
# NHC at https://www.nhc.noaa.gov/archive/2022/al01/al012022.discus.013.shtml?

nhc_atl_2022_011 = [33.9,63.2,50;35.0,54.6,40;35.7,48.5,30];
my_atl_2022_011 = [34.1,62.9,55;35.4,52.6,45;40.5,39.6,30];
btk_atl_2022_011 = [34.7,62.2,50;42.6,47.3,65;50.6,31.6,60]; # TCR but days 2-3 self-made
nhcvect = [nhcvect;nhc_atl_2022_011];
myvect = [myvect;my_atl_2022_011];
btkvect = [btkvect;btk_atl_2022_011];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Epac 12 ... 02E around 2022-06-14-09Z
# my at https://twitter.com/elioeFIN/status/1536631746027986945
# NHC at https://www.nhc.noaa.gov/archive/2022/ep02/ep022022.discus.001.shtml?

nhc_epac_2022_12 = [14.3,102.6,50;15.1,104.3,65;16.1,107.6,60;17.4,111.1,50;18.4,113.6,40];
my_epac_2022_12 = [14.5,102.7,45;15.6,104.3,60;17.0,108.1,55;17.5,110.9,45;18.6,113.6,35];
btk_epac_2022_12 = [14.7,102.1,55;15.7,103.7,75;17.0,106.9,75;17.8,110.4,55;18.8,112.0,40]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_12];
myvect = [myvect;my_epac_2022_12];
btkvect = [btkvect;btk_epac_2022_12];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 13 ... BLAS around 2022-06-14-21Z
# my at https://twitter.com/elioeFIN/status/1536819635584217091
# NHC at https://www.nhc.noaa.gov/archive/2022/ep02/ep022022.discus.003.shtml?

nhc_epac_2022_13 = [15.4,102.9,70;16.3,105.5,75;17.5,109.4,60;18.6,112.3,45;19.0,114.3,35];
my_epac_2022_13 = [15.4,102.7,70;16.5,105.3,70;18.0,109.8,55;19.7,111.7,40;20.5,113.9,30];
btk_epac_2022_13 = [15.1,102.5,75;16.1,105.1,70;17.4,109.2,75;18.3,111.3,45;19.0,112.4,35]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_13];
myvect = [myvect;my_epac_2022_13];
btkvect = [btkvect;btk_epac_2022_13];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 14 ... BLAS around 2022-06-15-03Z
# my at https://twitter.com/elioeFIN/status/1536906948976812032
# NHC at https://www.nhc.noaa.gov/archive/2022/ep02/ep022022.discus.004.shtml?

nhc_epac_2022_14 = [15.7,103.4,70;16.8,106.3,75;17.9,110.1,60;18.8,112.5,45;19.2,114.5,35];
my_epac_2022_14 = [15.8,103.4,65;17.0,106.5,70;18.3,110.7,50;19.2,112.3,35;19.8,114.0,25];
btk_epac_2022_14 = [15.4,103.0,75;16.6,105.9,70;17.6,109.9,65;18.6,111.7,40;19.1,112.7,35]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_14];
myvect = [myvect;my_epac_2022_14];
btkvect = [btkvect;btk_epac_2022_14];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 15 ... BLAS around 2022-06-15-15Z
# my at https://twitter.com/elioeFIN/status/1537090850102059009
# NHC at https://www.nhc.noaa.gov/archive/2022/ep02/ep022022.discus.006.shtml?

nhc_epac_2022_15 = [15.8,104.8,85;17.1,108.3,75;18.2,111.6,55;18.8,114.1,40;19.0,116.5,30];
my_epac_2022_15 = [15.7,104.6,75;17.2,108.2,70;18.5,111.9,55;19.3,114.4,35;19.8,117.0,25];
btk_epac_2022_15 = [15.8,104.3,70;17.4,108.2,75;18.0,110.8,45;18.9,112.2,40;19.1,113.4,30]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_15];
myvect = [myvect;my_epac_2022_15];
btkvect = [btkvect;btk_epac_2022_15];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 16 ... BLAS around 2022-06-15-21Z
# my at https://twitter.com/elioeFIN/status/1537180332302032896
# NHC at https://www.nhc.noaa.gov/archive/2022/ep02/ep022022.discus.007.shtml?

nhc_epac_2022_16 = [16.1,105.5,85;17.4,109.3,75;18.3,112.3,55;18.8,114.9,35;18.5,116.6,25];
my_epac_2022_16 = [16.1,105.5,75;17.5,109.8,70;18.4,113.7,50;19.1,114.5,30;18.4,116.3,20];
btk_epac_2022_16 = [16.1,105.1,70;17.4,109.2,75;18.3,111.3,45;19.0,112.4,35;19.0,113.8,30]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_16];
myvect = [myvect;my_epac_2022_16];
btkvect = [btkvect;btk_epac_2022_16];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 17 ... BLAS around 2022-06-16-15Z
# my at https://twitter.com/elioeFIN/status/1537448724472877067
# NHC at https://www.nhc.noaa.gov/archive/2022/ep02/ep022022.discus.010.shtml?

nhc_epac_2022_17 = [17.3,108.2,75;18.4,112.1,55;19.0,114.3,35;18.7,116.3,30;18.5,118.0,25];
my_epac_2022_17 = [17.2,108.3,70;18.4,112.7,50;19.0,114.9,35;18.8,115.8,25;18.5,117.6,20];
btk_epac_2022_17 = [17.4,108.2,75;18.0,110.8,45;18.9,112.2,40;19.1,113.4,30;19.2,114.9,25]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_17];
myvect = [myvect;my_epac_2022_17];
btkvect = [btkvect;btk_epac_2022_17];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 18 ... BLAS around 2022-06-16-21Z
# my at https://twitter.com/elioeFIN/status/1537541974089248769
# NHC at https://www.nhc.noaa.gov/archive/2022/ep02/ep022022.discus.011.shtml?

nhc_epac_2022_18 = [17.8,109.7,70;18.7,113.3,45;18.8,115.7,30;18.3,117.7,25;18.2,119.3,20];
my_epac_2022_18 = [17.7,109.6,65;18.8,113.8,40;18.6,116.4,30;18.4,117.1,25;18.3,119.5,20];
btk_epac_2022_18 = [17.4,109.2,75;18.3,111.3,45;19.0,112.4,35;19.0,113.8,30;19.3,115.4,25]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_18];
myvect = [myvect;my_epac_2022_18];
btkvect = [btkvect;btk_epac_2022_18];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 19 ... BLAS around 2022-06-17-03Z
# my at https://twitter.com/elioeFIN/status/1537627820721045509
# NHC at https://www.nhc.noaa.gov/archive/2022/ep02/ep022022.discus.012.shtml?

nhc_epac_2022_19 = [18.0,110.6,65;18.7,113.8,45;18.5,116.0,30;18.1,117.9,25;18.1,119.4,20];
my_epac_2022_19 = [17.8,110.5,60;18.5,113.9,40;18.3,116.3,30;18.6,116.9,20;18.3,118.7,20];
btk_epac_2022_19 = [17.6,109.9,65;18.6,111.7,45;19.1,112.7,35;19.0,114.3,25;19.3,115.9,25]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_19];
myvect = [myvect;my_epac_2022_19];
btkvect = [btkvect;btk_epac_2022_19];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 20 ... 03E around 2022-06-17-03Z
# my at https://twitter.com/elioeFIN/status/1537630703738822657
# NHC at https://www.nhc.noaa.gov/archive/2022/ep03/ep032022.discus.002.shtml?

nhc_epac_2022_20 = [11.8,90.1,40;12.7,91.2,45;12.5,93.3,45;12.4,96.5,50;13.0,101.2,55];
my_epac_2022_20 = [11.7,89.9,35;12.3,90.7,40;12.0,93.5,40;12.8,96.7,45;13.5,102.3,45];
btk_epac_2022_20 = [12.0,89.2,30;13.1,90.4,25;12.3,93.4,25;11.7,96.9,30;12.8,101.5,35]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_20];
myvect = [myvect;my_epac_2022_20];
btkvect = [btkvect;btk_epac_2022_20];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 21 ... CELIA around 2022-06-17-15Z
# my at https://twitter.com/elioeFIN/status/1537813633530462208
# NHC at https://www.nhc.noaa.gov/archive/2022/ep03/ep032022.discus.004.shtml?

nhc_epac_2022_21 = [12.1,89.5,40;12.2,90.8,40;11.7,94.2,40;12.2,98.4,40;13.0,102.5,50];
my_epac_2022_21 = [12.0,89.4,35;11.9,90.5,35;11.2,94.7,35;12.7,98.3,40;13.9,102.1,45];
btk_epac_2022_21 = [12.8,89.7,25;12.9,91.9,25;11.7,94.7,25;11.8,99.3,35;13.4,103.2,40]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_21];
myvect = [myvect;my_epac_2022_21];
btkvect = [btkvect;btk_epac_2022_21];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 22 ... CELIA around 2022-06-18-21Z
# my at https://twitter.com/elioeFIN/status/1538265271655452673
# NHC at https://www.nhc.noaa.gov/archive/2022/ep03/ep032022.discus.009.shtml?

nhc_epac_2022_22 = [12.5,92.5,25;11.9,96.2,30;12.5,100.2,40;13.7,104.0,50;15.0,107.0,60];
my_epac_2022_22 = [12.6,92.0,25;11.6,95.7,25;11.4,99.6,35;14.2,102.7,45;15.7,105.8,55];
btk_epac_2022_22 = [12.7,92.7,25;11.7,95.8,30;12.3,100.5,40;13.6,103.9,45;16.2,106.4,45]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_22];
myvect = [myvect;my_epac_2022_22];
btkvect = [btkvect;btk_epac_2022_22];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 23 ... CELIA around 2022-06-19-03Z
# my at https://twitter.com/elioeFIN/status/1538359728501317632
# NHC at https://www.nhc.noaa.gov/archive/2022/ep03/ep032022.discus.010.shtml?

nhc_epac_2022_23 = [12.5,93.0,25;12.1,96.9,25;12.9,100.9,35;13.9,104.5,50;15.3,107.6,60];
my_epac_2022_23 = [12.3,93.0,25;11.8,96.3,25;12.6,101.7,35;14.8,104.1,45;17.4,107.7,55];
btk_epac_2022_23 = [12.3,93.4,25;11.7,96.9,30;12.8,101.5,35;14.2,104.2,45;16.6,107.1,45]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_23];
myvect = [myvect;my_epac_2022_23];
btkvect = [btkvect;btk_epac_2022_23];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 24 ... CELIA around 2022-06-19-21Z
# my at https://twitter.com/elioeFIN/status/1538626347404349440
# NHC at https://www.nhc.noaa.gov/archive/2022/ep03/ep032022.discus.013.shtml?

nhc_epac_2022_24 = [11.5,96.5,30;12.1,100.3,40;13.0,103.6,50;14.7,106.5,65;16.3,108.6,70];
my_epac_2022_24 = [11.7,96.1,30;11.9,99.7,35;12.6,102.8,45;15.2,105.7,60;16.6,108.8,65];
btk_epac_2022_24 = [11.7,95.8,30;12.3,100.5,35;13.6,103.9,45;16.2,106.4,45;17.1,108.7,50]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_24];
myvect = [myvect;my_epac_2022_24];
btkvect = [btkvect;btk_epac_2022_24];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 25 ... CELIA around 2022-06-20-15Z
# my at https://twitter.com/elioeFIN/status/1538901219405705216
# NHC at https://www.nhc.noaa.gov/archive/2022/ep03/ep032022.discus.016.shtml?

nhc_epac_2022_25 = [11.8,98.5,30;12.8,102.0,40;14.6,105.2,55;16.3,108.2,65;17.4,110.2,70];
my_epac_2022_25 = [11.8,98.2,30;12.8,102.2,40;14.5,105.4,55;16.6,107.7,60;17.4,109.9,60];
btk_epac_2022_25 = [11.8,99.3,35;13.4,103.2,40;15.7,105.5,45;16.9,108.2,50;18.2,110.5,50]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_25];
myvect = [myvect;my_epac_2022_25];
btkvect = [btkvect;btk_epac_2022_25];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 26 ... CELIA around 2022-06-20-21Z
# my at https://twitter.com/elioeFIN/status/1538991772495450117
# NHC at https://www.nhc.noaa.gov/archive/2022/ep03/ep032022.discus.017.shtml?

nhc_epac_2022_26 = [12.4,100.1,35;13.4,103.6,50;15.4,106.5,65;17.1,109.5,75;18.3,111.9,75];
my_epac_2022_26 = [12.3,100.3,35;13.0,104.2,45;15.3,107.1,60;17.9,109.8,65;18.7,112.9,65];
btk_epac_2022_26 = [12.3,100.5,35;13.6,103.9,45;16.2,106.4,45;17.1,108.7,50;18.5,111.3,45]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_26];
myvect = [myvect;my_epac_2022_26];
btkvect = [btkvect;btk_epac_2022_26];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 27 ... CELIA around 2022-06-21-03Z
# my at https://twitter.com/elioeFIN/status/1539082353951244289
# NHC at https://www.nhc.noaa.gov/archive/2022/ep03/ep032022.discus.018.shtml?

nhc_epac_2022_27 = [12.5,101.3,40;13.9,104.6,50;15.7,107.4,65;17.3,110.3,75;18.5,113.0,65];
my_epac_2022_27 = [12.4,101.4,40;14.0,105.3,50;15.8,108.1,65;17.3,110.0,70;18.4,113.0,60];
btk_epac_2022_27 = [12.8,101.5,35;14.2,104.2,45;16.6,107.1,45;17.5,109.2,50;18.8,112.1,45]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_27];
myvect = [myvect;my_epac_2022_27];
btkvect = [btkvect;btk_epac_2022_27];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 28 ... CELIA around 2022-06-21-15Z
# my at https://twitter.com/elioeFIN/status/1539259345220812802
# NHC at https://www.nhc.noaa.gov/archive/2022/ep03/ep032022.discus.020.shtml?

nhc_epac_2022_28 = [12.7,103.1,45;14.3,106.1,55;15.8,108.9,70;17.0,111.3,70;18.4,114.0,60];
my_epac_2022_28 = [12.5,103.1,45;14.4,106.1,55;15.9,108.6,65;17.0,110.6,65;18.3,113.3,50];
btk_epac_2022_28 = [13.4,103.2,40;15.7,105.5,45;16.9,108.2,50;18.2,110.5,50;19.0,113.3,45]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_28];
myvect = [myvect;my_epac_2022_28];
btkvect = [btkvect;btk_epac_2022_28];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 29 ... CELIA around 2022-06-21-21Z
# my at https://twitter.com/elioeFIN/status/1539354442415357956
# NHC at https://www.nhc.noaa.gov/archive/2022/ep03/ep032022.discus.021.shtml?

nhc_epac_2022_29 = [13.7,104.5,50;15.3,107.4,70;16.6,110.0,75;17.8,112.5,70;19.2,115.4,60];
my_epac_2022_29 = [13.6,104.1,55;15.3,107.0,65;16.8,109.8,70;19.2,112.9,60;20.4,116.2,50];
btk_epac_2022_29 = [13.6,103.9,45;16.2,106.4,45;17.1,108.7,50;18.5,111.3,45;19.3,113.8,45]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_29];
myvect = [myvect;my_epac_2022_29];
btkvect = [btkvect;btk_epac_2022_29];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 30 ... CELIA around 2022-06-22-03Z
# my at https://twitter.com/elioeFIN/status/1539440112727121920
# NHC at https://www.nhc.noaa.gov/archive/2022/ep03/ep032022.discus.022.shtml?

nhc_epac_2022_30 = [14.3,104.7,50;15.9,107.9,70;17.1,110.6,75;18.5,113.5,65;19.5,116.5,55];
my_epac_2022_30 = [14.3,105.0,50;16.3,108.0,65;17.5,110.6,70;19.2,112.6,60;20.3,115.8,50];
btk_epac_2022_30 = [14.2,104.2,45;16.6,107.1,45;17.5,109.2,50;18.8,112.1,45;19.8,114.6,45]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_30];
myvect = [myvect;my_epac_2022_30];
btkvect = [btkvect;btk_epac_2022_30];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 31 ... CELIA around 2022-06-22-15Z
# my at https://twitter.com/elioeFIN/status/1539624206509408257
# NHC at https://www.nhc.noaa.gov/archive/2022/ep03/ep032022.discus.024.shtml?

nhc_epac_2022_31 = [15.4,106.0,50;16.6,108.9,70;17.9,111.4,70;19.3,114.5,60;20.2,118.1,50];
my_epac_2022_31 = [15.1,106.0,45;16.8,108.7,65;18.0,111.6,65;19.5,114.3,55;20.5,117.9,45];
btk_epac_2022_31 = [15.7,105.5,45;16.9,108.2,50;18.2,110.5,50;19.0,113.3,45;20.4,116.5,40]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_31];
myvect = [myvect;my_epac_2022_31];
btkvect = [btkvect;btk_epac_2022_31];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 32 ... CELIA around 2022-06-23-15Z
# my at https://twitter.com/elioeFIN/status/1539986357149483008
# NHC at https://www.nhc.noaa.gov/archive/2022/ep03/ep032022.discus.028.shtml?

nhc_epac_2022_32 = [17.0,108.7,55;17.8,110.8,65;19.1,113.8,65;20.5,117.9,50;21.4,122.7,35];
my_epac_2022_32 = [16.9,108.5,55;18.5,110.5,60;19.9,113.7,60;21.3,117.3,40;22.2,122.2,25];
btk_epac_2022_32 = [16.9,108.2,50;18.2,110.5,50;19.0,113.3,45;20.4,116.5,40;22.0,120.0,30]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_32];
myvect = [myvect;my_epac_2022_32];
btkvect = [btkvect;btk_epac_2022_32];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 33 ... CELIA around 2022-06-23-21Z
# my at https://twitter.com/elioeFIN/status/1540075454249459714
# NHC at https://www.nhc.noaa.gov/archive/2022/ep03/ep032022.discus.029.shtml?

nhc_epac_2022_33 = [17.1,109.2,60;17.9,111.3,65;19.3,114.1,55;20.5,118.4,45;21.1,123.1,30];
my_epac_2022_33 = [17.2,109.0,55;18.5,111.0,60;19.7,113.7,50;21.0,117.3,40;21.8,122.4,25];
btk_epac_2022_33 = [17.1,108.7,50;18.5,111.3,45;19.3,113.8,45;20.7,117.5,35;22.4,120.9,30]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_33];
myvect = [myvect;my_epac_2022_33];
btkvect = [btkvect;btk_epac_2022_33];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Atl 012 ... 02L around 2022-06-28-15Z
# my at https://twitter.com/elioeFIN/status/1541800969331245056
# NHC at https://www.nhc.noaa.gov/archive/2022/al02/al022022.discus.004.shtml?

nhc_atl_2022_12 = [11.3,64.5,35;12.1,72.0,40;12.1,78.7,60;12.0,84.0,65;12.5,90.0,20];
my_atl_2022_12 = [11.5,64.5,40;12.2,71.4,45;12.5,77.9,60;12.9,83.2,65;13.6,88.8,25];
btk_atl_2022_12 = [11.4,66.2,35;12.0,73.1,35;11.3,80.2,35;11.2,85.9,35;11.8,91.9,55]; # TCR
nhcvect = [nhcvect;nhc_atl_2022_12];
myvect = [myvect;my_atl_2022_12];
btkvect = [btkvect;btk_atl_2022_12];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 013 ... 02L around 2022-06-28-21Z
# my at https://twitter.com/elioeFIN/status/1541891942887325697
# NHC at https://www.nhc.noaa.gov/archive/2022/al02/al022022.discus.005.shtml?

nhc_atl_2022_013 = [11.4,66.6,35;12.1,73.5,40;12.0,80.4,65;12.0,85.5,35;13.0,90.5,20];
my_atl_2022_013 = [11.6,67.0,40;12.2,74.1,45;12.0,80.8,65;12.3,85.8,40;13.7,90.7,25];
btk_atl_2022_013 = [11.7,68.0,35;12.0,74.9,35;11.2,81.8,40;11.2,87.4,45;12.2,93.4,60]; # TCR
nhcvect = [nhcvect;nhc_atl_2022_013];
myvect = [myvect;my_atl_2022_013];
btkvect = [btkvect;btk_atl_2022_013];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 014 ... 02L around 2022-06-29-03Z
# my at https://twitter.com/elioeFIN/status/1541981925237211142
# NHC at https://www.nhc.noaa.gov/archive/2022/al02/al022022.discus.006.shtml?

nhc_atl_2022_014 = [11.8,69.2,35;12.3,76.6,45;12.0,82.9,65;12.0,87.9,35;13.5,93.5,25];
my_atl_2022_014 = [11.7,69.4,40;12.2,75.9,50;12.4,82.8,65;12.7,88.6,35;14.1,92.9,35];
btk_atl_2022_014 = [11.9,69.7,35;11.9,76.7,35;10.9,83.1,50;11.2,88.9,50;12.9,94.9,65]; # TCR
nhcvect = [nhcvect;nhc_atl_2022_014];
myvect = [myvect;my_atl_2022_014];
btkvect = [btkvect;btk_atl_2022_014];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 015 ... 02L around 2022-06-30-15Z
# my at https://twitter.com/elioeFIN/status/1542524858998743040
# NHC at https://www.nhc.noaa.gov/archive/2022/al02/al022022.discus.012.shtml?

nhc_atl_2022_015 = [11.2,80.4,45;11.0,85.6,35;11.8,90.6,45;13.2,96.3,65;14.5,102.0,70];
my_atl_2022_015 = [11.1,80.4,50;10.9,85.7,35;11.7,90.2,50;12.7,96.0,65;14.6,101.7,65];
btk_atl_2022_015 = [11.3,80.2,35;11.2,85.9,35;11.8,91.9,55;13.6,98.2,75;15.1,103.8,100]; # TCR
nhcvect = [nhcvect;nhc_atl_2022_015];
myvect = [myvect;my_atl_2022_015];
btkvect = [btkvect;btk_atl_2022_015];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 016 ... 02L around 2022-06-30-21Z
# my at https://twitter.com/elioeFIN/status/1542614962987831297
# NHC at https://www.nhc.noaa.gov/archive/2022/al02/al022022.discus.013.shtml?

nhc_atl_2022_016 = [11.3,81.4,45;11.4,86.5,35;12.5,91.5,45;14.0,97.2,65;15.4,103.0,70];
my_atl_2022_016 = [11.0,81.4,50;11.2,86.4,35;12.1,91.1,50;13.5,96.5,60;15.3,102.4,70];
btk_atl_2022_016 = [11.2,81.8,40;11.2,87.4,45;12.2,93.4,60;13.8,99.6,85;15.4,105.1,95]; # TCR
nhcvect = [nhcvect;nhc_atl_2022_016];
myvect = [myvect;my_atl_2022_016];
btkvect = [btkvect;btk_atl_2022_016];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 017 ... 02L around 2022-07-01-03Z
# my at https://twitter.com/elioeFIN/status/1542704538444079104
# NHC at https://www.nhc.noaa.gov/archive/2022/al02/al022022.discus.014.shtml?

nhc_atl_2022_017 = [11.3,82.8,50;11.6,87.7,35;13.0,93.0,50;14.5,99.0,65;16.0,104.5,70];
my_atl_2022_017 = [11.3,82.7,45;11.4,87.5,40;12.8,92.5,55;14.2,98.1,70;16.1,103.6,80];
btk_atl_2022_017 = [10.9,83.1,50;11.2,88.9,50;12.9,94.9,65;14.4,100.9,90;15.6,106.4,90]; # TCR
nhcvect = [nhcvect;nhc_atl_2022_017];
myvect = [myvect;my_atl_2022_017];
btkvect = [btkvect;btk_atl_2022_017];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 018 ... BONNIE around 2022-07-01-21Z
# my at https://twitter.com/elioeFIN/status/1542975209652854785
# NHC at https://www.nhc.noaa.gov/archive/2022/al02/al022022.discus.017.shtml?

nhc_atl_2022_018 = [11.3,86.9,45;12.3,92.0,55;14.1,97.7,65;15.6,103.4,70;16.4,108.0,70];
my_atl_2022_018 = [11.2,86.9,45;12.1,92.0,55;13.6,97.5,65;15.5,103.2,65;16.7,107.8,70];
btk_atl_2022_018 = [11.2,87.4,45;12.2,93.4,60;13.8,99.6,85;15.4,105.1,95;16.3,109.5,85]; # TCR
nhcvect = [nhcvect;nhc_atl_2022_018];
myvect = [myvect;my_atl_2022_018];
btkvect = [btkvect;btk_atl_2022_018];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 34 ... BONNIE around 2022-07-02-15Z
# my at https://twitter.com/elioeFIN/status/1543250474887008257
# NHC at https://www.nhc.noaa.gov/archive/2022/ep04/ep042022.discus.020.shtml?

nhc_epac_2022_34 = [11.7,90.7,40;13.4,96.6,55;15.1,102.5,65;16.0,107.5,70;16.6,111.7,75];
my_epac_2022_34 = [11.7,90.8,40;13.1,97.1,55;15.0,103.2,65;16.3,107.6,65;16.9,111.3,65];
btk_epac_2022_34 = [11.8,91.9,55;13.6,98.2,75;15.1,103.8,100;16.0,108.5,85;17.2,113.1,80]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_34];
myvect = [myvect;my_epac_2022_34];
btkvect = [btkvect;btk_epac_2022_34];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 35 ... BONNIE around 2022-07-02-21Z
# my at https://twitter.com/elioeFIN/status/1543338360877596672
# NHC at https://www.nhc.noaa.gov/archive/2022/ep04/ep042022.discus.021.shtml?

nhc_epac_2022_35 = [12.0,92.5,55;13.7,98.3,70;15.2,104.0,75;15.9,108.8,75;16.4,112.9,75];
my_epac_2022_35 = [12.0,92.5,55;13.5,98.6,65;15.6,104.1,75;16.6,108.9,70;16.9,112.9,70];
btk_epac_2022_35 = [12.2,93.4,60;13.8,99.6,85;15.4,105.1,95;16.3,109.5,85;17.5,114.5,85]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_35];
myvect = [myvect;my_epac_2022_35];
btkvect = [btkvect;btk_epac_2022_35];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 36 ... BONNIE around 2022-07-03-03Z
# my at https://twitter.com/elioeFIN/status/1543428040461631489
# NHC at https://www.nhc.noaa.gov/archive/2022/ep04/ep042022.discus.022.shtml?

nhc_epac_2022_36 = [12.4,94.2,65;14.1,100.2,75;15.6,105.8,75;15.9,110.2,70;16.3,114.3,70];
my_epac_2022_36 = [12.5,94.3,65;14.0,100.5,75;15.6,105.9,70;16.0,110.3,65;16.9,114.1,65];
btk_epac_2022_36 = [12.9,94.9,65;14.4,100.9,90;15.6,106.4,90;16.6,110.6,80;17.8,116.1,85]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_36];
myvect = [myvect;my_epac_2022_36];
btkvect = [btkvect;btk_epac_2022_36];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 37 ... BONNIE around 2022-07-03-15Z
# my at https://twitter.com/elioeFIN/status/1543610255027888130
# NHC at https://www.nhc.noaa.gov/archive/2022/ep04/ep042022.discus.024.shtml?

nhc_epac_2022_37 = [13.3,97.5,75;14.9,103.3,80;15.7,108.2,80;16.2,112.5,75;17.0,117.3,70];
my_epac_2022_37 = [13.3,97.5,70;14.9,103.6,75;15.8,108.4,75;16.4,112.6,70;17.3,117.2,65];
btk_epac_2022_37 = [13.6,98.2,75;15.1,103.8,100;16.0,108.5,85;17.2,113.1,80;18.2,119.3,65]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_37];
myvect = [myvect;my_epac_2022_37];
btkvect = [btkvect;btk_epac_2022_37];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 38 ... BONNIE around 2022-07-03-21Z
# my at https://twitter.com/elioeFIN/status/1543702594341814274
# NHC at https://www.nhc.noaa.gov/archive/2022/ep04/ep042022.discus.025.shtml?

nhc_epac_2022_38 = [13.8,99.4,80;15.3,105.0,85;16.0,109.5,80;16.6,113.6,75;17.7,119.0,70];
my_epac_2022_38 = [13.8,99.3,75;15.5,105.1,80;16.1,109.6,70;17.1,113.7,65;18.5,119.0,55];
btk_epac_2022_38 = [13.8,99.6,85;15.4,105.1,95;16.3,109.5,85;17.5,114.5,85;18.6,121.0,55]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_38];
myvect = [myvect;my_epac_2022_38];
btkvect = [btkvect;btk_epac_2022_38];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 39 ... BONNIE around 2022-07-04-03Z
# my at https://twitter.com/elioeFIN/status/1543790728899428353
# NHC at https://www.nhc.noaa.gov/archive/2022/ep04/ep042022.discus.026.shtml?

nhc_epac_2022_39 = [14.6,100.7,90;15.9,106.0,95;16.4,110.2,85;17.1,114.8,80;18.5,120.5,75];
my_epac_2022_39 = [14.7,100.9,90;15.9,106.4,85;16.6,110.7,80;17.5,114.4,75;19.2,119.9,65];
btk_epac_2022_39 = [14.4,100.9,90;15.6,106.4,90;16.6,110.6,80;17.8,116.1,85;19.0,122.8,50]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_39];
myvect = [myvect;my_epac_2022_39];
btkvect = [btkvect;btk_epac_2022_39];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 40 ... BONNIE around 2022-07-04-15Z
# my at https://twitter.com/elioeFIN/status/1543974267452366848
# NHC at https://www.nhc.noaa.gov/archive/2022/ep04/ep042022.discus.028.shtml?

nhc_epac_2022_40 = [15.1,104.0,90;16.0,108.6,90;16.4,112.8,90;17.6,117.8,85;19.1,124.0,65];
my_epac_2022_40 = [15.1,104.1,85;15.9,109.0,85;16.5,113.2,85;17.8,117.8,80;19.3,123.7,55];
btk_epac_2022_40 = [15.1,103.8,100;16.0,108.5,85;17.2,113.1,80;18.2,119.3,65;19.4,126.6,40]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_40];
myvect = [myvect;my_epac_2022_40];
btkvect = [btkvect;btk_epac_2022_40];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 41 ... BONNIE around 2022-07-04-21Z
# my at https://twitter.com/elioeFIN/status/1544066787079241729
# NHC at https://www.nhc.noaa.gov/archive/2022/ep04/ep042022.discus.029.shtml?

nhc_epac_2022_41 = [15.1,104.9,90;15.8,109.4,90;16.5,113.7,90;17.8,119.0,80;19.3,125.3,60];
my_epac_2022_41 = [15.3,105.0,85;16.1,109.6,85;16.5,114.0,85;17.9,118.4,75;19.7,124.6,50];
btk_epac_2022_41 = [15.4,105.1,95;16.3,109.5,85;17.5,114.5,85;18.6,121.0,55;19.5,128.6,40]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_41];
myvect = [myvect;my_epac_2022_41];
btkvect = [btkvect;btk_epac_2022_41];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 42 ... BONNIE around 2022-07-05-03Z
# my at https://twitter.com/elioeFIN/status/1544154181442977792
# NHC at https://www.nhc.noaa.gov/archive/2022/ep04/ep042022.discus.030.shtml?

nhc_epac_2022_42 = [15.5,105.9,95;16.1,110.3,90;17.1,115.0,85;18.4,120.4,70;19.7,126.8,50];
my_epac_2022_42 = [15.6,106.2,90;16.2,110.7,85;17.1,115.5,80;18.8,120.3,60;20.2,126.6,40];
btk_epac_2022_42 = [15.6,106.4,90;16.6,110.6,80;17.8,116.1,85;19.0,122.8,50;19.6,130.5,35]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_42];
myvect = [myvect;my_epac_2022_42];
btkvect = [btkvect;btk_epac_2022_42];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 43 ... BONNIE around 2022-07-05-15Z
# my at https://twitter.com/elioeFIN/status/1544333621758246912
# NHC at https://www.nhc.noaa.gov/archive/2022/ep04/ep042022.discus.032.shtml?

nhc_epac_2022_43 = [16.0,108.3,95;16.8,112.7,85;18.2,118.4,75;19.5,125.1,60;20.4,131.3,45];
my_epac_2022_43 = [16.1,108.4,95;17.0,113.0,85;18.6,118.8,70;19.9,124.8,50;20.8,130.9,30];
btk_epac_2022_43 = [16.0,108.5,85;17.2,113.1,80;18.2,119.3,65;19.4,126.6,40;19.4,134.0,30]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_43];
myvect = [myvect;my_epac_2022_43];
btkvect = [btkvect;btk_epac_2022_43];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 44 ... BONNIE around 2022-07-07-21Z
# my at https://twitter.com/elioeFIN/status/1545149486439305222
# NHC at https://www.nhc.noaa.gov/archive/2022/ep04/ep042022.discus.041.shtml?

nhc_epac_2022_44 = [18.7,121.0,60;19.6,128.3,40;19.9,135.2,30];
my_epac_2022_44 = [18.8,121.1,60;19.9,128.7,35;20.1,135.4,25];
btk_epac_2022_44 = [18.6,121.0,55;19.5,128.6,40;19.4,135.5,25]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_44];
myvect = [myvect;my_epac_2022_44];
btkvect = [btkvect;btk_epac_2022_44];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 45 ... BONNIE around 2022-07-08-03Z
# my at https://twitter.com/elioeFIN/status/1545240605151870977
# NHC at https://www.nhc.noaa.gov/archive/2022/ep04/ep042022.discus.042.shtml?

nhc_epac_2022_45 = [19.2,122.8,60;19.9,130.1,40;20.0,136.8,30];
my_epac_2022_45 = [19.2,122.9,60;20.0,130.5,35;20.2,137.0,30];
btk_epac_2022_45 = [19.0,122.8,50;19.6,130.5,35;19.4,136.9,25]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_45];
myvect = [myvect;my_epac_2022_45];
btkvect = [btkvect;btk_epac_2022_45];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 46 ... DARBY around 2022-07-10-03Z
# my at https://twitter.com/elioeFIN/status/1545965875169316864
# NHC at https://www.nhc.noaa.gov/archive/2022/ep05/ep052022.discus.002.shtml?

nhc_epac_2022_46 = [14.4,120.1,55;14.5,125.2,75;15.3,129.9,80;16.6,134.3,65;18.0,139.5,45];
my_epac_2022_46 = [14.4,120.1,55;14.5,125.3,70;15.3,129.2,70;17.1,133.7,50;18.7,138.7,35];
btk_epac_2022_46 = [14.5,119.9,65;14.8,125.9,120;14.6,132.0,95;15.6,137.5,100;17.3,142.8,75]; # TCR (epac only)
nhcvect = [nhcvect;nhc_epac_2022_46];
myvect = [myvect;my_epac_2022_46];
btkvect = [btkvect;btk_epac_2022_46];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 47 ... DARBY around 2022-07-10-21Z
# my at https://twitter.com/elioeFIN/status/1546238890629029889
# NHC at https://www.nhc.noaa.gov/archive/2022/ep05/ep052022.discus.005.shtml?

nhc_epac_2022_47 = [14.6,123.7,75;15.0,128.7,80;16.2,133.8,60;17.8,138.7,40;18.5,144.0,30];
my_epac_2022_47 = [14.7,123.9,70;15.2,129.2,75;16.4,134.2,55;18.4,138.4,35;18.6,143.7,25];
btk_epac_2022_47 = [14.6,124.3,120;14.6,130.5,105;15.1,136.0,100;16.9,141.5,85;17.6,146.8,50]; # TCR (epac only)
nhcvect = [nhcvect;nhc_epac_2022_47];
myvect = [myvect;my_epac_2022_47];
btkvect = [btkvect;btk_epac_2022_47];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 48 ... DARBY around 2022-07-11-03Z
# my at https://twitter.com/elioeFIN/status/1546327352132657152
# NHC at https://www.nhc.noaa.gov/archive/2022/ep05/ep052022.discus.006.shtml?

nhc_epac_2022_48 = [14.9,125.2,80;15.4,130.4,80;16.7,135.3,60;18.0,140.5,40;18.5,145.5,30];
my_epac_2022_48 = [14.9,125.3,75;15.4,130.7,75;16.6,135.9,55;18.2,140.6,35;18.8,145.5,25];
btk_epac_2022_48 = [14.8,125.9,120;14.6,132.0,95;15.6,137.5,100;17.3,142.8,75;17.7,148.5,40]; # TCR (epac only)
nhcvect = [nhcvect;nhc_epac_2022_48];
myvect = [myvect;my_epac_2022_48];
btkvect = [btkvect;btk_epac_2022_48];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 49 ... DARBY around 2022-07-11-15Z
# my at https://twitter.com/elioeFIN/status/1546512220946931712
# NHC at https://www.nhc.noaa.gov/archive/2022/ep05/ep052022.discus.009.shtml?

nhc_epac_2022_49 = [14.8,128.1,120;15.4,133.2,85;16.7,138.5,55;17.5,143.3,35;17.3,149.0,30];
my_epac_2022_49 = [15.0,128.1,115;15.6,133.5,85;16.8,138.7,60;18.0,143.0,35;17.8,148.9,25];
btk_epac_2022_49 = [14.7,129.0,115;14.8,134.7,90;16.5,140.2,90;17.5,145.4,60;17.5,152.3,40]; # TCR (epac only)
nhcvect = [nhcvect;nhc_epac_2022_49];
myvect = [myvect;my_epac_2022_49];
btkvect = [btkvect;btk_epac_2022_49];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 50 ... DARBY around 2022-07-11-21Z
# my at https://twitter.com/elioeFIN/status/1546601932390895616
# NHC at https://www.nhc.noaa.gov/archive/2022/ep05/ep052022.discus.010.shtml?

nhc_epac_2022_50 = [14.9,129.7,120;15.6,134.7,80;17.0,140.0,50;17.4,145.3,35;17.3,151.4,30];
my_epac_2022_50 = [14.9,129.6,115;15.9,134.8,80;17.0,139.5,45;17.8,144.8,30;17.8,151.9,25];
btk_epac_2022_50 = [14.6,130.5,105;15.1,136.0,100;16.9,141.5,85;17.6,146.8,50;17.7,154.5,35]; # TCR (epac only)
nhcvect = [nhcvect;nhc_epac_2022_50];
myvect = [myvect;my_epac_2022_50];
btkvect = [btkvect;btk_epac_2022_50];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 51 ... DARBY around 2022-07-12-15Z
# my at https://twitter.com/elioeFIN/status/1546873080110366720
# NHC at https://www.nhc.noaa.gov/archive/2022/ep05/ep052022.discus.013.shtml?

nhc_epac_2022_51 = [15.2,134.4,100;16.4,139.5,75;17.2,144.6,45;17.1,150.8,30];
my_epac_2022_51 = [15.2,134.4,95;16.7,139.8,70;17.8,144.1,40;17.7,150.8,25];
btk_epac_2022_51 = [14.8,134.7,90;16.5,140.2,90;17.5,145.4,60;17.5,152.3,40]; # TCR (epac only)
nhcvect = [nhcvect;nhc_epac_2022_51];
myvect = [myvect;my_epac_2022_51];
btkvect = [btkvect;btk_epac_2022_51];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Epac 52 ... DARBY around 2022-07-13-21Z
# my at https://twitter.com/elioeFIN/status/1547326565838733312
# NHC at https://www.nhc.noaa.gov/archive/2022/ep05/ep052022.discus.018.shtml?

nhc_epac_2022_52 = [16.3,141.2,80;16.8,146.5,50;16.5,152.9,30];
my_epac_2022_52 = [16.3,141.4,80;17.2,146.3,50;16.8,153.0,30];
btk_epac_2022_52 = [16.9,141.5,85;17.6,146.8,50;17.7,154.5,35]; # TCR (epac only)
nhcvect = [nhcvect;nhc_epac_2022_52];
myvect = [myvect;my_epac_2022_52];
btkvect = [btkvect;btk_epac_2022_52];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 53 ... 06E around 2022-07-15-15Z
# my at https://twitter.com/elioeFIN/status/1547959774670573574
# NHC at https://www.nhc.noaa.gov/archive/2022/ep06/ep062022.discus.001.shtml?

nhc_epac_2022_53 = [13.6,103.5,45;15.2,106.6,65;16.7,110.2,85;18.0,115.0,85;19.5,120.0,70];
my_epac_2022_53 = [13.6,103.4,45;15.2,106.8,60;16.9,110.3,80;18.3,114.6,75;20.0,119.6,60];
btk_epac_2022_53 = [13.8,103.3,55;15.3,106.4,75;17.8,110.6,70;18.8,115.2,55;20.9,120.2,50]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_53];
myvect = [myvect;my_epac_2022_53];
btkvect = [btkvect;btk_epac_2022_53];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 54 ... ESTELLE around 2022-07-17-21Z
# my at https://twitter.com/elioeFIN/status/1548773663457120259
# NHC at https://www.nhc.noaa.gov/archive/2022/ep06/ep062022.discus.010.shtml?

nhc_epac_2022_54 = [17.3,111.8,95;18.3,116.5,90;20.3,121.2,60;21.9,125.2,40;22.8,128.8,30];
my_epac_2022_54 = [17.4,111.9,85;18.5,116.8,80;20.4,121.6,55;22.2,125.0,35;23.2,128.6,25];
btk_epac_2022_54 = [18.1,111.9,70;19.3,116.3,55;21.3,121.6,45;22.3,126.0,30;23.0,129.0,25]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_54];
myvect = [myvect;my_epac_2022_54];
btkvect = [btkvect;btk_epac_2022_54];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 55 ... ESTELLE around 2022-07-18-03Z
# my at https://twitter.com/elioeFIN/status/1548865160013651968
# NHC at https://www.nhc.noaa.gov/archive/2022/ep06/ep062022.discus.011.shtml?

nhc_epac_2022_55 = [17.7,112.6,80;18.9,117.2,80;20.8,121.8,55;22.0,125.5,35;23.0,129.0,25];
my_epac_2022_55 = [17.8,112.8,75;19.1,117.6,70;21.2,122.1,45;22.9,124.6,30;24.0,128.9,20];
btk_epac_2022_55 = [18.2,113.0,65;19.9,117.4,55;21.7,122.7,40;22.4,126.9,25;23.0,129.6,25]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_55];
myvect = [myvect;my_epac_2022_55];
btkvect = [btkvect;btk_epac_2022_55];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 56 ... ESTELLE around 2022-07-18-15Z
# my at https://twitter.com/elioeFIN/status/1549047005900840960
# NHC at https://www.nhc.noaa.gov/archive/2022/ep06/ep062022.discus.013.shtml?

nhc_epac_2022_56 = [18.8,115.2,75;20.3,119.8,65;22.1,123.9,45;23.2,127.3,30;23.5,130.1,25];
my_epac_2022_56 = [18.8,115.3,65;20.5,120.1,55;22.5,124.0,35;23.4,127.1,25;23.6,130.0,20];
btk_epac_2022_56 = [18.8,115.2,55;20.9,120.2,50;22.3,125.0,30;22.9,128.3,25;23.4,131.0,20]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_56];
myvect = [myvect;my_epac_2022_56];
btkvect = [btkvect;btk_epac_2022_56];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 57 ... FRANK around 2022-07-26-15Z
# my at https://twitter.com/elioeFIN/status/1551948285606338561
# NHC at https://www.nhc.noaa.gov/archive/2022/ep07/ep072022.discus.002.shtml?

nhc_epac_2022_57 = [12.1,105.9,40;12.6,109.5,45;13.6,113.1,65;15.0,116.5,80;17.5,119.5,80];
my_epac_2022_57 = [12.1,105.9,45;12.3,109.7,45;13.6,113.5,65;15.3,116.2,75;18.1,119.5,75];
btk_epac_2022_57 = [12.3,105.5,35;12.9,109.6,45;14.0,112.6,55;16.2,115.8,80;18.9,119.0,70]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_57];
myvect = [myvect;my_epac_2022_57];
btkvect = [btkvect;btk_epac_2022_57];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 58 ... GEORGETTE around 2022-07-28-09Z
# my at https://twitter.com/elioeFIN/status/1552582770794299393
# NHC at https://www.nhc.noaa.gov/archive/2022/ep08/ep082022.discus.004.shtml?

nhc_epac_2022_58 = [14.4,120.0,50;13.6,121.7,45;14.2,121.5,35];
my_epac_2022_58 = [14.7,119.8,45;13.7,121.4,40;14.7,120.5,30];
btk_epac_2022_58 = [15.4,121.3,50;14.3,125.5,45;13.3,128.9,40]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_58];
myvect = [myvect;my_epac_2022_58];
btkvect = [btkvect;btk_epac_2022_58];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 59 ... FRANK around 2022-07-28-15Z
# my at https://twitter.com/elioeFIN/status/1552672615206195208
# NHC at https://www.nhc.noaa.gov/archive/2022/ep07/ep072022.discus.010.shtml?

nhc_epac_2022_59 = [14.4,112.9,60;16.7,116.5,80;19.1,120.1,85;21.5,123.5,60;23.5,126.0,40];
my_epac_2022_59 = [14.4,112.8,65;17.0,116.3,75;19.2,119.7,75;21.7,123.2,50;24.2,126.3,35];
btk_epac_2022_59 = [14.0,112.6,55;16.2,115.8,80;18.9,119.0,70;21.9,122.1,55;24.4,125.2,35]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_59];
myvect = [myvect;my_epac_2022_59];
btkvect = [btkvect;btk_epac_2022_59];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 60 ... FRANK around 2022-07-29-09Z
# my at https://twitter.com/elioeFIN/status/1552943086925496320
# NHC at https://www.nhc.noaa.gov/archive/2022/ep07/ep072022.discus.013.shtml?

nhc_epac_2022_60 = [15.5,115.2,80;18.0,118.7,90;20.4,122.1,70;22.8,125.2,45;25.0,128.0,30];
my_epac_2022_60 = [15.6,115.2,75;18.2,118.7,80;20.7,122.0,60;23.2,124.8,35;25.2,127.6,25];
btk_epac_2022_60 = [15.5,115.0,80;18.3,118.2,75;21.2,121.3,60;23.7,124.5,40;26.9,126.9,30]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_60];
myvect = [myvect;my_epac_2022_60];
btkvect = [btkvect;btk_epac_2022_60];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 61 ... FRANK around 2022-07-29-15Z
# my at https://twitter.com/elioeFIN/status/1553035600982409217
# NHC at https://www.nhc.noaa.gov/archive/2022/ep07/ep072022.discus.014.shtml?

nhc_epac_2022_61 = [16.5,116.1,80;18.9,119.6,85;21.5,122.8,65;24.0,126.0,40;26.0,128.5,25];
my_epac_2022_61 = [16.4,116.0,75;18.9,119.4,75;21.6,122.7,55;24.4,125.6,30;25.5,128.0,25];
btk_epac_2022_61 = [16.2,115.8,80;18.9,119.0,70;21.9,122.1,55;24.4,125.2,35;27.9,127.3,30]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_61];
myvect = [myvect;my_epac_2022_61];
btkvect = [btkvect;btk_epac_2022_61];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 62 ... FRANK around 2022-07-31-09Z
# my at https://twitter.com/elioeFIN/status/1553669279668752384
# NHC at https://www.nhc.noaa.gov/archive/2022/ep07/ep072022.discus.021.shtml?

nhc_epac_2022_62 = [21.2,121.1,70;24.4,123.9,40;27.8,126.2,25];
my_epac_2022_62 = [21.3,121.0,60;24.6,123.7,35;28.1,125.9,20];
btk_epac_2022_62 = [21.2,121.3,60;23.7,124.5,40;26.9,126.9,30]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_62];
myvect = [myvect;my_epac_2022_62];
btkvect = [btkvect;btk_epac_2022_62];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 63 ... FRANK around 2022-07-31-15Z
# my at https://twitter.com/elioeFIN/status/1553757743412121601
# NHC at https://www.nhc.noaa.gov/archive/2022/ep07/ep072022.discus.022.shtml?

nhc_epac_2022_63 = [21.9,121.8,55;25.2,124.5,35;28.7,126.4,25];
my_epac_2022_63 = [21.9,121.5,55;25.4,124.0,30;29.7,125.5,20];
btk_epac_2022_63 = [21.9,122.1,55;24.4,125.2,35;27.9,127.3,30]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_63];
myvect = [myvect;my_epac_2022_63];
btkvect = [btkvect;btk_epac_2022_63];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 64 ... 09E around 2022-08-07-09Z
# my at https://twitter.com/elioeFIN/status/1556202470669434881
# NHC at https://www.nhc.noaa.gov/archive/2022/ep09/ep092022.discus.004.shtml?

nhc_epac_2022_64 = [18.7,112.2,40;21.1,115.5,45;22.8,118.7,35;23.7,121.8,30;24.0,125.0,30];
my_epac_2022_64 = [18.8,112.1,35;21.4,115.6,45;23.3,118.9,35;24.1,122.0,25;24.5,124.8,25];
btk_epac_2022_64 = [18.8,112.2,45;21.4,115.7,75;23.3,118.8,55;24.0,123.0,35;24.1,126.5,25]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_64];
myvect = [myvect;my_epac_2022_64];
btkvect = [btkvect;btk_epac_2022_64];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 65 ... HOWARD around 2022-08-08-09Z
# my at https://twitter.com/elioeFIN/status/1556564420914020357
# NHC at https://www.nhc.noaa.gov/archive/2022/ep09/ep092022.discus.008.shtml?

nhc_epac_2022_65 = [21.7,115.5,50;23.6,119.1,45;24.6,122.5,30;24.6,125.4,30];
my_epac_2022_65 = [21.8,115.4,50;23.9,119.2,40;25.0,122.3,30;25.0,125.0,25];
btk_epac_2022_65 = [21.4,115.7,75;23.3,118.8,55;24.0,123.0,35;24.1,126.5,25]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_65];
myvect = [myvect;my_epac_2022_65];
btkvect = [btkvect;btk_epac_2022_65];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Epac 66 ... HOWARD around 2022-08-09-09Z
# my at https://twitter.com/elioeFIN/status/1556931811082735616
# NHC at https://www.nhc.noaa.gov/archive/2022/ep09/ep092022.discus.012.shtml?

nhc_epac_2022_66 = [23.2,119.2,60;24.4,122.5,40;25.0,125.1,30];
my_epac_2022_66 = [23.2,119.2,55;24.6,122.4,40;25.3,125.4,25];
btk_epac_2022_66 = [23.3,118.8,55;24.0,123.0,35;24.1,126.5,25]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_66];
myvect = [myvect;my_epac_2022_66];
btkvect = [btkvect;btk_epac_2022_66];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Wpac 12 ... TD / 10W around 2022-08-21-21Z
# my at https://twitter.com/elioeFIN/status/1561450118934577158

nhc_wpac_2022_12 = [17.5,123.5,40;19.5,120.6,50;21.8,117.0,55;23.3,113.0,35];
my_wpac_2022_12 = [17.4,123.8,40;19.1,120.4,45;21.4,116.7,50;23.2,111.7,35];
btk_wpac_2022_12 = [16.3,123.2,50;19.0,118.8,55;20.8,113.0,50;21.7,106.5,25]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2022_12];
myvect = [myvect;my_wpac_2022_12];
btkvect = [btkvect;btk_wpac_2022_12];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Wpac 13 ... MA-ON around 2022-08-22-21Z
# my at https://twitter.com/elioeFIN/status/1561820360437374977

nhc_wpac_2022_13 = [18.8,119.9,60;20.8,115.2,70;22.6,109.4,35];
my_wpac_2022_13 = [19.0,119.7,55;20.8,115.0,65;23.0,109.5,35];
btk_wpac_2022_13 = [19.0,118.8,55;20.8,113.0,50;21.7,106.5,25]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2022_13];
myvect = [myvect;my_wpac_2022_13];
btkvect = [btkvect;btk_wpac_2022_13];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Wpac 14 ... MA-ON around 2022-08-23-21Z
# my at https://twitter.com/elioeFIN/status/1562179521314521088

nhc_wpac_2022_14 = [21.1,113.8,65;22.8,107.5,50];
my_wpac_2022_14 = [20.9,113.8,65;22.7,107.5,45];
btk_wpac_2022_14 = [20.8,113.0,50;21.7,106.5,25]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2022_14];
myvect = [myvect;my_wpac_2022_14];
btkvect = [btkvect;btk_wpac_2022_14];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Atl 019 ... 91L around 2022-08-28-09Z
# my at https://twitter.com/elioeFIN/status/1563809498162135040
# (no NHC advisory)

# Wpac 15 ... HINNAMNOR around 2022-08-30-15Z
# my at https://twitter.com/elioeFIN/status/1564622411886198786

nhc_wpac_2022_15 = [25.0,128.1,135;22.9,125.8,120;22.9,125.1,100;24.8,124.8,95;27.0,124.5,100];
my_wpac_2022_15 = [24.9,128.1,135;22.6,125.9,115;22.8,125.0,95;24.7,125.0,95;27.3,124.5,95];
btk_wpac_2022_15 = [24.7,127.7,130;21.3,125.5,120;22.1,124.7,75;24.4,124.8,85;27.7,124.7,105]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2022_15];
myvect = [myvect;my_wpac_2022_15];
btkvect = [btkvect;btk_wpac_2022_15];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 16 ... HINNAMNOR around 2022-08-31-09Z
# my at https://twitter.com/elioeFIN/status/1564895390771601409

nhc_wpac_2022_16 = [22.7,125.8,120;22.3,124.8,105;23.8,124.2,100;26.0,123.9,105;29.0,124.0,115];
my_wpac_2022_16 = [22.3,125.5,120;22.2,125.0,100;23.8,124.1,95;26.3,123.5,105;29.1,123.8,105];
btk_wpac_2022_16 = [21.7,125.5,135;22.0,125.0,80;23.7,124.8,85;27.1,124.8,105;31.0,125.6,100]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2022_16];
myvect = [myvect;my_wpac_2022_16];
btkvect = [btkvect;btk_wpac_2022_16];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 17 ... HINNAMNOR around 2022-08-31-15Z
# my at https://twitter.com/elioeFIN/status/1564987174897999873

nhc_wpac_2022_17 = [22.2,125.3,110;22.5,124.4,100;24.3,124.1,105;26.9,123.8,110;29.8,123.8,115];
my_wpac_2022_17 = [21.7,125.3,105;22.1,124.5,95;24.3,124.3,100;27.3,123.7,110;30.5,124.9,110];
btk_wpac_2022_17 = [21.3,125.5,120;22.1,124.7,75;24.4,124.8,85;27.7,124.7,105;32.5,126.6,90]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2022_17];
myvect = [myvect;my_wpac_2022_17];
btkvect = [btkvect;btk_wpac_2022_17];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 18 ... HINNAMNOR around 2022-09-01-09Z
# my at https://twitter.com/elioeFIN/status/1565261340180094976

nhc_wpac_2022_18 = [21.6,124.8,110;23.4,124.2,100;25.8,124.0,115;29.0,124.5,105;35.1,130.0,80];
my_wpac_2022_18 = [21.8,124.9,110;23.4,124.6,100;26.3,124.2,110;29.8,124.9,105;36.2,131.4,80];
btk_wpac_2022_18 = [22.0,125.0,80;23.7,124.8,85;27.1,124.8,105;31.0,125.6,100;39.9,133.7,60]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2022_18];
myvect = [myvect;my_wpac_2022_18];
btkvect = [btkvect;btk_wpac_2022_18];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Atl 020 ... DANIELLE around 2022-09-01-15Z
# my at https://twitter.com/elioeFIN/status/1565354407285653504
# NHC at https://www.nhc.noaa.gov/archive/2022/al05/al052022.discus.002.shtml?

nhc_atl_2022_020 = [38.2,44.0,45;38.0,44.2,65;38.5,44.9,75;40.0,43.6,80;42.0,42.0,75];
my_atl_2022_020 = [38.1,44.0,50;37.7,44.2,65;38.1,44.9,75;39.9,43.5,80;42.4,41.5,75];
btk_atl_2022_020 = [37.8,43.6,65;38.0,44.2,60;38.1,45.4,70;39.9,44.1,75;42.1,41.8,65]; # TCR
nhcvect = [nhcvect;nhc_atl_2022_020];
myvect = [myvect;my_atl_2022_020];
btkvect = [btkvect;btk_atl_2022_020];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 021 ... DANIELLE around 2022-09-02-09Z
# my at https://twitter.com/elioeFIN/status/1565625782470381569
# NHC at https://www.nhc.noaa.gov/archive/2022/al05/al052022.discus.005.shtml?

nhc_atl_2022_021 = [37.8,43.7,70;38.2,44.6,80;39.2,43.7,85;41.0,41.4,80;42.5,38.0,75];
my_atl_2022_021 = [37.8,43.5,75;37.8,44.1,75;38.5,43.1,85;40.2,40.6,80;42.3,38.1,70];
btk_atl_2022_021 = [38.0,43.8,60;37.9,45.3,70;39.2,44.6,75;41.8,42.5,65;42.9,38.6,70]; # TCR
nhcvect = [nhcvect;nhc_atl_2022_021];
myvect = [myvect;my_atl_2022_021];
btkvect = [btkvect;btk_atl_2022_021];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 022 ... DANIELLE around 2022-09-02-15Z
# my at https://twitter.com/elioeFIN/status/1565717321087438849
# NHC at https://www.nhc.noaa.gov/archive/2022/al05/al052022.discus.006.shtml?

nhc_atl_2022_022 = [38.1,43.5,75;38.5,44.4,85;39.6,43.1,85;41.0,40.5,80;42.5,36.4,70];
my_atl_2022_022 = [38.0,43.5,80;37.9,44.1,80;38.9,42.8,85;40.6,40.0,80;42.7,36.0,70];
btk_atl_2022_022 = [38.0,44.2,60;38.1,45.4,70;39.9,44.1,75;42.1,41.8,65;43.5,37.2,70]; # TCR
nhcvect = [nhcvect;nhc_atl_2022_022];
myvect = [myvect;my_atl_2022_022];
btkvect = [btkvect;btk_atl_2022_022];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 023 ... DANIELLE around 2022-09-03-09Z
# my at https://twitter.com/elioeFIN/status/1565989956811718656
# NHC at https://www.nhc.noaa.gov/archive/2022/al05/al052022.discus.009.shtml?

nhc_atl_2022_023 = [38.1,44.7,65;39.1,44.3,75;40.7,42.6,75;43.0,39.5,70;46.5,35.5,65];
my_atl_2022_023 = [38.0,44.7,65;38.8,44.0,70;40.3,42.1,70;42.6,38.8,70;46.5,34.3,60];
btk_atl_2022_023 = [37.9,45.3,70;39.2,44.6,75;41.8,42.5,65;42.9,38.6,70;46.2,32.4,60]; # TCR
nhcvect = [nhcvect;nhc_atl_2022_023];
myvect = [myvect;my_atl_2022_023];
btkvect = [btkvect;btk_atl_2022_023];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 024 ... EARL around 2022-09-03-15Z
# my at https://twitter.com/elioeFIN/status/1566081607248879619
# NHC at https://www.nhc.noaa.gov/archive/2022/al06/al062022.discus.003.shtml?

nhc_atl_2022_024 = [20.3,65.0,40;21.8,66.3,45;24.0,66.6,50;25.3,65.9,55;27.0,64.5,60];
my_atl_2022_024 = [20.1,65.0,40;22.2,66.1,50;24.6,66.1,55;26.2,65.3,60;27.5,63.4,80];
btk_atl_2022_024 = [19.8,64.6,45;21.5,65.2,55;23.5,65.7,55;25.4,65.8,75;28.7,65.3,85]; # TCR
nhcvect = [nhcvect;nhc_atl_2022_024];
myvect = [myvect;my_atl_2022_024];
btkvect = [btkvect;btk_atl_2022_024];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 025 ... EARL around 2022-09-04-09Z
# my at https://twitter.com/elioeFIN/status/1566349467107966979
# NHC at https://www.nhc.noaa.gov/archive/2022/al06/al062022.discus.006.shtml?

nhc_atl_2022_025 = [21.1,66.2,50;23.0,66.6,55;25.0,66.5,60;26.5,65.5,70;28.5,63.5,85];
my_atl_2022_025 = [20.9,66.1,50;23.0,66.4,55;24.9,66.0,65;26.2,64.9,75;28.7,63.3,100];
btk_atl_2022_025 = [20.8,65.4,55;23.1,65.3,55;25.0,65.9,75;27.7,65.5,90;31.9,63.2,80]; # TCR
nhcvect = [nhcvect;nhc_atl_2022_025];
myvect = [myvect;my_atl_2022_025];
btkvect = [btkvect;btk_atl_2022_025];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 026 ... EARL around 2022-09-04-15Z
# my at https://twitter.com/elioeFIN/status/1566444517888327680
# NHC at https://www.nhc.noaa.gov/archive/2022/al06/al062022.discus.007.shtml?

nhc_atl_2022_026 = [21.5,65.2,55;23.5,65.5,65;25.7,65.0,75;27.2,64.0,85;29.6,61.8,100];
my_atl_2022_026 = [21.4,65.1,55;23.6,65.3,65;25.4,64.4,70;27.1,62.7,80;30.1,60.9,100];
btk_atl_2022_026 = [21.5,65.2,55;23.5,65.7,55;25.4,65.8,75;28.7,65.3,85;33.4,61.9,85]; # TCR
nhcvect = [nhcvect;nhc_atl_2022_026];
myvect = [myvect;my_atl_2022_026];
btkvect = [btkvect;btk_atl_2022_026];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 027 ... EARL around 2022-09-05-09Z
# my at https://twitter.com/elioeFIN/status/1566714426421661696
# NHC at https://www.nhc.noaa.gov/archive/2022/al06/al062022.discus.010.shtml?

nhc_atl_2022_027 = [22.9,65.7,55;25.1,65.9,60;27.3,65.4,75;30.0,64.0,90;33.5,60.0,105];
my_atl_2022_027 = [22.7,65.5,55;24.9,65.6,60;27.2,64.9,75;30.2,63.0,95;33.7,59.0,105];
btk_atl_2022_027 = [23.1,65.3,55;25.0,65.9,75;27.7,65.5,90;31.9,63.2,80;40.0,54.3,90]; # TCR
nhcvect = [nhcvect;nhc_atl_2022_027];
myvect = [myvect;my_atl_2022_027];
btkvect = [btkvect;btk_atl_2022_027];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 028 ... EARL around 2022-09-06-15Z
# my at https://twitter.com/elioeFIN/status/1567169411789750273
# NHC at https://www.nhc.noaa.gov/archive/2022/al06/al062022.discus.015.shtml?

nhc_atl_2022_028 = [25.5,65.7,60;28.6,65.0,80;33.0,61.4,100;39.3,52.8,95;44.0,44.0,65];
my_atl_2022_028 = [25.4,65.8,65;28.6,64.6,75;32.7,61.0,95;39.2,52.6,95;43.3,44.7,55];
btk_atl_2022_028 = [25.4,65.8,75;28.7,65.3,85;33.4,61.9,85;42.4,53.3,80;44.2,52.0,50]; # TCR
nhcvect = [nhcvect;nhc_atl_2022_028];
myvect = [myvect;my_atl_2022_028];
btkvect = [btkvect;btk_atl_2022_028];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 67 ... KAY around 2022-09-06-15Z
# my at https://twitter.com/elioeFIN/status/1567165746676998145
# NHC at https://www.nhc.noaa.gov/archive/2022/ep12/ep122022.discus.009.shtml?

nhc_epac_2022_67 = [20.7,112.6,95;24.6,114.3,90;28.0,116.0,60;30.2,118.6,45;30.5,120.9,30];
my_epac_2022_67 = [20.8,112.0,85;25.0,114.5,80;28.6,116.2,50;31.2,118.4,30;31.0,119.9,25];
btk_epac_2022_67 = [20.6,112.3,85;25.2,113.5,65;30.0,116.4,40;30.9,120.2,30;30.3,121.3,20]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_67];
myvect = [myvect;my_epac_2022_67];
btkvect = [btkvect;btk_epac_2022_67];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Wpac 19 ... TD / 14W around 2022-09-07-15Z
# my at https://twitter.com/elioeFIN/status/1567521421152161794

nhc_wpac_2022_19 = [18.5,131.8,75;20.8,129.3,105;22.7,127.3,120;24.0,126.0,115;25.9,125.0,100];
my_wpac_2022_19 = [18.7,132.2,75;20.9,130.1,105;23.4,128.0,120;24.4,126.4,115;26.3,125.4,95];
btk_wpac_2022_19 = [17.4,130.9,40;19.5,127.7,55;21.7,125.5,75;23.3,124.5,100;24.9,124.0,85]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2022_19];
myvect = [myvect;my_wpac_2022_19];
btkvect = [btkvect;btk_wpac_2022_19];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Atl 029 ... EARL around 2022-09-07-15Z
# my at https://twitter.com/elioeFIN/status/1567532906867838977
# NHC at https://www.nhc.noaa.gov/archive/2022/al06/al062022.discus.019.shtml?

nhc_atl_2022_029 = [28.5,65.2,90;33.0,61.5,110;40.1,53.1,100;45.0,49.0,60;47.0,47.9,45];
my_atl_2022_029 = [28.5,65.1,95;33.0,60.8,105;39.8,51.6,105;45.5,46.0,60;45.5,44.3,45];
btk_atl_2022_029 = [28.7,65.3,85;33.4,61.9,85;42.4,53.3,80;44.2,52.0,50;43.9,51.9,40]; # TCR
nhcvect = [nhcvect;nhc_atl_2022_029];
myvect = [myvect;my_atl_2022_029];
btkvect = [btkvect;btk_atl_2022_029];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 68 ... KAY around 2022-09-07-15Z
# my at https://twitter.com/elioeFIN/status/1567529119541248007
# NHC at https://www.nhc.noaa.gov/archive/2022/ep12/ep122022.discus.013.shtml?

nhc_epac_2022_68 = [24.9,114.0,85;28.9,116.1,65;30.9,118.9,40;30.9,121.2,30;29.4,121.9,20];
my_epac_2022_68 = [25.0,113.9,80;29.2,116.2,60;31.4,118.8,35;31.1,120.8,25;29.4,120.7,15];
btk_epac_2022_68 = [25.2,113.5,65;30.0,116.4,40;30.9,120.2,30;30.3,121.3,20;28.5,121.8,15]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_68];
myvect = [myvect;my_epac_2022_68];
btkvect = [btkvect;btk_epac_2022_68];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Atl 030 ... EARL around 2022-09-08-15Z
# my at https://twitter.com/elioeFIN/status/1567895521242521603
# NHC at https://www.nhc.noaa.gov/archive/2022/al06/al062022.discus.023.shtml?

nhc_atl_2022_030 = [33.5,61.7,110;40.9,53.5,100;44.9,48.1,50;46.1,46.2,40;47.1,40.7,40];
my_atl_2022_030 = [33.2,61.8,110;40.7,53.1,95;45.2,46.3,50;47.9,44.4,40;46.7,38.9,35];
btk_atl_2022_030 = [33.4,61.9,85;42.4,53.3,80;44.2,52.0,50;43.9,51.9,40;43.4,45.2,35]; # TCR
nhcvect = [nhcvect;nhc_atl_2022_030];
myvect = [myvect;my_atl_2022_030];
btkvect = [btkvect;btk_atl_2022_030];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 69 ... KAY around 2022-09-08-15Z
# my at https://twitter.com/elioeFIN/status/1567891757634932737
# NHC at https://www.nhc.noaa.gov/archive/2022/ep12/ep122022.discus.017.shtml?

nhc_epac_2022_69 = [29.6,116.0,55;31.5,118.9,40;31.3,120.8,30;30.0,121.0,20];
my_epac_2022_69 = [29.8,116.1,50;31.8,119.3,35;32.2,121.3,25;30.8,120.9,20];
btk_epac_2022_69 = [30.0,116.4,40;30.9,120.2,30;30.3,121.3,20;28.5,121.8,15]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_69];
myvect = [myvect;my_epac_2022_69];
btkvect = [btkvect;btk_epac_2022_69];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Wpac 20 ... MUIFA around 2022-09-09-15Z
# my at https://twitter.com/elioeFIN/status/1568248616145358849

nhc_wpac_2022_20 = [22.1,125.7,90;23.4,124.1,110;24.4,123.6,100;25.6,123.6,85;27.3,123.4,65];
my_wpac_2022_20 = [21.7,125.3,90;22.7,123.5,105;24.0,122.9,95;25.0,123.2,85;27.0,123.1,55];
btk_wpac_2022_20 = [21.7,125.5,75;23.3,124.4,100;24.9,124.0,85;26.8,123.9,85;29.9,122.3,75]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2022_20];
myvect = [myvect;my_wpac_2022_20];
btkvect = [btkvect;btk_wpac_2022_20];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 21 ... MUIFA around 2022-09-10-15Z
# my at https://twitter.com/elioeFIN/status/1568614336087605250

nhc_wpac_2022_21 = [23.4,124.4,115;24.6,124.0,100;26.1,123.9,90;29.3,123.1,65;33.1,121.8,45];
my_wpac_2022_21 = [23.1,124.1,110;24.3,123.5,100;26.0,123.7,90;29.4,123.0,65;32.9,120.8,45];
btk_wpac_2022_21 = [23.3,124.4,100;24.9,124.0,85;26.8,123.9,85;29.9,122.3,75;35.3,120.4,40]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2022_21];
myvect = [myvect;my_wpac_2022_21];
btkvect = [btkvect;btk_wpac_2022_21];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 22 ... MUIFA around 2022-09-11-15Z
# my at https://twitter.com/elioeFIN/status/1568973843305271298

nhc_wpac_2022_22 = [24.8,124.2,95;26.0,124.3,85;28.4,123.4,75;31.9,121.7,55;36.0,120.3,30];
my_wpac_2022_22 = [24.9,124.3,95;26.1,124.5,80;29.1,123.8,70;33.1,122.2,55;37.8,120.6,25];
btk_wpac_2022_22 = [24.9,124.0,85;26.8,123.9,85;29.9,122.3,75;35.3,120.4,40;40.9,124.0,15]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2022_22];
myvect = [myvect;my_wpac_2022_22];
btkvect = [btkvect;btk_wpac_2022_22];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 23 ... 15W around 2022-09-11-15Z
# my at https://twitter.com/elioeFIN/status/1568978513515913220

nhc_wpac_2022_23 = [22.2,162.2,55;24.4,163.0,75;29.0,163.6,80;38.4,169.3,70];
my_wpac_2022_23 = [22.4,162.0,55;24.7,162.8,75;29.8,163.0,80;39.2,169.4,70];
btk_wpac_2022_23 = [22.6,162.7,45;25.9,162.9,60;32.0,161.7,70;45.4,168.2,50]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2022_23];
myvect = [myvect;my_wpac_2022_23];
btkvect = [btkvect;btk_wpac_2022_23];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Wpac 24 ... MUIFA around 2022-09-11-21Z
# my at https://twitter.com/elioeFIN/status/1569063787507982336

nhc_wpac_2022_24 = [25.2,124.3,90;26.7,124.1,75;29.8,122.5,65;33.0,120.6,50];
my_wpac_2022_24 = [25.2,124.2,90;26.9,123.9,75;30.5,122.6,60;34.7,120.3,50];
btk_wpac_2022_24 = [25.2,124.1,85;27.2,123.5,85;31.2,122.0,65;36.5,120.6,35]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2022_24];
myvect = [myvect;my_wpac_2022_24];
btkvect = [btkvect;btk_wpac_2022_24];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Wpac 25 ... MUIFA around 2022-09-12-15Z
# my at https://twitter.com/elioeFIN/status/1569341016083206144

nhc_wpac_2022_25 = [26.8,123.8,75;30.0,122.1,65;33.6,119.5,40;35.2,119.0,20];
my_wpac_2022_25 = [26.6,123.9,75;29.7,122.4,60;34.5,120.0,35;36.2,119.6,20];
btk_wpac_2022_25 = [26.8,123.9,85;29.9,122.3,75;35.3,120.4,40;40.9,124.0,15]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2022_25];
myvect = [myvect;my_wpac_2022_25];
btkvect = [btkvect;btk_wpac_2022_25];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Wpac 26 ... 16W around 2022-09-13-15Z
# my at https://twitter.com/elioeFIN/status/1569698022015078408

nhc_wpac_2022_26 = [23.4,139.2,45;24.2,136.1,60;25.8,132.7,75;28.1,130.2,95;31.5,129.3,90];
my_wpac_2022_26 = [23.5,139.4,45;24.5,136.5,60;26.0,133.5,75;28.0,130.6,95;30.7,128.5,85];
btk_wpac_2022_26 = [22.9,140.2,40;23.5,137.3,75;24.8,134.7,130;27.6,132.0,125;31.9,130.6,80]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2022_26];
myvect = [myvect;my_wpac_2022_26];
btkvect = [btkvect;btk_wpac_2022_26];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 27 ... NANMADOL around 2022-09-13-21Z
# my at https://twitter.com/elioeFIN/status/1569796161908920323

nhc_wpac_2022_27 = [23.5,139.1,55;24.4,135.6,75;25.7,132.5,100;28.3,129.9,95;31.7,128.9,85];
my_wpac_2022_27 = [23.6,139.1,55;24.5,135.9,75;25.8,132.7,100;28.4,130.2,100;31.7,128.3,80];
btk_wpac_2022_27 = [23.1,139.7,50;23.4,136.3,90;25.5,133.8,135;28.6,131.4,115;33.2,130.3,70]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2022_27];
myvect = [myvect;my_wpac_2022_27];
btkvect = [btkvect;btk_wpac_2022_27];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 28 ... NANMADOL around 2022-09-14-15Z
# my at https://twitter.com/elioeFIN/status/1570061108685185024

nhc_wpac_2022_28 = [23.5,137.2,70;25.1,134.0,95;27.9,131.4,105;31.4,130.3,80;33.7,132.4,55];
my_wpac_2022_28 = [23.7,136.9,70;25.0,134.1,95;27.8,131.2,100;31.3,130.3,80;33.5,132.1,50];
btk_wpac_2022_28 = [23.5,137.3,75;24.8,134.7,130;27.6,132.0,125;31.9,130.6,80;36.1,134.3,50]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2022_28];
myvect = [myvect;my_wpac_2022_28];
btkvect = [btkvect;btk_wpac_2022_28];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Atl 031 ... 07L around 2022-09-14-21Z
# my at https://twitter.com/elioeFIN/status/1570154838343680002
# NHC at https://www.nhc.noaa.gov/archive/2022/al07/al072022.discus.002.shtml?

nhc_atl_2022_031 = [17.0,54.6,40;17.1,59.9,40;17.6,64.5,40;18.4,68.3,40;20.0,70.5,40];
my_atl_2022_031 = [17.0,54.3,40;16.5,59.3,40;16.9,62.6,40;17.8,66.7,40;19.6,69.4,45];
btk_atl_2022_031 = [16.3,54.8,50;16.3,60.4,45;16.5,64.0,50;17.8,66.9,75;19.6,69.5,85]; # TCR
nhcvect = [nhcvect;nhc_atl_2022_031];
myvect = [myvect;my_atl_2022_031];
btkvect = [btkvect;btk_atl_2022_031];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 29 ... NANMADOL around 2022-09-15-15Z
# my at https://twitter.com/elioeFIN/status/1570420044429164547

nhc_wpac_2022_29 = [25.1,134.0,100;27.9,131.2,120;31.4,130.0,100;34.9,133.7,70];
my_wpac_2022_29 = [25.0,134.1,105;27.7,131.6,110;31.4,130.2,95;35.2,134.0,65];
btk_wpac_2022_29 = [24.8,134.7,130;27.6,132.0,125;31.9,130.6,80;36.1,134.3,50]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2022_29];
myvect = [myvect;my_wpac_2022_29];
btkvect = [btkvect;btk_wpac_2022_29];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Atl 032 ... FIONA around 2022-09-15-15Z
# my at https://twitter.com/elioeFIN/status/1570428885338324992
# NHC at https://www.nhc.noaa.gov/archive/2022/al07/al072022.discus.005.shtml?

nhc_atl_2022_032 = [16.7,58.7,45;17.2,63.4,50;17.8,66.6,55;19.3,68.6,55;21.5,70.4,60];
my_atl_2022_032 = [16.7,58.5,50;16.9,62.9,50;17.6,65.6,55;19.3,67.9,55;21.9,70.4,60];
btk_atl_2022_032 = [15.8,58.8,45;16.4,63.3,50;17.2,66.2,65;18.8,68.9,75;21.5,71.2,100]; # TCR
nhcvect = [nhcvect;nhc_atl_2022_032];
myvect = [myvect;my_atl_2022_032];
btkvect = [btkvect;btk_atl_2022_032];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 033 ... FIONA around 2022-09-16-15Z
# my at https://twitter.com/elioeFIN/status/1570791129528045568
# NHC at https://www.nhc.noaa.gov/archive/2022/al07/al072022.discus.009.shtml?

nhc_atl_2022_033 = [16.6,63.5,50;17.3,67.3,55;18.5,69.6,60;20.5,71.3,55;22.5,72.4,65];
my_atl_2022_033 = [16.8,63.4,55;17.2,67.0,55;18.9,69.2,55;21.0,71.5,55;23.2,72.3,65];
btk_atl_2022_033 = [16.4,63.3,50;17.2,66.2,65;18.8,68.9,75;21.5,71.2,100;24.2,71.7,115]; # TCR
nhcvect = [nhcvect;nhc_atl_2022_033];
myvect = [myvect;my_atl_2022_033];
btkvect = [btkvect;btk_atl_2022_033];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 70 ... LESTER around 2022-09-16-15Z
# my at https://twitter.com/elioeFIN/status/1570787211364413441
# NHC at https://www.nhc.noaa.gov/archive/2022/ep13/ep132022.discus.004.shtml?

nhc_epac_2022_70 = [15.7,99.1,45];
my_epac_2022_70 = [15.7,99.0,45];
btk_epac_2022_70 = [15.8,97.0,30]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_70];
myvect = [myvect;my_epac_2022_70];
btkvect = [btkvect;btk_epac_2022_70];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;2];

# Atl 034 ... FIONA around 2022-09-17-15Z
# my at https://twitter.com/elioeFIN/status/1571155211334320131
# NHC at https://www.nhc.noaa.gov/archive/2022/al07/al072022.discus.013.shtml?

nhc_atl_2022_034 = [17.3,66.0,60;19.2,68.3,70;21.6,70.0,80;23.9,70.6,85;27.6,69.7,90];
my_atl_2022_034 = [17.2,66.0,60;19.0,68.2,70;21.3,69.9,75;23.9,70.2,80;27.7,69.9,95];
btk_atl_2022_034 = [17.2,66.2,65;18.8,68.9,75;21.5,71.2,100;24.2,71.7,115;28.0,70.6,115]; # TCR
nhcvect = [nhcvect;nhc_atl_2022_034];
myvect = [myvect;my_atl_2022_034];
btkvect = [btkvect;btk_atl_2022_034];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 71 ... MADELINE around 2022-09-18-15Z
# my at https://twitter.com/elioeFIN/status/1571511889162641410
# NHC at https://www.nhc.noaa.gov/archive/2022/ep14/ep142022.discus.004.shtml?

nhc_epac_2022_71 = [20.4,108.8,45;21.3,111.3,35;21.6,113.8,25;21.4,116.9,25;21.1,119.7,20];
my_epac_2022_71 = [20.5,108.8,40;21.5,111.1,30;22.0,113.8,20;22.7,116.4,20;22.6,118.8,20];
btk_epac_2022_71 = [20.5,108.7,55;21.1,111.6,30;21.7,114.2,30;21.8,117.1,25;21.3,120.6,20]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_71];
myvect = [myvect;my_epac_2022_71];
btkvect = [btkvect;btk_epac_2022_71];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Atl 035 ... FIONA around 2022-09-18-15Z
# my at https://twitter.com/elioeFIN/status/1571516546333171715
# NHC at https://www.nhc.noaa.gov/archive/2022/al07/al072022.discus.017.shtml?

nhc_atl_2022_035 = [18.9,68.4,75;21.8,70.1,90;24.6,70.6,100;28.5,69.3,100;34.8,64.4,100];
my_atl_2022_035 = [18.9,68.3,75;21.8,69.8,85;24.4,70.1,100;28.5,68.7,95;34.4,64.6,105];
btk_atl_2022_035 = [18.8,68.9,75;21.5,71.2,100;24.2,71.7,115;28.0,70.6,115;34.3,65.0,115]; # TCR
nhcvect = [nhcvect;nhc_atl_2022_035];
myvect = [myvect;my_atl_2022_035];
btkvect = [btkvect;btk_atl_2022_035];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 72 ... MADELINE around 2022-09-18-21Z
# my at https://twitter.com/elioeFIN/status/1571603122916675585
# NHC at https://www.nhc.noaa.gov/archive/2022/ep14/ep142022.discus.005.shtml?

nhc_epac_2022_72 = [20.4,109.7,40;21.3,112.1,30;21.6,114.9,25;21.4,117.8,25;21.0,120.5,20];
my_epac_2022_72 = [20.6,109.5,40;21.5,112.0,30;21.9,114.6,20;21.7,117.8,20;21.4,120.6,20];
btk_epac_2022_72 = [20.8,109.5,50;21.2,112.2,30;21.8,115.0,25;21.7,117.8,25;21.0,121.8,20]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_72];
myvect = [myvect;my_epac_2022_72];
btkvect = [btkvect;btk_epac_2022_72];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Atl 036 ... FIONA around 2022-09-18-21Z
# my at https://twitter.com/elioeFIN/status/1571608095721230336
# NHC at https://www.nhc.noaa.gov/archive/2022/al07/al072022.discus.018.shtml?

nhc_atl_2022_036 = [20.0,69.2,85;22.8,70.8,100;25.7,70.7,110;30.0,68.5,105;37.5,61.5,95];
my_atl_2022_036 = [19.8,69.1,85;22.5,70.5,100;25.8,70.4,110;30.3,68.2,105;37.3,61.8,100];
btk_atl_2022_036 = [19.5,69.5,85;22.3,71.7,100;25.1,71.6,115;29.5,70.0,115;37.8,61.7,110]; # TCR
nhcvect = [nhcvect;nhc_atl_2022_036];
myvect = [myvect;my_atl_2022_036];
btkvect = [btkvect;btk_atl_2022_036];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 037 ... FIONA around 2022-09-19-15Z
# my at https://twitter.com/elioeFIN/status/1571880992192843777
# NHC at https://www.nhc.noaa.gov/archive/2022/al07/al072022.discus.021.shtml?

nhc_atl_2022_037 = [21.5,70.7,90;24.2,71.2,105;28.2,69.9,110;33.3,65.3,105;45.0,57.5,80];
my_atl_2022_037 = [21.5,70.5,95;24.4,70.8,100;28.4,69.5,105;34.1,64.8,105;45.2,56.2,80];
btk_atl_2022_037 = [21.5,71.2,100;24.2,71.7,115;28.0,70.6,115;34.3,65.0,115;46.8,61.2,75]; # TCR
nhcvect = [nhcvect;nhc_atl_2022_037];
myvect = [myvect;my_atl_2022_037];
btkvect = [btkvect;btk_atl_2022_037];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 038 ... FIONA around 2022-09-19-21Z
# my at https://twitter.com/elioeFIN/status/1571970819177201676
# NHC at https://www.nhc.noaa.gov/archive/2022/al07/al072022.discus.022.shtml?

nhc_atl_2022_038 = [22.8,71.1,100;25.7,71.0,115;29.9,68.9,110;37.0,62.3,105;48.5,58.5,80];
my_atl_2022_038 = [22.8,70.9,100;25.6,70.7,110;29.9,68.4,115;37.5,61.5,110;50.0,57.9,70];
btk_atl_2022_038 = [22.3,71.7,100;25.1,71.6,115;29.5,70.0,115;37.8,61.7,110;47.9,60.8,65]; # TCR
nhcvect = [nhcvect;nhc_atl_2022_038];
myvect = [myvect;my_atl_2022_038];
btkvect = [btkvect;btk_atl_2022_038];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 039 ... FIONA around 2022-09-22-09Z
# my at https://twitter.com/elioeFIN/status/1572877968246181888
# NHC at https://www.nhc.noaa.gov/archive/2022/al07/al072022.discus.032.shtml?

nhc_atl_2022_039 = [32.5,66.9,110;43.0,61.3,95;49.7,60.4,55;57.0,58.5,35;62.5,58.0,30];
my_atl_2022_039 = [32.3,66.9,115;43.5,60.6,95;50.8,59.8,45;58.5,57.9,35;63.5,58.4,35];
btk_atl_2022_039 = [32.5,67.5,115;45.0,61.2,85;50.6,58.6,50;58.5,59.0,35;62.5,57.0,35]; # TCR
nhcvect = [nhcvect;nhc_atl_2022_039];
myvect = [myvect;my_atl_2022_039];
btkvect = [btkvect;btk_atl_2022_039];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 30 ... NORU around 2022-09-23-09Z
# my at https://twitter.com/elioeFIN/status/1573236629351075840

nhc_wpac_2022_30 = [17.6,127.0,50;17.6,121.2,60;17.7,115.1,70;17.6,109.2,80;17.3,103.5,45];
my_wpac_2022_30 = [17.3,127.1,50;17.1,121.6,60;17.3,115.8,65;17.0,109.9,80;17.1,104.4,50];
btk_wpac_2022_30 = [15.8,126.9,70;15.0,122.4,130;15.9,116.9,75;15.6,111.2,130;15.6,105.3,50]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2022_30];
myvect = [myvect;my_wpac_2022_30];
btkvect = [btkvect;btk_wpac_2022_30];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Atl 040 ... 09L around 2022-09-23-15Z
# my at https://twitter.com/elioeFIN/status/1573329985733300224
# NHC at https://www.nhc.noaa.gov/archive/2022/al09/al092022.discus.002.shtml?

nhc_atl_2022_040 = [14.7,74.1,35;16.1,78.3,45;19.8,81.4,75;23.5,82.8,90;26.7,82.1,100];
my_atl_2022_040 = [14.7,74.2,35;16.3,78.7,45;20.2,81.9,75;24.0,83.6,90;27.4,81.9,95];
btk_atl_2022_040 = [14.5,74.4,40;15.0,79.4,40;18.7,82.4,70;22.6,83.6,100;26.0,82.7,140]; # TCR
nhcvect = [nhcvect;nhc_atl_2022_040];
myvect = [myvect;my_atl_2022_040];
btkvect = [btkvect;btk_atl_2022_040];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 041 ... 09L around 2022-09-23-21Z
# my at https://twitter.com/elioeFIN/status/1573420081119477760
# NHC at https://www.nhc.noaa.gov/archive/2022/al09/al092022.discus.003.shtml?

nhc_atl_2022_041 = [15.0,75.4,35;16.8,79.7,50;20.7,82.3,80;24.4,83.2,95;27.0,82.7,100];
my_atl_2022_041 = [14.8,75.6,35;16.9,80.0,45;20.5,82.9,75;24.4,84.1,95;27.7,82.7,80];
btk_atl_2022_041 = [14.4,75.8,40;15.8,80.1,40;19.7,83.0,80;23.5,83.3,105;26.6,82.4,135]; # TCR
nhcvect = [nhcvect;nhc_atl_2022_041];
myvect = [myvect;my_atl_2022_041];
btkvect = [btkvect;btk_atl_2022_041];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 042 ... IAN around 2022-09-24-09Z
# my at https://twitter.com/elioeFIN/status/1573600700596101122
# NHC at https://www.nhc.noaa.gov/archive/2022/al09/al092022.discus.005.shtml?

nhc_atl_2022_042 = [15.2,77.4,50;18.2,81.0,70;22.0,83.3,95;25.5,83.3,100;28.2,82.1,85];
my_atl_2022_042 = [15.0,77.4,45;18.1,81.3,65;21.8,83.6,90;25.5,83.8,100;28.6,81.8,80];
btk_atl_2022_042 = [14.6,78.3,40;17.7,81.7,65;21.8,83.6,100;25.2,82.9,120;27.7,81.1,65]; # TCR
nhcvect = [nhcvect;nhc_atl_2022_042];
myvect = [myvect;my_atl_2022_042];
btkvect = [btkvect;btk_atl_2022_042];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 043 ... IAN around 2022-09-24-15Z
# my at https://twitter.com/elioeFIN/status/1573691417737691137
# NHC at https://www.nhc.noaa.gov/archive/2022/al09/al092022.discus.006.shtml?

nhc_atl_2022_043 = [15.5,78.9,55;18.8,82.3,85;22.7,84.1,100;26.0,83.9,105;28.6,82.9,95];
my_atl_2022_043 = [15.2,79.0,55;18.6,82.7,80;22.3,84.8,100;25.7,84.9,105;29.2,83.2,75];
btk_atl_2022_043 = [15.0,79.4,40;18.7,82.4,70;22.6,83.6,100;26.0,82.7,140;28.4,80.6,60]; # TCR
nhcvect = [nhcvect;nhc_atl_2022_043];
myvect = [myvect;my_atl_2022_043];
btkvect = [btkvect;btk_atl_2022_043];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 044 ... IAN around 2022-09-25-09Z
# my at https://twitter.com/elioeFIN/status/1573960934724345856
# NHC at https://www.nhc.noaa.gov/archive/2022/al09/al092022.discus.009.shtml?

nhc_atl_2022_044 = [17.3,81.7,70;21.0,84.1,105;24.8,84.8,120;27.5,84.6,105;29.8,83.9,80];
my_atl_2022_044 = [17.1,81.8,75;20.8,84.3,110;24.4,84.9,120;26.9,84.3,105;29.6,83.9,60];
btk_atl_2022_044 = [17.7,81.7,65;21.8,83.6,100;25.2,82.9,120;27.7,81.1,65;30.3,79.1,75]; # TCR
nhcvect = [nhcvect;nhc_atl_2022_044];
myvect = [myvect;my_atl_2022_044];
btkvect = [btkvect;btk_atl_2022_044];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 045 ... IAN around 2022-09-25-15Z
# my at https://twitter.com/elioeFIN/status/1574054603410350082
# NHC at https://www.nhc.noaa.gov/archive/2022/al09/al092022.discus.010.shtml?

nhc_atl_2022_045 = [18.1,82.5,70;22.0,84.4,105;25.5,84.8,115;28.0,84.4,95;30.3,83.7,65];
my_atl_2022_045 = [18.1,82.7,75;22.0,84.5,105;25.5,84.8,115;28.0,84.3,95;30.5,83.9,50];
btk_atl_2022_045 = [18.7,82.4,70;22.6,83.6,100;26.0,82.7,140;28.4,80.6,60;31.5,79.0,75]; # TCR
nhcvect = [nhcvect;nhc_atl_2022_045];
myvect = [myvect;my_atl_2022_045];
btkvect = [btkvect;btk_atl_2022_045];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 046 ... IAN around 2022-09-26-09Z
# my at https://twitter.com/elioeFIN/status/1574326614728609793
# NHC at https://www.nhc.noaa.gov/archive/2022/al09/al092022.discus.013.shtml?

nhc_atl_2022_046 = [21.7,83.9,105;25.3,84.1,120;27.7,83.4,100;29.2,83.0,80;32.0,82.9,35];
my_atl_2022_046 = [21.5,84.0,100;25.0,84.5,120;27.4,83.8,95;28.9,83.1,70;32.2,83.1,30];
btk_atl_2022_046 = [21.8,83.6,100;25.2,82.9,120;27.7,81.1,65;30.3,79.1,75;35.3,79.7,30]; # TCR
nhcvect = [nhcvect;nhc_atl_2022_046];
myvect = [myvect;my_atl_2022_046];
btkvect = [btkvect;btk_atl_2022_046];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 047 ... IAN around 2022-09-26-15Z
# my at https://twitter.com/elioeFIN/status/1574416413007159297
# NHC at https://www.nhc.noaa.gov/archive/2022/al09/al092022.discus.014.shtml?

nhc_atl_2022_047 = [22.7,84.0,105;26.1,83.8,120;28.0,83.2,90;29.8,82.9,55;32.8,82.6,30];
my_atl_2022_047 = [22.6,84.1,105;26.0,84.0,115;27.8,83.1,80;29.4,83.1,55;32.6,83.3,30];
btk_atl_2022_047 = [22.6,83.6,100;26.0,82.7,140;28.4,80.6,60;31.5,79.0,75;35.8,79.9,20]; # TCR (except day 5)
nhcvect = [nhcvect;nhc_atl_2022_047];
myvect = [myvect;my_atl_2022_047];
btkvect = [btkvect;btk_atl_2022_047];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 048 ... IAN around 2022-09-27-09Z
# my at https://twitter.com/elioeFIN/status/1574689322988867585
# NHC at https://www.nhc.noaa.gov/archive/2022/al09/al092022.discus.017.shtml?

nhc_atl_2022_048 = [25.4,83.5,115;27.6,82.6,105;29.0,82.0,55;31.7,82.2,30];
my_atl_2022_048 = [25.1,83.5,120;27.3,82.7,100;28.8,82.0,50;31.6,82.4,25];
btk_atl_2022_048 = [25.2,82.9,120;27.7,81.1,65;30.3,79.1,75;35.3,79.7,30]; # TCR
nhcvect = [nhcvect;nhc_atl_2022_048];
myvect = [myvect;my_atl_2022_048];
btkvect = [btkvect;btk_atl_2022_048];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 049 ... IAN around 2022-09-27-15Z
# my at https://twitter.com/elioeFIN/status/1574780096103305219
# NHC at https://www.nhc.noaa.gov/archive/2022/al09/al092022.discus.018.shtml?

nhc_atl_2022_049 = [26.0,83.0,115;27.8,82.1,75;29.5,81.5,50;33.0,81.8,35];
my_atl_2022_049 = [25.9,82.9,115;27.5,81.8,70;28.8,81.8,50;32.0,82.3,35];
btk_atl_2022_049 = [26.0,82.7,140;28.4,80.6,60;31.5,79.0,75;35.8,79.9,20]; # TCR (except day 4)
nhcvect = [nhcvect;nhc_atl_2022_049];
myvect = [myvect;my_atl_2022_049];
btkvect = [btkvect;btk_atl_2022_049];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 050 ... IAN around 2022-09-28-15Z
# my at https://twitter.com/elioeFIN/status/1575141101534601222
# NHC at https://www.nhc.noaa.gov/archive/2022/al09/al092022.discus.024.shtml?

nhc_atl_2022_050 = [28.3,81.4,60;30.8,80.6,55;34.7,81.5,30];
my_atl_2022_050 = [28.1,81.3,60;30.1,80.7,50;33.6,82.0,30];
btk_atl_2022_050 = [28.4,80.6,60;31.5,79.0,75;35.8,79.9,20]; # TCR (except day 3)
nhcvect = [nhcvect;nhc_atl_2022_050];
myvect = [myvect;my_atl_2022_050];
btkvect = [btkvect;btk_atl_2022_050];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Epac 73 ... ORLENE around 2022-09-29-09Z
# my at https://twitter.com/elioeFIN/status/1575410234780254210
# NHC at https://www.nhc.noaa.gov/archive/2022/ep16/ep162022.discus.002.shtml?

nhc_epac_2022_73 = [16.4,107.7,55;17.9,108.5,70;20.0,108.2,70;22.6,107.4,55];
my_epac_2022_73 = [16.3,107.5,50;18.4,108.2,70;20.3,107.7,70;22.8,107.7,45];
btk_epac_2022_73 = [15.6,106.7,50;17.1,107.0,60;18.6,106.9,105;21.7,106.6,85]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_73];
myvect = [myvect;my_epac_2022_73];
btkvect = [btkvect;btk_epac_2022_73];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Epac 74 ... ORLENE around 2022-09-29-21Z
# my at https://twitter.com/elioeFIN/status/1575592103618310144
# NHC at https://www.nhc.noaa.gov/archive/2022/ep16/ep162022.discus.004.shtml?

nhc_epac_2022_74 = [16.9,108.1,60;18.6,108.2,80;20.8,107.8,80;23.5,107.0,65];
my_epac_2022_74 = [16.8,108.0,55;18.4,107.6,80;20.4,107.0,75;23.7,106.5,40];
btk_epac_2022_74 = [16.3,106.9,50;17.7,107.1,75;20.0,107.0,100;23.2,106.0,45]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_74];
myvect = [myvect;my_epac_2022_74];
btkvect = [btkvect;btk_epac_2022_74];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Epac 75 ... ORLENE around 2022-09-30-15Z
# my at https://twitter.com/elioeFIN/status/1575865826736934912
# NHC at https://www.nhc.noaa.gov/archive/2022/ep16/ep162022.discus.007.shtml?

nhc_epac_2022_75 = [17.5,107.3,70;19.7,107.0,85;22.9,106.4,60];
my_epac_2022_75 = [17.4,107.3,75;19.4,106.6,80;22.6,105.6,45];
btk_epac_2022_75 = [17.4,107.0,65;19.3,106.9,115;22.6,106.2,75]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_75];
myvect = [myvect;my_epac_2022_75];
btkvect = [btkvect;btk_epac_2022_75];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 76 ... ORLENE around 2022-09-30-21Z
# my at https://twitter.com/elioeFIN/status/1575950780477370368
# NHC at https://www.nhc.noaa.gov/archive/2022/ep16/ep162022.discus.008.shtml?

nhc_epac_2022_76 = [18.0,107.2,75;20.6,106.8,80;23.0,106.4,60];
my_epac_2022_76 = [17.9,107.2,75;20.1,106.7,75;22.7,105.8,45];
btk_epac_2022_76 = [17.7,107.1,75;20.0,107.0,100;23.2,106.0,45]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_76];
myvect = [myvect;my_epac_2022_76];
btkvect = [btkvect;btk_epac_2022_76];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 77 ... ORLENE around 2022-10-01-15Z
# my at https://twitter.com/elioeFIN/status/1576226896882241536
# NHC at https://www.nhc.noaa.gov/archive/2022/ep16/ep162022.discus.011.shtml?

nhc_epac_2022_77 = [19.2,106.8,80;21.6,106.3,65];
my_epac_2022_77 = [19.3,106.8,75;21.6,105.8,55];
btk_epac_2022_77 = [19.3,106.9,115;22.6,106.2,75]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_77];
myvect = [myvect;my_epac_2022_77];
btkvect = [btkvect;btk_epac_2022_77];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Epac 78 ... ORLENE around 2022-10-01-21Z
# my at https://twitter.com/elioeFIN/status/1576314752657080320
# NHC at https://www.nhc.noaa.gov/archive/2022/ep16/ep162022.discus.012.shtml?

nhc_epac_2022_78 = [19.7,106.8,85;22.1,106.2,65];
my_epac_2022_78 = [19.6,106.9,80;21.8,105.9,55];
btk_epac_2022_78 = [20.0,107.0,100;23.2,106.0,45]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_78];
myvect = [myvect;my_epac_2022_78];
btkvect = [btkvect;btk_epac_2022_78];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Epac 79 ... ORLENE around 2022-10-02-15Z
# my at https://twitter.com/elioeFIN/status/1576589012868878337
# NHC at https://www.nhc.noaa.gov/archive/2022/ep16/ep162022.discus.016.shtml?

nhc_epac_2022_79 = [21.7,106.4,85];
my_epac_2022_79 = [21.7,106.5,85];
btk_epac_2022_79 = [22.6,106.2,75]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_79];
myvect = [myvect;my_epac_2022_79];
btkvect = [btkvect;btk_epac_2022_79];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;2];

# Epac 80 ... ORLENE around 2022-10-02-21Z
# my at https://twitter.com/elioeFIN/status/1576677873121136640
# NHC at https://www.nhc.noaa.gov/archive/2022/ep16/ep162022.discus.017.shtml?

nhc_epac_2022_80 = [22.4,106.3,80];
my_epac_2022_80 = [22.5,106.2,65];
btk_epac_2022_80 = [23.2,106.0,45]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_80];
myvect = [myvect;my_epac_2022_80];
btkvect = [btkvect;btk_epac_2022_80];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;2];

# Epac 81 ... ORLENE around 2022-10-03-09Z
# my at https://twitter.com/elioeFIN/status/1576859253746565124
# NHC at https://www.nhc.noaa.gov/archive/2022/ep16/ep162022.discus.019.shtml?
# (nothing to be verified - not even after TCR release)

# Epac 82 ... PAINE around 2022-10-04-09Z
# my at https://twitter.com/elioeFIN/status/1577220801048477696
# NHC at https://www.nhc.noaa.gov/archive/2022/ep17/ep172022.discus.003.shtml?

nhc_epac_2022_82 = [18.3,113.7,35;19.0,114.6,30;19.2,115.8,25];
my_epac_2022_82 = [18.3,113.6,30;19.2,114.3,25;19.4,115.1,20];
btk_epac_2022_82 = [18.1,113.9,30;18.1,115.1,25;18.5,116.2,20]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_82];
myvect = [myvect;my_epac_2022_82];
btkvect = [btkvect;btk_epac_2022_82];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 83 ... PAINE around 2022-10-04-15Z
# my at https://twitter.com/elioeFIN/status/1577316339475222530
# NHC at https://www.nhc.noaa.gov/archive/2022/ep17/ep172022.discus.004.shtml?

nhc_epac_2022_83 = [18.6,114.0,35;19.2,114.9,25;19.4,116.7,20];
my_epac_2022_83 = [18.8,114.0,30;19.4,115.1,20;19.7,116.6,20];
btk_epac_2022_83 = [18.2,114.3,30;18.1,115.4,25;19.0,116.5,20]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_83];
myvect = [myvect;my_epac_2022_83];
btkvect = [btkvect;btk_epac_2022_83];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 84 ... PAINE around 2022-10-05-09Z
# my at https://twitter.com/elioeFIN/status/1577589656337743873
# NHC at https://www.nhc.noaa.gov/archive/2022/ep17/ep172022.discus.007.shtml?

nhc_epac_2022_84 = [18.8,115.0,30;19.1,116.5,25];
my_epac_2022_84 = [18.9,115.1,25;19.5,116.8,20];
btk_epac_2022_84 = [18.1,115.1,25;18.5,116.2,20]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_84];
myvect = [myvect;my_epac_2022_84];
btkvect = [btkvect;btk_epac_2022_84];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Shem 001 ... 02 / 03S around 2022-10-06-15Z
# my at https://twitter.com/elioeFIN/status/1578029971414847491

nhc_shem_2023_001 = [10.5,85.8,40;12.9,85.8,40;15.2,86.1,35;15.4,85.0,30];
my_shem_2023_001 = [11.0,85.3,40;14.1,86.2,40;16.8,86.3,40;16.5,84.4,35];
btk_shem_2023_001 = [10.5,84.7,35;13.1,86.0,40;15.5,87.0,25;16.9,87.2,30]; # JTWC best track (except day 4)
nhcvect = [nhcvect;nhc_shem_2023_001];
myvect = [myvect;my_shem_2023_001];
btkvect = [btkvect;btk_shem_2023_001];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Atl 051 ... 13L around 2022-10-06-21Z
# my at https://twitter.com/elioeFIN/status/1578127001327730696
# NHC at https://www.nhc.noaa.gov/archive/2022/al13/al132022.discus.002.shtml?

nhc_atl_2022_051 = [12.6,73.6,40;13.0,79.6,60;13.3,84.1,75;14.8,89.1,35];
my_atl_2022_051 = [12.4,73.2,40;12.8,79.3,60;12.9,84.3,75;14.3,89.4,35];
btk_atl_2022_051 = [12.8,73.8,40;12.6,80.5,60;12.3,86.2,45;14.5,91.0,25]; # TCR (except day 4)
nhcvect = [nhcvect;nhc_atl_2022_051];
myvect = [myvect;my_atl_2022_051];
btkvect = [btkvect;btk_atl_2022_051];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 052 ... 13L around 2022-10-07-15Z
# my at https://twitter.com/elioeFIN/status/1578402524889071616
# NHC at https://www.nhc.noaa.gov/archive/2022/al13/al132022.discus.005.shtml?

nhc_atl_2022_052 = [13.2,78.7,55;13.1,83.6,75;14.5,88.5,30];
my_atl_2022_052 = [13.3,78.6,55;13.3,83.5,75;14.6,88.7,30];
btk_atl_2022_052 = [12.7,78.9,55;12.3,84.7,65;13.7,89.9,30]; # TCR
nhcvect = [nhcvect;nhc_atl_2022_052];
myvect = [myvect;my_atl_2022_052];
btkvect = [btkvect;btk_atl_2022_052];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Atl 053 ... JULIA around 2022-10-07-21Z
# my at https://twitter.com/elioeFIN/status/1578489829989699584
# NHC at https://www.nhc.noaa.gov/archive/2022/al13/al132022.discus.006.shtml?

nhc_atl_2022_053 = [13.0,80.1,55;13.2,85.0,50;14.3,89.8,25];
my_atl_2022_053 = [13.0,80.2,60;13.2,85.1,50;13.8,89.7,25];
btk_atl_2022_053 = [12.6,80.5,60;12.3,86.2,45;14.5,91.0,25]; # TCR (except day 3)
nhcvect = [nhcvect;nhc_atl_2022_053];
myvect = [myvect;my_atl_2022_053];
btkvect = [btkvect;btk_atl_2022_053];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Atl 054 ... JULIA around 2022-10-08-09Z
# my at https://twitter.com/elioeFIN/status/1578672759806169088
# NHC at https://www.nhc.noaa.gov/archive/2022/al13/al132022.discus.008.shtml?

nhc_atl_2022_054 = [12.5,82.9,80;13.2,87.8,35];
my_atl_2022_054 = [12.4,83.1,75;13.0,87.7,35];
btk_atl_2022_054 = [12.4,83.3,75;13.1,88.8,35]; # TCR
nhcvect = [nhcvect;nhc_atl_2022_054];
myvect = [myvect;my_atl_2022_054];
btkvect = [btkvect;btk_atl_2022_054];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Atl 055 ... JULIA around 2022-10-08-15Z
# my at https://twitter.com/elioeFIN/status/1578765722108428289
# NHC at https://www.nhc.noaa.gov/archive/2022/al13/al132022.discus.009.shtml?

nhc_atl_2022_055 = [12.5,84.3,65;13.2,89.5,30];
my_atl_2022_055 = [12.4,84.5,65;13.1,89.2,30];
btk_atl_2022_055 = [12.3,84.7,65;13.7,89.9,30]; # TCR
nhcvect = [nhcvect;nhc_atl_2022_055];
myvect = [myvect;my_atl_2022_055];
btkvect = [btkvect;btk_atl_2022_055];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Atl 056 ... JULIA around 2022-10-08-21Z
# my at https://twitter.com/elioeFIN/status/1578853882813300741
# NHC at https://www.nhc.noaa.gov/archive/2022/al13/al132022.discus.010.shtml?

nhc_atl_2022_056 = [12.6,86.0,40;13.3,91.3,30];
my_atl_2022_056 = [12.4,86.0,45;12.8,91.1,35];
btk_atl_2022_056 = [12.3,86.2,45;14.5,91.0,25]; # TCR (except day 2)
nhcvect = [nhcvect;nhc_atl_2022_056];
myvect = [myvect;my_atl_2022_056];
btkvect = [btkvect;btk_atl_2022_056];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Atl 057 ... KARL around 2022-10-12-09Z
# my at https://twitter.com/elioeFIN/status/1580121843943747585
# NHC at https://www.nhc.noaa.gov/archive/2022/al14/al142022.discus.003.shtml?

nhc_atl_2022_057 = [21.7,95.3,45;20.2,95.5,40;18.6,96.1,25];
my_atl_2022_057 = [21.6,94.9,45;19.9,94.7,40;18.4,95.6,25];
btk_atl_2022_057 = [22.4,94.3,45;20.3,92.6,35;18.7,92.9,25]; # TCR
nhcvect = [nhcvect;nhc_atl_2022_057];
myvect = [myvect;my_atl_2022_057];
btkvect = [btkvect;btk_atl_2022_057];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Epac 85 ... ROSLYN around 2022-10-20-15Z
# my at https://twitter.com/elioeFIN/status/1583114468237549569
# NHC at https://www.nhc.noaa.gov/archive/2022/ep19/ep192022.discus.003.shtml?

nhc_epac_2022_85 = [15.7,103.7,55;17.2,105.5,75;20.3,105.9,85];
my_epac_2022_85 = [15.9,103.7,50;17.6,105.4,70;20.8,105.9,80];
btk_epac_2022_85 = [16.2,104.1,55;17.6,106.2,110;22.1,105.5,100]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_85];
myvect = [myvect;my_epac_2022_85];
btkvect = [btkvect;btk_epac_2022_85];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 86 ... ROSLYN around 2022-10-21-15Z
# my at https://twitter.com/elioeFIN/status/1583476335619735552
# NHC at https://www.nhc.noaa.gov/archive/2022/ep19/ep192022.discus.007.shtml?

nhc_epac_2022_86 = [18.1,106.0,85;21.7,105.8,95];
my_epac_2022_86 = [18.0,106.1,80;22.0,105.7,85];
btk_epac_2022_86 = [17.6,106.2,110;22.1,105.5,100]; # TCR
nhcvect = [nhcvect;nhc_epac_2022_86];
myvect = [myvect;my_epac_2022_86];
btkvect = [btkvect;btk_epac_2022_86];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Nio 11 ... BOB 09 / 05B around 2022-10-23-15Z
# my at https://twitter.com/elioeFIN/status/1584201039338577921

nhc_nio_2022_11 = [20.3,90.0,55];
my_nio_2022_11 = [20.0,89.8,55];
btk_nio_2022_11 = [21.1,90.4,45]; # JTWC best track
nhcvect = [nhcvect;nhc_nio_2022_11];
myvect = [myvect;my_nio_2022_11];
btkvect = [btkvect;btk_nio_2022_11];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;3];

# Nio 12 ... SITRANG around 2022-10-23-21Z
# my at https://twitter.com/elioeFIN/status/1584291892614660096

nhc_nio_2022_12 = [21.5,90.5,45];
my_nio_2022_12 = [21.7,90.6,45];
btk_nio_2022_12 = [24.8,91.2,35]; # JTWC best track
nhcvect = [nhcvect;nhc_nio_2022_12];
myvect = [myvect;my_nio_2022_12];
btkvect = [btkvect;btk_nio_2022_12];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;3];

# Wpac 31 ... NALGAE around 2022-10-27-15Z
# my at https://twitter.com/elioeFIN/status/1585644026413608961

nhc_wpac_2022_31 = [13.2,126.4,50;14.7,122.6,75;16.2,119.6,55;18.1,118.4,45;20.1,119.7,55];
my_wpac_2022_31 = [13.5,126.4,50;14.9,122.4,75;15.7,119.4,50;17.2,119.1,45;19.7,119.7,50];
btk_wpac_2022_31 = [13.0,125.3,50;14.6,121.0,45;15.4,117.5,45;17.6,116.4,65;19.9,115.6,55];
nhcvect = [nhcvect;nhc_wpac_2022_31];
myvect = [myvect;my_wpac_2022_31];
btkvect = [btkvect;btk_wpac_2022_31];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 32 ... NALGAE around 2022-10-27-21Z
# my at https://twitter.com/elioeFIN/status/1585730884610949121

nhc_wpac_2022_32 = [13.7,125.2,60;15.3,121.2,60;16.8,118.9,50;18.7,118.7,55;20.3,119.0,50];
my_wpac_2022_32 = [13.7,125.0,60;15.1,121.0,60;16.0,118.6,50;18.2,118.4,55;20.0,119.0,45];
btk_wpac_2022_32 = [13.5,123.9,55;15.8,119.9,40;15.8,117.3,45;18.1,116.1,75;20.6,115.3,50]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2022_32];
myvect = [myvect;my_wpac_2022_32];
btkvect = [btkvect;btk_wpac_2022_32];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 33 ... NALGAE around 2022-10-28-15Z
# my at https://twitter.com/elioeFIN/status/1586003087055269888

nhc_wpac_2022_33 = [14.7,121.0,55;16.5,118.0,45;18.0,117.7,50;19.3,118.0,55;20.6,117.9,50];
my_wpac_2022_33 = [14.5,121.1,55;15.8,117.9,45;17.7,117.6,50;19.2,118.0,55;21.1,118.4,45];
btk_wpac_2022_33 = [14.6,121.0,45;15.4,117.5,45;17.6,116.4,65;19.9,115.6,55;21.4,114.6,40]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2022_33];
myvect = [myvect;my_wpac_2022_33];
btkvect = [btkvect;btk_wpac_2022_33];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Atl 058 ... 15L around 2022-10-30-21Z
# my at https://twitter.com/elioeFIN/status/1586828120740470784
# NHC at https://www.nhc.noaa.gov/archive/2022/al15/al152022.discus.001.shtml?

nhc_atl_2022_058 = [16.3,76.6,40;17.2,81.3,60;17.4,85.7,70;16.4,89.5,35];
my_atl_2022_058 = [15.2,76.5,40;17.1,81.3,60;17.4,85.8,70;16.6,90.0,35];
btk_atl_2022_058 = [15.5,77.8,40;16.5,82.5,50;17.3,87.7,75;18.0,91.7,30]; # TCR
nhcvect = [nhcvect;nhc_atl_2022_058];
myvect = [myvect;my_atl_2022_058];
btkvect = [btkvect;btk_atl_2022_058];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 059 ... 15L around 2022-10-31-03Z
# my at https://twitter.com/elioeFIN/status/1586914241683939329
# NHC at https://www.nhc.noaa.gov/archive/2022/al15/al152022.discus.002.shtml?

nhc_atl_2022_059 = [16.3,78.4,40;17.1,83.1,55;17.1,87.4,70;16.0,91.0,30];
my_atl_2022_059 = [16.1,78.7,45;16.8,83.7,50;16.9,88.2,65;15.8,92.0,30];
btk_atl_2022_059 = [15.6,78.8,40;16.7,84.1,55;17.5,88.6,65;18.1,92.7,30]; # TCR
nhcvect = [nhcvect;nhc_atl_2022_059];
myvect = [myvect;my_atl_2022_059];
btkvect = [btkvect;btk_atl_2022_059];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 060 ... LISA around 2022-10-31-15Z
# my at https://twitter.com/elioeFIN/status/1587098617734696962
# NHC at https://www.nhc.noaa.gov/archive/2022/al15/al152022.discus.004.shtml?

nhc_atl_2022_060 = [16.3,81.4,45;17.1,86.3,55;16.7,90.0,40];
my_atl_2022_060 = [16.2,81.8,45;16.7,86.7,45;16.5,90.4,35];
btk_atl_2022_060 = [16.2,81.2,45;17.1,86.7,70;17.9,90.6,30]; # TCR
nhcvect = [nhcvect;nhc_atl_2022_060];
myvect = [myvect;my_atl_2022_060];
btkvect = [btkvect;btk_atl_2022_060];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Wpac 34 ... NALGAE around 2022-10-31-21Z
# my at https://twitter.com/elioeFIN/status/1587186436700250112

nhc_wpac_2022_34 = [20.1,115.2,55;21.4,113.2,35;21.2,111.1,25];
my_wpac_2022_34 = [19.9,115.0,55;21.8,113.0,30;21.9,110.8,25];
btk_wpac_2022_34 = [19.9,115.6,55;21.9,114.0,30;22.9,112.1,15]; # JTWC best track (days 1-2 only)
nhcvect = [nhcvect;nhc_wpac_2022_34];
myvect = [myvect;my_wpac_2022_34];
btkvect = [btkvect;btk_wpac_2022_34];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Atl 061 ... LISA around 2022-10-31-21Z
# my at https://twitter.com/elioeFIN/status/1587191389112123393
# NHC at https://www.nhc.noaa.gov/archive/2022/al15/al152022.discus.005.shtml?

nhc_atl_2022_061 = [16.2,82.8,50;17.0,87.6,65;16.9,90.9,30;17.5,93.0,25];
my_atl_2022_061 = [16.3,82.8,50;16.9,87.7,60;16.6,91.2,30;17.3,93.2,25];
btk_atl_2022_061 = [16.5,82.5,50;17.3,87.7,75;18.0,91.7,30;19.2,95.2,25]; # TCR
nhcvect = [nhcvect;nhc_atl_2022_061];
myvect = [myvect;my_atl_2022_061];
btkvect = [btkvect;btk_atl_2022_061];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 062 ... LISA around 2022-11-01-03Z
# my at https://twitter.com/elioeFIN/status/1587280758581903362
# NHC at https://www.nhc.noaa.gov/archive/2022/al15/al152022.discus.006.shtml?

nhc_atl_2022_062 = [16.4,83.9,55;16.9,88.3,65;16.8,91.2,25;17.0,93.5,20];
my_atl_2022_062 = [16.5,83.6,55;16.7,88.4,65;16.2,91.4,25;16.3,94.1,20];
btk_atl_2022_062 = [16.7,84.1,55;17.5,88.6,65;18.1,92.7,30;19.4,95.4,25]; # TCR
nhcvect = [nhcvect;nhc_atl_2022_062];
myvect = [myvect;my_atl_2022_062];
btkvect = [btkvect;btk_atl_2022_062];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 063 ... LISA around 2022-11-01-15Z
# my at https://twitter.com/elioeFIN/status/1587462038397255680
# NHC at https://www.nhc.noaa.gov/archive/2022/al15/al152022.discus.008.shtml?

nhc_atl_2022_063 = [16.8,86.0,70;17.0,89.4,45;17.5,92.5,20];
my_atl_2022_063 = [16.9,86.2,65;17.1,89.8,40;17.6,93.1,25];
btk_atl_2022_063 = [17.1,86.7,70;17.9,90.6,30;18.7,94.5,25]; # TCR
nhcvect = [nhcvect;nhc_atl_2022_063];
myvect = [myvect;my_atl_2022_063];
btkvect = [btkvect;btk_atl_2022_063];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Atl 064 ... LISA around 2022-11-02-21Z
# my at https://twitter.com/elioeFIN/status/1587913031001853952
# NHC at https://www.nhc.noaa.gov/archive/2022/al15/al152022.discus.013.shtml?

nhc_atl_2022_064 = [17.9,91.8,30;19.2,94.7,30];
my_atl_2022_064 = [17.7,91.9,30;18.9,95.4,30];
btk_atl_2022_064 = [18.0,91.7,30;19.2,95.2,25]; # TCR
nhcvect = [nhcvect;nhc_atl_2022_064];
myvect = [myvect;my_atl_2022_064];
btkvect = [btkvect;btk_atl_2022_064];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Atl 065 ... NICOLE around 2022-11-07-15Z
# my at https://twitter.com/elioeFIN/status/1589638119699382272
# NHC at https://www.nhc.noaa.gov/archive/2022/al17/al172022.discus.002.shtml?

nhc_atl_2022_065 = [27.7,71.9,45;26.9,76.5,60;27.3,81.2,50;29.4,83.9,45;33.3,79.0,45];
my_atl_2022_065 = [27.8,71.8,50;27.2,75.8,60;27.8,80.5,50;30.3,83.1,45;34.2,78.6,40];
btk_atl_2022_065 = [27.7,72.1,45;26.5,76.2,55;28.0,81.6,55;33.2,84.6,25;45.6,71.3,35]; # TCR (except day 5 self-made)
nhcvect = [nhcvect;nhc_atl_2022_065];
myvect = [myvect;my_atl_2022_065];
btkvect = [btkvect;btk_atl_2022_065];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 066 ... NICOLE around 2022-11-07-21Z
# my at https://twitter.com/elioeFIN/status/1589727729884151810
# NHC at https://www.nhc.noaa.gov/archive/2022/al17/al172022.discus.003.shtml?

nhc_atl_2022_066 = [27.6,73.2,45;26.7,77.6,60;28.0,82.3,40;31.2,82.6,40;37.5,73.8,45];
my_atl_2022_066 = [27.5,73.0,50;26.6,77.1,60;27.4,81.8,40;30.7,82.5,40;37.0,74.0,45];
btk_atl_2022_066 = [27.6,73.3,50;26.5,77.3,60;29.0,82.8,40;35.5,83.8,25;46.0,67.3,40]; # TCR (but day 5 self-made)
nhcvect = [nhcvect;nhc_atl_2022_066];
myvect = [myvect;my_atl_2022_066];
btkvect = [btkvect;btk_atl_2022_066];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 067 ... NICOLE around 2022-11-08-03Z
# my at https://twitter.com/elioeFIN/status/1589816917044658179
# NHC at https://www.nhc.noaa.gov/archive/2022/al17/al172022.discus.004.shtml?

nhc_atl_2022_067 = [27.2,74.5,45;26.8,78.8,65;28.9,82.6,40;33.1,80.2,30;41.2,70.0,45];
my_atl_2022_067 = [27.2,74.6,50;26.8,78.6,65;28.9,82.8,40;33.8,80.3,35;42.0,68.9,50];
btk_atl_2022_067 = [27.2,74.3,60;26.7,78.4,65;30.1,84.0,35;38.7,80.0,35;47.4,60.5,45]; # TCR (but days 4+5 self-made)
nhcvect = [nhcvect;nhc_atl_2022_067];
myvect = [myvect;my_atl_2022_067];
btkvect = [btkvect;btk_atl_2022_067];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 068 ... NICOLE around 2022-11-08-15Z
# my at https://twitter.com/elioeFIN/status/1589998229793705986
# NHC at https://www.nhc.noaa.gov/archive/2022/al17/al172022.discus.006.shtml?

nhc_atl_2022_068 = [26.8,76.0,60;28.1,80.9,60;32.7,82.5,35;41.7,73.4,40];
my_atl_2022_068 = [27.1,75.9,60;28.5,80.4,55;32.9,81.8,35;43.1,72.1,35];
btk_atl_2022_068 = [26.5,76.2,55;28.0,81.6,55;33.2,84.6,25;45.6,71.3,35]; # TCR (but day 4 self-made)
nhcvect = [nhcvect;nhc_atl_2022_068];
myvect = [myvect;my_atl_2022_068];
btkvect = [btkvect;btk_atl_2022_068];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 069 ... NICOLE around 2022-11-08-21Z
# my at https://twitter.com/elioeFIN/status/1590087780532899840
# NHC at https://www.nhc.noaa.gov/archive/2022/al17/al172022.discus.007.shtml?

nhc_atl_2022_069 = [26.7,77.2,65;28.6,82.4,55;34.7,81.9,35;45.0,71.0,40];
my_atl_2022_069 = [27.0,77.2,65;29.1,82.2,55;34.9,81.4,35;46.3,69.5,40];
btk_atl_2022_069 = [26.5,77.3,60;28.9,82.8,40;35.4,83.8,25;46.0,67.4,40]; # TCR (but day 4 self-made)
nhcvect = [nhcvect;nhc_atl_2022_069];
myvect = [myvect;my_atl_2022_069];
btkvect = [btkvect;btk_atl_2022_069];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 070 ... NICOLE around 2022-11-09-03Z
# my at https://twitter.com/elioeFIN/status/1590180391708950530
# NHC at https://www.nhc.noaa.gov/archive/2022/al17/al172022.discus.008.shtml?

nhc_atl_2022_070 = [26.9,78.8,65;29.7,83.4,40;37.3,80.0,25;47.5,64.5,20];
my_atl_2022_070 = [26.8,78.8,65;29.6,83.3,40;37.1,79.3,30;49.1,63.3,30];
btk_atl_2022_070 = [26.7,78.4,65;30.1,84.0,35;38.7,80.0,35;47.4,60.5,45]; # TCR (but days 3+4 self-made)
nhcvect = [nhcvect;nhc_atl_2022_070];
myvect = [myvect;my_atl_2022_070];
btkvect = [btkvect;btk_atl_2022_070];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 071 ... NICOLE around 2022-11-09-15Z
# my at https://twitter.com/elioeFIN/status/1590361862339952640
# NHC at https://www.nhc.noaa.gov/archive/2022/al17/al172022.discus.010.shtml?

nhc_atl_2022_071 = [27.6,81.3,55;32.4,83.3,30];
my_atl_2022_071 = [27.6,81.4,55;32.4,83.0,35];
btk_atl_2022_071 = [28.0,81.6,55;33.2,84.6,25]; # TCR
nhcvect = [nhcvect;nhc_atl_2022_071];
myvect = [myvect;my_atl_2022_071];
btkvect = [btkvect;btk_atl_2022_071];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Nio 13 ... BOB 09 / 96B around 2022-12-06-21Z
# my at https://twitter.com/elioeFIN/status/1600237506943152128
# (no JTWC forecast)

# Nio 14 ... BOB 09 / 96B around 2022-12-07-03Z
# my at https://twitter.com/elioeFIN/status/1600332589071409152
# (no JTWC forecast)

# Nio 15 ... BOB 09 / 96B around 2022-12-07-15Z
# my at https://twitter.com/elioeFIN/status/1600513151958765573
# (no JTWC forecast)

# Nio 16 ... MANDOUS around 2022-12-07-21Z
# my at https://twitter.com/elioeFIN/status/1600605241136844803
# (no JTWC forecast)

# Shem 002 ... DARIAN around 2022-12-18-21Z
# my at https://twitter.com/elioeFIN/status/1604579989143392258

nhc_shem_2023_002 = [12.9,93.6,60;13.8,93.4,60;14.2,92.1,55;14.5,89.4,55;15.7,84.3,60];
my_shem_2023_002 = [12.8,93.9,60;13.9,93.5,65;14.4,92.0,60;14.6,89.3,55;15.4,86.3,55];
btk_shem_2023_002 = [12.9,93.4,75;14.2,92.1,130;13.5,89.1,125;12.7,85.7,95;12.3,83.3,120]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_002];
myvect = [myvect;my_shem_2023_002];
btkvect = [btkvect;btk_shem_2023_002];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 003 ... DARIAN around 2022-12-19-15Z
# my at https://twitter.com/elioeFIN/status/1604853758416019457

nhc_shem_2023_003 = [13.5,93.5,75;14.0,91.8,65;14.1,89.3,65;14.5,87.0,75;15.2,85.2,70];
my_shem_2023_003 = [13.6,93.5,80;14.1,91.8,65;14.2,89.0,70;14.9,86.4,80;15.6,85.0,70];
btk_shem_2023_003 = [14.0,92.7,120;13.7,89.9,135;12.8,86.5,105;12.4,83.8,115;13.0,83.7,110]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_003];
myvect = [myvect;my_shem_2023_003];
btkvect = [btkvect;btk_shem_2023_003];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 004 ... DARIAN around 2022-12-19-21Z
# my at https://twitter.com/elioeFIN/status/1604941664283684864

nhc_shem_2023_004 = [14.0,92.7,75;14.0,90.2,65;13.6,87.0,70;13.9,84.6,75;14.9,83.3,70];
my_shem_2023_004 = [14.1,92.8,75;14.1,90.2,65;13.7,87.1,75;14.4,84.7,80;15.5,83.5,70];
btk_shem_2023_004 = [14.2,92.1,130;13.5,89.1,125;12.7,85.7,95;12.3,83.3,120;13.5,84.1,95]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_004];
myvect = [myvect;my_shem_2023_004];
btkvect = [btkvect;btk_shem_2023_004];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 005 ... DARIAN around 2022-12-20-21Z
# my at https://twitter.com/elioeFIN/status/1605302960065581057

nhc_shem_2023_005 = [14.1,89.3,115;13.6,85.8,100;13.6,82.4,95;14.2,80.8,100;15.4,80.7,90];
my_shem_2023_005 = [14.0,89.0,120;13.6,85.4,105;13.7,82.2,95;14.2,80.5,90;15.6,80.8,80];
btk_shem_2023_005 = [13.5,89.1,125;12.7,85.7,95;12.3,83.3,120;13.5,84.1,95;16.2,85.3,95]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_005];
myvect = [myvect;my_shem_2023_005];
btkvect = [btkvect;btk_shem_2023_005];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 006 ... DARIAN around 2022-12-22-15Z
# my at https://twitter.com/elioeFIN/status/1605937048585506818
# (no JTWC forecast)

# Shem 007 ... DARIAN around 2022-12-22-21Z
# my at https://twitter.com/elioeFIN/status/1606029008277147650

nhc_shem_2023_007 = [12.7,82.9,95;13.6,82.6,90;15.4,83.3,75;16.7,83.1,65;18.6,79.6,50];
my_shem_2023_007 = [12.4,82.6,100;13.7,82.7,95;15.9,84.1,80;17.8,83.8,70;19.5,79.7,50];
btk_shem_2023_007 = [12.3,83.3,120;13.5,84.1,95;16.2,85.3,95;17.1,84.3,100;18.8,80.6,65]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_007];
myvect = [myvect;my_shem_2023_007];
btkvect = [btkvect;btk_shem_2023_007];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 008 ... DARIAN around 2022-12-23-15Z
# my at https://twitter.com/elioeFIN/status/1606299639296233472

nhc_shem_2023_008 = [13.0,83.2,125;15.2,84.3,90;16.5,84.1,85;18.3,80.9,60;20.7,75.9,45];
my_shem_2023_008 = [12.8,83.1,120;15.9,84.0,95;17.0,84.1,80;18.2,81.3,70;20.7,76.1,45];
btk_shem_2023_008 = [13.0,83.7,110;15.6,85.1,90;16.9,84.9,110;18.6,82.0,70;20.5,76.7,50]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_008];
myvect = [myvect;my_shem_2023_008];
btkvect = [btkvect;btk_shem_2023_008];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 009 ... DARIAN around 2022-12-24-15Z
# my at https://twitter.com/elioeFIN/status/1606666699406802944

nhc_shem_2023_009 = [15.6,84.8,80;17.0,84.9,70;18.9,82.1,55;21.9,77.1,45;25.1,72.4,40];
my_shem_2023_009 = [15.8,84.5,85;17.2,83.9,75;18.9,81.1,60;21.9,75.8,50;24.8,71.2,40];
btk_shem_2023_009 = [15.6,85.1,90;16.9,84.9,110;18.6,82.0,70;20.5,76.7,50;24.5,71.5,50]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_009];
myvect = [myvect;my_shem_2023_009];
btkvect = [btkvect;btk_shem_2023_009];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 010 ... DARIAN around 2022-12-25-15Z
# my at https://twitter.com/elioeFIN/status/1607026276350709767

nhc_shem_2023_010 = [17.2,84.7,75;18.7,81.9,65;21.7,76.8,55;24.7,71.9,45;28.0,69.0,45];
my_shem_2023_010 = [17.1,84.8,75;18.8,82.0,60;22.1,76.9,50;25.2,71.7,50;28.5,68.9,40];
btk_shem_2023_010 = [16.9,84.9,110;18.6,82.0,70;20.5,76.7,50;24.5,71.5,50;28.1,69.2,50]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_010];
myvect = [myvect;my_shem_2023_010];
btkvect = [btkvect;btk_shem_2023_010];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 011 ... DARIAN around 2022-12-26-15Z
# my at https://twitter.com/elioeFIN/status/1607393473929383936

nhc_shem_2023_011 = [18.5,81.7,80;21.3,76.4,55;24.6,71.7,45;28.2,68.7,45;31.7,68.9,40];
my_shem_2023_011 = [18.4,81.7,85;21.7,75.9,60;24.8,71.6,50;28.5,68.6,50;32.0,68.2,45];
btk_shem_2023_011 = [18.6,82.0,70;20.5,76.7,50;24.5,71.5,50;28.1,69.2,50;32.6,68.7,30]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_011];
myvect = [myvect;my_shem_2023_011];
btkvect = [btkvect;btk_shem_2023_011];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 012 ... 07U / 07P around 2023-01-07-15Z
# my at https://twitter.com/elioeFIN/status/1611751175384096768

nhc_shem_2023_012 = [25.2,167.5,40];
my_shem_2023_012 = [25.5,168.1,40];
btk_shem_2023_012 = [25.4,168.6,25]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_012];
myvect = [myvect;my_shem_2023_012];
btkvect = [btkvect;btk_shem_2023_012];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;3];

# Shem 013 ... 05 / 08S around 2023-01-17-21Z
# my at https://twitter.com/elioeFIN/status/1615447351023263765

nhc_shem_2023_013 = [14.4,51.6,60;15.8,49.1,40;17.2,48.0,30];
my_shem_2023_013 = [13.9,51.5,50;15.0,49.6,45;15.9,48.6,30];
btk_shem_2023_013 = [13.5,51.7,55;15.8,48.7,30;16.9,46.4,20]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_013];
myvect = [myvect;my_shem_2023_013];
btkvect = [btkvect;btk_shem_2023_013];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 014 ... CHENESO around 2023-01-18-21Z
# my at https://twitter.com/elioeFIN/status/1615809868392239126

nhc_shem_2023_014 = [14.9,48.9,40;17.0,47.9,25];
my_shem_2023_014 = [15.2,49.0,35;16.3,48.1,25];
btk_shem_2023_014 = [15.8,48.7,30;16.9,46.4,20]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_014];
myvect = [myvect;my_shem_2023_014];
btkvect = [btkvect;btk_shem_2023_014];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 015 ... IRENE around 2023-01-18-21Z
# my at https://twitter.com/elioeFIN/status/1615813599175315458

nhc_shem_2023_015 = [23.5,174.3,50];
my_shem_2023_015 = [23.7,175.3,50];
btk_shem_2023_015 = [25.1,176.5,35]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_015];
myvect = [myvect;my_shem_2023_015];
btkvect = [btkvect;btk_shem_2023_015];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;3];

# Shem 016 ... CHENESO around 2023-01-24-03Z
# my at https://twitter.com/elioeFIN/status/1617714324935696385

nhc_shem_2023_016 = [20.2,42.3,60;20.3,41.9,70;20.9,41.1,75;22.9,39.6,80;24.6,40.4,70];
my_shem_2023_016 = [20.0,42.2,55;20.5,42.2,70;21.0,40.9,75;22.7,39.4,85;25.4,40.2,75];
btk_shem_2023_016 = [20.2,43.0,65;19.6,43.2,75;21.1,42.2,50;24.1,41.4,75;27.7,43.8,55]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_016];
myvect = [myvect;my_shem_2023_016];
btkvect = [btkvect;btk_shem_2023_016];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 017 ... CHENESO around 2023-01-26-03Z
# my at https://twitter.com/elioeFIN/status/1618444277276872706

nhc_shem_2023_017 = [21.1,42.0,90;23.5,40.9,95;27.3,43.4,75;31.1,50.0,65;36.7,60.5,55];
my_shem_2023_017 = [21.3,42.3,95;23.7,41.0,100;27.5,42.9,80;31.7,48.5,70;37.9,60.0,60];
btk_shem_2023_017 = [21.1,42.2,50;24.1,41.4,75;27.7,43.8,55;32.7,51.5,35;40.2,62.2,45]; # JTWC best track (except day 5)
nhcvect = [nhcvect;nhc_shem_2023_017];
myvect = [myvect;my_shem_2023_017];
btkvect = [btkvect;btk_shem_2023_017];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 018 ... FREDDY around 2023-02-06-21Z
# my at https://twitter.com/elioeFIN/status/1622701514069245953

nhc_shem_2023_018 = [14.6,115.9,85;15.3,113.0,105;15.4,110.3,85;15.7,107.2,95;16.2,103.4,85];
my_shem_2023_018 = [14.7,115.7,75;15.5,112.2,95;15.5,109.9,85;15.8,106.6,90;16.2,103.0,75];
btk_shem_2023_018 = [14.8,115.1,90;16.0,112.1,70;15.5,108.9,65;14.7,105.6,70;14.9,101.9,120]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_018];
myvect = [myvect;my_shem_2023_018];
btkvect = [btkvect;btk_shem_2023_018];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 019 ... FREDDY around 2023-02-07-03Z
# my at https://twitter.com/elioeFIN/status/1622788548897144832

nhc_shem_2023_019 = [15.4,115.0,95;15.8,112.0,100;15.9,109.3,95;16.2,106.1,90;16.7,102.3,80];
my_shem_2023_019 = [15.2,115.1,85;15.9,111.7,95;15.9,109.1,90;16.5,106.0,90;16.9,102.3,65];
btk_shem_2023_019 = [15.1,114.5,90;15.5,110.7,60;15.4,108.2,65;14.7,104.9,75;15.0,101.1,110]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_019];
myvect = [myvect;my_shem_2023_019];
btkvect = [btkvect;btk_shem_2023_019];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 020 ... FREDDY around 2023-02-07-21Z
# my at https://twitter.com/elioeFIN/status/1623058538150121479

nhc_shem_2023_020 = [15.7,112.3,90;15.6,109.5,85;15.5,106.5,90;16.2,102.9,95;16.4,98.7,85];
my_shem_2023_020 = [15.7,112.1,95;15.8,109.0,95;15.7,106.0,95;16.2,102.3,90;16.8,98.6,65];
btk_shem_2023_020 = [16.0,112.1,70;15.5,108.9,65;14.7,105.6,70;14.9,101.9,120;15.1,98.0,100]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_020];
myvect = [myvect;my_shem_2023_020];
btkvect = [btkvect;btk_shem_2023_020];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 021 ... FREDDY around 2023-02-08-03Z
# my at https://twitter.com/elioeFIN/status/1623153266241556481

nhc_shem_2023_021 = [15.7,111.6,80;15.5,108.7,80;15.5,105.5,95;15.9,101.5,90;16.1,97.5,85];
my_shem_2023_021 = [15.7,111.5,90;15.9,108.4,90;15.6,105.2,95;16.1,101.2,80;16.2,97.5,60];
btk_shem_2023_021 = [15.5,110.7,60;15.4,108.2,65;14.7,104.9,75;15.0,101.1,110;15.1,96.9,95]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_021];
myvect = [myvect;my_shem_2023_021];
btkvect = [btkvect;btk_shem_2023_021];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 022 ... 14U/12P around 2023-02-08-03Z
# my at https://twitter.com/elioeFIN/status/1623156339982708736

nhc_shem_2023_022 = [18.0,153.4,60;22.5,157.9,75;27.2,164.4,70;29.7,169.9,60;32.9,173.4,50];
my_shem_2023_022 = [17.9,153.3,65;22.2,157.6,80;27.0,164.4,70;29.5,169.9,60;32.1,173.7,45];
btk_shem_2023_022 = [18.0,153.0,50;22.0,157.7,85;27.8,165.6,60;30.9,171.8,45;34.0,176.1,55]; # JTWC best track (except day 5)
nhcvect = [nhcvect;nhc_shem_2023_022];
myvect = [myvect;my_shem_2023_022];
btkvect = [btkvect;btk_shem_2023_022];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 023 ... FREDDY around 2023-02-08-21Z
# my at https://twitter.com/elioeFIN/status/1623434441275342848

nhc_shem_2023_023 = [16.2,109.3,60;15.9,106.0,70;16.2,102.5,75;16.6,98.9,75;16.8,94.9,65];
my_shem_2023_023 = [15.9,109.1,75;15.8,105.7,80;16.0,102.2,80;16.0,98.5,75;16.4,95.5,55];
btk_shem_2023_023 = [15.5,108.9,65;14.7,105.6,70;14.9,101.9,120;15.1,98.0,100;15.4,93.5,85]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_023];
myvect = [myvect;my_shem_2023_023];
btkvect = [btkvect;btk_shem_2023_023];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 024 ... DINGANI around 2023-02-09-21Z
# my at https://twitter.com/elioeFIN/status/1623790241306877958

nhc_shem_2023_024 = [15.8,81.7,50;16.3,77.3,55;18.1,74.3,60;19.3,72.2,55;20.8,68.9,45];
my_shem_2023_024 = [15.8,81.8,50;16.2,77.1,55;18.5,74.1,60;19.8,72.2,55;20.8,69.1,45];
btk_shem_2023_024 = [15.9,81.8,50;15.9,77.3,50;17.8,74.4,75;20.5,73.0,70;24.5,71.4,60]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_024];
myvect = [myvect;my_shem_2023_024];
btkvect = [btkvect;btk_shem_2023_024];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 025 ... GABRIELLE around 2023-02-10-03Z
# my at https://twitter.com/elioeFIN/status/1623878126441795592

nhc_shem_2023_025 = [27.3,165.0,70];
my_shem_2023_025 = [27.0,165.3,65];
btk_shem_2023_025 = [27.8,165.6,60]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_025];
myvect = [myvect;my_shem_2023_025];
btkvect = [btkvect;btk_shem_2023_025];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;3];

# Shem 026 ... FREDDY around 2023-02-11-15Z
# my at https://twitter.com/elioeFIN/status/1624421661821870081

nhc_shem_2023_026 = [15.3,99.2,105;15.6,95.1,85;15.8,90.6,75;16.0,86.2,75;16.3,81.4,90];
my_shem_2023_026 = [15.1,99.2,100;15.6,94.9,75;15.7,90.4,70;16.2,86.0,75;16.5,81.5,70];
btk_shem_2023_026 = [15.1,99.0,100;15.4,94.9,90;15.3,90.0,110;14.9,85.0,130;14.9,79.5,115]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_026];
myvect = [myvect;my_shem_2023_026];
btkvect = [btkvect;btk_shem_2023_026];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 027 ... DINGANI around 2023-02-11-21Z
# my at https://twitter.com/elioeFIN/status/1624509892806451205

nhc_shem_2023_027 = [17.7,74.6,65;19.6,72.8,70;21.7,71.1,50;23.3,68.5,40;24.6,65.6,35];
my_shem_2023_027 = [17.5,74.5,60;19.6,72.5,60;21.5,71.5,45;24.0,69.2,35;25.4,66.3,30];
btk_shem_2023_027 = [17.8,74.4,75;20.5,73.0,70;24.5,71.4,60;28.7,68.3,40;32.7,68.8,25]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_027];
myvect = [myvect;my_shem_2023_027];
btkvect = [btkvect;btk_shem_2023_027];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 028 ... FREDDY around 2023-02-12-03Z
# my at https://twitter.com/elioeFIN/status/1624597614887940096

nhc_shem_2023_028 = [15.5,97.1,100;15.7,92.5,75;15.8,87.6,80;16.1,83.1,90;16.7,78.6,90];
my_shem_2023_028 = [15.2,97.0,90;15.5,92.4,70;15.8,87.9,70;16.2,83.4,75;16.8,78.8,75];
btk_shem_2023_028 = [15.1,96.9,95;15.4,92.4,80;15.1,87.6,125;14.8,82.3,130;15.4,76.5,125]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_028];
myvect = [myvect;my_shem_2023_028];
btkvect = [btkvect;btk_shem_2023_028];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 029 ... DINGANI around 2023-02-13-21Z
# my at https://twitter.com/elioeFIN/status/1625243461531181058

nhc_shem_2023_029 = [24.2,71.5,55;28.4,67.8,40;30.3,67.2,35];
my_shem_2023_029 = [23.9,70.8,50;28.1,67.0,40;29.9,67.3,35];
btk_shem_2023_029 = [24.5,71.4,60;28.7,68.3,40;32.7,68.8,25]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_029];
myvect = [myvect;my_shem_2023_029];
btkvect = [btkvect;btk_shem_2023_029];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 030 ... FREDDY around 2023-02-14-03Z
# my at https://twitter.com/elioeFIN/status/1625329688452251650

nhc_shem_2023_030 = [15.2,87.9,80;14.7,83.0,90;14.9,78.3,110;15.2,74.1,105;15.2,70.0,100];
my_shem_2023_030 = [15.1,87.8,80;14.7,82.9,90;14.8,78.1,100;15.1,73.3,105;15.1,68.8,100];
btk_shem_2023_030 = [15.1,87.6,125;14.8,82.3,130;15.4,76.5,125;16.0,71.4,115;16.6,67.0,140]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_030];
myvect = [myvect;my_shem_2023_030];
btkvect = [btkvect;btk_shem_2023_030];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 031 ... FREDDY around 2023-02-16-03Z
# my at https://twitter.com/elioeFIN/status/1626049057104793602

nhc_shem_2023_031 = [15.2,77.2,130;15.9,72.8,120;16.2,68.8,120;17.4,63.4,115;18.8,55.9,115];
my_shem_2023_031 = [15.0,77.0,120;15.6,72.2,115;16.0,68.3,110;17.1,63.1,110;18.3,56.0,110];
btk_shem_2023_031 = [15.4,76.5,125;16.0,71.4,115;16.6,67.0,140;18.1,60.6,130;19.8,52.7,100]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_031];
myvect = [myvect;my_shem_2023_031];
btkvect = [btkvect;btk_shem_2023_031];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 032 ... FREDDY around 2023-02-16-15Z
# my at https://twitter.com/elioeFIN/status/1626235377991450624

nhc_shem_2023_032 = [15.7,74.2,120;16.1,69.6,120;16.8,64.9,115;18.2,58.7,110;19.7,51.1,100];
my_shem_2023_032 = [15.5,74.0,120;15.6,69.8,120;16.5,65.1,115;18.0,59.0,110;19.4,51.7,110];
btk_shem_2023_032 = [15.8,74.0,125;16.2,69.2,115;17.3,64.0,130;18.9,56.7,115;20.8,49.4,95]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_032];
myvect = [myvect;my_shem_2023_032];
btkvect = [btkvect;btk_shem_2023_032];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 033 ... FREDDY around 2023-02-17-15Z
# my at https://twitter.com/elioeFIN/status/1626592220924243968

nhc_shem_2023_033 = [16.3,69.2,110;17.1,64.3,120;18.5,57.8,115;20.0,50.9,95;21.3,44.0,55];
my_shem_2023_033 = [16.1,69.2,115;16.6,63.7,120;18.3,57.5,120;20.1,50.0,105;21.3,43.6,40];
btk_shem_2023_033 = [16.2,69.2,115;17.3,64.0,130;18.9,56.7,115;20.8,49.4,95;22.0,43.6,25];
nhcvect = [nhcvect;nhc_shem_2023_033];
myvect = [myvect;my_shem_2023_033];
btkvect = [btkvect;btk_shem_2023_033];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 034 ... FREDDY around 2023-02-19-03Z
# my at https://twitter.com/elioeFIN/status/1627137340295593988

nhc_shem_2023_034 = [18.0,61.3,135;19.6,54.0,115;21.0,47.4,90;21.6,42.0,45;21.2,37.5,60];
my_shem_2023_034 = [18.0,61.0,135;19.4,53.7,115;20.9,47.3,80;20.9,41.1,45;20.4,36.3,60];
btk_shem_2023_034 = [18.1,60.6,130;19.8,52.7,100;21.0,46.5,60;22.1,41.4,45;22.5,37.6,60]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_034];
myvect = [myvect;my_shem_2023_034];
btkvect = [btkvect;btk_shem_2023_034];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 035 ... FREDDY around 2023-02-20-15Z
# my at https://twitter.com/elioeFIN/status/1627682827381706754

nhc_shem_2023_035 = [21.0,49.5,105;22.5,43.7,50;22.2,38.9,65;22.0,33.8,40;22.1,29.8,25];
my_shem_2023_035 = [20.9,49.8,110;22.1,43.8,35;21.9,38.4,60;21.1,33.5,40;21.7,30.0,25];
btk_shem_2023_035 = [20.8,49.4,95;22.0,43.6,25;22.5,39.6,55;22.5,35.5,50;22.9,33.1,25]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_035];
myvect = [myvect;my_shem_2023_035];
btkvect = [btkvect;btk_shem_2023_035];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 036 ... FREDDY around 2023-02-21-03Z
# my at https://twitter.com/elioeFIN/status/1627859628871585792

nhc_shem_2023_036 = [21.7,46.5,70;22.6,41.0,50;22.5,36.6,65;22.8,33.2,40;23.1,30.6,25];
my_shem_2023_036 = [21.4,46.2,65;21.6,40.2,50;21.2,35.1,65;21.1,31.4,25;21.5,28.9,20];
btk_shem_2023_036 = [21.0,46.5,60;22.1,41.4,45;22.5,37.6,60;22.7,34.0,40;22.2,33.3,20]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_036];
myvect = [myvect;my_shem_2023_036];
btkvect = [btkvect;btk_shem_2023_036];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 037 ... FREDDY around 2023-02-21-15Z
# my at https://twitter.com/elioeFIN/status/1628043532400267264

nhc_shem_2023_037 = [22.0,43.6,40;22.3,38.8,60;22.2,34.3,50;23.1,31.9,30];
my_shem_2023_037 = [21.7,43.1,35;21.7,37.9,55;21.7,33.7,50;22.4,30.9,25];
btk_shem_2023_037 = [22.0,43.6,25;22.5,39.6,55;22.5,35.5,50;22.8,33.1,25]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_037];
myvect = [myvect;my_shem_2023_037];
btkvect = [btkvect;btk_shem_2023_037];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 038 ... FREDDY around 2023-02-22-15Z
# my at https://twitter.com/elioeFIN/status/1628408777287340034

nhc_shem_2023_038 = [22.6,38.8,55;22.3,34.0,45;22.7,31.2,30];
my_shem_2023_038 = [22.5,38.8,55;21.7,34.2,45;23.1,31.2,25];
btk_shem_2023_038 = [22.5,39.6,55;22.5,35.5,50;22.8,33.1,25]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_038];
myvect = [myvect;my_shem_2023_038];
btkvect = [btkvect;btk_shem_2023_038];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 039 ... ENALA around 2023-02-22-21Z
# my at https://twitter.com/elioeFIN/status/1628496315951751168

nhc_shem_2023_039 = [19.3,70.9,55;22.2,69.0,50;24.5,66.7,45;26.0,64.3,45;26.9,62.9,45];
my_shem_2023_039 = [19.6,71.1,55;23.7,69.9,45;26.4,68.2,40;28.2,66.0,30;28.8,64.6,30];
btk_shem_2023_039 = [19.8,71.0,75;23.4,69.5,65;27.1,67.9,45;28.8,66.8,45;28.4,67.9,35]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_039];
myvect = [myvect;my_shem_2023_039];
btkvect = [btkvect;btk_shem_2023_039];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 040 ... FREDDY around 2023-02-23-03Z
# my at https://twitter.com/elioeFIN/status/1628583627360546816

nhc_shem_2023_040 = [21.7,36.5,55;22.0,32.6,30];
my_shem_2023_040 = [21.7,36.7,60;21.6,32.8,25];
btk_shem_2023_040 = [22.5,37.6,60;22.7,34.0,40]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_040];
myvect = [myvect;my_shem_2023_040];
btkvect = [btkvect;btk_shem_2023_040];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 041 ... JUDY around 2023-02-27-21Z
# my at https://twitter.com/elioeFIN/status/1630310974652645376

nhc_shem_2023_041 = [17.4,168.3,80;21.6,170.8,80;25.3,175.1,65;29.2,181.5,50];
my_shem_2023_041 = [17.3,168.2,75;21.0,170.2,75;24.5,173.9,65;27.8,180.1,50];
btk_shem_2023_041 = [17.0,168.2,85;21.2,171.4,90;24.8,175.7,80;27.2,185.5,60]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_041];
myvect = [myvect;my_shem_2023_041];
btkvect = [btkvect;btk_shem_2023_041];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 042 ... KEVIN around 2023-03-02-21Z
# my at https://twitter.com/elioeFIN/status/1631394026359234570

nhc_shem_2023_042 = [19.4,169.4,90;23.8,175.9,85;27.9,185.6,60;31.4,194.7,40];
my_shem_2023_042 = [19.3,169.4,90;23.1,175.8,90;27.2,185.6,60;30.6,196.8,40];
btk_shem_2023_042 = [19.7,170.0,115;24.6,177.3,105;29.0,188.1,65;33.0,196.4,35]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_042];
myvect = [myvect;my_shem_2023_042];
btkvect = [btkvect;btk_shem_2023_042];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 043 ... KEVIN around 2023-03-03-03Z
# my at https://twitter.com/elioeFIN/status/1631485225678131201

nhc_shem_2023_043 = [20.2,170.7,100;24.8,178.2,85;28.9,187.7,60];
my_shem_2023_043 = [20.3,170.9,100;24.4,178.2,80;28.4,188.2,55];
btk_shem_2023_043 = [20.8,171.4,135;25.8,180.2,90;29.6,190.1,50]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_043];
myvect = [myvect;my_shem_2023_043];
btkvect = [btkvect;btk_shem_2023_043];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 044 ... FREDDY around 2023-03-04-15Z
# my at https://twitter.com/elioeFIN/status/1632035284404633603

nhc_shem_2023_044 = [23.1,41.7,60;23.6,42.1,70;22.6,41.4,75;21.2,40.6,80;20.4,40.2,70];
my_shem_2023_044 = [22.7,41.9,60;23.2,41.7,65;22.3,40.9,70;20.3,39.5,70;19.4,39.2,80];
btk_shem_2023_044 = [23.1,42.1,40;24.1,42.9,50;23.1,42.1,90;21.1,40.2,75;19.7,39.0,55]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_044];
myvect = [myvect;my_shem_2023_044];
btkvect = [btkvect;btk_shem_2023_044];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 045 ... FREDDY around 2023-03-06-03Z
# my at https://twitter.com/elioeFIN/status/1632577558058262529

nhc_shem_2023_045 = [23.7,42.5,50;22.0,41.4,65;20.5,40.2,70;19.3,39.4,70;18.3,38.8,80];
my_shem_2023_045 = [23.6,42.6,60;22.0,41.6,75;21.0,40.1,80;19.9,39.3,75;19.3,38.4,80];
btk_shem_2023_045 = [23.8,42.6,65;22.2,41.0,95;20.5,39.6,60;19.0,38.5,70;18.0,37.6,75]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_045];
myvect = [myvect;my_shem_2023_045];
btkvect = [btkvect;btk_shem_2023_045];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 046 ... FREDDY around 2023-03-06-15Z
# my at https://twitter.com/elioeFIN/status/1632754675937079299

nhc_shem_2023_046 = [23.0,42.1,55;21.4,40.8,65;20.2,39.9,70;19.0,38.8,75;18.0,37.9,80];
my_shem_2023_046 = [23.1,42.0,60;21.2,40.1,75;19.8,39.1,75;18.8,38.1,80;18.6,36.4,75];
btk_shem_2023_046 = [23.1,42.1,90;21.1,40.2,75;19.7,39.0,55;18.4,38.3,75;18.0,37.4,95]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_046];
myvect = [myvect;my_shem_2023_046];
btkvect = [btkvect;btk_shem_2023_046];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 047 ... FREDDY around 2023-03-08-03Z
# my at https://twitter.com/elioeFIN/status/1633298636107915266

nhc_shem_2023_047 = [20.7,39.4,95;19.4,37.9,85;18.0,36.5,75;17.0,35.0,50;16.4,33.3,30];
my_shem_2023_047 = [20.7,39.2,85;19.0,37.3,80;18.1,36.2,70;17.7,34.3,35;17.4,32.2,25];
btk_shem_2023_047 = [20.5,39.6,60;19.0,38.5,70;18.0,37.6,75;17.5,36.9,75;16.9,35.1,30]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_047];
myvect = [myvect;my_shem_2023_047];
btkvect = [btkvect;btk_shem_2023_047];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 048 ... FREDDY around 2023-03-08-15Z
# my at https://twitter.com/elioeFIN/status/1633484431880073217

nhc_shem_2023_048 = [19.6,38.6,85;17.8,36.8,75;16.7,35.4,50;16.1,33.0,30];
my_shem_2023_048 = [19.9,38.7,80;18.7,36.9,75;17.6,36.0,50;18.7,33.3,25];
btk_shem_2023_048 = [19.7,39.0,55;18.4,38.3,75;18.0,37.4,95;17.2,36.4,50]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_048];
myvect = [myvect;my_shem_2023_048];
btkvect = [btkvect;btk_shem_2023_048];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 049 ... FREDDY around 2023-03-09-15Z
# my at https://twitter.com/elioeFIN/status/1633844684421476352

nhc_shem_2023_049 = [18.1,37.5,70;17.0,36.0,55;16.7,35.3,30];
my_shem_2023_049 = [18.1,37.3,80;17.2,35.3,50;16.7,33.6,25];
btk_shem_2023_049 = [18.4,38.3,75;18.0,37.4,95;17.2,36.4,50]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_049];
myvect = [myvect;my_shem_2023_049];
btkvect = [btkvect;btk_shem_2023_049];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 050 ... FREDDY around 2023-03-10-03Z
# my at https://twitter.com/elioeFIN/status/1634027504083124226

nhc_shem_2023_050 = [18.2,37.8,80;17.7,37.1,90;17.4,36.5,55;17.2,36.0,35];
my_shem_2023_050 = [18.0,37.8,90;18.1,36.6,50;17.9,35.8,35;18.1,35.4,25];
btk_shem_2023_050 = [18.0,37.6,75;17.5,36.9,75;16.9,35.1,30;16.2,34.4,20]; # JTWC best track (except day 4)
nhcvect = [nhcvect;nhc_shem_2023_050];
myvect = [myvect;my_shem_2023_050];
btkvect = [btkvect;btk_shem_2023_050];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 051 ... FREDDY around 2023-03-10-15Z
# my at https://twitter.com/elioeFIN/status/1634209295419015169

nhc_shem_2023_051 = [17.3,37.5,75;16.8,36.4,55;16.2,35.1,35;16.1,35.8,30];
my_shem_2023_051 = [17.5,37.6,80;17.6,36.3,55;16.9,35.2,35;17.1,35.2,20];
btk_shem_2023_051 = [18.0,37.4,95;17.2,36.4,50;16.5,34.3,20;16.8,34.4,20]; # JTWC best track (except day 4)
nhcvect = [nhcvect;nhc_shem_2023_051];
myvect = [myvect;my_shem_2023_051];
btkvect = [btkvect;btk_shem_2023_051];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 052 ... HERMAN around 2023-03-29-15Z
# my at https://twitter.com/elioeFIN/status/1641092145850327041

nhc_shem_2023_052 = [15.2,105.3,50;16.3,106.8,30;16.9,106.2,25;17.0,104.0,25;16.5,101.3,25];
my_shem_2023_052 = [15.3,105.4,50;16.4,107.1,35;17.0,106.7,25;17.4,104.6,25;16.5,101.7,25];
btk_shem_2023_052 = [15.8,105.3,90;17.8,106.7,130;19.4,107.2,80;19.8,105.3,30;19.5,103.8,20]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_052];
myvect = [myvect;my_shem_2023_052];
btkvect = [btkvect;btk_shem_2023_052];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 053 ... HERMAN around 2023-03-29-21Z
# my at https://twitter.com/elioeFIN/status/1641191780052869121

nhc_shem_2023_053 = [15.7,105.8,50;16.7,106.7,30;17.1,105.6,25;17.1,103.2,25;16.5,100.4,25];
my_shem_2023_053 = [15.8,105.9,50;17.0,107.1,30;17.7,105.7,25;18.0,103.3,25;17.1,100.4,25];
btk_shem_2023_053 = [16.3,105.8,110;18.2,106.9,120;19.6,106.7,60;19.9,104.8,25;19.3,103.4,25]; # JTWC best track (except day 5)
nhcvect = [nhcvect;nhc_shem_2023_053];
myvect = [myvect;my_shem_2023_053];
btkvect = [btkvect;btk_shem_2023_053];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 054 ... HERMAN around 2023-03-30-15Z
# my at https://twitter.com/elioeFIN/status/1641462664319709184
# (no JTWC forecast)

# Shem 055 ... HERMAN around 2023-03-30-21Z
# my at https://twitter.com/elioeFIN/status/1641547820296437762
# (no JTWC forecast)

# Shem 056 ... HERMAN around 2023-03-31-15Z
# my at https://twitter.com/elioeFIN/status/1641819069161648128
# (no JTWC forecast)

# Shem 057 ... HERMAN around 2023-04-01-21Z
# my at https://twitter.com/elioeFIN/status/1642270583453806595

nhc_shem_2023_057 = [20.1,105.8,35;19.7,104.1,30;19.2,102.7,25];
my_shem_2023_057 = [20.0,105.8,35;19.7,104.4,30;19.0,102.6,25];
btk_shem_2023_057 = [19.9,104.8,25;19.3,103.4,25;18.5,100.3,25]; # JTWC best track (day 1 only)
nhcvect = [nhcvect;nhc_shem_2023_057];
myvect = [myvect;my_shem_2023_057];
btkvect = [btkvect;btk_shem_2023_057];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 058 ... HERMAN around 2023-04-02-03Z
# my at https://twitter.com/elioeFIN/status/1642359278693392385

nhc_shem_2023_058 = [20.1,105.7,35;19.7,104.0,30];
my_shem_2023_058 = [20.4,106.1,35;20.2,104.2,30];
btk_shem_2023_058 = [20.0,104.4,20;19.5,102.6,25]; # JTWC best track (day 1 only)
nhcvect = [nhcvect;nhc_shem_2023_058];
myvect = [myvect;my_shem_2023_058];
btkvect = [btkvect;btk_shem_2023_058];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 059 ... 23U / 98S around 2023-04-08-15Z 
# my at https://twitter.com/elioeFIN/status/1644722642803458051
# (no JTWC forecast)

# Shem 060 ... 23U / 18S around 2023-04-08-21Z
# my at https://twitter.com/elioeFIN/status/1644806696898818048

nhc_shem_2023_060 = [12.7,125.3,45;14.4,122.4,65;16.1,119.9,115;18.3,118.9,140;21.8,121.3,70];
my_shem_2023_060 = [12.6,125.5,45;14.4,122.3,65;16.2,119.4,105;18.7,118.0,125;22.0,120.4,65];
btk_shem_2023_060 = [12.5,124.8,45;13.5,122.3,40;15.4,120.2,70;17.1,119.1,100;20.5,119.9,100]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_060];
myvect = [myvect;my_shem_2023_060];
btkvect = [btkvect;btk_shem_2023_060];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 061 ... 23U / 18S around 2023-04-09-03Z
# my at https://twitter.com/elioeFIN/status/1644892814629650435

nhc_shem_2023_061 = [13.4,123.8,60;15.2,121.1,80;17.0,119.3,115;19.7,119.1,130;24.0,123.5,45];
my_shem_2023_061 = [13.3,123.9,60;15.4,121.2,80;17.2,119.6,110;19.9,118.9,125;24.3,123.7,40];
btk_shem_2023_061 = [12.5,124.2,40;13.9,121.3,45;15.6,119.9,70;17.8,118.9,110;21.4,121.3,75]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_061];
myvect = [myvect;my_shem_2023_061];
btkvect = [btkvect;btk_shem_2023_061];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 062 ... 23U / 18S around 2023-04-09-09Z
# my at https://twitter.com/elioeFIN/status/1644992691678203904

nhc_shem_2023_062 = [13.9,122.8,75;15.7,120.4,110;17.7,119.0,130;20.8,120.0,100;25.0,124.2,40];
my_shem_2023_062 = [13.7,122.9,70;15.4,120.2,100;17.1,118.6,120;20.1,119.2,105;25.0,125.0,40];
btk_shem_2023_062 = [12.8,123.6,40;13.9,121.3,55;15.8,119.8,75;18.8,118.7,125;22.0,123.4,65]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_062];
myvect = [myvect;my_shem_2023_062];
btkvect = [btkvect;btk_shem_2023_062];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 063 ... 23U / 18S around 2023-04-09-15Z
# my at https://twitter.com/elioeFIN/status/1645072902922944514

nhc_shem_2023_063 = [14.5,122.0,65;16.3,119.9,105;18.6,119.2,130;22.0,121.7,90;25.6,127.6,40];
my_shem_2023_063 = [14.3,122.1,65;16.0,119.8,100;18.0,118.9,125;21.4,120.9,90;26.3,128.6,40];
btk_shem_2023_063 = [13.1,123.2,40;15.1,120.5,70;16.0,119.7,85;19.6,119.1,135;22.2,125.4,45]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_063];
myvect = [myvect;my_shem_2023_063];
btkvect = [btkvect;btk_shem_2023_063];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 064 ... 23U / 18S around 2023-04-09-21Z
# my at https://twitter.com/elioeFIN/status/1645167699197153281

nhc_shem_2023_064 = [14.7,121.2,70;16.1,119.7,105;18.4,119.0,130;22.3,122.0,90;28.0,131.6,40];
my_shem_2023_064 = [14.4,121.2,65;15.7,119.5,100;17.8,118.4,125;21.5,121.0,85;27.6,131.6,35];
btk_shem_2023_064 = [13.5,122.3,40;15.4,120.2,70;17.1,119.1,100;20.5,119.9,100;22.7,128.3,35]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_064];
myvect = [myvect;my_shem_2023_064];
btkvect = [btkvect;btk_shem_2023_064];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 065 ... 23U / 18S around 2023-04-10-15Z
# my at https://twitter.com/elioeFIN/status/1645446298177355778

nhc_shem_2023_065 = [14.9,120.6,70;17.7,119.4,115;20.4,121.6,100;24.4,129.8,30];
my_shem_2023_065 = [14.9,120.6,70;17.3,119.1,110;20.1,120.9,100;24.8,130.0,35];
btk_shem_2023_065 = [15.1,120.5,70;16.0,119.7,85;19.6,119.1,135;22.2,125.4,45]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_065];
myvect = [myvect;my_shem_2023_065];
btkvect = [btkvect;btk_shem_2023_065];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 066 ... 23U / 18S around 2023-04-10-21Z
# my at https://twitter.com/elioeFIN/status/1645531967008432128

nhc_shem_2023_066 = [15.3,120.3,75;17.5,119.2,120;20.3,121.5,105;24.2,130.4,30];
my_shem_2023_066 = [15.3,120.5,75;17.4,119.4,115;20.4,121.7,100;24.7,131.9,30];
btk_shem_2023_066 = [15.4,120.2,70;17.1,119.1,100;20.5,119.9,100;22.7,128.3,35]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_066];
myvect = [myvect;my_shem_2023_066];
btkvect = [btkvect;btk_shem_2023_066];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 067 ... ILSA around 2023-04-11-15Z
# my at https://twitter.com/elioeFIN/status/1645803548763127809

nhc_shem_2023_067 = [16.9,119.5,100;19.5,119.9,110;22.5,126.4,40];
my_shem_2023_067 = [16.8,119.5,95;19.5,119.7,105;23.0,126.7,40];
btk_shem_2023_067 = [16.0,119.7,85;19.6,119.1,135;22.2,125.4,45]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_067];
myvect = [myvect;my_shem_2023_067];
btkvect = [btkvect;btk_shem_2023_067];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 068 ... ILSA around 2023-04-11-21Z
# my at https://twitter.com/elioeFIN/status/1645891478902677505

nhc_shem_2023_068 = [17.5,119.2,115;20.1,121.0,115;23.2,129.8,40];
my_shem_2023_068 = [17.3,119.2,110;19.9,120.7,110;22.6,129.0,40];
btk_shem_2023_068 = [17.1,119.1,100;20.5,119.9,100;22.7,128.3,35]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_068];
myvect = [myvect;my_shem_2023_068];
btkvect = [btkvect;btk_shem_2023_068];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 069 ... ILSA around 2023-04-12-03Z
# my at https://twitter.com/elioeFIN/status/1645981177638010882

nhc_shem_2023_069 = [17.6,119.0,115;20.2,122.1,110;22.8,131.4,30];
my_shem_2023_069 = [17.5,119.0,110;20.2,121.9,100;22.5,131.5,30];
btk_shem_2023_069 = [17.8,118.9,110;21.4,121.3,75;23.0,130.5,30]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_069];
myvect = [myvect;my_shem_2023_069];
btkvect = [btkvect;btk_shem_2023_069];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 070 ... ILSA around 2023-04-12-15Z
# my at https://twitter.com/elioeFIN/status/1646161813736677376

nhc_shem_2023_070 = [19.0,119.6,130;21.7,125.3,45];
my_shem_2023_070 = [18.9,119.4,125;21.9,125.3,45];
btk_shem_2023_070 = [19.6,119.1,135;22.2,125.4,45]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_070];
myvect = [myvect;my_shem_2023_070];
btkvect = [btkvect;btk_shem_2023_070];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Wpac 001 ... TD / 01W around 2023-04-19-15Z
# my at https://twitter.com/elioeFIN/status/1648707043727949825

nhc_wpac_2023_001 = [7.6,156.5,35;9.1,154.5,30;9.9,152.9,20];
my_wpac_2023_001 = [8.3,156.5,35;10.0,154.1,35;10.6,151.4,20];
btk_wpac_2023_001 = [9.7,156.4,45;10.2,155.7,40;10.3,153.0,15]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_001];
myvect = [myvect;my_wpac_2023_001];
btkvect = [btkvect;btk_wpac_2023_001];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Wpac 002 ... TD / 01W around 2023-04-19-21Z
# my at https://twitter.com/elioeFIN/status/1648788597279997959

nhc_wpac_2023_002 = [8.3,156.2,40;9.7,154.2,30;10.4,152.1,25;10.9,150.2,20];
my_wpac_2023_002 = [8.7,155.9,40;10.2,154.5,30;11.1,152.2,20;11.6,150.4,20];
btk_wpac_2023_002 = [9.7,156.4,45;10.2,154.8,30;10.7,152.7,15;10.5,152.2,20]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_002];
myvect = [myvect;my_wpac_2023_002];
btkvect = [btkvect;btk_wpac_2023_002];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Wpac 003 ... SANVU around 2023-04-20-15Z
# my at https://twitter.com/elioeFIN/status/1649057297048403968

nhc_wpac_2023_003 = [11.0,154.5,35;11.9,152.4,30;12.5,150.0,30;12.9,148.1,20];
my_wpac_2023_003 = [11.0,154.7,35;12.3,152.9,30;12.9,150.6,25;13.2,147.8,20];
btk_wpac_2023_003 = [10.2,155.7,40;10.3,153.0,15;10.5,152.3,15;10.9,150.4,15]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_003];
myvect = [myvect;my_wpac_2023_003];
btkvect = [btkvect;btk_wpac_2023_003];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Wpac 004 ... SANVU around 2023-04-20-21Z
# my at https://twitter.com/elioeFIN/status/1649149782630232085

nhc_wpac_2023_004 = [10.9,154.3,35;11.9,152.2,30;12.5,149.8,25;13.1,147.7,20];
my_wpac_2023_004 = [10.9,154.4,35;12.1,152.8,30;12.5,150.6,25;12.9,147.8,20];
btk_wpac_2023_004 = [10.2,154.8,30;10.7,152.7,15;10.5,152.2,20;11.0,149.6,15]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_004];
myvect = [myvect;my_wpac_2023_004];
btkvect = [btkvect;btk_wpac_2023_004];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Wpac 005 ... SANVU around 2023-04-21-15Z
# my at https://twitter.com/elioeFIN/status/1649424962459951104

nhc_wpac_2023_005 = [11.2,154.4,35;11.8,152.4,30;12.4,149.9,25;13.1,146.9,20];
my_wpac_2023_005 = [11.2,154.4,35;11.8,152.6,30;12.2,150.1,20;13.5,146.5,20];
btk_wpac_2023_005 = [10.3,153.0,15;10.5,152.3,15;10.9,150.4,15;10.4,148.3,15];
nhcvect = [nhcvect;nhc_wpac_2023_005];
myvect = [myvect;my_wpac_2023_005];
btkvect = [btkvect;btk_wpac_2023_005];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Wpac 006 ... SANVU around 2023-04-21-21Z
# my at https://twitter.com/elioeFIN/status/1649517871918116869

nhc_wpac_2023_006 = [11.1,153.5,35;11.7,151.3,30;12.3,148.7,25;12.7,145.2,20];
my_wpac_2023_006 = [11.2,153.6,35;11.6,151.8,25;12.2,148.5,20;12.7,143.6,20];
btk_wpac_2023_006 = [10.7,152.7,15;10.5,152.2,20;11.0,149.6,15;10.2,147.8,15]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_006];
myvect = [myvect;my_wpac_2023_006];
btkvect = [btkvect;btk_wpac_2023_006];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Nio 01 ... BOB 02 / 91B around 2023-05-09-21Z
# my at https://twitter.com/elioeFIN/status/1656046303720161299
# (no JTWC forecast)

# Nio 02 ... BOB 02 / 91B around 2023-05-10-03Z
# my at https://twitter.com/elioeFIN/status/1656136062584881162
# (no JTWC forecast)

# Nio 03 ... BOB 02 / 91B around 2023-05-10-15Z
# my at https://twitter.com/elioeFIN/status/1656327332196409344
# (no JTWC forecast)

# Nio 04 ... BOB 02 / 91B around 2023-05-10-21Z
# my at https://twitter.com/elioeFIN/status/1656407775138783232
# (no JTWC forecast)

# Nio 05 ... BOB 02 / 01B around 2023-05-11-03Z
# my at https://twitter.com/elioeFIN/status/1656498344796012544

nhc_nio_2023_05 = [13.6,88.1,65;15.7,89.3,85;19.0,91.8,90;23.7,95.1,35];
my_nio_2023_05 = [13.5,88.2,65;15.6,89.2,85;19.0,92.0,85;23.8,95.9,30];
btk_nio_2023_05 = [13.4,88.2,65;15.3,89.2,110;18.7,91.9,145;26.2,97.8,20]; # JTWC best track
nhcvect = [nhcvect;nhc_nio_2023_05];
myvect = [myvect;my_nio_2023_05];
btkvect = [btkvect;btk_nio_2023_05];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Nio 06 ... MOCHA around 2023-05-11-15Z
# my at https://twitter.com/elioeFIN/status/1656671194496761859

nhc_nio_2023_06 = [14.2,88.7,80;17.1,90.8,95;21.0,93.5,85];
my_nio_2023_06 = [14.2,88.5,80;17.0,90.5,95;20.8,93.6,80];
btk_nio_2023_06 = [14.5,88.5,95;16.9,90.7,135;21.0,93.3,100]; # JTWC best track
nhcvect = [nhcvect;nhc_nio_2023_06];
myvect = [myvect;my_nio_2023_06];
btkvect = [btkvect;btk_nio_2023_06];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Nio 07 ... MOCHA around 2023-05-11-21Z
# my at https://twitter.com/elioeFIN/status/1656769304933679112

nhc_nio_2023_07 = [14.7,88.7,85;17.3,90.7,110;21.6,93.1,80];
my_nio_2023_07 = [14.8,88.8,85;17.5,91.0,105;21.8,93.5,70];
btk_nio_2023_07 = [14.9,88.9,105;17.9,91.3,140;23.8,95.8,45]; # JTWC best track
nhcvect = [nhcvect;nhc_nio_2023_07];
myvect = [myvect;my_nio_2023_07];
btkvect = [btkvect;btk_nio_2023_07];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Nio 08 ... MOCHA around 2023-05-12-03Z
# my at https://twitter.com/elioeFIN/status/1656853101230403585

nhc_nio_2023_08 = [15.3,89.3,90;18.6,91.5,120;23.7,94.4,60];
my_nio_2023_08 = [15.4,89.2,90;18.8,91.5,110;24.3,94.8,50];
btk_nio_2023_08 = [15.3,89.2,110;18.7,91.9,145;26.2,97.8,20]; # JTWC best track
nhcvect = [nhcvect;nhc_nio_2023_08];
myvect = [myvect;my_nio_2023_08];
btkvect = [btkvect;btk_nio_2023_08];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Nio 09 ... MOCHA around 2023-05-12-15Z
# my at https://twitter.com/elioeFIN/status/1657037742499307522

nhc_nio_2023_09 = [17.1,90.6,110;21.3,93.3,85];
my_nio_2023_09 = [17.2,90.4,110;21.3,93.4,80];
btk_nio_2023_09 = [16.9,90.7,135;21.0,93.3,100]; # JTWC best track
nhcvect = [nhcvect;nhc_nio_2023_09];
myvect = [myvect;my_nio_2023_09];
btkvect = [btkvect;btk_nio_2023_09];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Nio 10 ... MOCHA around 2023-05-12-21Z
# my at https://twitter.com/elioeFIN/status/1657122720323190784

nhc_nio_2023_10 = [18.1,90.8,120;23.1,94.3,50];
my_nio_2023_10 = [18.2,90.9,120;22.9,94.2,55];
btk_nio_2023_10 = [17.9,91.3,140;23.8,95.8,45]; # JTWC best track
nhcvect = [nhcvect;nhc_nio_2023_10];
myvect = [myvect;my_nio_2023_10];
btkvect = [btkvect;btk_nio_2023_10];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Nio 11 ... MOCHA around 2023-05-13-15Z
# my at https://twitter.com/elioeFIN/status/1657404785534836737

nhc_nio_2023_11 = [21.5,93.4,95];
my_nio_2023_11 = [21.5,93.3,90];
btk_nio_2023_11 = [21.0,93.3,100]; # JTWC best track
nhcvect = [nhcvect;nhc_nio_2023_11];
myvect = [myvect;my_nio_2023_11];
btkvect = [btkvect;btk_nio_2023_11];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;3];

# Shem 071 ... FABIEN around 2023-05-14-21Z
# my at https://twitter.com/elioeFIN/status/1657860994150854656

nhc_shem_2023_071 = [6.2,76.8,85;7.9,74.7,105;9.4,73.6,100;10.1,72.7,95;10.6,71.8,85];
my_shem_2023_071 = [6.1,76.7,80;8.2,74.5,105;9.3,73.4,105;10.5,72.7,95;10.6,71.3,90];
btk_shem_2023_071 = [5.8,76.8,90;7.8,74.5,105;8.9,73.0,65;9.2,71.0,45;9.9,69.6,45]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_071];
myvect = [myvect;my_shem_2023_071];
btkvect = [btkvect;btk_shem_2023_071];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 072 ... FABIEN around 2023-05-15-21Z
# my at https://twitter.com/elioeFIN/status/1658211505693663233

nhc_shem_2023_072 = [8.1,74.0,110;9.3,72.3,105;9.4,70.5,95;9.3,69.8,90;9.2,69.3,80];
my_shem_2023_072 = [7.9,74.1,110;9.3,72.5,105;9.6,70.2,100;9.4,68.7,90;9.2,69.1,80];
btk_shem_2023_072 = [7.8,74.5,105;8.9,73.0,65;9.2,71.0,45;9.9,69.6,45;10.2,69.0,40]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_072];
myvect = [myvect;my_shem_2023_072];
btkvect = [btkvect;btk_shem_2023_072];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 073 ... FABIEN around 2023-05-16-03Z
# my at https://twitter.com/elioeFIN/status/1658303939505209346

nhc_shem_2023_073 = [8.4,73.7,100;9.3,72.1,90;9.3,70.2,85;9.2,69.4,80;8.9,69.3,70];
my_shem_2023_073 = [8.6,73.5,100;9.5,71.9,100;9.3,69.4,95;8.9,68.1,75;8.5,68.6,70];
btk_shem_2023_073 = [8.3,74.1,100;8.9,72.5,55;9.5,70.4,40;9.9,69.4,50;10.3,68.9,35]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_073];
myvect = [myvect;my_shem_2023_073];
btkvect = [btkvect;btk_shem_2023_073];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 074 ... FABIEN around 2023-05-16-15Z
# my at https://twitter.com/elioeFIN/status/1658480941617266694

nhc_shem_2023_074 = [9.2,73.1,100;9.6,71.1,95;9.3,69.3,90;9.2,68.9,85;9.0,68.6,70];
my_shem_2023_074 = [9.3,73.1,100;9.7,71.1,100;9.2,69.0,90;8.9,68.8,75;9.0,69.2,70];
btk_shem_2023_074 = [8.8,73.4,80;9.0,71.6,45;9.8,69.8,40;10.1,69.2,50;10.8,68.8,30]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_074];
myvect = [myvect;my_shem_2023_074];
btkvect = [btkvect;btk_shem_2023_074];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 075 ... FABIEN around 2023-05-16-21Z
# my at https://twitter.com/elioeFIN/status/1658577229163507714

nhc_shem_2023_075 = [9.5,72.4,95;9.7,70.3,90;9.4,69.1,85;9.3,68.9,75;9.1,68.7,65];
my_shem_2023_075 = [9.6,72.3,100;9.6,70.1,95;9.3,68.7,85;9.2,68.1,75;9.5,68.3,70];
btk_shem_2023_075 = [8.9,73.0,65;9.2,71.0,45;9.9,69.6,45;10.2,69.0,40;10.9,68.8,25]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_075];
myvect = [myvect;my_shem_2023_075];
btkvect = [btkvect;btk_shem_2023_075];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 076 ... FABIEN around 2023-05-17-09Z
# my at https://twitter.com/elioeFIN/status/1658754486419050497

nhc_shem_2023_076 = [9.8,72.0,80;9.9,70.2,75;9.8,69.7,70;9.9,69.5,65;10.2,69.7,45];
my_shem_2023_076 = [9.7,72.0,80;9.7,69.9,80;9.7,69.8,65;10.0,70.1,55;10.9,70.7,50];
btk_shem_2023_076 = [8.9,72.0,50;9.7,70.0,40;10.0,69.3,50;10.5,68.8,30;12.6,69.3,30]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_076];
myvect = [myvect;my_shem_2023_076];
btkvect = [btkvect;btk_shem_2023_076];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 077 ... FABIEN around 2023-05-17-15Z
# my at https://twitter.com/elioeFIN/status/1658849058411229190

nhc_shem_2023_077 = [9.6,71.4,80;9.6,69.7,70;9.8,69.5,60;10.4,70.0,55;11.1,70.2,45];
my_shem_2023_077 = [9.6,71.2,75;9.3,69.1,65;9.3,68.7,55;9.7,68.6,45;10.3,68.5,50];
btk_shem_2023_077 = [9.0,71.6,45;9.8,69.8,40;10.1,69.2,50;10.8,68.8,30;12.9,69.4,30]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_077];
myvect = [myvect;my_shem_2023_077];
btkvect = [btkvect;btk_shem_2023_077];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 078 ... FABIEN around 2023-05-17-21Z
# my at https://twitter.com/elioeFIN/status/1658939142846160897

nhc_shem_2023_078 = [9.2,71.3,60;9.4,69.8,55;9.8,70.0,50;10.3,70.4,45;10.9,70.3,35];
my_shem_2023_078 = [9.3,71.1,60;9.3,69.3,55;9.5,69.9,50;10.0,69.7,40;10.5,69.5,45];
btk_shem_2023_078 = [9.2,71.0,45;9.9,69.6,45;10.2,69.0,40;10.9,68.8,25;13.2,69.6,30]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_078];
myvect = [myvect;my_shem_2023_078];
btkvect = [btkvect;btk_shem_2023_078];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 079 ... FABIEN around 2023-05-18-21Z
# my at https://twitter.com/elioeFIN/status/1659306630935093259

nhc_shem_2023_079 = [9.8,69.5,45;10.2,69.6,40;10.6,70.0,40;11.5,70.1,35;12.5,69.2,35];
my_shem_2023_079 = [9.8,69.2,45;10.1,68.9,45;11.0,69.5,50;11.1,68.7,40;11.9,68.2,40];
btk_shem_2023_079 = [9.9,69.6,45;10.2,69.0,40;10.9,68.8,25;13.2,69.6,30;15.7,70.4,30]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_079];
myvect = [myvect;my_shem_2023_079];
btkvect = [btkvect;btk_shem_2023_079];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 080 ... FABIEN around 2023-05-19-03Z
# my at https://twitter.com/elioeFIN/status/1659394958560833542

nhc_shem_2023_080 = [9.9,69.5,40;10.4,69.8,40;10.9,70.0,35;11.8,69.8,30;12.7,69.0,30];
my_shem_2023_080 = [10.0,69.4,40;10.4,69.6,45;11.3,69.5,45;12.2,69.2,30;12.7,68.7,35];
btk_shem_2023_080 = [9.9,69.4,50;10.3,68.9,35;11.7,69.0,30;13.8,70.1,30;16.5,69.9,30]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_080];
myvect = [myvect;my_shem_2023_080];
btkvect = [btkvect;btk_shem_2023_080];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 081 ... FABIEN around 2023-05-19-21Z
# my at https://twitter.com/elioeFIN/status/1659669758269177856

nhc_shem_2023_081 = [10.8,69.3,45;11.6,69.3,40;12.3,69.1,35;12.7,68.5,30];
my_shem_2023_081 = [11.0,69.1,45;11.8,68.7,50;13.0,68.7,40;13.1,68.3,30];
btk_shem_2023_081 = [10.2,69.0,40;10.9,68.8,25;13.2,69.6,30;15.7,70.4,30]; # JTWC best track
nhcvect = [nhcvect;nhc_shem_2023_081];
myvect = [myvect;my_shem_2023_081];
btkvect = [btkvect;btk_shem_2023_081];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Wpac 007 ... TD / 02W around 2023-05-20-03Z
# my at https://twitter.com/elioeFIN/status/1659758396919230464

nhc_wpac_2023_007 = [7.2,148.4,50;9.8,147.3,75;12.5,146.6,85;14.9,145.2,90;16.9,143.2,95];
my_wpac_2023_007 = [7.1,148.6,45;9.6,147.3,70;12.5,146.8,80;14.9,145.3,90;16.5,143.0,95];
btk_wpac_2023_007 = [7.0,148.9,50;9.0,147.4,85;11.2,146.8,115;13.0,145.6,105;14.2,143.5,140]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_007];
myvect = [myvect;my_wpac_2023_007];
btkvect = [btkvect;btk_wpac_2023_007];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 008 ... MAWAR around 2023-05-20-15Z
# my at https://twitter.com/elioeFIN/status/1659942994240319489

nhc_wpac_2023_008 = [7.9,148.4,55;10.7,147.2,75;13.0,146.3,90;15.2,144.4,95;16.7,141.5,100];
my_wpac_2023_008 = [8.0,148.2,55;10.7,147.2,75;13.3,146.4,90;15.5,144.6,95;16.8,141.6,105];
btk_wpac_2023_008 = [8.0,147.8,65;10.0,146.9,90;12.2,146.0,135;13.8,144.7,120;14.7,141.5,155]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_008];
myvect = [myvect;my_wpac_2023_008];
btkvect = [btkvect;btk_wpac_2023_008];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 009 ... MAWAR around 2023-05-21-21Z
# my at https://twitter.com/elioeFIN/status/1660391384438779910

nhc_wpac_2023_009 = [11.0,147.1,85;13.2,145.8,95;14.4,143.4,105;15.5,139.2,110;16.4,135.0,115];
my_wpac_2023_009 = [10.9,146.9,85;13.1,145.8,95;14.2,143.4,105;14.8,139.3,110;16.2,134.9,120];
btk_wpac_2023_009 = [10.5,146.8,100;12.7,145.7,120;14.1,144.2,125;14.9,140.4,155;16.0,134.9,140]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_009];
myvect = [myvect;my_wpac_2023_009];
btkvect = [btkvect;btk_wpac_2023_009];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 010 ... MAWAR around 2023-05-22-21Z
# my at https://twitter.com/elioeFIN/status/1660753380392816641

nhc_wpac_2023_010 = [12.7,145.4,120;13.9,143.0,120;14.8,139.2,125;15.8,134.3,125;17.3,129.9,130];
my_wpac_2023_010 = [12.7,145.4,115;13.8,142.9,115;14.7,139.2,125;15.5,134.2,125;17.0,129.7,130];
btk_wpac_2023_010 = [12.7,145.7,120;14.1,144.2,125;14.9,140.4,155;16.0,134.9,140;17.0,129.7,115]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_010];
myvect = [myvect;my_wpac_2023_010];
btkvect = [btkvect;btk_wpac_2023_010];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 011 ... MAWAR around 2023-05-23-03Z
# my at https://twitter.com/elioeFIN/status/1660843219473559552

nhc_wpac_2023_011 = [13.2,145.2,125;14.2,142.5,125;15.2,138.3,130;16.2,133.5,135;18.3,129.6,130];
my_wpac_2023_011 = [13.1,145.2,125;14.0,142.5,120;15.0,138.1,130;15.7,132.8,135;18.1,129.2,135];
btk_wpac_2023_011 = [13.0,145.6,105;14.2,143.5,140;15.1,139.2,165;16.3,133.5,135;17.2,128.7,110]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_011];
myvect = [myvect;my_wpac_2023_011];
btkvect = [btkvect;btk_wpac_2023_011];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 012 ... MAWAR around 2023-05-23-15Z
# my at https://twitter.com/elioeFIN/status/1661022126252621825

nhc_wpac_2023_012 = [13.7,144.0,135;14.6,140.5,130;15.7,135.6,140;17.1,130.5,140;18.9,126.7,125];
my_wpac_2023_012 = [13.7,144.0,130;14.5,140.3,130;15.5,135.3,140;16.7,129.8,140;18.6,126.4,130];
btk_wpac_2023_012 = [13.8,144.7,120;14.7,141.5,155;15.7,136.5,145;16.8,130.9,125;18.0,127.3,105]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_012];
myvect = [myvect;my_wpac_2023_012];
btkvect = [btkvect;btk_wpac_2023_012];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 013 ... MAWAR around 2023-05-23-21Z
# my at https://twitter.com/elioeFIN/status/1661113581524361245

nhc_wpac_2023_013 = [13.8,143.4,125;14.8,139.3,130;16.0,134.2,140;17.6,129.3,130;19.5,125.5,115];
my_wpac_2023_013 = [13.9,143.4,120;14.8,139.4,130;15.8,134.2,140;17.1,128.9,130;19.2,125.8,120];
btk_wpac_2023_013 = [14.1,144.2,125;14.9,140.4,155;16.0,134.9,140;17.0,129.7,115;18.6,126.7,105]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_013];
myvect = [myvect;my_wpac_2023_013];
btkvect = [btkvect;btk_wpac_2023_013];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 014 ... MAWAR around 2023-05-24-21Z
# my at https://twitter.com/elioeFIN/status/1661474197942710272

nhc_wpac_2023_014 = [15.1,140.0,135;16.0,134.8,145;17.2,130.1,130;18.9,126.4,115;21.0,124.3,95];
my_wpac_2023_014 = [15.0,139.9,135;15.9,134.4,145;17.0,129.3,130;18.6,125.5,115;20.8,123.9,100];
btk_wpac_2023_014 = [14.9,140.4,155;16.0,134.9,140;17.0,129.7,115;18.6,126.7,105;20.1,125.4,85]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_014];
myvect = [myvect;my_wpac_2023_014];
btkvect = [btkvect;btk_wpac_2023_014];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 015 ... MAWAR around 2023-05-25-03Z
# my at https://twitter.com/elioeFIN/status/1661567695362437120

nhc_wpac_2023_015 = [15.2,139.0,145;16.3,133.5,140;17.7,128.9,125;19.4,125.8,105;21.4,124.2,90];
my_wpac_2023_015 = [15.3,139.0,145;16.3,133.2,140;17.7,128.4,125;19.3,125.2,105;21.6,123.6,95];
btk_wpac_2023_015 = [15.1,139.2,165;16.3,133.5,135;17.2,128.7,110;19.0,126.2,105;20.4,125.1,80]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_015];
myvect = [myvect;my_wpac_2023_015];
btkvect = [btkvect;btk_wpac_2023_015];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 016 ... MAWAR around 2023-05-25-15Z
# my at https://twitter.com/elioeFIN/status/1661750744058560513

nhc_wpac_2023_016 = [15.7,136.5,150;16.7,131.2,140;18.1,127.1,125;19.6,124.7,110;21.0,123.5,90];
my_wpac_2023_016 = [15.6,136.2,150;16.5,130.4,140;17.7,126.0,125;19.4,123.6,110;20.5,122.9,90];
btk_wpac_2023_016 = [15.7,136.5,145;16.8,130.9,125;18.0,127.3,105;19.7,125.6,90;20.9,125.1,70]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_016];
myvect = [myvect;my_wpac_2023_016];
btkvect = [btkvect;btk_wpac_2023_016];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 017 ... MAWAR around 2023-05-25-21Z
# my at https://twitter.com/elioeFIN/status/1661835375390629896

nhc_wpac_2023_017 = [15.9,135.2,150;17.2,130.0,135;18.9,126.2,115;20.1,124.3,95;21.5,123.7,80];
my_wpac_2023_017 = [16.0,135.1,150;17.1,129.6,135;19.0,125.9,115;20.4,124.1,95;21.4,123.8,75];
btk_wpac_2023_017 = [16.0,134.9,140;17.0,129.7,115;18.6,126.7,105;20.1,125.4,85;21.2,125.0,65]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_017];
myvect = [myvect;my_wpac_2023_017];
btkvect = [btkvect;btk_wpac_2023_017];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 018 ... MAWAR around 2023-05-26-15Z
# my at https://twitter.com/elioeFIN/status/1662108083076710401

nhc_wpac_2023_018 = [16.9,131.3,140;18.3,127.5,120;19.8,125.2,95;21.0,124.6,75;22.1,125.2,65];
my_wpac_2023_018 = [16.8,131.2,140;18.0,126.9,120;19.9,124.8,95;21.2,123.9,75;22.1,125.0,60];
btk_wpac_2023_018 = [16.8,130.9,125;18.0,127.3,105;19.7,125.6,90;20.9,125.1,70;22.7,125.5,55]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_018];
myvect = [myvect;my_wpac_2023_018];
btkvect = [btkvect;btk_wpac_2023_018];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 019 ... MAWAR around 2023-05-26-21Z
# my at https://twitter.com/elioeFIN/status/1662204583538565122

nhc_wpac_2023_019 = [17.2,129.6,140;18.6,126.2,115;20.2,124.4,95;21.4,124.1,75;22.7,124.8,65];
my_wpac_2023_019 = [17.0,129.5,140;18.3,125.8,115;20.0,123.9,95;21.1,123.1,75;22.7,124.4,60];
btk_wpac_2023_019 = [17.0,129.7,115;18.6,126.7,105;20.1,125.4,85;21.2,125.0,65;23.5,125.3,55]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_019];
myvect = [myvect;my_wpac_2023_019];
btkvect = [btkvect;btk_wpac_2023_019];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 020 ... MAWAR around 2023-05-27-03Z
# my at https://twitter.com/elioeFIN/status/1662296712034000896

nhc_wpac_2023_020 = [17.5,128.5,125;19.1,125.4,105;20.5,124.0,90;21.4,124.1,75;23.1,125.0,65];
my_wpac_2023_020 = [17.4,128.4,125;18.8,125.1,105;20.3,123.7,90;21.2,123.5,75;23.1,124.7,60];
btk_wpac_2023_020 = [17.2,128.7,110;19.0,126.2,105;20.4,125.1,80;21.5,125.1,65;24.2,125.9,45]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_020];
myvect = [myvect;my_wpac_2023_020];
btkvect = [btkvect;btk_wpac_2023_020];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 021 ... MAWAR around 2023-05-27-21Z
# my at https://twitter.com/elioeFIN/status/1662562132465012736

nhc_wpac_2023_021 = [18.5,126.1,110;19.8,124.1,95;20.6,123.5,80;21.6,123.6,70;23.2,124.1,60];
my_wpac_2023_021 = [18.5,125.9,110;19.7,123.6,95;20.6,122.5,80;21.7,121.7,70;23.1,123.3,55];
btk_wpac_2023_021 = [18.6,126.7,105;20.1,125.4,85;21.2,125.0,65;23.5,125.3,55;26.8,128.1,45]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_021];
myvect = [myvect;my_wpac_2023_021];
btkvect = [btkvect;btk_wpac_2023_021];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 022 ... MAWAR around 2023-05-28-21Z
# my at https://twitter.com/elioeFIN/status/1662924808139468802

nhc_wpac_2023_022 = [20.0,125.1,95;21.0,124.5,85;22.4,124.3,70;24.4,124.9,55;25.9,126.4,45];
my_wpac_2023_022 = [20.0,125.0,95;20.7,124.0,85;22.3,123.4,65;24.1,123.5,55;25.9,126.1,40];
btk_wpac_2023_022 = [20.1,125.4,85;21.2,125.0,65;23.5,125.3,55;26.8,128.1,45;29.8,135.3,35]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_022];
myvect = [myvect;my_wpac_2023_022];
btkvect = [btkvect;btk_wpac_2023_022];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 023 ... MAWAR around 2023-05-29-03Z
# my at https://twitter.com/elioeFIN/status/1663018356272766976

nhc_wpac_2023_023 = [20.5,124.7,90;21.5,124.2,80;23.2,124.3,70;25.1,125.4,55;26.5,127.2,45];
my_wpac_2023_023 = [20.4,124.6,90;21.3,123.8,75;22.9,123.6,65;24.8,123.8,55;26.8,127.5,40];
btk_wpac_2023_023 = [20.4,125.1,80;21.5,125.1,65;24.2,125.9,45;27.5,129.6,40;30.7,137.6,35]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_023];
myvect = [myvect;my_wpac_2023_023];
btkvect = [btkvect;btk_wpac_2023_023];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 024 ... MAWAR around 2023-05-29-21Z
# my at https://twitter.com/elioeFIN/status/1663284223153774592

nhc_wpac_2023_024 = [21.3,124.9,75;22.8,125.1,65;24.8,126.1,55;26.3,128.2,50];
my_wpac_2023_024 = [21.3,124.9,75;22.7,125.0,60;24.8,125.8,55;26.1,128.2,50];
btk_wpac_2023_024 = [21.2,125.0,65;23.5,125.3,55;26.8,128.1,45;29.8,135.3,35]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_024];
myvect = [myvect;my_wpac_2023_024];
btkvect = [btkvect;btk_wpac_2023_024];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Wpac 025 ... MAWAR around 2023-05-30-21Z
# my at https://twitter.com/elioeFIN/status/1663650416825909248

nhc_wpac_2023_025 = [23.0,125.5,55;25.7,127.8,50;27.8,132.1,45];
my_wpac_2023_025 = [23.0,125.4,50;25.4,126.9,45;27.7,132.2,45];
btk_wpac_2023_025 = [23.5,125.3,55;26.8,128.1,45;29.8,135.3,35]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_025];
myvect = [myvect;my_wpac_2023_025];
btkvect = [btkvect;btk_wpac_2023_025];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Atl 001 ... 02L around 2023-06-01-21Z
# my at https://twitter.com/elioeFIN/status/1664377646296252418
# NHC at https://www.nhc.noaa.gov/archive/2023/al02/al022023.discus.001.shtml?

nhc_atl_2023_001 = [26.4,86.6,35;23.7,85.7,30];
my_atl_2023_001 = [26.2,86.5,35;23.2,85.5,30];
btk_atl_2023_001 = [26.7,86.0,35;23.9,85.0,25]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_001];
myvect = [myvect;my_atl_2023_001];
btkvect = [btkvect;btk_atl_2023_001];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Atl 002 ... 02L around 2023-06-02-03Z
# my at https://twitter.com/elioeFIN/status/1664466415905112066
# NHC at https://www.nhc.noaa.gov/archive/2023/al02/al022023.discus.002.shtml?

nhc_atl_2023_002 = [25.4,86.4,30;22.9,85.1,25];
my_atl_2023_002 = [25.0,86.5,30;22.2,85.5,20];
btk_atl_2023_002 = [25.9,85.7,35;23.5,84.1,25]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_002];
myvect = [myvect;my_atl_2023_002];
btkvect = [btkvect;btk_atl_2023_002];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Wpac 026 ... TD/03W around 2023-06-06-03Z
# my at https://twitter.com/elioeFIN/status/1665921112784482304

nhc_wpac_2023_026 = [15.2,134.0,45;16.2,131.9,60;17.2,130.2,70;18.4,129.7,75;21.0,130.1,85];
my_wpac_2023_026 = [14.9,133.6,40;16.2,131.6,55;17.2,129.7,65;18.5,129.2,70;20.3,129.1,75];
btk_wpac_2023_026 = [14.6,134.1,40;15.9,131.8,65;17.3,130.2,85;19.1,129.9,90;23.2,131.7,75]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_026];
myvect = [myvect;my_wpac_2023_026];
btkvect = [btkvect;btk_wpac_2023_026];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 027 ... TD/03W around 2023-06-06-09Z
# my at https://twitter.com/elioeFIN/status/1666008108106240003

nhc_wpac_2023_027 = [15.4,133.7,50;16.4,131.6,65;17.4,130.3,75;18.9,130.3,80;21.6,130.9,85];
my_wpac_2023_027 = [15.1,133.3,45;16.3,131.1,65;17.7,129.3,70;18.8,129.6,75;21.9,130.6,75];
btk_wpac_2023_027 = [15.0,133.6,45;16.2,131.2,70;17.9,130.0,85;20.2,130.2,95;24.2,132.2,70]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_027];
myvect = [myvect;my_wpac_2023_027];
btkvect = [btkvect;btk_wpac_2023_027];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 028 ... GUCHOL around 2023-06-06-15Z
# my at https://twitter.com/elioeFIN/status/1666096340441657349

nhc_wpac_2023_028 = [15.9,133.2,55;16.9,131.2,80;18.0,130.3,80;19.9,130.4,85;23.2,131.7,85];
my_wpac_2023_028 = [14.6,133.0,50;16.7,131.0,75;18.0,130.4,75;19.2,130.9,75;22.3,132.7,80];
btk_wpac_2023_028 = [15.3,133.0,50;16.4,130.9,80;18.2,130.0,75;20.7,130.6,90;25.5,133.6,50]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_028];
myvect = [myvect;my_wpac_2023_028];
btkvect = [btkvect;btk_wpac_2023_028];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Nio 12 ... BIPARJOY around 2023-06-06-15Z
# my at https://twitter.com/elioeFIN/status/1666100335285538816

nhc_nio_2023_12 = [13.4,66.2,70;14.6,66.3,75;15.9,66.1,75;17.6,65.5,80;18.8,65.1,80];
my_nio_2023_12 = [13.6,65.9,65;15.1,65.5,75;16.6,65.3,75;18.6,64.7,80;19.8,64.5,75];
btk_nio_2023_12 = [13.3,66.2,85;14.2,66.0,75;15.7,67.3,65;17.2,67.3,105;18.7,67.9,90]; # JTWC best track
nhcvect = [nhcvect;nhc_nio_2023_12];
myvect = [myvect;my_nio_2023_12];
btkvect = [btkvect;btk_nio_2023_12];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Nio 13 ... BIPARJOY around 2023-06-06-21Z
# my at https://twitter.com/elioeFIN/status/1666191333306908672

nhc_nio_2023_13 = [13.2,66.5,95;14.5,65.9,100;15.6,65.5,90;16.8,65.1,80;18.2,64.1,80];
my_nio_2023_13 = [13.4,66.2,85;15.3,65.2,95;16.6,64.6,85;17.8,64.2,80;19.0,63.6,70];
btk_nio_2023_13 = [13.5,66.1,80;14.5,66.2,70;16.3,67.4,70;17.6,67.4,100;19.0,67.8,85]; # JTWC best track
nhcvect = [nhcvect;nhc_nio_2023_13];
myvect = [myvect;my_nio_2023_13];
btkvect = [btkvect;btk_nio_2023_13];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 029 ... GUCHOL around 2023-06-07-03Z
# my at https://twitter.com/elioeFIN/status/1666277109914824707

nhc_wpac_2023_029 = [15.5,132.4,65;17.0,130.7,85;18.3,130.5,85;21.4,132.5,80;25.1,135.7,80];
my_wpac_2023_029 = [15.8,132.3,60;17.3,130.7,80;19.1,130.7,80;21.6,132.0,85;25.3,136.0,80];
btk_wpac_2023_029 = [15.9,131.8,65;17.3,130.2,85;19.1,129.9,90;23.2,131.7,75;28.1,136.6,50]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_029];
myvect = [myvect;my_wpac_2023_029];
btkvect = [btkvect;btk_wpac_2023_029];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Nio 14 ... BIPARJOY around 2023-06-07-03Z
# my at https://twitter.com/elioeFIN/status/1666281754414440452

nhc_nio_2023_14 = [13.6,66.3,95;14.9,65.9,100;15.9,65.2,90;17.1,64.7,80;18.6,63.9,75];
my_nio_2023_14 = [13.8,66.2,90;15.1,65.5,95;16.4,64.8,85;18.0,64.6,80;19.5,63.4,70];
btk_nio_2023_14 = [13.7,66.1,75;14.8,66.4,65;16.4,67.3,95;17.8,67.7,95;19.2,67.7,80]; # JTWC best track
nhcvect = [nhcvect;nhc_nio_2023_14];
myvect = [myvect;my_nio_2023_14];
btkvect = [btkvect;btk_nio_2023_14];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Nio 15 ... BIPARJOY around 2023-06-07-15Z
# my at https://twitter.com/elioeFIN/status/1666465932196163585

nhc_nio_2023_15 = [14.8,66.2,95;16.1,65.9,85;17.3,65.6,80;18.6,65.1,75;19.8,64.7,65];
my_nio_2023_15 = [14.8,66.0,90;16.0,65.3,85;17.5,65.0,80;18.8,64.4,75;20.1,64.0,60];
btk_nio_2023_15 = [14.2,66.0,75;15.7,67.3,65;17.2,67.3,105;18.7,67.9,90;19.9,67.2,90]; # JTWC best track
nhcvect = [nhcvect;nhc_nio_2023_15];
myvect = [myvect;my_nio_2023_15];
btkvect = [btkvect;btk_nio_2023_15];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Nio 16 ... BIPARJOY around 2023-06-08-15Z
# my at https://twitter.com/elioeFIN/status/1666833331239911430

nhc_nio_2023_16 = [15.8,66.0,90;17.2,66.2,90;18.6,66.3,80;19.8,65.7,75;21.2,65.1,65];
my_nio_2023_16 = [15.7,66.0,90;17.0,65.9,85;18.5,65.9,75;19.6,66.0,75;21.3,64.9,55];
btk_nio_2023_16 = [15.7,67.3,65;17.2,67.3,105;18.7,67.9,90;19.9,67.2,90;21.1,66.4,95]; # JTWC best track
nhcvect = [nhcvect;nhc_nio_2023_16];
myvect = [myvect;my_nio_2023_16];
btkvect = [btkvect;btk_nio_2023_16];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 030 ... GUCHOL around 2023-06-09-21Z
# my at https://twitter.com/elioeFIN/status/1667269209418608640

nhc_wpac_2023_030 = [21.2,130.8,85;25.1,134.7,70;30.2,140.7,55];
my_wpac_2023_030 = [21.4,130.8,85;25.3,134.8,80;30.9,141.4,65];
btk_wpac_2023_030 = [22.2,130.8,80;26.9,134.7,45;32.3,141.7,45]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_030];
myvect = [myvect;my_wpac_2023_030];
btkvect = [btkvect;btk_wpac_2023_030];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Nio 17 ... BIPARJOY around 2023-06-09-21Z
# my at https://twitter.com/elioeFIN/status/1667274881405263873

nhc_nio_2023_17 = [17.6,67.7,85;19.2,67.9,80;20.5,67.6,70;21.7,67.2,65;22.8,67.1,65];
my_nio_2023_17 = [17.5,67.8,80;19.2,68.0,75;20.4,67.4,65;21.7,67.1,65;22.6,66.8,55];
btk_nio_2023_17 = [17.6,67.4,100;19.0,67.8,85;20.3,67.2,85;21.2,66.4,85;22.2,66.7,60]; # JTWC best track
nhcvect = [nhcvect;nhc_nio_2023_17];
myvect = [myvect;my_nio_2023_17];
btkvect = [btkvect;btk_nio_2023_17];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Nio 18 ... BIPARJOY around 2023-06-10-03Z
# my at https://twitter.com/elioeFIN/status/1667370245324001282

nhc_nio_2023_18 = [18.1,67.7,80;19.6,67.7,75;21.0,67.3,70;22.1,67.1,65;23.2,67.0,55];
my_nio_2023_18 = [17.9,67.6,80;19.4,67.6,75;20.9,67.0,70;22.2,66.6,65;23.2,66.6,55];
btk_nio_2023_18 = [17.8,67.7,95;19.2,67.7,80;20.7,67.0,85;21.3,66.3,85;22.3,66.9,55]; # JTWC best track
nhcvect = [nhcvect;nhc_nio_2023_18];
myvect = [myvect;my_nio_2023_18];
btkvect = [btkvect;btk_nio_2023_18];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Nio 19 ... BIPARJOY around 2023-06-10-15Z
# my at https://twitter.com/elioeFIN/status/1667555777844789252

nhc_nio_2023_19 = [18.8,67.7,90;20.2,67.3,80;21.5,66.8,75;22.7,67.1,65;23.7,67.8,50];
my_nio_2023_19 = [18.8,67.6,85;20.1,67.3,75;21.4,66.7,70;22.2,66.3,65;24.1,67.1,45];
btk_nio_2023_19 = [18.7,67.9,90;19.9,67.2,90;21.1,66.4,95;21.8,66.7,70;22.8,68.2,55]; # JTWC best track
nhcvect = [nhcvect;nhc_nio_2023_19];
myvect = [myvect;my_nio_2023_19];
btkvect = [btkvect;btk_nio_2023_19];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Nio 20 ... BIPARJOY around 2023-06-11-21Z
# my at https://twitter.com/elioeFIN/status/1668001284278870019

nhc_nio_2023_20 = [20.5,67.4,100;21.7,67.2,85;22.8,67.7,75;24.0,69.7,50;25.3,72.1,30];
my_nio_2023_20 = [20.5,67.6,90;21.7,67.3,80;22.6,67.5,70;24.0,69.4,45;25.3,72.2,30];
btk_nio_2023_20 = [20.3,67.2,85;21.2,66.4,85;22.2,66.7,60;23.3,68.6,50;24.7,70.8,35]; # JTWC best track
nhcvect = [nhcvect;nhc_nio_2023_20];
myvect = [myvect;my_nio_2023_20];
btkvect = [btkvect;btk_nio_2023_20];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Nio 21 ... BIPARJOY around 2023-06-12-03Z
# my at https://twitter.com/elioeFIN/status/1668093891986309120

nhc_nio_2023_21 = [20.9,67.2,80;21.9,67.0,75;22.7,67.6,70;24.0,68.9,50;25.5,71.8,30];
my_nio_2023_21 = [20.9,67.4,80;21.9,67.3,75;22.6,67.5,65;24.0,69.4,40;25.4,72.3,25];
btk_nio_2023_21 = [20.7,67.0,85;21.3,66.3,85;22.3,66.9,55;23.5,69.0,45;25.1,71.1,30]; # JTWC best track
nhcvect = [nhcvect;nhc_nio_2023_21];
myvect = [myvect;my_nio_2023_21];
btkvect = [btkvect;btk_nio_2023_21];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Nio 22 ... BIPARJOY around 2023-06-12-15Z
# my at https://twitter.com/elioeFIN/status/1668277643203031041

nhc_nio_2023_22 = [21.1,66.7,80;22.0,66.9,70;23.3,68.1,60;24.6,70.2,40;26.0,72.9,25];
my_nio_2023_22 = [21.2,66.8,80;21.9,66.9,70;23.3,68.0,55;24.5,69.9,35;26.4,73.0,20];
btk_nio_2023_22 = [21.1,66.4,95;21.8,66.7,70;22.8,68.2,55;24.2,70.4,40;25.6,72.5,26.5]; # JTWC best track, except day 5 from IMD prelim report
nhcvect = [nhcvect;nhc_nio_2023_22];
myvect = [myvect;my_nio_2023_22];
btkvect = [btkvect;btk_nio_2023_22];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Nio 23 ... BIPARJOY around 2023-06-12-21Z
# my at https://twitter.com/elioeFIN/status/1668360210455339009

nhc_nio_2023_23 = [21.2,66.8,85;22.3,67.2,75;23.7,68.8,55;25.2,71.4,30];
my_nio_2023_23 = [21.2,66.9,80;22.2,67.2,70;23.7,68.8,50;25.2,71.9,30];
btk_nio_2023_23 = [21.2,66.4,85;22.2,66.7,60;23.3,68.6,50;24.7,70.8,35]; # JTWC best track
nhcvect = [nhcvect;nhc_nio_2023_23];
myvect = [myvect;my_nio_2023_23];
btkvect = [btkvect;btk_nio_2023_23];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Nio 24 ... BIPARJOY around 2023-06-13-21Z
# my at https://twitter.com/elioeFIN/status/1668722866563567617

nhc_nio_2023_24 = [22.8,67.5,70;24.1,69.4,55;25.4,72.4,30];
my_nio_2023_24 = [22.8,67.5,65;24.1,69.6,50;25.4,72.8,25];
btk_nio_2023_24 = [22.2,66.7,60;23.3,68.6,50;24.7,70.8,35]; # JTWC best track
nhcvect = [nhcvect;nhc_nio_2023_24];
myvect = [myvect;my_nio_2023_24];
btkvect = [btkvect;btk_nio_2023_24];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Nio 25 ... BIPARJOY around 2023-06-14-03Z
# my at https://twitter.com/elioeFIN/status/1668813903017418753

nhc_nio_2023_25 = [22.8,67.3,70;24.3,69.6,50;25.4,72.8,30];
my_nio_2023_25 = [22.8,67.4,70;24.1,69.9,45;25.2,72.7,25];
btk_nio_2023_25 = [22.3,66.9,55;23.5,69.0,45;25.1,71.1,30]; # JTWC best track
nhcvect = [nhcvect;nhc_nio_2023_25];
myvect = [myvect;my_nio_2023_25];
btkvect = [btkvect;btk_nio_2023_25];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Nio 26 ... BIPARJOY around 2023-06-14-15Z
# my at https://twitter.com/elioeFIN/status/1668999955803979777

nhc_nio_2023_26 = [23.6,68.3,55;25.0,70.7,40];
my_nio_2023_26 = [23.5,68.2,55; 24.8,70.6,40];
btk_nio_2023_26 = [22.8,68.2,55;24.2,70.4,40]; # JTWC best track
nhcvect = [nhcvect;nhc_nio_2023_26];
myvect = [myvect;my_nio_2023_26];
btkvect = [btkvect;btk_nio_2023_26];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Nio 27 ... BIPARJOY around 2023-06-14-21Z
# my at https://twitter.com/elioeFIN/status/1669082046935826434

nhc_nio_2023_27 = [23.7,68.3,60;25.1,71.1,30];
my_nio_2023_27 = [23.6,68.5,55;25.1,71.2,30];
btk_nio_2023_27 = [23.3,68.6,50;24.7,70.8,35]; # JTWC best track
nhcvect = [nhcvect;nhc_nio_2023_27];
myvect = [myvect;my_nio_2023_27];
btkvect = [btkvect;btk_nio_2023_27];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Atl 003 ... 03L around 2023-06-19-15Z
# my at https://twitter.com/elioeFIN/status/1670814375882399746
# NHC at https://www.nhc.noaa.gov/archive/2023/al03/al032023.discus.001.shtml?

nhc_atl_2023_003 = [11.7,45.9,45;12.8,51.2,60;13.8,56.3,70;14.9,61.5,70;16.5,66.5,65];
my_atl_2023_003 = [11.6,45.7,45;12.6,51.0,60;13.5,55.9,65;14.5,61.2,70;16.2,66.0,60];
btk_atl_2023_003 = [11.7,46.3,35;13.0,52.0,50;13.5,57.3,60;13.2,63.8,50;13.0,70.9,40]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_003];
myvect = [myvect;my_atl_2023_003];
btkvect = [btkvect;btk_atl_2023_003];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 004 ... 03L around 2023-06-19-21Z
# my at https://twitter.com/elioeFIN/status/1670902157225209856
# NHC at https://www.nhc.noaa.gov/archive/2023/al03/al032023.discus.002.shtml?

nhc_atl_2023_004 = [12.2,47.7,50;13.2,52.9,65;14.3,58.3,70;15.5,63.6,65;17.0,68.5,60];
my_atl_2023_004 = [12.2,47.5,55;13.0,52.7,65;13.8,57.7,70;14.9,63.4,65;16.6,67.9,60];
btk_atl_2023_004 = [12.0,48.0,40;13.3,53.3,55;13.4,58.8,55;13.1,65.6,45;13.1,72.9,35]; # TCR (except day 5)
nhcvect = [nhcvect;nhc_atl_2023_004];
myvect = [myvect;my_atl_2023_004];
btkvect = [btkvect;btk_atl_2023_004];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 005 ... BRET around 2023-06-20-03Z
# my at https://twitter.com/elioeFIN/status/1670992866477309954
# NHC at https://www.nhc.noaa.gov/archive/2023/al03/al032023.discus.003.shtml?

nhc_atl_2023_005 = [12.3,48.7,55;13.3,53.9,65;14.3,59.4,60;15.0,64.5,55];
my_atl_2023_005 = [12.5,48.6,60;13.2,53.8,70;13.9,59.0,65;14.6,64.1,60];
btk_atl_2023_005 = [12.4,49.4,45;13.4,54.6,55;13.3,60.3,55;13.0,67.4,45]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_005];
myvect = [myvect;my_atl_2023_005];
btkvect = [btkvect;btk_atl_2023_005];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 006 ... BRET around 2023-06-20-15Z
# my at https://twitter.com/elioeFIN/status/1671170571542069253
# NHC at https://www.nhc.noaa.gov/archive/2023/al03/al032023.discus.005.shtml?

nhc_atl_2023_006 = [12.7,51.9,45;13.6,57.3,55;14.2,63.6,50;14.4,70.4,45];
my_atl_2023_006 = [12.6,52.0,55;13.3,56.8,50;13.8,62.8,50;14.5,70.1,50];
btk_atl_2023_006 = [13.0,52.0,50;13.5,57.3,60;13.2,63.8,50;13.0,70.9,40]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_006];
myvect = [myvect;my_atl_2023_006];
btkvect = [btkvect;btk_atl_2023_006];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 007 ... BRET around 2023-06-20-21Z
# my at https://twitter.com/elioeFIN/status/1671262710410125312
# NHC at https://www.nhc.noaa.gov/archive/2023/al03/al032023.discus.006.shtml?

nhc_atl_2023_007 = [13.1,53.4,50;13.9,58.8,55;14.4,65.6,50;14.7,73.0,40];
my_atl_2023_007 = [13.0,53.3,55;13.6,58.4,55;14.2,65.2,50;14.9,73.1,45];
btk_atl_2023_007 = [13.3,53.3,55;13.4,58.8,55;13.1,65.6,45;13.1,72.9,35]; # TCR (except day 4)
nhcvect = [nhcvect;nhc_atl_2023_007];
myvect = [myvect;my_atl_2023_007];
btkvect = [btkvect;btk_atl_2023_007];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 008 ... BRET around 2023-06-21-03Z
# my at https://twitter.com/elioeFIN/status/1671350645595553794
# NHC at https://www.nhc.noaa.gov/archive/2023/al03/al032023.discus.007.shtml?

nhc_atl_2023_008 = [13.3,54.7,55;14.0,60.6,55;14.6,67.6,45];
my_atl_2023_008 = [13.3,54.8,60;13.7,60.4,50;13.9,67.3,45];
btk_atl_2023_008 = [13.4,54.6,55;13.3,60.3,55;13.0,67.4,45]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_008];
myvect = [myvect;my_atl_2023_008];
btkvect = [btkvect;btk_atl_2023_008];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Atl 009 ... BRET around 2023-06-21-21Z
# my at https://twitter.com/elioeFIN/status/1671624206260346882
# NHC at https://www.nhc.noaa.gov/archive/2023/al03/al032023.discus.010.shtml?

nhc_atl_2023_009 = [13.8,58.5,55;14.5,65.2,50;14.9,72.2,40];
my_atl_2023_009 = [13.7,58.4,60;14.1,64.7,45;14.7,71.6,40];
btk_atl_2023_009 = [13.4,58.8,55;13.1,65.6,45;13.1,72.9,35]; # TCR (except day 3)
nhcvect = [nhcvect;nhc_atl_2023_009];
myvect = [myvect;my_atl_2023_009];
btkvect = [btkvect;btk_atl_2023_009];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Atl 010 ... BRET around 2023-06-22-03Z
# my at https://twitter.com/elioeFIN/status/1671712387588653058
# NHC at https://www.nhc.noaa.gov/archive/2023/al03/al032023.discus.011.shtml?

nhc_atl_2023_010 = [14.0,60.1,55;14.5,67.0,45];
my_atl_2023_010 = [13.8,60.0,60;13.9,66.4,40];
btk_atl_2023_010 = [13.3,60.3,55;13.0,67.4,45]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_010];
myvect = [myvect;my_atl_2023_010];
btkvect = [btkvect;btk_atl_2023_010];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Atl 011 ... 04L around 2023-06-22-15Z
# my at https://twitter.com/elioeFIN/status/1671896695918174212
# NHC at https://www.nhc.noaa.gov/archive/2023/al04/al042023.discus.002.shtml?

nhc_atl_2023_011 = [12.8,47.2,40;15.5,52.2,50;18.6,57.4,45;21.7,62.3,35;24.0,65.2,30];
my_atl_2023_011 = [12.5,47.2,45;15.0,52.0,50;18.0,56.8,45;21.3,61.7,35;23.7,64.4,35];
btk_atl_2023_011 = [12.2,47.5,45;15.7,52.5,50;20.5,57.6,40;23.6,62.2,25;25.2,64.8,20]; # TCR (days 1-3 only)
nhcvect = [nhcvect;nhc_atl_2023_011];
myvect = [myvect;my_atl_2023_011];
btkvect = [btkvect;btk_atl_2023_011];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 012 ... CINDY around 2023-06-23-09Z
# my at https://twitter.com/elioeFIN/status/1672170571222622208
# NHC at https://www.nhc.noaa.gov/archive/2023/al04/al042023.discus.005.shtml?

nhc_atl_2023_012 = [14.3,51.2,50;17.7,56.5,50;20.9,61.4,40;23.5,65.0,35];
my_atl_2023_012 = [14.2,51.1,55;17.4,56.0,55;20.5,60.0,45;22.9,63.9,35];
btk_atl_2023_012 = [14.6,51.2,50;19.4,56.4,45;23.0,61.0,30;24.7,64.5,20]; # TCR (days 1-2 only)
nhcvect = [nhcvect;nhc_atl_2023_012];
myvect = [myvect;my_atl_2023_012];
btkvect = [btkvect;btk_atl_2023_012];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 013 ... CINDY around 2023-06-24-15Z
# my at https://twitter.com/elioeFIN/status/1672624652621848577
# NHC at https://www.nhc.noaa.gov/archive/2023/al04/al042023.discus.010.shtml?

nhc_atl_2023_013 = [20.0,57.4,45;23.5,61.3,35;26.0,63.3,35];
my_atl_2023_013 = [20.0,57.5,50;23.6,60.5,35;26.3,62.5,40];
btk_atl_2023_013 = [20.5,57.6,40;23.6,62.2,25;25.2,64.8,20]; # TCR (day 1 only)
nhcvect = [nhcvect;nhc_atl_2023_013];
myvect = [myvect;my_atl_2023_013];
btkvect = [btkvect;btk_atl_2023_013];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Atl 014 ... CINDY around 2023-06-24-21Z
# my at https://twitter.com/elioeFIN/status/1672713103417507841
# NHC at https://www.nhc.noaa.gov/archive/2023/al04/al042023.discus.011.shtml?

nhc_atl_2023_014 = [21.8,58.8,40;25.5,61.4,35];
my_atl_2023_014 = [21.6,58.4,45;25.0,60.6,40];
btk_atl_2023_014 = [21.6,58.8,40;24.0,63.1,25]; # TCR (day 1 only)
nhcvect = [nhcvect;nhc_atl_2023_014];
myvect = [myvect;my_atl_2023_014];
btkvect = [btkvect;btk_atl_2023_014];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Atl 015 ... CINDY around 2023-06-25-03Z
# my at https://twitter.com/elioeFIN/status/1672801154181283841
# NHC at https://www.nhc.noaa.gov/archive/2023/al04/al042023.discus.012.shtml?

nhc_atl_2023_015 = [22.4,59.3,40;25.7,61.5,35];
my_atl_2023_015 = [22.3,59.1,45;25.9,61.3,35];
btk_atl_2023_015 = [22.5,59.9,35;24.4,63.8,25]; # TCR (day 1 only)
nhcvect = [nhcvect;nhc_atl_2023_015];
myvect = [myvect;my_atl_2023_015];
btkvect = [btkvect;btk_atl_2023_015];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Epac 001 ... ADRIAN around 2023-06-27-21Z
# my at https://twitter.com/elioeFIN/status/1673800600385978368
# NHC at https://www.nhc.noaa.gov/archive/2023/ep01/ep012023.discus.001.shtml?

nhc_epac_2023_001 = [15.4,108.8,65;15.6,111.6,75;16.0,113.7,70;16.4,115.1,50;17.3,115.0,35];
my_epac_2023_001 = [15.4,108.8,60;15.8,111.7,75;16.3,113.8,65;16.6,115.2,45;17.8,115.2,30];
btk_epac_2023_001 = [15.3,108.1,70;16.2,110.4,75;17.3,112.5,90;18.5,114.7,50;19.7,117.1,25]; # TCR
nhcvect = [nhcvect;nhc_epac_2023_001];
myvect = [myvect;my_epac_2023_001];
btkvect = [btkvect;btk_epac_2023_001];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 002 ... ADRIAN around 2023-06-28-21Z
# my at https://twitter.com/elioeFIN/status/1674162925089566722
# NHC at https://www.nhc.noaa.gov/archive/2023/ep01/ep012023.discus.005.shtml?

nhc_epac_2023_002 = [15.8,111.0,80;16.4,113.4,70;17.1,115.5,50;17.6,117.0,30;17.6,117.6,20];
my_epac_2023_002 = [15.6,111.0,75;16.5,113.5,70;17.3,114.5,50;18.3,116.1,25;19.4,116.6,20];
btk_epac_2023_002 = [16.2,110.4,75;17.3,112.5,90;18.5,114.7,50;19.7,117.1,25;20.2,120.0,20]; # TCR
nhcvect = [nhcvect;nhc_epac_2023_002];
myvect = [myvect;my_epac_2023_002];
btkvect = [btkvect;btk_epac_2023_002];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 003 ... ADRIAN around 2023-06-29-03Z
# my at https://twitter.com/elioeFIN/status/1674250645027602436
# NHC at https://www.nhc.noaa.gov/archive/2023/ep01/ep012023.discus.006.shtml?

nhc_epac_2023_003 = [15.8,111.4,80;16.4,114.0,70;17.1,116.0,45;17.3,116.7,30;17.3,117.5,20];
my_epac_2023_003 = [16.0,111.5,70;16.8,114.2,65;17.4,116.1,40;18.3,116.6,25;18.2,117.6,20];
btk_epac_2023_003 = [16.5,111.0,80;17.6,113.1,80;18.8,115.2,45;19.9,117.8,25;20.1,120.6,20]; # TCR
nhcvect = [nhcvect;nhc_epac_2023_003];
myvect = [myvect;my_epac_2023_003];
btkvect = [btkvect;btk_epac_2023_003];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 004 ... 02E around 2023-06-29-03Z
# my at https://twitter.com/elioeFIN/status/1674257932886614018
# NHC at https://www.nhc.noaa.gov/archive/2023/ep02/ep022023.discus.001.shtml?

nhc_epac_2023_004 = [15.4,100.1,35;17.9,103.7,55];
my_epac_2023_004 = [15.2,100.3,40;17.9,103.8,55];
btk_epac_2023_004 = [15.4,99.9,45;18.4,103.7,65]; # TCR
nhcvect = [nhcvect;nhc_epac_2023_004];
myvect = [myvect;my_epac_2023_004];
btkvect = [btkvect;btk_epac_2023_004];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Epac 005 ... ADRIAN around 2023-06-29-15Z
# my at https://twitter.com/elioeFIN/status/1674434118715871232
# NHC at https://www.nhc.noaa.gov/archive/2023/ep01/ep012023.discus.008.shtml?

nhc_epac_2023_005 = [16.6,112.7,75;17.3,115.0,60;17.8,116.8,35;18.1,118.3,25;18.0,119.5,20];
my_epac_2023_005 = [16.7,112.6,70;17.7,115.2,55;17.9,117.0,30;18.9,117.6,20;19.3,118.2,20];
btk_epac_2023_005 = [17.0,111.9,90;18.2,114.2,55;19.4,116.4,30;20.1,119.3,20;19.9,121.7,15]; # TCR
nhcvect = [nhcvect;nhc_epac_2023_005];
myvect = [myvect;my_epac_2023_005];
btkvect = [btkvect;btk_epac_2023_005];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 006 ... 02E around 2023-06-29-15Z
# my at https://twitter.com/elioeFIN/status/1674437832075608067
# NHC at https://www.nhc.noaa.gov/archive/2023/ep02/ep022023.discus.003.shtml?

nhc_epac_2023_006 = [16.5,101.9,55;19.3,105.6,65];
my_epac_2023_006 = [16.6,101.8,55;19.4,105.7,60];
btk_epac_2023_006 = [16.8,101.8,70;20.0,105.6,50]; # TCR (except day 2)
nhcvect = [nhcvect;nhc_epac_2023_006];
myvect = [myvect;my_epac_2023_006];
btkvect = [btkvect;btk_epac_2023_006];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Epac 007 ... BEATRIZ around 2023-06-29-21Z
# my at https://twitter.com/elioeFIN/status/1674525762790064131
# NHC at https://www.nhc.noaa.gov/archive/2023/ep02/ep022023.discus.004.shtml?

nhc_epac_2023_007 = [17.2,102.4,65;20.0,105.7,60];
my_epac_2023_007 = [17.2,102.3,60;20.0,105.6,55];
btk_epac_2023_007 = [17.5,102.7,75;20.7,106.2,25]; # TCR (except day 2 self-made)
nhcvect = [nhcvect;nhc_epac_2023_007];
myvect = [myvect;my_epac_2023_007];
btkvect = [btkvect;btk_epac_2023_007];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Epac 008 ... ADRIAN around 2023-06-30-03Z
# my at https://twitter.com/elioeFIN/status/1674614882480652289
# NHC at https://www.nhc.noaa.gov/archive/2023/ep01/ep012023.discus.010.shtml?

nhc_epac_2023_008 = [17.6,113.5,75;18.5,115.8,50;18.7,117.6,30;18.7,118.9,20];
my_epac_2023_008 = [17.7,113.7,70;18.7,115.9,45;19.0,117.6,25;19.3,119.0,20];
btk_epac_2023_008 = [17.6,113.1,80;18.8,115.2,45;19.9,117.8,25;20.1,120.6,20]; # TCR
nhcvect = [nhcvect;nhc_epac_2023_008];
myvect = [myvect;my_epac_2023_008];
btkvect = [btkvect;btk_epac_2023_008];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Epac 009 ... BEATRIZ around 2023-06-30-03Z
# my at https://twitter.com/elioeFIN/status/1674618862938075137
# NHC at https://www.nhc.noaa.gov/archive/2023/ep02/ep022023.discus.005.shtml?

nhc_epac_2023_009 = [17.9,103.2,65];
my_epac_2023_009 = [18.0,103.2,60];
btk_epac_2023_009 = [18.4,103.7,65]; # TCR
nhcvect = [nhcvect;nhc_epac_2023_009];
myvect = [myvect;my_epac_2023_009];
btkvect = [btkvect;btk_epac_2023_009];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;2];

# Epac 010 ... ADRIAN around 2023-07-01-15Z
# my at https://twitter.com/elioeFIN/status/1675158285693906944
# NHC at https://www.nhc.noaa.gov/archive/2023/ep01/ep012023.discus.016.shtml?

nhc_epac_2023_010 = [19.2,116.5,30;19.8,119.0,20];
my_epac_2023_010 = [19.3,116.3,30;20.2,119.3,20];
btk_epac_2023_010 = [19.4,116.4,30;20.1,119.3,20]; # TCR
nhcvect = [nhcvect;nhc_epac_2023_010];
myvect = [myvect;my_epac_2023_010];
btkvect = [btkvect;btk_epac_2023_010];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Epac 011 ... 03E around 2023-07-11-21Z
# my at https://twitter.com/elioeFIN/status/1678872286869311488
# NHC at https://www.nhc.noaa.gov/archive/2023/ep03/ep032023.discus.001.shtml?

nhc_epac_2023_011 = [12.9,113.1,40;13.2,118.8,60;14.3,124.6,75;15.7,130.6,70;16.8,137.0,55];
my_epac_2023_011 = [12.9,113.1,40;13.2,119.1,55;14.5,125.0,70;16.8,130.4,60;18.3,136.2,50];
btk_epac_2023_011 = [12.4,112.8,55;12.7,118.0,70;13.7,123.9,110;14.9,129.7,90;16.0,135.6,60]; # TCR
nhcvect = [nhcvect;nhc_epac_2023_011];
myvect = [myvect;my_epac_2023_011];
btkvect = [btkvect;btk_epac_2023_011];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 012 ... 03E around 2023-07-12-03Z
# my at https://twitter.com/elioeFIN/status/1678960642215104513
# NHC at https://www.nhc.noaa.gov/archive/2023/ep03/ep032023.discus.002.shtml?

nhc_epac_2023_012 = [12.9,114.5,45;13.4,120.1,65;14.6,126.0,75;16.0,132.5,70;17.0,138.5,55];
my_epac_2023_012 = [13.1,114.6,45;13.7,120.5,60;14.9,126.5,70;16.6,132.1,60;17.6,137.6,45];
btk_epac_2023_012 = [12.4,114.3,60;13.0,119.7,85;14.0,125.3,100;15.2,131.2,80;16.4,137.2,55]; # TCR
nhcvect = [nhcvect;nhc_epac_2023_012];
myvect = [myvect;my_epac_2023_012];
btkvect = [btkvect;btk_epac_2023_012];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 013 ... CALVIN around 2023-07-12-15Z
# my at https://twitter.com/elioeFIN/status/1679143198625497093
# NHC at https://www.nhc.noaa.gov/archive/2023/ep03/ep032023.discus.004.shtml?

nhc_epac_2023_013 = [12.9,117.1,65;13.8,122.8,80;15.0,128.9,75;16.1,135.2,65;17.3,141.5,50];
my_epac_2023_013 = [12.9,117.0,65;13.8,123.1,80;15.1,129.2,65;16.7,134.6,55;18.3,140.2,40];
btk_epac_2023_013 = [12.5,116.6,65;13.4,122.6,105;14.6,128.2,90;15.7,134.0,65;16.7,140.5,45]; # TCR (Epac only)
nhcvect = [nhcvect;nhc_epac_2023_013];
myvect = [myvect;my_epac_2023_013];
btkvect = [btkvect;btk_epac_2023_013];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 014 ... CALVIN around 2023-07-13-09Z
# my at https://twitter.com/elioeFIN/status/1679415483240534017
# NHC at https://www.nhc.noaa.gov/archive/2023/ep03/ep032023.discus.007.shtml?

nhc_epac_2023_014 = [13.2,121.0,80;14.4,126.7,80;15.7,132.6,70;16.8,138.9,55;17.7,145.7,45];
my_epac_2023_014 = [13.1,121.1,70;14.3,127.1,75;15.6,133.1,60;16.8,138.6,40;18.1,145.7,30];
btk_epac_2023_014 = [13.1,121.3,95;14.4,126.7,90;15.5,132.6,75;16.6,138.8,50;17.3,146.5,40]; # TCR (Epac only)
nhcvect = [nhcvect;nhc_epac_2023_014];
myvect = [myvect;my_epac_2023_014];
btkvect = [btkvect;btk_epac_2023_014];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 015 ... CALVIN around 2023-07-13-21Z
# my at https://twitter.com/elioeFIN/status/1679595837343559681
# NHC at https://www.nhc.noaa.gov/archive/2023/ep03/ep032023.discus.009.shtml?

nhc_epac_2023_015 = [13.7,123.7,85;14.9,129.4,80;16.2,135.2,65;17.3,141.9,50;18.2,149.1,40];
my_epac_2023_015 = [13.8,123.9,80;15.0,130.1,70;16.2,135.6,55;17.5,141.9,35;18.6,149.8,30];
btk_epac_2023_015 = [13.7,123.9,110;14.9,129.7,90;16.0,135.6,60;17.0,142.4,45;17.6,150.4,45]; # TCR (Epac only)
nhcvect = [nhcvect;nhc_epac_2023_015];
myvect = [myvect;my_epac_2023_015];
btkvect = [btkvect;btk_epac_2023_015];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 016 ... CALVIN around 2023-07-14-03Z
# my at https://twitter.com/elioeFIN/status/1679686799906549761
# NHC at https://www.nhc.noaa.gov/archive/2023/ep03/ep032023.discus.010.shtml?

nhc_epac_2023_016 = [14.3,125.5,95;15.5,131.2,85;16.7,137.4,60;17.7,144.2,45;18.6,151.3,35];
my_epac_2023_016 = [14.3,125.6,85;15.5,131.8,75;16.8,138.0,55;18.0,144.7,40;19.2,152.0,30];
btk_epac_2023_016 = [14.0,125.3,100;15.2,131.2,80;16.4,137.2,55;17.2,144.4,40;17.8,152.3,50]; # TCR (Epac only)
nhcvect = [nhcvect;nhc_epac_2023_016];
myvect = [myvect;my_epac_2023_016];
btkvect = [btkvect;btk_epac_2023_016];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Atl 016 ... DON around 2023-07-14-15Z
# my at https://twitter.com/elioeFIN/status/1679871926200565760
# NHC at https://www.nhc.noaa.gov/archive/2023/al05/al052023.discus.002.shtml?

nhc_atl_2023_016 = [36.0,47.8,40;38.5,47.7,35;38.6,43.9,35;35.7,40.0,35;33.7,38.6,40];
my_atl_2023_016 = [36.0,48.0,40;38.6,47.9,35;38.9,44.3,35;36.2,40.6,35;33.6,39.1,40];
btk_atl_2023_016 = [36.2,48.4,40;38.9,48.5,30;38.9,43.6,30;36.0,39.4,35;33.9,39.3,35]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_016];
myvect = [myvect;my_atl_2023_016];
btkvect = [btkvect;btk_atl_2023_016];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 017 ... CALVIN around 2023-07-14-21Z
# my at https://twitter.com/elioeFIN/status/1679960164080787458
# NHC at https://www.nhc.noaa.gov/archive/2023/ep03/ep032023.discus.013.shtml?

nhc_epac_2023_017 = [15.1,129.5,100;16.3,135.5,75;17.4,141.9,50;18.3,149.1,40;19.0,156.0,35];
my_epac_2023_017 = [15.0,129.5,95;16.3,135.9,70;17.3,142.1,45;18.5,148.5,40;19.6,156.3,35];
btk_epac_2023_017 = [14.9,129.7,90;16.0,135.6,60;17.0,142.4,45;17.6,150.5,45;17.9,157.7,35]; # TCR (Epac only)
nhcvect = [nhcvect;nhc_epac_2023_017];
myvect = [myvect;my_epac_2023_017];
btkvect = [btkvect;btk_epac_2023_017];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Atl 017 ... DON around 2023-07-14-21Z
# my at https://twitter.com/elioeFIN/status/1679963222592323586
# NHC at https://www.nhc.noaa.gov/archive/2023/al05/al052023.discus.003.shtml?

nhc_atl_2023_017 = [36.5,48.7,40;38.7,47.7,35;37.9,43.7,35;35.0,40.7,35;33.0,40.6,40];
my_atl_2023_017 = [36.5,48.8,40;38.7,47.7,35;37.8,43.8,40;34.7,41.2,35;33.0,40.7,45];
btk_atl_2023_017 = [37.1,48.7,35;39.4,47.5,30;38.4,42.2,30;35.3,39.2,35;33.8,39.9,40]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_017];
myvect = [myvect;my_atl_2023_017];
btkvect = [btkvect;btk_atl_2023_017];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 018 ... CALVIN around 2023-07-15-21Z
# my at https://twitter.com/elioeFIN/status/1680322023942234113
# NHC at https://www.nhc.noaa.gov/archive/2023/ep03/ep032023.discus.017.shtml?

nhc_epac_2023_018 = [16.3,135.8,65;17.3,142.5,50;18.3,149.9,40;19.4,156.8,35];
my_epac_2023_018 = [16.4,135.9,60;17.2,143.0,45;18.5,149.6,35;19.6,156.5,30];
btk_epac_2023_018 = [16.0,135.6,60;17.0,142.4,45;17.6,150.5,45;17.9,147.7,35]; # TCR (Epac only)
nhcvect = [nhcvect;nhc_epac_2023_018];
myvect = [myvect;my_epac_2023_018];
btkvect = [btkvect;btk_epac_2023_018];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Atl 018 ... DON around 2023-07-15-21Z
# my at https://twitter.com/elioeFIN/status/1680326007545290752
# NHC at https://www.nhc.noaa.gov/archive/2023/al05/al052023.discus.007.shtml?

nhc_atl_2023_018 = [39.3,47.3,30;38.6,43.1,30;35.4,40.7,30;33.2,41.0,35;33.5,42.0,35];
my_atl_2023_018 = [39.3,47.7,30;38.7,43.5,30;35.4,40.9,30;33.0,41.0,35;33.4,42.4,50];
btk_atl_2023_018 = [39.4,47.5,30;38.4,42.2,30;35.3,39.2,35;33.8,39.9,40;34.5,43.3,40]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_018];
myvect = [myvect;my_atl_2023_018];
btkvect = [btkvect;btk_atl_2023_018];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 019 ... CALVIN around 2023-07-16-03Z
# my at https://twitter.com/elioeFIN/status/1680411254932881408
# NHC at https://www.nhc.noaa.gov/archive/2023/ep03/ep032023.discus.018.shtml?

nhc_epac_2023_019 = [16.6,137.6,65;17.4,144.4,50;18.4,151.6,40];
my_epac_2023_019 = [16.5,137.6,60;17.3,144.6,45;18.6,151.2,35];
btk_epac_2023_019 = [16.4,137.2,55;17.2,144.4,40;17.8,152.3,50]; # TCR
nhcvect = [nhcvect;nhc_epac_2023_019];
myvect = [myvect;my_epac_2023_019];
btkvect = [btkvect;btk_epac_2023_019];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Atl 019 ... DON around 2023-07-16-03Z
# my at https://twitter.com/elioeFIN/status/1680415009531125760
# NHC at https://www.nhc.noaa.gov/archive/2023/al05/al052023.discus.008.shtml?

nhc_atl_2023_019 = [39.7,46.6,30;38.2,42.6,30;35.1,41.0,30;33.5,41.6,35;34.2,42.8,35];
my_atl_2023_019 = [39.5,46.8,30;37.9,42.8,30;34.5,41.5,30;33.1,42.0,35;33.9,43.0,45];
btk_atl_2023_019 = [39.5,46.4,30;37.8,40.9,35;34.6,39.1,35;33.8,40.6,45;34.6,44.2,40]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_019];
myvect = [myvect;my_atl_2023_019];
btkvect = [btkvect;btk_atl_2023_019];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 020 ... DON around 2023-07-16-15Z
# my at https://twitter.com/elioeFIN/status/1680596305683312640
# NHC at https://www.nhc.noaa.gov/archive/2023/al05/al052023.discus.010.shtml?

nhc_atl_2023_020 = [38.9,44.6,30;36.2,41.2,30;33.5,41.8,30;33.0,43.6,35;35.0,47.0,35];
my_atl_2023_020 = [39.0,44.7,30;35.9,41.5,30;33.1,42.3,30;32.6,44.6,30;34.9,47.2,40];
btk_atl_2023_020 = [38.9,43.6,30;36.0,39.4,35;33.9,39.3,35;34.3,42.2,40;35.4,46.0,45]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_020];
myvect = [myvect;my_atl_2023_020];
btkvect = [btkvect;btk_atl_2023_020];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 020 ... CALVIN around 2023-07-16-21Z
# my at https://twitter.com/elioeFIN/status/1680683351542317057
# NHC at https://www.nhc.noaa.gov/archive/2023/ep03/ep032023.discus.021.shtml?

nhc_epac_2023_020 = [17.1,142.3,40;18.1,149.7,35;19.2,157.0,35];
my_epac_2023_020 = [17.1,142.2,40;18.1,149.7,35;19.4,156.6,30];
btk_epac_2023_020 = [17.0,142.4,45;17.6,150.5,45;17.9,157.7,35]; # TCR exists only for epac
nhcvect = [nhcvect;nhc_epac_2023_020];
myvect = [myvect;my_epac_2023_020];
btkvect = [btkvect;btk_epac_2023_020];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Atl 021 ... DON around 2023-07-16-21Z
# my at https://twitter.com/elioeFIN/status/1680686831170469889
# NHC at https://www.nhc.noaa.gov/archive/2023/al05/al052023.discus.011.shtml?

nhc_atl_2023_021 = [38.5,42.9,30;35.3,40.6,30;33.0,41.5,30;33.4,44.3,35;35.5,48.0,35];
my_atl_2023_021 = [38.4,43.1,30;35.0,41.0,30;32.5,42.5,30;33.7,45.7,40;35.3,49.0,45];
btk_atl_2023_021 = [38.4,42.2,30;35.3,39.2,35;33.8,39.9,40;34.5,43.3,40;36.2,47.0,45]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_021];
myvect = [myvect;my_atl_2023_021];
btkvect = [btkvect;btk_atl_2023_021];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 022 ... DON around 2023-07-17-21Z
# my at https://twitter.com/elioeFIN/status/1681048128042958848
# NHC at https://www.nhc.noaa.gov/archive/2023/al05/al052023.discus.015.shtml?

nhc_atl_2023_022 = [35.4,39.4,30;33.6,40.5,35;34.4,43.0,40;36.7,46.8,45;40.5,50.0,45];
my_atl_2023_022 = [35.4,39.3,30;33.5,40.9,35;34.1,44.0,40;36.5,47.9,50;40.3,51.6,55];
btk_atl_2023_022 = [35.3,39.2,35;33.8,39.9,40;34.5,43.3,40;36.2,47.0,45;39.5,50.1,65]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_022];
myvect = [myvect;my_atl_2023_022];
btkvect = [btkvect;btk_atl_2023_022];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 023 ... DON around 2023-07-18-21Z
# my at https://twitter.com/elioeFIN/status/1681407162478632962
# NHC at https://www.nhc.noaa.gov/archive/2023/al05/al052023.discus.019.shtml?

nhc_atl_2023_023 = [33.7,40.0,35;34.3,42.6,40;36.5,46.3,45;40.5,49.5,45;46.0,47.5,40];
my_atl_2023_023 = [33.7,40.1,35;33.9,43.3,40;36.0,46.7,45;40.4,49.8,40;45.8,48.5,35];
btk_atl_2023_023 = [33.8,39.9,40;34.5,43.3,40;36.2,47.0,45;39.5,50.1,65;44.7,47.3,50]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_023];
myvect = [myvect;my_atl_2023_023];
btkvect = [btkvect;btk_atl_2023_023];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 024 ... DON around 2023-07-19-03Z
# my at https://twitter.com/elioeFIN/status/1681501194403864578
# NHC at https://www.nhc.noaa.gov/archive/2023/al05/al052023.discus.020.shtml?

nhc_atl_2023_024 = [33.5,40.5,40;34.6,43.5,45;37.3,47.7,45;42.1,49.6,45;47.2,44.6,35];
my_atl_2023_024 = [33.6,40.6,40;34.3,44.1,45;37.1,48.2,40;42.0,50.2,40;47.3,45.4,30];
btk_atl_2023_024 = [33.8,40.6,45;34.6,44.2,40;36.9,48.2,45;40.7,49.9,65;45.9,45.7,45]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_024];
myvect = [myvect;my_atl_2023_024];
btkvect = [btkvect;btk_atl_2023_024];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 025 ... DON around 2023-07-19-21Z
# my at https://twitter.com/elioeFIN/status/1681772386314600448
# NHC at https://www.nhc.noaa.gov/archive/2023/al05/al052023.discus.023.shtml?

nhc_atl_2023_025 = [34.1,42.7,50;35.9,46.1,50;39.0,48.6,45;43.0,48.0,45;45.5,44.0,35];
my_atl_2023_025 = [34.0,43.0,45;35.6,46.4,50;38.4,49.5,45;42.2,49.1,40;45.3,44.5,25];
btk_atl_2023_025 = [34.5,43.3,40;36.2,47.0,45;39.5,50.1,65;44.7,47.3,50;47.8,39.7,40]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_025];
myvect = [myvect;my_atl_2023_025];
btkvect = [btkvect;btk_atl_2023_025];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 026 ... DON around 2023-07-20-21Z
# my at https://twitter.com/elioeFIN/status/1682133889685364736
# NHC at https://www.nhc.noaa.gov/archive/2023/al05/al052023.discus.027.shtml?

nhc_atl_2023_026 = [36.2,47.1,45;39.7,50.4,45;44.6,50.4,35;49.7,42.4,30];
my_atl_2023_026 = [36.0,47.3,45;39.5,50.7,45;44.4,50.5,35;49.9,42.9,25];
btk_atl_2023_026 = [36.2,47.0,45;39.5,50.1,65;44.7,47.3,50;47.8,39.7,40]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_026];
myvect = [myvect;my_atl_2023_026];
btkvect = [btkvect;btk_atl_2023_026];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 027 ... DON around 2023-07-21-03Z
# my at https://twitter.com/elioeFIN/status/1682223338096041984
# NHC at https://www.nhc.noaa.gov/archive/2023/al05/al052023.discus.028.shtml?

nhc_atl_2023_027 = [36.9,48.1,45;41.1,50.9,40;46.2,49.6,30];
my_atl_2023_027 = [36.7,48.2,45;40.7,51.2,40;45.6,49.6,25];
btk_atl_2023_027 = [36.9,48.2,45;40.7,49.9,65;45.9,45.7,45]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_027];
myvect = [myvect;my_atl_2023_027];
btkvect = [btkvect;btk_atl_2023_027];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Atl 028 ... DON around 2023-07-21-15Z
# my at https://twitter.com/elioeFIN/status/1682406703105490944
# NHC at https://www.nhc.noaa.gov/archive/2023/al05/al052023.discus.030.shtml?

nhc_atl_2023_028 = [38.8,49.9,45;43.7,50.6,40;48.4,45.5,30];
my_atl_2023_028 = [38.7,50.0,45;43.5,50.6,40;48.6,45.6,30];
btk_atl_2023_028 = [38.5,49.9,55;43.3,48.5,55;47.3,41.9,40]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_028];
myvect = [myvect;my_atl_2023_028];
btkvect = [btkvect;btk_atl_2023_028];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Wpac 031 ... DOKSURI around 2023-07-21-21Z
# my at https://twitter.com/elioeFIN/status/1682490857167962112

nhc_wpac_2023_031 = [14.7,129.8,50;15.4,128.2,80;17.4,126.8,95;20.7,125.0,105;24.0,122.6,105];
my_wpac_2023_031 = [14.5,130.1,45;15.2,128.4,75;17.3,126.9,90;20.8,125.4,115;25.2,123.3,95];
btk_wpac_2023_031 = [14.6,129.5,45;15.1,127.0,90;17.0,125.1,125;19.0,121.5,120;20.0,120.0,80]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_031];
myvect = [myvect;my_wpac_2023_031];
btkvect = [btkvect;btk_wpac_2023_031];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Atl 029 ... DON around 2023-07-21-21Z
# my at https://twitter.com/elioeFIN/status/1682493950303649795
# NHC at https://www.nhc.noaa.gov/archive/2023/al05/al052023.discus.031.shtml?

nhc_atl_2023_029 = [40.0,50.2,55;44.6,48.6,40;48.7,41.0,30];
my_atl_2023_029 = [39.7,50.3,55;44.4,48.5,45;47.7,41.7,30];
btk_atl_2023_029 = [39.5,50.1,65;44.7,47.3,50;47.8,39.7,40]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_029];
myvect = [myvect;my_atl_2023_029];
btkvect = [btkvect;btk_atl_2023_029];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Wpac 032 ... DOKSURI around 2023-07-22-21Z
# my at https://twitter.com/elioeFIN/status/1682856369865605120

nhc_wpac_2023_032 = [15.3,127.9,70;17.5,126.0,95;20.2,123.8,110;23.4,121.6,115;26.9,119.5,75];
my_wpac_2023_032 = [15.3,127.5,75;17.5,125.9,105;20.0,123.5,105;23.1,121.1,100;27.0,119.5,65];
btk_wpac_2023_032 = [15.1,127.0,90;17.0,125.1,125;19.0,121.5,120;20.0,120.0,80;22.7,119.0,90]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_032];
myvect = [myvect;my_wpac_2023_032];
btkvect = [btkvect;btk_wpac_2023_032];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 033 ... DOKSURI around 2023-07-23-15Z
# my at https://twitter.com/elioeFIN/status/1683131058525544449

nhc_wpac_2023_033 = [16.4,125.5,110;18.7,122.9,125;20.7,121.1,115;23.4,119.4,90;27.6,117.7,50];
my_wpac_2023_033 = [16.5,125.7,110;18.8,122.9,130;20.5,121.2,120;24.4,119.8,75;28.3,118.4,45];
btk_wpac_2023_033 = [16.5,125.8,125;18.9,122.7,120;19.6,120.6,90;21.8,119.1,100;27.4,117.9,45]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_033];
myvect = [myvect;my_wpac_2023_033];
btkvect = [btkvect;btk_wpac_2023_033];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 034 ... DOKSURI around 2023-07-23-21Z
# my at https://twitter.com/elioeFIN/status/1683215260080021504

nhc_wpac_2023_034 = [17.1,124.8,125;19.3,121.9,120;21.2,120.2,105;24.2,118.4,80;28.0,116.6,50];
my_wpac_2023_034 = [17.1,124.8,115;19.0,121.9,125;21.0,120.0,105;24.6,118.4,65;29.0,116.8,40];
btk_wpac_2023_034 = [17.0,125.1,125;19.0,121.5,120;20.0,120.0,80;22.7,119.0,90;29.0,117.2,35]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_034];
myvect = [myvect;my_wpac_2023_034];
btkvect = [btkvect;btk_wpac_2023_034];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 035 ... DOKSURI around 2023-07-24-21Z
# my at https://twitter.com/elioeFIN/status/1683586355857698817

nhc_wpac_2023_035 = [19.0,122.3,125;20.8,120.1,105;23.8,118.1,70;27.3,116.1,45];
my_wpac_2023_035 = [18.8,121.8,120;20.5,120.1,110;23.8,118.3,75;27.8,116.3,40];
btk_wpac_2023_035 = [19.0,121.5,120;20.0,120.0,80;22.7,119.0,90;29.0,117.2,35]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_035];
myvect = [myvect;my_wpac_2023_035];
btkvect = [btkvect;btk_wpac_2023_035];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Wpac 036 ... DOKSURI around 2023-07-25-15Z
# my at https://twitter.com/elioeFIN/status/1683854436228112387

nhc_wpac_2023_036 = [20.5,120.1,105;23.1,118.0,75;26.5,116.1,45];
my_wpac_2023_036 = [20.1,120.6,105;22.8,118.3,85;26.3,116.5,40];
btk_wpac_2023_036 = [19.6,120.6,90;21.8,119.1,100;27.4,117.9,45]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_036];
myvect = [myvect;my_wpac_2023_036];
btkvect = [btkvect;btk_wpac_2023_036];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Wpac 037 ... DOKSURI around 2023-07-25-21Z
# my at https://twitter.com/elioeFIN/status/1683943334186823680

nhc_wpac_2023_037 = [20.5,119.7,105;23.5,117.8,75;27.7,115.5,40];
my_wpac_2023_037 = [20.3,119.7,105;23.8,118.0,80;28.7,115.4,40];
btk_wpac_2023_037 = [20.0,120.0,80;22.7,119.0,90;29.0,117.2,35]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_037];
myvect = [myvect;my_wpac_2023_037];
btkvect = [btkvect;btk_wpac_2023_037];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Wpac 038 ... TD/06W around 2023-07-27-15Z
# my at https://twitter.com/elioeFIN/status/1684576936964788227

nhc_wpac_2023_038 = [14.1,135.5,35;17.5,134.4,50;21.9,132.2,85;25.6,128.2,110;28.1,123.1,110];
my_wpac_2023_038 = [14.5,136.1,40;17.6,134.8,50;22.6,133.1,85;26.1,128.7,115;28.4,124.4,100];
btk_wpac_2023_038 = [13.8,135.4,40;16.9,133.2,50;20.4,132.4,90;23.5,131.0,115;25.3,128.0,120]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_038];
myvect = [myvect;my_wpac_2023_038];
btkvect = [btkvect;btk_wpac_2023_038];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 039 ... KHANUN around 2023-07-27-21Z
# my at https://twitter.com/elioeFIN/status/1684663377300267008

nhc_wpac_2023_039 = [15.7,134.3,45;19.2,133.1,60;23.9,130.3,90;27.0,125.6,110;29.4,121.5,100];
my_wpac_2023_039 = [15.6,135.5,45;19.3,133.7,65;23.9,130.8,90;27.6,126.5,115;30.3,123.0,95];
btk_wpac_2023_039 = [14.6,134.7,45;17.8,132.9,55;21.2,132.2,105;24.1,130.2,115;25.6,127.4,115]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_039];
myvect = [myvect;my_wpac_2023_039];
btkvect = [btkvect;btk_wpac_2023_039];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 040 ... KHANUN around 2023-07-28-15Z
# my at https://twitter.com/elioeFIN/status/1684940585726050305

nhc_wpac_2023_040 = [17.9,134.0,45;22.5,131.9,60;26.0,127.9,100;28.8,123.8,105;31.4,120.3,75];
my_wpac_2023_040 = [18.0,133.7,45;22.7,131.6,65;26.6,127.9,95;28.7,123.4,100;31.9,120.3,65];
btk_wpac_2023_040 = [16.9,133.2,50;20.4,132.4,90;23.5,131.0,115;25.3,128.0,120;26.2,125.6,100]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_040];
myvect = [myvect;my_wpac_2023_040];
btkvect = [btkvect;btk_wpac_2023_040];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 041 ... KHANUN around 2023-07-28-21Z
# my at https://twitter.com/elioeFIN/status/1685029075134414848

nhc_wpac_2023_041 = [18.7,133.4,50;23.0,131.2,70;26.4,127.3,90;28.7,123.3,80;31.5,119.5,55];
my_wpac_2023_041 = [18.9,132.9,50;23.2,131.0,75;27.1,127.7,90;29.2,123.2,90;31.8,120.7,55];
btk_wpac_2023_041 = [17.8,132.9,55;21.1,132.2,105;24.1,130.2,115;25.6,127.4,115;26.5,125.0,100]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_041];
myvect = [myvect;my_wpac_2023_041];
btkvect = [btkvect;btk_wpac_2023_041];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 042 ... KHANUN around 2023-07-29-21Z
# my at https://twitter.com/elioeFIN/status/1685375206758432769

nhc_wpac_2023_042 = [21.7,131.3,75;25.1,127.9,90;27.1,124.1,95;28.3,120.9,65;30.2,117.7,40];
my_wpac_2023_042 = [22.1,131.9,75;25.6,128.3,90;27.4,124.8,95;29.0,121.8,75;30.3,119.4,40];
btk_wpac_2023_042 = [21.2,132.2,105;24.1,130.2,115;25.6,127.4,115;26.5,125.0,100;27.0,124.3,70]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_042];
myvect = [myvect;my_wpac_2023_042];
btkvect = [btkvect;btk_wpac_2023_042];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 043 ... KHANUN around 2023-07-31-21Z
# my at https://twitter.com/elioeFIN/status/1686116867994243072

nhc_wpac_2023_043 = [25.6,127.7,115;26.4,125.5,100;26.8,124.8,80;27.5,125.8,65;27.9,127.1,65];
my_wpac_2023_043 = [25.7,127.4,115;26.6,125.3,105;27.9,123.4,80;29.0,123.0,65;29.1,124.3,65];
btk_wpac_2023_043 = [25.6,127.4,115;26.5,125.0,100;27.0,124.3,70;27.7,126.4,50;27.9,128.9,50]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_043];
myvect = [myvect;my_wpac_2023_043];
btkvect = [btkvect;btk_wpac_2023_043];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Epac 021 ... 05E around 2023-07-31-21Z
# my at https://twitter.com/elioeFIN/status/1686121235313262592
# NHC at https://www.nhc.noaa.gov/archive/2023/ep05/ep052023.discus.001.shtml?

nhc_epac_2023_021 = [15.8,109.0,40;15.1,114.3,65;14.3,119.3,85;13.3,125.1,90;12.7,130.9,90];
my_epac_2023_021 = [15.8,108.9,40;15.2,114.5,60;14.5,119.3,75;13.5,124.8,80;13.0,130.7,85];
btk_epac_2023_021 = [16.1,109.4,55;15.5,114.9,90;14.5,121.0,105;13.8,127.7,100;13.3,134.0,115]; # TCR
nhcvect = [nhcvect;nhc_epac_2023_021];
myvect = [myvect;my_epac_2023_021];
btkvect = [btkvect;btk_epac_2023_021];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 022 ... DORA around 2023-08-01-21Z
# my at https://twitter.com/elioeFIN/status/1686483565221994497
# NHC at https://www.nhc.noaa.gov/archive/2023/ep05/ep052023.discus.005.shtml?

nhc_epac_2023_022 = [15.9,115.1,90;15.0,121.0,110;13.9,127.1,100;13.2,133.5,95;12.5,139.5,90];
my_epac_2023_022 = [15.9,115.0,90;15.2,121.0,100;14.3,127.2,90;13.5,133.4,80;12.8,139.3,80];
btk_epac_2023_022 = [15.5,114.9,90;14.5,121.0,105;13.8,127.7,100;13.3,134.0,115;12.9,141.2,120]; # TCR (Epac only)
nhcvect = [nhcvect;nhc_epac_2023_022];
myvect = [myvect;my_epac_2023_022];
btkvect = [btkvect;btk_epac_2023_022];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 023 ... DORA around 2023-08-02-03Z
# my at https://twitter.com/elioeFIN/status/1686570545230315520
# NHC at https://www.nhc.noaa.gov/archive/2023/ep05/ep052023.discus.006.shtml?

nhc_epac_2023_023 = [15.8,116.4,95;15.0,122.3,105;14.0,128.7,95;13.1,134.9,85;12.7,140.8,80];
my_epac_2023_023 = [15.9,116.3,95;15.2,122.5,95;14.2,128.9,85;13.5,134.9,75;13.0,140.6,70];
btk_epac_2023_023 = [15.3,116.2,110;14.2,122.6,120;13.7,129.3,90;13.2,135.6,130;12.7,143.1,120]; # TCR (Epac only)
nhcvect = [nhcvect;nhc_epac_2023_023];
myvect = [myvect;my_epac_2023_023];
btkvect = [btkvect;btk_epac_2023_023];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 024 ... DORA around 2023-08-02-09Z
# my at https://twitter.com/elioeFIN/status/1686664890105159680
# NHC at https://www.nhc.noaa.gov/archive/2023/ep05/ep052023.discus.007.shtml?

nhc_epac_2023_024 = [15.4,117.4,110;14.4,123.5,100;13.5,130.0,85;12.9,136.2,80;12.7,142.6,75];
my_epac_2023_024 = [15.5,117.4,110;14.6,123.7,95;13.9,130.0,75;13.0,135.6,70;12.8,141.7,65];
btk_epac_2023_024 = [15.1,117.7,115;14.1,124.3,115;13.5,130.8,90;13.1,137.4,130;12.6,145.2,120]; # TCR (Epac only)
nhcvect = [nhcvect;nhc_epac_2023_024];
myvect = [myvect;my_epac_2023_024];
btkvect = [btkvect;btk_epac_2023_024];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 025 ... DORA around 2023-08-02-21Z
# my at https://twitter.com/elioeFIN/status/1686846227415986178
# NHC at https://www.nhc.noaa.gov/archive/2023/ep05/ep052023.discus.009.shtml?

nhc_epac_2023_025 = [14.9,120.7,115;14.1,127.1,95;13.3,133.3,80;12.6,139.8,80;12.5,146.9,75];
my_epac_2023_025 = [14.8,121.2,105;14.2,127.4,85;13.7,133.4,75;12.8,139.5,65;12.9,146.3,55];
btk_epac_2023_025 = [14.5,121.0,105;13.8,127.7,100;13.3,134.0,115;12.9,141.2,120;12.3,149.3,115]; # TCR (Epac only)
nhcvect = [nhcvect;nhc_epac_2023_025];
myvect = [myvect;my_epac_2023_025];
btkvect = [btkvect;btk_epac_2023_025];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Wpac 044 ... KHANUN around 2023-08-02-21Z
# my at https://twitter.com/elioeFIN/status/1686849868340285441

nhc_wpac_2023_044 = [27.0,124.1,80;27.4,125.5,65;27.8,128.0,60;28.5,130.1,65;29.5,131.9,65];
my_wpac_2023_044 = [26.8,123.6,85;27.1,125.3,75;28.4,128.1,65;29.1,129.7,70;31.2,130.8,65];
btk_wpac_2023_044 = [27.0,124.3,70;27.7,126.4,50;27.9,128.9,50;27.7,131.0,50;28.7,131.0,50]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_044];
myvect = [myvect;my_wpac_2023_044];
btkvect = [btkvect;btk_wpac_2023_044];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Epac 026 ... DORA around 2023-08-03-03Z
# my at https://twitter.com/elioeFIN/status/1686937512877404160
# NHC at https://www.nhc.noaa.gov/archive/2023/ep05/ep052023.discus.010.shtml?

nhc_epac_2023_026 = [14.7,122.2,115;13.9,128.5,90;13.2,134.8,85;12.9,141.5,80;13.0,149.0,75];
my_epac_2023_026 = [14.6,122.4,115;13.9,129.0,85;13.4,135.1,80;13.0,141.5,75;13.1,148.5,60];
btk_epac_2023_026 = [14.2,122.6,120;13.7,129.3,90;13.2,135.6,130;12.7,143.1,120;12.1,151.3,115]; # TCR (Epac only)
nhcvect = [nhcvect;nhc_epac_2023_026];
myvect = [myvect;my_epac_2023_026];
btkvect = [btkvect;btk_epac_2023_026];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 027 ... DORA around 2023-08-03-21Z
# my at https://twitter.com/elioeFIN/status/1687205237575274496
# NHC at https://www.nhc.noaa.gov/archive/2023/ep05/ep052023.discus.013.shtml?

nhc_epac_2023_027 = [13.8,127.4,100;13.3,133.5,85;12.8,140.4,85;12.5,148.0,80;12.5,155.5,75];
my_epac_2023_027 = [13.7,127.4,90;13.5,133.8,75;13.0,140.4,80;12.7,147.6,75;12.9,154.8,65];
btk_epac_2023_027 = [13.8,127.7,100;13.3,134.0,115;12.9,141.2,120;12.3,149.3,115;11.5,157.1,115]; # TCR (Epac only)
nhcvect = [nhcvect;nhc_epac_2023_027];
myvect = [myvect;my_epac_2023_027];
btkvect = [btkvect;btk_epac_2023_027];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Wpac 045 ... KHANUN around 2023-08-03-21Z
# my at https://twitter.com/elioeFIN/status/1687208522810056705

nhc_wpac_2023_045 = [27.4,125.9,60;27.7,128.8,55;28.3,131.3,60;29.7,132.5,65;31.6,133.0,70];
my_wpac_2023_045 = [27.3,125.9,60;28.0,128.7,55;28.9,131.3,55;30.6,131.5,75;33.0,131.8,70];
btk_wpac_2023_045 = [27.7,126.4,50;27.9,128.9,50;27.7,131.0,50;28.7,131.0,50;30.4,129.8,50]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_045];
myvect = [myvect;my_wpac_2023_045];
btkvect = [btkvect;btk_wpac_2023_045];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Epac 028 ... DORA around 2023-08-04-03Z
# my at https://twitter.com/elioeFIN/status/1687297530491539456
# NHC at https://www.nhc.noaa.gov/archive/2023/ep05/ep052023.discus.014.shtml?

nhc_epac_2023_028 = [13.6,128.8,105;13.0,135.0,95;12.6,141.8,95;12.4,149.4,90;12.7,157.6,80];
my_epac_2023_028 = [13.7,129.0,95;13.2,135.4,85;12.7,142.1,90;12.5,149.3,85;12.8,157.0,70];
btk_epac_2023_028 = [13.7,129.3,90;13.2,135.6,130;12.7,143.1,120;12.1,151.3,115;11.4,159.2,115]; # TCR (Epac only)
nhcvect = [nhcvect;nhc_epac_2023_028];
myvect = [myvect;my_epac_2023_028];
btkvect = [btkvect;btk_epac_2023_028];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Wpac 046 ... KHANUN around 2023-08-04-03Z
# my at https://twitter.com/elioeFIN/status/1687301084962799617

nhc_wpac_2023_046 = [27.6,126.6,55;27.8,129.4,55;28.4,131.6,60;29.8,132.4,60;31.6,132.7,60];
my_wpac_2023_046 = [27.6,126.6,55;27.8,129.4,60;28.9,132.0,60;30.7,132.1,65;33.6,132.2,60];
btk_wpac_2023_046 = [27.8,127.0,50;27.8,129.7,50;27.9,131.2,50;29.0,130.9,45;30.9,129.5,55]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_046];
myvect = [myvect;my_wpac_2023_046];
btkvect = [btkvect;btk_wpac_2023_046];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Epac 029 ... DORA around 2023-08-04-15Z
# my at https://twitter.com/elioeFIN/status/1687478239797587968
# NHC at https://www.nhc.noaa.gov/archive/2023/ep05/ep052023.discus.016.shtml?

nhc_epac_2023_029 = [13.7,132.4,90;13.2,139.1,90;12.9,146.3,85;13.0,154.5,80;13.0,162.0,75];
my_epac_2023_029 = [13.8,132.4,85;13.5,139.5,85;13.1,146.5,80;13.1,154.2,75;13.8,162.9,60];
btk_epac_2023_029 = [13.4,132.5,95;13.0,139.2,125;12.4,147.3,115;11.5,155.2,115;11.4,163.1,115]; # TCR (Epac only)
nhcvect = [nhcvect;nhc_epac_2023_029];
myvect = [myvect;my_epac_2023_029];
btkvect = [btkvect;btk_epac_2023_029];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Wpac 047 ... KHANUN around 2023-08-04-21Z
# my at https://twitter.com/elioeFIN/status/1687563248529195008

nhc_wpac_2023_047 = [28.0,129.0,55;28.4,131.3,60;30.0,131.8,65;32.2,131.2,60;35.9,130.7,50];
my_wpac_2023_047 = [28.2,128.6,55;28.4,131.3,60;29.7,131.1,55;32.2,130.3,50;36.8,129.7,50];
btk_wpac_2023_047 = [27.9,128.9,50;27.7,131.0,50;28.7,131.0,50;30.4,129.8,50;33.6,128.7,55]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_047];
myvect = [myvect;my_wpac_2023_047];
btkvect = [btkvect;btk_wpac_2023_047];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Epac 030 ... DORA around 2023-08-04-21Z
# my at https://twitter.com/elioeFIN/status/1687567582776233984
# NHC at https://www.nhc.noaa.gov/archive/2023/ep05/ep052023.discus.017.shtml?

nhc_epac_2023_030 = [13.5,134.0,85;13.1,141.0,85;12.8,148.4,85;12.5,156.5,80;13.0,164.0,75];
my_epac_2023_030 = [13.5,134.2,90;13.2,141.4,80;12.9,148.6,80;12.4,156.6,70;12.8,164.4,65];
btk_epac_2023_030 = [13.3,134.0,115;12.9,141.2,120;12.3,149.3,115;11.5,157.1,115;11.5,165.1,120]; # TCR (Epac only)
nhcvect = [nhcvect;nhc_epac_2023_030];
myvect = [myvect;my_epac_2023_030];
btkvect = [btkvect;btk_epac_2023_030];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 031 ... DORA around 2023-08-05-21Z
# my at https://twitter.com/elioeFIN/status/1687931583515287552
# NHC at https://www.nhc.noaa.gov/archive/2023/ep05/ep052023.discus.022.shtml?

nhc_epac_2023_031 = [12.9,140.9,110;12.5,148.3,90;12.3,156.2,80;12.5,164.0,70;13.5,171.5,65];
my_epac_2023_031 = [12.9,140.8,105;12.7,148.5,85;12.6,156.2,70;12.9,163.8,70;13.9,171.6,60];
btk_epac_2023_031 = [12.9,141.2,120;12.3,149.3,115;11.5,157.1,115;11.5,165.1,120;12.5,172.2,105]; # TCR exists only for Epac
nhcvect = [nhcvect;nhc_epac_2023_031];
myvect = [myvect;my_epac_2023_031];
btkvect = [btkvect;btk_epac_2023_031];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 032 ... EUGENE around 2023-08-05-21Z
# my at https://twitter.com/elioeFIN/status/1687934787489583105
# NHC at https://www.nhc.noaa.gov/archive/2023/ep06/ep062023.discus.002.shtml?

nhc_epac_2023_032 = [22.0,112.0,50;24.6,118.0,45;26.2,121.0,30;27.5,121.1,25];
my_epac_2023_032 = [22.0,112.0,50;24.9,117.8,40;26.5,120.7,25;28.2,120.6,20];
btk_epac_2023_032 = [22.1,112.2,60;24.9,119.2,30;26.1,122.8,20;27.4,121.7,15]; # TCR
nhcvect = [nhcvect;nhc_epac_2023_032];
myvect = [myvect;my_epac_2023_032];
btkvect = [btkvect;btk_epac_2023_032];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Epac 033 ... EUGENE around 2023-08-06-21Z
# my at https://twitter.com/elioeFIN/status/1688292626221436928
# NHC at https://www.nhc.noaa.gov/archive/2023/ep06/ep062023.discus.006.shtml?

nhc_epac_2023_033 = [24.9,118.9,45;26.5,122.3,25];
my_epac_2023_033 = [24.9,119.1,45;26.7,122.4,20];
btk_epac_2023_033 = [24.9,119.2,30;26.1,122.8,20]; # TCR
nhcvect = [nhcvect;nhc_epac_2023_033];
myvect = [myvect;my_epac_2023_033];
btkvect = [btkvect;btk_epac_2023_033];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Cpac 01 ... DORA around 2023-08-06-21Z
# my at https://twitter.com/elioeFIN/status/1688296663075397632
# CPHC at https://www.nhc.noaa.gov/archive/2023/ep05/ep052023.discus.026.shtml?

nhc_cpac_2023_01 = [12.6,148.7,110;12.3,156.2,95;12.7,163.9,85;13.9,171.3,80;15.8,178.1,75];
my_cpac_2023_01 = [12.5,148.6,100;12.4,156.6,90;12.9,163.4,75;13.9,171.5,75;15.9,178.5,65];
btk_cpac_2023_01 = [12.3,149.3,115;11.5,157.1,115;11.5,165.1,120;12.5,172.2,105;14.8,178.6,95];
nhcvect = [nhcvect;nhc_cpac_2023_01];
myvect = [myvect;my_cpac_2023_01];
btkvect = [btkvect;btk_cpac_2023_01];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Cpac 02 ... DORA around 2023-08-07-03Z
# my at https://twitter.com/elioeFIN/status/1688384741018345472
# CPHC at https://www.nhc.noaa.gov/archive/2023/ep05/ep052023.discus.027.shtml?

nhc_cpac_2023_02 = [12.4,150.8,110;12.2,158.4,95;12.9,165.6,85;13.9,173.1,75;16.1,179.7,65];
my_cpac_2023_02 = [12.5,150.8,105;12.5,158.6,90;13.0,165.5,80;14.2,173.3,75;16.4,179.9,55];
btk_cpac_2023_02 = [12.1,151.3,115;11.4,159.2,115;11.6,166.9,125;12.9,173.8,105;15.6,179.9,89.6]; # day 5 from JMA
nhcvect = [nhcvect;nhc_cpac_2023_02];
myvect = [myvect;my_cpac_2023_02];
btkvect = [btkvect;btk_cpac_2023_02];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Cpac 03 ... DORA around 2023-08-07-21Z
# my at https://twitter.com/elioeFIN/status/1688657264079515648
# CPHC at https://www.nhc.noaa.gov/archive/2023/ep05/ep052023.discus.030.shtml?

nhc_cpac_2023_03 = [12.0,156.6,105;12.5,164.1,100;13.7,171.6,95;15.6,178.6,85;17.5,184.5,70];
my_cpac_2023_03 = [11.9,156.6,100;12.5,163.8,95;13.6,171.1,90;15.9,178.6,80;17.9,184.7,60];
btk_cpac_2023_03 = [11.5,157.1,115;11.5,165.1,120;12.5,172.2,105;14.8,178.6,95;17.6,183.6,65];
nhcvect = [nhcvect;nhc_cpac_2023_03];
myvect = [myvect;my_cpac_2023_03];
btkvect = [btkvect;btk_cpac_2023_03];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Wpac 048 ... LAN around 2023-08-08-21Z
# my at https://twitter.com/elioeFIN/status/1689020450796445696

nhc_wpac_2023_048 = [25.2,144.9,70;26.6,143.3,80;28.8,142.5,85;31.0,140.7,80;33.0,139.4,70];
my_wpac_2023_048 = [24.8,144.6,65;26.1,143.3,75;28.3,142.8,80;30.3,140.9,80;32.7,139.3,70];
btk_wpac_2023_048 = [25.0,144.6,65;26.4,142.9,110;28.2,142.3,90;29.4,140.0,70;31.4,137.9,85]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_048];
myvect = [myvect;my_wpac_2023_048];
btkvect = [btkvect;btk_wpac_2023_048];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Cpac 04 ... DORA around 2023-08-09-03Z
# my at https://twitter.com/elioeFIN/status/1689109387594371072
# CPHC at https://www.nhc.noaa.gov/archive/2023/ep05/ep052023.discus.035.shtml?

nhc_cpac_2023_04 = [12.0,166.9,105;13.5,173.9,95;15.8,180.1,90;17.5,186.0,65;18.9,191.4,45];
my_cpac_2023_04 = [11.9,166.9,100;13.3,173.7,90;15.8,179.9,80;17.5,185.8,60;19.0,191.3,45];
btk_cpac_2023_04 = [11.6,166.9,125;12.9,173.8,105;15.6,179.9,89.6;18.0,184.8,55;18.7,189.9,40]; # day 3 from JMA
nhcvect = [nhcvect;nhc_cpac_2023_04];
myvect = [myvect;my_cpac_2023_04];
btkvect = [btkvect;btk_cpac_2023_04];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Wpac 049 ... LAN around 2023-08-09-21Z
# my at https://twitter.com/elioeFIN/status/1689377032541458432

nhc_wpac_2023_049 = [26.5,143.0,70;28.6,142.4,90;30.7,140.7,95;33.1,139.2,85;36.1,138.9,55];
my_wpac_2023_049 = [26.1,142.9,70;28.4,142.6,90;30.3,140.5,90;33.3,138.7,70;36.9,138.4,50];
btk_wpac_2023_049 = [26.4,142.9,110;28.2,142.3,90;29.4,140.0,70;31.4,137.9,85;33.4,136.1,75]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_049];
myvect = [myvect;my_wpac_2023_049];
btkvect = [btkvect;btk_wpac_2023_049];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 050 ... LAN around 2023-08-10-15Z
# my at https://twitter.com/elioeFIN/status/1689650637229961216

nhc_wpac_2023_050 = [27.9,142.3,90;29.9,140.6,90;31.9,139.1,80;34.2,138.5,65;36.6,138.2,45];
my_wpac_2023_050 = [28.1,142.3,100;29.6,140.5,100;31.7,138.6,80;34.7,137.4,60;38.2,137.9,45];
btk_wpac_2023_050 = [27.9,142.6,105;29.0,140.7,75;30.8,138.5,85;32.8,136.6,80;36.2,134.7,45]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_050];
myvect = [myvect;my_wpac_2023_050];
btkvect = [btkvect;btk_wpac_2023_050];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 051 ... LAN around 2023-08-10-21Z
# my at https://twitter.com/elioeFIN/status/1689745051822309376

nhc_wpac_2023_051 = [28.3,142.0,115;29.8,140.2,100;31.8,138.8,90;34.4,138.0,75;37.8,137.5,60];
my_wpac_2023_051 = [28.1,141.9,115;29.4,140.0,110;31.5,137.8,100;33.6,136.7,70;38.4,136.6,55];
btk_wpac_2023_051 = [28.2,142.3,90;29.4,140.0,70;31.4,137.9,85;33.4,136.1,75;37.0,134.7,45]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_051];
myvect = [myvect;my_wpac_2023_051];
btkvect = [btkvect;btk_wpac_2023_051];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 052 ... LAN around 2023-08-11-15Z
# my at https://twitter.com/elioeFIN/status/1690015686192463872

nhc_wpac_2023_052 = [29.2,140.6,95;30.7,138.3,90;33.1,136.7,80;36.6,136.3,60;41.1,137.5,45];
my_wpac_2023_052 = [29.3,140.4,95;30.7,138.1,85;33.2,136.8,70;36.2,136.5,50;42.0,138.1,45];
btk_wpac_2023_052 = [29.0,140.7,75;30.8,138.5,85;32.8,136.6,80;36.2,134.7,45;40.8,136.2,35]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_052];
myvect = [myvect;my_wpac_2023_052];
btkvect = [btkvect;btk_wpac_2023_052];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Epac 034 ... 07E around 2023-08-12-21Z
# my at https://twitter.com/elioeFIN/status/1690467373877268480
# NHC at https://www.nhc.noaa.gov/archive/2023/ep07/ep072023.discus.001.shtml?

nhc_epac_2023_034 = [15.5,115.9,50;16.1,119.2,75;17.1,122.8,70;17.6,127.7,50;17.8,133.1,35];
my_epac_2023_034 = [15.6,116.0,50;16.2,119.4,70;17.4,122.8,70;17.8,127.6,45;18.4,132.9,30];
btk_epac_2023_034 = [15.3,116.1,65;15.8,118.7,115;17.1,122.2,90;16.8,127.3,45;16.3,132.9,35]; # TCR
nhcvect = [nhcvect;nhc_epac_2023_034];
myvect = [myvect;my_epac_2023_034];
btkvect = [btkvect;btk_epac_2023_034];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 035 ... FERNANDA around 2023-08-13-15Z
# my at https://twitter.com/elioeFIN/status/1690740601266778112
# NHC at https://www.nhc.noaa.gov/archive/2023/ep07/ep072023.discus.004.shtml?

nhc_epac_2023_035 = [16.0,118.7,80;16.9,122.2,90;17.5,126.5,70;17.8,132.0,50;18.0,138.0,35];
my_epac_2023_035 = [16.1,118.7,75;17.1,122.3,85;17.7,126.5,65;18.2,131.6,45;18.8,137.5,30];
btk_epac_2023_035 = [15.6,118.0,115;16.8,121.2,95;17.0,126.1,55;16.4,131.4,35;16.0,136.8,35]; # TCR
nhcvect = [nhcvect;nhc_epac_2023_035];
myvect = [myvect;my_epac_2023_035];
btkvect = [btkvect;btk_epac_2023_035];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 036 ... FERNANDA around 2023-08-13-21Z
# my at https://twitter.com/elioeFIN/status/1690829808878415873
# NHC at https://www.nhc.noaa.gov/archive/2023/ep07/ep072023.discus.005.shtml?

nhc_epac_2023_036 = [16.2,119.0,95;17.3,122.5,85;17.7,127.2,65;18.0,132.5,45;18.0,138.0,35];
my_epac_2023_036 = [16.1,119.1,90;17.2,122.6,80;17.8,127.1,60;18.2,131.9,40;18.4,137.4,30];
btk_epac_2023_036 = [15.8,118.7,115;17.1,122.2,90;16.8,127.3,45;16.3,132.9,35;16.0,138.2,35]; # TCR
nhcvect = [nhcvect;nhc_epac_2023_036];
myvect = [myvect;my_epac_2023_036];
btkvect = [btkvect;btk_epac_2023_036];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 037 ... FERNANDA around 2023-08-14-03Z
# my at https://twitter.com/elioeFIN/status/1690923005960998912
# NHC at https://www.nhc.noaa.gov/archive/2023/ep07/ep072023.discus.006.shtml?

nhc_epac_2023_037 = [16.3,119.8,115;17.2,123.8,95;17.4,129.0,65;17.7,134.6,40;18.0,140.5,30];
my_epac_2023_037 = [16.4,120.0,105;17.4,123.9,85;17.7,129.0,65;18.2,134.3,40;17.8,139.6,30];
btk_epac_2023_037 = [16.2,119.4,110;17.2,123.4,85;16.6,128.6,40;16.2,134.2,35;16.0,139.4,30]; # TCR
nhcvect = [nhcvect;nhc_epac_2023_037];
myvect = [myvect;my_epac_2023_037];
btkvect = [btkvect;btk_epac_2023_037];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 038 ... FERNANDA around 2023-08-15-21Z
# my at https://twitter.com/elioeFIN/status/1691557051174953022
# NHC at https://www.nhc.noaa.gov/archive/2023/ep07/ep072023.discus.013.shtml?

nhc_epac_2023_038 = [17.6,127.2,65;17.9,132.8,35;18.4,138.8,30;18.4,144.9,25;18.2,150.5,25];
my_epac_2023_038 = [17.5,127.4,60;17.8,133.1,30;18.4,139.1,25;18.6,144.7,25;18.4,150.1,25];
btk_epac_2023_038 = [16.8,127.3,45;16.3,132.9,35;16.0,138.2,35;15.8,143.7,30;15.4,149.2,25]; # TCR
nhcvect = [nhcvect;nhc_epac_2023_038];
myvect = [myvect;my_epac_2023_038];
btkvect = [btkvect;btk_epac_2023_038];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 039 ... HILARY around 2023-08-16-21Z
# my at https://twitter.com/elioeFIN/status/1691920713068777592
# NHC at https://www.nhc.noaa.gov/archive/2023/ep09/ep092023.discus.002.shtml?

nhc_epac_2023_039 = [15.6,107.6,65;18.2,111.3,90;22.3,113.7,105;27.8,115.2,70;34.3,118.3,40];
my_epac_2023_039 = [15.5,107.6,60;18.2,111.5,90;22.4,113.9,95;28.6,115.4,65;35.0,118.7,35];
btk_epac_2023_039 = [15.8,108.4,90;18.2,111.9,110;22.9,113.9,85;30.3,115.7,50;43.5,116.7,25]; # TCR (except day 5)
nhcvect = [nhcvect;nhc_epac_2023_039];
myvect = [myvect;my_epac_2023_039];
btkvect = [btkvect;btk_epac_2023_039];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 040 ... HILARY around 2023-08-17-03Z
# my at https://twitter.com/elioeFIN/status/1692009142448206328
# NHC at https://www.nhc.noaa.gov/archive/2023/ep09/ep092023.discus.003.shtml?

nhc_epac_2023_040 = [15.5,109.1,75;18.5,112.5,100;22.6,114.0,95;28.3,115.4,60;34.3,117.7,35];
my_epac_2023_040 = [15.6,109.2,70;18.5,112.6,100;22.7,114.2,90;28.2,115.3,55;33.8,118.6,30];
btk_epac_2023_040 = [16.4,109.5,105;19.2,112.6,115;24.3,114.3,75;33.6,117.6,45;46.2,112.8,20]; # TCR (except day 4 operational, day 5 self-made)
nhcvect = [nhcvect;nhc_epac_2023_040];
myvect = [myvect;my_epac_2023_040];
btkvect = [btkvect;btk_epac_2023_040];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 041 ... HILARY around 2023-08-17-15Z
# my at https://twitter.com/elioeFIN/status/1692194469829915066
# NHC at https://www.nhc.noaa.gov/archive/2023/ep09/ep092023.discus.005.shtml?

nhc_epac_2023_041 = [17.6,111.2,115;21.2,113.7,115;26.6,115.0,85;33.4,116.8,50;41.0,119.0,25];
my_epac_2023_041 = [17.8,111.3,105;21.5,113.9,115;26.8,115.3,85;34.0,117.7,45;41.3,119.8,20];
btk_epac_2023_041 = [17.3,111.1,115;21.5,113.5,100;28.1,115.3,55;40.6,118.0,30;29.6,109.3,10]; # TCR (except day 4 operational, day 5 self-made)
nhcvect = [nhcvect;nhc_epac_2023_041];
myvect = [myvect;my_epac_2023_041];
btkvect = [btkvect;btk_epac_2023_041];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 042 ... HILARY around 2023-08-17-21Z
# my at https://twitter.com/elioeFIN/status/1692283104243618039
# NHC at https://www.nhc.noaa.gov/archive/2023/ep09/ep092023.discus.006.shtml?

nhc_epac_2023_042 = [18.4,112.0,120;22.4,113.8,115;28.5,115.4,85;35.4,118.4,30;43.0,120.0,20];
my_epac_2023_042 = [18.6,112.0,115;22.8,114.0,115;28.7,115.6,80;35.7,118.5,30;44.4,120.4,20];
btk_epac_2023_042 = [18.2,111.9,110;22.9,113.9,85;30.3,115.7,50;43.5,116.7,25;50.8,108.0,10]; # TCR (except day 4 operational, day 5 self-made)
nhcvect = [nhcvect;nhc_epac_2023_042];
myvect = [myvect;my_epac_2023_042];
btkvect = [btkvect;btk_epac_2023_042];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 043 ... HILARY around 2023-08-18-03Z
# my at https://twitter.com/elioeFIN/status/1692372329421000858
# NHC at https://www.nhc.noaa.gov/archive/2023/ep09/ep092023.discus.007.shtml?

nhc_epac_2023_043 = [19.4,112.6,125;24.0,114.3,100;30.7,116.1,55;39.0,118.3,25];
my_epac_2023_043 = [19.3,112.8,120;23.9,114.6,100;30.5,116.4,60;38.7,119.0,25];
btk_epac_2023_043 = [19.2,112.6,115;24.3,114.3,75;33.6,117.6,45;46.2,112.8,20]; # TCR (except day 3 operational, day 4 self-made)
nhcvect = [nhcvect;nhc_epac_2023_043];
myvect = [myvect;my_epac_2023_043];
btkvect = [btkvect;btk_epac_2023_043];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Epac 044 ... HILARY around 2023-08-18-15Z
# my at https://twitter.com/elioeFIN/status/1692556905623814638
# NHC at https://www.nhc.noaa.gov/archive/2023/ep09/ep092023.discus.009.shtml?

nhc_epac_2023_044 = [21.3,113.6,115;26.8,115.2,85;35.2,117.4,45];
my_epac_2023_044 = [21.4,113.6,110;27.2,115.4,85;35.6,117.7,40];
btk_epac_2023_044 = [21.5,113.5,100;28.1,115.3,55;40.6,118.0,30]; # TCR (except day 3)
nhcvect = [nhcvect;nhc_epac_2023_044];
myvect = [myvect;my_epac_2023_044];
btkvect = [btkvect;btk_epac_2023_044];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 045 ... HILARY around 2023-08-18-21Z
# my at https://twitter.com/elioeFIN/status/1692642522164552083
# NHC at https://www.nhc.noaa.gov/archive/2023/ep09/ep092023.discus.010.shtml?

nhc_epac_2023_045 = [22.6,114.1,105;29.4,116.1,65;39.3,117.7,30];
my_epac_2023_045 = [22.7,114.0,100;29.5,116.0,65;39.7,117.5,20];
btk_epac_2023_045 = [22.9,113.9,85;30.3,115.7,50;43.5,116.7,25]; # TCR (except day 3)
nhcvect = [nhcvect;nhc_epac_2023_045];
myvect = [myvect;my_epac_2023_045];
btkvect = [btkvect;btk_epac_2023_045];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Atl 030 ... EMILY around 2023-08-20-21Z
# my at https://twitter.com/elioeFIN/status/1693367176080560254
# NHC at https://www.nhc.noaa.gov/archive/2023/al07/al072023.discus.002.shtml?

nhc_atl_2023_030 = [21.3,42.6,35;23.1,46.7,30;26.4,49.4,30;31.2,50.0,30;37.5,49.1,25];
my_atl_2023_030 = [21.3,42.9,35;23.0,47.1,30;25.8,49.8,25;30.6,50.5,25;35.8,49.9,30];
btk_atl_2023_030 = [21.4,42.2,30;24.4,46.1,30;27.8,49.6,35;30.5,48.7,30;34.3,48.9,30]; # TCR (days 1-4 only)
nhcvect = [nhcvect;nhc_atl_2023_030];
myvect = [myvect;my_atl_2023_030];
btkvect = [btkvect;btk_atl_2023_030];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 031 ... FRANKLIN around 2023-08-20-21Z
# my at https://twitter.com/elioeFIN/status/1693371093635989744
# NHC at https://www.nhc.noaa.gov/archive/2023/al08/al082023.discus.001.shtml?

nhc_atl_2023_031 = [15.4,70.7,45;17.2,71.5,55;21.0,70.6,55;23.9,67.5,65;25.4,65.0,75];
my_atl_2023_031 = [15.3,70.7,45;17.1,71.8,55;21.1,71.3,55;23.8,68.3,65;25.7,64.5,70];
btk_atl_2023_031 = [14.1,70.0,45;15.6,71.3,35;19.4,70.8,35;22.2,69.3,50;21.8,67.3,45]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_031];
myvect = [myvect;my_atl_2023_031];
btkvect = [btkvect;btk_atl_2023_031];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 032 ... EMILY around 2023-08-21-03Z
# my at https://twitter.com/elioeFIN/status/1693457181876658429
# NHC at https://www.nhc.noaa.gov/archive/2023/al07/al072023.discus.003.shtml?

nhc_atl_2023_032 = [21.5,43.6,35;23.6,47.5,30;27.5,49.6,30;32.9,50.0,30];
my_atl_2023_032 = [21.5,43.7,30;23.6,47.4,30;27.3,49.5,30;32.6,50.3,30];
btk_atl_2023_032 = [21.9,43.1,30;25.3,47.2,30;28.6,49.6,35;31.4,48.6,30]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_032];
myvect = [myvect;my_atl_2023_032];
btkvect = [btkvect;btk_atl_2023_032];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 033 ... FRANKLIN around 2023-08-21-03Z
# my at https://twitter.com/elioeFIN/status/1693461055199150205
# NHC at https://www.nhc.noaa.gov/archive/2023/al08/al082023.discus.002.shtml?

nhc_atl_2023_033 = [15.3,71.0,50;18.1,71.4,55;21.9,69.9,50;24.3,67.0,60;26.2,64.4,70];
my_atl_2023_033 = [15.1,71.3,50;17.9,71.7,50;21.7,70.8,45;23.7,67.4,60;26.0,64.1,75];
btk_atl_2023_033 = [14.0,70.4,45;16.5,71.4,35;20.6,70.6,40;22.4,68.5,50;22.2,66.5,50]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_033];
myvect = [myvect;my_atl_2023_033];
btkvect = [btkvect;btk_atl_2023_033];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 034 ... FRANKLIN around 2023-08-21-15Z
# my at https://twitter.com/elioeFIN/status/1693641132029124676
# NHC at https://www.nhc.noaa.gov/archive/2023/al08/al082023.discus.004.shtml?

nhc_atl_2023_034 = [15.7,71.0,50;19.2,70.6,45;22.8,68.4,55;24.4,65.2,65;26.4,63.7,75];
my_atl_2023_034 = [15.5,71.2,50;19.2,71.0,45;22.6,69.1,50;24.1,65.7,65;26.7,63.6,80];
btk_atl_2023_034 = [14.8,71.1,40;18.3,71.1,40;22.0,70.0,50;21.9,67.9,45;23.2,66.5,65]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_034];
myvect = [myvect;my_atl_2023_034];
btkvect = [btkvect;btk_atl_2023_034];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 035 ... FRANKLIN around 2023-08-21-21Z
# my at https://twitter.com/elioeFIN/status/1693732229254422848
# NHC at https://www.nhc.noaa.gov/archive/2023/al08/al082023.discus.005.shtml?

nhc_atl_2023_035 = [15.3,71.3,50;19.1,70.8,40;22.2,68.7,50;23.6,66.0,60;25.6,65.5,70];
my_atl_2023_035 = [15.2,71.5,50;18.8,70.9,40;21.3,69.6,45;22.8,66.7,60;25.6,65.8,65];
btk_atl_2023_035 = [15.6,71.3,35;19.4,70.8,35;22.2,69.3,50;21.8,67.3,45;23.5,67.3,70]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_035];
myvect = [myvect;my_atl_2023_035];
btkvect = [btkvect;btk_atl_2023_035];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 036 ... FRANKLIN around 2023-08-22-03Z
# my at https://twitter.com/elioeFIN/status/1693822446544064944
# NHC at https://www.nhc.noaa.gov/archive/2023/al08/al082023.discus.006.shtml?

nhc_atl_2023_036 = [16.3,70.7,55;20.1,70.0,45;22.6,67.8,55;23.7,65.7,60;25.9,65.8,70];
my_atl_2023_036 = [16.2,70.7,55;19.9,70.0,45;22.5,67.5,50;23.4,66.1,60;26.0,66.1,65];
btk_atl_2023_036 = [16.5,71.4,35;20.6,70.6,40;22.4,68.5,50;22.2,66.5,50;23.9,67.9,75]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_036];
myvect = [myvect;my_atl_2023_036];
btkvect = [btkvect;btk_atl_2023_036];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 037 ... FRANKLIN around 2023-08-22-21Z
# my at https://twitter.com/elioeFIN/status/1694094718227959899
# NHC at https://www.nhc.noaa.gov/archive/2023/al08/al082023.discus.009.shtml?

nhc_atl_2023_037 = [19.1,70.9,35;22.0,69.3,40;22.9,67.3,50;24.3,66.7,60;27.6,67.7,75];
my_atl_2023_037 = [19.2,71.5,35;22.0,69.9,40;22.2,68.0,50;23.0,67.2,60;27.6,67.7,80];
btk_atl_2023_037 = [19.4,70.8,35;22.3,69.3,50;21.8,67.3,45;23.5,67.3,70;25.5,69.7,80]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_037];
myvect = [myvect;my_atl_2023_037];
btkvect = [btkvect;btk_atl_2023_037];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 038 ... FRANKLIN around 2023-08-23-21Z
# my at https://twitter.com/elioeFIN/status/1694456116539724044
# NHC at https://www.nhc.noaa.gov/archive/2023/al08/al082023.discus.013.shtml?

nhc_atl_2023_038 = [22.5,68.8,45;23.3,66.3,55;24.6,65.5,65;28.0,67.0,85;31.6,67.4,90];
my_atl_2023_038 = [22.3,69.0,45;22.8,66.2,50;24.2,65.5,65;27.5,67.1,85;31.7,67.6,90];
btk_atl_2023_038 = [22.2,69.3,50;21.8,67.3,45;23.5,67.3,70;25.5,69.7,80;28.2,71.1,125]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_038];
myvect = [myvect;my_atl_2023_038];
btkvect = [btkvect;btk_atl_2023_038];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 039 ... FRANKLIN around 2023-08-24-03Z
# my at https://twitter.com/elioeFIN/status/1694547835566317917
# NHC at https://www.nhc.noaa.gov/archive/2023/al08/al082023.discus.014.shtml?

nhc_atl_2023_039 = [23.0,68.1,50;23.7,65.8,55;25.8,65.9,70;29.2,67.5,90;33.0,67.4,95];
my_atl_2023_039 = [23.0,68.2,50;23.6,65.8,55;25.8,66.1,70;29.4,67.7,100;33.4,67.4,95];
btk_atl_2023_039 = [22.4,68.5,50;22.2,66.5,50;23.9,67.9,75;26.0,70.3,85;28.9,71.1,130]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_039];
myvect = [myvect;my_atl_2023_039];
btkvect = [btkvect;btk_atl_2023_039];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 040 ... FRANKLIN around 2023-08-24-15Z
# my at https://twitter.com/elioeFIN/status/1694727158646898838
# NHC at https://www.nhc.noaa.gov/archive/2023/al08/al082023.discus.016.shtml?

nhc_atl_2023_040 = [23.0,67.7,55;23.9,66.4,65;26.6,67.3,80;30.0,68.5,95;34.5,67.5,90];
my_atl_2023_040 = [23.0,67.7,55;23.7,66.5,60;26.4,67.7,75;30.5,69.0,90;34.9,67.9,85];
btk_atl_2023_040 = [21.9,67.9,45;23.2,66.5,65;24.9,69.1,80;27.5,70.9,125;30.3,70.7,115]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_040];
myvect = [myvect;my_atl_2023_040];
btkvect = [btkvect;btk_atl_2023_040];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 053 ... SAOLA around 2023-08-24-15Z
# my at https://twitter.com/elioeFIN/status/1694727720184451253

nhc_wpac_2023_053 = [19.8,123.4,75;18.0,122.9,100;17.3,123.4,105;18.0,123.8,110;19.4,122.8,120];
my_wpac_2023_053 = [19.6,123.5,70;17.7,122.9,95;16.1,122.8,100;17.9,123.9,105;19.9,123.7,110];
btk_wpac_2023_053 = [19.5,123.6,90;17.5,123.1,110;16.2,123.2,115;17.9,124.0,110;19.3,122.7,135]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_053];
myvect = [myvect;my_wpac_2023_053];
btkvect = [btkvect;btk_wpac_2023_053];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Atl 041 ... FRANKLIN around 2023-08-24-21Z
# my at https://twitter.com/elioeFIN/status/1694817638298402959
# NHC at https://www.nhc.noaa.gov/archive/2023/al08/al082023.discus.017.shtml?

nhc_atl_2023_041 = [23.1,67.0,55;24.3,66.5,70;27.3,67.7,95;31.0,68.3,95;35.4,66.5,85];
my_atl_2023_041 = [23.0,66.9,55;24.1,66.7,65;26.9,68.0,90;30.8,68.6,95;35.8,66.5,80];
btk_atl_2023_041 = [21.8,67.3,45;23.5,67.3,70;25.5,69.7,80;28.2,71.1,125;31.1,70.2,110]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_041];
myvect = [myvect;my_atl_2023_041];
btkvect = [btkvect;btk_atl_2023_041];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 042 ... FRANKLIN around 2023-08-25-03Z
# my at https://twitter.com/elioeFIN/status/1694906194488406458
# NHC at https://www.nhc.noaa.gov/archive/2023/al08/al082023.discus.018.shtml?

nhc_atl_2023_042 = [23.2,66.7,55;24.8,67.0,65;27.8,68.1,90;31.9,68.2,95;37.1,65.6,85];
my_atl_2023_042 = [23.1,66.5,55;24.9,66.9,60;27.8,68.0,95;32.0,68.1,95;37.8,65.4,85];
btk_atl_2023_042 = [22.2,66.5,50;23.9,67.9,75;26.0,70.3,85;28.9,71.1,130;31.8,69.5,100]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_042];
myvect = [myvect;my_atl_2023_042];
btkvect = [btkvect;btk_atl_2023_042];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 054 ... SAOLA around 2023-08-25-03Z
# my at https://twitter.com/elioeFIN/status/1694908468321218721

nhc_wpac_2023_054 = [18.3,123.9,85;16.8,124.1,105;17.1,125.0,105;18.9,124.4,110;20.8,122.3,120];
my_wpac_2023_054 = [18.4,123.6,80;16.5,124.2,105;17.5,125.5,105;20.2,124.5,115;22.8,121.9,110];
btk_wpac_2023_054 = [18.6,123.2,95;16.8,122.9,115;16.9,124.4,90;18.6,123.3,100;20.1,121.0,135]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_054];
myvect = [myvect;my_wpac_2023_054];
btkvect = [btkvect;btk_wpac_2023_054];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 055 ... SAOLA around 2023-08-25-21Z
# my at https://twitter.com/elioeFIN/status/1695175782627430682

nhc_wpac_2023_055 = [17.5,123.3,110;17.0,124.3,110;18.6,124.6,120;20.6,123.0,130;22.4,120.8,115];
my_wpac_2023_055 = [17.5,123.0,100;16.9,124.1,110;18.6,124.4,125;21.7,122.7,110;24.0,119.9,110];
btk_wpac_2023_055 = [17.1,123.0,120;16.0,123.8,100;18.2,123.9,100;19.9,121.8,140;20.9,118.7,130]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_055];
myvect = [myvect;my_wpac_2023_055];
btkvect = [btkvect;btk_wpac_2023_055];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Atl 043 ... FRANKLIN around 2023-08-25-21Z
# my at https://twitter.com/elioeFIN/status/1695180514800406749
# NHC at https://www.nhc.noaa.gov/archive/2023/al08/al082023.discus.021.shtml?

nhc_atl_2023_043 = [22.8,66.6,50;25.4,67.7,60;29.2,68.9,85;33.0,67.7,95;37.8,62.7,80];
my_atl_2023_043 = [22.6,66.4,50;25.5,67.7,55;28.7,68.7,80;32.5,67.8,85;38.3,62.8,75];
btk_atl_2023_043 = [23.5,67.3,70;25.5,69.7,80;28.2,71.1,125;31.1,70.2,110;33.9,66.7,90]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_043];
myvect = [myvect;my_atl_2023_043];
btkvect = [btkvect;btk_atl_2023_043];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 044 ... FRANKLIN around 2023-08-26-21Z
# my at https://twitter.com/elioeFIN/status/1695541718483951929
# NHC at https://www.nhc.noaa.gov/archive/2023/al08/al082023.discus.025.shtml?

nhc_atl_2023_044 = [25.9,68.9,95;28.7,69.9,110;32.0,69.4,105;35.2,65.6,90;39.1,56.5,75];
my_atl_2023_044 = [25.6,69.2,95;28.6,70.4,110;31.5,69.8,110;34.3,66.0,95;38.9,57.0,80];
btk_atl_2023_044 = [25.5,69.7,80;28.2,71.1,125;31.1,70.2,110;33.9,66.7,90;35.6,61.1,80]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_044];
myvect = [myvect;my_atl_2023_044];
btkvect = [btkvect;btk_atl_2023_044];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 045 ... 10L around 2023-08-26-21Z
# my at https://twitter.com/elioeFIN/status/1695545312469713304
# NHC at https://www.nhc.noaa.gov/archive/2023/al10/al102023.discus.001.shtml?

nhc_atl_2023_045 = [20.9,86.2,35;22.0,85.7,45;26.3,85.3,65;31.5,83.0,45;35.0,79.0,30];
my_atl_2023_045 = [21.0,86.2,35;22.4,85.9,50;26.4,85.7,65;31.3,83.8,45;35.8,80.1,35];
btk_atl_2023_045 = [19.9,85.8,40;21.2,85.2,60;25.3,84.8,80;31.5,82.5,60;33.6,74.6,55]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_045];
myvect = [myvect;my_atl_2023_045];
btkvect = [btkvect;btk_atl_2023_045];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 046 ... FRANKLIN around 2023-08-27-03Z
# my at https://twitter.com/elioeFIN/status/1695633044831367303
# NHC at https://www.nhc.noaa.gov/archive/2023/al08/al082023.discus.026.shtml?

nhc_atl_2023_046 = [26.2,69.8,100;29.2,70.4,115;32.5,68.9,105;35.8,63.7,90;41.0,52.5,75];
my_atl_2023_046 = [26.0,70.0,100;29.0,70.7,115;31.8,69.4,105;35.6,64.5,85;41.0,53.7,65];
btk_atl_2023_046 = [26.0,70.3,85;28.9,71.1,130;31.8,69.5,100;34.4,65.2,90;36.4,59.7,75]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_046];
myvect = [myvect;my_atl_2023_046];
btkvect = [btkvect;btk_atl_2023_046];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 047 ... 10L around 2023-08-27-03Z
# my at https://twitter.com/elioeFIN/status/1695635424104824989
# NHC at https://www.nhc.noaa.gov/archive/2023/al10/al102023.discus.002.shtml?

nhc_atl_2023_047 = [20.9,86.2,40;23.1,85.7,55;27.5,84.8,70;32.7,81.5,45;35.2,76.7,35];
my_atl_2023_047 = [20.8,86.2,40;23.1,85.9,55;27.6,84.7,65;33.0,81.2,45;35.9,76.6,40];
btk_atl_2023_047 = [19.8,85.4,45;21.8,85.1,60;26.9,84.7,90;32.7,80.9,50;33.4,72.3,55]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_047];
myvect = [myvect;my_atl_2023_047];
btkvect = [btkvect;btk_atl_2023_047];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 048 ... 10L around 2023-08-27-09Z
# my at https://twitter.com/elioeFIN/status/1695727053490823479
# NHC at https://www.nhc.noaa.gov/archive/2023/al10/al102023.discus.003.shtml?

nhc_atl_2023_048 = [20.6,86.3,45;23.3,86.2,60;28.5,84.7,80;33.0,81.2,45;35.0,75.5,35];
my_atl_2023_048 = [20.4,86.6,45;23.2,86.5,60;28.2,85.3,75;33.1,81.7,40;35.6,76.9,35];
btk_atl_2023_048 = [19.9,85.2,55;22.6,85.0,65;28.3,84.5,105;33.5,78.9,50;32.7,70.5,50]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_048];
myvect = [myvect;my_atl_2023_048];
btkvect = [btkvect;btk_atl_2023_048];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 046 ... 10E around 2023-08-27-09Z
# my at https://twitter.com/elioeFIN/status/1695723226641453501
# NHC at https://www.nhc.noaa.gov/archive/2023/ep10/ep102023.discus.002.shtml?

nhc_epac_2023_046 = [17.9,122.8,40;18.3,127.8,40;18.0,133.5,35;18.3,138.3,30;18.8,141.2,25];
my_epac_2023_046 = [18.0,122.7,35;18.6,127.9,35;18.2,133.4,30;18.6,138.3,20;19.1,141.8,20];
btk_epac_2023_046 = [17.5,122.6,35;19.5,126.4,40;18.8,132.3,30;19.1,136.4,25;18.8,139.0,25]; # TCR
nhcvect = [nhcvect;nhc_epac_2023_046];
myvect = [myvect;my_epac_2023_046];
btkvect = [btkvect;btk_epac_2023_046];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Atl 049 ... IDALIA around 2023-08-27-21Z
# my at https://twitter.com/elioeFIN/status/1695906212867387614
# NHC at https://www.nhc.noaa.gov/archive/2023/al10/al102023.discus.005.shtml?

nhc_atl_2023_049 = [21.7,85.0,55;25.6,84.5,75;31.3,81.9,50;34.5,76.0,50;35.0,71.0,55];
my_atl_2023_049 = [21.6,85.0,55;25.7,84.6,75;31.3,81.8,40;34.5,76.2,45;35.5,72.4,40];
btk_atl_2023_049 = [21.2,85.2,60;25.3,84.8,80;31.5,82.5,60;33.6,74.6,55;32.1,67.1,50]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_049];
myvect = [myvect;my_atl_2023_049];
btkvect = [btkvect;btk_atl_2023_049];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 050 ... IDALIA around 2023-08-28-03Z
# my at https://twitter.com/elioeFIN/status/1695997832920961362
# NHC at https://www.nhc.noaa.gov/archive/2023/al10/al102023.discus.006.shtml?

nhc_atl_2023_050 = [22.2,85.0,70;26.8,84.3,95;32.0,80.1,55;34.3,73.4,50;34.4,67.8,50];
my_atl_2023_050 = [22.2,85.0,65;26.5,84.6,90;32.2,80.2,55;35.6,73.4,55;35.7,67.3,50];
btk_atl_2023_050 = [21.8,85.1,60;26.9,84.7,90;32.7,80.9,50;33.4,72.3,55;31.9,65.7,50]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_050];
myvect = [myvect;my_atl_2023_050];
btkvect = [btkvect;btk_atl_2023_050];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 051 ... FRANKLIN around 2023-08-28-03Z
# my at https://twitter.com/elioeFIN/status/1696000219257667908
# NHC at https://www.nhc.noaa.gov/archive/2023/al08/al082023.discus.030.shtml?

nhc_atl_2023_051 = [28.9,71.2,110;32.2,69.5,110;35.2,64.2,95;37.5,57.0,80;42.0,49.5,65];
my_atl_2023_051 = [28.8,71.4,110;32.4,69.7,105;35.8,65.0,90;39.1,56.9,80;43.7,47.7,65];
btk_atl_2023_051 = [28.9,71.1,130;31.8,69.5,100;34.4,65.2,90;36.4,59.7,75;39.6,52.0,70]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_051];
myvect = [myvect;my_atl_2023_051];
btkvect = [btkvect;btk_atl_2023_051];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 052 ... IDALIA around 2023-08-29-21Z
# my at https://twitter.com/elioeFIN/status/1696633704955654410
# NHC at https://www.nhc.noaa.gov/archive/2023/al10/al102023.discus.013.shtml?

nhc_atl_2023_052 = [31.0,82.9,75;33.9,77.1,45;33.3,71.8,45;32.3,69.6,45;31.7,69.0,45];
my_atl_2023_052 = [30.9,83.1,75;33.9,76.8,40;33.3,71.1,40;32.7,69.5,45;31.7,70.8,40];
btk_atl_2023_052 = [31.5,82.5,60;33.6,74.6,55;32.1,67.1,50;31.8,63.1,50;34.9,59.7,55]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_052];
myvect = [myvect;my_atl_2023_052];
btkvect = [btkvect;btk_atl_2023_052];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 053 ... FRANKLIN around 2023-08-29-21Z
# my at https://twitter.com/elioeFIN/status/1696634233723203625
# NHC at https://www.nhc.noaa.gov/archive/2023/al08/al082023.discus.037.shtml?

nhc_atl_2023_053 = [34.3,66.5,100;36.6,59.8,85;40.6,50.2,70;46.0,40.2,65];
my_atl_2023_053 = [33.9,66.8,100;35.5,60.8,85;36.5,53.1,60;43.5,44.3,55];
btk_atl_2023_053 = [33.9,66.7,90;35.6,61.1,80;38.8,54.6,70;44.8,43.4,65]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_053];
myvect = [myvect;my_atl_2023_053];
btkvect = [btkvect;btk_atl_2023_053];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 054 ... IDALIA around 2023-08-30-03Z
# my at https://twitter.com/elioeFIN/status/1696723547136180355
# NHC at https://www.nhc.noaa.gov/archive/2023/al10/al102023.discus.014.shtml?

nhc_atl_2023_054 = [32.3,81.3,70;33.8,75.0,50;32.9,71.0,45;32.0,69.4,45;31.0,68.4,45];
my_atl_2023_054 = [32.3,81.6,65;34.2,74.7,45;32.9,69.8,40;32.5,68.7,45;31.1,69.3,45];
btk_atl_2023_054 = [32.7,80.9,50;33.4,72.3,55;31.9,65.7,50;32.0,62.2,50;36.2,58.9,60]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_054];
myvect = [myvect;my_atl_2023_054];
btkvect = [btkvect;btk_atl_2023_054];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 055 ... FRANKLIN around 2023-08-30-03Z
# my at https://twitter.com/elioeFIN/status/1696727087388782957
# NHC at https://www.nhc.noaa.gov/archive/2023/al08/al082023.discus.038.shtml?

nhc_atl_2023_055 = [34.7,65.0,90;36.8,58.0,75;40.3,49.5,60;45.2,41.0,55];
my_atl_2023_055 = [34.7,65.4,90;36.2,59.5,75;37.9,52.6,60;41.7,45.4,55];
btk_atl_2023_055 = [34.4,65.2,90;36.4,59.7,75;39.6,52.0,70;45.8,41.0,65]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_055];
myvect = [myvect;my_atl_2023_055];
btkvect = [btkvect;btk_atl_2023_055];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 056 ... IDALIA around 2023-08-30-15Z
# my at https://twitter.com/elioeFIN/status/1696903757605339641
# NHC at https://www.nhc.noaa.gov/archive/2023/al10/al102023.discus.016.shtml?

nhc_atl_2023_056 = [33.8,77.6,55;33.2,71.1,45;31.9,68.0,50;31.4,66.3,50;32.5,63.3,50];
my_atl_2023_056 = [33.7,77.6,55;33.0,70.9,45;31.9,67.6,45;31.8,66.5,45;31.8,65.6,40];
btk_atl_2023_056 = [33.7,77.0,55;32.3,68.8,50;31.8,63.9,50;33.4,60.5,50;39.2,57.5,55]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_056];
myvect = [myvect;my_atl_2023_056];
btkvect = [btkvect;btk_atl_2023_056];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 057 ... IDALIA around 2023-08-30-21Z
# my at https://twitter.com/elioeFIN/status/1696995661546144175
# NHC at https://www.nhc.noaa.gov/archive/2023/al10/al102023.discus.017.shtml?

nhc_atl_2023_057 = [34.1,75.7,50;32.8,69.7,45;31.7,67.3,45;32.3,65.1,45;34.4,61.3,45];
my_atl_2023_057 = [34.3,75.4,50;33.2,69.2,40;32.6,67.1,45;33.6,65.3,45;35.7,61.1,40];
btk_atl_2023_057 = [33.6,74.6,55;32.1,67.1,50;31.8,63.1,50;34.9,59.7,55;40.5,57.9,55]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_057];
myvect = [myvect;my_atl_2023_057];
btkvect = [btkvect;btk_atl_2023_057];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 058 ... FRANKLIN around 2023-08-30-21Z
# my at https://twitter.com/elioeFIN/status/1696996386829398051
# NHC at https://www.nhc.noaa.gov/archive/2023/al08/al082023.discus.041.shtml?

nhc_atl_2023_058 = [35.8,60.8,75;38.1,53.9,65;41.6,47.5,60;45.0,42.4,45;50.0,37.5,40];
my_atl_2023_058 = [35.7,61.1,75;38.3,54.2,65;43.5,46.5,60;47.0,42.4,45;51.5,36.8,40];
btk_atl_2023_058 = [35.6,61.1,80;38.8,54.6,70;44.8,43.4,65;47.7,33.4,55;46.7,26.8,40]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_058];
myvect = [myvect;my_atl_2023_058];
btkvect = [btkvect;btk_atl_2023_058];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 059 ... IDALIA around 2023-08-31-03Z
# my at https://twitter.com/elioeFIN/status/1697083572304093510
# NHC at https://www.nhc.noaa.gov/archive/2023/al10/al102023.discus.018.shtml?

nhc_atl_2023_059 = [33.9,73.8,50;32.3,69.0,45;31.4,67.6,45;32.0,65.4,45;33.5,63.0,45];
my_atl_2023_059 = [34.1,73.8,50;32.6,69.0,40;31.7,68.2,40;33.2,66.0,40;34.7,62.6,40];
btk_atl_2023_059 = [33.4,72.3,55;31.9,65.7,50;32.0,62.2,50;36.2,58.9,60;41.1,58.7,50]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_059];
myvect = [myvect;my_atl_2023_059];
btkvect = [btkvect;btk_atl_2023_059];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 060 ... FRANKLIN around 2023-08-31-03Z
# my at https://twitter.com/elioeFIN/status/1697087158937333869
# NHC at https://www.nhc.noaa.gov/archive/2023/al08/al082023.discus.042.shtml?

nhc_atl_2023_060 = [36.5,59.0,75;39.2,52.3,65;42.7,46.3,60;45.9,41.2,45;50.1,35.5,40];
my_atl_2023_060 = [36.3,59.4,75;40.1,52.2,65;44.1,45.0,55;46.2,41.0,40;47.5,39.0,35];
btk_atl_2023_060 = [36.4,59.7,75;39.6,52.0,70;45.8,41.0,65;47.8,30.8,50;46.0,26.6,40]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_060];
myvect = [myvect;my_atl_2023_060];
btkvect = [btkvect;btk_atl_2023_060];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 061 ... IDALIA around 2023-08-31-21Z
# my at https://twitter.com/elioeFIN/status/1697354847782162695
# NHC at https://www.nhc.noaa.gov/archive/2023/al10/al102023.discus.021.shtml?

nhc_atl_2023_061 = [31.8,68.3,45;30.9,65.9,45;32.1,63.4,50;35.1,60.5,50;38.0,59.9,45];
my_atl_2023_061 = [31.7,68.2,45;30.8,66.0,45;31.8,63.6,55;35.7,58.6,55;40.1,58.0,50];
btk_atl_2023_061 = [32.1,67.1,50;31.8,63.1,50;34.9,59.7,55;40.5,57.9,55;42.6,59.8,40]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_061];
myvect = [myvect;my_atl_2023_061];
btkvect = [btkvect;btk_atl_2023_061];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 062 ... LEE around 2023-09-05-21Z
# my at https://twitter.com/elioeFIN/status/1699167973850730845
# NHC at https://www.nhc.noaa.gov/archive/2023/al13/al132023.discus.002.shtml?

nhc_atl_2023_062 = [14.4,46.2,60;16.2,51.0,80;18.3,56.0,110;20.4,60.5,120;22.2,64.3,125];
my_atl_2023_062 = [14.3,46.1,60;16.0,51.0,75;18.4,55.8,110;20.7,60.0,120;22.7,64.3,130];
btk_atl_2023_062 = [14.6,46.1,65;16.6,50.7,105;18.5,55.1,125;20.4,58.8,95;21.9,61.4,105]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_062];
myvect = [myvect;my_atl_2023_062];
btkvect = [btkvect;btk_atl_2023_062];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 047 ... JOVA around 2023-09-05-21Z
# my at https://twitter.com/elioeFIN/status/1699171091560759428
# NHC at https://www.nhc.noaa.gov/archive/2023/ep11/ep112023.discus.005.shtml?

nhc_epac_2023_047 = [14.3,111.6,85;16.2,116.5,110;18.8,121.4,105;21.5,126.3,75;23.5,130.7,60];
my_epac_2023_047 = [14.4,111.6,75;16.4,116.8,105;19.0,121.7,95;21.4,126.4,70;23.4,131.2,55];
btk_epac_2023_047 = [14.6,111.1,115;17.4,116.6,125;20.1,121.9,75;22.6,125.8,45;24.5,127.4,30]; # TCR
nhcvect = [nhcvect;nhc_epac_2023_047];
myvect = [myvect;my_epac_2023_047];
btkvect = [btkvect;btk_epac_2023_047];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Atl 063 ... LEE around 2023-09-06-03Z
# my at https://twitter.com/elioeFIN/status/1699254422679785665
# NHC at https://www.nhc.noaa.gov/archive/2023/al13/al132023.discus.003.shtml?

nhc_atl_2023_063 = [14.9,47.2,65;16.6,52.2,90;18.9,57.1,115;20.8,61.5,125;22.5,65.0,130];
my_atl_2023_063 = [14.8,47.3,65;16.6,52.1,85;18.9,57.0,120;20.9,61.1,125;22.7,64.8,135];
btk_atl_2023_063 = [15.1,47.1,70;17.0,51.8,135;19.0,56.0,105;20.8,59.5,85;22.3,61.9,105]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_063];
myvect = [myvect;my_atl_2023_063];
btkvect = [btkvect;btk_atl_2023_063];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 048 ... JOVA around 2023-09-06-03Z
# my at https://twitter.com/elioeFIN/status/1699258029143654498
# NHC at https://www.nhc.noaa.gov/archive/2023/ep11/ep112023.discus.006.shtml?

nhc_epac_2023_048 = [14.8,112.5,90;16.8,117.5,115;19.4,122.5,100;22.1,127.0,65;24.2,131.1,50];
my_epac_2023_048 = [14.8,112.6,80;16.9,117.6,110;19.4,122.5,90;22.2,126.8,60;24.2,130.7,45];
btk_epac_2023_048 = [15.3,112.4,140;18.0,117.9,115;20.7,123.2,70;23.3,126.2,45;24.7,127.7,30]; # TCR
nhcvect = [nhcvect;nhc_epac_2023_048];
myvect = [myvect;my_epac_2023_048];
btkvect = [btkvect;btk_epac_2023_048];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Atl 064 ... LEE around 2023-09-06-15Z
# my at https://twitter.com/elioeFIN/status/1699440288786264472
# NHC at https://www.nhc.noaa.gov/archive/2023/al13/al132023.discus.005.shtml?

nhc_atl_2023_064 = [15.7,49.6,85;17.6,54.7,105;19.8,59.2,130;21.5,62.8,130;22.9,65.7,130];
my_atl_2023_064 = [15.6,49.6,85;17.6,54.7,100;19.8,58.9,125;21.8,63.4,125;23.5,65.6,120];
btk_atl_2023_064 = [16.1,49.4,85;17.9,54.1,135;20.0,57.9,100;21.5,60.8,95;23.3,63.2,105]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_064];
myvect = [myvect;my_atl_2023_064];
btkvect = [btkvect;btk_atl_2023_064];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 065 ... LEE around 2023-09-06-21Z
# my at https://twitter.com/elioeFIN/status/1699531637640306900
# NHC at https://www.nhc.noaa.gov/archive/2023/al13/al132023.discus.006.shtml?

nhc_atl_2023_065 = [16.5,50.6,85;18.6,55.3,110;20.4,59.4,130;21.9,62.9,130;23.0,65.2,125];
my_atl_2023_065 = [16.6,50.6,80;18.7,55.2,105;20.9,59.4,125;22.3,62.8,125;23.6,65.2,125];
btk_atl_2023_065 = [16.6,50.7,105;18.5,55.1,125;20.4,58.8,95;21.9,61.4,105;23.5,63.9,100]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_065];
myvect = [myvect;my_atl_2023_065];
btkvect = [btkvect;btk_atl_2023_065];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 049 ... JOVA around 2023-09-06-21Z
# my at https://twitter.com/elioeFIN/status/1699532564099133508
# NHC at https://www.nhc.noaa.gov/archive/2023/ep11/ep112023.discus.009.shtml?

nhc_epac_2023_049 = [16.7,116.3,130;19.0,121.6,110;21.7,126.5,80;24.0,129.9,55;25.4,133.4,40];
my_epac_2023_049 = [16.8,116.3,125;19.3,121.6,100;22.0,126.3,80;24.3,129.6,55;26.1,133.9,40];
btk_epac_2023_049 = [17.4,116.6,125;20.1,121.9,75;22.6,125.8,45;24.5,127.4,30;24.6,129.0,25]; # TCR
nhcvect = [nhcvect;nhc_epac_2023_049];
myvect = [myvect;my_epac_2023_049];
btkvect = [btkvect;btk_epac_2023_049];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Atl 066 ... LEE around 2023-09-07-03Z
# my at https://twitter.com/elioeFIN/status/1699621956000059695
# NHC at https://www.nhc.noaa.gov/archive/2023/al13/al132023.discus.007.shtml?

nhc_atl_2023_066 = [17.0,51.9,85;19.1,56.5,120;20.8,60.3,135;22.0,63.5,130;23.0,66.1,125];
my_atl_2023_066 = [17.0,51.9,85;19.2,56.4,115;21.1,60.1,135;22.4,63.1,130;23.4,65.8,130];
btk_atl_2023_066 = [17.0,51.8,135;19.0,56.0,105;20.8,59.5,85;22.3,61.9,105;23.7,64.5,100]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_066];
myvect = [myvect;my_atl_2023_066];
btkvect = [btkvect;btk_atl_2023_066];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 050 ... JOVA around 2023-09-07-03Z
# my at https://twitter.com/elioeFIN/status/1699625305407631652
# NHC at https://www.nhc.noaa.gov/archive/2023/ep11/ep112023.discus.010.shtml?

nhc_epac_2023_050 = [17.6,117.8,135;20.0,123.0,100;22.8,127.6,65;24.6,130.5,45;25.5,134.0,35];
my_epac_2023_050 = [17.8,117.7,125;20.3,123.0,90;23.0,127.4,65;25.5,130.4,45;26.1,134.3,30];
btk_epac_2023_050 = [18.0,117.9,115;20.7,123.2,70;23.3,126.2,45;24.7,127.7,30;24.4,129.5,25]; # TCR
nhcvect = [nhcvect;nhc_epac_2023_050];
myvect = [myvect;my_epac_2023_050];
btkvect = [btkvect;btk_epac_2023_050];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Atl 067 ... LEE around 2023-09-07-15Z
# my at https://twitter.com/elioeFIN/status/1699804494664437984
# NHC at https://www.nhc.noaa.gov/archive/2023/al13/al132023.discus.009.shtml?

nhc_atl_2023_067 = [18.2,54.0,130;20.1,58.1,140;21.5,61.2,135;22.6,63.7,125;23.6,66.0,120];
my_atl_2023_067 = [18.1,54.1,125;20.2,58.2,135;21.7,61.4,130;22.8,64.0,125;24.2,66.1,125];
btk_atl_2023_067 = [17.9,54.1,135;20.0,57.9,100;21.5,60.8,95;23.2,63.2,105;24.1,65.7,100]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_067];
myvect = [myvect;my_atl_2023_067];
btkvect = [btkvect;btk_atl_2023_067];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 068 ... LEE around 2023-09-07-21Z
# my at https://twitter.com/elioeFIN/status/1699892072348803482
# NHC at https://www.nhc.noaa.gov/archive/2023/al13/al132023.discus.010.shtml?

nhc_atl_2023_068 = [18.7,55.2,145;20.6,59.0,135;22.0,61.8,130;23.1,64.3,130;24.0,66.4,120];
my_atl_2023_068 = [18.7,55.3,140;20.6,59.2,135;21.9,62.1,130;23.0,64.7,130;24.3,66.6,130];
btk_atl_2023_068 = [18.5,55.1,125;20.4,58.8,95;21.9,61.4,105;23.5,63.9,100;24.5,66.2,100]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_068];
myvect = [myvect;my_atl_2023_068];
btkvect = [btkvect;btk_atl_2023_068];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 051 ... JOVA around 2023-09-07-21Z
# my at https://twitter.com/elioeFIN/status/1699894500351762462
# NHC at https://www.nhc.noaa.gov/archive/2023/ep11/ep112023.discus.013.shtml?

nhc_epac_2023_051 = [19.8,122.0,95;22.4,126.4,60;24.5,129.1,40;25.0,131.1,30;24.2,133.2,25];
my_epac_2023_051 = [19.9,122.0,85;22.5,126.4,55;24.8,128.9,35;25.4,131.3,25;24.9,134.3,25];
btk_epac_2023_051 = [20.1,121.9,75;22.6,125.8,45;24.5,127.4,30;24.6,129.0,25;22.7,132.5,20]; # TCR
nhcvect = [nhcvect;nhc_epac_2023_051];
myvect = [myvect;my_epac_2023_051];
btkvect = [btkvect;btk_epac_2023_051];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Atl 069 ... LEE around 2023-09-08-21Z
# my at https://twitter.com/elioeFIN/status/1700252073357627755
# NHC at https://www.nhc.noaa.gov/archive/2023/al13/al132023.discus.014.shtml?

nhc_atl_2023_069 = [20.6,58.6,120;21.9,61.3,125;23.0,63.7,125;23.7,66.0,120;25.1,67.6,110];
my_atl_2023_069 = [20.5,58.7,120;21.8,61.5,120;23.0,64.0,120;23.6,66.4,115;25.6,67.8,110];
btk_atl_2023_069 = [20.4,58.8,95;21.9,61.4,105;23.5,63.9,100;24.5,66.2,100;26.8,67.6,90]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_069];
myvect = [myvect;my_atl_2023_069];
btkvect = [btkvect;btk_atl_2023_069];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 070 ... MARGOT around 2023-09-08-21Z
# my at https://twitter.com/elioeFIN/status/1700254499804520611
# NHC at https://www.nhc.noaa.gov/archive/2023/al14/al142023.discus.006.shtml?

nhc_atl_2023_070 = [21.0,38.5,45;23.6,41.0,55;26.9,42.2,70;30.0,42.6,75;33.1,43.4,75];
my_atl_2023_070 = [20.9,38.6,45;23.5,41.0,55;26.6,42.1,65;29.6,42.7,70;33.0,43.6,75];
btk_atl_2023_070 = [20.7,38.3,40;23.3,40.0,50;26.4,39.9,65;31.0,39.4,75;34.4,40.6,75]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_070];
myvect = [myvect;my_atl_2023_070];
btkvect = [btkvect;btk_atl_2023_070];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 071 ... LEE around 2023-09-09-03Z
# my at https://twitter.com/elioeFIN/status/1700344766762791054
# NHC at https://www.nhc.noaa.gov/archive/2023/al13/al132023.discus.015.shtml?

nhc_atl_2023_071 = [20.8,59.4,95;22.0,62.0,115;22.8,64.2,120;23.5,66.4,120;25.3,67.7,105];
my_atl_2023_071 = [20.9,59.5,100;22.1,62.1,110;23.1,64.4,115;23.4,66.7,115;25.5,67.8,100];
btk_atl_2023_071 = [20.8,59.5,85;22.3,61.9,105;23.7,64.5,100;24.9,66.6,100;27.6,67.8,90]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_071];
myvect = [myvect;my_atl_2023_071];
btkvect = [btkvect;btk_atl_2023_071];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 072 ... MARGOT around 2023-09-09-03Z
# my at https://twitter.com/elioeFIN/status/1700348577648705775
# NHC at https://www.nhc.noaa.gov/archive/2023/al14/al142023.discus.007.shtml?

nhc_atl_2023_072 = [21.5,39.5,45;23.9,41.6,55;27.0,42.4,65;30.0,43.0,70;33.0,43.5,75];
my_atl_2023_072 = [21.6,39.6,45;23.9,41.7,55;26.7,42.8,65;29.8,43.6,70;33.1,44.4,75];
btk_atl_2023_072 = [21.2,38.9,45;24.0,40.0,55;27.5,39.6,70;32.1,39.6,75;35.1,40.7,75]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_072];
myvect = [myvect;my_atl_2023_072];
btkvect = [btkvect;btk_atl_2023_072];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 073 ... LEE around 2023-09-09-21Z
# my at https://twitter.com/elioeFIN/status/1700614969216143647
# NHC at https://www.nhc.noaa.gov/archive/2023/al13/al132023.discus.018.shtml?

nhc_atl_2023_073 = [22.1,61.6,110;23.3,64.1,120;23.9,66.3,115;25.1,67.8,105;27.9,68.2,100];
my_atl_2023_073 = [22.1,61.6,110;23.2,64.2,120;23.8,66.2,115;24.8,68.3,100;28.5,68.4,95];
btk_atl_2023_073 = [21.9,61.4,105;23.5,63.9,100;24.5,66.2,100;26.8,67.6,90;31.1,68.3,75]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_073];
myvect = [myvect;my_atl_2023_073];
btkvect = [btkvect;btk_atl_2023_073];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 074 ... MARGOT around 2023-09-09-21Z
# my at https://twitter.com/elioeFIN/status/1700618553831932335
# NHC at https://www.nhc.noaa.gov/archive/2023/al14/al142023.discus.010.shtml?

nhc_atl_2023_074 = [23.1,40.3,50;26.0,41.0,55;29.7,41.3,65;33.1,41.8,70;34.8,41.8,75];
my_atl_2023_074 = [23.0,40.2,50;26.1,41.1,55;29.7,40.7,60;33.1,41.4,65;35.2,41.9,70];
btk_atl_2023_074 = [23.3,40.0,50;26.4,39.9,65;31.0,39.4,75;34.4,40.6,75;36.6,39.6,70]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_074];
myvect = [myvect;my_atl_2023_074];
btkvect = [btkvect;btk_atl_2023_074];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 075 ... LEE around 2023-09-10-21Z
# my at https://twitter.com/elioeFIN/status/1700977597457527032
# NHC at https://www.nhc.noaa.gov/archive/2023/al13/al132023.discus.022.shtml?

nhc_atl_2023_075 = [23.3,63.9,120;24.2,66.2,115;25.6,67.6,100;28.9,68.0,90;33.6,67.4,80];
my_atl_2023_075 = [23.3,63.9,115;24.1,66.2,110;25.5,67.7,95;28.9,68.1,90;34.0,67.4,85];
btk_atl_2023_075 = [23.5,63.9,100;24.5,66.2,100;26.8,67.6,90;31.1,68.3,75;37.1,66.7,75]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_075];
myvect = [myvect;my_atl_2023_075];
btkvect = [btkvect;btk_atl_2023_075];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 076 ... MARGOT around 2023-09-10-21Z
# my at https://twitter.com/elioeFIN/status/1700981516690727118
# NHC at https://www.nhc.noaa.gov/archive/2023/al14/al142023.discus.014.shtml?

nhc_atl_2023_076 = [26.8,40.4,65;30.8,40.5,75;34.3,41.4,75;36.3,41.3,75;37.2,41.2,70];
my_atl_2023_076 = [26.8,40.0,60;30.7,40.2,70;34.2,41.0,70;36.3,40.6,70;37.5,40.8,60];
btk_atl_2023_076 = [26.4,39.9,65;31.0,39.4,75;34.4,40.6,75;36.6,39.6,70;36.1,37.8,55]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_076];
myvect = [myvect;my_atl_2023_076];
btkvect = [btkvect;btk_atl_2023_076];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 077 ... LEE around 2023-09-11-03Z
# my at https://twitter.com/elioeFIN/status/1701069471425634689
# NHC at https://www.nhc.noaa.gov/archive/2023/al13/al132023.discus.023.shtml?

nhc_atl_2023_077 = [23.6,64.4,120;24.6,66.4,110;26.5,67.7,95;30.2,67.9,85;35.5,67.0,70];
my_atl_2023_077 = [23.5,64.3,115;24.6,66.4,105;26.7,67.4,95;30.4,67.2,85;36.2,66.5,70];
btk_atl_2023_077 = [23.7,64.5,100;24.9,66.6,100;27.6,67.8,90;32.1,67.8,75;38.7,65.9,75]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_077];
myvect = [myvect;my_atl_2023_077];
btkvect = [btkvect;btk_atl_2023_077];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 078 ... MARGOT around 2023-09-11-03Z
# my at https://twitter.com/elioeFIN/status/1701071920240754860
# NHC at https://www.nhc.noaa.gov/archive/2023/al14/al142023.discus.015.shtml?

nhc_atl_2023_078 = [27.8,40.0,65;31.8,40.5,75;34.8,41.6,75;36.6,41.0,75;37.5,40.8,65];
my_atl_2023_078 = [27.6,40.0,65;31.8,40.6,75;34.5,42.1,70;36.7,41.2,70;38.2,42.0,60];
btk_atl_2023_078 = [27.5,39.6,70;32.1,39.6,75;35.1,40.7,75;36.7,39.1,65;35.7,37.8,55]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_078];
myvect = [myvect;my_atl_2023_078];
btkvect = [btkvect;btk_atl_2023_078];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 079 ... LEE around 2023-09-11-21Z
# my at https://twitter.com/elioeFIN/status/1701341110369407221
# NHC at https://www.nhc.noaa.gov/archive/2023/al13/al132023.discus.026.shtml?

nhc_atl_2023_079 = [24.6,66.1,105;26.5,67.5,100;30.3,67.9,90;35.4,67.1,80;40.8,67.0,65];
my_atl_2023_079 = [24.4,66.2,105;26.3,67.7,100;30.1,67.8,85;35.4,66.4,75;42.4,66.0,60];
btk_atl_2023_079 = [24.5,66.2,100;26.8,67.6,90;31.1,68.3,75;37.1,66.7,75;43.8,66.4,55]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_079];
myvect = [myvect;my_atl_2023_079];
btkvect = [btkvect;btk_atl_2023_079];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 080 ... MARGOT around 2023-09-11-21Z
# my at https://twitter.com/elioeFIN/status/1701345267209928841
# NHC at https://www.nhc.noaa.gov/archive/2023/al14/al142023.discus.018.shtml?

nhc_atl_2023_080 = [30.7,40.0,80;34.1,41.5,85;36.0,41.4,75;37.1,40.8,65;37.0,41.5,55];
my_atl_2023_080 = [30.7,40.2,80;33.8,42.0,80;35.9,41.8,70;37.1,40.9,60;37.7,41.9,45];
btk_atl_2023_080 = [31.0,39.4,75;34.4,40.6,75;36.6,39.6,70;36.1,37.8,55;34.3,39.2,45]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_080];
myvect = [myvect;my_atl_2023_080];
btkvect = [btkvect;btk_atl_2023_080];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 081 ... LEE around 2023-09-12-21Z
# my at https://twitter.com/elioeFIN/status/1701707441862521295
# NHC at https://www.nhc.noaa.gov/archive/2023/al13/al132023.discus.030.shtml?

nhc_atl_2023_081 = [26.7,67.6,95;30.7,68.2,85;36.4,66.8,75;42.8,66.5,65;47.1,64.5,40];
my_atl_2023_081 = [26.6,67.6,95;30.7,68.2,85;36.0,66.7,75;42.7,66.0,60;47.2,65.1,45];
btk_atl_2023_081 = [26.8,67.6,90;31.1,68.3,75;37.1,66.7,75;43.8,66.4,55;48.6,60.1,40]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_081];
myvect = [myvect;my_atl_2023_081];
btkvect = [btkvect;btk_atl_2023_081];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 082 ... MARGOT around 2023-09-12-21Z
# my at https://twitter.com/elioeFIN/status/1701708111869018466
# NHC at https://www.nhc.noaa.gov/archive/2023/al14/al142023.discus.022.shtml?

nhc_atl_2023_082 = [34.4,41.0,70;36.4,40.7,70;37.5,41.0,65;38.1,42.5,50;40.0,43.0,45];
my_atl_2023_082 = [34.4,40.9,70;36.5,40.4,70;37.5,40.6,55;38.2,43.0,40;40.2,44.1,45];
btk_atl_2023_082 = [34.4,40.6,75;36.6,39.6,70;36.1,37.8,55;34.3,39.2,45;34.7,43.0,35]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_082];
myvect = [myvect;my_atl_2023_082];
btkvect = [btkvect;btk_atl_2023_082];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 083 ... LEE around 2023-09-13-03Z
# my at https://twitter.com/elioeFIN/status/1701794182317195417
# NHC at https://www.nhc.noaa.gov/archive/2023/al13/al132023.discus.031.shtml?

nhc_atl_2023_083 = [27.7,67.8,95;32.1,67.9,80;38.0,66.6,75;44.0,66.4,60;48.5,62.0,40];
my_atl_2023_083 = [27.6,67.7,95;32.0,67.7,80;38.0,66.2,70;45.0,65.0,60;49.2,61.4,45];
btk_atl_2023_083 = [27.6,67.8,90;32.1,67.8,75;38.7,65.9,75;44.7,66.2,55;50.7,57.9,35]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_083];
myvect = [myvect;my_atl_2023_083];
btkvect = [btkvect;btk_atl_2023_083];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 084 ... MARGOT around 2023-09-13-03Z
# my at https://twitter.com/elioeFIN/status/1701796957306417662
# NHC at https://www.nhc.noaa.gov/archive/2023/al14/al142023.discus.023.shtml?

nhc_atl_2023_084 = [35.1,40.8,70;36.9,40.2,70;37.5,40.6,60;38.4,42.4,50;40.6,42.0,45];
my_atl_2023_084 = [35.2,40.7,70;36.9,39.8,65;37.2,40.3,55;38.0,42.8,50;41.3,42.1,55];
btk_atl_2023_084 = [35.1,40.7,75;36.7,39.1,65;35.7,37.8,55;34.0,40.1,40;35.3,43.6,30]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_084];
myvect = [myvect;my_atl_2023_084];
btkvect = [btkvect;btk_atl_2023_084];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 085 ... LEE around 2023-09-13-21Z
# my at https://twitter.com/elioeFIN/status/1702066426272428503
# NHC at https://www.nhc.noaa.gov/archive/2023/al13/al132023.discus.034.shtml?

nhc_atl_2023_085 = [30.9,68.2,85;36.4,67.2,75;42.6,66.9,65;47.7,63.8,45;52.3,52.1,35];
my_atl_2023_085 = [30.9,68.3,85;36.3,66.9,75;42.5,66.6,60;48.2,63.2,40;53.5,51.9,35];
btk_atl_2023_085 = [31.1,68.3,75;37.1,66.7,75;43.8,66.4,55;48.6,60.1,40;53.0,42.0,40]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_085];
myvect = [myvect;my_atl_2023_085];
btkvect = [btkvect;btk_atl_2023_085];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 086 ... MARGOT around 2023-09-13-21Z
# my at https://twitter.com/elioeFIN/status/1702071117974749486
# NHC at https://www.nhc.noaa.gov/archive/2023/al14/al142023.discus.026.shtml?

nhc_atl_2023_086 = [36.4,40.0,70;36.5,39.4,65;35.6,41.0,50;36.5,43.0,45;39.5,41.5,45];
my_atl_2023_086 = [36.3,39.8,70;36.3,39.5,60;35.4,41.4,45;36.6,43.4,45;39.9,41.9,55];
btk_atl_2023_086 = [36.6,39.6,70;36.1,37.8,55;34.3,39.2,45;34.7,43.0,35;37.8,42.7,30]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_086];
myvect = [myvect;my_atl_2023_086];
btkvect = [btkvect;btk_atl_2023_086];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 087 ... LEE around 2023-09-14-03Z
# my at https://twitter.com/elioeFIN/status/1702158178350178699
# NHC at https://www.nhc.noaa.gov/archive/2023/al13/al132023.discus.035.shtml?

nhc_atl_2023_087 = [31.9,68.0,85;37.7,66.5,75;44.0,66.3,60;49.4,60.9,40;53.7,50.0,35];
my_atl_2023_087 = [31.9,67.7,80;37.8,65.9,75;43.8,64.9,50;50.4,58.1,35;54.9,47.3,40];
btk_atl_2023_087 = [32.1,67.8,75;38.7,65.9,75;44.7,66.2,55;50.7,57.9,35;53.7,32.0,30]; # TCR (except day 5 self-made)
nhcvect = [nhcvect;nhc_atl_2023_087];
myvect = [myvect;my_atl_2023_087];
btkvect = [btkvect;btk_atl_2023_087];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 088 ... MARGOT around 2023-09-14-03Z
# my at https://twitter.com/elioeFIN/status/1702161194591649805
# NHC at https://www.nhc.noaa.gov/archive/2023/al14/al142023.discus.027.shtml?

nhc_atl_2023_088 = [36.4,39.6,65;36.1,39.6,55;35.5,41.7,45;37.2,43.2,45;40.4,40.2,45];
my_atl_2023_088 = [36.5,39.7,65;35.9,40.0,55;35.3,42.6,45;37.6,43.9,45;40.3,40.4,45];
btk_atl_2023_088 = [36.7,39.1,65;35.7,37.8,55;34.0,40.1,40;35.3,43.6,30;39.0,41.7,25]; # TCR (except day 5 self-made)
nhcvect = [nhcvect;nhc_atl_2023_088];
myvect = [myvect;my_atl_2023_088];
btkvect = [btkvect;btk_atl_2023_088];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 089 ... LEE around 2023-09-14-15Z
# my at https://twitter.com/elioeFIN/status/1702337500147245239
# NHC at https://www.nhc.noaa.gov/archive/2023/al13/al132023.discus.037.shtml?

nhc_atl_2023_089 = [35.0,67.2,70;41.5,66.5,65;47.0,63.6,45;52.6,52.2,35];
my_atl_2023_089 = [34.9,67.3,70;41.4,66.4,60;47.2,63.4,40;53.8,52.0,35];
btk_atl_2023_089 = [35.1,67.1,75;42.7,66.3,65;47.3,63.0,40;52.6,48.6,40]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_089];
myvect = [myvect;my_atl_2023_089];
btkvect = [btkvect;btk_atl_2023_089];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 090 ... MARGOT around 2023-09-14-15Z
# my at https://twitter.com/elioeFIN/status/1702341176207061263
# NHC at https://www.nhc.noaa.gov/archive/2023/al14/al142023.discus.029.shtml?

nhc_atl_2023_090 = [36.7,38.9,65;35.5,39.5,55;35.1,42.3,45;37.5,43.3,45;40.0,39.0,45];
my_atl_2023_090 = [36.5,38.8,60;35.4,39.6,50;34.9,42.7,45;37.6,42.9,45;40.2,39.7,50];
btk_atl_2023_090 = [36.5,38.1,55;34.7,38.5,50;34.3,42.0,35;36.8,43.6,30;39.6,36.9,25]; # TCR (except day 5 self-made)
nhcvect = [nhcvect;nhc_atl_2023_090];
myvect = [myvect;my_atl_2023_090];
btkvect = [btkvect;btk_atl_2023_090];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 091 ... LEE around 2023-09-14-21Z
# my at https://twitter.com/elioeFIN/status/1702429831487787297
# NHC at https://www.nhc.noaa.gov/archive/2023/al13/al132023.discus.038.shtml?

nhc_atl_2023_091 = [37.0,66.9,75;43.3,66.4,60;48.6,61.4,40;53.7,48.0,35];
my_atl_2023_091 = [36.9,66.9,75;43.6,65.9,55;49.4,61.1,35;55.6,46.7,35];
btk_atl_2023_091 = [37.1,66.7,75;43.8,66.4,55;48.6,60.1,40;53.0,42.0,40]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_091];
myvect = [myvect;my_atl_2023_091];
btkvect = [btkvect;btk_atl_2023_091];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 092 ... LEE around 2023-09-15-03Z
# my at https://twitter.com/elioeFIN/status/1702519186939936952
# NHC at https://www.nhc.noaa.gov/archive/2023/al13/al132023.discus.039.shtml?

nhc_atl_2023_092 = [38.4,66.6,75;44.3,66.0,60;49.6,59.1,40;54.5,42.5,35];
my_atl_2023_092 = [38.5,66.6,75;44.8,65.7,50;50.9,58.9,35;56.4,42.8,35];
btk_atl_2023_092 = [38.7,65.9,75;44.7,66.2,55;50.7,57.9,35;53.7,32.0,30]; # TCR (except day 4 self-made)
nhcvect = [nhcvect;nhc_atl_2023_092];
myvect = [myvect;my_atl_2023_092];
btkvect = [btkvect;btk_atl_2023_092];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 093 ... MARGOT around 2023-09-15-03Z
# my at https://twitter.com/elioeFIN/status/1702519886121959907
# NHC at https://www.nhc.noaa.gov/archive/2023/al14/al142023.discus.031.shtml?

nhc_atl_2023_093 = [36.1,38.8,60;35.4,41.1,45;36.5,43.3,45;39.2,41.0,45;40.1,35.5,40];
my_atl_2023_093 = [36.0,38.6,60;35.1,41.2,45;36.3,43.2,45;39.9,40.5,45;40.7,34.8,40];
btk_atl_2023_093 = [35.7,37.8,55;34.0,40.1,40;35.3,43.6,25;39.0,41.7,25;38.3,33.2,25]; # TCR (except days 4-5 self-made)
nhcvect = [nhcvect;nhc_atl_2023_093];
myvect = [myvect;my_atl_2023_093];
btkvect = [btkvect;btk_atl_2023_093];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 094 ... 15L around 2023-09-16-21Z
# my at https://twitter.com/elioeFIN/status/1703151308281135136
# NHC at https://www.nhc.noaa.gov/archive/2023/al15/al152023.discus.006.shtml?

nhc_atl_2023_094 = [24.2,49.7,45;26.9,52.9,65;30.0,56.4,95;34.6,57.3,90;39.6,52.0,80];
my_atl_2023_094 = [24.2,49.8,45;26.9,52.9,70;29.8,56.0,90;34.1,56.9,85;39.4,51.0,75];
btk_atl_2023_094 = [24.5,49.4,55;27.5,51.7,70;31.1,54.7,85;36.7,53.6,80;42.8,42.8,70]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_094];
myvect = [myvect;my_atl_2023_094];
btkvect = [btkvect;btk_atl_2023_094];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 095 ... NIGEL around 2023-09-17-03Z
# my at https://twitter.com/elioeFIN/status/1703242337177030908
# NHC at https://www.nhc.noaa.gov/archive/2023/al15/al152023.discus.007.shtml?

nhc_atl_2023_095 = [25.3,50.6,55;27.8,54.0,75;31.3,56.7,95;36.0,55.6,85;41.9,47.3,80];
my_atl_2023_095 = [25.3,50.7,55;28.0,53.8,70;31.6,56.2,90;36.2,54.9,85;42.4,46.0,80];
btk_atl_2023_095 = [25.3,50.0,60;28.2,52.4,75;32.4,55.0,85;38.3,51.6,80;44.3,38.7,65]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_095];
myvect = [myvect;my_atl_2023_095];
btkvect = [btkvect;btk_atl_2023_095];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 096 ... MARGOT around 2023-09-17-03Z
# my at https://twitter.com/elioeFIN/status/1703246023479452102
# NHC at https://www.nhc.noaa.gov/archive/2023/al14/al142023.discus.039.shtml?

nhc_atl_2023_096 = [35.1,43.1,30;37.9,41.1,30;37.8,35.3,35;37.0,32.0,30;37.6,29.0,25];
my_atl_2023_096 = [34.7,43.3,30;37.1,41.7,30;36.4,35.7,30;36.1,32.4,25;37.7,29.6,25];
btk_atl_2023_096 = [35.3,43.6,30;39.0,41.7,25;38.3,33.2,25;36.0,29.5,25;34.9,28.7,25]; # TCR ( except days 2-5 self-made)
nhcvect = [nhcvect;nhc_atl_2023_096];
myvect = [myvect;my_atl_2023_096];
btkvect = [btkvect;btk_atl_2023_096];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 097 ... NIGEL around 2023-09-17-21Z
# my at https://twitter.com/elioeFIN/status/1703514508830945355
# NHC at https://www.nhc.noaa.gov/archive/2023/al15/al152023.discus.010.shtml?

nhc_atl_2023_097 = [27.8,52.1,85;31.0,55.0,100;35.7,54.2,90;41.3,45.9,75;47.8,31.7,60];
my_atl_2023_097 = [27.5,52.2,85;30.6,55.2,100;35.3,54.6,85;40.7,46.7,70;48.3,30.5,50];
btk_atl_2023_097 = [27.6,51.8,70;31.1,54.7,85;36.7,53.8,80;42.8,42.8,70;49.1,26.7,40]; # day 5 self-made
nhcvect = [nhcvect;nhc_atl_2023_097];
myvect = [myvect;my_atl_2023_097];
btkvect = [btkvect;btk_atl_2023_097];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 098 ... NIGEL around 2023-09-18-03Z
# my at https://twitter.com/elioeFIN/status/1703603968914375126
# NHC at https://www.nhc.noaa.gov/archive/2023/al15/al152023.discus.011.shtml?

nhc_atl_2023_098 = [28.5,52.8,90;32.1,55.2,100;37.4,52.5,90;43.1,42.1,75;50.8,28.0,60];
my_atl_2023_098 = [28.2,52.8,90;31.9,55.3,100;37.1,53.2,90;42.9,42.6,70;51.1,26.6,50];
btk_atl_2023_098 = [28.2,52.4,75;32.4,55.0,85;38.3,51.6,80;44.3,38.7,65;50.9,24.0,55]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_098];
myvect = [myvect;my_atl_2023_098];
btkvect = [btkvect;btk_atl_2023_098];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 099 ... NIGEL around 2023-09-18-15Z
# my at https://twitter.com/elioeFIN/status/1703793169446437042
# NHC at https://www.nhc.noaa.gov/archive/2023/al15/al152023.discus.013.shtml?

nhc_atl_2023_099 = [30.0,53.9,100;34.6,54.5,95;40.3,47.7,85;46.5,33.0,70;53.5,20.0,50];
my_atl_2023_099 = [29.9,54.0,95;34.6,54.5,90;40.4,47.5,80;46.8,31.9,60;54.6,17.4,50];
btk_atl_2023_099 = [29.9,54.0,80;35.2,54.7,80;41.3,46.3,75;47.2,30.2,55;55.6,22.7,55]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_099];
myvect = [myvect;my_atl_2023_099];
btkvect = [btkvect;btk_atl_2023_099];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 100 ... NIGEL around 2023-09-18-21Z
# my at https://twitter.com/elioeFIN/status/1703878212659343361
# NHC at https://www.nhc.noaa.gov/archive/2023/al15/al152023.discus.014.shtml?

nhc_atl_2023_100 = [31.0,54.5,90;36.2,53.5,95;42.1,43.9,75;48.0,29.0,60;56.0,18.0,50];
my_atl_2023_100 = [31.0,54.7,90;36.2,53.6,90;42.1,43.8,70;48.4,27.8,50;56.7,16.7,45];
btk_atl_2023_100 = [31.1,54.7,85;36.7,53.6,80;42.8,42.8,70;48.9,26.8,55;57.7,23.2,55]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_100];
myvect = [myvect;my_atl_2023_100];
btkvect = [btkvect;btk_atl_2023_100];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 101 ... NIGEL around 2023-09-19-21Z
# my at https://twitter.com/elioeFIN/status/1704240954025168945
# NHC at https://www.nhc.noaa.gov/archive/2023/al15/al152023.discus.018.shtml?

nhc_atl_2023_101 = [36.7,53.3,90;42.8,42.9,70;48.6,28.5,50;56.0,20.5,50;58.0,21.5,40];
my_atl_2023_101 = [36.6,53.4,85;42.7,43.0,70;48.9,27.7,45;57.0,19.2,50;58.7,24.1,55];
btk_atl_2023_101 = [36.7,53.6,80;42.8,42.8,70;48.9,26.8,55;57.7,23.2,55;56.4,23.5,45]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_101];
myvect = [myvect;my_atl_2023_101];
btkvect = [btkvect;btk_atl_2023_101];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 052 ... KENNETH around 2023-09-19-21Z
# my at https://twitter.com/elioeFIN/status/1704243690984648739
# NHC at https://www.nhc.noaa.gov/archive/2023/ep13/ep132023.discus.002.shtml?

nhc_epac_2023_052 = [15.9,124.1,50;17.4,126.6,45;20.4,127.8,30;22.3,128.7,25];
my_epac_2023_052 = [16.1,123.8,45;18.0,126.6,45;20.7,128.0,30;22.0,130.2,25];
btk_epac_2023_052 = [16.0,123.9,45;17.4,125.6,35;21.1,125.6,30;23.1,126.0,25]; # TCR
nhcvect = [nhcvect;nhc_epac_2023_052];
myvect = [myvect;my_epac_2023_052];
btkvect = [btkvect;btk_epac_2023_052];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Atl 102 ... NIGEL around 2023-09-20-03Z
# my at https://twitter.com/elioeFIN/status/1704329719162839076
# NHC at https://www.nhc.noaa.gov/archive/2023/al15/al152023.discus.019.shtml?

nhc_atl_2023_102 = [38.4,51.3,85;44.4,39.0,65;50.8,25.9,50;57.1,22.0,45;58.9,21.5,35];
my_atl_2023_102 = [38.3,51.7,85;44.4,38.8,65;51.1,23.8,50;57.8,20.4,50;57.7,20.3,50];
btk_atl_2023_102 = [38.3,51.6,80;44.3,38.7,65;50.9,24.0,55;58.3,25.6,50;58.0,20.9,40]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_102];
myvect = [myvect;my_atl_2023_102];
btkvect = [btkvect;btk_atl_2023_102];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 053 ... KENNETH around 2023-09-20-03Z
# my at https://twitter.com/elioeFIN/status/1704331805074018411
# NHC at https://www.nhc.noaa.gov/archive/2023/ep13/ep132023.discus.003.shtml?

nhc_epac_2023_053 = [15.8,124.6,50;17.7,126.8,40;20.4,127.6,30;21.4,128.8,20];
my_epac_2023_053 = [15.9,124.7,40;18.1,126.7,35;20.4,127.8,25;22.2,128.7,20];
btk_epac_2023_053 = [16.3,124.5,45;18.0,125.9,35;21.8,125.4,30;23.2,126.4,25]; # TCR
nhcvect = [nhcvect;nhc_epac_2023_053];
myvect = [myvect;my_epac_2023_053];
btkvect = [btkvect;btk_epac_2023_053];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Atl 103 ... NIGEL around 2023-09-20-21Z
# my at https://twitter.com/elioeFIN/status/1704600494499356783
# NHC at https://www.nhc.noaa.gov/archive/2023/al15/al152023.discus.022.shtml?

nhc_atl_2023_103 = [42.8,43.2,75;49.0,27.6,55;56.0,23.5,50;57.0,23.5,40];
my_atl_2023_103 = [42.7,43.0,70;48.5,27.0,45;55.6,21.2,45;55.3,24.0,40];
btk_atl_2023_103 = [42.8,42.8,70;48.9,26.8,55;57.7,23.2,55;56.4,23.5,45]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_103];
myvect = [myvect;my_atl_2023_103];
btkvect = [btkvect;btk_atl_2023_103];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Epac 054 ... KENNETH around 2023-09-20-21Z
# my at https://twitter.com/elioeFIN/status/1704603303135363291
# NHC at https://www.nhc.noaa.gov/archive/2023/ep13/ep132023.discus.006.shtml?

nhc_epac_2023_054 = [17.3,126.4,45;20.0,127.1,30;21.8,127.5,25];
my_epac_2023_054 = [17.3,126.2,45;20.4,126.8,25;22.4,127.0,20];
btk_epac_2023_054 = [17.4,125.6,35;21.1,125.6,30;23.1,126.0,25]; # TCR
nhcvect = [nhcvect;nhc_epac_2023_054];
myvect = [myvect;my_epac_2023_054];
btkvect = [btkvect;btk_epac_2023_054];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Atl 104 ... 16L around 2023-09-21-21Z
# my at https://twitter.com/elioeFIN/status/1704966075161440439
# NHC at https://www.nhc.noaa.gov/archive/2023/al16/al162023.discus.002.shtml?

nhc_atl_2023_104 = [32.6,76.0,45;35.6,77.0,50;38.7,76.1,30];
my_atl_2023_104 = [32.1,76.2,45;35.1,77.4,45;38.8,77.0,30];
btk_atl_2023_104 = [32.7,76.1,60;36.3,77.5,40;38.9,76.9,20]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_104];
myvect = [myvect;my_atl_2023_104];
btkvect = [btkvect;btk_atl_2023_104];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Atl 105 ... 16L around 2023-09-22-15Z
# my at https://twitter.com/elioeFIN/status/1705238927089533335
# NHC at https://www.nhc.noaa.gov/archive/2023/al16/al162023.discus.005.shtml?

nhc_atl_2023_105 = [34.9,76.8,50;38.3,77.0,30];
my_atl_2023_105 = [35.0,76.7,50;37.4,77.2,25];
btk_atl_2023_105 = [35.1,77.1,50;37.9,77.4,20]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_105];
myvect = [myvect;my_atl_2023_105];
btkvect = [btkvect;btk_atl_2023_105];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Atl 106 ... OPHELIA around 2023-09-22-21Z
# my at https://twitter.com/elioeFIN/status/1705328619914977725
# NHC at https://www.nhc.noaa.gov/archive/2023/al16/al162023.discus.006.shtml?

nhc_atl_2023_106 = [36.1,77.2,45;38.9,76.6,25];
my_atl_2023_106 = [36.0,77.6,50;38.1,77.5,20];
btk_atl_2023_106 = [36.3,77.5,40;38.9,76.9,20]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_106];
myvect = [myvect;my_atl_2023_106];
btkvect = [btkvect;btk_atl_2023_106];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Atl 107 ... PHILIPPE around 2023-09-23-21Z
# my at https://twitter.com/elioeFIN/status/1705689425718411722
# NHC at https://www.nhc.noaa.gov/archive/2023/al17/al172023.discus.002.shtml?

nhc_atl_2023_107 = [15.9,43.8,40;16.7,48.3,45;18.0,51.4,50;21.0,53.5,55;24.0,54.0,60];
my_atl_2023_107 = [16.1,43.6,40;16.8,47.8,45;17.5,50.3,45;20.7,52.2,50;24.3,52.9,60];
btk_atl_2023_107 = [16.6,42.0,45;17.1,46.2,45;17.1,50.8,40;17.8,53.7,45;18.6,54.8,40]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_107];
myvect = [myvect;my_atl_2023_107];
btkvect = [btkvect;btk_atl_2023_107];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 055 ... 14E around 2023-09-23-21Z
# my at https://twitter.com/elioeFIN/status/1705693119725949285
# NHC at https://www.nhc.noaa.gov/archive/2023/ep14/ep142023.discus.001.shtml?

nhc_epac_2023_055 = [14.7,125.2,40;14.9,130.5,45;14.3,136.5,35];
my_epac_2023_055 = [14.8,125.4,35;15.1,130.8,40;14.5,136.7,30];
btk_epac_2023_055 = [15.1,124.9,30;15.7,129.6,25;13.9,135.8,20]; # TCR
nhcvect = [nhcvect;nhc_epac_2023_055];
myvect = [myvect;my_epac_2023_055];
btkvect = [btkvect;btk_epac_2023_055];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Atl 108 ... PHILIPPE around 2023-09-24-03Z
# my at https://twitter.com/elioeFIN/status/1705780568888168502
# NHC at https://www.nhc.noaa.gov/archive/2023/al17/al172023.discus.003.shtml?

nhc_atl_2023_108 = [15.9,44.8,40;16.7,49.1,45;18.3,52.0,50;21.2,53.9,55;23.5,54.5,60];
my_atl_2023_108 = [16.0,44.5,40;16.9,48.6,40;17.7,51.3,40;21.1,53.5,50;23.6,54.5,50];
btk_atl_2023_108 = [16.9,42.9,45;17.4,47.3,45;17.2,51.6,40;18.1,54.3,40;18.5,54.9,40]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_108];
myvect = [myvect;my_atl_2023_108];
btkvect = [btkvect;btk_atl_2023_108];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 056 ... 14E around 2023-09-24-03Z
# my at https://twitter.com/elioeFIN/status/1705782686134968534
# NHC at https://www.nhc.noaa.gov/archive/2023/ep14/ep142023.discus.002.shtml?

nhc_epac_2023_056 = [14.5,126.6,40;14.4,131.7,40;13.6,137.7,35];
my_epac_2023_056 = [14.7,126.2,35;14.7,131.4,35;13.7,137.5,30];
btk_epac_2023_056 = [15.1,125.9,25;15.3,131.1,25;13.3,137.7,20]; # TCR
nhcvect = [nhcvect;nhc_epac_2023_056];
myvect = [myvect;my_epac_2023_056];
btkvect = [btkvect;btk_epac_2023_056];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Atl 109 ... PHILIPPE around 2023-09-24-21Z
# my at https://twitter.com/elioeFIN/status/1706050611488145493
# NHC at https://www.nhc.noaa.gov/archive/2023/al17/al172023.discus.006.shtml?

nhc_atl_2023_109 = [17.8,46.4,45;18.8,50.4,45;21.0,52.5,50;23.0,55.5,55;25.0,57.0,60];
my_atl_2023_109 = [17.8,46.5,45;18.7,50.5,45;21.2,53.1,45;23.6,55.5,50;25.4,56.6,45];
btk_atl_2023_109 = [17.1,46.2,45;17.1,50.8,40;17.8,53.7,45;18.6,54.8,40;18.0,55.6,45]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_109];
myvect = [myvect;my_atl_2023_109];
btkvect = [btkvect;btk_atl_2023_109];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 057 ... 14E around 2023-09-24-21Z
# my at https://twitter.com/elioeFIN/status/1706052775178625292
# NHC at https://www.nhc.noaa.gov/archive/2023/ep14/ep142023.discus.005.shtml?

nhc_epac_2023_057 = [15.1,130.0,25;13.8,135.8,25];
my_epac_2023_057 = [15.1,130.0,25;14.3,135.7,25];
btk_epac_2023_057 = [15.7,129.6,25;13.9,135.8,20]; # TCR
nhcvect = [nhcvect;nhc_epac_2023_057];
myvect = [myvect;my_epac_2023_057];
btkvect = [btkvect;btk_epac_2023_057];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Atl 110 ... PHILIPPE around 2023-09-25-03Z
# my at https://twitter.com/elioeFIN/status/1706141990449037634
# NHC at https://www.nhc.noaa.gov/archive/2023/al17/al172023.discus.007.shtml?

nhc_atl_2023_110 = [18.1,47.3,45;19.3,51.0,45;21.6,54.0,50;23.4,55.9,55;25.5,57.0,55];
my_atl_2023_110 = [18.1,47.3,45;19.2,50.9,45;21.5,53.1,50;23.8,54.6,55;25.5,56.3,50];
btk_atl_2023_110 = [17.4,47.3,45;17.2,51.6,40;18.1,54.3,40;18.5,54.9,40;17.6,55.7,45]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_110];
myvect = [myvect;my_atl_2023_110];
btkvect = [btkvect;btk_atl_2023_110];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 058 ... 14E around 2023-09-25-03Z
# my at https://twitter.com/elioeFIN/status/1706137901694701607
# NHC at https://www.nhc.noaa.gov/archive/2023/ep14/ep142023.discus.006.shtml?

nhc_epac_2023_058 = [14.6,131.1,25];
my_epac_2023_058 = [15.1,131.0,25];
btk_epac_2023_058 = [15.3,131.1,25]; # TCR
nhcvect = [nhcvect;nhc_epac_2023_058];
myvect = [myvect;my_epac_2023_058];
btkvect = [btkvect;btk_epac_2023_058];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;2];

# Atl 111 ... PHILIPPE around 2023-09-25-21Z
# my at https://twitter.com/elioeFIN/status/1706411297707884852
# NHC at https://www.nhc.noaa.gov/archive/2023/al17/al172023.discus.010.shtml?

nhc_atl_2023_111 = [18.4,50.4,40;20.4,54.0,40;22.2,56.3,40;22.9,57.7,40;23.4,59.5,35];
my_atl_2023_111 = [18.5,50.2,40;20.5,53.7,40;22.3,55.9,40;22.7,57.7,40;23.5,59.3,40];
btk_atl_2023_111 = [17.1,50.8,40;17.8,53.7,45;18.6,54.8,40;18.0,55.6,45;16.4,56.3,50]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_111];
myvect = [myvect;my_atl_2023_111];
btkvect = [btkvect;btk_atl_2023_111];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 112 ... PHILIPPE around 2023-09-26-21Z
# my at https://twitter.com/elioeFIN/status/1706776054189129947
# NHC at https://www.nhc.noaa.gov/archive/2023/al17/al172023.discus.014.shtml?

nhc_atl_2023_112 = [18.4,54.5,35;19.7,57.9,35;20.1,61.0,30;20.2,64.0,25;20.3,67.8,25];
my_atl_2023_112 = [18.5,54.4,35;19.9,57.5,35;19.9,61.1,30;19.8,65.0,25;20.4,67.4,25];
btk_atl_2023_112 = [17.8,53.7,45;18.6,54.8,40;18.0,55.6,45;16.4,56.3,50;16.2,58.8,45]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_112];
myvect = [myvect;my_atl_2023_112];
btkvect = [btkvect;btk_atl_2023_112];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 113 ... PHILIPPE around 2023-09-27-03Z
# my at https://twitter.com/elioeFIN/status/1706864864709292196
# NHC at https://www.nhc.noaa.gov/archive/2023/al17/al172023.discus.015.shtml?

nhc_atl_2023_113 = [18.8,55.2,35;19.8,58.3,35;20.0,61.5,30;20.1,64.7,25;20.2,67.0,25];
my_atl_2023_113 = [19.0,55.3,35;20.1,58.2,35;20.2,61.7,25;20.3,65.5,25;20.0,69.0,25];
btk_atl_2023_113 = [18.1,54.3,40;18.5,54.9,40;17.6,55.7,45;16.1,56.7,50;16.5,59.0,45]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_113];
myvect = [myvect;my_atl_2023_113];
btkvect = [btkvect;btk_atl_2023_113];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 114 ... PHILIPPE around 2023-09-27-21Z
# my at https://twitter.com/elioeFIN/status/1707140061752394136
# NHC at https://www.nhc.noaa.gov/archive/2023/al17/al172023.discus.018.shtml?

nhc_atl_2023_114 = [18.6,56.5,40;18.9,58.8,40;18.7,61.6,35;18.4,64.0,30;18.2,66.3,30];
my_atl_2023_114 = [18.7,56.6,40;18.7,58.3,40;17.8,59.3,40;17.1,61.8,35;17.6,64.5,50];
btk_atl_2023_114 = [18.6,54.8,40;18.0,55.6,45;16.4,56.3,50;16.2,58.8,45;17.3,61.2,45]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_114];
myvect = [myvect;my_atl_2023_114];
btkvect = [btkvect;btk_atl_2023_114];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 115 ... PHILIPPE around 2023-09-28-21Z
# my at https://twitter.com/elioeFIN/status/1707501070564327603
# NHC at https://www.nhc.noaa.gov/archive/2023/al17/al172023.discus.022.shtml?

nhc_atl_2023_115 = [18.7,55.9,35;17.9,56.4,45;17.0,57.6,45;18.6,58.6,45;20.6,59.1,40];
my_atl_2023_115 = [18.2,55.7,40;17.2,56.1,45;16.4,57.0,50;18.3,57.8,50;21.2,58.1,60];
btk_atl_2023_115 = [18.0,55.6,45;16.4,56.3,50;16.2,58.8,45;17.3,61.2,45;19.1,64.5,40]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_115];
myvect = [myvect;my_atl_2023_115];
btkvect = [btkvect;btk_atl_2023_115];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 116 ... RINA around 2023-09-28-21Z
# my at https://twitter.com/elioeFIN/status/1707504337662947694
# NHC at https://www.nhc.noaa.gov/archive/2023/al18/al182023.discus.002.shtml?

nhc_atl_2023_116 = [19.4,47.9,45;20.1,50.1,45;21.5,53.3,40];
my_atl_2023_116 = [19.4,47.7,45;20.0,49.8,45;21.8,53.5,40];
btk_atl_2023_116 = [19.8,47.5,45;22.1,51.0,40;25.8,55.3,30]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_116];
myvect = [myvect;my_atl_2023_116];
btkvect = [btkvect;btk_atl_2023_116];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Atl 117 ... PHILIPPE around 2023-09-29-03Z
# my at https://twitter.com/elioeFIN/status/1707591768953295035
# NHC at https://www.nhc.noaa.gov/archive/2023/al17/al172023.discus.023.shtml?

nhc_atl_2023_117 = [17.9,55.6,40;17.2,56.2,45;17.0,57.0,50;18.8,57.6,50;21.7,58.3,50];
my_atl_2023_117 = [17.7,55.9,40;16.6,56.4,45;16.1,57.2,45;18.2,57.7,55;21.3,58.1,80];
btk_atl_2023_117 = [17.6,55.7,45;16.1,56.7,50;16.5,59.0,45;17.6,61.9,45;19.5,65.2,40]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_117];
myvect = [myvect;my_atl_2023_117];
btkvect = [btkvect;btk_atl_2023_117];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 118 ... RINA around 2023-09-29-03Z
# my at https://twitter.com/elioeFIN/status/1707595271268426013
# NHC at https://www.nhc.noaa.gov/archive/2023/al18/al182023.discus.003.shtml?

nhc_atl_2023_118 = [19.6,48.3,45;20.4,50.7,40;22.0,54.1,35];
my_atl_2023_118 = [19.5,48.2,45;20.1,50.7,40;21.6,54.6,35];
btk_atl_2023_118 = [20.2,48.4,45;23.0,52.2,35;26.7,55.6,30]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_118];
myvect = [myvect;my_atl_2023_118];
btkvect = [btkvect;btk_atl_2023_118];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Atl 119 ... PHILIPPE around 2023-09-30-21Z
# my at https://twitter.com/elioeFIN/status/1708226881290445068
# NHC at https://www.nhc.noaa.gov/archive/2023/al17/al172023.discus.030.shtml?

nhc_atl_2023_119 = [16.6,57.4,55;18.5,58.9,60;21.6,59.7,70;25.7,59.0,80;29.5,56.0,80];
my_atl_2023_119 = [16.4,57.6,55;17.9,59.1,60;21.2,59.8,65;25.5,59.0,75;29.7,55.6,85];
btk_atl_2023_119 = [16.2,58.8,45;17.3,61.2,45;19.1,64.5,40;22.2,65.8,35;26.4,66.1,45]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_119];
myvect = [myvect;my_atl_2023_119];
btkvect = [btkvect;btk_atl_2023_119];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 056 ... KOINU around 2023-10-01-03Z
# my at https://twitter.com/elioeFIN/status/1708315768729866488

nhc_wpac_2023_056 = [19.4,128.0,75;20.9,126.0,90;21.9,123.8,100;22.1,121.3,110;22.2,118.8,105];
my_wpac_2023_056 = [19.2,127.8,75;21.0,125.6,90;22.6,123.3,95;22.9,120.4,100;22.8,118.5,90];
btk_wpac_2023_056 = [19.1,127.4,105;20.6,125.2,105;22.2,123.5,105;22.0,120.8,110;21.8,117.7,90]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_056];
myvect = [myvect;my_wpac_2023_056];
btkvect = [btkvect;btk_wpac_2023_056];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Atl 120 ... PHILIPPE around 2023-10-01-03Z
# my at https://twitter.com/elioeFIN/status/1708320343130058781
# NHC at https://www.nhc.noaa.gov/archive/2023/al17/al172023.discus.031.shtml?

nhc_atl_2023_120 = [17.1,58.6,50;18.6,60.3,60;21.1,61.2,65;24.8,61.1,75;28.5,59.2,80];
my_atl_2023_120 = [16.8,58.8,50;17.9,60.7,55;19.9,61.8,55;24.0,61.3,60;27.9,59.7,70];
btk_atl_2023_120 = [16.5,59.0,45;17.6,61.9,45;19.5,65.2,40;23.1,66.0,35;27.6,66.0,45]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_120];
myvect = [myvect;my_atl_2023_120];
btkvect = [btkvect;btk_atl_2023_120];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 057 ... KOINU around 2023-10-01-21Z
# my at https://twitter.com/elioeFIN/status/1708583461894647966

nhc_wpac_2023_057 = [20.4,126.2,95;21.7,123.7,105;22.1,121.7,105;22.3,119.8,90;22.3,117.9,75];
my_wpac_2023_057 = [20.2,125.7,95;21.8,123.5,110;21.8,121.9,100;22.7,119.5,85;22.4,117.8,85];
btk_wpac_2023_057 = [20.3,125.6,110;22.0,124.2,90;21.9,121.2,120;21.9,118.3,70;21.2,115.7,105]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_057];
myvect = [myvect;my_wpac_2023_057];
btkvect = [btkvect;btk_wpac_2023_057];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Atl 121 ... PHILIPPE around 2023-10-01-21Z
# my at https://twitter.com/elioeFIN/status/1708587595922346164
# NHC at https://www.nhc.noaa.gov/archive/2023/al17/al172023.discus.034.shtml?

nhc_atl_2023_121 = [17.7,60.8,45;19.9,62.0,50;23.1,62.2,55;26.9,61.1,65;30.0,58.0,75];
my_atl_2023_121 = [17.5,61.0,45;19.6,62.6,50;22.6,63.9,50;26.8,62.8,60;31.0,60.9,65];
btk_atl_2023_121 = [17.3,61.2,45;19.1,64.5,40;22.2,65.8,35;26.4,66.1,45;32.3,69.9,35]; # TCR (except day 5 self-made)
nhcvect = [nhcvect;nhc_atl_2023_121];
myvect = [myvect;my_atl_2023_121];
btkvect = [btkvect;btk_atl_2023_121];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 122 ... PHILIPPE around 2023-10-02-03Z
# my at https://twitter.com/elioeFIN/status/1708676533303341399
# NHC at https://www.nhc.noaa.gov/archive/2023/al17/al172023.discus.035.shtml?

nhc_atl_2023_122 = [17.8,60.7,45;20.3,61.7,50;23.8,61.7,55;27.5,60.2,65;30.1,57.6,75];
my_atl_2023_122 = [17.7,60.7,45;20.5,61.9,55;24.0,62.3,55;27.5,61.0,60;30.7,58.3,70];
btk_atl_2023_122 = [17.6,61.9,45;19.5,65.2,40;23.1,66.0,35;27.6,66.0,45;33.3,69.6,35]; # TCR (except day 5 self-made)
nhcvect = [nhcvect;nhc_atl_2023_122];
myvect = [myvect;my_atl_2023_122];
btkvect = [btkvect;btk_atl_2023_122];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 058 ... KOINU around 2023-10-02-03Z
# my at https://twitter.com/elioeFIN/status/1708679998029140358

nhc_wpac_2023_058 = [20.8,125.3,115;22.0,123.0,105;22.4,120.7,90;22.6,119.2,70;22.7,117.8,65];
my_wpac_2023_058 = [20.7,125.3,115;22.0,123.1,115;22.6,121.1,90;23.8,118.6,80;24.5,117.3,55];
btk_wpac_2023_058 = [20.6,125.2,105;22.2,123.5,105;22.0,120.8,110;21.8,117.7,90;21.1,115.4,100]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_058];
myvect = [myvect;my_wpac_2023_058];
btkvect = [btkvect;btk_wpac_2023_058];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Atl 123 ... PHILIPPE around 2023-10-02-21Z
# my at https://twitter.com/elioeFIN/status/1708952959189496112
# NHC at https://www.nhc.noaa.gov/archive/2023/al17/al172023.discus.038.shtml?

nhc_atl_2023_123 = [19.1,62.6,45;22.2,63.4,45;26.0,63.8,55;30.6,62.2,60;35.0,60.0,65];
my_atl_2023_123 = [19.0,62.8,45;21.9,64.3,45;25.3,65.0,50;29.9,62.8,55;34.9,60.3,60];
btk_atl_2023_123 = [19.1,64.5,40;22.2,65.8,35;26.4,66.1,45;32.3,69.9,35;38.7,68.5,40]; # TCR (except days 4-5 self-made)
nhcvect = [nhcvect;nhc_atl_2023_123];
myvect = [myvect;my_atl_2023_123];
btkvect = [btkvect;btk_atl_2023_123];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 124 ... PHILIPPE around 2023-10-03-21Z
# my at https://twitter.com/elioeFIN/status/1709312456903016515
# NHC at https://www.nhc.noaa.gov/archive/2023/al17/al172023.discus.042.shtml?

nhc_atl_2023_124 = [22.0,66.1,40;26.2,66.6,40;32.2,65.7,45;38.1,66.0,50;45.8,66.9,45];
my_atl_2023_124 = [21.5,66.4,40;26.0,67.4,35;33.2,66.4,40;40.0,64.8,45;48.7,66.0,45];
btk_atl_2023_124 = [22.2,65.8,35;26.4,66.1,45;32.3,69.9,35;38.7,68.5,40;48.6,75.4,40]; # TCR (except days 3-5 self-made)
nhcvect = [nhcvect;nhc_atl_2023_124];
myvect = [myvect;my_atl_2023_124];
btkvect = [btkvect;btk_atl_2023_124];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 059 ... LIDIA around 2023-10-03-21Z
# my at https://twitter.com/elioeFIN/status/1709316003874705499
# NHC at https://www.nhc.noaa.gov/archive/2023/ep15/ep152023.discus.003.shtml?

nhc_epac_2023_059 = [14.5,108.9,40;15.7,109.8,50;15.9,111.1,55;15.7,112.5,60;15.8,114.1,65];
my_epac_2023_059 = [14.5,109.0,40;15.9,110.2,50;15.8,111.3,50;15.8,111.6,55;15.8,112.6,65];
btk_epac_2023_059 = [15.1,108.8,45;15.9,109.6,50;16.2,110.9,60;16.0,112.2,55;17.3,112.8,60]; # TCR
nhcvect = [nhcvect;nhc_epac_2023_059];
myvect = [myvect;my_epac_2023_059];
btkvect = [btkvect;btk_epac_2023_059];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Atl 125 ... PHILIPPE around 2023-10-04-21Z
# my at https://twitter.com/elioeFIN/status/1709675357165457464
# NHC at https://www.nhc.noaa.gov/archive/2023/al17/al172023.discus.046.shtml?

nhc_atl_2023_125 = [26.6,66.0,35;33.3,65.3,45;40.9,65.9,50;50.5,69.5,40];
my_atl_2023_125 = [26.0,66.5,35;33.7,65.9,50;43.1,67.5,45;52.9,70.7,35];
btk_atl_2023_125 = [26.4,66.1,45;32.3,69.9,35;38.7,68.5,40;48.6,75.4,40]; # TCR (except days 2-4 self-made)
nhcvect = [nhcvect;nhc_atl_2023_125];
myvect = [myvect;my_atl_2023_125];
btkvect = [btkvect;btk_atl_2023_125];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Epac 060 ... LIDIA around 2023-10-04-21Z
# my at https://twitter.com/elioeFIN/status/1709678433444172004
# NHC at https://www.nhc.noaa.gov/archive/2023/ep15/ep152023.discus.007.shtml?

nhc_epac_2023_060 = [16.1,109.9,50;16.0,111.3,50;15.8,113.0,60;16.1,114.4,60;16.6,114.9,60];
my_epac_2023_060 = [16.1,110.0,45;16.3,111.2,50;16.0,113.4,50;16.5,114.4,50;16.8,114.8,50];
btk_epac_2023_060 = [15.9,109.6,50;16.2,110.9,60;16.0,112.2,55;17.3,112.8,60;17.8,111.4,65]; # TCR
nhcvect = [nhcvect;nhc_epac_2023_060];
myvect = [myvect;my_epac_2023_060];
btkvect = [btkvect;btk_epac_2023_060];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Atl 126 ... PHILIPPE around 2023-10-05-21Z
# my at https://twitter.com/elioeFIN/status/1710039086625436063
# NHC at https://www.nhc.noaa.gov/archive/2023/al17/al172023.discus.050.shtml?

nhc_atl_2023_126 = [32.5,65.7,45;39.0,66.2,50;48.6,71.4,40];
my_atl_2023_126 = [32.0,66.3,45;39.6,67.6,50;49.2,73.7,35];
btk_atl_2023_126 = [32.3,69.9,35;38.7,68.5,40;48.6,75.4,40]; # self-made (nothing in TCR)
nhcvect = [nhcvect;nhc_atl_2023_126];
myvect = [myvect;my_atl_2023_126];
btkvect = [btkvect;btk_atl_2023_126];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Epac 061 ... LIDIA around 2023-10-05-21Z
# my at https://twitter.com/elioeFIN/status/1710041509104427076
# NHC at https://www.nhc.noaa.gov/archive/2023/ep15/ep152023.discus.011.shtml?

nhc_epac_2023_061 = [16.2,111.1,55;16.4,113.0,65;17.5,113.9,65;18.3,113.1,55;18.8,111.6,55];
my_epac_2023_061 = [16.1,111.0,50;16.5,113.1,65;17.4,114.2,60;18.2,113.4,50;18.6,112.1,50];
btk_epac_2023_061 = [16.2,110.9,60;16.0,112.2,55;17.3,112.8,60;17.8,111.4,65;19.3,107.1,105]; # TCR
nhcvect = [nhcvect;nhc_epac_2023_061];
myvect = [myvect;my_epac_2023_061];
btkvect = [btkvect;btk_epac_2023_061];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Atl 127 ... PHILIPPE around 2023-10-06-03Z
# my at https://twitter.com/elioeFIN/status/1710127464343646293
# NHC at https://www.nhc.noaa.gov/archive/2023/al17/al172023.discus.051.shtml?

nhc_atl_2023_127 = [33.6,65.9,50;40.5,66.9,50;49.5,73.0,35];
my_atl_2023_127 = [34.0,65.0,50;41.8,66.7,50;50.8,73.7,35];
btk_atl_2023_127 = [33.3,69.6,35;42.3,68.7,40;49.2,77.6,40]; # self-made (nothing in TCR)
nhcvect = [nhcvect;nhc_atl_2023_127];
myvect = [myvect;my_atl_2023_127];
btkvect = [btkvect;btk_atl_2023_127];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Epac 062 ... LIDIA around 2023-10-06-03Z
# my at https://twitter.com/elioeFIN/status/1710130707526222158
# NHC at https://www.nhc.noaa.gov/archive/2023/ep15/ep152023.discus.012.shtml?

nhc_epac_2023_062 = [15.9,111.4,60;16.4,113.2,70;17.3,113.7,65;18.2,112.5,55;18.6,110.6,55];
my_epac_2023_062 = [16.2,111.4,60;16.6,113.3,65;17.4,113.6,60;18.0,112.0,55;18.2,110.9,50];
btk_epac_2023_062 = [16.2,111.3,55;16.0,112.4,60;17.8,112.7,60;18.1,110.6,70;20.1,105.5,120]; # TCR
nhcvect = [nhcvect;nhc_epac_2023_062];
myvect = [myvect;my_epac_2023_062];
btkvect = [btkvect;btk_epac_2023_062];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 063 ... LIDIA around 2023-10-06-21Z
# my at https://twitter.com/elioeFIN/status/1710397845830877590
# NHC at https://www.nhc.noaa.gov/archive/2023/ep15/ep152023.discus.015.shtml?

nhc_epac_2023_063 = [16.6,112.8,65;17.6,113.6,60;18.7,112.7,60;19.8,109.8,60];
my_epac_2023_063 = [16.7,112.6,60;17.7,113.5,55;18.9,112.4,55;19.7,110.6,55];
btk_epac_2023_063 = [16.0,112.2,55;17.3,112.8,60;17.8,111.4,65;19.3,107.1,105]; # TCR
nhcvect = [nhcvect;nhc_epac_2023_063];
myvect = [myvect;my_epac_2023_063];
btkvect = [btkvect;btk_epac_2023_063];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Wpac 059 ... KOINU around 2023-10-06-21Z
# my at https://twitter.com/elioeFIN/status/1710401642808390092

nhc_wpac_2023_059 = [21.1,114.4,75;20.7,112.9,55;19.7,110.7,40];
my_wpac_2023_059 = [21.2,114.5,85;21.0,112.8,65;20.8,110.0,40];
btk_wpac_2023_059 = [21.4,114.9,85;21.7,113.6,70;20.9,111.8,25]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_059];
myvect = [myvect;my_wpac_2023_059];
btkvect = [btkvect;btk_wpac_2023_059];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Epac 064 ... LIDIA around 2023-10-07-03Z
# my at https://twitter.com/elioeFIN/status/1710493388619833473
# NHC at https://www.nhc.noaa.gov/archive/2023/ep15/ep152023.discus.016.shtml?

nhc_epac_2023_064 = [16.8,113.0,65;17.9,113.2,60;19.0,111.5,65;20.5,108.5,60];
my_epac_2023_064 = [16.9,113.0,55;18.0,113.4,55;19.1,111.4,60;20.6,108.0,50];
btk_epac_2023_064 = [16.0,112.4,60;17.8,112.7,60;18.1,110.6,70;20.1,105.5,120]; # TCR
nhcvect = [nhcvect;nhc_epac_2023_064];
myvect = [myvect;my_epac_2023_064];
btkvect = [btkvect;btk_epac_2023_064];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Wpac 060 ... BOLAVEN around 2023-10-07-21Z
# my at https://twitter.com/elioeFIN/status/1710755983327211949

nhc_wpac_2023_060 = [10.5,151.1,50;12.3,147.5,75;15.2,144.1,100;19.2,142.5,115;22.9,143.7,120];
my_wpac_2023_060 = [10.5,150.8,55;12.3,147.2,80;15.7,143.8,100;19.1,142.7,130;21.6,143.2,125];
btk_wpac_2023_060 = [10.7,151.5,50;13.0,147.5,60;16.0,144.5,100;19.7,142.9,165;24.1,145.4,140]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_060];
myvect = [myvect;my_wpac_2023_060];
btkvect = [btkvect;btk_wpac_2023_060];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Epac 065 ... LIDIA around 2023-10-07-21Z
# my at https://twitter.com/elioeFIN/status/1710762264683225341
# NHC at https://www.nhc.noaa.gov/archive/2023/ep15/ep152023.discus.019.shtml?

nhc_epac_2023_065 = [17.4,112.8,60;18.8,111.6,65;20.3,107.7,65];
my_epac_2023_065 = [17.2,112.7,55;18.7,111.5,60;20.1,107.2,65];
btk_epac_2023_065 = [17.3,112.8,60;17.8,111.4,65;19.3,107.1,105]; # TCR
nhcvect = [nhcvect;nhc_epac_2023_065];
myvect = [myvect;my_epac_2023_065];
btkvect = [btkvect;btk_epac_2023_065];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Wpac 061 ... BOLAVEN around 2023-10-08-21Z
# my at https://twitter.com/elioeFIN/status/1711121269012197704

nhc_wpac_2023_061 = [12.7,148.1,60;15.5,144.8,90;19.6,143.5,125;23.2,145.0,125;27.8,149.2,115];
my_wpac_2023_061 = [12.8,148.3,70;16.0,144.8,100;20.2,143.0,125;23.8,145.0,135;28.1,148.7,115];
btk_wpac_2023_061 = [13.0,147.5,60;16.0,144.5,100;19.7,142.9,165;24.1,145.4,140;31.2,153.2,90]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_061];
myvect = [myvect;my_wpac_2023_061];
btkvect = [btkvect;btk_wpac_2023_061];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Epac 066 ... LIDIA around 2023-10-08-21Z
# my at https://twitter.com/elioeFIN/status/1711125707894460786
# NHC at https://www.nhc.noaa.gov/archive/2023/ep15/ep152023.discus.023.shtml?

nhc_epac_2023_066 = [18.9,111.6,65;20.9,107.4,80];
my_epac_2023_066 = [19.0,111.4,60;21.3,106.6,80];
btk_epac_2023_066 = [17.8,111.4,65;19.3,107.1,105]; # TCR
nhcvect = [nhcvect;nhc_epac_2023_066];
myvect = [myvect;my_epac_2023_066];
btkvect = [btkvect;btk_epac_2023_066];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Epac 067 ... 16E around 2023-10-08-21Z
# my at https://twitter.com/elioeFIN/status/1711127940631597294
# NHC at https://www.nhc.noaa.gov/archive/2023/ep16/ep162023.discus.004.shtml?

nhc_epac_2023_067 = [17.2,101.7,45];
my_epac_2023_067 = [16.8,101.5,30];
btk_epac_2023_067 = [17.3,101.1,60]; # TCR
nhcvect = [nhcvect;nhc_epac_2023_067];
myvect = [myvect;my_epac_2023_067];
btkvect = [btkvect;btk_epac_2023_067];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;2];

# Wpac 062 ... BOLAVEN around 2023-10-09-03Z
# my at https://twitter.com/elioeFIN/status/1711213900518023475

nhc_wpac_2023_062 = [13.2,146.9,70;16.5,144.3,110;20.1,143.6,130;24.0,145.7,120;28.6,149.8,105];
my_wpac_2023_062 = [13.4,146.8,80;16.9,144.0,110;21.0,143.1,135;24.5,145.5,125;29.9,151.4,100];
btk_wpac_2023_062 = [13.7,146.5,70;17.1,144.0,135;20.6,143.0,155;25.6,146.9,125;34.3,156.3,80]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_062];
myvect = [myvect;my_wpac_2023_062];
btkvect = [btkvect;btk_wpac_2023_062];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 063 ... BOLAVEN around 2023-10-09-21Z
# my at https://twitter.com/elioeFIN/status/1711485530146222514

nhc_wpac_2023_063 = [16.5,143.9,85;20.2,142.5,130;23.8,144.4,125;28.8,149.2,110;36.2,158.3,90];
my_wpac_2023_063 = [16.7,144.1,85;20.3,142.4,120;24.1,144.6,120;29.7,148.8,95;38.5,159.1,80];
btk_wpac_2023_063 = [16.0,144.5,100;19.7,142.9,165;24.1,145.4,140;31.2,153.2,90;42.4,167.8,55]; # JTWC best track
nhcvect = [nhcvect;nhc_wpac_2023_063];
myvect = [myvect;my_wpac_2023_063];
btkvect = [btkvect;btk_wpac_2023_063];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Atl 128 ... SEAN around 2023-10-11-21Z
# my at https://twitter.com/elioeFIN/status/1712210067066388650
# NHC at https://www.nhc.noaa.gov/archive/2023/al19/al192023.discus.004.shtml?

nhc_atl_2023_128 = [12.7,38.1,40;14.3,41.1,40;16.4,43.6,35;18.1,46.1,30;18.7,50.2,30];
my_atl_2023_128 = [12.4,38.4,40;14.1,41.1,40;16.3,43.3,35;18.3,46.2,30;19.1,50.3,35];
btk_atl_2023_128 = [13.3,37.8,40;14.6,42.2,35;16.3,44.5,30;17.9,47.6,25;18.4,52.2,20]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_128];
myvect = [myvect;my_atl_2023_128];
btkvect = [btkvect;btk_atl_2023_128];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 129 ... SEAN around 2023-10-12-21Z
# my at https://twitter.com/elioeFIN/status/1712572505423052864
# NHC at https://www.nhc.noaa.gov/archive/2023/al19/al192023.discus.008.shtml?

nhc_atl_2023_129 = [15.5,41.2,35;18.0,43.8,30;19.9,45.9,25];
my_atl_2023_129 = [15.2,41.2,35;17.8,43.9,30;19.2,46.5,25];
btk_atl_2023_129 = [14.6,42.2,35;16.3,44.5,30;17.9,47.6,25]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_129];
myvect = [myvect;my_atl_2023_129];
btkvect = [btkvect;btk_atl_2023_129];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Atl 130 ... SEAN around 2023-10-13-03Z
# my at https://twitter.com/elioeFIN/status/1712662360664506435
# NHC at https://www.nhc.noaa.gov/archive/2023/al19/al192023.discus.009.shtml?

nhc_atl_2023_130 = [16.1,42.3,35;18.4,44.7,30;20.1,46.6,25];
my_atl_2023_130 = [15.9,42.2,35;18.3,44.7,25;20.1,46.6,25];
btk_atl_2023_130 = [14.9,42.7,35;16.8,45.1,30;18.1,48.6,25]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_130];
myvect = [myvect;my_atl_2023_130];
btkvect = [btkvect;btk_atl_2023_130];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Epac 068 ... NORMA around 2023-10-17-21Z
# my at https://twitter.com/elioeFIN/status/1714383170584367117
# NHC at https://www.nhc.noaa.gov/archive/2023/ep17/ep172023.discus.001.shtml?

nhc_epac_2023_068 = [15.0,108.4,60;16.9,108.8,85;18.7,109.6,95;20.9,110.3,90;22.5,110.0,85];
my_epac_2023_068 = [15.2,108.4,55;17.2,109.0,80;19.2,109.8,95;21.0,111.2,90;22.6,111.5,85];
btk_epac_2023_068 = [15.3,107.9,65;17.3,108.0,110;19.7,109.5,105;22.9,110.3,75;24.7,109.3,55]; # TCR
nhcvect = [nhcvect;nhc_epac_2023_068];
myvect = [myvect;my_epac_2023_068];
btkvect = [btkvect;btk_epac_2023_068];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 069 ... NORMA around 2023-10-18-03Z
# my at https://twitter.com/elioeFIN/status/1714475109480640966
# NHC at https://www.nhc.noaa.gov/archive/2023/ep17/ep172023.discus.002.shtml?

nhc_epac_2023_069 = [15.5,108.5,70;17.3,108.8,90;19.2,109.6,95;21.3,110.2,90;22.5,109.8,85];
my_epac_2023_069 = [15.7,108.4,70;17.8,108.8,85;19.6,109.5,90;21.6,110.3,85;22.8,109.6,75];
btk_epac_2023_069 = [16.0,107.9,80;17.9,108.2,105;20.5,109.9,105;23.6,110.1,60;24.7,109.0,45]; # TCR
nhcvect = [nhcvect;nhc_epac_2023_069];
myvect = [myvect;my_epac_2023_069];
btkvect = [btkvect;btk_epac_2023_069];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 070 ... NORMA around 2023-10-18-21Z
# my at https://twitter.com/elioeFIN/status/1714752504691323061
# NHC at https://www.nhc.noaa.gov/archive/2023/ep17/ep172023.discus.005.shtml?

nhc_epac_2023_070 = [17.7,108.3,100;19.6,109.1,85;22.1,110.0,70;22.7,109.9,65];
my_epac_2023_070 = [17.6,108.2,95;20.1,109.1,80;22.7,109.8,65;22.3,109.8,55];
btk_epac_2023_070 = [17.3,108.0,110;19.7,109.5,105;22.9,110.3,75;24.7,109.3,55]; # TCR
nhcvect = [nhcvect;nhc_epac_2023_070];
myvect = [myvect;my_epac_2023_070];
btkvect = [btkvect;btk_epac_2023_070];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Atl 131 ... TAMMY around 2023-10-18-21Z
# my at https://twitter.com/elioeFIN/status/1714748910218985501
# NHC at https://www.nhc.noaa.gov/archive/2023/al20/al202023.discus.001.shtml?

nhc_atl_2023_131 = [13.5,55.9,50;15.0,60.2,55;17.5,62.7,55;21.4,63.4,60;26.1,60.2,60];
my_atl_2023_131 = [13.3,56.1,50;14.8,60.4,55;17.5,63.2,55;20.8,64.8,55;24.9,63.0,55];
btk_atl_2023_131 = [13.5,56.4,50;14.1,58.9,65;16.6,61.0,75;19.4,63.4,75;22.1,63.8,65]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_131];
myvect = [myvect;my_atl_2023_131];
btkvect = [btkvect;btk_atl_2023_131];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 071 ... NORMA around 2023-10-19-21Z
# my at https://twitter.com/elioeFIN/status/1715113274386096135
# NHC at https://www.nhc.noaa.gov/archive/2023/ep17/ep172023.discus.009.shtml?

nhc_epac_2023_071 = [19.8,109.1,95;22.5,109.7,70;24.2,108.9,50];
my_epac_2023_071 = [19.9,108.8,90;23.1,109.2,65;24.7,108.5,45];
btk_epac_2023_071 = [19.7,109.5,105;22.9,110.3,75;24.7,109.3,55]; # TCR
nhcvect = [nhcvect;nhc_epac_2023_071];
myvect = [myvect;my_epac_2023_071];
btkvect = [btkvect;btk_epac_2023_071];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Atl 132 ... TAMMY around 2023-10-19-21Z
# my at https://twitter.com/elioeFIN/status/1715116898940072212
# NHC at https://www.nhc.noaa.gov/archive/2023/al20/al202023.discus.006.shtml?

nhc_atl_2023_132 = [15.0,59.9,55;17.9,62.4,65;21.0,63.3,75;24.3,62.3,75;28.5,57.5,75];
my_atl_2023_132 = [14.7,59.7,60;17.4,62.2,65;19.8,63.3,75;22.8,63.4,70;27.3,58.3,80];
btk_atl_2023_132 = [14.1,58.9,65;16.6,61.0,75;19.4,63.4,75;22.1,63.8,65;24.0,62.0,65]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_132];
myvect = [myvect;my_atl_2023_132];
btkvect = [btkvect;btk_atl_2023_132];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 133 ... TAMMY around 2023-10-20-03Z
# my at https://twitter.com/elioeFIN/status/1715202349742854147
# NHC at https://www.nhc.noaa.gov/archive/2023/al20/al202023.discus.007.shtml?

nhc_atl_2023_133 = [15.3,59.9,60;18.0,62.0,70;21.5,63.0,80;24.0,62.0,80;28.0,57.5,75];
my_atl_2023_133 = [15.2,59.9,65;18.0,62.0,70;20.8,63.4,80;23.2,62.5,75;27.3,57.8,70];
btk_atl_2023_133 = [14.5,59.6,70;17.5,61.7,80;20.2,63.9,75;22.6,63.5,65;24.5,61.2,75]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_133];
myvect = [myvect;my_atl_2023_133];
btkvect = [btkvect;btk_atl_2023_133];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 072 ... NORMA around 2023-10-20-03Z
# my at https://twitter.com/elioeFIN/status/1715205711888556513
# NHC at https://www.nhc.noaa.gov/archive/2023/ep17/ep172023.discus.010.shtml?

nhc_epac_2023_072 = [20.6,109.2,90;23.2,109.4,65;24.4,108.1,50];
my_epac_2023_072 = [20.5,109.0,80;23.1,109.0,60;24.4,108.1,40];
btk_epac_2023_072 = [20.5,109.9,105;23.6,110.1,60;24.7,109.0,45]; # TCR
nhcvect = [nhcvect;nhc_epac_2023_072];
myvect = [myvect;my_epac_2023_072];
btkvect = [btkvect;btk_epac_2023_072];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Atl 134 ... TAMMY around 2023-10-20-15Z
# my at https://twitter.com/elioeFIN/status/1715385616555208796
# NHC at https://www.nhc.noaa.gov/archive/2023/al20/al202023.discus.009.shtml?

nhc_atl_2023_134 = [16.4,60.9,75;19.3,62.7,80;22.0,63.3,80;24.4,61.4,80;28.2,57.7,75];
my_atl_2023_134 = [16.2,60.8,75;19.2,62.9,75;21.7,63.4,75;23.6,61.2,80;26.9,59.3,80];
btk_atl_2023_134 = [15.6,60.6,75;18.7,62.8,75;21.6,64.0,70;23.6,62.6,65;26.1,59.4,95]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_134];
myvect = [myvect;my_atl_2023_134];
btkvect = [btkvect;btk_atl_2023_134];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 073 ... NORMA around 2023-10-20-15Z
# my at https://twitter.com/elioeFIN/status/1715388255422628005
# NHC at https://www.nhc.noaa.gov/archive/2023/ep17/ep172023.discus.012.shtml?

nhc_epac_2023_073 = [22.1,109.8,75;23.9,109.1,60;24.7,107.4,40];
my_epac_2023_073 = [22.0,110.1,75;24.1,109.0,50;24.7,107.6,35];
btk_epac_2023_073 = [22.3,110.2,90;24.6,109.6,55;24.7,107.9,30]; # TCR
nhcvect = [nhcvect;nhc_epac_2023_073];
myvect = [myvect;my_epac_2023_073];
btkvect = [btkvect;btk_epac_2023_073];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Atl 135 ... TAMMY around 2023-10-21-21Z
# my at https://twitter.com/elioeFIN/status/1715839512146768026
# NHC at https://www.nhc.noaa.gov/archive/2023/al20/al202023.discus.014.shtml?

nhc_atl_2023_135 = [19.5,62.9,80;22.2,63.7,85;23.8,63.4,85;25.6,62.9,75;28.0,62.6,60];
my_atl_2023_135 = [19.4,62.9,80;22.2,63.6,85;24.0,62.6,80;26.9,60.6,70;28.8,62.9,35];
btk_atl_2023_135 = [19.4,63.4,75;22.1,63.8,65;24.0,62.0,65;27.5,58.3,85;31.0,59.5,65]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_135];
myvect = [myvect;my_atl_2023_135];
btkvect = [btkvect;btk_atl_2023_135];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 074 ... NORMA around 2023-10-21-21Z
# my at https://twitter.com/elioeFIN/status/1715841734012182844
# NHC at https://www.nhc.noaa.gov/archive/2023/ep17/ep172023.discus.017.shtml?

nhc_epac_2023_074 = [24.5,109.1,55];
my_epac_2023_074 = [24.6,109.1,50];
btk_epac_2023_074 = [24.7,109.3,55]; # TCR
nhcvect = [nhcvect;nhc_epac_2023_074];
myvect = [myvect;my_epac_2023_074];
btkvect = [btkvect;btk_epac_2023_074];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;2];

# Atl 136 ... TAMMY around 2023-10-22-15Z
# my at https://twitter.com/elioeFIN/status/1716114822641713275
# NHC at https://www.nhc.noaa.gov/archive/2023/al20/al202023.discus.017.shtml?

nhc_atl_2023_136 = [21.4,63.9,75;23.0,62.9,75;24.5,61.0,75;27.5,60.5,65;30.0,63.9,55];
my_atl_2023_136 = [21.2,64.0,75;22.8,63.1,70;24.6,61.4,65;28.4,60.3,60;30.4,63.4,45];
btk_atl_2023_136 = [21.6,64.0,70;23.6,62.6,65;26.1,59.4,95;30.5,58.8,70;32.0,61.0,55]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_136];
myvect = [myvect;my_atl_2023_136];
btkvect = [btkvect;btk_atl_2023_136];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 137 ... TAMMY around 2023-10-23-03Z
# my at https://twitter.com/elioeFIN/status/1716288620452036706
# NHC at https://www.nhc.noaa.gov/archive/2023/al20/al202023.discus.019.shtml?

nhc_atl_2023_137 = [22.5,63.4,80;24.0,61.6,80;26.6,59.5,75;29.6,60.5,60;30.5,64.5,50];
my_atl_2023_137 = [22.5,63.6,75;24.1,62.0,75;27.2,60.5,70;30.1,60.5,55;31.3,64.1,40];
btk_atl_2023_137 = [22.6,63.5,65;24.5,61.2,75;29.1,57.8,80;31.5,60.1,60;32.6,61.5,50]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_137];
myvect = [myvect;my_atl_2023_137];
btkvect = [btkvect;btk_atl_2023_137];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 075 ... OTIS around 2023-10-23-03Z
# my at https://twitter.com/elioeFIN/status/1716293818838872516
# NHC at https://www.nhc.noaa.gov/archive/2023/ep18/ep182023.discus.003.shtml?

nhc_epac_2023_075 = [12.6,97.6,40;14.5,98.3,50];
my_epac_2023_075 = [12.5,97.5,35;15.1,98.1,45];
btk_epac_2023_075 = [13.3,98.0,50;15.7,99.6,130]; # TCR
nhcvect = [nhcvect;nhc_epac_2023_075];
myvect = [myvect;my_epac_2023_075];
btkvect = [btkvect;btk_epac_2023_075];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Atl 138 ... TAMMY around 2023-10-23-21Z
# my at https://twitter.com/elioeFIN/status/1716563160889487616
# NHC at https://www.nhc.noaa.gov/archive/2023/al20/al202023.discus.022.shtml?

nhc_atl_2023_138 = [24.0,61.7,75;26.8,59.0,75;30.3,59.3,60;31.7,62.1,50;32.5,65.2,45];
my_atl_2023_138 = [23.9,61.8,75;27.0,59.2,75;31.0,59.2,50;32.6,60.3,40;33.3,62.8,40];
btk_atl_2023_138 = [24.0,62.0,65;27.5,58.3,85;31.0,59.5,65;32.3,61.4,55;33.3,58.0,40]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_138];
myvect = [myvect;my_atl_2023_138];
btkvect = [btkvect;btk_atl_2023_138];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 139 ... TAMMY around 2023-10-24-21Z
# my at https://twitter.com/elioeFIN/status/1716924282633375802
# NHC at https://www.nhc.noaa.gov/archive/2023/al20/al202023.discus.026.shtml?

nhc_atl_2023_139 = [27.5,59.6,70;30.4,60.3,55;31.6,62.2,50;32.0,63.4,45;32.0,64.4,40];
my_atl_2023_139 = [27.3,59.5,70;30.6,60.6,50;32.2,61.1,40;33.0,60.6,40;32.7,60.2,35];
btk_atl_2023_139 = [27.5,58.3,85;31.0,59.5,65;32.3,61.4,55;33.3,58.0,40;30.9,50.9,35]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_139];
myvect = [myvect;my_atl_2023_139];
btkvect = [btkvect;btk_atl_2023_139];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 140 ... TAMMY around 2023-10-25-21Z
# my at https://twitter.com/elioeFIN/status/1717288310727475631
# NHC at https://www.nhc.noaa.gov/archive/2023/al20/al202023.discus.030.shtml?

nhc_atl_2023_140 = [30.5,59.4,70;31.5,61.1,55;32.1,61.7,50;32.5,61.5,45;32.8,61.0,40];
my_atl_2023_140 = [30.5,59.7,65;31.4,61.8,50;32.2,60.1,50;32.1,58.5,45;31.9,60.2,40];
btk_atl_2023_140 = [31.0,59.5,65;32.3,61.4,55;33.3,58.0,40;30.9,50.9,35;26.5,48.1,25]; # TCR
nhcvect = [nhcvect;nhc_atl_2023_140];
myvect = [myvect;my_atl_2023_140];
btkvect = [btkvect;btk_atl_2023_140];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 076 ... 19E around 2023-10-29-21Z
# my at https://twitter.com/elioeFIN/status/1718738233524195578
# NHC at https://www.nhc.noaa.gov/archive/2023/ep19/ep192023.discus.005.shtml?

nhc_epac_2023_076 = [11.2,91.1,50;12.0,89.3,60;11.4,89.7,45;10.0,93.0,40;9.0,97.5,40];
my_epac_2023_076 = [11.3,90.9,45;11.9,89.1,50;11.5,89.4,40;10.1,92.6,35;9.0,97.9,40];
btk_epac_2023_076 = [11.1,91.4,45;11.4,89.8,50;12.4,91.1,45;11.6,96.3,55;10.2,104.0,40]; # TCR
nhcvect = [nhcvect;nhc_epac_2023_076];
myvect = [myvect;my_epac_2023_076];
btkvect = [btkvect;btk_epac_2023_076];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 077 ... PILAR around 2023-10-30-15Z
# my at https://twitter.com/elioeFIN/status/1719010337293320513
# NHC at https://www.nhc.noaa.gov/archive/2023/ep19/ep192023.discus.008.shtml?

nhc_epac_2023_077 = [11.5,89.4,55;12.1,89.1,60;11.2,92.0,45;10.0,97.0,40;9.3,103.0,40];
my_epac_2023_077 = [11.5,89.5,55;12.3,89.0,55;11.5,91.7,40;10.4,97.2,35;9.3,103.5,45];
btk_epac_2023_077 = [11.2,90.2,45;12.4,90.1,50;12.2,94.6,50;10.3,102.2,45;10.1,108.5,40]; # TCR
nhcvect = [nhcvect;nhc_epac_2023_077];
myvect = [myvect;my_epac_2023_077];
btkvect = [btkvect;btk_epac_2023_077];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 078 ... PILAR around 2023-10-31-15Z
# my at https://twitter.com/elioeFIN/status/1719370109838295316
# NHC at https://www.nhc.noaa.gov/archive/2023/ep19/ep192023.discus.012.shtml?

nhc_epac_2023_078 = [11.7,90.2,50;11.1,93.4,45;9.9,98.5,45;9.4,103.8,45;9.8,108.7,50];
my_epac_2023_078 = [11.6,90.1,45;11.5,93.1,45;10.4,98.2,40;9.0,104.2,40;9.4,109.6,45];
btk_epac_2023_078 = [12.4,90.1,50;12.2,94.6,50;10.3,102.2,45;10.1,108.5,40;10.5,113.0,40]; # TCR
nhcvect = [nhcvect;nhc_epac_2023_078];
myvect = [myvect;my_epac_2023_078];
btkvect = [btkvect;btk_epac_2023_078];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 079 ... PILAR around 2023-11-01-09Z
# my at https://twitter.com/elioeFIN/status/1719640106758439227
# NHC at https://www.nhc.noaa.gov/archive/2023/ep19/ep192023.discus.015.shtml?

nhc_epac_2023_079 = [11.7,92.5,45;10.2,98.1,40;9.2,103.5,40;9.5,108.5,40;10.0,111.5,35];
my_epac_2023_079 = [11.9,92.5,40;10.7,98.3,40;9.8,103.6,35;10.3,109.1,35;10.6,112.5,30];
btk_epac_2023_079 = [12.4,93.3,45;10.6,100.2,45;10.1,107.1,40;10.4,112.0,40;10.6,114.7,25]; # TCR
nhcvect = [nhcvect;nhc_epac_2023_079];
myvect = [myvect;my_epac_2023_079];
btkvect = [btkvect;btk_epac_2023_079];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 080 ... PILAR around 2023-11-02-03Z
# my at https://twitter.com/elioeFIN/status/1719915076667228620
# NHC at https://www.nhc.noaa.gov/archive/2023/ep19/ep192023.discus.018.shtml?

nhc_epac_2023_080 = [10.8,97.8,40;9.4,104.1,35;9.7,109.2,35;10.5,113.1,30;11.3,116.0,30];
my_epac_2023_080 = [10.9,97.7,35;9.8,104.0,35;10.1,109.2,30;10.8,113.5,25;11.8,116.3,25];
btk_epac_2023_080 = [11.0,98.2,50;10.1,105.7,40;10.3,111.0,40;10.6,114.4,30;11.0,116.2,25]; # TCR
nhcvect = [nhcvect;nhc_epac_2023_080];
myvect = [myvect;my_epac_2023_080];
btkvect = [btkvect;btk_epac_2023_080];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 081 ... PILAR around 2023-11-02-21Z
# my at https://twitter.com/elioeFIN/status/1720185191153484039
# NHC at https://www.nhc.noaa.gov/archive/2023/ep19/ep192023.discus.021.shtml?

nhc_epac_2023_081 = [10.4,102.6,50;10.5,108.1,50;11.2,112.3,50;12.3,114.9,45;13.6,117.4,35];
my_epac_2023_081 = [10.3,102.4,45;10.7,107.9,50;11.3,112.2,50;12.7,114.9,45;14.5,117.8,30];
btk_epac_2023_081 = [10.2,104.0,40;10.2,109.8,40;10.5,113.9,35;10.7,115.3,25;13.3,118.7,20]; # TCR
nhcvect = [nhcvect;nhc_epac_2023_081];
myvect = [myvect;my_epac_2023_081];
btkvect = [btkvect;btk_epac_2023_081];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 082 ... PILAR around 2023-11-03-21Z
# my at https://twitter.com/elioeFIN/status/1720544747217940777
# NHC at https://www.nhc.noaa.gov/archive/2023/ep19/ep192023.discus.025.shtml?

nhc_epac_2023_082 = [10.0,109.6,40;10.8,113.9,40;12.1,116.7,35;13.8,119.1,30;15.5,121.6,25];
my_epac_2023_082 = [10.0,109.8,40;11.0,114.1,45;12.3,116.7,30;14.1,119.2,25;15.5,122.1,20];
btk_epac_2023_082 = [10.2,109.8,40;10.5,113.9,35;10.7,115.3,25;13.3,118.7,20;14.0,121.9,20]; # TCR (except days 4-5 self-made)
nhcvect = [nhcvect;nhc_epac_2023_082];
myvect = [myvect;my_epac_2023_082];
btkvect = [btkvect;btk_epac_2023_082];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 083 ... PILAR around 2023-11-05-21Z
# my at https://twitter.com/elioeFIN/status/1721270749925622066
# NHC at https://www.nhc.noaa.gov/archive/2023/ep19/ep192023.discus.033.shtml?

nhc_epac_2023_083 = [11.7,116.2,30;13.7,118.3,25];
my_epac_2023_083 = [11.9,116.0,30;13.9,118.7,20];
btk_epac_2023_083 = [10.7,115.3,25;13.3,118.7,20]; # TCR (except day 2 self-made)
nhcvect = [nhcvect;nhc_epac_2023_083];
myvect = [myvect;my_epac_2023_083];
btkvect = [btkvect;btk_epac_2023_083];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Wpac 064 ... TD / 17W around 2023-11-12-21Z
# my at https://twitter.com/elioeFIN/status/1723805903382544694

nhc_wpac_2023_064 = [7.2,138.3,25;7.5,137.1,30;8.1,135.0,35;9.5,131.5,40;10.8,128.9,45];
my_wpac_2023_064 = [6.4,139.3,30;7.4,137.6,35;8.2,135.3,35;9.8,132.4,50;11.4,128.2,45];
btk_wpac_2023_064 = [5.4,140.1,25;5.8,138.6,20;5.7,137.3,20;6.9,135.7,15;9.6,131.5,15]; # JTWC best track (days 1-2 only)
nhcvect = [nhcvect;nhc_wpac_2023_064];
myvect = [myvect;my_wpac_2023_064];
btkvect = [btkvect;btk_wpac_2023_064];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 065 ... TD / 17W around 2023-11-13-03Z
# my at https://twitter.com/elioeFIN/status/1723895268175696016

nhc_wpac_2023_065 = [6.8,137.7,30;7.4,135.9,35;8.1,133.0,40;9.3,129.4,45;10.8,126.1,40];
my_wpac_2023_065 = [6.6,139.2,35;7.2,136.5,40;7.8,133.4,45;9.5,131.1,45;11.2,128.4,40];
btk_wpac_2023_065 = [5.3,140.0,25;6.0,137.5,20;5.9,136.6,20;8.8,135.8,15;9.6,130.0,15]; # JTWC best track (days 1-2 only)
nhcvect = [nhcvect;nhc_wpac_2023_065];
myvect = [myvect;my_wpac_2023_065];
btkvect = [btkvect;btk_wpac_2023_065];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 001 ... MAL around 2023-11-14-21Z
# my at https://twitter.com/elioeFIN/status/1724530102325678117

nhc_shem_2024_001 = [23.3,178.9,55;27.8,182.8,40];
my_shem_2024_001 = [23.3,179.0,50;27.5,182.4,40];
btk_shem_2024_001 = [23.8,180.7,55;28.0,184.8,35];
nhcvect = [nhcvect;nhc_shem_2024_001];
myvect = [myvect;my_shem_2024_001];
btkvect = [btkvect;btk_shem_2024_001];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 002 ... MAL around 2023-11-15-03Z
# my at https://twitter.com/elioeFIN/status/1724623630762435063

nhc_shem_2024_002 = [24.7,180.5,60;29.3,184.7,45];
my_shem_2024_002 = [24.8,180.5,55;29.1,185.2,45];
btk_shem_2024_002 = [24.9,180.2,50;29.7,184.8,35];
nhcvect = [nhcvect;nhc_shem_2024_002];
myvect = [myvect;my_shem_2024_002];
btkvect = [btkvect;btk_shem_2024_002];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 003 ... MAL around 2023-11-15-21Z
# my at https://twitter.com/elioeFIN/status/1724892918153179386

nhc_shem_2024_003 = [28.0,183.2,40];
my_shem_2024_003 = [28.1,183.6,40];
btk_shem_2024_003 = [28.0,184.4,35];
nhcvect = [nhcvect;nhc_shem_2024_003];
myvect = [myvect;my_shem_2024_003];
btkvect = [btkvect;btk_shem_2024_003];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;3];

# Nio 28 ... BOB 05 / 07B around 2023-11-16-21Z
# my at https://twitter.com/elioeFIN/status/1725252015218217334

nhc_nio_2023_28 = [22.6,90.7,35];
my_nio_2023_28 = [22.7,90.9,35];
btk_nio_2023_28 = [23.7,91.7,30]; # JTWC best track
nhcvect = [nhcvect;nhc_nio_2023_28];
myvect = [myvect;my_nio_2023_28];
btkvect = [btkvect;btk_nio_2023_28];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;3];

# Atl 141 ... 22L around 2023-11-17-09Z
# my at https://twitter.com/elioeFIN/status/1725437569704378863
# NHC at https://www.nhc.noaa.gov/archive/2023/al22/al222023.discus.003.shtml?
# (nothing to be verified)

# Atl 142 ... 22L around 2023-11-17-21Z
# my at https://twitter.com/elioeFIN/status/1725622123601825874
# NHC at https://www.nhc.noaa.gov/archive/2023/al22/al222023.discus.005.shtml?
# (nothing to be verified)

# Atl 143 ... 22L around 2023-11-18-03Z
# my at https://twitter.com/elioeFIN/status/1725709606242947397
# NHC at https://www.nhc.noaa.gov/archive/2023/al22/al222023.discus.006.shtml?
# (nothing to be verified)

# Epac 084 ... 20E around 2023-11-23-21Z
# my at https://twitter.com/elioeFIN/status/1727793307122610680
# NHC at https://www.nhc.noaa.gov/archive/2023/ep20/ep202023.discus.002.shtml?

nhc_epac_2023_084 = [13.4,122.7,35;15.1,123.3,30;16.1,122.8,25];
my_epac_2023_084 = [13.3,122.7,35;14.9,123.8,25;15.8,123.5,20];
btk_epac_2023_084 = [13.5,122.7,35;15.0,122.9,40;14.3,124.0,25]; # TCR
nhcvect = [nhcvect;nhc_epac_2023_084];
myvect = [myvect;my_epac_2023_084];
btkvect = [btkvect;btk_epac_2023_084];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 085 ... 20E around 2023-11-24-03Z
# my at https://twitter.com/elioeFIN/status/1727881397656817995
# NHC at https://www.nhc.noaa.gov/archive/2023/ep20/ep202023.discus.003.shtml?

nhc_epac_2023_085 = [14.1,123.5,30;15.5,123.7,35;16.4,123.5,25];
my_epac_2023_085 = [14.2,123.6,25;15.6,124.4,30;16.4,124.0,20];
btk_epac_2023_085 = [13.9,122.8,35;14.9,122.7,40;14.1,124.4,25]; # TCR
nhcvect = [nhcvect;nhc_epac_2023_085];
myvect = [myvect;my_epac_2023_085];
btkvect = [btkvect;btk_epac_2023_085];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 086 ... 20E around 2023-11-24-09Z
# my at https://twitter.com/elioeFIN/status/1727973760148357152
# NHC at https://www.nhc.noaa.gov/archive/2023/ep20/ep202023.discus.004.shtml?

nhc_epac_2023_086 = [14.7,123.7,30;15.7,123.7,30;16.7,124.0,25];
my_epac_2023_086 = [14.7,123.8,30;15.6,124.1,25;16.7,124.2,25];
btk_epac_2023_086 = [14.3,122.9,35;14.5,123.1,35;13.8,124.7,25]; # TCR
nhcvect = [nhcvect;nhc_epac_2023_086];
myvect = [myvect;my_epac_2023_086];
btkvect = [btkvect;btk_epac_2023_086];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 087 ... 20E around 2023-11-24-21Z
# my at https://twitter.com/elioeFIN/status/1728159165682503751
# NHC at https://www.nhc.noaa.gov/archive/2023/ep20/ep202023.discus.006.shtml?

nhc_epac_2023_087 = [14.8,123.2,30;15.7,123.2,30];
my_epac_2023_087 = [14.8,123.1,30;15.4,123.5,25];
btk_epac_2023_087 = [15.0,122.9,40;14.3,124.0,25]; # TCR
nhcvect = [nhcvect;nhc_epac_2023_087];
myvect = [myvect;my_epac_2023_087];
btkvect = [btkvect;btk_epac_2023_087];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Nio 29 ... BOB 06 / 95B around 2023-12-01-21Z
# my at https://twitter.com/elioeFIN/status/1730694788511355088
# (no JTWC forecast)

# Nio 30 ... BOB 06 / 08B around 2023-12-03-03Z
# my at https://twitter.com/elioeFIN/status/1731149445637554365

nhc_nio_2023_30 = [13.2,81.1,55;15.2,80.4,55;17.0,80.5,30];
my_nio_2023_30 = [13.2,81.0,55;15.1,80.3,50;17.1,80.3,25];
btk_nio_2023_30 = [13.0,81.5,55;14.8,80.1,60;17.3,80.6,30]; # JTWC best track
nhcvect = [nhcvect;nhc_nio_2023_30];
myvect = [myvect;my_nio_2023_30];
btkvect = [btkvect;btk_nio_2023_30];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Nio 31 ... MICHAUNG around 2023-12-03-09Z
# my at https://twitter.com/elioeFIN/status/1731237282374455569

nhc_nio_2023_31 = [13.5,81.4,55;15.4,80.8,50;17.0,81.0,35];
my_nio_2023_31 = [13.5,81.3,55;15.3,80.9,50;17.0,81.4,30];
btk_nio_2023_31 = [13.5,81.0,55;15.6,80.1,55;18.3,81.1,25]; # JTWC best track
nhcvect = [nhcvect;nhc_nio_2023_31];
myvect = [myvect;my_nio_2023_31];
btkvect = [btkvect;btk_nio_2023_31];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Nio 32 ... MICHAUNG around 2023-12-03-15Z
# my at https://twitter.com/elioeFIN/status/1731321301636088158

nhc_nio_2023_32 = [14.2,81.4,55;16.0,81.3,50];
my_nio_2023_32 = [14.2,81.2,55;16.0,81.3,45];
btk_nio_2023_32 = [13.9,80.6,60;16.0,80.1,45]; # JTWC best track
nhcvect = [nhcvect;nhc_nio_2023_32];
myvect = [myvect;my_nio_2023_32];
btkvect = [btkvect;btk_nio_2023_32];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Nio 33 ... MICHAUNG around 2023-12-04-03Z
# my at https://twitter.com/elioeFIN/status/1731509149681201543

nhc_nio_2023_33 = [15.4,80.6,55;17.2,80.7,30];
my_nio_2023_33 = [15.3,80.5,55;16.9,80.7,30];
btk_nio_2023_33 = [14.8,80.1,60;17.3,80.6,30]; # JTWC best track
nhcvect = [nhcvect;nhc_nio_2023_33];
myvect = [myvect;my_nio_2023_33];
btkvect = [btkvect;btk_nio_2023_33];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Nio 34 ... MICHAUNG around 2023-12-04-09Z
# my at https://twitter.com/elioeFIN/status/1731600100722430352

nhc_nio_2023_34 = [15.4,80.6,50;17.3,80.9,30];
my_nio_2023_34 = [15.5,80.5,50;17.4,81.0,25];
btk_nio_2023_34 = [15.6,80.1,55;18.3,81.1,25]; # JTWC best track
nhcvect = [nhcvect;nhc_nio_2023_34];
myvect = [myvect;my_nio_2023_34];
btkvect = [btkvect;btk_nio_2023_34];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 004 ... JASPER around 2023-12-05-09Z
# my at https://twitter.com/elioeFIN/status/1731961379718877558

nhc_shem_2024_004 = [11.2,156.2,65;12.8,155.4,95;14.5,154.4,100;16.2,153.3,85;18.0,152.1,70];
my_shem_2024_004 = [11.2,156.3,65;12.9,155.8,95;14.7,154.7,95;16.2,153.4,85;17.7,152.2,65];
btk_shem_2024_004 = [11.0,157.2,70;12.8,156.8,90;14.5,156.5,115;16.0,155.5,80;16.1,154.0,55];
nhcvect = [nhcvect;nhc_shem_2024_004];
myvect = [myvect;my_shem_2024_004];
btkvect = [btkvect;btk_shem_2024_004];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 005 ... JASPER around 2023-12-06-03Z
# my at https://twitter.com/elioeFIN/status/1732230150660473090

nhc_shem_2024_005 = [12.7,157.0,95;14.6,156.3,105;15.8,155.5,90;16.8,154.2,70;17.9,152.1,60];
my_shem_2024_005 = [12.6,157.0,95;14.6,156.5,100;15.9,155.6,85;16.9,154.2,70;17.7,152.3,60];
btk_shem_2024_005 = [12.1,156.8,85;14.2,156.6,120;15.4,155.8,90;16.1,154.2,55;17.8,150.3,45];
nhcvect = [nhcvect;nhc_shem_2024_005];
myvect = [myvect;my_shem_2024_005];
btkvect = [btkvect;btk_shem_2024_005];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 006 ... JASPER around 2023-12-06-09Z
# my at https://twitter.com/elioeFIN/status/1732329294796308987

nhc_shem_2024_006 = [12.8,156.9,105;14.8,156.2,110;16.2,155.0,80;17.0,153.1,65;17.6,151.0,55];
my_shem_2024_006 = [12.8,156.8,105;14.9,156.3,105;16.4,155.1,75;17.0,153.1,65;17.6,151.4,55];
btk_shem_2024_006 = [12.8,156.8,90;14.5,156.5,115;16.0,155.5,80;16.1,154.0,55;17.5,149.6,45];
nhcvect = [nhcvect;nhc_shem_2024_006];
myvect = [myvect;my_shem_2024_006];
btkvect = [btkvect;btk_shem_2024_006];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 007 ... JASPER around 2023-12-06-15Z
# my at https://twitter.com/elioeFIN/status/1732412038734033037

nhc_shem_2024_007 = [13.5,156.7,110;15.3,155.8,95;16.4,154.3,75;16.9,152.4,65;17.2,150.4,55];
my_shem_2024_007 = [13.4,156.7,105;15.2,156.0,90;16.4,154.3,70;17.0,152.2,65;17.1,150.3,55];
btk_shem_2024_007 = [13.1,156.7,95;15.0,156.5,110;15.8,155.2,70;17.5,152.9,50;16.7,149.1,45];
nhcvect = [nhcvect;nhc_shem_2024_007];
myvect = [myvect;my_shem_2024_007];
btkvect = [btkvect;btk_shem_2024_007];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 008 ... JASPER around 2023-12-07-09Z
# my at https://twitter.com/elioeFIN/status/1732685476513927626

nhc_shem_2024_008 = [14.7,156.0,105;15.7,154.6,85;16.0,153.2,70;16.1,151.6,60;16.2,149.8,60];
my_shem_2024_008 = [14.6,156.0,100;15.6,154.8,80;15.9,153.1,65;15.9,151.1,60;16.2,149.5,60];
btk_shem_2024_008 = [14.5,156.5,115;16.0,155.5,80;16.1,154.0,55;17.5,149.6,45;15.9,147.2,60];
nhcvect = [nhcvect;nhc_shem_2024_008];
myvect = [myvect;my_shem_2024_008];
btkvect = [btkvect;btk_shem_2024_008];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 009 ... JASPER around 2023-12-07-15Z
# my at https://twitter.com/elioeFIN/status/1732771547431977287

nhc_shem_2024_009 = [14.9,155.8,105;15.9,154.3,80;16.1,152.4,70;16.2,150.5,65;16.2,148.4,70];
my_shem_2024_009 = [14.8,155.8,100;15.6,154.7,75;15.9,153.0,65;16.0,151.1,60;15.6,149.0,75];
btk_shem_2024_009 = [15.0,156.5,110;15.8,155.2,70;17.5,152.9,50;16.7,149.1,45;15.5,147.3,50];
nhcvect = [nhcvect;nhc_shem_2024_009];
myvect = [myvect;my_shem_2024_009];
btkvect = [btkvect;btk_shem_2024_009];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 010 ... JASPER around 2023-12-08-09Z
# my at https://twitter.com/elioeFIN/status/1733042630030659908

nhc_shem_2024_010 = [15.6,155.4,95;16.3,153.5,70;16.6,151.2,65;16.5,148.9,70;16.4,146.5,75];
my_shem_2024_010 = [15.6,155.5,90;16.0,153.6,70;16.4,151.5,60;15.7,149.5,65;15.5,146.9,80];
btk_shem_2024_010 = [16.0,155.5,80;16.1,154.0,55;17.5,149.6,45;15.9,147.2,60;15.7,145.8,60];
nhcvect = [nhcvect;nhc_shem_2024_010];
myvect = [myvect;my_shem_2024_010];
btkvect = [btkvect;btk_shem_2024_010];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 011 ... JASPER around 2023-12-08-15Z
# my at https://twitter.com/elioeFIN/status/1733136412415770671

nhc_shem_2024_011 = [16.0,155.2,85;16.6,153.2,65;16.8,150.9,60;16.7,148.6,65;16.6,146.2,75];
my_shem_2024_011 = [15.9,155.2,80;16.4,153.2,60;16.9,150.5,55;16.5,148.1,65;16.7,146.4,75];
btk_shem_2024_011 = [15.8,155.2,70;17.5,152.9,50;16.7,149.1,45;15.5,147.3,50;15.8,145.0,50];
nhcvect = [nhcvect;nhc_shem_2024_011];
myvect = [myvect;my_shem_2024_011];
btkvect = [btkvect;btk_shem_2024_011];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 012 ... JASPER around 2023-12-08-21Z
# my at https://twitter.com/elioeFIN/status/1733224817787031683

nhc_shem_2024_012 = [16.4,155.0,75;16.9,151.8,65;16.5,149.3,60;16.0,147.0,70;15.9,144.1,60];
my_shem_2024_012 = [16.4,154.8,70;16.9,151.6,60;16.4,149.2,55;16.3,146.8,65;16.5,144.0,60];
btk_shem_2024_012 = [15.9,154.9,60;17.5,151.5,50;16.6,148.5,50;15.6,147.0,45;15.9,144.4,40];
nhcvect = [nhcvect;nhc_shem_2024_012];
myvect = [myvect;my_shem_2024_012];
btkvect = [btkvect;btk_shem_2024_012];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 013 ... JASPER around 2023-12-09-09Z
# my at https://twitter.com/elioeFIN/status/1733409644041720145

nhc_shem_2024_013 = [17.3,153.1,65;17.5,150.0,55;16.8,147.7,60;16.6,144.8,55;16.7,142.1,40];
my_shem_2024_013 = [17.2,153.1,60;17.5,149.9,50;16.7,147.8,55;16.7,144.8,55;17.3,141.3,40];
btk_shem_2024_013 = [16.1,154.0,55;17.5,149.6,45;15.9,147.2,60;15.7,145.8,60;16.4,143.6,30];
nhcvect = [nhcvect;nhc_shem_2024_013];
myvect = [myvect;my_shem_2024_013];
btkvect = [btkvect;btk_shem_2024_013];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 014 ... JASPER around 2023-12-10-15Z
# my at https://twitter.com/elioeFIN/status/1733864679242387526

nhc_shem_2024_014 = [17.8,149.8,50;17.2,147.5,55;17.2,144.6,45;16.8,142.2,25];
my_shem_2024_014 = [17.7,149.8,45;17.2,147.4,50;17.1,144.2,40;16.6,141.4,25];
btk_shem_2024_014 = [16.7,149.1,45;15.5,147.3,50;15.8,145.0,50;15.8,143.3,25];
nhcvect = [nhcvect;nhc_shem_2024_014];
myvect = [myvect;my_shem_2024_014];
btkvect = [btkvect;btk_shem_2024_014];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 015 ... JASPER around 2023-12-11-03Z
# my at https://twitter.com/elioeFIN/status/1734048359361499397

nhc_shem_2024_015 = [17.2,147.3,45;16.9,144.8,40;16.9,142.5,25];
my_shem_2024_015 = [17.0,147.5,40;16.6,145.3,45;17.2,142.8,25];
btk_shem_2024_015 = [16.3,147.9,55;15.7,146.4,55;16.2,144.3,35];
nhcvect = [nhcvect;nhc_shem_2024_015];
myvect = [myvect;my_shem_2024_015];
btkvect = [btkvect;btk_shem_2024_015];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 016 ... JASPER around 2023-12-11-09Z
# my at https://twitter.com/elioeFIN/status/1734129983914721608

nhc_shem_2024_016 = [16.6,147.5,50;16.6,145.0,45;16.7,142.5,30];
my_shem_2024_016 = [16.3,147.3,45;15.9,144.6,40;16.2,141.7,25];
btk_shem_2024_016 = [15.9,147.2,60;15.7,145.8,60;16.4,143.6,30];
nhcvect = [nhcvect;nhc_shem_2024_016];
myvect = [myvect;my_shem_2024_016];
btkvect = [btkvect;btk_shem_2024_016];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 017 ... JASPER around 2023-12-11-21Z
# my at https://twitter.com/elioeFIN/status/1734312998695743743

nhc_shem_2024_017 = [16.0,146.3,60;16.3,143.5,35;15.9,141.0,25];
my_shem_2024_017 = [16.0,146.4,55;16.4,143.4,30;16.0,141.2,20];
btk_shem_2024_017 = [15.6,147.0,45;15.9,144.4,40;15.9,143.0,30];
nhcvect = [nhcvect;nhc_shem_2024_017];
myvect = [myvect;my_shem_2024_017];
btkvect = [btkvect;btk_shem_2024_017];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 018 ... JASPER around 2023-12-12-03Z
# my at https://twitter.com/elioeFIN/status/1734405186381045919

nhc_shem_2024_018 = [16.2,145.6,60;16.5,142.5,30];
my_shem_2024_018 = [16.0,145.6,55;16.2,142.1,25];
btk_shem_2024_018 = [15.7,146.4,55;16.2,144.3,35];
nhcvect = [nhcvect;nhc_shem_2024_018];
myvect = [myvect;my_shem_2024_018];
btkvect = [btkvect;btk_shem_2024_018];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 019 ... JASPER around 2023-12-12-09Z
# my at https://twitter.com/elioeFIN/status/1734495314826928189

nhc_shem_2024_019 = [16.0,145.0,55;16.0,142.3,30];
my_shem_2024_019 = [15.8,145.2,55;16.1,142.6,25];
btk_shem_2024_019 = [15.7,145.8,60;16.4,143.6,30];
nhcvect = [nhcvect;nhc_shem_2024_019];
myvect = [myvect;my_shem_2024_019];
btkvect = [btkvect;btk_shem_2024_019];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 020 ... ALVARO around 2024-01-02-03Z
# my at https://twitter.com/elioeFIN/status/1742012202003972174

nhc_shem_2024_020 = [21.9,48.6,40;24.7,52.4,40;27.7,56.4,35;29.1,59.7,30];
my_shem_2024_020 = [21.8,48.8,35; 24.3,52.1,35;27.6,56.0,30;29.0,59.3,30];
btk_shem_2024_020 = [22.7,49.8,40;26.3,54.2,35;30.7,60.4,35;31.3,64.8,35];
nhcvect = [nhcvect;nhc_shem_2024_020];
myvect = [myvect;my_shem_2024_020];
btkvect = [btkvect;btk_shem_2024_020];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 021 ... BELAL around 2024-01-13-03Z
# my at https://twitter.com/elioeFIN/status/1746006339006902678

nhc_shem_2024_021 = [17.5,54.2,70;19.5,54.9,95; 21.0,57.1,105;22.2,59.5,100;23.2,61.3,90];
my_shem_2024_021 = [17.6,54.1,75; 20.1,55.1,100;21.3,57.2,95; 21.9,59.0,95; 22.4,61.2,80];
btk_shem_2024_021 = [18.1,53.5,70;20.5,54.5,90; 22.1,57.8,65; 24.2,62.6,55; 24.0,64.9,45];
nhcvect = [nhcvect;nhc_shem_2024_021];
myvect = [myvect;my_shem_2024_021];
btkvect = [btkvect;btk_shem_2024_021];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 022 ... BELAL around 2024-01-14-21Z
# my at https://twitter.com/elioeFIN/status/1746645881846149370
# (no JTWC forecast)

# Shem 023 ... BELAL around 2024-01-15-03Z
# my at https://twitter.com/elioeFIN/status/1746724486240501946

nhc_shem_2024_023 = [21.9,57.3,90;22.6,60.8,80;22.5,63.0,75;21.8,63.8,70;21.4,63.8,65];
my_shem_2024_023 = [22.0,57.2,85; 22.5,60.8,75;22.3,63.6,70;22.2,64.4,65;23.1,63.4,60];
btk_shem_2024_023 = [22.1,57.8,65;24.2,62.6,55;24.0,64.9,45;23.3,64.6,30;24.3,62.4,25];
nhcvect = [nhcvect;nhc_shem_2024_023];
myvect = [myvect;my_shem_2024_023];
btkvect = [btkvect;btk_shem_2024_023];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 024 ... ANGGREK around 2024-01-15-21Z
# my at https://twitter.com/elioeFIN/status/1747001658989547798

nhc_shem_2024_024 = [9.6,94.5,45;10.9,95.0,60;11.8,95.0,60;12.9,94.8,50;13.4,94.6,40];
my_shem_2024_024 = [9.5,94.4,50; 10.3,94.9,60;11.6,94.7,60;12.4,94.1,45;12.9,94.1,35];
btk_shem_2024_024 = [9.5,94.2,45;10.6,94.0,45;12.2,93.2,45;12.7,92.4,55;12.0,92.6,70];
nhcvect = [nhcvect;nhc_shem_2024_024];
myvect = [myvect;my_shem_2024_024];
btkvect = [btkvect;btk_shem_2024_024];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 025 ... BELAL around 2024-01-16-03Z
# my at https://twitter.com/elioeFIN/status/1747088733139079213

nhc_shem_2024_025 = [23.2,61.9,65;23.2,64.2,60;23.1,62.8,50;23.7,61.7,35;25.8,61.7,35];
my_shem_2024_025 = [23.0,61.6,65;23.1,64.1,60;23.0,64.0,45;24.2,63.5,30;26.2,65.4,30];
btk_shem_2024_025 = [24.2,62.6,55;24.0,64.9,45;23.3,64.6,30;24.3,62.4,25;25.88,59.73,33.6]; # day 5 MFR data table
nhcvect = [nhcvect;nhc_shem_2024_025];
myvect = [myvect;my_shem_2024_025];
btkvect = [btkvect;btk_shem_2024_025];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 026 ... ANGGREK around 2024-01-16-21Z
# my at https://twitter.com/elioeFIN/status/1747359722603258247

nhc_shem_2024_026 = [10.8,94.3,60;12.5,93.6,55;13.1,92.7,50;13.2,91.5,40;13.2,90.2,35];
my_shem_2024_026 = [10.7,94.4,55;12.3,93.9,55;13.0,92.8,45;12.8,91.8,35;12.7,90.7,30];
btk_shem_2024_026 = [10.6,94.0,45;12.2,93.2,45;12.7,92.4,55;12.0,92.6,70;12.3,91.8,50];
nhcvect = [nhcvect;nhc_shem_2024_026];
myvect = [myvect;my_shem_2024_026];
btkvect = [btkvect;btk_shem_2024_026];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 027 ... BELAL around 2024-01-17-03Z
# my at https://twitter.com/elioeFIN/status/1747450031106400306

nhc_shem_2024_027 = [24.6,65.0,50;24.4,64.7,40;25.6,62.3,30];
my_shem_2024_027 = [24.2,64.8,50;23.9,63.7,35;25.8,61.8,30];
btk_shem_2024_027 = [24.0,64.9,45;23.3,64.6,30;24.3,62.4,25];
nhcvect = [nhcvect;nhc_shem_2024_027];
myvect = [myvect;my_shem_2024_027];
btkvect = [btkvect;btk_shem_2024_027];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 028 ... ANGGREK around 2024-01-17-09Z
# my at https://twitter.com/elioeFIN/status/1747541209893990777

nhc_shem_2024_028 = [11.6,93.7,60;12.7,93.0,55;13.2,92.2,55;13.1,91.0,50;12.9,89.8,50];
my_shem_2024_028 = [11.6,93.8,60;12.7,93.4,50;13.2,92.3,50;13.0,91.1,35;12.8,89.7,40];
btk_shem_2024_028 = [11.5,93.8,45;12.4,92.9,60;12.5,92.6,70;12.0,92.2,70;12.3,91.5,45];
nhcvect = [nhcvect;nhc_shem_2024_028];
myvect = [myvect;my_shem_2024_028];
btkvect = [btkvect;btk_shem_2024_028];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 029 ... ANGGREK around 2024-01-17-21Z
# my at https://twitter.com/elioeFIN/status/1747721644888436805

nhc_shem_2024_029 = [12.0,93.4,55;12.8,92.7,55;12.8,92.0,55;12.7,90.8,55;12.5,89.6,50];
my_shem_2024_029 = [12.0,93.5,50;12.6,93.0,50;12.6,92.2,50;12.4,91.2,45;12.4,90.2,45];
btk_shem_2024_029 = [12.2,93.2,45;12.7,92.4,55;12.0,92.6,70;12.3,91.8,50;12.6,91.4,40];
nhcvect = [nhcvect;nhc_shem_2024_029];
myvect = [myvect;my_shem_2024_029];
btkvect = [btkvect;btk_shem_2024_029];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 030 ... ANGGREK around 2024-01-18-21Z
# my at https://twitter.com/elioeFIN/status/1748098043163857378

nhc_shem_2024_030 = [12.9,92.4,50;12.8,91.7,50;12.5,91.0,50;12.2,90.4,45;11.9,89.9,45];
my_shem_2024_030 = [12.9,92.5,50;12.6,91.9,50;12.4,90.9,45;11.9,90.8,40;11.5,90.4,40];
btk_shem_2024_030 = [12.7,92.4,55;12.0,92.6,70;12.3,91.8,50;12.6,91.4,40;13.5,91.5,50];
nhcvect = [nhcvect;nhc_shem_2024_030];
myvect = [myvect;my_shem_2024_030];
btkvect = [btkvect;btk_shem_2024_030];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 031 ... ANGGREK around 2024-01-19-09Z
# my at https://twitter.com/elioeFIN/status/1748274318683840669

nhc_shem_2024_031 = [12.6,92.1,55;12.3,91.4,50;12.0,91.2,50;11.7,91.2,50;11.7,91.5,45];
my_shem_2024_031 = [12.5,92.1,50;12.0,91.9,50;11.8,91.3,45;11.5,91.6,45;11.4,91.8,40];
btk_shem_2024_031 = [12.5,92.6,70;12.0,92.2,70;12.3,91.5,45;13.0,91.6,40;14.1,91.1,65];
nhcvect = [nhcvect;nhc_shem_2024_031];
myvect = [myvect;my_shem_2024_031];
btkvect = [btkvect;btk_shem_2024_031];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 032 ... ANGGREK around 2024-01-19-21Z
# my at https://twitter.com/elioeFIN/status/1748449400261693810

nhc_shem_2024_032 = [12.5,91.7,50;12.1,90.9,45;11.8,90.8,45;11.7,91.0,45;11.7,91.3,45];
my_shem_2024_032 = [12.3,91.9,50;11.8,91.1,45;11.5,91.1,40;11.3,91.6,45;11.7,91.6,40];
btk_shem_2024_032 = [12.0,92.6,70;12.3,91.8,50;12.6,91.4,40;13.5,91.5,50;14.4,91.1,80];
nhcvect = [nhcvect;nhc_shem_2024_032];
myvect = [myvect;my_shem_2024_032];
btkvect = [btkvect;btk_shem_2024_032];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 033 ... ANGGREK around 2024-01-21-09Z
# my at https://twitter.com/elioeFIN/status/1748995451276206310

nhc_shem_2024_033 = [12.1,91.3,60;12.6,90.4,75;14.0,89.0,80;15.5,87.7,75;16.6,86.2,65];
my_shem_2024_033 = [12.0,91.6,60;12.4,90.9,70;13.5,89.9,70;15.0,88.9,70;16.8,86.5,60];
btk_shem_2024_033 = [12.3,91.5,45;13.0,91.6,40;14.1,91.1,65;15.1,90.0,80;16.9,86.5,105];
nhcvect = [nhcvect;nhc_shem_2024_033];
myvect = [myvect;my_shem_2024_033];
btkvect = [btkvect;btk_shem_2024_033];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 034 ... ANGGREK around 2024-01-21-21Z
# my at https://twitter.com/elioeFIN/status/1749170414272540692

nhc_shem_2024_034 = [12.7,90.9,60;13.4,90.0,75;14.0,89.2,80;15.2,87.6,70;16.6,85.2,65];
my_shem_2024_034 = [12.4,91.0,55;13.0,90.3,70;14.2,89.4,80;15.8,87.7,70;17.6,84.5,65];
btk_shem_2024_034 = [12.6,91.4,40;13.5,91.5,50;14.4,91.1,80;16.0,88.4,90;18.2,84.2,105];
nhcvect = [nhcvect;nhc_shem_2024_034];
myvect = [myvect;my_shem_2024_034];
btkvect = [btkvect;btk_shem_2024_034];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 035 ... 05U/90P around 2024-01-22-21Z
# my at https://twitter.com/elioeFIN/status/1749543930754941122
# (no JTWC forecast)

# Shem 036 ... 05U/07P around 2024-01-23-03Z
# my at https://twitter.com/elioeFIN/status/1749624752300311007

nhc_shem_2024_036 = [17.5,152.6,50;18.7,149.5,65;21.3,146.0,40;22.6,146.1,20];
my_shem_2024_036 = [17.5,152.9,45;18.6,150.2,60;21.0,146.4,35;22.9,146.8,25];
btk_shem_2024_036 = [17.3,153.0,40;18.2,149.1,55;21.2,143.7,30;22.4,141.9,25];
nhcvect = [nhcvect;nhc_shem_2024_036];
myvect = [myvect;my_shem_2024_036];
btkvect = [btkvect;btk_shem_2024_036];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 037 ... 05U/07P around 2024-01-23-09Z
# my at https://twitter.com/elioeFIN/status/1749715305494892640

nhc_shem_2024_037 = [18.1,151.9,45;19.7,148.7,60];
my_shem_2024_037 = [17.9,151.9,45;19.3,148.5,60];
btk_shem_2024_037 = [17.4,152.2,45;18.7,148.0,60];
nhcvect = [nhcvect;nhc_shem_2024_037];
myvect = [myvect;my_shem_2024_037];
btkvect = [btkvect;btk_shem_2024_037];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 038 ... ANGGREK around 2024-01-23-09Z
# my at https://twitter.com/elioeFIN/status/1749716303550480676

nhc_shem_2024_038 = [14.0,91.3,60;15.2,90.0,75;17.8,86.1,70;19.8,82.1,65;21.5,77.6,65];
my_shem_2024_038 = [13.8,91.6,55;15.2,90.5,70;17.8,86.7,65;19.7,82.8,55;21.1,78.1,60];
btk_shem_2024_038 = [14.1,91.1,65;15.1,90.0,80;16.9,86.5,105;18.9,82.0,100;20.3,76.4,90];
nhcvect = [nhcvect;nhc_shem_2024_038];
myvect = [myvect;my_shem_2024_038];
btkvect = [btkvect;btk_shem_2024_038];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 039 ... 05U/07P around 2024-01-23-21Z
# my at https://twitter.com/elioeFIN/status/1749894741108334696

nhc_shem_2024_039 = [18.0,150.3,50;19.9,146.3,40;22.0,143.7,25];
my_shem_2024_039 = [18.1,150.4,45;20.0,146.5,40;22.1,143.7,25];
btk_shem_2024_039 = [17.8,150.0,50;20.2,144.9,40;22.6,142.2,25];
nhcvect = [nhcvect;nhc_shem_2024_039];
myvect = [myvect;my_shem_2024_039];
btkvect = [btkvect;btk_shem_2024_039];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 040 ... KIRRILY around 2024-01-24-21Z
# my at https://twitter.com/elioeFIN/status/1750262787794710904

nhc_shem_2024_040 = [19.8,145.6,40];
my_shem_2024_040 = [19.8,145.9,40];
btk_shem_2024_040 = [20.2,144.9,40];
nhcvect = [nhcvect;nhc_shem_2024_040];
myvect = [myvect;my_shem_2024_040];
btkvect = [btkvect;btk_shem_2024_040];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;3];

# Shem 041 .... ANGGREK around 2024-01-25-09Z
# my at https://twitter.com/elioeFIN/status/1750440148183953568

nhc_shem_2024_041 = [17.1,86.5,90;18.8,82.0,95;20.1,77.3,105;22.9,72.8,100;26.0,71.2,80];
my_shem_2024_041 = [17.1,86.8,85;18.7,82.4,90;19.9,77.0,100;22.6,71.9,90;27.4,71.1,70];
btk_shem_2024_041 = [16.9,86.5,105;18.9,82.0,100;20.3,76.4,90;23.7,71.1,105;29.1,72.8,100];
nhcvect = [nhcvect;nhc_shem_2024_041];
myvect = [myvect;my_shem_2024_041];
btkvect = [btkvect;btk_shem_2024_041];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 042 ... CANDICE around 2024-01-25-15Z
# my at https://twitter.com/elioeFIN/status/1750536391149134245

nhc_shem_2024_042 = [27.0,61.1,55;30.6,58.6,45;34.3,57.6,35];
my_shem_2024_042 = [26.7,61.1,55;30.3,58.6,45;35.4,58.7,35];
btk_shem_2024_042 = [26.8,62.5,45;29.7,59.7,25;34.25,60.50,28.0]; # day 3 MFR data table
nhcvect = [nhcvect;nhc_shem_2024_042];
myvect = [myvect;my_shem_2024_042];
btkvect = [btkvect;btk_shem_2024_042];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 043 ... ANGGREK around 2024-01-25-21Z
# my at https://twitter.com/elioeFIN/status/1750625330442670474

nhc_shem_2024_043 = [18.2,84.2,105;19.6,79.0,115;21.7,72.9,120;25.9,69.7,105;28.2,70.5,80];
my_shem_2024_043 = [18.0,84.3,105;19.0,79.5,115;21.0,73.5,115;25.1,69.6,95;27.7,69.2,65];
btk_shem_2024_043 = [18.2,84.2,105;19.5,79.4,100;21.7,73.2,115;26.3,70.8,105;30.6,76.1,90];
nhcvect = [nhcvect;nhc_shem_2024_043];
myvect = [myvect;my_shem_2024_043];
btkvect = [btkvect;btk_shem_2024_043];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 044 ... ANGGREK around 2024-01-26-21Z
# my at https://twitter.com/elioeFIN/status/1750980792787022258

nhc_shem_2024_044 = [19.6,79.5,105;21.6,73.8,115;25.3,70.8,105;28.7,71.8,75;29.6,74.5,55];
my_shem_2024_044 = [19.2,79.5,110;21.1,73.7,115;25.4,70.9,100;29.7,72.9,70;32.5,79.5,45];
btk_shem_2024_044 = [19.5,79.4,100;21.7,73.2,115;26.3,70.8,105;30.6,76.1,90;36.1,91.5,55];
nhcvect = [nhcvect;nhc_shem_2024_044];
myvect = [myvect;my_shem_2024_044];
btkvect = [btkvect;btk_shem_2024_044];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 045 ... ANGGREK around 2024-01-27-21Z
# my at https://twitter.com/elioeFIN/status/1751349794528809390

nhc_shem_2024_045 = [21.7,73.6,105;26.2,71.2,90;29.9,75.6,65;33.7,86.1,50];
my_shem_2024_045 = [21.5,73.6,105;26.0,70.8,90;30.0,75.9,60;34.6,88.1,40];
btk_shem_2024_045 = [21.7,73.2,115;26.3,70.8,105;30.6,76.1,90;36.1,91.5,55];
nhcvect = [nhcvect;nhc_shem_2024_045];
myvect = [myvect;my_shem_2024_045];
btkvect = [btkvect;btk_shem_2024_045];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 046 ... 05 / 09S around 2024-01-31-03Z
# my at https://twitter.com/elioeFIN/status/1752523155611001303

nhc_shem_2024_046 = [19.7,66.4,40;19.9,67.0,50];
my_shem_2024_046 = [19.7,66.1,40;20.0,67.1,45];
btk_shem_2024_046 = [19.5,66.2,35;19.2,67.7,35];
nhcvect = [nhcvect;nhc_shem_2024_046];
myvect = [myvect;my_shem_2024_046];
btkvect = [btkvect;btk_shem_2024_046];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 047 ... NAT around 2024-02-05-21Z
# my at https://twitter.com/elioeFIN/status/1754619138369057220

nhc_shem_2024_047 = [17.5,202.4,45;18.9,206.0,40;18.5,210.0,30];
my_shem_2024_047 = [17.6,202.3,45;18.5,205.7,40;18.2,210.3,30];
btk_shem_2024_047 = [17.4,204.1,45;19.5,208.5,45;19.4,212.5,35];
nhcvect = [nhcvect;nhc_shem_2024_047];
myvect = [myvect;my_shem_2024_047];
btkvect = [btkvect;btk_shem_2024_047];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 048 ... 05F / 12P around 2024-02-08-03Z
# my at https://twitter.com/elioeFIN/status/1755422114868330816

nhc_shem_2024_048 = [17.2,165.7,45;18.6,168.4,50;19.4,171.2,45;19.6,172.1,40];
my_shem_2024_048 = [16.8,165.7,45;18.2,168.5,50;19.5,172.4,45;19.9,174.2,35];
btk_shem_2024_048 = [16.3,165.1,35;17.1,168.4,35;19.2,174.2,35;18.9,176.0,25];
nhcvect = [nhcvect;nhc_shem_2024_048];
myvect = [myvect;my_shem_2024_048];
btkvect = [btkvect;btk_shem_2024_048];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 049 ... 05F / 12P around 2024-02-08-09Z
# my at https://twitter.com/elioeFIN/status/1755513557259608481

nhc_shem_2024_049 = [17.2,166.3,50;18.4,169.4,45;18.6,172.4,40;19.0,173.6,35];
my_shem_2024_049 = [17.1,166.5,50;18.1,169.8,50;18.6,173.3,40;18.8,174.5,30];
btk_shem_2024_049 = [16.9,165.4,35;16.7,170.4,30;18.9,175.0,30;19.2,176.6,25];
nhcvect = [nhcvect;nhc_shem_2024_049];
myvect = [myvect;my_shem_2024_049];
btkvect = [btkvect;btk_shem_2024_049];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 050 ... 05F / 12P around 2024-02-08-21Z
# my at https://twitter.com/elioeFIN/status/1755701468177248485

nhc_shem_2024_050 = [17.0,166.4,45;17.9,169.8,45;18.3,172.0,45;18.4,172.9,40];
my_shem_2024_050 = [17.2,166.6,45;18.1,170.6,45;18.9,172.8,45;19.1,173.2,35];
btk_shem_2024_050 = [17.3,167.3,35;18.4,172.7,30;18.7,176.0,25;19.1,176.3,25];
nhcvect = [nhcvect;nhc_shem_2024_050];
myvect = [myvect;my_shem_2024_050];
btkvect = [btkvect;btk_shem_2024_050];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 051 ... 05F / 12P around 2024-02-09-03Z
# my at https://twitter.com/elioeFIN/status/1755781968413827460

nhc_shem_2024_051 = [17.7,168.3,35;18.9,171.9,40;19.5,173.0,40];
my_shem_2024_051 = [17.8,168.3,35;19.0,172.2,40;20.0,173.4,35];
btk_shem_2024_051 = [17.1,168.4,35;19.2,174.2,35;18.9,176.0,25];
nhcvect = [nhcvect;nhc_shem_2024_051];
myvect = [myvect;my_shem_2024_051];
btkvect = [btkvect;btk_shem_2024_051];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 052 ... 05F / 12P around 2024-02-09-09Z
# my at https://twitter.com/elioeFIN/status/1755879085408993336

nhc_shem_2024_052 = [18.3,168.7,40;19.1,172.5,35;19.4,173.4,35];
my_shem_2024_052 = [18.2,169.0,35;18.9,173.2,40;19.9,174.8,35];
btk_shem_2024_052 = [16.7,170.4,30;18.9,175.0,30;19.2,176.6,25];
nhcvect = [nhcvect;nhc_shem_2024_052];
myvect = [myvect;my_shem_2024_052];
btkvect = [btkvect;btk_shem_2024_052];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 053 ... 05F / 12P around 2024-02-09-21Z
# my at https://twitter.com/elioeFIN/status/1756063110283051307

nhc_shem_2024_053 = [18.2,171.3,40;18.8,174.2,35;19.3,175.5,30];
my_shem_2024_053 = [18.3,171.6,40;18.9,174.9,35;19.7,176.4,25];
btk_shem_2024_053 = [18.4,172.7,30;18.7,176.0,25;19.1,176.3,25];
nhcvect = [nhcvect;nhc_shem_2024_053];
myvect = [myvect;my_shem_2024_053];
btkvect = [btkvect;btk_shem_2024_053];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 054 ... 05F / 12P around 2024-02-10-03Z
# my at https://twitter.com/elioeFIN/status/1756147129385370094

nhc_shem_2024_054 = [18.1,173.2,35;18.4,176.0,30];
my_shem_2024_054 = [18.0,173.5,35;18.6,176.7,30];
btk_shem_2024_054 = [19.2,174.2,35;18.9,176.0,25];
nhcvect = [nhcvect;nhc_shem_2024_054];
myvect = [myvect;my_shem_2024_054];
btkvect = [btkvect;btk_shem_2024_054];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 055 ... 05F / 12P around 2024-02-10-09Z
# my at https://twitter.com/elioeFIN/status/1756239100661670147
# (JTWC forecast extended only to 12h)

# Shem 056 ... 05F / 12P around 2024-02-10-21Z
# my at https://twitter.com/elioeFIN/status/1756424094277566503
# (no JTWC forecast)

# Shem 057 ... 07U / 93S around 2024-02-14-21Z
# my at https://twitter.com/elioeFIN/status/1757873708276875441
# (no JTWC forecast)

# Shem 058 ... DJOUNGOU around 2024-02-15-21Z
# my at https://twitter.com/elioeFIN/status/1758235266622312504

nhc_shem_2024_058 = [15.8,67.1,65;16.5,71.2,100;20.0,78.5,100;25.3,86.9,65];
my_shem_2024_058 = [16.1,68.1,60;16.7,72.8,80;20.8,80.7,80;27.2,90.0,65];
btk_shem_2024_058 = [16.2,66.6,65;16.7,72.3,100;21.6,81.0,120;29.8,92.0,55];
nhcvect = [nhcvect;nhc_shem_2024_058];
myvect = [myvect;my_shem_2024_058];
btkvect = [btkvect;btk_shem_2024_058];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 059 ... STD around 2024-02-16-21Z
# my at https://twitter.com/elioeFIN/status/1758597763875393992
# (no U.S. agency issuing forecasts)

# Shem 060 ... DJOUNGOU around 2024-02-16-21Z
# my at https://twitter.com/elioeFIN/status/1758602525735887071

nhc_shem_2024_060 = [17.0,71.1,105;20.9,78.8,105;26.2,87.2,75];
my_shem_2024_060 = [16.8,70.8,100;20.6,78.5,95;25.4,86.3,65];
btk_shem_2024_060 = [16.7,72.3,100;21.6,81.0,120;29.8,92.0,55];
nhcvect = [nhcvect;nhc_shem_2024_060];
myvect = [myvect;my_shem_2024_060];
btkvect = [btkvect;btk_shem_2024_060];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 061 ... STD around 2024-02-17-03Z
# my at https://twitter.com/elioeFIN/status/1758684101752599016
# (no U.S. agency issuing forecasts)

# Shem 062 ... STD around 2024-02-17-21Z
# my at https://twitter.com/elioeFIN/status/1758958590449090821
# (no U.S. agency issuing forecasts)

# Shem 063 ... DJOUNGOU around 2024-02-17-21Z
# my at https://twitter.com/elioeFIN/status/1758962513327071542

nhc_shem_2024_063 = [20.8,80.4,115;26.6,89.4,70];
my_shem_2024_063 = [21.1,79.7,100;26.7,88.7,65];
btk_shem_2024_063 = [21.6,81.0,120;29.8,92.0,55];
nhcvect = [nhcvect;nhc_shem_2024_063];
myvect = [myvect;my_shem_2024_063];
btkvect = [btkvect;btk_shem_2024_063];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 064 ... TD around 2024-02-18-21Z
# my at https://twitter.com/elioeFIN/status/1759318936393269600
# (no U.S. agency issuing forecasts)

# Shem 065 ... AKARÁ around 2024-02-19-03Z
# my at https://twitter.com/elioeFIN/status/1759417795756929331
# (no U.S. agency issuing forecasts)

# Shem 066 ... 07 / 16S around 2024-02-19-03Z
# my at https://twitter.com/elioeFIN/status/1759421842786251000

nhc_shem_2024_066 = [14.2,58.5,50;15.6,60.3,75;17.9,59.6,85;20.1,58.6,75;21.4,57.2,60];
my_shem_2024_066 = [14.2,58.3,50;15.6,59.9,70;17.8,59.0,85;20.1,57.7,65;21.6,55.9,50];
btk_shem_2024_066 = [14.0,57.6,50;14.8,60.6,45;19.3,59.1,55;22.3,57.5,50;23.8,58.0,35];
nhcvect = [nhcvect;nhc_shem_2024_066];
myvect = [myvect;my_shem_2024_066];
btkvect = [btkvect;btk_shem_2024_066];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 067 ... AKARÁ around 2024-02-19-09Z
# my at https://twitter.com/elioeFIN/status/1759505586134130852
# (no U.S. agency issuing forecasts)

# Shem 068 ... ELEANOR around 2024-02-21-03Z
# my at https://twitter.com/elioeFIN/status/1760136793033506877

nhc_shem_2024_068 = [18.0,60.3,55;21.0,59.7,65;22.6,59.3,50;22.7,57.9,35];
my_shem_2024_068 = [18.6,60.2,60;22.1,59.4,65;23.6,58.2,45;22.7,55.2,25];
btk_shem_2024_068 = [19.3,59.1,55;22.3,57.5,50;23.8,58.0,35;22.5,54.8,25];
nhcvect = [nhcvect;nhc_shem_2024_068];
myvect = [myvect;my_shem_2024_068];
btkvect = [btkvect;btk_shem_2024_068];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 069 ... LINCOLN around 2024-02-21-21Z
# my at https://twitter.com/elioeFIN/status/1760414119105098211
# (no JTWC forecast)

# Shem 070 ... ELEANOR around 2024-02-21-21Z
# my at https://twitter.com/elioeFIN/status/1760422257619292367
# (no JTWC forecast)

# Shem 071 ... LINCOLN around 2024-02-22-21Z
# my at https://twitter.com/elioeFIN/status/1760769300661420032

nhc_shem_2024_071 = [20.6,113.5,45;25.1,113.9,35];
my_shem_2024_071 = [20.3,113.4,45;24.8,114.0,35];
btk_shem_2024_071 = [19.5,113.4,35;23.9,113.7,25];
nhcvect = [nhcvect;nhc_shem_2024_071];
myvect = [myvect;my_shem_2024_071];
btkvect = [btkvect;btk_shem_2024_071];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 072 ... ELEANOR around 2024-02-23-03Z
# my at https://twitter.com/elioeFIN/status/1760860944844931538

nhc_shem_2024_072 = [23.1,56.4,40;22.0,53.2,30];
my_shem_2024_072 = [23.7,56.9,40;22.3,53.3,30];
btk_shem_2024_072 = [23.8,58.0,35;22.5,54.8,25];
nhcvect = [nhcvect;nhc_shem_2024_072];
myvect = [myvect;my_shem_2024_072];
btkvect = [btkvect;btk_shem_2024_072];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 073 ... LINCOLN around 2024-02-23-03Z
# my at https://twitter.com/elioeFIN/status/1760861571687813199

nhc_shem_2024_073 = [21.3,113.0,45;25.6,113.9,35];
my_shem_2024_073 = [21.3,112.9,40;25.8,114.1,30];
btk_shem_2024_073 = [20.2,113.3,35;26.0,115.0,25];
nhcvect = [nhcvect;nhc_shem_2024_073];
myvect = [myvect;my_shem_2024_073];
btkvect = [btkvect;btk_shem_2024_073];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 074 ... FILIPO around 2024-03-10-21Z
# my at https://twitter.com/elioeFIN/status/1766941136336175387

nhc_shem_2024_074 = [20.5,36.1,50;22.7,34.1,30;26.8,35.4,40;32.0,42.7,55;36.8,54.1,50];
my_shem_2024_074 = [20.7,36.0,50;23.1,33.9,30;27.5,35.2,40;33.0,43.2,55;38.0,56.4,45];
btk_shem_2024_074 = [20.6,35.8,60;24.5,33.8,35;28.2,35.6,40;35.3,45.9,50;38.14,60.37,39.2]; # day 5 MFR data table
nhcvect = [nhcvect;nhc_shem_2024_074];
myvect = [myvect;my_shem_2024_074];
btkvect = [btkvect;btk_shem_2024_074];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 075 ... FILIPO around 2024-03-11-09Z
# my at https://twitter.com/elioeFIN/status/1767109938424287564

nhc_shem_2024_075 = [21.7,34.9,45;25.1,34.2,40;29.6,38.7,55;34.9,48.6,55];
my_shem_2024_075 = [21.6,35.0,45;25.5,34.3,35;30.2,39.1,55;36.4,50.2,55];
btk_shem_2024_075 = [21.5,34.9,50;26.0,33.1,35;31.4,38.9,40;37.23,52.88,61.6]; # day 4 MFR data table
nhcvect = [nhcvect;nhc_shem_2024_075];
myvect = [myvect;my_shem_2024_075];
btkvect = [btkvect;btk_shem_2024_075];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 076 ... 08U/18S around 2024-03-11-09Z
# my at https://twitter.com/elioeFIN/status/1767123259642831255

nhc_shem_2024_076 = [13.4,106.8,45;15.3,112.5,50;16.2,115.4,55;17.1,116.0,55;18.0,115.5,50];
my_shem_2024_076 = [13.4,106.7,45;15.2,111.4,45;16.5,114.2,50;17.6,114.6,55;18.6,113.7,55];
btk_shem_2024_076 = [13.4,106.1,40;14.9,110.8,35;16.2,115.0,35;17.8,114.8,35;17.3,114.0,35];
nhcvect = [nhcvect;nhc_shem_2024_076];
myvect = [myvect;my_shem_2024_076];
btkvect = [btkvect;btk_shem_2024_076];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 077 ... FILIPO around 2024-03-11-21Z
# my at https://twitter.com/elioeFIN/status/1767299482386157621

nhc_shem_2024_077 = [23.1,34.0,35;27.5,35.5,60;32.9,44.2,60;37.0,55.4,50];
my_shem_2024_077 = [23.4,34.0,35;28.0,35.6,55;34.4,44.8,65;39.5,56.8,45];
btk_shem_2024_077 = [24.5,33.8,35;28.2,35.6,40;35.3,45.9,50;38.14,60.37,39.2]; # day 4 MFR data table
nhcvect = [nhcvect;nhc_shem_2024_077];
myvect = [myvect;my_shem_2024_077];
btkvect = [btkvect;btk_shem_2024_077];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 078 ... 08U/18S around 2024-03-12-15Z
# my at https://twitter.com/elioeFIN/status/1767576371239276689

nhc_shem_2024_078 = [14.7,112.4,40;15.8,114.9,50;16.7,115.3,55;17.5,115.0,65;18.5,114.4,75];
my_shem_2024_078 = [14.9,112.2,40;16.1,114.8,45;17.1,114.8,55;18.0,114.0,65;18.7,113.6,75];
btk_shem_2024_078 = [15.3,111.5,35;17.0,115.8,35;17.9,114.2,35;17.0,113.9,35;17.1,112.8,35];
nhcvect = [nhcvect;nhc_shem_2024_078];
myvect = [myvect;my_shem_2024_078];
btkvect = [btkvect;btk_shem_2024_078];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 079 ... 08U/18S around 2024-03-12-21Z
# my at https://twitter.com/elioeFIN/status/1767654853864534223

nhc_shem_2024_079 = [15.3,114.0,40;16.5,115.8,50;17.4,115.8,60;18.3,115.3,70;19.0,114.5,80];
my_shem_2024_079 = [15.4,113.4,40;16.5,115.5,45;17.6,115.1,55;18.5,114.4,65;19.6,114.8,75];
btk_shem_2024_079 = [15.3,112.2,35;17.3,115.4,35;17.8,114.8,35;16.7,113.8,35;17.4,112.7,35];
nhcvect = [nhcvect;nhc_shem_2024_079];
myvect = [myvect;my_shem_2024_079];
btkvect = [btkvect;btk_shem_2024_079];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 080 ... 08U/18S around 2024-03-13-03Z
# my at https://twitter.com/elioeFIN/status/1767747529418981725

nhc_shem_2024_080 = [15.6,114.4,40;16.8,116.5,50;17.9,116.5,60;18.6,116.1,70;19.3,115.5,80];
my_shem_2024_080 = [15.6,114.4,35;16.8,116.5,45;17.7,115.9,60;18.2,115.2,65;19.2,114.9,75];
btk_shem_2024_080 = [15.6,113.9,35;17.7,115.2,30;17.5,114.5,35;17.1,114.2,35;17.4,112.3,35];
nhcvect = [nhcvect;nhc_shem_2024_080];
myvect = [myvect;my_shem_2024_080];
btkvect = [btkvect;btk_shem_2024_080];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 081 ... 08U/18S around 2024-03-13-09Z
# my at https://twitter.com/elioeFIN/status/1767839292393447893

nhc_shem_2024_081 = [15.8,114.1,40;17.0,115.6,50;17.7,115.4,60;18.5,114.9,70;19.6,114.0,80];
my_shem_2024_081 = [15.8,114.8,35;17.1,116.0,40;17.7,115.1,45;18.3,114.8,60;19.7,113.9,75];
btk_shem_2024_081 = [16.2,115.0,35;17.8,114.8,35;17.3,114.0,35;17.1,113.0,35;17.0,112.2,30];
nhcvect = [nhcvect;nhc_shem_2024_081];
myvect = [myvect;my_shem_2024_081];
btkvect = [btkvect;btk_shem_2024_081];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 082 ... 08U/18S around 2024-03-13-21Z
# my at https://twitter.com/elioeFIN/status/1768020464918581752

nhc_shem_2024_082 = [16.2,114.8,40;17.4,115.3,50;18.2,114.5,55;19.0,113.9,70;20.8,112.8,80];
my_shem_2024_082 = [16.3,115.9,40;17.4,115.8,45;17.9,114.7,50;18.8,113.8,65;20.2,112.7,75];
btk_shem_2024_082 = [17.3,115.4,35;17.8,114.8,35;16.7,113.8,35;17.4,112.7,35;18.1,111.9,30];
nhcvect = [nhcvect;nhc_shem_2024_082];
myvect = [myvect;my_shem_2024_082];
btkvect = [btkvect;btk_shem_2024_082];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 083 ... 08U/18S around 2024-03-14-21Z
# my at https://twitter.com/elioeFIN/status/1768375089379106932

nhc_shem_2024_083 = [18.2,115.1,40;19.0,114.1,50;19.6,113.3,55;20.1,112.2,65;20.5,111.0,65];
my_shem_2024_083 = [18.1,115.1,35;18.7,114.2,45;19.4,113.3,50;19.9,112.0,60;20.3,110.4,65];
btk_shem_2024_083 = [17.8,114.8,35;16.7,113.8,35;17.4,112.7,35;18.1,111.9,30;17.8,110.9,30];
nhcvect = [nhcvect;nhc_shem_2024_083];
myvect = [myvect;my_shem_2024_083];
btkvect = [btkvect;btk_shem_2024_083];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 084 ... 08U/18S around 2024-03-15-03Z
# my at https://twitter.com/elioeFIN/status/1768466082241642756

nhc_shem_2024_084 = [18.4,114.6,35;19.0,113.6,45;19.4,112.7,50;19.8,111.6,60;20.0,110.0,55];
my_shem_2024_084 = [18.1,114.8,35;18.5,113.9,40;19.3,112.9,50;19.9,111.7,55;20.4,109.8,60];
btk_shem_2024_084 = [17.5,114.5,35;17.1,114.2,35;17.4,112.3,35;18.5,111.8,30;17.8,110.4,35];
nhcvect = [nhcvect;nhc_shem_2024_084];
myvect = [myvect;my_shem_2024_084];
btkvect = [btkvect;btk_shem_2024_084];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 085 ... 08U/18S around 2024-03-15-21Z
# my at https://twitter.com/elioeFIN/status/1768741030612861194

nhc_shem_2024_085 = [17.7,114.2,35;18.1,113.9,35;18.5,113.6,40;17.9,112.2,40;17.8,110.7,45];
my_shem_2024_085 = [17.6,114.1,35;18.2,113.9,35;18.5,113.3,40;17.9,112.1,45;17.3,110.7,55];
btk_shem_2024_085 = [16.7,113.8,35;17.4,112.7,35;18.1,111.9,30;17.8,110.9,30;17.9,107.9,60];
nhcvect = [nhcvect;nhc_shem_2024_085];
myvect = [myvect;my_shem_2024_085];
btkvect = [btkvect;btk_shem_2024_085];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 086 ... 08U/18S around 2024-03-16-15Z
# my at https://twitter.com/elioeFIN/status/1769017256959209840

nhc_shem_2024_086 = [17.0,113.3,40;17.2,113.2,45;17.1,112.6,45;16.6,110.4,50;16.5,107.2,55];
my_shem_2024_086 = [17.0,113.1,35;17.4,113.1,40;17.3,112.5,40;16.5,109.9,40;15.9,106.5,55];
btk_shem_2024_086 = [17.1,112.8,35;17.2,112.1,30;17.8,111.4,30;17.8,108.8,50;17.7,104.9,105];
nhcvect = [nhcvect;nhc_shem_2024_086];
myvect = [myvect;my_shem_2024_086];
btkvect = [btkvect;btk_shem_2024_086];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 087 ... 08U/18S around 2024-03-17-21Z
# my at https://twitter.com/elioeFIN/status/1769462516533362810

nhc_shem_2024_087 = [17.7,112.2,35;17.2,111.0,35;16.9,108.9,40;16.6,105.4,45;16.8,100.8,50];
my_shem_2024_087 = [17.8,112.3,35;17.5,111.3,35;17.1,108.8,40;17.1,104.9,45;17.9,99.7,55];
btk_shem_2024_087 = [18.1,111.9,30;17.8,110.9,30;17.9,107.9,60;17.8,103.8,115;18.7,97.7,90];
nhcvect = [nhcvect;nhc_shem_2024_087];
myvect = [myvect;my_shem_2024_087];
btkvect = [btkvect;btk_shem_2024_087];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 088 ... 08U/18S around 2024-03-18-03Z
# my at https://twitter.com/elioeFIN/status/1769558147302109359

nhc_shem_2024_088 = [17.4,111.6,35;17.0,110.3,35;16.8,107.7,40;16.6,103.9,45;17.3,98.8,50];
my_shem_2024_088 = [17.8,112.1,35;17.4,110.8,35;17.1,108.0,40;17.1,104.2,45;18.0,98.9,55];
btk_shem_2024_088 = [18.5,111.8,30;17.8,110.4,35;17.9,106.7,70;17.9,102.6,115;19.3,96.5,85];
nhcvect = [nhcvect;nhc_shem_2024_088];
myvect = [myvect;my_shem_2024_088];
btkvect = [btkvect;btk_shem_2024_088];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 089 ... MEGAN around 2024-03-18-03Z
# my at https://twitter.com/elioeFIN/status/1769558611183730990

nhc_shem_2024_089 = [16.7,135.8,50;17.2,133.5,30];
my_shem_2024_089 = [16.8,136.0,45;17.4,133.7,25];
btk_shem_2024_089 = [16.9,135.6,30;17.9,133.4,20];
nhcvect = [nhcvect;nhc_shem_2024_089];
myvect = [myvect;my_shem_2024_089];
btkvect = [btkvect;btk_shem_2024_089];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 090 ... 08U/18S around 2024-03-18-09Z
# my at https://twitter.com/elioeFIN/status/1769644589307002887

nhc_shem_2024_090 = [16.8,111.4,30];
my_shem_2024_090 = [17.3,111.8,30];
btk_shem_2024_090 = [18.1,111.8,30];
nhcvect = [nhcvect;nhc_shem_2024_090];
myvect = [myvect;my_shem_2024_090];
btkvect = [btkvect;btk_shem_2024_090];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;3];

# Shem 091 ... MEGAN around 2024-03-18-09Z
# my at https://twitter.com/elioeFIN/status/1769651319269187968

nhc_shem_2024_091 = [17.2,135.5,35;17.5,133.3,30];
my_shem_2024_091 = [17.1,135.6,30;17.2,133.0,25];
btk_shem_2024_091 = [17.2,135.4,30;17.6,132.9,20];
nhcvect = [nhcvect;nhc_shem_2024_091];
myvect = [myvect;my_shem_2024_091];
btkvect = [btkvect;btk_shem_2024_091];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 092 ... 08U/18S around 2024-03-18-21Z
# my at https://twitter.com/elioeFIN/status/1769835087644819659
# (no JTWC forecast)

# Shem 093 ... 08U/18S around 2024-03-20-03Z
# my at https://twitter.com/elioeFIN/status/1770279452536098958

nhc_shem_2024_093 = [17.6,107.3,45;17.9,102.7,75;19.2,96.7,70;21.7,91.3,55;24.8,87.4,35];
my_shem_2024_093 = [17.5,107.1,45;17.6,102.7,65;18.8,96.5,60;21.4,90.9,45;25.2,86.6,30];
btk_shem_2024_093 = [17.9,106.7,70;17.9,102.6,115;19.3,96.5,85;22.2,91.2,50;24.0,87.2,25];
nhcvect = [nhcvect;nhc_shem_2024_093];
myvect = [myvect;my_shem_2024_093];
btkvect = [btkvect;btk_shem_2024_093];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 094 ... NEVILLE around 2024-03-20-09Z
# my at https://twitter.com/elioeFIN/status/1770369485519659299

nhc_shem_2024_094 = [17.6,106.3,65;17.9,101.2,90;19.4,95.7,80;21.4,91.1,55;23.8,87.4,35];
my_shem_2024_094 = [17.6,106.3,60;17.7,101.4,75;19.2,95.5,60;21.2,90.5,45;23.3,86.6,35];
btk_shem_2024_094 = [17.8,105.7,85;18.1,100.9,105;19.8,94.9,80;22.7,90.1,45;24.2,86.8,30];
nhcvect = [nhcvect;nhc_shem_2024_094];
myvect = [myvect;my_shem_2024_094];
btkvect = [btkvect;btk_shem_2024_094];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 095 ... NEVILLE around 2024-03-20-21Z
# my at https://twitter.com/elioeFIN/status/1770562569792532567

nhc_shem_2024_095 = [17.8,103.7,70;18.5,98.3,90;20.7,92.8,70;22.1,88.5,50;24.3,85.3,30];
my_shem_2024_095 = [17.7,103.7,70;18.4,98.2,75;20.8,92.5,60;22.6,88.2,40;25.3,85.7,30];
btk_shem_2024_095 = [17.8,103.8,115;18.7,97.9,90;21.4,92.4,60;23.5,88.2,30;26.6,86.6,25];
nhcvect = [nhcvect;nhc_shem_2024_095];
myvect = [myvect;my_shem_2024_095];
btkvect = [btkvect;btk_shem_2024_095];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 096 ... NEVILLE around 2024-03-22-03Z
# my at https://twitter.com/elioeFIN/status/1771001675378999725

nhc_shem_2024_096 = [18.9,96.7,90;20.9,90.9,55;22.9,86.5,30];
my_shem_2024_096 = [18.9,96.7,90;20.8,90.7,55;22.8,86.3,30];
btk_shem_2024_096 = [19.3,96.5,85;22.2,91.2,50;24.0,87.2,25];
nhcvect = [nhcvect;nhc_shem_2024_096];
myvect = [myvect;my_shem_2024_096];
btkvect = [btkvect;btk_shem_2024_096];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 097 ... GAMANE around 2024-03-27-03Z
# my at https://twitter.com/elioeFIN/status/1772818608130785503

nhc_shem_2024_097 = [14.0,49.4,70;15.1,50.3,55;15.9,52.4,50;18.3,55.7,45;20.3,58.1,40];
my_shem_2024_097 = [14.1,49.2,50;15.9,50.0,40;16.5,52.2,45;17.9,54.5,35;19.6,56.2,25];
btk_shem_2024_097 = [13.9,48.8,40;14.3,47.7,20;16.0,51.0,20;17.26,52.55,22.4;16.51,51.97,16.8]; # days 4-5 MFR data table
nhcvect = [nhcvect;nhc_shem_2024_097];
myvect = [myvect;my_shem_2024_097];
btkvect = [btkvect;btk_shem_2024_097];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 098 ... 11U/21S around 2024-04-05-21Z
# my at https://twitter.com/elioeFIN/status/1776356963183477183

nhc_shem_2024_098 = [14.3,120.0,60;15.7,119.2,60;16.6,117.6,50;17.9,115.0,40;19.5,111.7,35];
my_shem_2024_098 = [13.6,119.5,55;14.8,118.9,55;15.7,117.6,40;17.2,114.8,35;19.7,111.4,35];
btk_shem_2024_098 = [14.3,119.7,65;15.9,118.9,115;16.9,118.1,45;18.6,116.1,40;21.2,114.6,30];
nhcvect = [nhcvect;nhc_shem_2024_098];
myvect = [myvect;my_shem_2024_098];
btkvect = [btkvect;btk_shem_2024_098];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 099 ... OLGA around 2024-04-06-21Z
# my at https://twitter.com/elioeFIN/status/1776711447097012236

nhc_shem_2024_099 = [15.8,118.8,75;16.8,116.9,55;18.2,114.1,40;19.9,110.7,30];
my_shem_2024_099 = [15.7,119.1,70;16.7,117.3,45;18.1,114.3,35;20.0,110.8,30];
btk_shem_2024_099 = [15.9,118.9,115;16.9,118.1,45;18.6,116.1,40;21.2,114.6,30];
nhcvect = [nhcvect;nhc_shem_2024_099];
myvect = [myvect;my_shem_2024_099];
btkvect = [btkvect;btk_shem_2024_099];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 100 ... OLGA around 2024-04-07-21Z
# my at https://twitter.com/elioeFIN/status/1777074339893920217

nhc_shem_2024_100 = [17.3,117.4,80;18.7,115.0,55;20.3,112.0,40;21.7,110.1,30];
my_shem_2024_100 = [17.1,117.7,70;18.5,115.2,45;20.5,112.2,30;22.1,110.0,30];
btk_shem_2024_100 = [16.9,118.1,45;18.6,116.1,40;21.2,114.6,30;21.7,113.6,25];
nhcvect = [nhcvect;nhc_shem_2024_100];
myvect = [myvect;my_shem_2024_100];
btkvect = [btkvect;btk_shem_2024_100];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 101 ... OLGA around 2024-04-08-03Z
# my at https://twitter.com/elioeFIN/status/1777166380590076336

nhc_shem_2024_101 = [18.0,116.7,70;19.6,114.4,55;21.5,111.7,40];
my_shem_2024_101 = [17.6,117.1,65;19.3,115.0,40;21.4,112.4,30];
btk_shem_2024_101 = [17.2,117.5,50;18.9,116.1,35;21.7,114.1,30];
nhcvect = [nhcvect;nhc_shem_2024_101];
myvect = [myvect;my_shem_2024_101];
btkvect = [btkvect;btk_shem_2024_101];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Atl 001 ... UNNAMED around 2024-04-24-03Z ... CERTIFIED
# my at https://twitter.com/elioeFIN/status/1782970929443746100
# (no NHC advisory)

# Atl 002 ... UNNAMED around 2024-04-24-09Z ... CERTIFIED
# my at https://twitter.com/elioeFIN/status/1783058917817242046
# (no NHC advisory)

# Atl 003 ... UNNAMED around 2024-04-24-21Z ... CERTIFIED
# my at https://twitter.com/elioeFIN/status/1783240415379935674
# (no NHC advisory)

# Shem 102 ... HIDAYA around 2024-05-02-03Z ... CERTIFIED
# my at https://twitter.com/elioeFIN/status/1785867974089244774

nhc_shem_2024_102 = [8.8,42.9,50;7.7,41.0,40];
my_shem_2024_102 = [9.2,42.8,55;8.3,40.7,40];
btk_shem_2024_102 = [8.8,43.3,75;7.9,40.6,60];
nhcvect = [nhcvect;nhc_shem_2024_102];
myvect = [myvect;my_shem_2024_102];
btkvect = [btkvect;btk_shem_2024_102];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 103 ... HIDAYA around 2024-05-02-15Z ... CERTIFIED
# my at https://twitter.com/elioeFIN/status/1786041236253557220

nhc_shem_2024_103 = [8.4,42.6,65;7.5,40.1,40];
my_shem_2024_103 = [8.7,42.1,65;7.7,39.6,35];
btk_shem_2024_103 = [8.2,42.0,75;7.7,38.6,40];
nhcvect = [nhcvect;nhc_shem_2024_103];
myvect = [myvect;my_shem_2024_103];
btkvect = [btkvect;btk_shem_2024_103];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 104 ... HIDAYA around 2024-05-03-03Z ... CERTIFIED
# my at https://twitter.com/elioeFIN/status/1786229134487625887

nhc_shem_2024_104 = [8.0,40.9,90];
my_shem_2024_104 = [8.0,41.2,80];
btk_shem_2024_104 = [7.9,40.6,60];
nhcvect = [nhcvect;nhc_shem_2024_104];
myvect = [myvect;my_shem_2024_104];
btkvect = [btkvect;btk_shem_2024_104];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;3];

# Shem 105 ... HIDAYA around 2024-05-03-15Z ... CERTIFIED
# my at https://twitter.com/elioeFIN/status/1786410358686503287

nhc_shem_2024_105 = [7.4,39.7,55];
my_shem_2024_105 = [7.0,39.7,55];
btk_shem_2024_105 = [7.7,38.6,40];
nhcvect = [nhcvect;nhc_shem_2024_105];
myvect = [myvect;my_shem_2024_105];
btkvect = [btkvect;btk_shem_2024_105];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;3];

# Shem 106 ... IALY around 2024-05-17-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1791299213185175989

nhc_shem_2024_106 = [8.9,49.7,40;8.4,48.7,45;7.3,48.6,40;5.3,49.0,35;3.5,49.8,30];
my_shem_2024_106 = [9.1,49.8,45;8.9,48.3,55;7.7,47.9,50;6.8,48.3,35;5.7,47.5,20];
btk_shem_2024_106 = [8.0,49.2,40;7.5,46.6,55;6.3,44.5,55;5.2,43.0,55;3.7,41.9,45];
nhcvect = [nhcvect;nhc_shem_2024_106];
myvect = [myvect;my_shem_2024_106];
btkvect = [btkvect;btk_shem_2024_106];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 107 ... IALY around 2024-05-18-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1791662571096842580

nhc_shem_2024_107 = [7.3,47.6,40;5.9,46.9,30];
my_shem_2024_107 = [7.5,47.3,50;6.4,46.3,40];
btk_shem_2024_107 = [7.5,46.6,55;6.3,44.5,55];
nhcvect = [nhcvect;nhc_shem_2024_107];
myvect = [myvect;my_shem_2024_107];
btkvect = [btkvect;btk_shem_2024_107];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 108 ... 25S around 2024-05-19-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1792297212568834340

nhc_shem_2024_108 = [2.5,77.2,35];
my_shem_2024_108 = [2.6,77.2,35];
btk_shem_2024_108 = [3.1,79.0,20];
nhcvect = [nhcvect;nhc_shem_2024_108];
myvect = [myvect;my_shem_2024_108];
btkvect = [btkvect;btk_shem_2024_108];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;3];

# Shem 109 ... IALY around 2024-05-20-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1792386440258580656

nhc_shem_2024_109 = [4.0,43.9,35];
my_shem_2024_109 = [4.1,43.7,40];
btk_shem_2024_109 = [5.2,43.0,55];
nhcvect = [nhcvect;nhc_shem_2024_109];
myvect = [myvect;my_shem_2024_109];
btkvect = [btkvect;btk_shem_2024_109];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;3];

# Nio 01 ... BOB 01 / 99B around 2024-05-24-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1793936778467971375
# (no JTWC forecast)

# Nio 02 ... BOB 01 / 99B around 2024-05-24-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1794123390871036228
# (no JTWC forecast)

# Nio 03 ... BOB 01 / 99B around 2024-05-25-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1794203982153515421
# (no JTWC forecast)

# Wpac 001 ... 01W/(AGHON) around 2024-05-25-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1794205881632264438

nhc_wpac_2024_001 = [15.2,121.8,35;17.7,123.4,45;21.3,126.6,70;26.3,132.4,65;32.7,141.9,50];
my_wpac_2024_001 = [14.9,121.8,35;17.3,123.3,45;21.1,127.4,70;27.1,133.4,60;34.5,143.9,45];
btk_wpac_2024_001 = [14.1,121.4,55;15.8,122.8,90;18.5,125.5,75;24.3,130.8,70;28.2,134.8,55];
nhcvect = [nhcvect;nhc_wpac_2024_001];
myvect = [myvect;my_wpac_2024_001];
btkvect = [btkvect;btk_wpac_2024_001];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 002 ... 01W/(AGHON) around 2024-05-25-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1794296597276475684

nhc_wpac_2024_002 = [14.8,121.5,35;16.6,123.3,60;19.4,126.2,75;24.0,130.7,60;28.6,135.9,45];
my_wpac_2024_002 = [14.5,121.3,35;16.8,123.2,60;19.9,126.0,70;23.8,131.4,55;26.8,135.6,45];
btk_wpac_2024_002 = [14.5,121.8,55;16.2,123.5,95;19.9,126.8,75;25.2,131.8,60;29.0,135.8,50];
nhcvect = [nhcvect;nhc_wpac_2024_002];
myvect = [myvect;my_wpac_2024_002];
btkvect = [btkvect;btk_wpac_2024_002];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Nio 04 ... BOB 01 / 99B around 2024-05-25-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1794304808553455782
# (no JTWC forecast)

# Nio 05 ... REMAL around 2024-05-25-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1794483605651046511

nhc_nio_2024_05 = [21.6,89.1,50;24.2,90.6,30];
my_nio_2024_05 = [21.8,89.3,55;24.2,90.7,30];
btk_nio_2024_05 = [21.9,88.6,55;24.2,90.4,40];
nhcvect = [nhcvect;nhc_nio_2024_05];
myvect = [myvect;my_nio_2024_05];
btkvect = [btkvect;btk_nio_2024_05];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Wpac 003 ... EWINIAR/(AGHON) around 2024-05-26-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1794565732036124687

nhc_wpac_2024_003 = [16.0,122.3,70;18.8,125.0,90;22.5,128.7,85;26.4,133.2,65;31.0,139.5,45];
my_wpac_2024_003 = [16.0,122.6,65;18.7,125.2,85;22.5,129.0,80;27.1,133.7,60;31.2,138.9,40];
btk_wpac_2024_003 = [15.8,122.8,90;18.5,125.5,75;24.3,130.8,70;28.2,134.8,55;33.1,139.9,45];
nhcvect = [nhcvect;nhc_wpac_2024_003];
myvect = [myvect;my_wpac_2024_003];
btkvect = [btkvect;btk_wpac_2024_003];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Nio 06 ... REMAL around 2024-05-26-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1794571829694357769

nhc_nio_2024_06 = [22.3,89.1,50;24.5,91.3,30];
my_nio_2024_06 = [22.4,89.3,45;24.9,91.1,25];
btk_nio_2024_06 = [22.6,89.1,50;24.9,91.2,40];
nhcvect = [nhcvect;nhc_nio_2024_06];
myvect = [myvect;my_nio_2024_06];
btkvect = [btkvect;btk_nio_2024_06];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Wpac 004 ... EWINIAR/(AGHON) around 2024-05-26-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1794650470184894704

nhc_wpac_2024_004 = [16.7,123.5,85;20.1,126.8,100;24.4,130.8,85;28.6,135.4,60;33.0,142.2,45];
my_wpac_2024_004 = [16.7,123.5,80;19.9,127.0,100;24.0,130.8,85;28.2,135.3,60;32.2,142.4,40];
btk_wpac_2024_004 = [16.2,123.5,95;19.9,126.8,75;25.2,131.8,60;29.0,135.8,50;34.2,142.8,45];
nhcvect = [nhcvect;nhc_wpac_2024_004];
myvect = [myvect;my_wpac_2024_004];
btkvect = [btkvect;btk_wpac_2024_004];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Nio 07 ... REMAL around 2024-05-26-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1794652815681589592

nhc_nio_2024_07 = [23.0,89.3,40];
my_nio_2024_07 = [23.2,89.5,35];
btk_nio_2024_07 = [23.2,89.3,45];
nhcvect = [nhcvect;nhc_nio_2024_07];
myvect = [myvect;my_nio_2024_07];
btkvect = [btkvect;btk_nio_2024_07];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;3];

# Wpac 005 - EWINIAR/(AGHON) around 2024-05-27-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1794921542629183903

nhc_wpac_2024_005 = [18.9,125.8,105;23.8,130.8,95;28.0,134.7,70;33.0,140.9,50];
my_wpac_2024_005 = [18.5,125.7,110;23.6,130.5,100;27.7,134.1,70;32.3,139.9,50];
btk_wpac_2024_005 = [18.5,125.5,75;24.3,130.8,70;28.2,134.8,55;33.1,139.9,45];
nhcvect = [nhcvect;nhc_wpac_2024_005];
myvect = [myvect;my_wpac_2024_005];
btkvect = [btkvect;btk_wpac_2024_005];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Wpac 006 - EWINIAR/(AGHON) around 2024-05-27-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1795015784927728040

nhc_wpac_2024_006 = [19.8,127.0,100;24.5,131.5,90;29.2,136.4,65;33.9,143.2,50];
my_wpac_2024_006 = [19.6,126.9,100;24.5,131.6,90;28.7,136.0,60;33.9,143.1,50];
btk_wpac_2024_006 = [19.9,126.8,75;25.2,131.8,60;29.0,135.8,50;34.2,142.8,45];
nhcvect = [nhcvect;nhc_wpac_2024_006];
myvect = [myvect;my_wpac_2024_006];
btkvect = [btkvect;btk_wpac_2024_006];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Wpac 007 - EWINIAR/(AGHON) around 2024-05-27-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1795199466783281314

nhc_wpac_2024_007 = [22.2,128.9,85;26.6,133.5,70;30.2,138.2,50];
my_wpac_2024_007 = [22.2,129.2,80;26.6,133.4,65;30.2,138.0,45];
btk_wpac_2024_007 = [22.8,129.5,75;27.4,133.9,55;31.7,138.5,45];
nhcvect = [nhcvect;nhc_wpac_2024_007];
myvect = [myvect;my_wpac_2024_007];
btkvect = [btkvect;btk_wpac_2024_007];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Wpac 008 - EWINIAR/(AGHON) around 2024-05-28-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1795557803781726297

nhc_wpac_2024_008 = [27.2,133.6,60;31.1,138.0,40];
my_wpac_2024_008 = [27.1,133.4,55;30.7,137.4,35];
btk_wpac_2024_008 = [27.4,133.9,55;31.7,138.5,45];
nhcvect = [nhcvect;nhc_wpac_2024_008];
myvect = [myvect;my_wpac_2024_008];
btkvect = [btkvect;btk_wpac_2024_008];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Wpac 009 - EWINIAR/(AGHON) around 2024-05-29-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1795657684521537805

nhc_wpac_2024_009 = [28.4,134.8,50;32.9,140.9,40];
my_wpac_2024_009 = [28.1,134.6,50;32.4,140.2,40];
btk_wpac_2024_009 = [28.2,134.8,55;33.1,139.9,45];
nhcvect = [nhcvect;nhc_wpac_2024_009];
myvect = [myvect;my_wpac_2024_009];
btkvect = [btkvect;btk_wpac_2024_009];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Wpac 010 ... EWINIAR/(AGHON) around 2024-05-29-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1795922993153003697

nhc_wpac_2024_010 = [32.0,138.6,45];
my_wpac_2024_010 = [31.7,137.9,45];
btk_wpac_2024_010 = [31.7,138.5,45];
nhcvect = [nhcvect;nhc_wpac_2024_010];
myvect = [myvect;my_wpac_2024_010];
btkvect = [btkvect;btk_wpac_2024_010];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;3];

# Atl 004 ... 01L around 2024-06-18-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1802901783573872790
# NHC at https://www.nhc.noaa.gov/archive/2024/al01/al012024.discus.002.shtml?

nhc_atl_2024_004 = [22.6,93.6,40;23.5,96.9,45];
my_atl_2024_004 = [22.4,93.6,40;23.2,97.9,45];
btk_atl_2024_004 = [22.4,92.8,35;21.5,95.5,45];
nhcvect = [nhcvect;nhc_atl_2024_004];
myvect = [myvect;my_atl_2024_004];
btkvect = [btkvect;btk_atl_2024_004];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Atl 005 ... 01L around 2024-06-18-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1802991197574586403
# NHC at https://www.nhc.noaa.gov/archive/2024/al01/al012024.discus.003.shtml?

nhc_atl_2024_005 = [22.7,94.5,40;23.3,98.1,45];
my_atl_2024_005 = [22.6,94.7,40;23.4,99.2,40];
btk_atl_2024_005 = [22.5,93.5,35;22.0,96.6,45];
nhcvect = [nhcvect;nhc_atl_2024_005];
myvect = [myvect;my_atl_2024_005];
btkvect = [btkvect;btk_atl_2024_005];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Atl 006 ... 01L around 2024-06-18-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1803167845565526440
# NHC at https://www.nhc.noaa.gov/archive/2024/al01/al012024.discus.005.shtml?

nhc_atl_2024_006 = [23.0,95.7,40;23.3,100.2,30];
my_atl_2024_006 = [23.3,95.7,40;23.9,101.9,30];
btk_atl_2024_006 = [21.8,94.7,35;22.3,100.9,25];
nhcvect = [nhcvect;nhc_atl_2024_006];
myvect = [myvect;my_atl_2024_006];
btkvect = [btkvect;btk_atl_2024_006];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Atl 007 ... 01L around 2024-06-19-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1803260565709557914
# NHC at https://www.nhc.noaa.gov/archive/2024/al01/al012024.discus.006.shtml?

nhc_atl_2024_007 = [22.8,96.3,40];
my_atl_2024_007 = [22.7,96.5,40];
btk_atl_2024_007 = [21.5,95.5,45];
nhcvect = [nhcvect;nhc_atl_2024_007];
myvect = [myvect;my_atl_2024_007];
btkvect = [btkvect;btk_atl_2024_007];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;1];

# Atl 008 ... 01L around 2024-06-19-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1803350732822794692
# NHC at https://www.nhc.noaa.gov/archive/2024/al01/al012024.discus.007.shtml?

nhc_atl_2024_008 = [22.7,97.2,40];
my_atl_2024_008 = [22.8,97.4,40];
btk_atl_2024_008 = [22.0,96.6,45];
nhcvect = [nhcvect;nhc_atl_2024_008];
myvect = [myvect;my_atl_2024_008];
btkvect = [btkvect;btk_atl_2024_008];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;1];

# Atl 009 ... ALBERTO around 2024-06-19-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1803534705859371017
# NHC at https://www.nhc.noaa.gov/archive/2024/al01/al012024.discus.009.shtml?

nhc_atl_2024_009 = [22.1,100.9,30];
my_atl_2024_009 = [22.0,101.3,30];
btk_atl_2024_009 = [22.3,100.9,25];
nhcvect = [nhcvect;nhc_atl_2024_009];
myvect = [myvect;my_atl_2024_009];
btkvect = [btkvect;btk_atl_2024_009];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;1];

# Atl 010 ... 02L around 2024-06-28-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1806793727467565441
# NHC at https://www.nhc.noaa.gov/archive/2024/al02/al022024.discus.001.shtml?

nhc_atl_2024_010 = [10.1,48.0,40;11.3,54.8,65;13.0,61.9,85;15.5,69.2,90;17.5,76.4,80];
my_atl_2024_010 = [10.1,48.0,40;11.4,54.7,65;13.0,61.8,85;15.9,68.8,90;17.9,76.0,75];
btk_atl_2024_010 = [10.0,48.5,60;10.9,55.7,115;12.8,62.3,130;15.6,69.9,135;17.2,76.8,120];
nhcvect = [nhcvect;nhc_atl_2024_010];
myvect = [myvect;my_atl_2024_010];
btkvect = [btkvect;btk_atl_2024_010];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 011 ... BERYL around 2024-06-29-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1806886661537579198
# NHC at https://www.nhc.noaa.gov/archive/2024/al02/al022024.discus.002.shtml?

nhc_atl_2024_011 = [10.4,49.7,50;11.7,56.5,70;13.6,63.6,90;16.0,71.0,90;17.8,77.8,80];
my_atl_2024_011 = [10.4,49.7,50;11.6,56.3,75;13.6,63.2,95;16.2,70.4,90;17.9,77.2,80];
btk_atl_2024_011 = [10.2,50.3,70;11.2,57.3,110;13.4,64.0,140;16.1,71.8,130;17.8,78.3,115];
nhcvect = [nhcvect;nhc_atl_2024_011];
myvect = [myvect;my_atl_2024_011];
btkvect = [btkvect;btk_atl_2024_011];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 012 ... BERYL around 2024-06-29-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1806976268988018932
# NHC at https://www.nhc.noaa.gov/archive/2024/al02/al022024.discus.003.shtml?

nhc_atl_2024_012 = [11.0,51.6,65;12.4,58.4,85;14.4,65.7,95;16.8,73.0,90;19.0,79.0,75];
my_atl_2024_012 = [11.0,51.6,65;12.2,58.2,90;14.3,65.2,95;16.8,71.8,90;18.8,78.4,80];
btk_atl_2024_012 = [10.5,52.2,85;11.5,59.0,105;14.2,65.9,145;16.3,73.5,125;18.3,80.1,110];
nhcvect = [nhcvect;nhc_atl_2024_012];
myvect = [myvect;my_atl_2024_012];
btkvect = [btkvect;btk_atl_2024_012];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 013 ... BERYL around 2024-06-29-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1807155518617825344
# NHC at https://www.nhc.noaa.gov/archive/2024/al02/al022024.discus.005.shtml?

nhc_atl_2024_013 = [11.3,55.3,90;13.1,62.3,105;15.5,69.8,100;17.3,77.2,90;18.7,83.3,75];
my_atl_2024_013 = [11.1,55.4,90;12.9,62.3,100;15.2,69.9,100;16.9,77.0,85;18.4,83.1,70];
btk_atl_2024_013 = [10.9,55.7,115;12.8,62.3,130;15.6,69.9,135;17.2,76.8,120;19.3,83.5,95];
nhcvect = [nhcvect;nhc_atl_2024_013];
myvect = [myvect;my_atl_2024_013];
btkvect = [btkvect;btk_atl_2024_013];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 014 ... BERYL around 2024-06-30-03Z ... certification failed
# my at https://x.com/elioeFIN/status/1807247864029970432
# NHC at https://www.nhc.noaa.gov/archive/2024/al02/al022024.discus.006.shtml?

nhc_atl_2024_014 = [11.5,57.0,105;13.4,64.0,110;15.6,71.7,100;17.0,78.9,85;18.5,85.0,75];
my_atl_2024_014 = [11.3,57.2,100;13.2,64.1,110;15.2,72.0,90;16.6,79.3,80;18.0,85.6,75];
btk_atl_2024_014 = [11.2,57.3,110;13.4,64.0,140;16.1,71.8,130;17.8,78.3,115;19.4,84.8,100];
nhcvect = [nhcvect;nhc_atl_2024_014];
myvect = [myvect;my_atl_2024_014];
btkvect = [btkvect;btk_atl_2024_014];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 015 ... BERYL around 2024-06-30-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1807341419855495170
# NHC at https://www.nhc.noaa.gov/archive/2024/al02/al022024.discus.007.shtml?

nhc_atl_2024_015 = [11.8,59.0,115;14.1,66.1,110;16.3,74.0,100;17.8,80.9,90;19.1,87.1,85];
my_atl_2024_015 = [11.7,59.0,110;14.2,66.1,110;16.2,73.7,95;18.1,80.4,90;19.7,86.6,85];
btk_atl_2024_015 = [11.5,59.0,105;14.2,65.9,145;16.3,73.5,125;18.3,80.1,110;19.8,86.2,95];
nhcvect = [nhcvect;nhc_atl_2024_015];
myvect = [myvect;my_atl_2024_015];
btkvect = [btkvect;btk_atl_2024_015];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 016 ... BERYL around 2024-06-30-15Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1807430182480789645
# NHC at https://www.nhc.noaa.gov/archive/2024/al02/al022024.discus.008.shtml?

nhc_atl_2024_016 = [12.1,60.9,120;14.6,68.2,115;16.4,75.9,105;17.8,82.8,95;19.2,88.3,75];
my_atl_2024_016 = [12.1,60.9,120;14.5,68.2,110;16.2,75.9,100;17.7,82.2,95;18.9,88.2,80];
btk_atl_2024_016 = [12.0,60.5,115;15.0,67.9,145;16.8,75.3,125;18.8,81.8,100;20.4,87.7,80];
nhcvect = [nhcvect;nhc_atl_2024_016];
myvect = [myvect;my_atl_2024_016];
btkvect = [btkvect;btk_atl_2024_016];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 017 ... BERYL around 2024-07-01-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1807611161434567095
# NHC at https://www.nhc.noaa.gov/archive/2024/al02/al022024.discus.010.shtml?

nhc_atl_2024_017 = [13.4,64.2,120;15.9,72.0,105;17.6,79.5,90;19.0,85.9,85;20.7,91.5,55];
my_atl_2024_017 = [13.4,64.2,120;15.7,72.2,100;17.1,79.5,85;18.4,85.8,80;20.5,91.1,55];
btk_atl_2024_017 = [13.4,64.0,140;16.1,71.8,130;17.8,78.3,115;19.4,84.8,100;21.4,89.7,50];
nhcvect = [nhcvect;nhc_atl_2024_017];
myvect = [myvect;my_atl_2024_017];
btkvect = [btkvect;btk_atl_2024_017];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 018 ... BERYL around 2024-07-01-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1807704441946083814
# NHC at https://www.nhc.noaa.gov/archive/2024/al02/al022024.discus.011.shtml?

nhc_atl_2024_018 = [13.9,66.1,115;16.0,73.9,95;17.4,81.2,85;18.4,87.6,85;19.5,92.5,55];
my_atl_2024_018 = [13.8,66.1,115;15.6,73.9,90;16.7,81.2,80;17.5,87.5,85;18.6,93.0,55];
btk_atl_2024_018 = [14.2,65.9,145;16.3,73.5,125;18.3,80.1,110;19.8,86.2,95;22.0,90.9,50];
nhcvect = [nhcvect;nhc_atl_2024_018];
myvect = [myvect;my_atl_2024_018];
btkvect = [btkvect;btk_atl_2024_018];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 019 ... BERYL around 2024-07-01-15Z ... certification failed
# my at https://x.com/elioeFIN/status/1807794623772872802
# NHC at https://www.nhc.noaa.gov/archive/2024/al02/al022024.discus.012.shtml?

nhc_atl_2024_019 = [14.5,67.8,125;16.4,75.6,95;17.8,82.6,80;19.0,88.5,65;20.5,93.0,55];
my_atl_2024_019 = [14.5,67.8,120;16.5,75.4,90;18.1,81.9,80;19.3,87.5,65;21.3,92.0,55];
btk_atl_2024_019 = [15.0,67.9,145;16.8,75.3,125;18.8,81.8,100;20.4,87.7,80;22.6,91.9,50];
nhcvect = [nhcvect;nhc_atl_2024_019];
myvect = [myvect;my_atl_2024_019];
btkvect = [btkvect;btk_atl_2024_019];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 020 ... BERYL around 2024-07-02-03Z ... certification failed
# my at https://x.com/elioeFIN/status/1807974226688692244
# NHC at https://www.nhc.noaa.gov/archive/2024/al02/al022024.discus.014.shtml?

nhc_atl_2024_020 = [15.9,71.5,125;17.7,78.6,95;18.6,85.4,80;20.5,91.0,55;22.5,95.0,55];
my_atl_2024_020 = [15.9,71.5,120;17.6,78.6,95;18.8,85.0,75;20.7,90.2,55;22.9,94.1,65];
btk_atl_2024_020 = [16.1,71.8,130;17.8,78.3,115;19.4,84.8,100;21.4,89.7,50;24.4,93.6,50];
nhcvect = [nhcvect;nhc_atl_2024_020];
myvect = [myvect;my_atl_2024_020];
btkvect = [btkvect;btk_atl_2024_020];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 021 ... BERYL around 2024-07-02-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1808066804800975176
# NHC at https://www.nhc.noaa.gov/archive/2024/al02/al022024.discus.015.shtml?

nhc_atl_2024_021 = [16.5,73.4,120;18.2,80.2,95;19.3,86.7,80;21.2,91.8,55;23.0,95.5,55];
my_atl_2024_021 = [16.5,73.4,120;18.1,80.1,95;19.3,86.3,80;21.3,91.1,55;23.4,95.1,65];
btk_atl_2024_021 = [16.3,73.5,125;18.3,80.1,110;19.8,86.2,95;22.0,90.9,50;24.9,94.3,50];
nhcvect = [nhcvect;nhc_atl_2024_021];
myvect = [myvect;my_atl_2024_021];
btkvect = [btkvect;btk_atl_2024_021];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 022 ... BERYL around 2024-07-02-15Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1808153373973037132
# NHC at https://www.nhc.noaa.gov/archive/2024/al02/al022024.discus.016.shtml?

nhc_atl_2024_022 = [17.2,75.0,120;18.8,82.0,90;20.0,88.2,65;22.0,93.0,55;24.0,96.4,55];
my_atl_2024_022 = [17.1,75.2,120;18.7,82.2,80;19.9,88.2,65;21.9,92.7,55;23.9,96.3,60];
btk_atl_2024_022 = [16.8,75.3,125;18.8,81.8,100;20.4,87.7,80;22.6,91.9,50;25.5,94.9,50];
nhcvect = [nhcvect;nhc_atl_2024_022];
myvect = [myvect;my_atl_2024_022];
btkvect = [btkvect;btk_atl_2024_022];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 023 ... BERYL around 2024-07-02-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1808244953270870234
# NHC at https://www.nhc.noaa.gov/archive/2024/al02/al022024.discus.017.shtml?

nhc_atl_2024_023 = [17.7,77.1,110;19.1,83.9,85;20.7,89.9,55;22.5,94.5,60;24.5,97.5,60];
my_atl_2024_023 = [17.5,77.2,105;19.0,84.0,80;20.7,89.7,55;23.0,93.7,65;24.8,97.0,55];
btk_atl_2024_023 = [17.2,76.8,120;19.3,83.5,95;20.9,88.8,60;23.5,92.6,50;26.3,95.3,55];
nhcvect = [nhcvect;nhc_atl_2024_023];
myvect = [myvect;my_atl_2024_023];
btkvect = [btkvect;btk_atl_2024_023];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 024 ... BERYL around 2024-07-03-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1808427720818204742
# NHC at https://www.nhc.noaa.gov/archive/2024/al02/al022024.discus.019.shtml?

nhc_atl_2024_024 = [18.1,80.4,100;19.4,86.9,85;21.1,91.9,55;23.0,95.5,65;25.0,98.0,60];
my_atl_2024_024 = [18.1,80.6,95;19.2,86.9,85;21.0,91.9,55;23.0,95.3,65;25.1,97.8,60];
btk_atl_2024_024 = [18.3,80.1,110;19.8,86.2,95;22.0,90.9,50;24.9,94.3,50;28.2,95.9,70];
nhcvect = [nhcvect;nhc_atl_2024_024];
myvect = [myvect;my_atl_2024_024];
btkvect = [btkvect;btk_atl_2024_024];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 025 ... BERYL around 2024-07-03-15Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1808517455607709921
# NHC at https://www.nhc.noaa.gov/archive/2024/al02/al022024.discus.020.shtml?

nhc_atl_2024_025 = [18.5,82.3,100;19.7,88.2,75;21.5,92.9,55;23.5,96.0,65;25.5,98.0,55];
my_atl_2024_025 = [18.4,82.3,95;19.5,88.2,70;21.4,92.7,55;23.4,95.4,60;25.4,97.5,60];
btk_atl_2024_025 = [18.8,81.8,100;20.4,87.7,80;22.6,91.9,50;25.5,94.9,50;29.2,95.9,65];
nhcvect = [nhcvect;nhc_atl_2024_025];
myvect = [myvect;my_atl_2024_025];
btkvect = [btkvect;btk_atl_2024_025];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 026 ... BERYL around 2024-07-03-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1808606846174785850
# NHC at https://www.nhc.noaa.gov/archive/2024/al02/al022024.discus.021.shtml?

nhc_atl_2024_026 = [18.7,83.7,95;19.9,89.5,55;21.9,93.9,55;24.0,96.9,65;26.0,98.5,45];
my_atl_2024_026 = [18.6,83.8,90;19.9,89.4,55;22.0,93.8,55;24.0,96.6,60;26.0,98.5,45];
btk_atl_2024_026 = [19.3,83.5,95;20.9,88.8,60;23.5,92.6,50;26.3,95.3,55;30.6,95.5,50];
nhcvect = [nhcvect;nhc_atl_2024_026];
myvect = [myvect;my_atl_2024_026];
btkvect = [btkvect;btk_atl_2024_026];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 027 ... BERYL around 2024-07-04-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1808790693688557769
# NHC at https://www.nhc.noaa.gov/archive/2024/al02/al022024.discus.023.shtml?

nhc_atl_2024_027 = [19.5,86.7,80;21.2,91.5,50;23.3,95.3,60;25.2,97.6,65;27.0,99.3,35];
my_atl_2024_027 = [19.6,86.7,75;21.3,91.5,50;23.8,94.8,60;25.8,96.9,65;28.0,98.5,35];
btk_atl_2024_027 = [19.8,86.2,95;22.0,90.9,50;24.9,94.3,50;28.2,95.9,70;33.6,94.0,25];
nhcvect = [nhcvect;nhc_atl_2024_027];
myvect = [myvect;my_atl_2024_027];
btkvect = [btkvect;btk_atl_2024_027];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 028 ... BERYL around 2024-07-04-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1808971146517250086
# NHC at https://www.nhc.noaa.gov/archive/2024/al02/al022024.discus.025.shtml?

nhc_atl_2024_028 = [20.7,89.2,60;22.6,93.5,55;24.5,96.5,65;26.5,98.5,45;29.0,99.5,25];
my_atl_2024_028 = [20.7,89.3,55;22.6,93.4,55;24.5,96.3,65;26.4,98.4,45;29.4,99.0,30];
btk_atl_2024_028 = [20.9,88.8,60;23.5,92.6,50;26.3,95.3,55;30.6,95.5,50;37.0,90.4,25];
nhcvect = [nhcvect;nhc_atl_2024_028];
myvect = [myvect;my_atl_2024_028];
btkvect = [btkvect;btk_atl_2024_028];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 029 ... BERYL around 2024-07-05-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1809063422702563556
# NHC at https://www.nhc.noaa.gov/archive/2024/al02/al022024.discus.026.shtml?

nhc_atl_2024_029 = [20.9,89.9,55;22.9,94.0,60;24.7,96.6,70;26.8,98.6,45;28.9,99.1,25];
my_atl_2024_029 = [21.0,90.0,55;23.2,94.1,60;25.0,96.5,70;27.2,98.3,45;29.5,98.5,30];
btk_atl_2024_029 = [21.4,89.7,50;24.4,93.6,50;27.1,95.6,60;32.1,94.8,30;38.9,87.0,25];
nhcvect = [nhcvect;nhc_atl_2024_029];
myvect = [myvect;my_atl_2024_029];
btkvect = [btkvect;btk_atl_2024_029];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 030 ... BERYL around 2024-07-05-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1809152614304448858
# NHC at https://www.nhc.noaa.gov/archive/2024/al02/al022024.discus.027.shtml?

nhc_atl_2024_030 = [21.7,91.0,50;23.8,94.8,60;26.0,97.1,75;28.0,98.4,35;30.0,98.0,25];
my_atl_2024_030 = [21.9,91.2,55;24.1,95.1,60;26.6,96.8,75;29.3,97.7,35;31.4,96.7,25];
btk_atl_2024_030 = [22.0,90.9,50;24.9,94.3,50;28.2,95.9,70;33.6,94.0,25;40.4,86.1,25];
nhcvect = [nhcvect;nhc_atl_2024_030];
myvect = [myvect;my_atl_2024_030];
btkvect = [btkvect;btk_atl_2024_030];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 031 ... BERYL around 2024-07-05-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1809331939331178980
# NHC at https://www.nhc.noaa.gov/archive/2024/al02/al022024.discus.029.shtml?

nhc_atl_2024_031 = [23.2,93.0,55;25.3,95.9,65;27.8,97.3,80;30.5,97.0,30;32.5,95.5,25];
my_atl_2024_031 = [23.4,92.9,55;25.6,95.6,65;28.4,96.9,80;31.2,96.3,30;33.1,94.5,25];
btk_atl_2024_031 = [23.5,92.6,50;26.3,95.3,55;30.6,95.5,50;37.0,90.4,25;41.8,82.7,30];
nhcvect = [nhcvect;nhc_atl_2024_031];
myvect = [myvect;my_atl_2024_031];
btkvect = [btkvect;btk_atl_2024_031];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 032 ... BERYL around 2024-07-06-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1809423980484325633
# NHC at https://www.nhc.noaa.gov/archive/2024/al02/al022024.discus.030.shtml?

nhc_atl_2024_032 = [23.9,93.6,55;26.2,96.0,70;29.2,96.7,50;31.8,95.3,25;33.9,92.5,20];
my_atl_2024_032 = [24.1,93.6,55;26.5,95.9,70;29.9,96.1,50;32.5,94.2,25;34.7,91.2,20];
btk_atl_2024_032 = [24.4,93.6,50;27.1,95.6,60;32.1,94.8,30;38.9,87.0,25;42.7,81.3,30];
nhcvect = [nhcvect;nhc_atl_2024_032];
myvect = [myvect;my_atl_2024_032];
btkvect = [btkvect;btk_atl_2024_032];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 033 ... BERYL around 2024-07-06-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1809512309447962987
# NHC at https://www.nhc.noaa.gov/archive/2024/al02/al022024.discus.031.shtml?

nhc_atl_2024_033 = [24.4,94.3,55;27.0,96.4,70;30.3,96.5,35;32.9,94.0,25;35.5,90.1,20];
my_atl_2024_033 = [24.5,94.3,55;26.8,96.4,65;30.0,96.8,35;32.7,94.3,25;35.2,90.8,20];
btk_atl_2024_033 = [24.9,94.3,50;28.2,95.9,70;33.6,94.0,25;40.4,86.1,25;42.7,79.9,25]; # day 5 self-made
nhcvect = [nhcvect;nhc_atl_2024_033];
myvect = [myvect;my_atl_2024_033];
btkvect = [btkvect;btk_atl_2024_033];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 034 ... BERYL around 2024-07-06-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1809697196150784511
# NHC at https://www.nhc.noaa.gov/archive/2024/al02/al022024.discus.033.shtml?

nhc_atl_2024_034 = [26.0,95.5,65;29.1,96.7,60;32.4,95.2,25;35.0,91.5,20;38.0,88.0,20];
my_atl_2024_034 = [26.1,95.6,65;29.4,96.7,55;32.8,95.1,25;35.4,91.8,20;37.7,89.0,20];
btk_atl_2024_034 = [26.3,95.3,55;30.6,95.5,50;37.0,90.4,25;41.8,82.7,30;43.9,70.9,25]; # day 5 self-made
nhcvect = [nhcvect;nhc_atl_2024_034];
myvect = [myvect;my_atl_2024_034];
btkvect = [btkvect;btk_atl_2024_034];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 035 ... BERYL around 2024-07-07-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1809785445909180790
# NHC at https://www.nhc.noaa.gov/archive/2024/al02/al022024.discus.034.shtml?

nhc_atl_2024_035 = [27.1,96.0,75;30.7,96.5,40;34.5,93.6,20;37.8,89.0,20;41.3,84.3,20];
my_atl_2024_035 = [27.1,96.1,70;31.0,96.2,40;35.7,92.5,20;40.0,86.8,20;43.4,82.5,20];
btk_atl_2024_035 = [27.1,95.6,60;32.1,94.8,30;38.9,87.0,25;42.7,81.3,30;44.8,69.2,25]; # day 5 self-made
nhcvect = [nhcvect;nhc_atl_2024_035];
myvect = [myvect;my_atl_2024_035];
btkvect = [btkvect;btk_atl_2024_035];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 036 ... BERYL around 2024-07-07-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1809876882801803272
# NHC at https://www.nhc.noaa.gov/archive/2024/al02/al022024.discus.035.shtml?

nhc_atl_2024_036 = [28.1,96.1,75;32.5,95.1,30;36.7,91.6,20;40.5,87.0,20;43.5,83.5,20];
my_atl_2024_036 = [28.1,96.2,75;32.5,95.2,30;37.6,91.6,20;41.7,86.0,20;44.1,83.0,25];
btk_atl_2024_036 = [28.2,95.9,70;33.6,94.0,25;40.4,86.1,25;42.7,79.9,25;47.2,62.1,25]; # days 4-5 self-made
nhcvect = [nhcvect;nhc_atl_2024_036];
myvect = [myvect;my_atl_2024_036];
btkvect = [btkvect;btk_atl_2024_036];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 037 ... BERYL around 2024-07-07-15Z ... certification failed
# my at https://x.com/elioeFIN/status/1809966287973400770
# NHC at https://www.nhc.noaa.gov/archive/2024/al02/al022024.discus.036.shtml?

nhc_atl_2024_037 = [29.2,96.2,75;33.6,94.2,25;38.6,89.2,20;42.8,83.6,20;46.0,79.0,20];
my_atl_2024_037 = [29.2,96.2,70;33.6,94.1,25;39.2,89.2,20;43.5,83.2,20;46.9,77.7,25];
btk_atl_2024_037 = [29.2,95.9,65;35.0,92.4,25;41.5,84.8,25;43.8,75.7,20;47.4,61.1,25]; # days 4-5 self-made
nhcvect = [nhcvect;nhc_atl_2024_037];
myvect = [myvect;my_atl_2024_037];
btkvect = [btkvect;btk_atl_2024_037];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 038 ... BERYL around 2024-07-08-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1810149509101465914
# NHC at https://www.nhc.noaa.gov/archive/2024/al02/al022024.discus.038.shtml?

nhc_atl_2024_038 = [31.5,95.3,40;36.0,90.8,25;40.4,84.4,20];
my_atl_2024_038 = [31.4,95.4,40;36.3,90.7,25;42.1,83.4,20];
btk_atl_2024_038 = [32.1,94.8,30;38.9,87.0,25;42.7,81.3,30];
nhcvect = [nhcvect;nhc_atl_2024_038];
myvect = [myvect;my_atl_2024_038];
btkvect = [btkvect;btk_atl_2024_038];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Atl 039 ... BERYL around 2024-07-08-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1810242191467368670
# NHC at https://www.nhc.noaa.gov/archive/2024/al02/al022024.discus.039.shtml?

nhc_atl_2024_039 = [32.7,94.4,35;37.5,89.0,20;42.0,83.0,20];
my_atl_2024_039 = [32.6,94.5,35;37.8,88.8,20;43.2,81.5,25];
btk_atl_2024_039 = [33.6,94.0,25;40.4,86.1,25;42.7,79.9,25]; # day 3 self-made
nhcvect = [nhcvect;nhc_atl_2024_039];
myvect = [myvect;my_atl_2024_039];
btkvect = [btkvect;btk_atl_2024_039];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Atl 040 ... BERYL around 2024-07-08-15Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1810328730646036752
# NHC at https://www.nhc.noaa.gov/archive/2024/al02/al022024.discus.040.shtml?

nhc_atl_2024_040 = [33.9,93.1,30;39.7,86.1,20;44.0,78.0,20];
my_atl_2024_040 = [33.9,93.0,30;39.9,86.3,25;45.2,78.2,20];
btk_atl_2024_040 = [35.0,92.4,25;41.5,84.8,25;43.8,75.7,20]; # day 3 self-made
nhcvect = [nhcvect;nhc_atl_2024_040];
myvect = [myvect;my_atl_2024_040];
btkvect = [btkvect;btk_atl_2024_040];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Wpac 011 ... 04W/(BUTCHOY) around 2024-07-20-21Z ... certification failed
# my at https://x.com/elioeFIN/status/1814767214790385769

nhc_wpac_2024_011 = [18.6,109.7,45;20.6,108.1,40;21.5,107.3,20];
my_wpac_2024_011 = [18.5,110.3,45;20.6,108.3,40;21.7,107.5,15];
btk_wpac_2024_011 = [18.8,110.2,50;21.0,108.0,55;21.9,106.3,20];
nhcvect = [nhcvect;nhc_wpac_2024_011];
myvect = [myvect;my_wpac_2024_011];
btkvect = [btkvect;btk_wpac_2024_011];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Wpac 012 ... GAEMI/(CARINA) around 2024-07-20-21Z ... certification failed
# my at https://x.com/elioeFIN/status/1814769883097538976

nhc_wpac_2024_012 = [18.0,124.9,50;19.5,124.1,70;22.2,123.6,95;25.5,122.2,100;28.6,120.0,65];
my_wpac_2024_012 = [17.9,125.1,50;19.3,124.3,70;21.4,123.8,95;25.5,122.1,90;28.3,118.8,60];
btk_wpac_2024_012 = [17.0,125.7,55;19.1,125.0,70;22.8,123.5,120;24.7,121.4,95;25.6,118.6,45];
nhcvect = [nhcvect;nhc_wpac_2024_012];
myvect = [myvect;my_wpac_2024_012];
btkvect = [btkvect;btk_wpac_2024_012];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 013 ... PRAPIROON/(BUTCHOY) around 2024-07-21-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1814942659204526206

nhc_wpac_2024_013 = [19.9,109.2,35;21.5,108.1,25;22.2,107.6,20];
my_wpac_2024_013 = [19.8,109.3,35;21.6,108.6,25;22.6,107.2,20];
btk_wpac_2024_013 = [20.1,108.7,55;21.6,107.4,30;21.2,105.3,20];
nhcvect = [nhcvect;nhc_wpac_2024_013];
myvect = [myvect;my_wpac_2024_013];
btkvect = [btkvect;btk_wpac_2024_013];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Wpac 014 ... GAEMI/(CARINA) around 2024-07-21-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1814946801931141423

nhc_wpac_2024_014 = [18.2,125.3,60;20.4,124.9,80;23.6,124.2,100;26.3,122.1,75;28.8,119.8,50];
my_wpac_2024_014 = [18.2,125.4,60;20.2,125.3,75;24.1,124.2,95;26.2,121.4,70;28.4,119.4,50];
btk_wpac_2024_014 = [18.1,125.5,55;20.8,125.2,90;24.2,122.5,125;25.1,119.8,60;27.5,117.8,35];
nhcvect = [nhcvect;nhc_wpac_2024_014];
myvect = [myvect;my_wpac_2024_014];
btkvect = [btkvect;btk_wpac_2024_014];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 015 ... GAEMI/(CARINA) around 2024-07-21-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1815126723358281918

nhc_wpac_2024_015 = [18.6,125.6,65;21.9,125.1,95;24.6,123.2,95;26.5,120.1,65;29.5,117.7,30];
my_wpac_2024_015 = [18.7,125.3,60;22.0,124.7,95;24.9,122.4,95;26.3,119.7,60;29.7,118.0,30];
btk_wpac_2024_015 = [19.1,125.0,70;22.8,123.5,120;24.7,121.4,95;25.6,118.6,45;29.5,116.5,25];
nhcvect = [nhcvect;nhc_wpac_2024_015];
myvect = [myvect;my_wpac_2024_015];
btkvect = [btkvect;btk_wpac_2024_015];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 016 ... GAEMI/(CARINA) around 2024-07-22-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1815218894908346547

nhc_wpac_2024_016 = [19.7,125.7,65;23.0,124.4,95;25.2,121.5,85;26.9,118.5,45];
my_wpac_2024_016 = [19.8,125.4,65;23.1,124.1,95;25.3,121.0,80;26.8,118.3,45];
btk_wpac_2024_016 = [19.7,125.0,80;23.5,123.3,120;25.1,120.1,75;26.5,118.3,35];
nhcvect = [nhcvect;nhc_wpac_2024_016];
myvect = [myvect;my_wpac_2024_016];
btkvect = [btkvect;btk_wpac_2024_016];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Wpac 017 ... GAEMI/(CARINA) around 2024-07-22-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1815306428241924240

nhc_wpac_2024_017 = [20.8,125.3,70;24.1,123.5,90;25.9,120.6,70;27.8,118.3,45];
my_wpac_2024_017 = [20.7,125.1,70;24.1,123.2,90;25.5,120.0,65;27.5,117.7,40];
btk_wpac_2024_017 = [20.8,125.2,90;24.2,122.5,125;25.1,119.8,60;27.5,117.8,35];
nhcvect = [nhcvect;nhc_wpac_2024_017];
myvect = [myvect;my_wpac_2024_017];
btkvect = [btkvect;btk_wpac_2024_017];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Wpac 018 ... GAEMI/(CARINA) around 2024-07-22-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1815489048959480110

nhc_wpac_2024_018 = [21.8,123.8,85;24.0,120.9,85;25.5,118.1,60;27.7,116.1,35];
my_wpac_2024_018 = [22.3,124.1,85;24.6,121.2,85;25.8,118.2,60;28.7,117.0,30];
btk_wpac_2024_018 = [22.8,123.5,120;24.7,121.4,95;25.6,118.6,45;29.5,116.5,25];
nhcvect = [nhcvect;nhc_wpac_2024_018];
myvect = [myvect;my_wpac_2024_018];
btkvect = [btkvect;btk_wpac_2024_018];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Wpac 019 ... GAEMI/(CARINA) around 2024-07-23-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1815854248506061201

nhc_wpac_2024_019 = [24.8,120.9,105;26.3,118.2,65;28.6,115.4,40];
my_wpac_2024_019 = [24.8,121.0,105;26.2,118.1,60;28.1,115.2,35];
btk_wpac_2024_019 = [24.7,121.4,95;25.6,118.6,45;29.5,116.5,25];
nhcvect = [nhcvect;nhc_wpac_2024_019];
myvect = [myvect;my_wpac_2024_019];
btkvect = [btkvect;btk_wpac_2024_019];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Wpac 020 ... GAEMI/(CARINA) around 2024-07-24-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1815940227086594072

nhc_wpac_2024_020 = [25.3,120.9,105;27.0,118.0,55];
my_wpac_2024_020 = [25.4,120.6,100;27.2,118.2,55];
btk_wpac_2024_020 = [25.1,120.2,75;26.5,118.3,35];
nhcvect = [nhcvect;nhc_wpac_2024_020];
myvect = [myvect;my_wpac_2024_020];
btkvect = [btkvect;btk_wpac_2024_020];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Wpac 021 ... GAEMI/(CARINA) around 2024-07-24-09Z ... certification failed
# my at https://x.com/elioeFIN/status/1816029560900632670

nhc_wpac_2024_021 = [25.8,119.9,80;28.2,117.3,40];
my_wpac_2024_021 = [25.9,120.1,80;28.0,117.2,40];
btk_wpac_2024_021 = [25.1,119.8,60;27.5,117.8,35];
nhcvect = [nhcvect;nhc_wpac_2024_021];
myvect = [myvect;my_wpac_2024_021];
btkvect = [btkvect;btk_wpac_2024_021];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Wpac 022 ... GAEMI/(CARINA) around 2024-07-24-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1816210008910225884

nhc_wpac_2024_022 = [26.5,118.6,50;29.8,115.9,20];
my_wpac_2024_022 = [26.4,118.4,50;29.3,115.6,20];
btk_wpac_2024_022 = [25.6,118.6,45;29.5,116.5,25];
nhcvect = [nhcvect;nhc_wpac_2024_022];
myvect = [myvect;my_wpac_2024_022];
btkvect = [btkvect;btk_wpac_2024_022];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Wpac 023 ... GAEMI/(CARINA) around 2024-07-25-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1816300047861952532

nhc_wpac_2024_023 = [27.0,117.5,45];
my_wpac_2024_023 = [27.1,117.8,40];
btk_wpac_2024_023 = [26.5,118.3,35];
nhcvect = [nhcvect;nhc_wpac_2024_023];
myvect = [myvect;my_wpac_2024_023];
btkvect = [btkvect;btk_wpac_2024_023];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;3];

# Epac 001 ... BUD around 2024-07-25-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1816305388280541217
# NHC at https://www.nhc.noaa.gov/archive/2024/ep02/ep022024.discus.002.shtml?

nhc_epac_2024_001 = [17.9,116.7,30;17.3,119.1,25];
my_epac_2024_001 = [18.1,116.9,30;18.3,120.1,25];
btk_epac_2024_001 = [18.5,117.5,45;19.2,120.9,20]; # day 2 self-made
nhcvect = [nhcvect;nhc_epac_2024_001];
myvect = [myvect;my_epac_2024_001];
btkvect = [btkvect;btk_epac_2024_001];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Wpac 024 ... GAEMI/(CARINA) around 2024-07-25-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1816392770551947482

nhc_wpac_2024_024 = [27.4,117.5,35];
my_wpac_2024_024 = [27.5,117.5,35];
btk_wpac_2024_024 = [27.5,117.8,35];
nhcvect = [nhcvect;nhc_wpac_2024_024];
myvect = [myvect;my_wpac_2024_024];
btkvect = [btkvect;btk_wpac_2024_024];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;3];

# Epac 002 ... BUD around 2024-07-25-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1816396760429834360
# NHC at https://www.nhc.noaa.gov/archive/2024/ep02/ep022024.discus.003.shtml?

nhc_epac_2024_002 = [18.2,117.5,30;17.7,120.1,25];
my_epac_2024_002 = [18.4,117.7,35;18.5,120.5,20];
btk_epac_2024_002 = [18.7,118.4,35;19.1,121.8,20]; # day 2 self-made
nhcvect = [nhcvect;nhc_epac_2024_002];
myvect = [myvect;my_epac_2024_002];
btkvect = [btkvect;btk_epac_2024_002];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Epac 003 ... BUD around 2024-07-25-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1816577753770029466
# NHC at https://www.nhc.noaa.gov/archive/2024/ep02/ep022024.discus.006.shtml?

nhc_epac_2024_003 = [18.7,120.2,40;18.4,122.9,30];
my_epac_2024_003 = [18.8,120.3,35;19.2,123.8,25];
btk_epac_2024_003 = [19.2,120.1,30;18.6,123.7,20]; # day 2 self-made
nhcvect = [nhcvect;nhc_epac_2024_003];
myvect = [myvect;my_epac_2024_003];
btkvect = [btkvect;btk_epac_2024_003];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Epac 004 ... CARLOTTA around 2024-07-31-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1818754286609739793
# NHC at https://www.nhc.noaa.gov/archive/2024/ep03/ep032024.discus.002.shtml?

nhc_epac_2024_004 = [17.3,111.8,60;17.8,116.0,80;17.8,120.2,85;18.3,122.2,75;19.3,124.0,65];
my_epac_2024_004 = [17.3,111.6,60;17.9,115.9,75;18.1,120.0,85;18.9,122.1,70;19.9,124.0,60];
btk_epac_2024_004 = [17.3,111.4,55;18.6,115.8,75;18.9,120.5,75;19.8,124.6,55;20.5,127.4,35];
nhcvect = [nhcvect;nhc_epac_2024_004];
myvect = [myvect;my_epac_2024_004];
btkvect = [btkvect;btk_epac_2024_004];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 005 ... CARLOTTA around 2024-08-01-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1818844163846070540
# NHC at https://www.nhc.noaa.gov/archive/2024/ep03/ep032024.discus.003.shtml?

nhc_epac_2024_005 = [17.7,112.5,75;18.0,116.9,85;18.1,120.8,85;18.7,122.9,75;19.4,124.8,55];
my_epac_2024_005 = [17.8,112.5,60;18.2,117.1,80;18.2,121.1,80;18.9,123.4,65;19.3,125.7,50];
btk_epac_2024_005 = [17.8,112.3,55;18.7,117.2,75;19.3,121.4,75;20.0,125.3,45;20.6,128.1,35];
nhcvect = [nhcvect;nhc_epac_2024_005];
myvect = [myvect;my_epac_2024_005];
btkvect = [btkvect;btk_epac_2024_005];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 006 ... CARLOTTA around 2024-08-01-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1818933695287349721
# NHC at https://www.nhc.noaa.gov/archive/2024/ep03/ep032024.discus.004.shtml?

nhc_epac_2024_006 = [17.9,113.7,75;18.2,118.0,85;18.5,121.4,85;19.0,124.0,70;19.5,126.5,55];
my_epac_2024_006 = [18.0,113.7,65;18.3,118.1,80;18.7,121.8,75;19.2,124.3,60;19.4,127.2,45];
btk_epac_2024_006 = [18.0,113.3,60;18.8,118.4,80;19.6,122.4,65;20.1,126.1,40;20.7,128.8,30]; # day 5 self-made
nhcvect = [nhcvect;nhc_epac_2024_006];
myvect = [myvect;my_epac_2024_006];
btkvect = [btkvect;btk_epac_2024_006];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 007 ... CARLOTTA around 2024-08-02-03Z ... certification failed
# my at https://x.com/elioeFIN/status/1819209922384437422
# NHC at https://www.nhc.noaa.gov/archive/2024/ep03/ep032024.discus.007.shtml?

nhc_epac_2024_007 = [18.6,116.7,75;19.1,121.1,80;19.7,124.8,70;20.2,128.0,55;20.5,131.0,40];
my_epac_2024_007 = [18.7,116.6,70;19.5,121.4,75;20.0,125.3,60;20.6,128.2,45;21.0,131.2,30];
btk_epac_2024_007 = [18.7,117.2,75;19.3,121.4,75;20.0,125.3,45;20.6,128.1,35;20.4,130.9,25]; # day 5 self-made
nhcvect = [nhcvect;nhc_epac_2024_007];
myvect = [myvect;my_epac_2024_007];
btkvect = [btkvect;btk_epac_2024_007];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 008 ... CARLOTTA around 2024-08-02-09Z ... certification failed
# my at https://x.com/elioeFIN/status/1819298376665444390
# NHC at https://www.nhc.noaa.gov/archive/2024/ep03/ep032024.discus.008.shtml?

nhc_epac_2024_008 = [18.9,117.9,85;19.4,122.3,80;20.2,126.2,55;21.0,129.0,45;21.5,132.0,35];
my_epac_2024_008 = [19.0,117.7,75;19.7,122.4,70;20.5,126.4,50;21.5,129.1,40;22.8,132.6,25];
btk_epac_2024_008 = [18.8,118.4,80;19.6,122.4,65;20.1,126.1,40;20.7,128.8,30;20.2,131.7,25]; # days 4-5 self-made
nhcvect = [nhcvect;nhc_epac_2024_008];
myvect = [myvect;my_epac_2024_008];
btkvect = [btkvect;btk_epac_2024_008];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 009 ... CARLOTTA around 2024-08-03-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1819662703423574239
# NHC at https://www.nhc.noaa.gov/archive/2024/ep03/ep032024.discus.012.shtml?

nhc_epac_2024_009 = [19.5,122.6,75;20.7,126.4,55;21.4,129.7,40;22.1,132.8,30];
my_epac_2024_009 = [19.5,122.6,70;20.7,126.8,50;21.4,130.1,35;22.4,132.6,25];
btk_epac_2024_009 = [19.6,122.4,65;20.1,126.1,40;20.7,128.8,30;20.2,131.7,25]; # days 3-4 self-made
nhcvect = [nhcvect;nhc_epac_2024_009];
myvect = [myvect;my_epac_2024_009];
btkvect = [btkvect;btk_epac_2024_009];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Atl 041 ... 04L around 2024-08-03-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1819666138873086237
# NHC at https://www.nhc.noaa.gov/archive/2024/al04/al042024.discus.004.shtml?

nhc_atl_2024_041 = [25.3,83.9,40;29.1,83.9,60;31.2,82.2,35;32.0,80.5,45;33.0,79.0,55];
my_atl_2024_041 = [25.2,84.0,40;28.9,84.3,55;31.1,82.9,35;31.5,81.1,40;33.2,78.9,50];
btk_atl_2024_041 = [24.9,83.9,45;29.2,83.7,70;31.2,81.9,40;31.8,79.7,40;32.9,79.6,45];
nhcvect = [nhcvect;nhc_atl_2024_041];
myvect = [myvect;my_atl_2024_041];
btkvect = [btkvect;btk_atl_2024_041];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 010 ... CARLOTTA around 2024-08-03-15Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1819749636728393984
# NHC at https://www.nhc.noaa.gov/archive/2024/ep03/ep032024.discus.013.shtml?

nhc_epac_2024_010 = [19.7,123.3,75;20.9,127.2,50;21.4,130.3,35;21.5,133.0,30];
my_epac_2024_010 = [19.8,123.3,70;21.0,127.3,45;21.5,130.5,30;21.7,133.0,25];
btk_epac_2024_010 = [19.8,123.5,55;20.3,126.8,40;20.7,129.5,30;20.2,132.6,20]; # days 3-4 self-made
nhcvect = [nhcvect;nhc_epac_2024_010];
myvect = [myvect;my_epac_2024_010];
btkvect = [btkvect;btk_epac_2024_010];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Atl 042 ... 04L around 2024-08-03-15Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1819753371688931778
# NHC at https://www.nhc.noaa.gov/archive/2024/al04/al042024.discus.005.shtml?

nhc_atl_2024_042 = [26.3,84.3,40;29.8,83.8,60;31.4,82.0,35;31.5,80.5,40;32.5,80.0,55];
my_atl_2024_042 = [26.2,84.4,40;29.7,83.8,55;31.4,82.2,35;31.6,80.8,40;32.8,80.3,45];
btk_atl_2024_042 = [26.2,84.2,50;29.9,83.4,65;31.9,81.3,40;32.2,79.4,50;34.0,79.9,40];
nhcvect = [nhcvect;nhc_atl_2024_042];
myvect = [myvect;my_atl_2024_042];
btkvect = [btkvect;btk_atl_2024_042];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 043 ... DEBBY around 2024-08-04-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1820022534273720469
# NHC at https://www.nhc.noaa.gov/archive/2024/al04/al042024.discus.008.shtml?

nhc_atl_2024_043 = [28.9,84.4,75;30.9,83.0,40;31.7,80.9,45;32.4,80.4,45;34.3,80.0,35];
my_atl_2024_043 = [28.8,84.6,70;31.0,83.4,40;31.9,81.7,40;32.7,81.0,40;34.9,80.4,30];
btk_atl_2024_043 = [29.2,83.7,70;31.2,81.9,40;31.8,79.7,40;32.9,79.6,45;36.8,79.7,25];
nhcvect = [nhcvect;nhc_atl_2024_043];
myvect = [myvect;my_atl_2024_043];
btkvect = [btkvect;btk_atl_2024_043];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 011 ... CARLOTTA around 2024-08-04-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1820025349318537250
# NHC at https://www.nhc.noaa.gov/archive/2024/ep03/ep032024.discus.016.shtml?

nhc_epac_2024_011 = [20.7,126.2,45;21.5,129.4,35;21.7,132.3,25];
my_epac_2024_011 = [20.8,126.2,45;21.6,130.0,30;21.7,132.9,20];
btk_epac_2024_011 = [20.1,126.1,40;20.7,128.8,30;20.2,131.7,25]; # days 2-3 self-made
nhcvect = [nhcvect;nhc_epac_2024_011];
myvect = [myvect;my_epac_2024_011];
btkvect = [btkvect;btk_epac_2024_011];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Atl 044 ... DEBBY around 2024-08-04-15Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1820115868673818628
# NHC at https://www.nhc.noaa.gov/archive/2024/al04/al042024.discus.009.shtml?

nhc_atl_2024_044 = [29.9,84.1,80;31.6,82.5,40;32.2,80.5,45;33.5,79.5,40;35.5,78.0,30];
my_atl_2024_044 = [29.9,84.3,75;31.7,82.9,35;32.3,80.9,40;33.7,80.9,35;36.3,80.2,30];
btk_atl_2024_044 = [29.9,83.4,65;31.9,81.3,40;32.2,79.4,50;34.0,79.9,40;40.4,78.9,30];
nhcvect = [nhcvect;nhc_atl_2024_044];
myvect = [myvect;my_atl_2024_044];
btkvect = [btkvect;btk_atl_2024_044];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 012 ... CARLOTTA around 2024-08-04-15Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1820116410556879084
# NHC at https://www.nhc.noaa.gov/archive/2024/ep03/ep032024.discus.017.shtml?

nhc_epac_2024_012 = [20.7,127.1,40;21.3,130.3,30;21.2,133.1,25];
my_epac_2024_012 = [20.7,127.3,35;21.1,130.6,25;21.0,133.4,20];
btk_epac_2024_012 = [20.3,126.8,40;20.7,129.5,30;20.2,132.6,20]; # days 2-3 self-made
nhcvect = [nhcvect;nhc_epac_2024_012];
myvect = [myvect;my_epac_2024_012];
btkvect = [btkvect;btk_epac_2024_012];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 013 ... DANIEL around 2024-08-04-15Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1820117827757420985
# NHC at https://www.nhc.noaa.gov/archive/2024/ep04/ep042024.discus.005.shtml?

nhc_epac_2024_013 = [15.3,127.8,40;17.8,126.2,30;18.9,127.9,25];
my_epac_2024_013 = [15.3,127.9,35;18.3,126.6,30;19.9,128.5,20];
btk_epac_2024_013 = [15.2,128.1,35;17.7,125.5,15;18.1,127.0,20]; # days 2-3 self-made
nhcvect = [nhcvect;nhc_epac_2024_013];
myvect = [myvect;my_epac_2024_013];
btkvect = [btkvect;btk_epac_2024_013];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Atl 045 ... DEBBY around 2024-08-04-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1820204884194480306
# NHC at https://www.nhc.noaa.gov/archive/2024/al04/al042024.discus.010.shtml?

nhc_atl_2024_045 = [30.5,83.8,75;31.7,82.1,35;31.9,80.5,45;32.6,80.1,45;34.0,79.5,30];
my_atl_2024_045 = [30.3,83.8,70;31.5,82.0,35;31.7,80.6,45;32.6,81.1,45;34.5,81.3,30];
btk_atl_2024_045 = [30.3,83.1,50;32.0,80.9,35;32.4,79.1,50;34.8,80.2,35;42.8,76.5,30];
nhcvect = [nhcvect;nhc_atl_2024_045];
myvect = [myvect;my_atl_2024_045];
btkvect = [btkvect;btk_atl_2024_045];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 046 ... DEBBY around 2024-08-05-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1820386831952691500
# NHC at https://www.nhc.noaa.gov/archive/2024/al04/al042024.discus.012.shtml?

nhc_atl_2024_046 = [31.3,82.1,45;31.9,80.2,45;32.3,79.6,50;33.5,79.6,40;35.6,78.9,30];
my_atl_2024_046 = [31.3,82.3,40;31.8,80.4,45;32.1,80.4,45;33.4,81.9,40;35.3,80.6,30];
btk_atl_2024_046 = [31.2,81.9,40;31.8,79.7,40;32.9,79.6,45;36.8,79.7,25;47.9,69.3,30]; # day 5 self-made
nhcvect = [nhcvect;nhc_atl_2024_046];
myvect = [myvect;my_atl_2024_046];
btkvect = [btkvect;btk_atl_2024_046];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 047 ... DEBBY around 2024-08-05-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1820566428812017803
# NHC at https://www.nhc.noaa.gov/archive/2024/al04/al042024.discus.014.shtml?

nhc_atl_2024_047 = [31.7,81.2,35;32.1,79.2,40;33.2,79.2,50;35.3,79.1,30;38.5,75.5,30];
my_atl_2024_047 = [31.5,81.2,35;31.8,79.5,40;32.6,80.4,45;34.9,81.2,25;38.1,77.6,30];
btk_atl_2024_047 = [32.0,80.9,35;32.4,79.1,50;34.8,80.2,35;42.8,76.5,30;50.3,60.0,30]; # day 5 self-made
nhcvect = [nhcvect;nhc_atl_2024_047];
myvect = [myvect;my_atl_2024_047];
btkvect = [btkvect;btk_atl_2024_047];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 048 ... DEBBY around 2024-08-06-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1820929971193356521
# NHC at https://www.nhc.noaa.gov/archive/2024/al04/al042024.discus.018.shtml?

nhc_atl_2024_048 = [32.6,79.3,45;34.0,79.5,45;38.5,78.5,30;45.0,72.0,30;52.0,66.0,30];
my_atl_2024_048 = [32.6,79.5,45;34.3,79.7,40;39.3,78.1,30;47.0,71.2,30;50.7,65.8,30];
btk_atl_2024_048 = [32.4,79.1,50;34.8,80.2,35;42.8,76.5,30;50.3,60.0,30;51.5,34.2,40]; # days 4-5 self-made
nhcvect = [nhcvect;nhc_atl_2024_048];
myvect = [myvect;my_atl_2024_048];
btkvect = [btkvect;btk_atl_2024_048];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 049 ... DEBBY around 2024-08-07-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1821022881704198361
# NHC at https://www.nhc.noaa.gov/archive/2024/al04/al042024.discus.019.shtml?

nhc_atl_2024_049 = [32.6,79.5,45;34.7,79.9,35;39.9,77.2,30;47.1,69.5,30;51.5,61.0,30];
my_atl_2024_049 = [32.5,79.4,40;34.7,80.2,30;39.3,77.5,30;46.0,69.1,30;49.4,60.8,30];
btk_atl_2024_049 = [32.7,79.4,50;35.1,80.2,25;45.3,73.1,30;50.6,50.4,35;51.9,30.5,35]; # days 4-5 self-made
nhcvect = [nhcvect;nhc_atl_2024_049];
myvect = [myvect;my_atl_2024_049];
btkvect = [btkvect;btk_atl_2024_049];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 025 ... 06W around 2024-08-07-09Z ... certification failed
# my at https://x.com/elioeFIN/status/1821102701620396381

nhc_wpac_2024_025 = [28.3,144.0,40;32.6,145.2,50;37.0,145.6,55;40.1,146.7,45;43.1,148.6,30];
my_wpac_2024_025 = [28.5,144.3,40;32.5,145.7,50;37.0,145.9,55;40.5,147.4,45;44.0,150.0,20];
btk_wpac_2024_025 = [27.9,144.8,55;32.1,146.0,60;35.6,145.4,50;37.6,143.9,50;39.8,139.9,35];
nhcvect = [nhcvect;nhc_wpac_2024_025];
myvect = [myvect;my_wpac_2024_025];
btkvect = [btkvect;btk_wpac_2024_025];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Atl 050 ... DEBBY around 2024-08-07-09Z ... certification failed
# my at https://x.com/elioeFIN/status/1821110252663631906
# NHC at https://www.nhc.noaa.gov/archive/2024/al04/al042024.discus.020.shtml?

nhc_atl_2024_050 = [32.9,79.5,45;36.0,79.7,30;43.8,73.9,30;50.8,62.1,30;53.9,53.5,30];
my_atl_2024_050 = [32.9,79.7,45;36.2,80.1,30;45.8,72.8,30;51.8,62.1,25;53.4,55.7,25];
btk_atl_2024_050 = [32.9,79.6,45;36.8,79.7,25;47.9,69.3,30;50.9,43.6,40;52.4,27.0,35]; # days 3-5 self-made
nhcvect = [nhcvect;nhc_atl_2024_050];
myvect = [myvect;my_atl_2024_050];
btkvect = [btkvect;btk_atl_2024_050];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 026 ... MARIA around 2024-08-08-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1821652460848468142

nhc_wpac_2024_026 = [34.3,146.0,85;37.3,145.1,70;39.1,143.8,60;40.0,141.2,45];
my_wpac_2024_026 = [34.2,145.9,80;36.8,144.5,65;38.2,142.3,55;40.6,139.8,35];
btk_wpac_2024_026 = [33.9,145.9,50;36.8,145.2,45;38.4,142.6,55;40.8,138.8,25];
nhcvect = [nhcvect;nhc_wpac_2024_026];
myvect = [myvect;my_wpac_2024_026];
btkvect = [btkvect;btk_wpac_2024_026];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Wpac 027 ... MARIA around 2024-08-09-15Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1821923041498063245

nhc_wpac_2024_027 = [36.0,144.9,55;37.7,142.7,50;39.0,139.6,35;40.0,137.1,35];
my_wpac_2024_027 = [36.1,144.9,50;37.7,142.8,50;39.6,139.0,30;40.8,137.4,25];
btk_wpac_2024_027 = [36.2,145.3,50;37.8,143.3,55;40.1,139.2,25;43.1,139.7,20];
nhcvect = [nhcvect;nhc_wpac_2024_027];
myvect = [myvect;my_wpac_2024_027];
btkvect = [btkvect;btk_wpac_2024_027];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Wpac 028 ... MARIA around 2024-08-10-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1822371379834245332

nhc_wpac_2024_028 = [38.4,142.7,40;40.7,139.2,20];
my_wpac_2024_028 = [38.4,142.7,40;41.1,139.0,20];
btk_wpac_2024_028 = [38.4,142.6,55;40.8,138.8,25];
nhcvect = [nhcvect;nhc_wpac_2024_028];
myvect = [myvect;my_wpac_2024_028];
btkvect = [btkvect;btk_wpac_2024_028];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Atl 051 ... 05L around 2024-08-12-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1822832232895005100
# NHC at https://www.nhc.noaa.gov/archive/2024/al05/al052024.discus.002.shtml?

nhc_atl_2024_051 = [15.6,58.0,35;17.4,63.7,50;20.3,66.8,65;24.5,67.7,85;28.5,65.9,95];
my_atl_2024_051 = [15.2,58.3,35;16.8,63.9,45;20.0,66.9,60;24.2,67.4,70;28.2,65.3,90];
btk_atl_2024_051 = [15.9,58.6,35;18.4,64.7,55;22.3,68.7,70;26.6,68.3,85;31.0,65.4,80];
nhcvect = [nhcvect;nhc_atl_2024_051];
myvect = [myvect;my_atl_2024_051];
btkvect = [btkvect;btk_atl_2024_051];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 052 ... 05L around 2024-08-12-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1822920235122327634
# NHC at https://www.nhc.noaa.gov/archive/2024/al05/al052024.discus.003.shtml?

nhc_atl_2024_052 = [15.7,59.6,30;17.9,64.8,45;21.0,66.9,65;25.0,67.0,85;29.5,65.0,95];
my_atl_2024_052 = [15.5,59.7,30;17.7,64.7,45;20.7,66.7,65;24.5,66.7,80;28.5,64.8,90];
btk_atl_2024_052 = [16.1,60.5,35;19.0,66.0,60;23.3,69.1,75;27.6,67.5,85;32.0,65.0,75];
nhcvect = [nhcvect;nhc_atl_2024_052];
myvect = [myvect;my_atl_2024_052];
btkvect = [btkvect;btk_atl_2024_052];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 053 ... 05L around 2024-08-12-15Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1823017536314593543
# NHC at https://www.nhc.noaa.gov/archive/2024/al05/al052024.discus.004.shtml?

nhc_atl_2024_053 = [16.3,62.2,35;18.8,66.4,45;22.7,68.2,65;27.0,67.5,85;31.5,65.0,95];
my_atl_2024_053 = [16.2,62.1,35;19.0,66.4,45;23.0,68.4,65;27.1,67.2,85;31.3,64.1,95];
btk_atl_2024_053 = [16.6,62.0,40;19.9,67.2,65;24.5,69.3,75;28.9,66.8,85;32.6,64.6,70];
nhcvect = [nhcvect;nhc_atl_2024_053];
myvect = [myvect;my_atl_2024_053];
btkvect = [btkvect;btk_atl_2024_053];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 054 ... ERNESTO around 2024-08-12-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1823102338674065732
# NHC at https://www.nhc.noaa.gov/archive/2024/al05/al052024.discus.005.shtml?

nhc_atl_2024_054 = [16.9,63.4,45;20.9,67.1,60;25.0,68.0,80;29.4,66.0,95;32.5,64.3,95];
my_atl_2024_054 = [17.1,63.3,45;20.4,67.1,55;24.9,68.6,80;28.5,66.7,95;31.3,65.3,95];
btk_atl_2024_054 = [17.6,63.5,50;21.1,68.0,65;25.6,69.1,80;30.0,66.1,85;33.0,64.2,65];
nhcvect = [nhcvect;nhc_atl_2024_054];
myvect = [myvect;my_atl_2024_054];
btkvect = [btkvect;btk_atl_2024_054];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 029 ... AMPIL around 2024-08-13-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1823278042476642796

nhc_wpac_2024_029 = [26.9,139.8,60;30.1,140.2,75;34.0,139.9,100;37.6,143.3,80;40.1,151.4,50];
my_wpac_2024_029 = [26.6,139.5,60;30.0,140.1,75;34.1,139.7,100;37.6,143.6,75;39.7,152.9,50];
btk_wpac_2024_029 = [26.8,140.7,60;30.6,141.0,90;34.1,141.1,110;37.2,145.0,80;40.8,155.4,60];
nhcvect = [nhcvect;nhc_wpac_2024_029];
myvect = [myvect;my_wpac_2024_029];
btkvect = [btkvect;btk_wpac_2024_029];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Atl 055 ... ERNESTO around 2024-08-13-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1823282594089246819
# NHC at https://www.nhc.noaa.gov/archive/2024/al05/al052024.discus.007.shtml?

nhc_atl_2024_055 = [18.7,65.7,50;23.0,68.3,70;27.2,67.3,90;30.5,65.0,95;33.5,64.5,95];
my_atl_2024_055 = [18.8,65.7,55;23.1,68.4,70;27.2,67.3,70;30.2,65.4,100;33.0,64.9,90];
btk_atl_2024_055 = [19.0,66.0,60;23.3,69.1,75;27.6,67.5,85;32.0,65.0,75;34.2,63.1,60];
nhcvect = [nhcvect;nhc_atl_2024_055];
myvect = [myvect;my_atl_2024_055];
btkvect = [btkvect;btk_atl_2024_055];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 056 ... ERNESTO around 2024-08-13-15Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1823377741946802286
# NHC at https://www.nhc.noaa.gov/archive/2024/al05/al052024.discus.008.shtml?

nhc_atl_2024_056 = [19.8,66.6,65;24.3,68.5,85;28.2,67.0,95;31.4,65.2,95;34.9,64.5,90];
my_atl_2024_056 = [19.7,66.5,60;24.3,68.4,80;28.1,66.4,90;31.2,64.4,95;34.7,63.6,90];
btk_atl_2024_056 = [19.9,67.2,65;24.5,69.3,75;28.9,66.8,85;32.6,64.6,70;35.4,62.9,60];
nhcvect = [nhcvect;nhc_atl_2024_056];
myvect = [myvect;my_atl_2024_056];
btkvect = [btkvect;btk_atl_2024_056];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 030 ... AMPIL around 2024-08-14-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1823826248113774621

nhc_wpac_2024_030 = [32.5,140.9,90;35.8,142.0,105;38.1,147.5,80;41.0,158.4,60];
my_wpac_2024_030 = [32.7,140.9,90;36.3,142.0,100;38.5,148.7,75;40.8,159.4,55];
btk_wpac_2024_030 = [32.5,140.8,100;35.8,143.0,100;38.6,149.8,65;43.0,160.4,55];
nhcvect = [nhcvect;nhc_wpac_2024_030];
myvect = [myvect;my_wpac_2024_030];
btkvect = [btkvect;btk_wpac_2024_030];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Atl 057 ... ERNESTO around 2024-08-14-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1823830372142211093
# NHC at https://www.nhc.noaa.gov/archive/2024/al05/al052024.discus.013.shtml?

nhc_atl_2024_057 = [25.7,69.0,85;29.5,66.6,100;32.9,65.4,90;37.0,64.2,85;43.4,58.2,80];
my_atl_2024_057 = [25.7,69.3,85;29.6,66.7,95;33.0,65.6,85;36.7,64.3,90;43.2,58.7,75];
btk_atl_2024_057 = [25.6,69.1,80;30.0,66.1,85;33.0,64.2,65;36.4,62.7,65;42.9,57.8,80];
nhcvect = [nhcvect;nhc_atl_2024_057];
myvect = [myvect;my_atl_2024_057];
btkvect = [btkvect;btk_atl_2024_057];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 058 ... ERNESTO around 2024-08-15-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1824012994247897384
# NHC at https://www.nhc.noaa.gov/archive/2024/al05/al052024.discus.015.shtml?

nhc_atl_2024_058 = [27.4,68.1,95;31.1,65.7,95;34.3,65.1,90;39.7,62.3,90;47.0,52.0,65];
my_atl_2024_058 = [27.5,68.2,95;31.2,65.8,90;34.2,65.6,80;39.4,62.8,80;47.2,52.9,55];
btk_atl_2024_058 = [27.6,67.5,85;32.0,65.0,75;34.2,63.1,60;39.3,61.1,75;46.6,51.4,65];
nhcvect = [nhcvect;nhc_atl_2024_058];
myvect = [myvect;my_atl_2024_058];
btkvect = [btkvect;btk_atl_2024_058];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 059 ... ERNESTO around 2024-08-16-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1824283563128164430
# NHC at https://www.nhc.noaa.gov/archive/2024/al05/al052024.discus.018.shtml?

nhc_atl_2024_059 = [30.4,65.9,95;33.5,64.8,80;38.2,62.6,80;45.6,54.6,70;51.0,36.7,50];
my_atl_2024_059 = [30.3,65.9,90;33.4,65.0,70;37.8,63.1,80;45.2,55.8,70;50.4,38.4,45];
btk_atl_2024_059 = [31.0,65.4,80;33.5,63.6,60;37.7,62.0,70;44.8,55.0,75;51.0,35.7,40]; # day 5 self-made
nhcvect = [nhcvect;nhc_atl_2024_059];
myvect = [myvect;my_atl_2024_059];
btkvect = [btkvect;btk_atl_2024_059];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 060 ... ERNESTO around 2024-08-16-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1824372798506037399
# NHC at https://www.nhc.noaa.gov/archive/2024/al05/al052024.discus.019.shtml?

nhc_atl_2024_060 = [31.5,65.2,85;34.2,64.4,75;39.4,61.6,80;47.0,51.0,60;52.5,31.0,45];
my_atl_2024_060 = [31.6,65.1,80;34.3,64.5,70;39.2,62.4,70;47.4,53.1,55;54.0,31.3,40];
btk_atl_2024_060 = [32.0,65.0,75;34.2,63.1,60;39.3,61.1,75;46.6,51.4,65;52.3,28.9,40]; # day 5 self-made
nhcvect = [nhcvect;nhc_atl_2024_060];
myvect = [myvect;my_atl_2024_060];
btkvect = [btkvect;btk_atl_2024_060];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 061 ... ERNESTO around 2024-08-16-15Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1824462453163319627
# NHC at https://www.nhc.noaa.gov/archive/2024/al05/al052024.discus.020.shtml?

nhc_atl_2024_061 = [32.5,64.9,75;35.4,63.9,70;41.6,59.7,80;48.4,47.5,55;52.0,26.0,40];
my_atl_2024_061 = [32.7,64.7,75;35.6,63.5,65;41.6,59.8,75;48.4,48.8,50;51.2,29.2,35];
btk_atl_2024_061 = [32.6,64.6,70;35.4,62.9,60;40.9,59.7,80;48.3,47.2,60;53.3,22.5,40]; # day 5 self-made
nhcvect = [nhcvect;nhc_atl_2024_061];
myvect = [myvect;my_atl_2024_061];
btkvect = [btkvect;btk_atl_2024_061];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 062 ... ERNESTO around 2024-08-17-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1824914169428082910
# NHC at https://www.nhc.noaa.gov/archive/2024/al05/al052024.discus.025.shtml?

nhc_atl_2024_062 = [36.5,62.6,70;43.0,57.2,65;48.9,42.1,45];
my_atl_2024_062 = [36.7,62.5,65;43.4,56.9,60;49.3,42.3,40];
btk_atl_2024_062 = [36.4,62.7,65;42.9,57.8,80;49.6,42.0,45];
nhcvect = [nhcvect;nhc_atl_2024_062];
myvect = [myvect;my_atl_2024_062];
btkvect = [btkvect;btk_atl_2024_062];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Atl 063 ... ERNESTO around 2024-08-18-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1825003560313975016
# NHC at https://www.nhc.noaa.gov/archive/2024/al05/al052024.discus.026.shtml?

nhc_atl_2024_063 = [37.9,61.6,65;44.7,53.8,65;50.4,36.9,40];
my_atl_2024_063 = [38.0,61.5,65;45.0,53.8,60;50.1,36.2,35];
btk_atl_2024_063 = [37.7,62.0,70;44.8,55.0,75;51.0,35.7,40]; # day 3 self-made
nhcvect = [nhcvect;nhc_atl_2024_063];
myvect = [myvect;my_atl_2024_063];
btkvect = [btkvect;btk_atl_2024_063];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Atl 064 ... ERNESTO around 2024-08-18-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1825096216503337342
# NHC at https://www.nhc.noaa.gov/archive/2024/al05/al052024.discus.027.shtml?

nhc_atl_2024_064 = [39.4,60.4,70;46.4,50.3,55;51.0,31.0,40];
my_atl_2024_064 = [39.4,60.3,65;46.0,50.5,50;49.6,32.2,35];
btk_atl_2024_064 = [39.3,61.1,75;46.6,51.4,65;52.3,28.9,40]; # day 3 self-made
nhcvect = [nhcvect;nhc_atl_2024_064];
myvect = [myvect;my_atl_2024_064];
btkvect = [btkvect;btk_atl_2024_064];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Atl 065 ... ERNESTO around 2024-08-18-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1825275596349346303
# NHC at https://www.nhc.noaa.gov/archive/2024/al05/al052024.discus.029.shtml?

nhc_atl_2024_065 = [42.6,57.1,70;48.9,41.3,45];
my_atl_2024_065 = [42.6,57.1,65;48.6,41.7,40];
btk_atl_2024_065 = [42.9,57.8,80;49.6,42.0,45]; # day 2 self-made
nhcvect = [nhcvect;nhc_atl_2024_065];
myvect = [myvect;my_atl_2024_065];
btkvect = [btkvect;btk_atl_2024_065];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Epac 014 ... GILMA around 2024-08-18-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1825279016259256509
# NHC at https://www.nhc.noaa.gov/archive/2024/ep07/ep072024.discus.002.shtml?

nhc_epac_2024_014 = [15.6,116.1,40;16.9,119.9,50;16.9,122.5,60;17.7,125.0,70;18.6,127.1,70];
my_epac_2024_014 = [15.6,116.1,40;16.4,120.2,50;17.0,122.7,55;17.6,124.9,60;18.7,127.5,65];
btk_epac_2024_014 = [15.0,116.5,50;16.0,120.2,55;16.2,122.9,90;16.9,124.7,110;17.2,127.2,95];
nhcvect = [nhcvect;nhc_epac_2024_014];
myvect = [myvect;my_epac_2024_014];
btkvect = [btkvect;btk_epac_2024_014];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 015 ... GILMA around 2024-08-19-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1825367698437476514
# NHC at https://www.nhc.noaa.gov/archive/2024/ep07/ep072024.discus.003.shtml?

nhc_epac_2024_015 = [15.5,117.3,40;16.3,120.7,50;17.5,123.5,60;18.3,125.5,70;19.1,127.8,65];
my_epac_2024_015 = [15.5,117.1,40;16.6,121.0,50;17.7,123.7,55;18.6,125.4,60;19.5,127.8,55];
btk_epac_2024_015 = [15.2,116.9,50;16.0,121.1,60;16.4,123.5,95;17.2,125.2,105;17.4,128.0,90];
nhcvect = [nhcvect;nhc_epac_2024_015];
myvect = [myvect;my_epac_2024_015];
btkvect = [btkvect;btk_epac_2024_015];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 016 ... GILMA around 2024-08-19-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1825458152743035248
# NHC at https://www.nhc.noaa.gov/archive/2024/ep07/ep072024.discus.004.shtml?

nhc_epac_2024_016 = [15.5,118.2,50;16.7,121.5,55;17.8,123.9,70;18.6,125.9,70;19.5,128.3,60];
my_epac_2024_016 = [15.5,118.1,50;16.8,121.5,55;18.1,124.0,65;19.0,125.8,60;20.3,128.2,55];
btk_epac_2024_016 = [15.6,117.8,45;15.9,122.0,65;16.5,123.9,100;17.3,125.8,105;17.5,128.9,85];
nhcvect = [nhcvect;nhc_epac_2024_016];
myvect = [myvect;my_epac_2024_016];
btkvect = [btkvect;btk_epac_2024_016];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 017 ... GILMA around 2024-08-19-15Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1825551508060143992
# NHC at https://www.nhc.noaa.gov/archive/2024/ep07/ep072024.discus.005.shtml?

nhc_epac_2024_017 = [15.8,119.3,50;17.0,122.6,55;18.0,124.7,70;19.0,127.0,70;20.0,129.0,60];
my_epac_2024_017 = [15.9,119.1,50;17.1,122.9,55;18.1,124.9,65;18.9,126.9,60;19.7,129.2,50];
btk_epac_2024_017 = [15.9,119.1,45;15.9,122.5,75;16.7,124.2,110;17.3,126.4,100;17.5,129.6,80];
nhcvect = [nhcvect;nhc_epac_2024_017];
myvect = [myvect;my_epac_2024_017];
btkvect = [btkvect;btk_epac_2024_017];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 018 ... GILMA around 2024-08-19-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1825637927507968338
# NHC at https://www.nhc.noaa.gov/archive/2024/ep07/ep072024.discus.006.shtml?

nhc_epac_2024_018 = [16.2,120.0,55;17.2,123.6,60;18.3,126.0,75;19.0,127.5,75;20.0,130.0,65];
my_epac_2024_018 = [16.1,120.2,55;17.1,123.7,60;18.3,126.1,75;19.0,127.5,65;19.9,129.8,60];
btk_epac_2024_018 = [16.0,120.2,55;16.2,122.9,90;16.9,124.7,110;17.2,127.2,95;17.6,130.5,85];
nhcvect = [nhcvect;nhc_epac_2024_018];
myvect = [myvect;my_epac_2024_018];
btkvect = [btkvect;btk_epac_2024_018];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 019 ... GILMA around 2024-08-20-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1825819460822782413
# NHC at https://www.nhc.noaa.gov/archive/2024/ep07/ep072024.discus.008.shtml?

nhc_epac_2024_019 = [16.4,121.5,50;17.3,124.2,70;18.2,126.4,85;19.0,128.6,75;20.0,131.2,60];
my_epac_2024_019 = [16.5,121.4,50;17.4,124.3,70;18.5,126.6,75;19.6,128.7,70;20.9,131.4,50];
btk_epac_2024_019 = [15.9,122.0,65;16.5,123.9,100;17.3,125.8,105;17.5,128.9,85;17.9,132.1,115];
nhcvect = [nhcvect;nhc_epac_2024_019];
myvect = [myvect;my_epac_2024_019];
btkvect = [btkvect;btk_epac_2024_019];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 020 ... GILMA around 2024-08-20-15Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1825908770691555424
# NHC at https://www.nhc.noaa.gov/archive/2024/ep07/ep072024.discus.009.shtml?

nhc_epac_2024_020 = [16.6,122.6,55;17.4,125.0,75;18.3,127.3,85;19.2,129.7,75;20.0,132.7,60];
my_epac_2024_020 = [16.6,122.5,50;17.4,125.1,70;18.3,127.4,75;19.3,129.7,70;19.6,132.9,50];
btk_epac_2024_020 = [15.9,122.5,75;16.7,124.2,110;17.3,126.4,100;17.5,129.6,80;17.9,133.1,110];
nhcvect = [nhcvect;nhc_epac_2024_020];
myvect = [myvect;my_epac_2024_020];
btkvect = [btkvect;btk_epac_2024_020];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 021 ... GILMA around 2024-08-22-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1826454838450028695
# NHC at https://www.nhc.noaa.gov/archive/2024/ep07/ep072024.discus.015.shtml?

nhc_epac_2024_021 = [17.1,125.9,110;17.5,128.7,95;18.0,132.2,85;18.5,135.9,75;19.1,140.0,65];
my_epac_2024_021 = [17.1,125.8,100;17.4,128.8,90;18.1,132.1,75;19.0,135.8,65;19.7,140.0,55];
btk_epac_2024_021 = [17.2,125.2,105;17.4,128.0,90;17.7,131.4,110;18.0,134.7,90;18.4,137.8,95];
nhcvect = [nhcvect;nhc_epac_2024_021];
myvect = [myvect;my_epac_2024_021];
btkvect = [btkvect;btk_epac_2024_021];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 022 ... GILMA around 2024-08-22-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1826545478613311752
# NHC at https://www.nhc.noaa.gov/archive/2024/ep07/ep072024.discus.016.shtml?

nhc_epac_2024_022 = [17.2,126.3,105;17.8,129.3,90;18.3,132.6,80;18.6,136.0,70;19.0,140.0,60];
my_epac_2024_022 = [17.3,126.2,95;17.8,129.2,85;18.3,132.5,70;18.9,135.8,60;19.6,140.1,50];
btk_epac_2024_022 = [17.3,125.8,105;17.5,128.9,85;17.9,132.1,115;18.1,135.5,85;18.4,138.7,90];
nhcvect = [nhcvect;nhc_epac_2024_022];
myvect = [myvect;my_epac_2024_022];
btkvect = [btkvect;btk_epac_2024_022];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Wpac 031 ... SHANSHAN around 2024-08-22-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1826537540725174419

nhc_wpac_2024_031 = [18.1,140.3,60;20.9,139.7,70;24.7,137.9,75;28.2,135.6,85;33.0,134.7,100];
my_wpac_2024_031 = [18.1,140.5,60;21.2,139.6,70;25.5,138.0,75;29.1,135.7,90;33.6,135.9,95];
btk_wpac_2024_031 = [17.8,141.2,60;21.1,141.1,65;25.9,137.8,70;27.6,132.8,85;28.5,130.4,110];
nhcvect = [nhcvect;nhc_wpac_2024_031];
myvect = [myvect;my_wpac_2024_031];
btkvect = [btkvect;btk_wpac_2024_031];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Epac 023 ... GILMA around 2024-08-22-15Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1826637356662919406
# NHC at https://www.nhc.noaa.gov/archive/2024/ep07/ep072024.discus.017.shtml?

nhc_epac_2024_023 = [17.5,126.8,105;18.1,129.9,95;18.4,133.3,80;18.8,137.1,65;19.1,141.3,55];
my_epac_2024_023 = [17.6,126.7,100;18.1,129.9,85;18.6,133.3,70;19.2,137.1,55;19.5,141.3,45];
btk_epac_2024_023 = [17.3,126.4,100;17.5,129.6,80;17.9,133.1,110;18.1,136.1,85;18.4,140.1,75];
nhcvect = [nhcvect;nhc_epac_2024_023];
myvect = [myvect;my_epac_2024_023];
btkvect = [btkvect;btk_epac_2024_023];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 024 ... GILMA around 2024-08-22-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1826723796704796922
# NHC at https://www.nhc.noaa.gov/archive/2024/ep07/ep072024.discus.018.shtml?

nhc_epac_2024_024 = [17.7,127.4,105;18.5,130.6,95;18.9,134.4,80;19.5,138.5,60;20.0,143.5,45];
my_epac_2024_024 = [17.8,127.3,100;18.5,130.5,85;19.2,134.3,70;19.9,138.4,50;20.6,143.6,40];
btk_epac_2024_024 = [17.2,127.2,95;17.6,130.5,85;17.9,133.9,100;18.3,136.9,95;18.4,141.5,55];
nhcvect = [nhcvect;nhc_epac_2024_024];
myvect = [myvect;my_epac_2024_024];
btkvect = [btkvect;btk_epac_2024_024];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Cpac 01 ... HONE around 2024-08-22-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1826727405517693295
# CPHC at https://www.nhc.noaa.gov/archive/2024/cp01/cp012024.discus.002.shtml?

nhc_cpac_2024_01 = [16.7,146.6,40;17.3,151.5,55;17.8,156.0,60;18.6,159.0,60;19.5,161.6,50];
my_cpac_2024_01 = [16.6,146.5,40;17.4,151.5,55;17.9,156.2,55;19.0,159.2,55;20.0,161.8,40];
btk_cpac_2024_01 = [16.6,147.0,40;17.6,152.6,55;18.6,156.8,70;19.1,161.1,55;20.0,165.7,45];
nhcvect = [nhcvect;nhc_cpac_2024_01];
myvect = [myvect;my_cpac_2024_01];
btkvect = [btkvect;btk_cpac_2024_01];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Epac 025 ... GILMA around 2024-08-23-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1826905645066440883
# NHC at https://www.nhc.noaa.gov/archive/2024/ep07/ep072024.discus.020.shtml?

nhc_epac_2024_025 = [18.0,128.8,95;18.7,132.2,80;19.3,136.1,65;19.9,140.8,50;20.5,146.0,35];
my_epac_2024_025 = [18.0,128.6,95;18.7,132.1,75;19.4,135.9,60;20.3,140.6,40;20.8,146.0,30];
btk_epac_2024_025 = [17.5,128.9,85;17.9,132.1,115;18.1,135.5,85;19.4,138.7,90;18.4,143.9,45];
nhcvect = [nhcvect;nhc_epac_2024_025];
myvect = [myvect;my_epac_2024_025];
btkvect = [btkvect;btk_epac_2024_025];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Cpac 02 ... HONE around 2024-08-23-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1826910108942491788
# CPHC at https://www.nhc.noaa.gov/archive/2024/cp01/cp012024.discus.004.shtml?

nhc_cpac_2024_02 = [16.7,149.5,45;17.4,154.7,55;18.4,158.9,65;19.5,161.5,65;20.0,165.0,50];
my_cpac_2024_02 = [16.8,149.6,45;17.5,155.0,55;18.6,159.0,60;19.7,161.7,55;19.9,164.7,45];
btk_cpac_2024_02 = [17.2,149.9,50;18.1,154.8,65;19.0,159.1,60;19.7,163.6,50;20.3,167.3,45];
nhcvect = [nhcvect;nhc_cpac_2024_02];
myvect = [myvect;my_cpac_2024_02];
btkvect = [btkvect;btk_cpac_2024_02];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Epac 026 ... GILMA around 2024-08-23-15Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1826995412823130137
# NHC at https://www.nhc.noaa.gov/archive/2024/ep07/ep072024.discus.021.shtml?

nhc_epac_2024_026 = [18.0,129.6,90;18.6,133.1,75;19.2,137.0,60;19.9,141.7,45;20.6,147.0,30];
my_epac_2024_026 = [18.0,129.8,90;18.6,133.2,70;19.2,137.1,55;20.0,141.8,35;20.5,147.0,30];
btk_epac_2024_026 = [17.5,129.6,80;17.9,133.1,110;18.1,136.1,85;18.4,140.1,75;18.6,145.1,40];
nhcvect = [nhcvect;nhc_epac_2024_026];
myvect = [myvect;my_epac_2024_026];
btkvect = [btkvect;btk_epac_2024_026];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Cpac 03 ... HONE around 2024-08-23-15Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1827001464931193302
# CPHC at https://www.nhc.noaa.gov/archive/2024/cp01/cp012024.discus.005.shtml?

nhc_cpac_2024_03 = [17.0,151.2,45;17.8,156.1,55;18.9,160.0,65;20.0,163.5,55;20.1,166.5,40];
my_cpac_2024_03 = [17.1,151.3,45;17.7,156.5,60;18.7,160.4,60;20.2,163.9,50;20.3,166.7,35];
btk_cpac_2024_03 = [17.4,151.3,55;18.1,155.7,75;19.1,161.1,55;19.8,164.7,45;20.5,168.1,45];
nhcvect = [nhcvect;nhc_cpac_2024_03];
myvect = [myvect;my_cpac_2024_03];
btkvect = [btkvect;btk_cpac_2024_03];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Epac 027 ... GILMA around 2024-08-23-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1827091851842875529
# NHC at https://www.nhc.noaa.gov/archive/2024/ep07/ep072024.discus.022.shtml?

nhc_epac_2024_027 = [17.8,130.6,85;18.4,134.0,75;19.0,138.1,50;19.8,142.8,35;20.5,148.0,30];
my_epac_2024_027 = [17.9,130.5,85;18.4,134.0,70;19.0,138.0,50;20.0,142.7,30;20.6,148.1,30];
btk_epac_2024_027 = [17.6,130.5,85;17.9,133.9,100;18.3,136.9,95;18.4,141.5,55;18.9,146.4,40];
nhcvect = [nhcvect;nhc_epac_2024_027];
myvect = [myvect;my_epac_2024_027];
btkvect = [btkvect;btk_epac_2024_027];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 028 ... GILMA around 2024-08-24-15Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1827357204489310281
# NHC at https://www.nhc.noaa.gov/archive/2024/ep07/ep072024.discus.025.shtml?

nhc_epac_2024_028 = [17.9,133.1,80;18.3,136.6,70;18.7,140.6,50;19.3,145.0,35;20.0,149.5,30];
my_epac_2024_028 = [17.8,133.1,75;18.2,136.5,65;18.6,140.2,50;19.5,144.4,35;20.1,149.2,30];
btk_epac_2024_028 = [17.9,133.1,110;18.1,136.1,85;18.4,140.1,75;18.6,145.1,40;19.8,150.1,30];
nhcvect = [nhcvect;nhc_epac_2024_028];
myvect = [myvect;my_epac_2024_028];
btkvect = [btkvect;btk_epac_2024_028];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Cpac 04 ... HONE around 2024-08-24-15Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1827360466265428394
# CPHC at https://www.nhc.noaa.gov/archive/2024/cp01/cp012024.discus.009.shtml?

nhc_cpac_2024_04 = [18.1,156.0,60;18.9,160.3,65;19.5,164.0,55;20.2,167.4,45;20.8,170.2,35];
my_cpac_2024_04 = [18.3,155.9,60;18.8,160.3,60;19.4,163.9,50;20.6,167.5,45;21.3,170.6,30];
btk_cpac_2024_04 = [18.1,155.7,75;19.0,160.2,55;19.8,164.7,45;20.5,168.1,45;21.0,171.5,35];
nhcvect = [nhcvect;nhc_cpac_2024_04];
myvect = [myvect;my_cpac_2024_04];
btkvect = [btkvect;btk_cpac_2024_04];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Epac 029 ... GILMA around 2024-08-25-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1827632903087431779
# NHC at https://www.nhc.noaa.gov/archive/2024/ep07/ep072024.discus.029.shtml?

nhc_epac_2024_029 = [18.3,135.5,100;18.7,139.1,75;19.2,142.8,55;20.0,146.6,40;20.6,150.1,30];
my_epac_2024_029 = [18.2,135.4,100;18.6,139.1,70;19.4,142.7,60;20.3,146.4,45;21.2,150.3,30];
btk_epac_2024_029 = [18.1,135.5,85;18.4,138.7,90;18.4,143.9,45;19.4,148.9,35;20.9,153.2,30]; # day 5 self-made
nhcvect = [nhcvect;nhc_epac_2024_029];
myvect = [myvect;my_epac_2024_029];
btkvect = [btkvect;btk_epac_2024_029];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 030 ... GILMA around 2024-08-25-15Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1827725259174514926
# NHC at https://www.nhc.noaa.gov/archive/2024/ep07/ep072024.discus.030.shtml?

nhc_epac_2024_030 = [18.3,136.5,95;18.7,140.1,75;19.2,143.8,55;20.0,147.4,40;20.6,151.0,30];
my_epac_2024_030 = [18.3,136.3,85;18.6,139.9,70;19.2,143.6,55;20.1,147.2,40;20.5,150.8,30];
btk_epac_2024_030 = [18.1,136.1,85;18.4,140.1,75;18.6,145.1,40;19.8,150.1,30;20.8,154.4,30]; # day 5 self-made
nhcvect = [nhcvect;nhc_epac_2024_030];
myvect = [myvect;my_epac_2024_030];
btkvect = [btkvect;btk_epac_2024_030];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Cpac 05 ... HONE around 2024-08-25-15Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1827725643162775686
# CPHC at https://www.nhc.noaa.gov/archive/2024/cp01/cp012024.discus.013.shtml?

nhc_cpac_2024_05 = [18.9,160.1,60;19.1,164.6,50;19.7,168.5,45;20.5,172.0,40;20.6,175.0,30];
my_cpac_2024_05 = [18.9,159.9,65;18.9,164.3,50;19.6,168.0,45;20.6,171.4,40;20.6,174.4,30];
btk_cpac_2024_05 = [19.0,160.2,55;19.8,164.7,45;20.5,168.1,45;21.0,171.5,35;21.7,174.4,30];
nhcvect = [nhcvect;nhc_cpac_2024_05];
myvect = [myvect;my_cpac_2024_05];
btkvect = [btkvect;btk_cpac_2024_05];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;4;4;4;4;4];

# Epac 031 ... GILMA around 2024-08-26-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1827902310669857053
# NHC at https://www.nhc.noaa.gov/archive/2024/ep07/ep072024.discus.032.shtml?

nhc_epac_2024_031 = [18.4,138.1,75;18.9,141.8,65;19.6,145.5,50;20.3,149.3,35;21.1,153.6,30];
my_epac_2024_031 = [18.4,137.9,75;18.9,141.5,60;19.6,145.3,45;20.7,149.4,30;21.5,153.4,30];
btk_epac_2024_031 = [18.4,137.8,95;18.4,142.7,45;19.1,147.6,35;20.4,152.2,25;21.8,156.5,25]; # day 5 self-made
nhcvect = [nhcvect;nhc_epac_2024_031];
myvect = [myvect;my_epac_2024_031];
btkvect = [btkvect;btk_epac_2024_031];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 032 ... HECTOR around 2024-08-26-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1827905750133321934
# NHC at https://www.nhc.noaa.gov/archive/2024/ep08/ep082024.discus.002.shtml?

nhc_epac_2024_032 = [16.9,126.8,50;17.6,130.9,55;18.0,135.3,50];
my_epac_2024_032 = [16.9,126.6,45;17.4,130.4,55;17.7,134.7,45];
btk_epac_2024_032 = [16.7,126.2,45;18.1,130.5,45;17.2,133.7,35];
nhcvect = [nhcvect;nhc_epac_2024_032];
myvect = [myvect;my_epac_2024_032];
btkvect = [btkvect;btk_epac_2024_032];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 033 ... GILMA around 2024-08-26-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1827993521111896211
# NHC at https://www.nhc.noaa.gov/archive/2024/ep07/ep072024.discus.033.shtml?

nhc_epac_2024_033 = [18.5,138.9,70;19.0,143.0,60;19.8,147.0,45;20.6,151.0,35;21.6,155.7,30];
my_epac_2024_033 = [18.3,138.9,70;18.8,143.0,55;19.8,147.1,40;20.8,151.3,30;21.6,156.1,30];
btk_epac_2024_033 = [18.4,138.7,90;18.4,143.9,45;19.4,148.9,35;20.9,153.2,30;22.7,157.5,25]; # days 4-5 self-made
nhcvect = [nhcvect;nhc_epac_2024_033];
myvect = [myvect;my_epac_2024_033];
btkvect = [btkvect;btk_epac_2024_033];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Epac 034 ... HECTOR around 2024-08-26-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1827997600311623950
# NHC at https://www.nhc.noaa.gov/archive/2024/ep08/ep082024.discus.003.shtml?

nhc_epac_2024_034 = [17.0,127.3,50;17.7,131.4,50;17.9,135.9,40];
my_epac_2024_034 = [17.1,127.4,45;17.7,131.4,50;17.8,135.8,35];
btk_epac_2024_034 = [17.1,127.1,45;18.3,131.4,45;16.9,134.8,30];
nhcvect = [nhcvect;nhc_epac_2024_034];
myvect = [myvect;my_epac_2024_034];
btkvect = [btkvect;btk_epac_2024_034];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 035 ... GILMA around 2024-08-26-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1828173979011428612
# NHC at https://www.nhc.noaa.gov/archive/2024/ep07/ep072024.discus.035.shtml?

nhc_epac_2024_035 = [18.7,140.9,75;19.4,145.3,50;20.3,149.5,40;21.2,154.0,30];
my_epac_2024_035 = [18.6,140.7,70;19.3,145.1,45;20.3,149.3,40;21.6,154.1,30];
btk_epac_2024_035 = [18.4,141.5,55;18.9,146.4,40;20.1,151.1,30;21.2,155.3,25]; # day 4 self-made
nhcvect = [nhcvect;nhc_epac_2024_035];
myvect = [myvect;my_epac_2024_035];
btkvect = [btkvect;btk_epac_2024_035];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Epac 036 ... HECTOR around 2024-08-26-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1828177804585791570
# NHC at https://www.nhc.noaa.gov/archive/2024/ep08/ep082024.discus.005.shtml?

nhc_epac_2024_036 = [17.3,129.2,50;17.7,133.6,45];
my_epac_2024_036 = [17.3,129.1,50;17.7,133.3,40];
btk_epac_2024_036 = [17.7,129.3,45;17.6,133.0,40];
nhcvect = [nhcvect;nhc_epac_2024_036];
myvect = [myvect;my_epac_2024_036];
btkvect = [btkvect;btk_epac_2024_036];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Epac 037 ... HECTOR around 2024-08-27-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1828534627838947787
# NHC at https://www.nhc.noaa.gov/archive/2024/ep08/ep082024.discus.009.shtml?

nhc_epac_2024_037 = [18.3,133.5,35];
my_epac_2024_037 = [18.4,133.6,35];
btk_epac_2024_037 = [17.6,133.0,40];
nhcvect = [nhcvect;nhc_epac_2024_037];
myvect = [myvect;my_epac_2024_037];
btkvect = [btkvect;btk_epac_2024_037];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;2];

# Cpac 06 ... GILMA around 2024-08-27-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1828537426744103021
# CPHC at https://www.nhc.noaa.gov/archive/2024/ep07/ep072024.discus.039.shtml?

nhc_cpac_2024_06 = [19.0,146.0,40;19.9,150.5,30;21.0,155.1,25];
my_cpac_2024_06 = [19.0,145.9,35;19.9,150.2,30;21.1,154.6,25];
btk_cpac_2024_06 = [18.9,146.4,40;20.1,151.1,30;21.2,155.3,25]; # day 3 self-made
nhcvect = [nhcvect;nhc_cpac_2024_06];
myvect = [myvect;my_cpac_2024_06];
btkvect = [btkvect;btk_cpac_2024_06];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;4;4;4];

# Cpac 07 ... HONE around 2024-08-27-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1828540172104786270
# CPHC at https://www.nhc.noaa.gov/archive/2024/cp01/cp012024.discus.022.shtml?

nhc_cpac_2024_07 = [20.8,169.7,45;21.7,173.7,40;22.7,177.0,30];
my_cpac_2024_07 = [20.9,169.7,45;21.7,173.5,35;22.9,176.9,30];
btk_cpac_2024_07 = [20.5,168.9,45;21.3,172.1,35;21.8,175.3,30];
nhcvect = [nhcvect;nhc_cpac_2024_07];
myvect = [myvect;my_cpac_2024_07];
btkvect = [btkvect;btk_cpac_2024_07];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;4;4;4];

# Epac 038 ... HECTOR around 2024-08-28-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1828626252212637842
# NHC at https://www.nhc.noaa.gov/archive/2024/ep08/ep082024.discus.010.shtml?

nhc_epac_2024_038 = [18.6,134.7,35];
my_epac_2024_038 = [18.6,134.5,35];
btk_epac_2024_038 = [17.2,133.7,35];
nhcvect = [nhcvect;nhc_epac_2024_038];
myvect = [myvect;my_epac_2024_038];
btkvect = [btkvect;btk_epac_2024_038];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;2];

# Cpac 08 ... GILMA around 2024-08-28-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1828629059196117441
# CPHC at https://www.nhc.noaa.gov/archive/2024/ep07/ep072024.discus.040.shtml?

nhc_cpac_2024_08 = [19.1,147.3,35;20.1,151.7,30;21.2,156.4,25];
my_cpac_2024_08 = [19.1,147.3,30;20.2,151.6,30;21.2,156.4,25];
btk_cpac_2024_08 = [19.1,147.6,35;20.4,152.2,25;21.8,156.5,25]; # day 3 self-made
nhcvect = [nhcvect;nhc_cpac_2024_08];
myvect = [myvect;my_cpac_2024_08];
btkvect = [btkvect;btk_cpac_2024_08];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;4;4;4];

# Cpac 09 ... HONE around 2024-08-28-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1828632367604310520
# CPHC at https://www.nhc.noaa.gov/archive/2024/cp01/cp012024.discus.023.shtml?

nhc_cpac_2024_09 = [20.9,170.4,40;21.8,174.3,40;22.7,177.5,30;23.0,179.0,30];
my_cpac_2024_09 = [21.0,170.5,40;21.9,174.3,35;22.7,177.7,30;23.0,179.1,30];
btk_cpac_2024_09 = [20.6,169.7,45;21.4,173.0,30;21.9,175.9,30;23.3,176.4,35];
nhcvect = [nhcvect;nhc_cpac_2024_09];
myvect = [myvect;my_cpac_2024_09];
btkvect = [btkvect;btk_cpac_2024_09];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;4;4;4;4];

# Cpac 10 ... HONE around 2024-08-28-15Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1828809766241460359
# CPHC at https://www.nhc.noaa.gov/archive/2024/cp01/cp012024.discus.025.shtml?

nhc_cpac_2024_10 = [21.1,171.8,40;21.9,175.0,35;23.0,176.6,40;25.5,178.0,40];
my_cpac_2024_10 = [21.1,171.7,40;22.0,175.0,30;23.1,176.4,35;25.6,177.4,35];
btk_cpac_2024_10 = [21.0,171.5,35;21.7,174.4,30;22.3,175.7,35;24.8,176.8,35];
nhcvect = [nhcvect;nhc_cpac_2024_10];
myvect = [myvect;my_cpac_2024_10];
btkvect = [btkvect;btk_cpac_2024_10];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;4;4;4;4];

# Wpac 032 ... YAGI/(ENTENG) around 2024-09-01-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1830350331248554426

nhc_wpac_2024_032 = [18.1,121.9,45;19.3,119.5,55;19.1,117.1,80;19.4,114.7,100;20.2,112.4,110];
my_wpac_2024_032 = [18.1,121.9,45;19.0,119.6,55;18.8,117.6,80;19.3,116.1,100;20.9,113.8,110];
btk_wpac_2024_032 = [18.2,120.6,40;18.9,118.5,60;19.2,116.3,120;19.2,113.0,135;20.2,109.0,105];
nhcvect = [nhcvect;nhc_wpac_2024_032];
myvect = [myvect;my_wpac_2024_032];
btkvect = [btkvect;btk_wpac_2024_032];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 033 ... YAGI/(ENTENG) around 2024-09-02-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1830435402152321197

nhc_wpac_2024_033 = [18.5,120.7,45;19.2,118.3,65;19.2,116.0,90;19.8,113.0,110;20.6,110.6,100];
my_wpac_2024_033 = [18.7,121.4,40;19.4,119.0,65;19.1,116.1,90;19.4,113.7,110;20.5,111.3,90];
btk_wpac_2024_033 = [18.4,119.6,40;19.1,117.7,70;19.0,115.8,140;19.2,112.2,130;20.3,108.2,115];
nhcvect = [nhcvect;nhc_wpac_2024_033];
myvect = [myvect;my_wpac_2024_033];
btkvect = [btkvect;btk_wpac_2024_033];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 034 ... YAGI/(ENTENG) around 2024-09-02-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1830711531019120955

nhc_wpac_2024_034 = [18.9,118.8,45;18.9,115.9,80;19.0,113.3,110;19.8,110.4,90;21.1,106.8,65];
my_wpac_2024_034 = [18.9,118.8,45;19.0,116.5,75;19.1,114.0,105;20.4,111.4,85;22.1,108.1,60];
btk_wpac_2024_034 = [18.9,118.5,60;19.2,116.3,120;19.2,113.0,135;20.2,109.0,105;21.2,105.1,60];
nhcvect = [nhcvect;nhc_wpac_2024_034];
myvect = [myvect;my_wpac_2024_034];
btkvect = [btkvect;btk_wpac_2024_034];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 035 ... YAGI/(ENTENG) around 2024-09-03-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1830893516949434388

nhc_wpac_2024_035 = [19.0,117.2,55;19.0,115.0,90;19.6,111.8,90;20.8,108.2,70;21.6,105.5,25];
my_wpac_2024_035 = [18.9,117.3,55;18.8,115.0,85;19.7,111.8,85;21.0,108.5,65;22.2,105.1,25];
btk_wpac_2024_035 = [19.1,117.4,80;19.2,115.1,125;19.7,111.3,125;21.0,106.9,110;21.5,104.2,35];
nhcvect = [nhcvect;nhc_wpac_2024_035];
myvect = [myvect;my_wpac_2024_035];
btkvect = [btkvect;btk_wpac_2024_035];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 036 ... YAGI/(ENTENG) around 2024-09-03-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1831072068751736951

nhc_wpac_2024_036 = [18.9,116.2,80;19.3,113.3,115;20.3,109.6,95;21.4,105.7,60;22.0,102.5,20];
my_wpac_2024_036 = [19.1,116.1,80;19.4,113.1,115;20.3,109.3,95;21.6,106.1,55;22.5,101.8,20];
btk_wpac_2024_036 = [19.2,116.3,120;19.2,113.0,135;20.2,109.0,105;21.2,105.1,60;22.0,103.3,25];
nhcvect = [nhcvect;nhc_wpac_2024_036];
myvect = [myvect;my_wpac_2024_036];
btkvect = [btkvect;btk_wpac_2024_036];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 037 ... YAGI/(ENTENG) around 2024-09-04-15Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1831343569187271146

nhc_wpac_2024_037 = [19.6,114.1,130;20.5,110.6,110;21.3,106.3,60;22.0,102.4,20];
my_wpac_2024_037 = [19.4,114.3,125;20.3,110.7,115;21.5,106.9,60;22.0,103.0,20];
btk_wpac_2024_037 = [19.3,114.1,125;20.0,110.2,120;21.0,105.9,75;23.0,103.1,35];
nhcvect = [nhcvect;nhc_wpac_2024_037];
myvect = [myvect;my_wpac_2024_037];
btkvect = [btkvect;btk_wpac_2024_037];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Wpac 038 ... YAGI/(ENTENG) around 2024-09-04-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1831434345799958871

nhc_wpac_2024_038 = [19.7,113.5,130;20.6,109.6,110;21.6,105.5,60;22.2,102.1,20];
my_wpac_2024_038 = [19.4,113.5,135;20.6,109.9,105;21.8,105.9,55;22.4,103.1,20];
btk_wpac_2024_038 = [19.2,113.0,135;20.2,109.0,105;21.2,105.1,60;22.0,103.3,25];
nhcvect = [nhcvect;nhc_wpac_2024_038];
myvect = [myvect;my_wpac_2024_038];
btkvect = [btkvect;btk_wpac_2024_038];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Wpac 039 ... YAGI/(ENTENG) around 2024-09-05-15Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1831704785302523980

nhc_wpac_2024_039 = [20.2,110.5,100;21.2,106.4,55;21.9,102.2,20];
my_wpac_2024_039 = [20.3,110.7,100;21.5,106.7,50;22.0,102.7,20];
btk_wpac_2024_039 = [20.0,110.2,120;21.0,105.9,75;23.0,103.1,35];
nhcvect = [nhcvect;nhc_wpac_2024_039];
myvect = [myvect;my_wpac_2024_039];
btkvect = [btkvect;btk_wpac_2024_039];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Wpac 040 ... YAGI/(ENTENG) around 2024-09-05-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1831794528564785231

nhc_wpac_2024_040 = [20.4,109.3,100;21.5,105.6,55;22.0,101.9,20];
my_wpac_2024_040 = [20.2,109.4,95;21.5,105.8,50;22.5,102.4,20];
btk_wpac_2024_040 = [20.2,109.0,105;21.2,105.1,60;22.0,103.3,25];
nhcvect = [nhcvect;nhc_wpac_2024_040];
myvect = [myvect;my_wpac_2024_040];
btkvect = [btkvect;btk_wpac_2024_040];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Wpac 041 ... YAGI/(ENTENG) around 2024-09-06-15Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1832070890911064494

nhc_wpac_2024_041 = [21.3,106.5,75;22.0,102.9,35];
my_wpac_2024_041 = [21.3,106.5,75;21.8,103.6,35];
btk_wpac_2024_041 = [21.0,105.9,75;23.0,103.1,35];
nhcvect = [nhcvect;nhc_wpac_2024_041];
myvect = [myvect;my_wpac_2024_041];
btkvect = [btkvect;btk_wpac_2024_041];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Atl 066 ... 06L around 2024-09-09-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1833072506246201584
# NHC at https://www.nhc.noaa.gov/archive/2024/al06/al062024.discus.003.shtml?

nhc_atl_2024_066 = [24.1,95.9,55;26.8,94.8,65;30.7,91.8,50;34.9,90.2,30];
my_atl_2024_066 = [24.2,96.0,55;26.8,94.8,65;31.1,91.0,50;35.2,90.5,30];
btk_atl_2024_066 = [24.1,96.2,55;26.6,94.1,80;30.2,90.3,45;35.4,90.9,25];
nhcvect = [nhcvect;nhc_atl_2024_066];
myvect = [myvect;my_atl_2024_066];
btkvect = [btkvect;btk_atl_2024_066];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 067 ... FRANCINE around 2024-09-09-15Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1833162023506444734
# NHC at https://www.nhc.noaa.gov/archive/2024/al06/al062024.discus.004.shtml?

nhc_atl_2024_067 = [24.9,95.7,55;28.0,93.5,75;32.4,90.7,35;36.2,89.6,25];
my_atl_2024_067 = [25.0,95.6,55;28.2,93.4,75;32.7,90.6,35;36.4,90.1,25];
btk_atl_2024_067 = [24.5,95.8,55;27.5,93.2,80;31.9,90.1,30;35.9,91.5,15];
nhcvect = [nhcvect;nhc_atl_2024_067];
myvect = [myvect;my_atl_2024_067];
btkvect = [btkvect;btk_atl_2024_067];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 068 ... FRANCINE around 2024-09-09-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1833251671595512285
# NHC at https://www.nhc.noaa.gov/archive/2024/al06/al062024.discus.005.shtml?

nhc_atl_2024_068 = [25.9,95.9,75;29.4,92.8,85;34.2,90.8,30;36.9,90.3,25];
my_atl_2024_068 = [26.0,95.8,75;29.6,92.6,80;34.6,90.8,30;37.2,90.7,20];
btk_atl_2024_068 = [25.3,95.3,55;28.6,92.1,80;33.4,89.7,20;35.7,92.0,15];
nhcvect = [nhcvect;nhc_atl_2024_068];
myvect = [myvect;my_atl_2024_068];
btkvect = [btkvect;btk_atl_2024_068];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Wpac 042 ... 14W around 2024-09-10-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1833332755565851039

nhc_wpac_2024_042 = [14.1,144.0,40;17.4,141.3,60;20.9,137.8,65;24.2,132.4,80;26.6,126.7,100];
my_wpac_2024_042 = [14.0,143.4,35;17.6,141.1,60;21.0,137.2,65;23.9,131.7,75;26.9,125.3,85];
btk_wpac_2024_042 = [13.7,142.3,35;17.8,140.0,50;22.2,136.9,40;26.3,131.4,50;29.7,127.1,75];
nhcvect = [nhcvect;nhc_wpac_2024_042];
myvect = [myvect;my_wpac_2024_042];
btkvect = [btkvect;btk_wpac_2024_042];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Atl 069 ... FRANCINE around 2024-09-10-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1833337871115096237
# NHC at https://www.nhc.noaa.gov/archive/2024/al06/al062024.discus.006.shtml?

nhc_atl_2024_069 = [26.2,95.2,80;29.9,92.2,75;34.6,90.6,30;36.6,90.0,20];
my_atl_2024_069 = [26.3,95.1,80;30.1,91.6,65;34.5,89.9,30;36.3,89.8,20];
btk_atl_2024_069 = [26.0,94.7,65;29.6,90.9,70;34.7,90.5,25;34.9,91.7,15];
nhcvect = [nhcvect;nhc_atl_2024_069];
myvect = [myvect;my_atl_2024_069];
btkvect = [btkvect;btk_atl_2024_069];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Wpac 043 ... BEBINCA around 2024-09-10-15Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1833515432558346440

nhc_wpac_2024_043 = [15.7,142.4,45;20.0,139.6,55;23.2,135.1,65;25.5,129.7,95;27.8,123.9,100];
my_wpac_2024_043 = [15.8,141.8,40;19.9,139.5,55;23.5,134.4,65;26.3,129.6,90;29.6,123.9,105];
btk_wpac_2024_043 = [15.0,140.7,35;20.0,139.0,50;24.5,133.8,45;28.2,129.2,65;30.4,124.7,70];
nhcvect = [nhcvect;nhc_wpac_2024_043];
myvect = [myvect;my_wpac_2024_043];
btkvect = [btkvect;btk_wpac_2024_043];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Atl 070 ... FRANCINE around 2024-09-10-15Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1833523975571574998
# NHC at https://www.nhc.noaa.gov/archive/2024/al06/al062024.discus.008.shtml?

nhc_atl_2024_070 = [27.8,93.2,80;32.2,90.4,40;35.8,90.1,25];
my_atl_2024_070 = [27.8,92.9,75;32.4,89.9,35;35.8,89.8,25];
btk_atl_2024_070 = [27.5,93.2,80;31.9,90.1,30;35.9,91.5,15];
nhcvect = [nhcvect;nhc_atl_2024_070];
myvect = [myvect;my_atl_2024_070];
btkvect = [btkvect;btk_atl_2024_070];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Wpac 044 ... BEBINCA around 2024-09-10-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1833605079456231551

nhc_wpac_2024_044 = [16.3,141.5,55;21.0,138.3,60;24.7,132.9,70;27.5,127.2,90;29.2,123.6,85];
my_wpac_2024_044 = [16.5,141.3,50;21.4,138.5,60;25.2,132.9,75;27.6,127.5,100;29.5,123.4,110];
btk_wpac_2024_044 = [16.0,140.3,45;21.0,137.5,45;25.2,132.7,45;29.0,128.1,70;30.5,123.3,70];
nhcvect = [nhcvect;nhc_wpac_2024_044];
myvect = [myvect;my_wpac_2024_044];
btkvect = [btkvect;btk_wpac_2024_044];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Atl 071 ... FRANCINE around 2024-09-10-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1833610491618357350
# NHC at https://www.nhc.noaa.gov/archive/2024/al06/al062024.discus.009.shtml?

nhc_atl_2024_071 = [28.9,92.0,80;33.4,89.8,30;36.1,89.8,20];
my_atl_2024_071 = [28.7,92.0,75;33.3,89.3,30;36.2,89.3,20];
btk_atl_2024_071 = [28.6,92.1,80;33.4,89.7,20;35.7,92.0,15];
nhcvect = [nhcvect;nhc_atl_2024_071];
myvect = [myvect;my_atl_2024_071];
btkvect = [btkvect;btk_atl_2024_071];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Wpac 045 ... BEBINCA around 2024-09-11-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1833787473295540514

nhc_wpac_2024_045 = [18.4,139.8,45;23.0,136.2,65;26.4,130.6,95;28.6,125.7,115;30.1,121.2,95];
my_wpac_2024_045 = [18.0,139.8,40;23.2,136.5,65;26.0,131.6,95;28.5,126.9,115;30.2,121.8,85];
btk_wpac_2024_045 = [19.0,139.5,60;23.7,135.4,40;27.4,130.3,55;30.1,126.1,75;31.5,120.4,60];
nhcvect = [nhcvect;nhc_wpac_2024_045];
myvect = [myvect;my_wpac_2024_045];
btkvect = [btkvect;btk_wpac_2024_045];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Atl 072 ... FRANCINE around 2024-09-11-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1833797866965397958
# NHC at https://www.nhc.noaa.gov/archive/2024/al06/al062024.discus.011.shtml?

nhc_atl_2024_072 = [30.6,90.8,50;34.7,90.3,25];
my_atl_2024_072 = [30.7,90.5,50;34.8,90.0,25];
btk_atl_2024_072 = [30.2,90.3,45;35.4,90.9,25];
nhcvect = [nhcvect;nhc_atl_2024_072];
myvect = [myvect;my_atl_2024_072];
btkvect = [btkvect;btk_atl_2024_072];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Atl 073 ... FRANCINE around 2024-09-11-15Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1833882998053154963
# NHC at https://www.nhc.noaa.gov/archive/2024/al06/al062024.discus.012.shtml?

nhc_atl_2024_073 = [31.8,90.3,40;35.2,90.3,20];
my_atl_2024_073 = [31.7,90.9,40;35.3,90.2,20];
btk_atl_2024_073 = [31.9,90.1,30;35.9,91.5,15];
nhcvect = [nhcvect;nhc_atl_2024_073];
myvect = [myvect;my_atl_2024_073];
btkvect = [btkvect;btk_atl_2024_073];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Atl 074 ... FRANCINE around 2024-09-11-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1833975774757490895
# NHC at https://www.nhc.noaa.gov/archive/2024/al06/al062024.discus.013.shtml?

nhc_atl_2024_074 = [33.3,90.0,30;35.7,90.3,20];
my_atl_2024_074 = [33.3,89.8,30;35.4,90.6,20];
btk_atl_2024_074 = [33.4,89.7,20;35.7,92.0,15];
nhcvect = [nhcvect;nhc_atl_2024_074];
myvect = [myvect;my_atl_2024_074];
btkvect = [btkvect;btk_atl_2024_074];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Atl 075 ... 07L around 2024-09-11-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1833976153016861128
# NHC at https://www.nhc.noaa.gov/archive/2024/al07/al072024.discus.002.shtml?

nhc_atl_2024_075 = [17.8,35.1,40;19.3,39.3,45;19.9,42.8,40;20.2,44.8,40;20.7,47.0,40];
my_atl_2024_075 = [17.5,35.0,40;19.1,38.9,40;20.3,41.3,40;20.4,42.8,40;21.4,44.2,40];
btk_atl_2024_075 = [18.1,35.4,30;19.6,38.9,35;20.3,42.4,40;19.2,45.8,30;19.0,48.3,30];
nhcvect = [nhcvect;nhc_atl_2024_075];
myvect = [myvect;my_atl_2024_075];
btkvect = [btkvect;btk_atl_2024_075];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 046 ... BEBINCA around 2024-09-12-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1834057280368873763

nhc_wpac_2024_046 = [21.9,137.0,60;25.7,131.9,75;28.4,126.3,105;30.1,120.8,95;31.2,115.8,75];
my_wpac_2024_046 = [22.3,136.9,65;26.2,131.7,75;28.7,126.5,100;30.7,121.2,100;31.9,116.6,45];
btk_wpac_2024_046 = [22.2,136.9,40;26.3,131.4,50;29.7,127.1,75;30.9,121.8,65;32.6,117.0,25];
nhcvect = [nhcvect;nhc_wpac_2024_046];
myvect = [myvect;my_wpac_2024_046];
btkvect = [btkvect;btk_wpac_2024_046];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Atl 076 ... 07L around 2024-09-12-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1834064423960433126
# NHC at https://www.nhc.noaa.gov/archive/2024/al07/al072024.discus.003.shtml?

nhc_atl_2024_076 = [18.1,35.7,40;19.3,39.8,45;19.9,42.6,40;20.5,44.6,40;21.3,46.3,45];
my_atl_2024_076 = [18.2,35.8,40;19.3,40.0,45;19.8,42.6,40;20.3,44.1,40;20.9,46.0,50];
btk_atl_2024_076 = [18.5,36.5,30;19.9,39.8,40;19.8,43.6,35;19.1,46.5,30;18.9,48.8,30];
nhcvect = [nhcvect;nhc_atl_2024_076];
myvect = [myvect;my_atl_2024_076];
btkvect = [btkvect;btk_atl_2024_076];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 047 ... BEBINCA around 2024-09-12-15Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1834241160262328771

nhc_wpac_2024_047 = [25.3,134.6,50;28.4,129.1,70;30.3,123.3,95;31.5,118.0,40;32.1,114.1,20];
my_wpac_2024_047 = [24.7,134.5,55;28.4,128.7,70;30.2,123.0,90;32.0,118.5,50;33.7,116.4,25];
btk_wpac_2024_047 = [24.5,133.8,45;28.2,129.2,65;30.4,124.7,70;31.7,119.4,50;33.0,116.1,15];
nhcvect = [nhcvect;nhc_wpac_2024_047];
myvect = [myvect;my_wpac_2024_047];
btkvect = [btkvect;btk_wpac_2024_047];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Atl 077 ... 07L around 2024-09-12-15Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1834247158972788781
# NHC at https://www.nhc.noaa.gov/archive/2024/al07/al072024.discus.005.shtml?

nhc_atl_2024_077 = [19.2,38.6,35;19.7,42.1,40;20.1,44.9,40;20.6,46.7,40;21.0,47.8,45];
my_atl_2024_077 = [19.2,38.7,35;19.7,42.5,35;20.0,45.7,35;19.8,47.8,35;20.7,49.6,35];
btk_atl_2024_077 = [19.3,38.3,35;20.1,41.2,40;19.3,45.1,35;19.1,47.8,30;19.3,49.1,30];
nhcvect = [nhcvect;nhc_atl_2024_077];
myvect = [myvect;my_atl_2024_077];
btkvect = [btkvect;btk_atl_2024_077];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 078 ... 07L around 2024-09-12-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1834334149949227413
# NHC at https://www.nhc.noaa.gov/archive/2024/al07/al072024.discus.006.shtml?

nhc_atl_2024_078 = [19.4,39.8,35;19.8,43.1,40;19.8,46.1,40;19.8,48.4,40;20.3,50.0,45];
my_atl_2024_078 = [19.3,39.8,35;19.5,43.3,35;19.2,46.8,35;19.0,49.8,40;18.9,52.0,40];
btk_atl_2024_078 = [19.6,38.9,35;20.3,42.4,40;19.2,45.8,30;19.0,48.3,30;19.5,49.0,20];
nhcvect = [nhcvect;nhc_atl_2024_078];
myvect = [myvect;my_atl_2024_078];
btkvect = [btkvect;btk_atl_2024_078];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 039 ... ILEANA around 2024-09-12-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1834338908152496327
# NHC at https://www.nhc.noaa.gov/archive/2024/ep09/ep092024.discus.002.shtml?

nhc_epac_2024_039 = [22.7,109.7,45;25.3,110.1,40;27.2,110.5,30];
my_epac_2024_039 = [22.8,109.6,40;25.4,109.8,35;27.4,110.6,25];
btk_epac_2024_039 = [22.3,109.2,40;25.2,108.9,35;25.8,110.4,25]; # day 3 self-made
nhcvect = [nhcvect;nhc_epac_2024_039];
myvect = [myvect;my_epac_2024_039];
btkvect = [btkvect;btk_epac_2024_039];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Atl 079 ... 07L around 2024-09-13-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1834429332258693455
# NHC at https://www.nhc.noaa.gov/archive/2024/al07/al072024.discus.007.shtml?

nhc_atl_2024_079 = [19.4,40.7,35;19.7,44.0,35;19.6,47.2,35;19.8,49.1,40;20.5,50.0,45];
my_atl_2024_079 = [19.4,40.8,35;19.3,44.4,30;18.6,47.6,35;18.9,49.6,35;20.0,50.4,40];
btk_atl_2024_079 = [19.9,39.8,40;19.8,43.6,35;19.1,46.5,30;18.9,48.8,30;19.9,48.7,20];
nhcvect = [nhcvect;nhc_atl_2024_079];
myvect = [myvect;my_atl_2024_079];
btkvect = [btkvect;btk_atl_2024_079];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 040 ... ILEANA around 2024-09-13-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1834429877493100565
# NHC at https://www.nhc.noaa.gov/archive/2024/ep09/ep092024.discus.003.shtml?

nhc_epac_2024_040 = [23.7,109.9,40;26.1,110.2,35;27.9,111.2,25];
my_epac_2024_040 = [23.8,110.0,40;26.2,110.0,35;28.1,111.3,20];
btk_epac_2024_040 = [23.1,109.3,35;25.4,109.0,40;26.0,110.9,20]; # day 3 self-made
nhcvect = [nhcvect;nhc_epac_2024_040];
myvect = [myvect;my_epac_2024_040];
btkvect = [btkvect;btk_epac_2024_040];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Atl 080 ... GORDON around 2024-09-13-15Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1834605678687609242
# NHC at https://www.nhc.noaa.gov/archive/2024/al07/al072024.discus.009.shtml?

nhc_atl_2024_080 = [20.0,42.1,35;19.7,45.4,30;19.4,48.0,30;19.5,49.6,35;20.4,50.8,40];
my_atl_2024_080 = [19.9,42.2,35;19.3,45.9,30;19.0,48.0,25;19.4,49.6,30;19.9,51.4,35];
btk_atl_2024_080 = [20.1,41.2,40;19.3,45.1,35;19.1,47.8,30;19.3,49.1,30;21.5,47.9,20];
nhcvect = [nhcvect;nhc_atl_2024_080];
myvect = [myvect;my_atl_2024_080];
btkvect = [btkvect;btk_atl_2024_080];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Epac 041 ... ILEANA around 2024-09-13-15Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1834607786740621793
# NHC at https://www.nhc.noaa.gov/archive/2024/ep09/ep092024.discus.005.shtml?

nhc_epac_2024_041 = [24.8,109.9,35;26.7,110.7,30];
my_epac_2024_041 = [24.8,109.8,35;26.9,110.4,25];
btk_epac_2024_041 = [24.7,109.1,35;25.5,109.5,30];
nhcvect = [nhcvect;nhc_epac_2024_041];
myvect = [myvect;my_epac_2024_041];
btkvect = [btkvect;btk_epac_2024_041];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Wpac 048 ... BEBINCA around 2024-09-14-15Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1834969447729086738

nhc_wpac_2024_048 = [30.3,124.1,70;31.8,119.1,40;32.7,114.6,20];
my_wpac_2024_048 = [30.0,124.1,65;31.4,118.6,40;32.6,114.0,20];
btk_wpac_2024_048 = [30.4,124.7,70;31.7,119.4,50;33.0,116.1,15];
nhcvect = [nhcvect;nhc_wpac_2024_048];
myvect = [myvect;my_wpac_2024_048];
btkvect = [btkvect;btk_wpac_2024_048];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Atl 081 ... GORDON around 2024-09-14-15Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1834974161443135895
# NHC at https://www.nhc.noaa.gov/archive/2024/al07/al072024.discus.013.shtml?

nhc_atl_2024_081 = [19.9,44.7,30;19.6,47.6,30;19.5,49.8,30;20.0,50.9,35;21.5,50.9,40];
my_atl_2024_081 = [19.8,44.7,30;19.6,47.3,25;19.9,49.9,25;20.4,50.2,30;22.4,50.0,45];
btk_atl_2024_081 = [19.3,45.1,35;19.1,47.8,30;19.3,49.1,30;21.5,47.9,20;25.1,45.3,20];
nhcvect = [nhcvect;nhc_atl_2024_081];
myvect = [myvect;my_atl_2024_081];
btkvect = [btkvect;btk_atl_2024_081];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 082 ... GORDON around 2024-09-14-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1835059915628433580
# NHC at https://www.nhc.noaa.gov/archive/2024/al07/al072024.discus.014.shtml?

nhc_atl_2024_082 = [20.0,45.7,30;19.8,48.6,30;19.9,50.4,30;20.6,51.0,30;21.6,51.0,30];
my_atl_2024_082 = [20.0,45.8,30;19.7,48.8,30;19.9,50.3,30;20.8,50.6,30;22.8,50.4,35];
btk_atl_2024_082 = [19.2,45.8,30;19.0,48.3,30;19.5,49.0,20;22.2,47.5,20;26.1,45.2,20];
nhcvect = [nhcvect;nhc_atl_2024_082];
myvect = [myvect;my_atl_2024_082];
btkvect = [btkvect;btk_atl_2024_082];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 083 ... GORDON around 2024-09-15-15Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1835335583188623584
# NHC at https://www.nhc.noaa.gov/archive/2024/al07/al072024.discus.017.shtml?

nhc_atl_2024_083 = [19.0,48.0,30;18.9,49.8,30;19.4,50.5,30;21.0,50.0,30;23.5,48.5,35];
my_atl_2024_083 = [19.0,48.0,30;19.1,49.8,30;19.4,50.4,30;21.3,49.4,30;24.2,48.1,40];
btk_atl_2024_083 = [19.1,47.8,30;19.3,49.1,30;21.5,47.9,20;25.1,45.3,20;26.7,43.6,25];
nhcvect = [nhcvect;nhc_atl_2024_083];
myvect = [myvect;my_atl_2024_083];
btkvect = [btkvect;btk_atl_2024_083];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 084 ... GORDON around 2024-09-15-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1835421098298462668
# NHC at https://www.nhc.noaa.gov/archive/2024/al07/al072024.discus.018.shtml?

nhc_atl_2024_084 = [19.0,48.4,30;19.2,49.6,30;20.0,50.0,30;22.2,49.1,35;24.9,47.6,35];
my_atl_2024_084 = [19.2,48.5,30;19.3,49.9,30;20.6,50.1,25;23.2,48.5,35;26.7,45.8,45];
btk_atl_2024_084 = [19.0,48.3,30;19.5,49.0,20;22.2,47.5,20;26.1,45.2,20;26.2,43.9,25];
nhcvect = [nhcvect;nhc_atl_2024_084];
myvect = [myvect;my_atl_2024_084];
btkvect = [btkvect;btk_atl_2024_084];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 049 ... PULASAN/97W around 2024-09-16-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1835506905789149235
# (no JTWC advisory)

# Atl 085 ... GORDON around 2024-09-16-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1835511446622396790
# NHC at https://www.nhc.noaa.gov/archive/2024/al07/al072024.discus.019.shtml?

nhc_atl_2024_085 = [19.0,48.7,25;19.5,49.6,25;20.8,49.5,30;23.5,48.4,35;26.0,47.0,40];
my_atl_2024_085 = [18.9,48.8,25;19.7,49.6,25;21.1,49.5,25;23.9,48.4,30;26.7,47.3,40];
btk_atl_2024_085 = [18.9,48.8,30;19.9,48.7,20;23.1,46.9,20;27.1,45.2,20;26.6,42.5,25];
nhcvect = [nhcvect;nhc_atl_2024_085];
myvect = [myvect;my_atl_2024_085];
btkvect = [btkvect;btk_atl_2024_085];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 086 ... 08L around 2024-09-16-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1835514267195363653
# NHC at https://www.nhc.noaa.gov/archive/2024/al08/al082024.discus.002.shtml?

nhc_atl_2024_086 = [33.6,79.3,35;35.5,80.7,20];
my_atl_2024_086 = [33.4,79.5,35;35.4,80.9,20];
btk_atl_2024_086 = [34.1,79.5,30;33.2,81.8,10]; # days 1-2 self-made
nhcvect = [nhcvect;nhc_atl_2024_086];
myvect = [myvect;my_atl_2024_086];
btkvect = [btkvect;btk_atl_2024_086];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Atl 087 ... GORDON around 2024-09-16-15Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1835698605228782047
# NHC at https://www.nhc.noaa.gov/archive/2024/al07/al072024.discus.021.shtml?

nhc_atl_2024_087 = [19.5,49.2,30;20.5,49.1,30;23.1,47.6,35;26.0,45.8,40;28.0,45.0,45];
my_atl_2024_087 = [19.4,49.3,30;20.4,49.0,30;23.5,47.2,35;26.4,45.1,40;28.9,44.6,45];
btk_atl_2024_087 = [19.3,49.1,30;21.5,47.9,20;25.1,45.3,20;26.7,43.6,25;25.7,42.2,25];
nhcvect = [nhcvect;nhc_atl_2024_087];
myvect = [myvect;my_atl_2024_087];
btkvect = [btkvect;btk_atl_2024_087];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 088 ... 08L around 2024-09-16-15Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1835700842206253226
# NHC at https://www.nhc.noaa.gov/archive/2024/al08/al082024.discus.004.shtml?

nhc_atl_2024_088 = [34.3,79.9,25];
my_atl_2024_088 = [34.2,79.6,25];
btk_atl_2024_088 = [34.7,81.4,10]; # day 1 self-made
nhcvect = [nhcvect;nhc_atl_2024_088];
myvect = [myvect;my_atl_2024_088];
btkvect = [btkvect;btk_atl_2024_088];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;1];

# Atl 089 ... GORDON around 2024-09-16-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1835787094473765161
# NHC at https://www.nhc.noaa.gov/archive/2024/al07/al072024.discus.022.shtml?

nhc_atl_2024_089 = [19.7,49.1,30;21.3,48.3,30;24.6,46.5,40;27.0,44.5,45;29.0,43.5,50];
my_atl_2024_089 = [19.6,49.3,30;21.3,48.8,30;24.6,47.0,35;26.9,44.7,45;28.3,44.1,50];
btk_atl_2024_089 = [19.5,49.0,20;22.2,47.5,20;26.1,45.2,20;26.2,43.9,25;25.9,42.1,25]; # day 5 self-made
nhcvect = [nhcvect;nhc_atl_2024_089];
myvect = [myvect;my_atl_2024_089];
btkvect = [btkvect;btk_atl_2024_089];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 090 ... GORDON around 2024-09-17-15Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1836062768002130009
# NHC at https://www.nhc.noaa.gov/archive/2024/al07/al072024.discus.025.shtml?
# (nothing comparable)

# Epac 042 ... 10E around 2024-09-22-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1837963700918947924
# NHC at https://www.nhc.noaa.gov/archive/2024/ep10/ep102024.discus.001.shtml?

nhc_epac_2024_042 = [14.4,98.2,45;15.0,96.6,55;16.1,94.1,55;17.1,92.9,20];
my_epac_2024_042 = [14.4,98.1,40;15.2,96.3,55;16.4,93.4,45;17.2,92.5,20];
btk_epac_2024_042 = [15.2,98.4,80;17.4,100.7,30;16.7,101.5,45;17.3,102.7,65];
nhcvect = [nhcvect;nhc_epac_2024_042];
myvect = [myvect;my_epac_2024_042];
btkvect = [btkvect;btk_epac_2024_042];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Epac 043 ... 10E around 2024-09-23-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1838052416098357722
# NHC at https://www.nhc.noaa.gov/archive/2024/ep10/ep102024.discus.002.shtml?

nhc_epac_2024_043 = [14.6,97.9,45;15.2,96.3,55;16.3,94.1,45];
my_epac_2024_043 = [14.8,98.0,45;15.6,96.0,45;16.7,93.1,40];
btk_epac_2024_043 = [15.9,98.6,100;17.1,101.0,30;16.9,102.0,55];
nhcvect = [nhcvect;nhc_epac_2024_043];
myvect = [myvect;my_epac_2024_043];
btkvect = [btkvect;btk_epac_2024_043];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Epac 044 ... JOHN around 2024-09-23-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1838323168181620936
# NHC at https://www.nhc.noaa.gov/archive/2024/ep10/ep102024.discus.005.shtml?

nhc_epac_2024_044 = [16.5,98.3,65];
my_epac_2024_044 = [16.5,98.9,80];
btk_epac_2024_044 = [17.4,100.7,30];
nhcvect = [nhcvect;nhc_epac_2024_044];
myvect = [myvect;my_epac_2024_044];
btkvect = [btkvect;btk_epac_2024_044];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;2];

# Atl 091 ... 09L around 2024-09-23-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1838327301244961167
# NHC at https://www.nhc.noaa.gov/archive/2024/al09/al092024.discus.002.shtml?

nhc_atl_2024_091 = [19.9,84.2,45;23.0,86.0,75;28.9,84.5,100;35.5,84.5,30;39.5,88.5,20];
my_atl_2024_091 = [19.7,84.3,45;22.5,86.1,80;28.5,84.7,105;35.7,85.0,30;37.6,89.2,20];
btk_atl_2024_091 = [19.4,84.6,45;22.0,86.6,75;26.7,84.9,105;36.7,84.9,30;37.0,86.9,20]; # day 5 self-made
nhcvect = [nhcvect;nhc_atl_2024_091];
myvect = [myvect;my_atl_2024_091];
btkvect = [btkvect;btk_atl_2024_091];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 092 ... 09L around 2024-09-24-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1838413623074369581
# NHC at https://www.nhc.noaa.gov/archive/2024/al09/al092024.discus.003.shtml?

nhc_atl_2024_092 = [20.2,84.6,45;23.4,85.8,75;30.4,83.9,95;37.0,85.0,15];
my_atl_2024_092 = [20.0,84.8,45;23.2,86.1,70;29.4,84.1,90;37.0,84.7,20];
btk_atl_2024_092 = [19.8,85.3,50;22.8,86.7,75;28.7,84.3,120;28.1,86.6,25];
nhcvect = [nhcvect;nhc_atl_2024_092];
myvect = [myvect;my_atl_2024_092];
btkvect = [btkvect;btk_atl_2024_092];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 093 ... 09L around 2024-09-24-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1838507505988604147
# NHC at https://www.nhc.noaa.gov/archive/2024/al09/al092024.discus.004.shtml?

nhc_atl_2024_093 = [20.7,85.7,50;24.3,85.6,80;31.9,83.5,60;38.5,85.5,15];
my_atl_2024_093 = [20.5,85.6,50;24.2,85.7,85;32.2,83.9,60;38.6,87.4,20];
btk_atl_2024_093 = [20.3,85.9,55;23.6,86.5,75;31.3,83.3,80;37.4,88.0,20];
nhcvect = [nhcvect;nhc_atl_2024_093];
myvect = [myvect;my_atl_2024_093];
btkvect = [btkvect;btk_atl_2024_093];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 094 ... HELENE around 2024-09-24-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1838688256352817474
# NHC at https://www.nhc.noaa.gov/archive/2024/al09/al092024.discus.006.shtml?

nhc_atl_2024_094 = [21.7,86.6,65;27.0,84.9,100;35.5,84.8,30;38.2,89.0,20];
my_atl_2024_094 = [21.5,86.4,65;26.9,84.8,90;35.4,84.5,35;36.6,88.9,20];
btk_atl_2024_094 = [22.0,86.6,75;26.7,84.9,105;36.7,84.9,30;37.0,86.9,20]; # day 4 self-made
nhcvect = [nhcvect;nhc_atl_2024_094];
myvect = [myvect;my_atl_2024_094];
btkvect = [btkvect;btk_atl_2024_094];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 095 ... HELENE around 2024-09-25-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1838778803113341257
# NHC at https://www.nhc.noaa.gov/archive/2024/al09/al092024.discus.007.shtml?

nhc_atl_2024_095 = [22.7,86.4,75;29.5,84.2,105;36.5,86.5,20;37.0,89.0,20];
my_atl_2024_095 = [22.4,86.3,75;29.2,84.1,100;36.5,86.7,25;36.3,87.4,20];
btk_atl_2024_095 = [22.8,86.7,75;28.7,84.3,120;38.1,86.6,25;37.2,86.7,15]; # day 4 self-made
nhcvect = [nhcvect;nhc_atl_2024_095];
myvect = [myvect;my_atl_2024_095];
btkvect = [btkvect;btk_atl_2024_095];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 096 ... HELENE around 2024-09-25-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1838870441840001503
# NHC at https://www.nhc.noaa.gov/archive/2024/al09/al092024.discus.008.shtml?

nhc_atl_2024_096 = [24.1,86.2,90;32.0,84.2,65;37.0,87.8,20;36.5,88.0,20];
my_atl_2024_096 = [23.9,86.2,90;31.8,84.3,65;36.8,87.6,25;36.5,86.9,20];
btk_atl_2024_096 = [23.6,86.5,75;31.3,83.3,80;37.4,88.0,20;36.8,85.6,20]; # day 4 self-made
nhcvect = [nhcvect;nhc_atl_2024_096];
myvect = [myvect;my_atl_2024_096];
btkvect = [btkvect;btk_atl_2024_096];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Epac 045 ... JOHN around 2024-09-25-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1839047932026433789
# NHC at https://www.nhc.noaa.gov/archive/2024/ep10/ep102024.discus.012.shtml?

nhc_epac_2024_045 = [17.5,101.5,65;18.2,102.1,25];
my_epac_2024_045 = [17.5,101.7,60;18.5,101.9,25];
btk_epac_2024_045 = [17.3,102.7,65;18.3,103.2,35];
nhcvect = [nhcvect;nhc_epac_2024_045];
myvect = [myvect;my_epac_2024_045];
btkvect = [btkvect;btk_epac_2024_045];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;2;2];

# Atl 097 ... HELENE around 2024-09-25-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1839052086568214928
# NHC at https://www.nhc.noaa.gov/archive/2024/al09/al092024.discus.010.shtml?

nhc_atl_2024_097 = [27.4,85.2,115;36.1,86.0,35;36.8,88.7,20;37.0,88.0,15];
my_atl_2024_097 = [27.1,85.3,110;36.1,85.8,35;36.5,88.6,20;36.4,87.5,15];
btk_atl_2024_097 = [26.7,84.9,105;36.7,84.9,30;37.0,86.9,20;36.0,85.9,15]; # days 3-4 self-made
nhcvect = [nhcvect;nhc_atl_2024_097];
myvect = [myvect;my_atl_2024_097];
btkvect = [btkvect;btk_atl_2024_097];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 098 ... HELENE around 2024-09-26-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1839141361666109453
# NHC at https://www.nhc.noaa.gov/archive/2024/al09/al092024.discus.011.shtml?

nhc_atl_2024_098 = [29.5,84.5,115;36.7,87.1,30;36.7,87.0,20;36.7,84.9,15];
my_atl_2024_098 = [29.2,84.7,110;36.7,87.0,30;36.8,87.3,20;37.2,86.1,15];
btk_atl_2024_098 = [28.7,84.3,120;38.1,86.6,25;37.2,86.7,15;35.8,86.2,10]; # days 3-4 self-made
nhcvect = [nhcvect;nhc_atl_2024_098];
myvect = [myvect;my_atl_2024_098];
btkvect = [btkvect;btk_atl_2024_098];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 099 ... HELENE around 2024-09-26-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1839231463897637259
# NHC at https://www.nhc.noaa.gov/archive/2024/al09/al092024.discus.012.shtml?

nhc_atl_2024_099 = [31.6,84.0,75;37.0,87.8,25;36.3,86.7,20];
my_atl_2024_099 = [31.4,84.3,70;37.2,87.5,25;37.3,87.1,20];
btk_atl_2024_099 = [31.3,83.3,80;37.4,88.0,20;36.8,86.5,20]; # day 3 self-made
nhcvect = [nhcvect;nhc_atl_2024_099];
myvect = [myvect;my_atl_2024_099];
btkvect = [btkvect;btk_atl_2024_099];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Atl 100 ... ISAAC around 2024-09-26-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1839234953969865142
# NHC at https://www.nhc.noaa.gov/archive/2024/al10/al102024.discus.002.shtml?

nhc_atl_2024_100 = [37.6,48.1,55;39.4,41.2,65;41.8,34.0,60;43.0,27.2,55;43.4,19.4,50];
my_atl_2024_100 = [37.5,48.2,55;39.2,41.4,65;41.4,34.9,60;43.3,29.5,60;45.0,22.7,50];
btk_atl_2024_100 = [37.0,49.2,60;38.8,42.2,90;42.3,37.0,70;44.5,32.0,55;47.1,25.1,40]; # day 5 self-made
nhcvect = [nhcvect;nhc_atl_2024_100];
myvect = [myvect;my_atl_2024_100];
btkvect = [btkvect;btk_atl_2024_100];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 101 ... HELENE around 2024-09-26-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1839409135462539364
# NHC at https://www.nhc.noaa.gov/archive/2024/al09/al092024.discus.014.shtml?

nhc_atl_2024_101 = [35.8,85.0,40;37.1,87.0,25];
my_atl_2024_101 = [35.7,85.0,40;36.6,87.2,25];
btk_atl_2024_101 = [36.7,84.9,30;37.0,86.9,20]; # day 2 self-made
nhcvect = [nhcvect;nhc_atl_2024_101];
myvect = [myvect;my_atl_2024_101];
btkvect = [btkvect;btk_atl_2024_101];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Atl 102 ... ISAAC around 2024-09-26-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1839413614694072433
# NHC at https://www.nhc.noaa.gov/archive/2024/al10/al102024.discus.004.shtml?

nhc_atl_2024_102 = [38.2,45.5,60;40.5,38.7,65;43.0,33.8,60;44.2,27.8,50;45.5,22.5,40];
my_atl_2024_102 = [38.0,45.6,55;40.4,38.6,60;43.3,34.7,55;45.8,30.8,45;48.3,26.8,35];
btk_atl_2024_102 = [37.5,46.2,75;40.5,39.2,85;43.5,35.5,60;45.4,28.0,40;48.8,23.4,40]; # days 4-5 self-made
nhcvect = [nhcvect;nhc_atl_2024_102];
myvect = [myvect;my_atl_2024_102];
btkvect = [btkvect;btk_atl_2024_102];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 103 ... HELENE around 2024-09-27-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1839503288820973786
# NHC at https://www.nhc.noaa.gov/archive/2024/al09/al092024.discus.015.shtml?

nhc_atl_2024_103 = [36.9,86.2,30;36.9,86.9,20];
my_atl_2024_103 = [36.7,86.0,35;37.1,86.6,20];
btk_atl_2024_103 = [38.1,86.6,25;37.2,86.7,15]; # day 2 self-made
nhcvect = [nhcvect;nhc_atl_2024_103];
myvect = [myvect;my_atl_2024_103];
btkvect = [btkvect;btk_atl_2024_103];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Atl 104 ... ISAAC around 2024-09-27-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1839504662413602944
# NHC at https://www.nhc.noaa.gov/archive/2024/al10/al102024.discus.005.shtml?

nhc_atl_2024_104 = [38.1,44.1,70;41.1,37.9,65;43.7,35.1,60;46.0,30.4,50;50.0,26.0,40];
my_atl_2024_104 = [38.0,44.2,65;40.8,38.4,60;43.4,36.4,55;46.4,32.8,50;49.9,30.7,40];
btk_atl_2024_104 = [37.9,44.3,80;41.5,38.0,75;44.1,33.7,55;46.3,26.4,40;49.2,22.4,40]; # days 4-5 self-made
nhcvect = [nhcvect;nhc_atl_2024_104];
myvect = [myvect;my_atl_2024_104];
btkvect = [btkvect;btk_atl_2024_104];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 105 ... ISAAC around 2024-09-27-15Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1839683236080795946
# NHC at https://www.nhc.noaa.gov/archive/2024/al10/al102024.discus.007.shtml?

nhc_atl_2024_105 = [39.4,40.9,75;42.4,36.6,70;44.8,33.0,55;48.0,29.6,45;52.1,25.0,35];
my_atl_2024_105 = [39.3,40.8,70;42.4,36.5,65;44.8,31.9,50;48.3,28.9,40;52.6,26.2,35];
btk_atl_2024_105 = [39.7,40.4,90;42.9,36.2,65;44.6,30.0,50;47.9,24.0,40;50.5,22.2,30]; # days 4-5 self-made
nhcvect = [nhcvect;nhc_atl_2024_105];
myvect = [myvect;my_atl_2024_105];
btkvect = [btkvect;btk_atl_2024_105];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 106 ... JOYCE around 2024-09-27-15Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1839688109081956387
# NHC at https://www.nhc.noaa.gov/archive/2024/al11/al112024.discus.001.shtml?

nhc_atl_2024_106 = [19.4,46.1,50;20.7,48.8,40;22.6,49.4,35;23.9,48.8,30];
my_atl_2024_106 = [19.3,46.1,50;20.5,49.0,40;21.9,49.7,35;23.5,49.0,30];
btk_atl_2024_106 = [19.8,45.6,45;21.4,48.3,40;22.3,49.4,30;23.4,49.4,25]; # day 4 self-made
nhcvect = [nhcvect;nhc_atl_2024_106];
myvect = [myvect;my_atl_2024_106];
btkvect = [btkvect;btk_atl_2024_106];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Wpac 050 ... KRATHON/(JULIAN) around 2024-09-28-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1839858880416752109

nhc_wpac_2024_050 = [18.7,124.6,60;19.6,123.5,80;21.0,122.8,95;23.0,122.7,105;25.5,123.5,85];
my_wpac_2024_050 = [18.9,124.5,50;20.0,123.4,80;21.3,122.7,95;23.6,123.1,110;27.0,124.8,85];
btk_wpac_2024_050 = [18.7,124.3,65;20.3,121.9,115;20.6,119.6,130;21.5,119.3,100;22.4,120.0,75];
nhcvect = [nhcvect;nhc_wpac_2024_050];
myvect = [myvect;my_wpac_2024_050];
btkvect = [btkvect;btk_wpac_2024_050];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Atl 107 ... ISAAC around 2024-09-28-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1839866234554261878
# NHC at https://www.nhc.noaa.gov/archive/2024/al10/al102024.discus.009.shtml?

nhc_atl_2024_107 = [41.0,38.6,75;43.8,35.4,60;46.9,32.4,45;50.9,31.0,40;53.8,29.5,35];
my_atl_2024_107 = [41.0,38.5,75;44.0,35.6,60;47.3,32.8,50;51.3,32.8,45;54.5,31.6,35];
btk_atl_2024_107 = [41.5,38.0,75;44.1,33.7,55;46.3,26.4,40;49.2,22.4,40;52.1,20.7,30]; # days 3-5 self-made
nhcvect = [nhcvect;nhc_atl_2024_107];
myvect = [myvect;my_atl_2024_107];
btkvect = [btkvect;btk_atl_2024_107];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 108 ... JOYCE around 2024-09-28-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1839867096743776456
# NHC at https://www.nhc.noaa.gov/archive/2024/al11/al112024.discus.003.shtml?

nhc_atl_2024_108 = [19.7,47.7,45;21.0,49.5,35;22.0,49.7,25;22.4,49.7,25];
my_atl_2024_108 = [20.0,47.7,45;21.8,49.1,40;24.3,48.0,35;26.4,46.6,30];
btk_atl_2024_108 = [20.7,47.1,40;22.3,49.4,30;22.9,48.9,30;23.4,50.2,20]; # day 4 self-made
nhcvect = [nhcvect;nhc_atl_2024_108];
myvect = [myvect;my_atl_2024_108];
btkvect = [btkvect;btk_atl_2024_108];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 109 ... ISAAC around 2024-09-28-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1840134654554161511
# NHC at https://www.nhc.noaa.gov/archive/2024/al10/al102024.discus.012.shtml?

nhc_atl_2024_109 = [43.7,35.1,65;46.1,30.0,50;50.4,27.4,40;54.0,26.5,40;56.9,23.6,35];
my_atl_2024_109 = [43.6,35.1,65;46.1,29.3,50;50.7,26.0,40;55.0,24.9,40;57.4,23.4,35];
btk_atl_2024_109 = [43.5,35.5,60;45.4,28.0,40;48.8,23.4,40;51.2,21.7,30;55.7,17.0,35]; # days 2-5 self-made
nhcvect = [nhcvect;nhc_atl_2024_109];
myvect = [myvect;my_atl_2024_109];
btkvect = [btkvect;btk_atl_2024_109];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 110 ... JOYCE around 2024-09-28-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1840137773334044682
# NHC at https://www.nhc.noaa.gov/archive/2024/al11/al112024.discus.006.shtml?

nhc_atl_2024_110 = [21.7,48.9,35;22.9,49.3,30;24.3,49.1,25];
my_atl_2024_110 = [21.9,48.9,30;23.2,49.2,30;25.7,48.4,20];
btk_atl_2024_110 = [22.0,48.9,35;22.5,48.9,30;23.8,49.9,20]; # day 3 self-made
nhcvect = [nhcvect;nhc_atl_2024_110];
myvect = [myvect;my_atl_2024_110];
btkvect = [btkvect;btk_atl_2024_110];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Atl 111 ... ISAAC around 2024-09-29-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1840496438301602036
# NHC at https://www.nhc.noaa.gov/archive/2024/al10/al102024.discus.016.shtml?

nhc_atl_2024_111 = [45.8,28.6,50;49.3,24.2,40;53.1,22.3,35;57.9,17.9,35];
my_atl_2024_111 = [45.8,28.3,50;49.4,22.7,40;53.5,21.6,35;57.7,15.5,35];
btk_atl_2024_111 = [45.4,28.0,40;48.8,23.4,40;51.2,21.7,30;55.7,17.0,35]; # all self-made
nhcvect = [nhcvect;nhc_atl_2024_111];
myvect = [myvect;my_atl_2024_111];
btkvect = [btkvect;btk_atl_2024_111];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 112 ... JOYCE around 2024-09-29-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1840499451120828797
# NHC at https://www.nhc.noaa.gov/archive/2024/al11/al112024.discus.010.shtml?

nhc_atl_2024_112 = [23.3,49.5,30;25.0,49.5,25];
my_atl_2024_112 = [23.1,49.9,30;24.5,50.0,25];
btk_atl_2024_112 = [22.5,48.9,30;23.8,49.9,20]; # day 2 self-made
nhcvect = [nhcvect;nhc_atl_2024_112];
myvect = [myvect;my_atl_2024_112];
btkvect = [btkvect;btk_atl_2024_112];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Wpac 051 ... KRATHON/(JULIAN) around 2024-09-30-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1840581628051042777

nhc_wpac_2024_051 = [21.0,120.3,120;22.1,120.0,110;23.9,121.2,75];
my_wpac_2024_051 = [20.7,120.1,120;21.8,120.1,110;23.9,121.4,75];
btk_wpac_2024_051 = [20.6,119.6,130;21.5,119.3,100;22.4,120.0,75];
nhcvect = [nhcvect;nhc_wpac_2024_051];
myvect = [myvect;my_wpac_2024_051];
btkvect = [btkvect;btk_wpac_2024_051];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Atl 113 ... 12L around 2024-09-30-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1840588667917602876
# NHC at https://www.nhc.noaa.gov/archive/2024/al12/al122024.discus.002.shtml?

nhc_atl_2024_113 = [14.2,36.8,45;15.2,40.6,65;17.8,43.3,85;20.5,46.0,95;22.5,48.0,105];
my_atl_2024_113 = [14.2,36.6,45;15.2,40.2,65;17.8,43.0,80;20.5,45.6,95;23.0,48.1,105];
btk_atl_2024_113 = [14.2,36.3,50;16.4,40.4,65;19.0,44.1,105;21.1,47.1,125;24.3,49.7,115];
nhcvect = [nhcvect;nhc_atl_2024_113];
myvect = [myvect;my_atl_2024_113];
btkvect = [btkvect;btk_atl_2024_113];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 114 ... 12L around 2024-09-30-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1840678486786048354
# NHC at https://www.nhc.noaa.gov/archive/2024/al12/al122024.discus.003.shtml?

nhc_atl_2024_114 = [14.3,37.9,50;15.8,41.4,70;18.4,44.1,90;20.7,46.5,105;23.4,48.5,105];
my_atl_2024_114 = [14.3,37.9,50;16.0,41.5,70;18.6,44.2,90;20.9,47.0,110;23.4,49.4,105];
btk_atl_2024_114 = [14.7,37.5,50;17.2,41.7,70;19.6,44.7,105;21.9,47.8,125;25.4,50.1,110];
nhcvect = [nhcvect;nhc_atl_2024_114];
myvect = [myvect;my_atl_2024_114];
btkvect = [btkvect;btk_atl_2024_114];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 115 ... KIRK around 2024-09-30-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1840859173464027618
# NHC at https://www.nhc.noaa.gov/archive/2024/al12/al122024.discus.005.shtml?

nhc_atl_2024_115 = [14.5,39.2,75;16.8,42.7,95;19.3,45.3,110;21.8,47.7,110;25.5,49.5,105];
my_atl_2024_115 = [14.5,39.1,75;16.8,42.5,90;19.2,45.2,105;21.8,47.8,110;25.9,48.9,100];
btk_atl_2024_115 = [15.9,39.7,65;18.5,43.5,80;20.7,46.3,110;23.3,49.1,115;28.7,50.2,105];
nhcvect = [nhcvect;nhc_atl_2024_115];
myvect = [myvect;my_atl_2024_115];
btkvect = [btkvect;btk_atl_2024_115];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 116 ... KIRK around 2024-10-01-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1841226620071526539
# NHC at https://www.nhc.noaa.gov/archive/2024/al12/al122024.discus.009.shtml?

nhc_atl_2024_116 = [18.3,43.1,85;20.4,46.0,100;22.9,49.0,110;27.0,51.0,110;33.0,49.0,95];
my_atl_2024_116 = [18.3,43.1,85;20.6,45.9,95;23.2,48.6,100;27.4,50.1,100;33.8,48.2,85];
btk_atl_2024_116 = [18.5,43.5,80;20.7,46.3,110;23.3,49.1,115;28.7,50.2,105;36.2,47.3,80];
nhcvect = [nhcvect;nhc_atl_2024_116];
myvect = [myvect;my_atl_2024_116];
btkvect = [btkvect;btk_atl_2024_116];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 117 ... KIRK around 2024-10-02-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1841313169672638496
# NHC at https://www.nhc.noaa.gov/archive/2024/al12/al122024.discus.010.shtml?

nhc_atl_2024_117 = [18.7,43.6,85;21.0,46.5,100;24.0,49.3,110;28.8,50.1,110;35.3,46.4,95];
my_atl_2024_117 = [18.7,43.4,85;21.1,46.3,95;24.2,48.9,105;29.1,49.1,95;36.0,45.1,85];
btk_atl_2024_117 = [19.0,44.1,105;21.1,47.1,125;24.3,49.7,115;30.4,50.0,100;37.9,44.7,70];
nhcvect = [nhcvect;nhc_atl_2024_117];
myvect = [myvect;my_atl_2024_117];
btkvect = [btkvect;btk_atl_2024_117];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 118 ... KIRK around 2024-10-02-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1841404089487204357
# NHC at https://www.nhc.noaa.gov/archive/2024/al12/al122024.discus.011.shtml?

nhc_atl_2024_118 = [19.5,44.6,90;21.9,47.6,105;25.3,50.2,110;30.8,50.1,105;37.4,44.8,85];
my_atl_2024_118 = [19.5,44.7,90;21.8,47.8,100;25.1,50.4,105;30.5,50.4,100;37.5,46.0,75];
btk_atl_2024_118 = [19.6,44.7,105;21.9,47.8,125;25.4,50.1,110;32.6,49.5,95;39.5,42.4,65];
nhcvect = [nhcvect;nhc_atl_2024_118];
myvect = [myvect;my_atl_2024_118];
btkvect = [btkvect;btk_atl_2024_118];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 119 ... KIRK around 2024-10-02-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1841585283881697307
# NHC at https://www.nhc.noaa.gov/archive/2024/al12/al122024.discus.013.shtml?

nhc_atl_2024_119 = [21.1,46.6,105;23.8,49.5,115;28.5,50.6,105;35.1,47.9,90;42.5,38.0,80];
my_atl_2024_119 = [21.0,46.6,100;23.9,49.5,105;28.3,50.7,95;35.2,47.6,80;42.8,37.8,75];
btk_atl_2024_119 = [20.7,46.3,110;23.3,49.1,115;28.7,50.2,105;36.2,47.3,80;42.5,37.0,55]; # day 5 self-made
nhcvect = [nhcvect;nhc_atl_2024_119];
myvect = [myvect;my_atl_2024_119];
btkvect = [btkvect;btk_atl_2024_119];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 120 ... KIRK around 2024-10-03-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1841948883481722888
# NHC at https://www.nhc.noaa.gov/archive/2024/al12/al122024.discus.018.shtml?

nhc_atl_2024_120 = [23.7,49.1,125;28.4,50.2,110;35.2,46.8,90;42.1,36.9,80;46.4,23.1,65];
my_atl_2024_120 = [23.5,49.2,120;28.3,50.3,105;35.4,46.9,90;42.7,36.4,75;47.8,23.5,65];
btk_atl_2024_120 = [23.3,49.1,115;28.7,50.2,105;36.2,47.3,80;42.5,37.0,55;42.9,20.9,50]; # days 4-5 self-made
nhcvect = [nhcvect;nhc_atl_2024_120];
myvect = [myvect;my_atl_2024_120];
btkvect = [btkvect;btk_atl_2024_120];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 121 ... KIRK around 2024-10-04-03Z ... CERTIFIED 
# my at https://x.com/elioeFIN/status/1842035740936454342
# NHC at https://www.nhc.noaa.gov/archive/2024/al12/al122024.discus.019.shtml?

nhc_atl_2024_121 = [24.4,49.7,130;30.0,49.9,110;37.3,44.7,90;43.5,33.2,75;47.0,16.8,60];
my_atl_2024_121 = [24.4,49.7,125;30.3,49.7,110;37.5,44.5,90;43.7,31.7,75;47.8,12.1,55];
btk_atl_2024_121 = [24.3,49.7,115;30.4,50.0,100;37.9,44.7,70;43.2,33.6,55;42.6,15.2,45]; # days 4-5 self-made
nhcvect = [nhcvect;nhc_atl_2024_121];
myvect = [myvect;my_atl_2024_121];
btkvect = [btkvect;btk_atl_2024_121];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 122 ... LESLIE around 2024-10-04-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1842040063342895300
# NHC at https://www.nhc.noaa.gov/archive/2024/al13/al132024.discus.007.shtml?

nhc_atl_2024_122 = [10.5,34.2,65;11.8,36.9,80;14.0,39.5,85;16.8,43.0,90;19.9,46.6,100];
my_atl_2024_122 = [10.4,34.2,65;11.7,36.7,70;14.1,39.4,80;16.9,42.9,85;19.8,46.1,95];
btk_atl_2024_122 = [10.3,33.9,65;11.9,36.5,70;14.5,39.1,80;17.6,42.9,65;20.4,46.7,70];
nhcvect = [nhcvect;nhc_atl_2024_122];
myvect = [myvect;my_atl_2024_122];
btkvect = [btkvect;btk_atl_2024_122];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 123 ... KIRK around 2024-10-04-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1842310414693957703
# NHC at https://www.nhc.noaa.gov/archive/2024/al12/al122024.discus.022.shtml?

nhc_atl_2024_123 = [28.5,50.1,110;35.6,46.5,90;42.0,36.0,70;45.0,19.0,50;49.5,3.0,45];
my_atl_2024_123 = [28.4,50.1,105;35.6,46.6,85;41.8,35.8,65;44.9,18.6,45;50.4,1.1,40];
btk_atl_2024_123 = [28.7,50.2,105;36.2,47.3,80;42.5,37.0,55;42.9,20.9,50;48.0,-2.2,35]; # days 3-5 self-made
nhcvect = [nhcvect;nhc_atl_2024_123];
myvect = [myvect;my_atl_2024_123];
btkvect = [btkvect;btk_atl_2024_123];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 124 ... LESLIE around 2024-10-04-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1842314369448731051
# NHC at https://www.nhc.noaa.gov/archive/2024/al13/al132024.discus.010.shtml?

nhc_atl_2024_124 = [11.2,35.9,75;13.5,38.3,80;16.3,41.6,75;19.0,45.0,75;21.5,48.2,70];
my_atl_2024_124 = [11.2,35.8,70;13.5,38.1,70;16.5,41.6,70;19.4,44.8,75;22.0,47.5,70];
btk_atl_2024_124 = [11.4,35.7,70;13.7,38.2,80;17.0,41.7,70;19.7,46.1,65;21.9,48.8,80];
nhcvect = [nhcvect;nhc_atl_2024_124];
myvect = [myvect;my_atl_2024_124];
btkvect = [btkvect;btk_atl_2024_124];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 125 ... MILTON around 2024-10-05-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1842673107531657663
# NHC at https://www.nhc.noaa.gov/archive/2024/al14/al142024.discus.002.shtml?

nhc_atl_2024_125 = [23.0,94.1,55;23.1,91.4,80;24.8,87.2,100;27.7,83.0,100;30.4,77.0,65];
my_atl_2024_125 = [23.1,93.9,55;23.3,90.9,80;24.9,87.2,100;28.1,83.0,90;31.2,76.9,60];
btk_atl_2024_125 = [22.5,94.1,70;21.7,91.3,150;22.5,88.1,145;26.3,83.9,115;29.5,77.5,60];
nhcvect = [nhcvect;nhc_atl_2024_125];
myvect = [myvect;my_atl_2024_125];
btkvect = [btkvect;btk_atl_2024_125];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 126 ... MILTON around 2024-10-06-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1842759513532772492
# NHC at https://www.nhc.noaa.gov/archive/2024/al14/al142024.discus.003.shtml?

nhc_atl_2024_126 = [23.0,93.5,60;23.3,90.5,85;25.3,86.4,105;28.2,82.3,95;30.8,76.1,65];
my_atl_2024_126 = [22.8,93.8,65;22.8,91.1,90;24.3,87.5,100;27.6,83.7,100;30.5,78.9,60];
btk_atl_2024_126 = [22.5,93.4,75;21.8,90.4,150;23.0,86.9,140;27.2,82.7,105;29.2,75.3,60]; # day 5 self-made
nhcvect = [nhcvect;nhc_atl_2024_126];
myvect = [myvect;my_atl_2024_126];
btkvect = [btkvect;btk_atl_2024_126];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 127 ... LESLIE around 2024-10-06-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1842764326001655842
# NHC at https://www.nhc.noaa.gov/archive/2024/al13/al132024.discus.015.shtml?

nhc_atl_2024_127 = [14.4,39.3,65;16.8,42.6,60;19.5,46.3,50;21.7,49.3,50;23.4,51.2,50];
my_atl_2024_127 = [14.2,39.5,60;16.9,42.6,50;20.1,46.3,50;22.4,48.9,50;23.9,51.4,50];
btk_atl_2024_127 = [14.5,39.1,80;17.6,42.9,65;20.4,46.7,70;22.3,49.0,90;24.1,51.1,55];
nhcvect = [nhcvect;nhc_atl_2024_127];
myvect = [myvect;my_atl_2024_127];
btkvect = [btkvect;btk_atl_2024_127];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 128 ... MILTON around 2024-10-06-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1842852635214250336
# NHC at https://www.nhc.noaa.gov/archive/2024/al14/al142024.discus.004.shtml?

nhc_atl_2024_128 = [22.9,92.9,65;23.4,89.6,90;26.0,85.3,105;29.0,80.7,80;31.0,74.5,55];
my_atl_2024_128 = [22.7,92.9,70;23.2,89.5,90;25.3,85.8,100;28.7,81.6,80;31.2,75.6,50];
btk_atl_2024_128 = [22.2,92.9,90;22.0,89.5,135;23.8,85.9,140;28.2,81.3,80;29.3,72.5,50]; # day 5 self-made
nhcvect = [nhcvect;nhc_atl_2024_128];
myvect = [myvect;my_atl_2024_128];
btkvect = [btkvect;btk_atl_2024_128];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 129 ... LESLIE around 2024-10-06-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1842856495274221604
# NHC at https://www.nhc.noaa.gov/archive/2024/al13/al132024.discus.016.shtml?

nhc_atl_2024_129 = [14.9,39.9,75;17.5,43.2,55;20.2,46.6,50;22.2,49.1,50;24.0,50.5,50];
my_atl_2024_129 = [14.8,39.9,70;17.8,43.1,50;20.8,46.1,50;22.7,48.3,60;24.6,50.1,50];
btk_atl_2024_129 = [15.2,40.0,80;18.4,44.0,60;20.9,47.5,70;22.6,49.6,90;24.9,51.1,50];
nhcvect = [nhcvect;nhc_atl_2024_129];
myvect = [myvect;my_atl_2024_129];
btkvect = [btkvect;btk_atl_2024_129];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 130 ... MILTON around 2024-10-06-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1843035723106283783
# NHC at https://www.nhc.noaa.gov/archive/2024/al14/al142024.discus.006.shtml?

nhc_atl_2024_130 = [22.2,90.9,110;23.6,86.9,125;27.0,83.1,105;29.8,77.5,65;31.4,68.8,55];
my_atl_2024_130 = [22.0,91.2,105;23.3,87.4,125;26.8,83.6,105;29.9,78.4,65;32.0,69.8,50];
btk_atl_2024_130 = [21.7,91.3,150;22.5,88.1,145;26.3,83.9,115;29.5,77.5,60;29.8,65.2,45]; # day 5 self-made
nhcvect = [nhcvect;nhc_atl_2024_130];
myvect = [myvect;my_atl_2024_130];
btkvect = [btkvect;btk_atl_2024_130];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 131 ... LESLIE around 2024-10-06-21Z ... CERTIFIED 
# my at https://x.com/elioeFIN/status/1843036686533472478
# NHC at https://www.nhc.noaa.gov/archive/2024/al13/al132024.discus.018.shtml?

nhc_atl_2024_131 = [16.2,41.3,70;19.0,44.7,55;21.2,47.7,55;22.5,50.0,50;24.1,51.7,50];
my_atl_2024_131 = [16.5,41.5,65;19.7,44.8,55;21.9,47.3,55;23.2,49.3,55;24.6,51.3,45];
btk_atl_2024_131 = [17.0,41.7,70;19.7,46.1,65;21.9,48.8,80;23.5,50.8,60;27.0,50.0,45];
nhcvect = [nhcvect;nhc_atl_2024_131];
myvect = [myvect;my_atl_2024_131];
btkvect = [btkvect;btk_atl_2024_131];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 132 ... MILTON around 2024-10-07-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1843125714486444367
# NHC at https://www.nhc.noaa.gov/archive/2024/al14/al142024.discus.007.shtml?

nhc_atl_2024_132 = [22.3,90.2,110;24.2,86.3,125;27.5,82.3,100;29.6,77.1,65;31.0,71.0,50];
my_atl_2024_132 = [22.2,90.4,110;23.6,86.9,115;26.7,83.9,90;29.7,78.8,60;31.2,74.4,50];
btk_atl_2024_132 = [21.8,90.4,150;23.0,86.9,140;27.2,82.7,105;29.2,75.3,60;29.8,62.2,40]; # days 4-5 self-made
nhcvect = [nhcvect;nhc_atl_2024_132];
myvect = [myvect;my_atl_2024_132];
btkvect = [btkvect;btk_atl_2024_132];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 133 ... LESLIE around 2024-10-07-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1843130115997520231
# NHC at https://www.nhc.noaa.gov/archive/2024/al13/al132024.discus.019.shtml?

nhc_atl_2024_133 = [17.4,42.3,65;20.2,45.7,50;21.9,48.2,45;23.4,50.0,45;25.0,50.5,40];
my_atl_2024_133 = [17.4,42.2,65;20.4,45.4,50;22.4,47.7,45;23.7,49.5,45;25.7,49.1,40];
btk_atl_2024_133 = [17.6,42.9,65;20.4,46.7,70;22.3,49.0,90;24.1,51.1,55;28.4,48.8,45];
nhcvect = [nhcvect;nhc_atl_2024_133];
myvect = [myvect;my_atl_2024_133];
btkvect = [btkvect;btk_atl_2024_133];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 134 ... MILTON around 2024-10-07-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1843217734877991375
# NHC at https://www.nhc.noaa.gov/archive/2024/al14/al142024.discus.008.shtml?

nhc_atl_2024_134 = [22.2,89.4,115;24.7,85.7,125;28.1,81.7,75;30.0,75.5,55;31.5,68.4,45];
my_atl_2024_134 = [22.3,89.4,115;24.8,85.6,120;28.4,81.5,70;30.5,75.1,55;31.7,66.2,45];
btk_atl_2024_134 = [22.0,89.5,135;23.8,85.9,140;28.2,81.3,80;29.3,72.5,50;30.9,58.1,35]; # days 4-5 self-made
nhcvect = [nhcvect;nhc_atl_2024_134];
myvect = [myvect;my_atl_2024_134];
btkvect = [btkvect;btk_atl_2024_134];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 135 ... LESLIE around 2024-10-07-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1843219126388716026
# NHC at https://www.nhc.noaa.gov/archive/2024/al13/al132024.discus.020.shtml?

nhc_atl_2024_135 = [18.1,43.4,60;20.9,46.7,50;22.4,48.9,45;23.9,50.1,40;25.8,49.9,40];
my_atl_2024_135 = [18.0,43.4,60;20.8,46.8,50;22.5,49.5,45;23.7,50.5,40;25.4,50.6,40];
btk_atl_2024_135 = [18.4,44.0,60;20.9,47.5,70;22.6,49.6,90;24.9,51.1,50;30.4,47.1,45];
nhcvect = [nhcvect;nhc_atl_2024_135];
myvect = [myvect;my_atl_2024_135];
btkvect = [btkvect;btk_atl_2024_135];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 136 ... MILTON around 2024-10-07-21Z ... CERTIFIED 
# my at https://x.com/elioeFIN/status/1843399428117540892
# NHC at https://www.nhc.noaa.gov/archive/2024/al14/al142024.discus.011.shtml?

nhc_atl_2024_136 = [22.7,87.4,150;26.1,84.0,125;29.2,79.5,75;30.5,71.0,55;31.0,65.0,40];
my_atl_2024_136 = [22.6,87.6,150;25.9,84.2,125;29.1,79.1,75;30.9,70.8,55;31.7,63.5,40];
btk_atl_2024_136 = [22.5,88.1,145;26.3,83.9,115;29.5,77.5,60;29.8,65.2,45;31.1,54.4,25]; # days 4-5 self-made
nhcvect = [nhcvect;nhc_atl_2024_136];
myvect = [myvect;my_atl_2024_136];
btkvect = [btkvect;btk_atl_2024_136];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 137 ... MILTON around 2024-10-08-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1843485906117742879
# NHC at https://www.nhc.noaa.gov/archive/2024/al14/al142024.discus.012.shtml?

nhc_atl_2024_137 = [23.5,86.7,140;27.1,83.3,110;29.4,77.6,75;30.3,69.5,50;31.0,63.0,35];
my_atl_2024_137 = [23.2,86.7,135;26.7,83.3,105;29.1,76.9,65;30.4,68.4,45;30.5,61.6,30];
btk_atl_2024_137 = [23.0,86.9,140;27.2,82.7,105;29.2,75.3,60;29.8,62.2,40;32.5,50.8,25]; # days 3-5 self-made
nhcvect = [nhcvect;nhc_atl_2024_137];
myvect = [myvect;my_atl_2024_137];
btkvect = [btkvect;btk_atl_2024_137];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 138 ... LESLIE around 2024-10-08-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1843489607918465144
# NHC at https://www.nhc.noaa.gov/archive/2024/al13/al132024.discus.023.shtml?

nhc_atl_2024_138 = [21.0,46.5,55;23.0,48.6,55;25.0,50.0,40;28.0,48.5,35;32.0,43.0,30];
my_atl_2024_138 = [20.8,46.6,55;22.6,48.9,55;24.2,50.3,40;27.2,48.7,35;31.0,44.3,30];
btk_atl_2024_138 = [20.4,46.7,70;22.3,49.0,90;24.1,51.1,55;28.4,48.8,45;35.8,38.7,40]; # day 5 self-made
nhcvect = [nhcvect;nhc_atl_2024_138];
myvect = [myvect;my_atl_2024_138];
btkvect = [btkvect;btk_atl_2024_138];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 139 ... MILTON around 2024-10-08-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1843574664947269805
# NHC at https://www.nhc.noaa.gov/archive/2024/al14/al142024.discus.013.shtml?

nhc_atl_2024_139 = [24.2,85.8,135;27.6,82.6,110;29.7,76.5,60;30.4,69.9,45;31.5,63.8,35];
my_atl_2024_139 = [24.1,86.0,125;27.8,82.3,90;30.1,75.3,55;31.9,65.7,40;33.2,58.2,25];
btk_atl_2024_139 = [23.8,85.9,140;28.2,81.3,80;29.3,72.5,50;30.9,58.1,35;33.8,47.6,25]; # days 3-5 self-made
nhcvect = [nhcvect;nhc_atl_2024_139];
myvect = [myvect;my_atl_2024_139];
btkvect = [btkvect;btk_atl_2024_139];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 140 ... MILTON around 2024-10-08-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1843761768348430661
# NHC at https://www.nhc.noaa.gov/archive/2024/al14/al142024.discus.015.shtml?

nhc_atl_2024_140 = [25.6,84.7,130;28.1,80.7,75;29.0,75.0,55;30.6,68.5,45];
my_atl_2024_140 = [25.5,84.6,120;28.0,79.9,70;29.3,72.0,55;30.0,66.4,45];
btk_atl_2024_140 = [26.3,83.9,115;29.5,77.5,60;29.8,65.2,45;31.1,54.4,25]; # days 3-4 self-made
nhcvect = [nhcvect;nhc_atl_2024_140];
myvect = [myvect;my_atl_2024_140];
btkvect = [btkvect;btk_atl_2024_140];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 141 ... MILTON around 2024-10-09-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1843848919937364360
# NHC at https://www.nhc.noaa.gov/archive/2024/al14/al142024.discus.016.shtml?

nhc_atl_2024_141 = [26.5,83.6,115;28.5,78.8,70;29.4,72.0,55;30.4,65.0,45];
my_atl_2024_141 = [26.4,83.5,110;28.3,78.5,65;29.4,71.2,55;31.0,63.7,40];
btk_atl_2024_141 = [27.2,82.7,105;29.2,75.3,60;29.8,62.2,40;32.5,50.8,25]; # days 2-4 self-made
nhcvect = [nhcvect;nhc_atl_2024_141];
myvect = [myvect;my_atl_2024_141];
btkvect = [btkvect;btk_atl_2024_141];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 142 ... MILTON around 2024-10-09-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1843943639287992739
# NHC at https://www.nhc.noaa.gov/archive/2024/al14/al142024.discus.017.shtml?

nhc_atl_2024_142 = [27.4,82.6,115;28.8,76.8,60;29.7,69.2,50;31.3,62.0,40];
my_atl_2024_142 = [27.3,82.2,110;28.9,76.0,60;30.3,66.7,50;32.5,57.4,40];
btk_atl_2024_142 = [28.1,81.3,80;29.3,72.5,50;30.9,58.1,35;33.8,47.6,25]; # days 2-4 self-made
nhcvect = [nhcvect;nhc_atl_2024_142];
myvect = [myvect;my_atl_2024_142];
btkvect = [btkvect;btk_atl_2024_142];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Atl 143 ... MILTON around 2024-10-09-21Z ... certification failed
# my at https://x.com/elioeFIN/status/1844125278710399035
# NHC at https://www.nhc.noaa.gov/archive/2024/al14/al142024.discus.019.shtml?

nhc_atl_2024_143 = [28.9,79.1,60;29.3,73.2,50;29.9,67.7,35];
my_atl_2024_143 = [29.1,78.6,60;29.7,70.4,50;30.5,62.1,30];
btk_atl_2024_143 = [29.5,77.5,60;29.8,65.2,45;31.1,54.4,25]; # days 2-3 self-made
nhcvect = [nhcvect;nhc_atl_2024_143];
myvect = [myvect;my_atl_2024_143];
btkvect = [btkvect;btk_atl_2024_143];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Atl 144 ... 15L around 2024-10-19-03Z ... certification failed
# my at https://x.com/elioeFIN/status/1847473162377728187
# NHC at https://www.nhc.noaa.gov/archive/2024/al15/al152024.discus.002.shtml?

nhc_atl_2024_144 = [17.3,90.0,30];
my_atl_2024_144 = [17.1,90.1,30];
btk_atl_2024_144 = [17.3,90.0,30];
nhcvect = [nhcvect;nhc_atl_2024_144];
myvect = [myvect;my_atl_2024_144];
btkvect = [btkvect;btk_atl_2024_144];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;1];

# Wpac 052 ... 22W/(KRISTINE) around 2024-10-20-21Z ... certification failed
# my at https://x.com/elioeFIN/status/1848101308462760310

nhc_wpac_2024_052 = [13.8,129.9,35;15.4,127.4,40;17.1,124.9,55;17.7,122.5,65;18.2,119.6,40];
my_wpac_2024_052 = [13.6,129.7,35;15.4,127.2,40;17.3,124.9,50;17.3,122.6,70;18.2,120.6,50];
btk_wpac_2024_052 = [13.3,128.3,35;15.1,125.0,45;17.2,122.2,45;16.8,119.3,45;17.2,115.0,60];
nhcvect = [nhcvect;nhc_wpac_2024_052];
myvect = [myvect;my_wpac_2024_052];
btkvect = [btkvect;btk_wpac_2024_052];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Atl 145 ... OSCAR around 2024-10-20-21Z ... certification failed
# my at https://x.com/elioeFIN/status/1848107740280860983
# NHC at https://www.nhc.noaa.gov/archive/2024/al16/al162024.discus.007.shtml?

nhc_atl_2024_145 = [20.6,75.4,40;22.7,75.0,40;25.2,72.0,35];
my_atl_2024_145 = [20.7,75.5,40;22.5,75.8,40;23.6,74.3,35];
btk_atl_2024_145 = [20.7,75.9,35;23.0,74.0,30;30.2,67.3,35]; # day 3 self-made
nhcvect = [nhcvect;nhc_atl_2024_145];
myvect = [myvect;my_atl_2024_145];
btkvect = [btkvect;btk_atl_2024_145];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Wpac 053 ... 22W/(KRISTINE) around 2024-10-21-03Z ... certification failed
# my at https://x.com/elioeFIN/status/1848194912904163815

nhc_wpac_2024_053 = [14.1,128.7,35;16.0,126.2,40;17.5,123.5,60;17.9,120.7,50;18.5,117.5,50];
my_wpac_2024_053 = [13.9,129.2,35;16.2,126.2,45;17.6,122.9,60;17.7,120.6,50;18.6,118.7,45];
btk_wpac_2024_053 = [13.6,127.4,35;15.6,124.1,45;17.0,121.2,45;16.9,118.8,50;17.0,113.5,60];
nhcvect = [nhcvect;nhc_wpac_2024_053];
myvect = [myvect;my_wpac_2024_053];
btkvect = [btkvect;btk_wpac_2024_053];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Atl 146 ... OSCAR around 2024-10-21-03Z ... certification failed
# my at https://x.com/elioeFIN/status/1848197978374230136
# NHC at https://www.nhc.noaa.gov/archive/2024/al16/al162024.discus.008.shtml?

nhc_atl_2024_146 = [20.9,75.3,40;23.4,73.7,40;27.3,70.2,35];
my_atl_2024_146 = [20.8,75.3,35;23.6,74.0,40;26.8,71.7,35];
btk_atl_2024_146 = [21.5,75.6,35;24.0,72.1,25;32.5,67.0,40]; # days 2-3 self-made
nhcvect = [nhcvect;nhc_atl_2024_146];
myvect = [myvect;my_atl_2024_146];
btkvect = [btkvect;btk_atl_2024_146];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Wpac 054 ... 22W/(KRISTINE) around 2024-10-21-09Z ... certification failed
# my at https://x.com/elioeFIN/status/1848281602129879246

nhc_wpac_2024_054 = [14.0,126.6,45;16.3,123.7,55;17.1,120.2,45;17.3,116.8,50;17.8,112.4,50];
my_wpac_2024_054 = [14.5,127.5,40;16.4,124.0,55;17.3,120.5,50;17.4,116.6,55;18.1,113.3,55];
btk_wpac_2024_054 = [14.0,126.6,35;16.2,123.3,45;16.9,120.4,40;17.4,117.2,55;17.1,112.2,55];
nhcvect = [nhcvect;nhc_wpac_2024_054];
myvect = [myvect;my_wpac_2024_054];
btkvect = [btkvect;btk_wpac_2024_054];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Atl 147 ... OSCAR around 2024-10-21-09Z ... certification failed
# my at https://x.com/elioeFIN/status/1848286513018089557
# NHC at https://www.nhc.noaa.gov/archive/2024/al16/al162024.discus.009.shtml?

nhc_atl_2024_147 = [21.5,75.0,40;24.5,72.4,40];
my_atl_2024_147 = [21.5,75.0,40;24.5,72.5,45];
btk_atl_2024_147 = [22.2,75.1,35;24.8,71.2,25]; # day 2 self-made
nhcvect = [nhcvect;nhc_atl_2024_147];
myvect = [myvect;my_atl_2024_147];
btkvect = [btkvect;btk_atl_2024_147];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Atl 148 ... OSCAR around 2024-10-21-21Z ... certification failed
# my at https://x.com/elioeFIN/status/1848467997490323848
# NHC at https://www.nhc.noaa.gov/archive/2024/al16/al162024.discus.011.shtml?

nhc_atl_2024_148 = [23.3,74.1,40;27.4,70.2,40];
my_atl_2024_148 = [23.2,74.5,40;27.4,70.5,40];
btk_atl_2024_148 = [23.0,74.0,30;30.2,67.3,35]; # day 2 self-made
nhcvect = [nhcvect;nhc_atl_2024_148];
myvect = [myvect;my_atl_2024_148];
btkvect = [btkvect;btk_atl_2024_148];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Epac 046 ... KRISTY around 2024-10-22-21Z ... certification failed
# my at https://x.com/elioeFIN/status/1848832043355930743
# NHC at https://www.nhc.noaa.gov/archive/2024/ep12/ep122024.discus.005.shtml?

nhc_epac_2024_046 = [14.4,114.5,100;14.2,121.0,110;15.7,126.5,110;18.7,130.7,70;21.0,134.5,40];
my_epac_2024_046 = [14.6,114.6,90;14.7,121.4,105;16.3,126.8,105;18.9,130.7,70;20.9,134.4,35];
btk_epac_2024_046 = [14.1,114.7,130;14.1,121.0,140;16.2,125.4,105;20.2,128.9,60;22.5,129.7,35];
nhcvect = [nhcvect;nhc_epac_2024_046];
myvect = [myvect;my_epac_2024_046];
btkvect = [btkvect;btk_epac_2024_046];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;2;2;2;2;2];

# Nio 08 ... BOB 07 / 98B around 2024-10-22-21Z ... certification failed
# my at https://x.com/elioeFIN/status/1848836874854342963
# (no JTWC forecast)

# Wpac 055 ... TRAMI/(KRISTINE) around 2024-10-23-03Z ... certification failed
# my at https://x.com/elioeFIN/status/1848920496626372859

nhc_wpac_2024_055 = [16.6,120.6,45;17.0,117.8,50;17.3,113.8,60;17.0,110.5,55;16.7,109.7,40];
my_wpac_2024_055 = [16.5,120.0,40;17.1,117.4,50;17.3,114.2,55;16.7,110.9,55;15.8,109.9,35];
btk_wpac_2024_055 = [17.0,121.2,45;16.9,118.8,50;17.0,113.5,60;16.5,108.4,45;15.5,107.9,25];
nhcvect = [nhcvect;nhc_wpac_2024_055];
myvect = [myvect;my_wpac_2024_055];
btkvect = [btkvect;btk_wpac_2024_055];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Nio 09 ... DANA around 2024-10-23-21Z ... certification failed
# my at https://x.com/elioeFIN/status/1849192536029405279

nhc_nio_2024_09 = [20.3,87.7,70;21.4,86.9,50];
my_nio_2024_09 = [20.4,87.6,65;21.4,86.3,35];
btk_nio_2024_09 = [20.2,87.2,65;21.2,86.2,30];
nhcvect = [nhcvect;nhc_nio_2024_09];
myvect = [myvect;my_nio_2024_09];
btkvect = [btkvect;btk_nio_2024_09];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Epac 047 ... KRISTY around 2024-10-23-21Z ... certification failed
# my at https://x.com/elioeFIN/status/1849196570136203746
# NHC at https://www.nhc.noaa.gov/archive/2024/ep12/ep122024.discus.009.shtml?

nhc_epac_2024_047 = [14.1,121.0,135;15.8,126.0,110;19.5,130.1,75;21.0,133.0,40];
my_epac_2024_047 = [14.3,121.1,130;16.2,126.3,110;20.1,130.2,70;21.6,132.7,40];
btk_epac_2024_047 = [14.1,121.0,140;16.2,125.4,105;20.2,128.9,60;22.5,129.7,35];
nhcvect = [nhcvect;nhc_epac_2024_047];
myvect = [myvect;my_epac_2024_047];
btkvect = [btkvect;btk_epac_2024_047];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;2;2;2;2];

# Wpac 056 ... TRAMI/(KRISTINE) around 2024-10-24-21Z ... certification failed
# my at https://x.com/elioeFIN/status/1849550493762179528

nhc_wpac_2024_056 = [17.2,115.2,55;17.0,110.9,50;16.0,109.5,40;15.5,110.5,35];
my_wpac_2024_056 = [17.5,115.0,60;17.1,110.3,60;16.1,108.8,45;16.1,108.7,35];
btk_wpac_2024_056 = [17.2,115.0,60;16.9,109.4,50;15.3,107.8,30;16.4,108.7,25];
nhcvect = [nhcvect;nhc_wpac_2024_056];
myvect = [myvect;my_wpac_2024_056];
btkvect = [btkvect;btk_wpac_2024_056];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Nio 10 ... DANA around 2024-10-24-21Z ... certification failed
# my at https://x.com/elioeFIN/status/1849551127211278637

nhc_nio_2024_10 = [20.7,85.4,40];
my_nio_2024_10 = [20.7,85.4,35];
btk_nio_2024_10 = [21.2,86.2,30];
nhcvect = [nhcvect;nhc_nio_2024_10];
myvect = [myvect;my_nio_2024_10];
btkvect = [btkvect;btk_nio_2024_10];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;3];

# Epac 048 ... KRISTY around 2024-10-24-21Z ... certification failed
# my at https://x.com/elioeFIN/status/1849554504129413139
# NHC at https://www.nhc.noaa.gov/archive/2024/ep12/ep122024.discus.013.shtml?

nhc_epac_2024_048 = [16.1,125.6,120;19.8,129.1,85;22.2,131.0,40];
my_epac_2024_048 = [16.0,125.5,120;20.0,129.1,80;22.5,130.7,35];
btk_epac_2024_048 = [16.2,125.4,105;20.2,128.9,60;22.5,129.7,35];
nhcvect = [nhcvect;nhc_epac_2024_048];
myvect = [myvect;my_epac_2024_048];
btkvect = [btkvect;btk_epac_2024_048];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Wpac 057 ... TRAMI/(KRISTINE) around 2024-10-25-03Z ... certification failed
# my at https://x.com/elioeFIN/status/1849640968867180695

nhc_wpac_2024_057 = [17.2,114.8,55;16.8,111.3,50;16.0,110.5,35;15.6,111.8,30];
my_wpac_2024_057 = [17.3,113.9,55;17.0,110.2,50;16.4,109.8,35;16.4,111.0,25];
btk_wpac_2024_057 = [17.0,113.5,60;16.5,108.4,45;15.5,107.9,25;16.5,109.0,20];
nhcvect = [nhcvect;nhc_wpac_2024_057];
myvect = [myvect;my_wpac_2024_057];
btkvect = [btkvect;btk_wpac_2024_057];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Epac 049 ... KRISTY around 2024-10-25-03Z ... certification failed
# my at https://x.com/elioeFIN/status/1849645683596276208
# NHC at https://www.nhc.noaa.gov/archive/2024/ep12/ep122024.discus.014.shtml?

nhc_epac_2024_049 = [17.0,126.5,120;20.9,129.4,75;22.5,131.0,30];
my_epac_2024_049 = [17.0,126.4,115;21.1,129.2,70;22.9,130.7,30];
btk_epac_2024_049 = [17.1,126.4,95;21.1,129.3,55;22.3,130.2,35];
nhcvect = [nhcvect;nhc_epac_2024_049];
myvect = [myvect;my_epac_2024_049];
btkvect = [btkvect;btk_epac_2024_049];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;2;2;2];

# Wpac 058 ... TRAMI/(KRISTINE) around 2024-10-26-21Z ... certification failed
# my at https://x.com/elioeFIN/status/1850280206734438471

nhc_wpac_2024_058 = [16.2,108.1,35;15.7,108.3,30];
my_wpac_2024_058 = [16.2,108.7,35;16.4,109.4,30];
btk_wpac_2024_058 = [15.3,107.8,30;16.4,108.7,25];
nhcvect = [nhcvect;nhc_wpac_2024_058];
myvect = [myvect;my_wpac_2024_058];
btkvect = [btkvect;btk_wpac_2024_058];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Wpac 059 ... KONG-REY/(LEON) around 2024-10-26-21Z ... certification failed
# my at https://x.com/elioeFIN/status/1850282637711077742

nhc_wpac_2024_059 = [16.9,131.0,50;17.7,128.4,70;19.3,126.9,90;21.5,125.9,105;24.1,125.1,110];
my_wpac_2024_059 = [16.9,131.1,45;17.8,128.6,70;19.5,126.9,85;22.0,125.3,85;25.5,124.2,85];
btk_wpac_2024_059 = [16.7,130.5,50;17.0,127.9,70;18.8,125.5,125;21.0,122.8,115;25.2,120.1,60];
nhcvect = [nhcvect;nhc_wpac_2024_059];
myvect = [myvect;my_wpac_2024_059];
btkvect = [btkvect;btk_wpac_2024_059];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 060 ... KONG-REY/(LEON) around 2024-10-28-03Z .. certification failed
# my at https://x.com/elioeFIN/status/1850729422053065128

nhc_wpac_2024_060 = [17.8,126.5,75;19.4,124.3,110;21.5,122.0,110;24.6,120.0,85;27.9,122.2,40];
my_wpac_2024_060 = [17.9,127.0,70;19.5,124.6,100;21.4,122.1,100;24.9,119.6,70;28.7,122.3,30];
btk_wpac_2024_060 = [17.4,127.2,80;19.1,124.9,130;22.0,122.2,115;26.7,120.6,55;32.6,130.3,40];
nhcvect = [nhcvect;nhc_wpac_2024_060];
myvect = [myvect;my_wpac_2024_060];
btkvect = [btkvect;btk_wpac_2024_060];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 061 ... KONG-REY/(LEON) around 2024-10-28-09Z ... certification failed
# my at https://x.com/elioeFIN/status/1850821622329970961

nhc_wpac_2024_061 = [17.8,126.5,80;19.4,124.1,115;21.9,121.7,110;25.3,120.2,80;28.7,124.0,40];
my_wpac_2024_061 = [18.2,126.3,80;19.8,124.2,110;22.8,121.5,105;26.4,120.3,60;30.2,125.7,35];
btk_wpac_2024_061 = [17.8,126.5,95;19.8,124.2,125;23.1,121.3,100;28.3,121.5,50;34.1,135.0,35];
nhcvect = [nhcvect;nhc_wpac_2024_061];
myvect = [myvect;my_wpac_2024_061];
btkvect = [btkvect;btk_wpac_2024_061];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 062 ... KONG-REY/(LEON) around 2024-10-28-21Z ... certification failed
# my at https://x.com/elioeFIN/status/1851006361892421737

nhc_wpac_2024_062 = [18.9,125.3,105;21.0,122.8,115;24.5,120.1,75;28.4,122.5,45];
my_wpac_2024_062 = [19.0,125.1,95;21.6,122.9,110;25.0,120.2,75;30.2,122.3,45];
btk_wpac_2024_062 = [18.8,125.5,125;21.0,122.8,115;25.2,120.1,60;31.1,126.2,50];
nhcvect = [nhcvect;nhc_wpac_2024_062];
myvect = [myvect;my_wpac_2024_062];
btkvect = [btkvect;btk_wpac_2024_062];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Wpac 063 ... KONG-REY/(LEON) around 2024-10-30-03Z ... certification failed
# my at https://x.com/elioeFIN/status/1851456706078769398

nhc_wpac_2024_063 = [21.8,122.2,130;26.0,120.6,60;30.5,125.8,45];
my_wpac_2024_063 = [22.0,122.2,125;26.3,120.5,60;30.3,125.2,50];
btk_wpac_2024_063 = [22.0,122.2,115;26.7,120.6,55;32.6,130.3,40];
nhcvect = [nhcvect;nhc_wpac_2024_063];
myvect = [myvect;my_wpac_2024_063];
btkvect = [btkvect;btk_wpac_2024_063];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Atl 149 ... PATTY around 2024-11-02-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1852817827276738747
# NHC at https://www.nhc.noaa.gov/archive/2024/al17/al172024.discus.003.shtml?

nhc_atl_2024_149 = [37.3,23.1,45;39.0,14.8,35;41.7,9.8,25];
my_atl_2024_149 = [37.2,22.7,45;39.3,14.3,40;42.4,9.6,25];
btk_atl_2024_149 = [37.2,23.4,40;39.2,15.2,25;42.0,10.6,20]; # days 2-3 self-made
nhcvect = [nhcvect;nhc_atl_2024_149];
myvect = [myvect;my_atl_2024_149];
btkvect = [btkvect;btk_atl_2024_149];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Epac 050 ... LANE around 2024-11-02-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1852820738295713851
# NHC at https://www.nhc.noaa.gov/archive/2024/ep13/ep132024.discus.005.shtml?
# (nothing verifiable, at least operationally)

nhc_epac_2024_050 = [];
my_epac_2024_050 = [];
btk_epac_2024_050 = [];
nhcvect = [nhcvect;nhc_epac_2024_050];
myvect = [myvect;my_epac_2024_050];
btkvect = [btkvect;btk_epac_2024_050];
leadtimevect = [leadtimevect;];
basinvect = [basinvect;];

# Atl 150 ... PATTY around 2024-11-03-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1853180693280628916
# NHC at https://www.nhc.noaa.gov/archive/2024/al17/al172024.discus.007.shtml?

nhc_atl_2024_150 = [38.9,14.8,30;41.2,8.7,25];
my_atl_2024_150 = [38.7,14.5,30;40.3,8.8,25];
btk_atl_2024_150 = [39.2,15.2,25;42.0,10.6,20]; # days 1-2 self-made
nhcvect = [nhcvect;nhc_atl_2024_150];
myvect = [myvect;my_atl_2024_150];
btkvect = [btkvect;btk_atl_2024_150];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Wpac 064 ... YINXING/(MARCE) around 2024-11-04-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1853265235026608313

nhc_wpac_2024_064 = [15.9,128.5,80;18.4,126.3,95;19.0,125.0,95;19.1,122.5,80;19.3,119.1,70];
my_wpac_2024_064 = [15.9,128.3,75;18.3,125.9,95;18.9,124.6,100;18.7,121.2,100;18.8,117.4,85];
btk_wpac_2024_064 = [16.2,127.4,75;18.0,124.7,95;18.6,123.1,120;18.2,119.3,90;18.8,115.0,105];
nhcvect = [nhcvect;nhc_wpac_2024_064];
myvect = [myvect;my_wpac_2024_064];
btkvect = [btkvect;btk_wpac_2024_064];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Atl 151 ... 18L around 2024-11-04-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1853275302870298720
# NHC at https://www.nhc.noaa.gov/archive/2024/al18/al182024.discus.002.shtml?

nhc_atl_2024_151 = [16.0,77.6,40;19.8,80.9,60;23.5,84.5,65;25.5,87.0,65;26.5,89.0,55];
my_atl_2024_151 = [15.7,77.8,40;19.4,81.0,65;23.1,84.1,65;25.3,86.0,70;26.7,88.3,65];
btk_atl_2024_151 = [15.8,76.9,40;19.4,79.9,70;23.2,83.2,90;24.7,86.6,90;24.7,89.7,65];
nhcvect = [nhcvect;nhc_atl_2024_151];
myvect = [myvect;my_atl_2024_151];
btkvect = [btkvect;btk_atl_2024_151];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 065 ... YINXING/(MARCE) around 2024-11-04-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1853354861280038965

nhc_wpac_2024_065 = [16.9,127.1,85;18.7,125.2,90;19.0,123.7,85;19.2,121.0,75;19.2,117.9,75];
my_wpac_2024_065 = [16.8,127.0,80;18.6,125.1,90;18.9,123.7,85;19.1,120.2,95;19.0,116.4,80];
btk_wpac_2024_065 = [16.9,126.5,80;18.1,124.4,100;18.5,122.3,130;18.4,118.1,90;19.0,114.1,110];
nhcvect = [nhcvect;nhc_wpac_2024_065];
myvect = [myvect;my_wpac_2024_065];
btkvect = [btkvect;btk_wpac_2024_065];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Atl 152 ... 18L around 2024-11-04-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1853362274888466798
# NHC at https://www.nhc.noaa.gov/archive/2024/al18/al182024.discus.003.shtml?

nhc_atl_2024_152 = [17.3,78.3,45;20.8,81.7,70;24.2,84.7,70;26.0,87.0,65;27.5,89.5,55];
my_atl_2024_152 = [17.2,78.4,45;20.5,82.2,70;23.8,85.1,70;25.8,87.3,65;26.9,90.3,45];
btk_atl_2024_152 = [16.6,77.7,45;20.2,80.9,75;23.8,84.1,90;24.5,87.7,105;24.9,90.5,55];
nhcvect = [nhcvect;nhc_atl_2024_152];
myvect = [myvect;my_atl_2024_152];
btkvect = [btkvect;btk_atl_2024_152];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 153 ... RAFAEL around 2024-11-04-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1853545842860314856
# NHC at https://www.nhc.noaa.gov/archive/2024/al18/al182024.discus.005.shtml?

nhc_atl_2024_153 = [18.5,79.1,65;22.1,82.4,85;24.7,85.0,75;26.0,87.3,65;27.4,89.4,50];
my_atl_2024_153 = [18.3,79.1,60;22.2,82.5,75;24.7,84.9,70;26.0,86.9,55;27.9,88.7,40];
btk_atl_2024_153 = [18.6,79.1,55;22.0,82.3,100;24.6,85.7,90;24.6,89.4,90;25.3,91.5,45];
nhcvect = [nhcvect;nhc_atl_2024_153];
myvect = [myvect;my_atl_2024_153];
btkvect = [btkvect;btk_atl_2024_153];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 066 ... YINXING/(MARCE) around 2024-11-05-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1853627117906354654

nhc_wpac_2024_066 = [18.4,124.8,95;19.0,123.0,95;19.3,120.0,90;19.4,117.5,90;19.3,116.1,70];
my_wpac_2024_066 = [18.3,124.8,90;18.9,123.2,90;19.2,120.3,90;19.6,117.4,90;19.7,116.0,60];
btk_wpac_2024_066 = [18.0,124.7,95;18.6,123.1,120;18.2,119.3,90;18.8,115.0,105;19.0,113.2,100];
nhcvect = [nhcvect;nhc_wpac_2024_066];
myvect = [myvect;my_wpac_2024_066];
btkvect = [btkvect;btk_wpac_2024_066];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Atl 154 ... RAFAEL around 2024-11-05-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1853635745312875006
# NHC at https://www.nhc.noaa.gov/archive/2024/al18/al182024.discus.006.shtml?

nhc_atl_2024_154 = [19.4,79.9,60;23.3,83.1,80;25.4,85.3,75;26.6,87.6,65;27.1,89.9,45];
my_atl_2024_154 = [19.3,79.8,60;23.1,82.9,75;25.4,85.4,65;27.2,87.8,55;30.5,89.2,35];
btk_atl_2024_154 = [19.4,79.9,70;23.2,83.2,90;24.7,86.6,90;24.7,89.7,65;25.6,91.7,40];
nhcvect = [nhcvect;nhc_atl_2024_154];
myvect = [myvect;my_atl_2024_154];
btkvect = [btkvect;btk_atl_2024_154];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 067 ... YINXING/(MARCE) around 2024-11-05-15Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1853808447529144564

nhc_wpac_2024_067 = [18.5,123.8,100;18.8,121.4,95;18.9,118.5,85;18.6,116.2,75;17.9,114.2,55];
my_wpac_2024_067 = [18.4,124.0,90;18.6,122.0,90;18.6,118.3,75;18.7,116.4,55;17.8,114.3,40];
btk_wpac_2024_067 = [18.1,124.0,110;18.6,121.5,115;18.4,116.9,90;19.1,113.6,110;18.7,112.8,75];
nhcvect = [nhcvect;nhc_wpac_2024_067];
myvect = [myvect;my_wpac_2024_067];
btkvect = [btkvect;btk_wpac_2024_067];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Atl 155 ... RAFAEL around 2024-11-05-15Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1853816412755673446
# NHC at https://www.nhc.noaa.gov/archive/2024/al18/al182024.discus.008.shtml?

nhc_atl_2024_155 = [21.3,81.5,75;24.4,84.3,80;25.6,87.1,75;26.8,89.3,60;28.0,90.5,45];
my_atl_2024_155 = [21.1,81.5,75;24.2,84.4,75;24.9,87.1,70;26.6,89.1,55;29.4,89.2,35];
btk_atl_2024_155 = [21.0,81.6,90;24.3,84.9,90;24.5,88.5,95;25.1,91.2,50;26.2,91.9,35];
nhcvect = [nhcvect;nhc_atl_2024_155];
myvect = [myvect;my_atl_2024_155];
btkvect = [btkvect;btk_atl_2024_155];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 068 ... YINXING/(MARCE) around 2024-11-07-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1854351320276251120

nhc_wpac_2024_068 = [18.6,119.5,105;19.0,115.9,100;19.2,113.9,90;17.8,112.3,50;14.9,110.8,25];
my_wpac_2024_068 = [18.4,119.3,95;18.7,115.2,100;18.9,112.9,90;18.1,111.2,45;16.3,110.0,30];
btk_wpac_2024_068 = [18.2,119.3,90;18.8,115.0,105;19.0,113.2,100;17.0,111.3,40;14.7,109.8,30];
nhcvect = [nhcvect;nhc_wpac_2024_068];
myvect = [myvect;my_wpac_2024_068];
btkvect = [btkvect;btk_wpac_2024_068];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Atl 156 ... RAFAEL around 2024-11-07-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1854360429595644297
# NHC at https://www.nhc.noaa.gov/archive/2024/al18/al182024.discus.014.shtml?

nhc_atl_2024_156 = [24.6,86.7,85;24.6,89.8,80;25.0,91.7,65;24.8,92.6,50;24.2,93.3,35];
my_atl_2024_156 = [24.4,86.7,85;24.3,89.8,75;24.5,91.9,65;24.6,92.1,50;23.8,92.1,40];
btk_atl_2024_156 = [24.7,86.6,90;24.7,89.7,65;25.6,91.7,40;26.6,90.6,25;26.6,89.2,25]; # days 4-5 self-made
nhcvect = [nhcvect;nhc_atl_2024_156];
myvect = [myvect;my_atl_2024_156];
btkvect = [btkvect;btk_atl_2024_156];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Wpac 069 ... YINXING/(MARCE) around 2024-11-07-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1854441950918705227

nhc_wpac_2024_069 = [18.4,118.7,100;18.9,115.1,105;19.0,113.7,85;17.4,111.8,40;14.5,110.3,25];
my_wpac_2024_069 = [18.3,118.3,105;18.8,114.6,105;19.2,112.9,85;18.2,111.0,40;14.9,110.0,25];
btk_wpac_2024_069 = [18.4,118.1,90;19.0,114.1,110;18.9,113.0,90;16.3,110.8,40;14.1,109.4,30];
nhcvect = [nhcvect;nhc_wpac_2024_069];
myvect = [myvect;my_wpac_2024_069];
btkvect = [btkvect;btk_wpac_2024_069];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Atl 157 ... RAFAEL around 2024-11-07-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1854450104368865778
# NHC at https://www.nhc.noaa.gov/archive/2024/al18/al182024.discus.015.shtml?

nhc_atl_2024_157 = [24.5,87.7,85;24.6,90.5,80;24.6,92.4,65;24.2,93.0,50;23.5,93.6,35];
my_atl_2024_157 = [24.5,87.7,85;24.5,90.5,70;24.6,92.1,65;24.3,92.0,55;21.4,94.1,40];
btk_atl_2024_157 = [24.5,87.7,105;24.9,90.5,55;26.0,91.8,35;26.8,90.2,25;26.5,89.4,25]; # days 4-5 self-made
nhcvect = [nhcvect;nhc_atl_2024_157];
myvect = [myvect;my_atl_2024_157];
btkvect = [btkvect;btk_atl_2024_157];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 158 ... RAFAEL around 2024-11-07-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1854630841533530290
# NHC at https://www.nhc.noaa.gov/archive/2024/al18/al182024.discus.017.shtml?

nhc_atl_2024_158 = [24.7,89.2,85;25.0,91.5,65;25.1,92.6,45;23.7,93.3,35;22.0,94.0,35];
my_atl_2024_158 = [24.6,89.2,85;25.3,91.7,60;26.3,92.3,45;26.2,91.2,35;23.9,90.9,40];
btk_atl_2024_158 = [24.6,89.4,90;25.3,91.5,45;26.2,91.5,30;26.9,89.4,25;25.5,89.6,20]; # days 4-5 self-made
nhcvect = [nhcvect;nhc_atl_2024_158];
myvect = [myvect;my_atl_2024_158];
btkvect = [btkvect;btk_atl_2024_158];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;1;1;1;1;1];

# Atl 159 ... RAFAEL around 2024-11-08-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1854993010439729536
# NHC at https://www.nhc.noaa.gov/archive/2024/al18/al182024.discus.022.shtml?

nhc_atl_2024_159 = [25.2,91.5,60;25.6,92.0,40;23.8,92.3,30;22.8,92.7,25];
my_atl_2024_159 = [24.8,91.4,60;24.6,92.3,40;22.9,93.0,30;21.5,93.2,25];
btk_atl_2024_159 = [25.3,91.5,45;26.2,91.5,30;26.9,89.4,25;25.5,89.6,20]; # days 3-4 self-made
nhcvect = [nhcvect;nhc_atl_2024_159];
myvect = [myvect;my_atl_2024_159];
btkvect = [btkvect;btk_atl_2024_159];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Wpac 070 ... TORAJI/(NIKA) around 2024-11-09-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1855351644013351381

nhc_wpac_2024_070 = [16.0,123.4,90;18.0,119.4,55;19.1,116.8,55;20.3,114.3,45;19.9,112.5,25];
my_wpac_2024_070 = [15.9,123.4,95;17.8,119.1,60;18.9,116.4,55;20.1,113.6,40;20.4,111.5,25];
btk_wpac_2024_070 = [15.9,123.3,80;18.3,119.1,45;20.0,117.1,45;21.0,114.4,25;21.0,113.0,20];
nhcvect = [nhcvect;nhc_wpac_2024_070];
myvect = [myvect;my_wpac_2024_070];
btkvect = [btkvect;btk_wpac_2024_070];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Atl 160  ... RAFAEL around 2024-11-09-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1855357830737580168
# NHC at https://www.nhc.noaa.gov/archive/2024/al18/al182024.discus.026.shtml?

nhc_atl_2024_160 = [26.0,91.8,35;24.6,91.7,30;22.2,93.2,25];
my_atl_2024_160 = [26.0,92.0,35;24.8,91.7,30;22.7,93.4,25];
btk_atl_2024_160 = [26.2,91.5,30;26.9,89.4,25;25.5,89.6,20]; # days 2-3 self-made
nhcvect = [nhcvect;nhc_atl_2024_160];
myvect = [myvect;my_atl_2024_160];
btkvect = [btkvect;btk_atl_2024_160];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Wpac 071 ... TORAJI/(NIKA) around 2024-11-10-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1855529365162840509

nhc_wpac_2024_071 = [16.8,120.8,65;18.4,117.4,45;19.6,115.0,40;20.1,113.2,35];
my_wpac_2024_071 = [16.7,121.1,65;18.8,117.6,50;19.8,115.1,35;20.5,112.6,25];
btk_wpac_2024_071 = [17.0,121.1,70;19.2,118.1,45;20.5,115.6,45;21.2,113.9,25];
nhcvect = [nhcvect;nhc_wpac_2024_071];
myvect = [myvect;my_wpac_2024_071];
btkvect = [btkvect;btk_wpac_2024_071];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Wpac 072 ... USAGI around 2024-11-11-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1856072822843466238

nhc_wpac_2024_072 = [14.4,129.2,80;16.5,124.3,100;19.2,121.4,100;21.2,121.0,75;22.3,122.1,50];
my_wpac_2024_072 = [14.4,129.3,70;16.6,124.4,95;19.7,121.7,100;21.8,122.0,75;22.5,121.9,40];
btk_wpac_2024_072 = [14.7,128.9,60;16.6,124.0,130;19.8,120.5,70;22.2,119.9,35;22.1,119.8,20];
nhcvect = [nhcvect;nhc_wpac_2024_072];
myvect = [myvect;my_wpac_2024_072];
btkvect = [btkvect;btk_wpac_2024_072];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 073 ... MAN-YI around 2024-11-11-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1856076570688958642

nhc_wpac_2024_073 = [13.7,146.9,45;12.7,141.6,55;12.2,135.2,80;13.5,129.7,90;15.6,126.4,90];
my_wpac_2024_073 = [14.2,146.6,50;13.1,141.3,55;12.7,135.0,75;14.0,129.2,80;16.2,125.7,70];
btk_wpac_2024_073 = [13.0,145.0,45;11.6,139.5,40;10.4,133.6,60;12.0,127.8,115;14.3,123.8,120];
nhcvect = [nhcvect;nhc_wpac_2024_073];
myvect = [myvect;my_wpac_2024_073];
btkvect = [btkvect;btk_wpac_2024_073];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 074 ... USAGI/(OFEL) around 2024-11-12-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1856256401804333058

nhc_wpac_2024_074 = [15.9,126.4,80;18.3,122.3,100;20.9,120.6,85;22.8,121.7,60];
my_wpac_2024_074 = [15.7,126.4,70;18.1,122.1,95;20.7,120.3,80;21.8,119.9,50];
btk_wpac_2024_074 = [15.6,126.5,75;17.9,122.1,115;21.1,119.4,45;22.2,120.6,25];
nhcvect = [nhcvect;nhc_wpac_2024_074];
myvect = [myvect;my_wpac_2024_074];
btkvect = [btkvect;btk_wpac_2024_074];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Wpac 075 ... MAN-YI around 2024-11-12-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1856260699841876053

nhc_wpac_2024_075 = [13.5,142.9,45;12.7,136.8,60;13.3,131.0,90;15.2,126.6,100;17.3,123.9,90];
my_wpac_2024_075 = [13.4,143.2,40;12.2,137.1,60;12.8,130.8,85;14.6,125.8,100;17.0,123.1,75];
btk_wpac_2024_075 = [12.3,142.6,35;10.6,136.6,50;10.9,130.4,90;13.2,125.6,140;15.8,121.9,130];
nhcvect = [nhcvect;nhc_wpac_2024_075];
myvect = [myvect;my_wpac_2024_075];
btkvect = [btkvect;btk_wpac_2024_075];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Wpac 076 ... USAGI/(OFEL) around 2024-11-14-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1856893256140796261

nhc_wpac_2024_076 = [20.2,120.6,95;21.9,121.0,75];
my_wpac_2024_076 = [20.2,120.2,85;21.9,120.3,75];
btk_wpac_2024_076 = [20.5,120.1,65;22.4,120.3,30];
nhcvect = [nhcvect;nhc_wpac_2024_076];
myvect = [myvect;my_wpac_2024_076];
btkvect = [btkvect;btk_wpac_2024_076];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Wpac 077 ... MAN-YI around 2024-11-14-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1856893911408533835

nhc_wpac_2024_077 = [11.1,131.5,85;12.8,126.4,125;15.1,122.4,110;17.6,117.9,65;18.5,114.1,60];
my_wpac_2024_077 = [11.0,131.9,70;12.8,126.5,110;15.4,122.9,100;17.9,118.4,60;18.3,114.0,50];
btk_wpac_2024_077 = [10.5,131.9,75;12.5,126.7,135;15.0,122.9,125;18.0,118.1,65;18.9,114.1,45];
nhcvect = [nhcvect;nhc_wpac_2024_077];
myvect = [myvect;my_wpac_2024_077];
btkvect = [btkvect;btk_wpac_2024_077];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Atl 161 ... 19L around 2024-11-14-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1856899017705128248
# NHC at https://www.nhc.noaa.gov/archive/2024/al19/al192024.discus.002.shtml?

nhc_atl_2024_161 = [16.2,83.8,35;16.2,85.1,55;15.9,85.1,60;16.6,86.6,60];
my_atl_2024_161 = [16.1,83.7,35;16.2,85.1,50;16.2,85.4,55;17.3,86.6,55];
btk_atl_2024_161 = [15.8,84.0,35;16.2,86.3,45;16.4,87.1,35;18.0,90.2,25];
nhcvect = [nhcvect;nhc_atl_2024_161];
myvect = [myvect;my_atl_2024_161];
btkvect = [btkvect;btk_atl_2024_161];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Wpac 078 ... MAN-YI around 2024-11-14-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1856978182995431537

nhc_wpac_2024_078 = [11.0,130.6,85;12.9,125.8,125;15.3,121.7,110;17.3,117.4,75;18.3,113.5,55];
my_wpac_2024_078 = [11.0,130.7,85;13.1,126.0,125;15.6,122.2,105;17.8,117.3,65;18.4,113.1,45];
btk_wpac_2024_078 = [10.9,130.4,90;13.2,125.6,140;15.8,121.9,130;18.4,116.9,55;18.8,113.0,30];
nhcvect = [nhcvect;nhc_wpac_2024_078];
myvect = [myvect;my_wpac_2024_078];
btkvect = [btkvect;btk_wpac_2024_078];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Atl 162 ... 19L around 2024-11-14-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1856985514173178327
# NHC at https://www.nhc.noaa.gov/archive/2024/al19/al192024.discus.003.shtml?

nhc_atl_2024_162 = [16.0,84.4,40;15.9,85.3,55;15.9,85.8,50;17.1,87.8,55];
my_atl_2024_162 = [15.9,84.3,40;15.9,85.1,50;16.1,85.6,50;17.6,87.9,50];
btk_atl_2024_162 = [16.0,85.0,40;16.1,86.3,40;16.6,87.5,35;18.5,91.1,25];
nhcvect = [nhcvect;nhc_atl_2024_162];
myvect = [myvect;my_atl_2024_162];
btkvect = [btkvect;btk_atl_2024_162];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;1;1;1;1];

# Wpac 079 ... MAN-YI/(PEPITO) around 2024-11-14-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1857163731618164842

nhc_wpac_2024_079 = [11.9,128.0,100;14.1,124.0,125;16.6,119.6,70;18.0,115.7,60;17.9,112.3,40];
my_wpac_2024_079 = [11.9,127.9,95;14.1,123.8,120;16.9,119.6,95;18.3,115.3,50;17.9,111.8,35];
btk_wpac_2024_079 = [12.0,127.8,115;14.3,123.8,120;17.6,119.4,75;18.5,115.2,50;17.4,111.1,25];
nhcvect = [nhcvect;nhc_wpac_2024_079];
myvect = [myvect;my_wpac_2024_079];
btkvect = [btkvect;btk_wpac_2024_079];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Atl 163 ... SARA around 2024-11-14-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1857168023481696264
# NHC at https://www.nhc.noaa.gov/archive/2024/al19/al192024.discus.005.shtml?

nhc_atl_2024_163 = [16.1,85.5,45;16.1,86.4,45;16.7,88.1,45];
my_atl_2024_163 = [16.1,85.6,45;16.2,86.2,45;16.9,88.3,45];
btk_atl_2024_163 = [16.1,86.1,45;16.3,86.8,40;17.4,89.0,30];
nhcvect = [nhcvect;nhc_atl_2024_163];
myvect = [myvect;my_atl_2024_163];
btkvect = [btkvect;btk_atl_2024_163];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;1;1;1];

# Wpac 080 ... MAN-YI/(PEPITO) around 2024-11-15-15Z ... certified?
# my at https://x.com/elioeFIN/status/1857438685588816139

nhc_wpac_2024_080 = [13.6,124.5,125;16.1,120.3,85;18.1,116.0,65;18.1,112.5,45];
my_wpac_2024_080 = [13.8,124.9,130;16.2,121.0,85;18.5,116.7,60;18.2,113.5,40];
btk_wpac_2024_080 = [13.9,124.6,130;16.6,120.7,90;18.5,115.9,55;18.1,112.1,25];
nhcvect = [nhcvect;nhc_wpac_2024_080];
myvect = [myvect;my_wpac_2024_080];
btkvect = [btkvect;btk_wpac_2024_080];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Wpac 081 ... MAN-YI/(PEPITO) around 2024-11-16-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1857615909961036258

nhc_wpac_2024_081 = [14.8,122.7,120;17.7,118.2,60;18.6,114.4,55];
my_wpac_2024_081 = [14.8,122.8,120;18.1,118.4,60;18.9,114.5,55];
btk_wpac_2024_081 = [15.0,122.9,125;18.0,118.1,65;18.9,114.1,45];
nhcvect = [nhcvect;nhc_wpac_2024_081];
myvect = [myvect;my_wpac_2024_081];
btkvect = [btkvect;btk_wpac_2024_081];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Atl 164 ... SARA around 2024-11-16-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1857621294600130790
# NHC at https://www.nhc.noaa.gov/archive/2024/al19/al192024.discus.010.shtml?

nhc_atl_2024_164 = [16.6,87.3,45;17.7,90.0,30];
my_atl_2024_164 = [16.4,87.2,45;17.4,90.3,30];
btk_atl_2024_164 = [16.4,87.1,35;18.0,90.2,25];
nhcvect = [nhcvect;nhc_atl_2024_164];
myvect = [myvect;my_atl_2024_164];
btkvect = [btkvect;btk_atl_2024_164];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Wpac 082 ... MAN-YI/(PEPITO) around 2024-11-16-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1857704045005226297

nhc_wpac_2024_082 = [15.6,121.5,120;18.3,116.8,65;19.2,113.8,50];
my_wpac_2024_082 = [15.4,121.5,110;18.5,116.7,65;18.6,113.1,50];
btk_wpac_2024_082 = [15.8,121.9,130;18.4,116.9,55;18.8,113.0,30];
nhcvect = [nhcvect;nhc_wpac_2024_082];
myvect = [myvect;my_wpac_2024_082];
btkvect = [btkvect;btk_wpac_2024_082];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Atl 165 ... SARA around 2024-11-16-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1857709077251416411
# NHC at https://www.nhc.noaa.gov/archive/2024/al19/al192024.discus.011.shtml?

nhc_atl_2024_165 = [16.7,87.6,45;18.6,90.8,30];
my_atl_2024_165 = [16.6,87.5,45;18.8,91.0,25];
btk_atl_2024_165 = [16.6,87.5,35;18.5,91.1,25];
nhcvect = [nhcvect;nhc_atl_2024_165];
myvect = [myvect;my_atl_2024_165];
btkvect = [btkvect;btk_atl_2024_165];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;1;1];

# Atl 166 ... SARA around 2024-11-16-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1857892096524562862
# NHC at https://www.nhc.noaa.gov/archive/2024/al19/al192024.discus.013.shtml?

nhc_atl_2024_166 = [17.1,88.9,30];
my_atl_2024_166 = [17.0,88.9,30];
btk_atl_2024_166 = [17.4,89.0,30];
nhcvect = [nhcvect;nhc_atl_2024_166];
myvect = [myvect;my_atl_2024_166];
btkvect = [btkvect;btk_atl_2024_166];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;1];

# Shem 001 ... BHEKI around 2024-11-17-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1858256798685237384

nhc_shem_2025_001 = [17.6,68.0,70;18.2,63.6,45;19.3,58.3,35;20.9,54.4,30];
my_shem_2025_001 = [17.7,68.4,70;18.4,64.3,40;19.5,59.2,35;20.4,54.8,30];
btk_shem_2025_001 = [17.6,68.5,75;18.4,65.5,65;19.6,59.7,35;22.1,56.0,40];
nhcvect = [nhcvect;nhc_shem_2025_001];
myvect = [myvect;my_shem_2025_001];
btkvect = [btkvect;btk_shem_2025_001];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 002 ... 92S around 2024-12-08-15Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1865780647530291694
# (no JTWC forecast)

# Shem 003 ... 04 / 04S around 2024-12-09-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1866223476450717912

nhc_shem_2025_003 = [10.5,60.1,50;10.7,57.6,60;11.6,54.0,60;12.3,49.9,50;12.9,46.3,35];
my_shem_2025_003 = [10.6,59.9,50;10.6,57.3,55;11.6,53.4,65;12.0,49.6,50;13.2,46.4,35];
btk_shem_2025_003 = [10.5,59.8,60;10.4,56.7,120;10.9,52.2,125;11.9,47.5,110;13.2,42.8,115];
nhcvect = [nhcvect;nhc_shem_2025_003];
myvect = [myvect;my_shem_2025_003];
btkvect = [btkvect;btk_shem_2025_003];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 004 ... CHIDO around 2024-12-10-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1866402135497154651

nhc_shem_2025_004 = [10.3,58.3,65;10.8,54.7,80;11.6,50.8,60;12.8,46.7,45;13.7,42.2,35];
my_shem_2025_004 = [10.4,57.7,65;10.6,54.1,90;11.8,50.1,60;12.8,46.4,50;13.7,41.8,35];
btk_shem_2025_004 = [10.5,58.4,75;10.7,54.5,135;11.1,49.9,105;12.6,45.4,115;13.3,40.1,100];
nhcvect = [nhcvect;nhc_shem_2025_004];
myvect = [myvect;my_shem_2025_004];
btkvect = [btkvect;btk_shem_2025_004];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 005 ... CHIDO around 2024-12-10-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1866598116054446167

nhc_shem_2025_005 = [10.6,56.6,90;11.3,52.6,95;12.4,48.7,65;13.7,44.4,60;15.1,40.2,40];
my_shem_2025_005 = [10.5,56.7,90;11.2,52.8,90;12.8,48.6,55;14.0,44.2,55;14.8,40.3,35];
btk_shem_2025_005 = [10.4,56.7,120;10.9,52.2,125;11.9,47.5,110;13.2,42.8,115;14.0,37.2,50];
nhcvect = [nhcvect;nhc_shem_2025_005];
myvect = [myvect;my_shem_2025_005];
btkvect = [btkvect;btk_shem_2025_005];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 006 ... CHIDO around 2024-12-12-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1867130890062852515

nhc_shem_2025_006 = [11.2,50.6,110;12.6,46.0,95;13.5,41.6,60;15.1,37.3,30];
my_shem_2025_006 = [10.9,50.2,110;12.3,45.8,85;13.5,41.5,60;14.7,37.2,25];
btk_shem_2025_006 = [11.1,49.9,105;12.6,45.4,115;13.3,40.1,100;15.1,34.9,25];
nhcvect = [nhcvect;nhc_shem_2025_006];
myvect = [myvect;my_shem_2025_006];
btkvect = [btkvect;btk_shem_2025_006];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 007 ... CHIDO around 2024-12-12-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1867308161771921454

nhc_shem_2025_007 = [11.6,48.4,115;12.9,43.6,105;13.6,38.5,65;15.4,33.3,30];
my_shem_2025_007 = [11.5,48.0,105;12.7,43.5,100;13.6,38.6,50;15.9,33.4,25];
btk_shem_2025_007 = [11.9,47.5,110;13.2,42.8,115;14.0,37.2,50;16.6,33.0,20];
nhcvect = [nhcvect;nhc_shem_2025_007];
myvect = [myvect;my_shem_2025_007];
btkvect = [btkvect;btk_shem_2025_007];
leadtimevect = [leadtimevect;1;2;3;4];
basinvect = [basinvect;3;3;3;3];

# Shem 008 ... CHIDO around 2024-12-14-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1868037924262166768

nhc_shem_2025_008 = [14.1,37.7,40];
my_shem_2025_008 = [13.8,37.5,35];
btk_shem_2025_008 = [14.0,37.2,50];
nhcvect = [nhcvect;nhc_shem_2025_008];
myvect = [myvect;my_shem_2025_008];
btkvect = [btkvect;btk_shem_2025_008];
leadtimevect = [leadtimevect;1];
basinvect = [basinvect;3];

# Wpac 083 ... 28W/(ROMINA) around 2024-12-23-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1871023978669867456

nhc_wpac_2024_083 = [11.3,111.3,35;10.9,109.5,25;9.7,106.5,20];
my_wpac_2024_083 = [11.4,111.2,35;11.1,109.4,25;10.2,105.9,20];
btk_wpac_2024_083 = [11.5,112.3,30;10.6,110.7,25;8.8,108.3,25];
nhcvect = [nhcvect;nhc_wpac_2024_083];
myvect = [myvect;my_wpac_2024_083];
btkvect = [btkvect;btk_wpac_2024_083];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Wpac 084 ... PABUK/(ROMINA) around 2024-12-23-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1871114330886009136

nhc_wpac_2024_084 = [11.1,111.3,35;10.6,109.4,20];
my_wpac_2024_084 = [10.9,111.3,30;11.2,109.0,20];
btk_wpac_2024_084 = [11.8,111.9,30;9.6,110.3,25];
nhcvect = [nhcvect;nhc_wpac_2024_084];
myvect = [myvect;my_wpac_2024_084];
btkvect = [btkvect;btk_wpac_2024_084];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Wpac 085 ... PABUK/(ROMINA) around 2024-12-23-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1871294525706244352

nhc_wpac_2024_085 = [11.4,110.6,30;11.1,107.4,15];
my_wpac_2024_085 = [10.8,110.7,25;10.8,107.5,15];
btk_wpac_2024_085 = [11.1,111.2,30;8.7,109.3,20];
nhcvect = [nhcvect;nhc_wpac_2024_085];
myvect = [myvect;my_wpac_2024_085];
btkvect = [btkvect;btk_wpac_2024_085];
leadtimevect = [leadtimevect;1;2];
basinvect = [basinvect;3;3];

# Shem 009 ... 05 / 94S around 2025-01-07-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1876742336492781644
# (no JTWC forecast)

# Shem 010 ... 05 / 94S around 2025-01-08-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1877094960375185777
# (no JTWC forecast)

# Shem 011 ... DIKELEDI around 2025-01-09-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1877461415830651142

nhc_shem_2025_011 = [13.0,54.5,60;12.4,49.2,60;13.6,44.7,60;15.3,41.7,60;17.7,40.6,60];
my_shem_2025_011 = [13.2,54.1,65;13.0,48.9,50;14.2,44.3,50;16.4,40.7,60;19.3,39.6,65];
btk_shem_2025_011 = [13.3,54.2,55;12.9,49.0,75;14.3,43.5,70;15.5,40.2,70;18.9,39.8,60];
nhcvect = [nhcvect;nhc_shem_2025_011];
myvect = [myvect;my_shem_2025_011];
btkvect = [btkvect;btk_shem_2025_011];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 012 ... DIKELEDI around 2025-01-10-09Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1877643754028388396

nhc_shem_2025_012 = [12.6,51.5,65;13.1,46.7,50;15.0,43.0,55;17.6,40.8,60;21.6,40.5,65];
my_shem_2025_012 = [12.8,51.3,75;13.6,46.4,50;15.1,42.3,50;17.6,40.2,55;21.3,38.7,70];
btk_shem_2025_012 = [12.6,51.7,80;13.6,46.2,65;14.9,41.1,80;16.8,39.9,55;21.7,41.1,70];
nhcvect = [nhcvect;nhc_shem_2025_012];
myvect = [myvect;my_shem_2025_012];
btkvect = [btkvect;btk_shem_2025_012];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 013 ... DIKELEDI around 2025-01-10-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1877816725149741138

nhc_shem_2025_013 = [12.8,49.3,60;14.3,45.0,60;16.4,42.7,70;19.5,41.7,70;24.1,42.8,60];
my_shem_2025_013 = [12.6,49.3,60;14.3,44.7,55;16.3,41.4,60;19.2,39.9,65;22.9,41.2,75];
btk_shem_2025_013 = [12.9,49.0,75;14.3,43.5,70;15.5,40.2,70;18.9,39.8,60;25.7,42.3,90];
nhcvect = [nhcvect;nhc_shem_2025_013];
myvect = [myvect;my_shem_2025_013];
btkvect = [btkvect;btk_shem_2025_013];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 014 ... DIKELEDI around 2025-01-11-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1878187136509215027

nhc_shem_2025_014 = [14.3,44.7,80;16.3,42.2,100;19.5,41.5,105;23.7,42.7,95;28.3,45.9,70];
my_shem_2025_014 = [14.5,44.3,70;16.5,41.5,95;19.6,49.0,95;23.7,42.2,95;28.5,45.3,85];
btk_shem_2025_014 = [14.3,43.5,70;15.5,40.2,70;18.9,39.8,60;25.7,42.3,90;32.2,49.0,75];
nhcvect = [nhcvect;nhc_shem_2025_014];
myvect = [myvect;my_shem_2025_014];
btkvect = [btkvect;btk_shem_2025_014];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 015 ... DIKELEDI around 2025-01-12-09Z ... certification failed?
# my at https://x.com/elioeFIN/status/1878359736367927769

nhc_shem_2025_015 = [15.3,42.4,75;17.6,40.3,95;21.1,40.6,100;26.1,42.8,90;29.8,46.9,65];
my_shem_2025_015 = [15.5,42.0,75;17.8,40.2,110;21.2,40.6,100;25.9,43.1,90;28.7,45.8,60];
btk_shem_2025_015 = [14.9,41.1,80;16.8,39.9,55;21.7,41.1,70;28.9,44.7,100;33.7,54.8,50];
nhcvect = [nhcvect;nhc_shem_2025_015];
myvect = [myvect;my_shem_2025_015];
btkvect = [btkvect;btk_shem_2025_015];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 016 ... DIKELEDI around 2025-01-12-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1878554190848426100

nhc_shem_2025_016 = [16.1,40.8,90;19.3,40.1,95;24.0,41.4,90;28.3,44.9,85;32.0,51.4,70];
my_shem_2025_016 = [15.9,40.6,85;19.2,40.3,80;23.6,41.9,90;28.3,44.9,85;31.2,47.5,65];
btk_shem_2025_016 = [15.5,40.2,70;18.9,39.8,60;25.7,42.3,90;32.2,49.0,75;35.0,61.9,45];
nhcvect = [nhcvect;nhc_shem_2025_016];
myvect = [myvect;my_shem_2025_016];
btkvect = [btkvect;btk_shem_2025_016];
leadtimevect = [leadtimevect;1;2;3;4;5];
basinvect = [basinvect;3;3;3;3;3];

# Shem 017 ... DIKELEDI around 2025-01-14-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1879266738690457747

nhc_shem_2025_017 = [24.5,41.8,70;29.6,47.5,70;32.0,55.9,50];
my_shem_2025_017 = [24.6,41.8,80;29.4,46.7,75;31.7,54.3,45];
btk_shem_2025_017 = [25.7,42.3,90;32.2,49.0,75;35.0,61.9,45];
nhcvect = [nhcvect;nhc_shem_2025_017];
myvect = [myvect;my_shem_2025_017];
btkvect = [btkvect;btk_shem_2025_017];
leadtimevect = [leadtimevect;1;2;3];
basinvect = [basinvect;3;3;3];

# Shem 018 ... 11U/10S around 2025-01-18-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1880726773799014539

nhc_shem_2025_018 = [];
my_shem_2025_018 = [];
btk_shem_2025_018 = [];
nhcvect = [nhcvect;nhc_shem_2025_018];
myvect = [myvect;my_shem_2025_018];
btkvect = [btkvect;btk_shem_2025_018];
leadtimevect = [leadtimevect;];
basinvect = [basinvect;];

# Shem 019 ... SEAN around 2025-01-19-21Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1881077967402795423

nhc_shem_2025_019 = [];
my_shem_2025_019 = [];
btk_shem_2025_019 = [];
nhcvect = [nhcvect;nhc_shem_2025_019];
myvect = [myvect;my_shem_2025_019];
btkvect = [btkvect;btk_shem_2025_019];
leadtimevect = [leadtimevect;];
basinvect = [basinvect;];

# Shem 020 ... SEAN around 2025-01-20-03Z ... CERTIFIED
# my at https://x.com/elioeFIN/status/1881167865430282637

nhc_shem_2025_020 = [];
my_shem_2025_020 = [];
btk_shem_2025_020 = [];
nhcvect = [nhcvect;nhc_shem_2025_020];
myvect = [myvect;my_shem_2025_020];
btkvect = [btkvect;btk_shem_2025_020];
leadtimevect = [leadtimevect;];
basinvect = [basinvect;];



##
##
## IN TOTAL

nhc3d = 12756/1.852/2*[ cos(nhcvect(:,1)/180*pi).*cos(nhcvect(:,2)/180*pi) , cos(nhcvect(:,1)/180*pi).*sin(nhcvect(:,2)/180*pi) , sin(nhcvect(:,1)/180*pi) ];
my3d = 12756/1.852/2*[ cos(myvect(:,1)/180*pi).*cos(myvect(:,2)/180*pi) , cos(myvect(:,1)/180*pi).*sin(myvect(:,2)/180*pi) , sin(myvect(:,1)/180*pi) ];
btk3d = 12756/1.852/2*[ cos(btkvect(:,1)/180*pi).*cos(btkvect(:,2)/180*pi) , cos(btkvect(:,1)/180*pi).*sin(btkvect(:,2)/180*pi) , sin(btkvect(:,1)/180*pi) ];

nhcposerror = sqrt( (nhc3d(:,1)-btk3d(:,1)).^2 + (nhc3d(:,2)-btk3d(:,2)).^2 + (nhc3d(:,3)-btk3d(:,3)).^2 );
myposerror = sqrt( (my3d(:,1)-btk3d(:,1)).^2 + (my3d(:,2)-btk3d(:,2)).^2 + (my3d(:,3)-btk3d(:,3)).^2 );
ourposdiff = sqrt( (nhc3d(:,1)-my3d(:,1)).^2 + (nhc3d(:,2)-my3d(:,2)).^2 + (nhc3d(:,3)-my3d(:,3)).^2 );
nhcinterror = abs( nhcvect(:,3)-btkvect(:,3) );
myinterror = abs( myvect(:,3)-btkvect(:,3) );
ourintdiff = abs( nhcvect(:,3)-myvect(:,3) );

j = 3; # change this to match to basin in which you want error comparison

[sum(myposerror.*(leadtimevect==1).*(basinvect==j))/sum(nhcposerror.*(leadtimevect==1).*(basinvect==j)) , sum(myinterror.*(leadtimevect==1).*(basinvect==j))/sum(nhcinterror.*(leadtimevect==1).*(basinvect==j)) , sum((leadtimevect==1).*(basinvect==j))]
[sum(myposerror.*(leadtimevect==2).*(basinvect==j))/sum(nhcposerror.*(leadtimevect==2).*(basinvect==j)) , sum(myinterror.*(leadtimevect==2).*(basinvect==j))/sum(nhcinterror.*(leadtimevect==2).*(basinvect==j)) , sum((leadtimevect==2).*(basinvect==j))]
[sum(myposerror.*(leadtimevect==3).*(basinvect==j))/sum(nhcposerror.*(leadtimevect==3).*(basinvect==j)) , sum(myinterror.*(leadtimevect==3).*(basinvect==j))/sum(nhcinterror.*(leadtimevect==3).*(basinvect==j)) , sum((leadtimevect==3).*(basinvect==j))]
[sum(myposerror.*(leadtimevect==4).*(basinvect==j))/sum(nhcposerror.*(leadtimevect==4).*(basinvect==j)) , sum(myinterror.*(leadtimevect==4).*(basinvect==j))/sum(nhcinterror.*(leadtimevect==4).*(basinvect==j)) , sum((leadtimevect==4).*(basinvect==j))]
[sum(myposerror.*(leadtimevect==5).*(basinvect==j))/sum(nhcposerror.*(leadtimevect==5).*(basinvect==j)) , sum(myinterror.*(leadtimevect==5).*(basinvect==j))/sum(nhcinterror.*(leadtimevect==5).*(basinvect==j)) , sum((leadtimevect==5).*(basinvect==j))]
