# The following systems aren't recognized by NHC but probably were (sub)tropical cyclones
# give value 1 if you want to include such a system in totals, otherwise 0

x1 = 0; # Invest 92L (June 2024)
x2 = 0; # Invest 96L (September 2024)
x3 = 0; # AOI W of Portugal (August 2026)

# In the "aoiactual" vector, I will give 0 if a S(TC) doesn't form, 1 if a S(TC) forms within 16 days at least near the denoted area 
# (I'm not comparing coordinates to these graphics with resolution of 1 px or 0.1 degrees)
# But if the system forms within 16 days somewhere clearly elsewhere than in denoted area, I will give value 0.5 

fcst = [];
climo = [];
actual = [];

aoifcst = [];
aoiactual = [];

# 2024-06-07-00Z thru 2024-06-22-18Z
# https://x.com/elioeFIN/status/1798828272207425798
# System 2 = Alberto , Systems 1,3,4 ghosts , Invest 92L potential miss

fcst = [fcst;1.4];
climo = [climo;0.47];
actual = [actual;1+x1];

aoifcst = [aoifcst;0.4;0.4;0.2;0.1;0];
aoiactual = [aoiactual;0;1;0;0;x1];

# 2024-06-11-00Z thru 2024-06-26-18Z
# https://x.com/elioeFIN/status/1800285769057136746
# System 1 = Alberto , Systems 2,3,4 ghosts , Invest 92L potential miss

fcst = [fcst;1.5];
climo = [climo;0.50];
actual = [actual;1+x1];

aoifcst = [aoifcst;0.2;0.5;0.2;0.1;0];
aoiactual = [aoiactual;1;0;0;0;x1];

# 2024-06-14-06Z thru 2024-06-30-00Z
# https://x.com/elioeFIN/status/1801453257400684899
# System 2 = Alberto , System 6 = Beryl , Invest 92L potential miss
# Systems 1,3,5 ghosts
# System 4 = Chris but it formed beyond fcst period and outside denoted area

fcst = [fcst;2.2];
climo = [climo;0.53];
actual = [actual;2+x1];

aoifcst = [aoifcst;0.2;0.6;0.5;0.2;0.1;0.2;0];
aoiactual = [aoiactual;0;1;0;0;0;1;x1];

# 2024-06-16-00Z thru 2024-07-01-18Z
# https://x.com/elioeFIN/status/1802064542697992344
# System 1 = Alberto , System 4 = Chris , System 5 = Invest 92L , System 8 = Beryl
# Systems 2,3,6,7 ghosts

fcst = [fcst;2.4];
climo = [climo;0.60];
actual = [actual;3+x1];

aoifcst = [aoifcst;0.5;0.6;0.2;0.2;0.2;0.1;0.2;0.1];
aoiactual = [aoiactual;1;0;0;1;x1;0;0;1];

# 2024-06-17-06Z thru 2024-07-03-00Z
# https://x.com/elioeFIN/status/1802522959963402301
# System 1 = Alberto , System 4 = Chris , System 5 = Invest 92L , System 6 = Beryl
# Systems 2,3 ghosts

fcst = [fcst;2.6];
climo = [climo;0.63];
actual = [actual;3+x1];

aoifcst = [aoifcst;0.8;0.5;0.3;0.1;0.3;0.2];
aoiactual = [aoiactual;1;0;0;1;x1;1];

# 2024-06-21-06Z thru 2024-07-07-00Z
# https://x.com/elioeFIN/status/1803991419293737098
# System 4 = Invest 92L , Systems 1,2,6,7 ghosts
# System 3 = Chris and System 5 = Beryl, but formed clearly outside denoted area

fcst = [fcst;2.6];
climo = [climo;0.73];
actual = [actual;2+x1];

aoifcst = [aoifcst;0.7;0.1;0.3;0.7;0.1;0.1;0.3];
aoiactual = [aoiactual;0;0;0.5;x1;0.5;0;0];

# 2024-06-23-00Z thru 2024-07-08-18Z
# https://x.com/elioeFIN/status/1804633827932848477
# System 2 = Chris , Systems 1,4,5,6,7 ghosts
# System 3 = Beryl , but formed clearly outside denoted area

fcst = [fcst;1.9];
climo = [climo;0.80];
actual = [actual;2];

aoifcst = [aoifcst;0.4;0.4;0.1;0.2;0.2;0.2;0.1];
aoiactual = [aoiactual;0;1;0.5;0;0;0;0];

# 2024-06-24-06Z thru 2024-07-10-00Z
# https://x.com/elioeFIN/status/1805059378380198184
# System 1 = Chris , System 4 = Beryl , Systems 2,3,5 ghosts

fcst = [fcst;1.5];
climo = [climo;0.77];
actual = [actual;2];

aoifcst = [aoifcst;0.3;0.3;0.1;0.1;0.2];
aoiactual = [aoiactual;1;0;0;1;0];

# 2024-06-26-06Z thru 2024-07-12-00Z
# https://x.com/elioeFIN/status/1805814405440872948
# System 1 = Chris , System 2 = Beryl , Systems 3,4,5 ghosts

fcst = [fcst;2.0];
climo = [climo;0.87];
actual = [actual;2];

aoifcst = [aoifcst;0.2;0.7;0.2;0.3;0.1];
aoiactual = [aoiactual;1;1;0;0;0];

# 2024-06-28-06Z thru 2024-07-14-00Z
# https://x.com/elioeFIN/status/1806526037972439054
# System 1 = Chris , System 6 = Beryl , Systems 2,3,4,5 ghosts

fcst = [fcst;2.3];
climo = [climo;0.93];
actual = [actual;2];

aoifcst = [aoifcst;0.3;0.2;0.2;0.2;0.1;0.9];
aoiactual = [aoiactual;1;0;0;0;0;1];

# 2024-06-30-06Z thru 2024-07-16-00Z
# https://x.com/elioeFIN/status/1807224065762930988
# System 1 = Chris , Systems 2,3,4,5 ghosts

fcst = [fcst;2.2];
climo = [climo;0.87];
actual = [actual;1];

aoifcst = [aoifcst;0.6;0.1;0.7;0.2;0.3];
aoiactual = [aoiactual;1;0;0;0;0];

# 2024-07-12-18Z thru 2024-07-28-12Z
# https://x.com/elioeFIN/status/1811812797443146123
# Systems 1,2,3,4,5,6 ghosts

fcst = [fcst;0.9];
climo = [climo;1.03];
actual = [actual;0];

aoifcst = [aoifcst;0.1;0.1;0.1;0.1;0.2;0.1];
aoiactual = [aoiactual;0;0;0;0;0;0];

# 2024-07-16-00Z thru 2024-07-31-18Z
# https://x.com/elioeFIN/status/1812944581404860724
# Systems 1,2,3,4 ghosts

fcst = [fcst;0.8];
climo = [climo;1.20];
actual = [actual;0];

aoifcst = [aoifcst;0.1;0.1;0.1;0.1];
aoiactual = [aoiactual;0;0;0;0];

# 2024-07-19-06Z thru 2024-08-04-00Z
# https://x.com/elioeFIN/status/1814108359353598357
# System 1 = Debby , System 2 ghost

fcst = [fcst;0.5];
climo = [climo;1.30];
actual = [actual;1];

aoifcst = [aoifcst;0.1;0.1];
aoiactual = [aoiactual;1;0];

# 2024-07-27-00Z thru 2024-08-11-18Z
# https://x.com/elioeFIN/status/1816962336218837076
# System 2 = Debby , System 1 ghost
# System 3 = Ernesto, but formed beyond fcst period and outside denoted area

fcst = [fcst;1.2];
climo = [climo;1.23];
actual = [actual;1];

aoifcst = [aoifcst;0.1;0.3;0.3];
aoiactual = [aoiactual;0;1;0];

# 2024-07-28-00Z thru 2024-08-12-18Z
# https://x.com/elioeFIN/status/1817318232321093704
# System 1 = Debby , System 2 = Ernesto

fcst = [fcst;1.4];
climo = [climo;1.27];
actual = [actual;2];

aoifcst = [aoifcst;0.6;0.3];
aoiactual = [aoiactual;1;1];

# 2024-08-01-06Z thru 2024-08-17-00Z
# https://x.com/elioeFIN/status/1818870976408367391
# System 4 = Ernesto , Systems 2,3,5 ghosts
# System 1 = Debby , but formed outside denoted area

fcst = [fcst;1.6];
climo = [climo;1.70];
actual = [actual;2];

aoifcst = [aoifcst;0.7;0.2;0.1;0.1;0.1];
aoiactual = [aoiactual;0.5;0;0;1;0];

# 2024-08-30-18Z thru 2024-09-15-12Z
# https://x.com/elioeFIN/status/1829506749872898422
# System 1 = Francine , System 3 = Gordon , System 2 ghost

fcst = [fcst;2.2];
climo = [climo;2.90];
actual = [actual;2];

aoifcst = [aoifcst;0.7;0.1;0.7];
aoiactual = [aoiactual;1;0;1];

# 2024-08-31-18Z thru 2024-09-16-12Z
# https://x.com/elioeFIN/status/1829869331079184414
# System 2 = Francine , System 5 = Gordon
# Systems 1,3,4 ghosts

fcst = [fcst;2.4];
climo = [climo;2.93];
actual = [actual;2];

aoifcst = [aoifcst;0.2;0.7;0.2;0.1;0.5];
aoiactual = [aoiactual;0;1;0;0;1];

# 2024-09-05-12Z thru 2024-09-21-06Z
# https://x.com/elioeFIN/status/1831642918223777931
# System 1 = Francine , System 8 = Gordon
# Systems 2,3,4,5,6,7 ghosts

fcst = [fcst;2.7];
climo = [climo;2.77];
actual = [actual;2];

aoifcst = [aoifcst;0.3;0.1;0.2;0.2;0.2;0.5;0.2;0.5];
aoiactual = [aoiactual;1;0;0;0;0;0;0;1];

# 2024-09-16-00Z thru 2024-10-01-18Z
# https://x.com/elioeFIN/status/1835453272498331840
# System 2 = Helene, System 5 = Kirk, System 6 = Joyce
# Isaac was missed. System 4 = Invest 96L. System 1 ghost
# System 7 = Leslie but formed beyond fcst period
# System 3 = Milton but formed beyond fcst period and outside denoted area

fcst = [fcst;3.0];
climo = [climo;2.23];
actual = [actual;4+x2];

aoifcst = [aoifcst;0.7;0.5;0.2;0.2;0.3;0.2;0.1;0];
aoiactual = [aoiactual;0;1;0;x2;1;1;0;1];

# 2024-09-20-18Z thru 2024-10-06-12Z
# https://x.com/elioeFIN/status/1837142490022826093
# System 1 = Helene , System 6 = Joyce , System 7 = Kirk
# System 2 = Milton but formed clearly outside denoted area
# Isaac and Leslie were missed. System 3 = Invest 96L. Systems 4,5 ghosts

fcst = [fcst;3.6];
climo = [climo;2.33];
actual = [actual;6+x2];

aoifcst = [aoifcst;0.6;0.5;0.3;0.5;0.3;0.4;0.5;0;0];
aoiactual = [aoiactual;1;0.5;x2;0;0;1;1;1;1];

# 2024-10-17-00Z thru 2024-11-01-18Z
# https://x.com/elioeFIN/status/1846642751456366927
# System 1 = Nadine , System 3 = Oscar
# System 2 = Rafael but formed beyond fcst period
# Patty was missed

fcst = [fcst;1.6];
climo = [climo;1.10];
actual = [actual;3];

aoifcst = [aoifcst;0.3;0.5;0.4;0];
aoiactual = [aoiactual;1;0;1;1];

# 2024-10-18-18Z thru 2024-11-03-12Z
# https://x.com/elioeFIN/status/1847258835603398921
# System 2 = Nadine , System 4 = Oscar
# Systems 1,3 ghosts. Patty was missed

fcst = [fcst;1.7];
climo = [climo;1.07];
actual = [actual;3];

aoifcst = [aoifcst;0.3;0.6;0.3;0.1;0];
aoiactual = [aoiactual;0;1;0;1;1];

# 2024-10-31-12Z thru 2024-11-16-06Z
# https://x.com/elioeFIN/status/1851929655458050240
# System 1 = Rafael , System 2 = Sara , System 3 = Patty

fcst = [fcst;1.5];
climo = [climo;0.40];
actual = [actual;3];

aoifcst = [aoifcst;0.7;0.4;0.2];
aoiactual = [aoiactual;1;1;1];

# 2024-11-02-00Z thru 2024-11-17-18Z
# https://x.com/elioeFIN/status/1852432334295073209
# System 1 = Rafael , System 2 = Sara , System 5 = Patty
# Systems 3,4 ghosts

fcst = [fcst;2.2];
climo = [climo;0.37];
actual = [actual;3];

aoifcst = [aoifcst;0.8;0.5;0.1;0.2;0.4];
aoiactual = [aoiactual;1;1;0;0;1];

# 2024-11-20-06Z thru 2024-12-06-00Z
# https://x.com/elioeFIN/status/1859082106426503269
# System 1 ghost

fcst = [fcst;0.5];
climo = [climo;0.27];
actual = [actual;0];

aoifcst = [aoifcst;0.4];
aoiactual = [aoiactual;0];

# 2024-11-22-00Z thru 2024-12-07-18Z
# https://x.com/elioeFIN/status/1859699850738270387
# Systems 1,2 ghosts

fcst = [fcst;0.4];
climo = [climo;0.27];
actual = [actual;0];

aoifcst = [aoifcst;0.3;0.1];
aoiactual = [aoiactual;0;0];

# 2024-11-24-00Z thru 2024-12-09-18Z
# https://x.com/elioeFIN/status/1860442630473093209
# Systems 1,2 ghosts

fcst = [fcst;0.4];
climo = [climo;0.23];
actual = [actual;0];

aoifcst = [aoifcst;0.2;0.2];
aoiactual = [aoiactual;0;0];

# 2024-11-25-00Z thru 2024-12-10-18Z
# https://x.com/elioeFIN/status/1860805353442509025
# Systems 1,2 ghosts

fcst = [fcst;0.4];
climo = [climo;0.17];
actual = [actual;0];

aoifcst = [aoifcst;0.2;0.2];
aoiactual = [aoiactual;0;0];

# 2025-05-03-00Z thru 2025-05-18-18Z
# https://x.com/elioeFIN/status/1918421804353528286
# System 1 ghost

fcst = [fcst;0.1];
climo = [climo;0.10];
actual = [actual;0];

aoifcst = [aoifcst;0.1];
aoiactual = [aoiactual;0];

# 2025-05-04-00Z thru 2025-05-19-18Z
# https://x.com/elioeFIN/status/1918789294166065325
# System 1 ghost

fcst = [fcst;0.2];
climo = [climo;0.13];
actual = [actual;0];

aoifcst = [aoifcst;0.2];
aoiactual = [aoiactual;0];

# 2025-05-06-00Z thru 2025-05-21-18Z
# https://x.com/elioeFIN/status/1919510642907599145
# Systems 1,2 ghosts

fcst = [fcst;0.4];
climo = [climo;0.17];
actual = [actual;0];

aoifcst = [aoifcst;0.3;0.1];
aoiactual = [aoiactual;0;0];

# 2025-05-07-00Z thru 2025-05-22-18Z
# https://x.com/elioeFIN/status/1919875884648919193
# System 1 ghost

fcst = [fcst;0.5];
climo = [climo;0.17];
actual = [actual;0];

aoifcst = [aoifcst;0.4];
aoiactual = [aoiactual;0];

# 2025-05-08-00Z thru 2025-05-23-18Z
# https://x.com/elioeFIN/status/1920233604082290829
# System 1 ghost

fcst = [fcst;0.4];
climo = [climo;0.17];
actual = [actual;0];

aoifcst = [aoifcst;0.3];
aoiactual = [aoiactual;0];

# 2025-05-10-18Z thru 2025-05-26-12Z
# https://x.com/elioeFIN/status/1921220876474757328
# System 1 ghost

fcst = [fcst;0.2];
climo = [climo;0.17];
actual = [actual;0];

aoifcst = [aoifcst;0.1];
aoiactual = [aoiactual;0];

# 2025-05-15-18Z thru 2025-05-31-12Z
# https://x.com/elioeFIN/status/1923035636220481742
# System 1 ghost

fcst = [fcst;0.1];
climo = [climo;0.33];
actual = [actual;0];

aoifcst = [aoifcst;0.1];
aoiactual = [aoiactual;0];

# 2025-05-17-00Z thru 2025-06-01-18Z
# https://x.com/elioeFIN/status/1923480222550089942
# System 1 ghost

fcst = [fcst;0.2];
climo = [climo;0.43];
actual = [actual;0];

aoifcst = [aoifcst;0.2];
aoiactual = [aoiactual;0];

# 2025-05-18-12Z thru 2025-06-03-06Z
# https://x.com/elioeFIN/status/1924049775445360653
# System 1 ghost

fcst = [fcst;0.1];
climo = [climo;0.47];
actual = [actual;0];

aoifcst = [aoifcst;0.1];
aoiactual = [aoiactual;0];

# 2025-05-20-00Z thru 2025-06-04-18Z
# https://x.com/elioeFIN/status/1924582811396182221
# System 1 ghost

fcst = [fcst;0.2];
climo = [climo;0.43];
actual = [actual;0];

aoifcst = [aoifcst;0.2];
aoiactual = [aoiactual;0];

# 2025-05-21-18Z thru 2025-06-06-12Z
# https://x.com/elioeFIN/status/1925168934522671312
# System 1 ghost

fcst = [fcst;0.1];
climo = [climo;0.50];
actual = [actual;0];

aoifcst = [aoifcst;0.1];
aoiactual = [aoiactual;0];

# 2025-05-24-00Z thru 2025-06-08-18Z
# https://x.com/elioeFIN/status/1926028247784968316
# no systems marked

fcst = [fcst;0.2];
climo = [climo;0.57];
actual = [actual;0];

# 2025-05-25-12Z thru 2025-06-10-06Z
# https://x.com/elioeFIN/status/1926583727481631114
# Systems 1,2 ghosts

fcst = [fcst;0.5];
climo = [climo;0.60];
actual = [actual;0];

aoifcst = [aoifcst;0.1;0.1];
aoiactual = [aoiactual;0;0];

# 2025-05-28-00Z thru 2025-06-12-18Z
# https://x.com/elioeFIN/status/1927464658228674913
# Systems 1,2 ghosts

fcst = [fcst;0.6];
climo = [climo;0.53];
actual = [actual;0];

aoifcst = [aoifcst;0.3;0.1];
aoiactual = [aoiactual;0;0];

# 2025-05-30-06Z thru 2025-06-15-00Z
# https://x.com/elioeFIN/status/1928314578946896179
# Systems 1,2 ghosts

fcst = [fcst;0.6];
climo = [climo;0.50];
actual = [actual;0];

aoifcst = [aoifcst;0.2;0.2];
aoiactual = [aoiactual;0;0];

# 2025-06-01-00Z thru 2026-06-16-18Z
# https://x.com/elioeFIN/status/1928932300827316549
# Systems 1,2,3 ghosts

fcst = [fcst;0.7];
climo = [climo;0.47];
actual = [actual;0];

aoifcst = [aoifcst;0.1;0.3;0.1];
aoiactual = [aoiactual;0;0;0];

# 2025-06-02-18Z thru 2025-06-18-12Z
# https://x.com/elioeFIN/status/1929525689872453748
# Systems 1,2 ghosts

fcst = [fcst;0.6];
climo = [climo;0.43];
actual = [actual;0];

aoifcst = [aoifcst;0.2;0.1];
aoiactual = [aoiactual;0;0];

# 2025-06-05-00Z thru 2025-06-20-18Z
# https://x.com/elioeFIN/status/1930382212270305494
# Systems 1,2,3 ghosts

fcst = [fcst;0.7];
climo = [climo;0.53];
actual = [actual;0];

aoifcst = [aoifcst;0.3;0.1;0.1];
aoiactual = [aoiactual;0;0;0];

# 2025-06-06-18Z thru 2025-06-22-12Z
# https://x.com/elioeFIN/status/1930980150130200698
# Systems 1,2,3 ghosts

fcst = [fcst;0.7];
climo = [climo;0.47];
actual = [actual;0];

aoifcst = [aoifcst;0.2;0.1;0.1];
aoiactual = [aoiactual;0;0;0];

# 2025-06-08-00Z thru 2025-06-23-18Z
# https://x.com/elioeFIN/status/1931479495673786428
# System 1 ghost. Andrea was missed

fcst = [fcst;0.7];
climo = [climo;0.50];
actual = [actual;1];

aoifcst = [aoifcst;0.4;0];
aoiactual = [aoiactual;0;1];

# 2025-06-14-00Z thru 2025-06-29-18Z
# https://x.com/elioeFIN/status/1933609681982746910
# System 2 = Barry , System 3 = Andrea
# System 1 ghost

fcst = [fcst;0.5];
climo = [climo;0.53];
actual = [actual;2];

aoifcst = [aoifcst;0.1;0.1;0.1];
aoiactual = [aoiactual;0;1;1];

# 2025-06-20-00Z thru 2025-07-05-18Z
# https://x.com/elioeFIN/status/1935790033895575911
# System 1 Barry. Systems 2,3 ghosts
# Andrea,Chantal missed

fcst = [fcst;0.7];
climo = [climo;0.73];
actual = [actual;3];

aoifcst = [aoifcst;0.2;0.1;0.1;0;0];
aoiactual = [aoiactual;1;0;0;1;1];

# 2025-06-25-00Z thru 2025-07-10-18Z
# https://x.com/elioeFIN/status/1937594523187838991
# System 1 Chantal. Barry missed

fcst = [fcst;0.6];
climo = [climo;0.77];
actual = [actual;2];

aoifcst = [aoifcst;0.3;0];
aoiactual = [aoiactual;1;1];

# 2025-06-29-06Z thru 2025-07-15-00Z
# https://x.com/elioeFIN/status/1939180951499620851
# System 1 Chantal

fcst = [fcst;0.9];
climo = [climo;0.90];
actual = [actual;1];

aoifcst = [aoifcst;0.4];
aoiactual = [aoiactual;1];

# 2025-07-02-12Z thru 2025-07-18-06Z
# https://x.com/elioeFIN/status/1940369979842654475
# System 1 Chantal. Systems 2,3,4 ghosts

fcst = [fcst;1.3];
climo = [climo;1.03];
actual = [actual;1];

aoifcst = [aoifcst;0.4;0.2;0.2;0.3];
aoiactual = [aoiactual;1;0;0;0];

# 2025-07-07-00Z thru 2025-07-22-18Z
# https://x.com/elioeFIN/status/1941950779788546491
# Systems 1,2 ghosts

fcst = [fcst;0.9];
climo = [climo;1.07];
actual = [actual;0];

aoifcst = [aoifcst;0.2;0.4];
aoiactual = [aoiactual;0;0];

# 2025-07-08-18Z thru 2025-07-24-12Z
# https://x.com/elioeFIN/status/1942592229304066252
# Systems 1,2,3 ghosts

fcst = [fcst;1.0];
climo = [climo;1.13];
actual = [actual;0];

aoifcst = [aoifcst;0.4;0.1;0.1];
aoiactual = [aoiactual;0;0;0];

# 2025-07-10-00Z thru 2025-07-25-18Z
# https://x.com/elioeFIN/status/1943072880486740373
# Systems 1,2,3 ghosts

fcst = [fcst;1.1];
climo = [climo;1.17];
actual = [actual;0];

aoifcst = [aoifcst;0.2;0.3;0.4];
aoiactual = [aoiactual;0;0;0];

# 2025-07-12-12Z thru 2025-07-28-06Z
# https://x.com/elioeFIN/status/1943931007599550800
# Systems 1,2,3,4 ghosts

fcst = [fcst;0.9];
climo = [climo;1.03];
actual = [actual;0];

aoifcst = [aoifcst;0.1;0.2;0.1;0.1];
aoiactual = [aoiactual;0;0;0;0];

# 2025-07-14-00Z thru 2025-07-29-18Z
# https://x.com/elioeFIN/status/1944520562459521162
# Systems 1,2 ghosts

fcst = [fcst;1.0];
climo = [climo;1.00];
actual = [actual;0];

aoifcst = [aoifcst;0.2;0.4];
aoiactual = [aoiactual;0;0];

# 2025-07-16-00Z thru 2025-07-31-18Z
# https://x.com/elioeFIN/status/1945250634338369683
# Systems 1,2,3 ghosts

fcst = [fcst;1.4];
climo = [climo;1.20];
actual = [actual;0];

aoifcst = [aoifcst;0.4;0.5;0.3];
aoiactual = [aoiactual;0;0;0];

# 2025-07-18-00Z thru 2025-08-02-18Z
# https://x.com/elioeFIN/status/1945972123303882869
# Systems 1,2,3 ghosts

fcst = [fcst;0.9];
climo = [climo;1.23];
actual = [actual;0];

aoifcst = [aoifcst;0.1;0.3;0.1];
aoiactual = [aoiactual;0;0;0];

# 2025-07-22-00Z thru 2025-08-06-18Z
# https://x.com/elioeFIN/status/1947423497942405523
# Systems 1,2,3 ghosts. Dexter missed

fcst = [fcst;1.0];
climo = [climo;1.17];
actual = [actual;1];

aoifcst = [aoifcst;0.4;0.2;0.1;0];
aoiactual = [aoiactual;0;0;0;1];

# 2025-08-30-00Z thru 2025-09-14-18Z
# https://x.com/elioeFIN/status/1961550685952249875
# Systems 1,2,3 ghosts

fcst = [fcst;1.4];
climo = [climo;3.03];
actual = [actual;0];

aoifcst = [aoifcst;0.2;0.6;0.1];
aoiactual = [aoiactual;0;0;0];

# 2025-10-16-18Z thru 2025-11-01-12Z
# https://x.com/elioeFIN/status/1978830767577878806
# System 1 Melissa. Systems 2,3 ghosts

fcst = [fcst;1.3];
climo = [climo;1.10];
actual = [actual;1];

aoifcst = [aoifcst;0.8;0.1;0.2];
aoiactual = [aoiactual;1;0;0];

# 2025-10-17-18Z thru 2025-11-02-12Z
# https://x.com/elioeFIN/status/1979201879549563264
# System 1 Melissa. System 2 ghost

fcst = [fcst;1.5];
climo = [climo;1.10];
actual = [actual;1];

aoifcst = [aoifcst;0.8;0.3];
aoiactual = [aoiactual;1;0];

# 2025-11-17-06Z thru 2025-12-03-00Z
# https://x.com/elioeFIN/status/1990216403576832458
# Systems 1,2 ghosts

fcst = [fcst;0.4];
climo = [climo;0.27];
actual = [actual;0];

aoifcst = [aoifcst;0.1;0.1];
aoiactual = [aoiactual;0;0];

# 2026-05-18-00Z thru 2026-06-02-18Z
# https://x.com/elioeFIN/status/2056122565618229594
# Systems 1,2 ghosts

fcst = [fcst;0.3];
climo = [climo;0.43];
actual = [actual;0];

aoifcst = [aoifcst;0.1;0.1];
aoiactual = [aoiactual;0;0];

# 2026-05-19-18Z thru 2026-06-04-12Z
# https://x.com/elioeFIN/status/2056722981330497695
# System 1 ghost

fcst = [fcst;0.3];
climo = [climo;0.43];
actual = [actual;0];

aoifcst = [aoifcst;0.1];
aoiactual = [aoiactual;0];

# 2026-05-22-06Z thru 2026-06-07-00Z
# https://x.com/elioeFIN/status/2057621941079376277
# System 1 ghost

fcst = [fcst;0.3];
climo = [climo;0.50];
actual = [actual;0];

aoifcst = [aoifcst;0.1];
aoiactual = [aoiactual;0];

# 2026-05-24-06Z thru 2026-06-09-00Z
# https://x.com/elioeFIN/status/2058338794173083976
# System 1 ghost

fcst = [fcst;0.3];
climo = [climo;0.57];
actual = [actual;0];

aoifcst = [aoifcst;0.1];
aoiactual = [aoiactual;0];

# 2026-05-25-18Z thru 2026-06-10-12Z
# https://x.com/elioeFIN/status/2058927368656257187
# System 1 ghost

fcst = [fcst;0.3];
climo = [climo;0.57];
actual = [actual;0];

aoifcst = [aoifcst;0.1];
aoiactual = [aoiactual;0];

# 2026-05-27-18Z thru 2026-06-12-12Z
# https://x.com/elioeFIN/status/2059677465513984336
# System 1 ghost

fcst = [fcst;0.4];
climo = [climo;0.57];
actual = [actual;0];

aoifcst = [aoifcst;0.2];
aoiactual = [aoiactual;0];

# 2026-06-01-00Z thru 2026-06-16-18Z
# https://x.com/elioeFIN/status/2061159072846545346
# System 1 = Arthur , but formed beyond fcst period

fcst = [fcst;0.5];
climo = [climo;0.47];
actual = [actual;1];

aoifcst = [aoifcst;0.2];
aoiactual = [aoiactual;0];

# 2026-06-04-00Z thru 2026-06-19-18Z
# https://x.com/elioeFIN/status/2062312614055551206
# System 1 = Arthur , System 2 ghost

fcst = [fcst;0.5];
climo = [climo;0.50];
actual = [actual;1];

aoifcst = [aoifcst;0.3;0.1];
aoiactual = [aoiactual;1;0];

# 2026-06-06-00Z thru 2026-06-21-18Z
# https://x.com/elioeFIN/status/2062970982264971342
# System 1 = Arthur , but formed clearly outside denoted area

fcst = [fcst;0.8];
climo = [climo;0.43];
actual = [actual;1];

aoifcst = [aoifcst;0.6];
aoiactual = [aoiactual;0.5];

# 2026-06-08-18Z thru 2026-06-24-12Z
# https://x.com/elioeFIN/status/2064003529031684520
# System 1 = Arthur

fcst = [fcst;0.4];
climo = [climo;0.5];
actual = [actual;1];

aoifcst = [aoifcst;0.2];
aoiactual = [aoiactual;1];

# 2026-06-11-18Z thru 2026-06-27-12Z
# https://x.com/elioeFIN/status/2065098589135618144
# System 1 = Arthur , but formed clearly outside denoted area
# System 2 ghost

fcst = [fcst;0.4];
climo = [climo;0.47];
actual = [actual;1];

aoifcst = [aoifcst;0.1;0.1];
aoiactual = [aoiactual;0.5;0];

# 2026-06-13-00Z thru 2026-06-28-18Z
# https://x.com/elioeFIN/status/2065513201328873900
# System 1 = Arthur , System 2 ghost

fcst = [fcst;0.5];
climo = [climo;0.50];
actual = [actual;1];

aoifcst = [aoifcst;0.3;0.1];
aoiactual = [aoiactual;1;0];

# 2026-06-16-00Z thru 2026-07-01-18Z
# https://x.com/elioeFIN/status/2066606192890085625
# System 1 = Arthur , System 2 ghost

fcst = [fcst;0.8];
climo = [climo;0.60];
actual = [actual;1];

aoifcst = [aoifcst;0.5;0.2];
aoiactual = [aoiactual;1;0];

# 2026-06-18-18Z thru 2026-07-04-12Z
# https://x.com/elioeFIN/status/2067610894918427085
# Systems 1,2 ghosts

fcst = [fcst;0.3];
climo = [climo;0.67];
actual = [actual;0];

aoifcst = [aoifcst;0.1];
aoiactual = [aoiactual;0.1];

# 2026-06-21-00Z thru 2026-07-06-18Z
# https://x.com/elioeFIN/status/2068461967489065148
# no systems marked

fcst = [fcst;0.3];
climo = [climo;0.73];
actual = [actual;0];

# 2026-06-24-00Z thru 2026-07-09-18Z
# https://x.com/elioeFIN/status/2069550153984332114
# Systems 1,2 ghosts

fcst = [fcst;0.6];
climo = [climo;0.77];
actual = [actual;0];

aoifcst = [aoifcst;0.1;0.3];
aoiactual = [aoiactual;0;0];

# 2026-06-26-18Z thru 2026-07-12-12Z
# https://x.com/elioeFIN/status/2070508208540586128
# System 1 ghost

fcst = [fcst;0.6];
climo = [climo;0.87];
actual = [actual;0];

aoifcst = [aoifcst;0.4];
aoiactual = [aoiactual;0];

# 2026-06-29-00Z thru 2026-07-14-18Z
# https://x.com/elioeFIN/status/2071341120966029669
# Systems 1,2 ghosts

fcst = [fcst;0.7];
climo = [climo;0.90];
actual = [actual;0];

aoifcst = [aoifcst;0.2;0.4];
aoiactual = [aoiactual;0;0];

# 2026-07-01-00Z thru 2026-07-16-18Z
# https://x.com/elioeFIN/status/2072025870777119025
# System 1,2,3 ghosts

fcst = [fcst;0.6];
climo = [climo;0.87];
actual = [actual;0];

aoifcst = [aoifcst;0.1;0.3;0.1];
aoiactual = [aoiactual;0;0;0];

# 2026-07-05-06Z thru 2026-07-21-00Z
# https://x.com/elioeFIN/status/2073559195551482230
# Systems 1,2 ghosts. Bertha was missed

fcst = [fcst;0.6];
climo = [climo;1.00];
actual = [actual;1];

aoifcst = [aoifcst;0.1;0.2;0];
aoiactual = [aoiactual;0;0;1];

# 2026-07-07-18Z thru 2026-07-23-12Z
# https://x.com/elioeFIN/status/2074539024983724352
# Systems 1,2,3 ghosts. Bertha was missed

fcst = [fcst;0.8];
climo = [climo;1.07];
actual = [actual;1];

aoifcst = [aoifcst;0.1;0.3;0.1;0];
aoiactual = [aoiactual;0;0;0;1];

# 2026-07-11-18Z thru 2026-07-27-12Z
# https://x.com/elioeFIN/status/2075959090329665619
# Systems 1,2,3 ghosts. Bertha was missed

fcst = [fcst;0.8];
climo = [climo;1.10];
actual = [actual;1];

aoifcst = [aoifcst;0.1;0.3;0.1;0];
aoiactual = [aoiactual;0;0;0;1];

# 2026-07-13-00Z thru 2026-07-28-18Z
# https://x.com/elioeFIN/status/2076422436493369414
# Systems 1,2,3 ghosts. Bertha was missed

fcst = [fcst;0.9];
climo = [climo;1.07];
actual = [actual;1];

aoifcst = [aoifcst;0.1;0.3;0.2;0];
aoiactual = [aoiactual;0;0;0;1];

# 2026-07-14-06Z thru 2026-07-30-00Z
# https://x.com/elioeFIN/status/2076842620920205659
# Systems 1,2,3 ghosts. Bertha was missed

fcst = [fcst;0.7];
climo = [climo;1.03];
actual = [actual;1];

aoifcst = [aoifcst;0.1;0.2;0.1;0];
aoiactual = [aoiactual;0;0;0;1];

# 2026-07-17-00Z thru 2026-08-01-18Z
# https://x.com/elioeFIN/status/2077833068874756541
# System 1 = Bertha, systems 2,3 ghosts

fcst = [fcst;0.9];
climo = [climo;1.23];
actual = [actual;1];

aoifcst = [aoifcst;0.2;0.3;0.1];
aoiactual = [aoiactual;1;0;0];

# 2026-07-29-18Z thru 2026-08-14-12Z
# https://x.com/elioeFIN/status/2082469655386444261
# System 2 = Cristobal , systems 1,3 ghosts

fcst = [fcst;0.8];
climo = [climo;1.53];
actual = [actual;1];

aoifcst = [aoifcst;0.2;0.1;0.3];
aoiactual = [aoiactual;0;1;0];

# 2026-08-03-00Z thru 2026-08-18-18Z
# https://x.com/elioeFIN/status/2084034972327755900
# System 1 ghost. Cristobal was missed

fcst = [fcst;0.4];
climo = [climo;1.63];
actual = [actual;1];

aoifcst = [aoifcst;0.1;0];
aoiactual = [aoiactual;0;1];

# 2026-08-04-18Z thru 2026-08-20-12Z
# https://x.com/elioeFIN/status/2084677942781661210
# System 1 ghost. Cristobal was missed

fcst = [fcst;0.3];
climo = [climo;1.73];
actual = [actual;1];

aoifcst = [aoifcst;0.1;0];
aoiactual = [aoiactual;0;1];

# 2026-08-07-18Z thru 2026-08-23-12Z
# https://x.com/elioeFIN/status/2085752684976488540
# System 1 ghost. Cristobal was missed.
# AOI W of Portugal was not mentioned.

fcst = [fcst;0.9];
climo = [climo;2.07];
actual = [actual;1+x3];

aoifcst = [aoifcst;0.6;0;0];
aoiactual = [aoiactual;0;1;x3];

# 2026-08-09-18Z thru 2026-08-25-12Z
# https://x.com/elioeFIN/status/2086447210967757265
# Systems 1,2 ghosts. Cristobal was missed.
# AOI W of Portugal was not mentioned.

fcst = [fcst;1.2];
climo = [climo;2.37];
actual = [actual;1+x3];

aoifcst = [aoifcst;0.2;0.7;0;0];
aoiactual = [aoiactual;0;0;1;x3];

# 2026-08-11-00Z thru 2026-08-26-18Z
# https://x.com/elioeFIN/status/2086931667965382761
# System 2 Cristobal. Systems 1,3 ghosts.
# AOI W of Portugal was not mentioned.

fcst = [fcst;1.4];
climo = [climo;2.40];
actual = [actual;1+x3];

aoifcst = [aoifcst;0.8;0.1;0.1;0];
aoiactual = [aoiactual;0;1;0;x3];

# 2026-08-15-00Z thru 2026-08-30-18Z
# https://x.com/elioeFIN/status/2088333840838279192
# Systems 1,2 ghosts. Dolly was missed.
# AOI W of Portugal was not mentioned.

fcst = [fcst;1.1];
climo = [climo;2.50];
actual = [actual;1+x3];

aoifcst = [aoifcst;0.3;0.4;0;0];
aoiactual = [aoiactual;0;0;1;x3];

# 2026-08-21-00Z thru 2026-09-05-18Z
# https://x.com/elioeFIN/status/2090576436436353363
# System 1 ghost. System 2 Dolly. System 3 potential TC.
# Edouard was missed.

fcst = [fcst;1.5];
climo = [climo;2.80];
actual = [actual;2+x3];

aoifcst = [aoifcst;0.1;0.7;0.4;0];
aoiactual = [aoiactual;0;1;x3;1];

# 2026-08-23-00Z thru 2026-09-07-18Z
# https://x.com/elioeFIN/status/2091297415366095025
# System 1 ghost. System 2 Dolly. System 3 potential TC.
# Edouard was missed.

fcst = [fcst;1.60];
climo = [climo;2.87];
actual = [actual;2+x3];

aoifcst = [aoifcst;0.2;0.8;0.3;0];
aoiactual = [aoiactual;0;1;x3;1];

# 2026-08-25-06Z thru 2026-09-10-00Z
# https://x.com/elioeFIN/status/2092058543885066615
# Systems 1,2 ghosts. System 3 Dolly. Edouard was missed.

fcst = [fcst;1.90];
climo = [climo;2.77];
actual = [actual;2];

aoifcst = [aoifcst;0.2;0.4;0.9;0];
aoiactual = [aoiactual;0;0;1;1];

# 2026-08-27-00Z thru 2026-09-11-18Z
# https://x.com/elioeFIN/status/2092748791392690245
# Systems 1,3 ghosts. System 2 Dolly. Edouard was missed.

fcst = [fcst;1.7];
climo = [climo;2.80];
actual = [actual;2];

aoifcst = [aoifcst;0.3;0.6;0.4;0];
aoiactual = [aoiactual;0;1;0;1];

# 2026-08-30-18Z thru 2026-09-15-12Z
# https://x.com/elioeFIN/status/2094108912072937518
# Systems 3,4,5 ghosts. System 1 Edouard.
# System 2 ex-Dolly (didn't regenerate)

fcst = [fcst;1.6];
climo = [climo;2.90];
actual = [actual;1];

aoifcst = [aoifcst;0.3;0.5;0.1;0.3;0.1];
aoiactual = [aoiactual;1;0;0;0;0];

# 2026-09-02-00Z thru 2026-09-17-18Z
# https://x.com/elioeFIN/status/2094919208156934651
# Systems 1,2,3 ghosts.

fcst = [fcst;0.7];
climo = [climo;2.87];
actual = [actual;0];

aoifcst = [aoifcst;0.1;0.1;0.1];
aoiactual = [aoiactual;0;0;0];

# 2026-09-07-00Z thru 2026-09-22-18Z
# https://x.com/elioeFIN/status/2096668073528881523
# System 2 Fay. Systems 1,3 ghosts.

fcst = [fcst;0.7];
climo = [climo;2.83];
actual = [actual;1];

aoifcst = [aoifcst;0.2;0.1;0.1];
aoiactual = [aoiactual;0;1;0];

# 2026-09-08-00Z thru 2026-09-23-18Z
# https://x.com/elioeFIN/status/2097080264635641922
# Systems 1,2 ghosts. Fay was missed

fcst = [fcst;0.5];
climo = [climo;2.60];
actual = [actual;1];

aoifcst = [aoifcst;0.1;0.1;0];
aoiactual = [aoiactual;0;0;1];

# 2026-09-10-18Z thru 2026-09-26-12Z
# https://x.com/elioeFIN/status/2098066342876266514
# Systems 1,2 ghosts. System 3 = Fay , System 4 = Gonzalo

fcst = [fcst;1.1];
climo = [climo;2.57];
actual = [actual;2];

aoifcst = [aoifcst;0.3;0.1;0.2;0.2];
aoiactual = [aoiactual;0;0;1;1];

# 2026-09-14-00Z thru 2026-09-29-18Z
# https://x.com/elioeFIN/status/2099268697521025087
# Systems 1,2,3,4 ghosts. System 5 = Gonzalo
# Fay and Hanna were missed

fcst = [fcst;1.5];
climo = [climo;2.40];
actual = [actual;3];

aoifcst = [aoifcst;0.3;0.3;0.2;0.1;0.3;0;0];
aoiactual = [aoiactual;0;0;0;0;1;1;1];

# 2026-09-17-00Z thru 2026-10-02-18Z
# https://x.com/elioeFIN/status/2100350023451959807
# Systems 1,2,3,4 ghosts. System 5 = Gonzalo
# Fay and Hanna were missed

fcst = [fcst;1.5];
climo = [climo;2.20];
actual = [actual;3];

aoifcst = [aoifcst;0.2;0.3;0.3;0.2;0.2;0;0];
aoiactual = [aoiactual;0;0;0;0;1;1;1];

# 2026-09-18-18Z thru 2026-10-04-12Z
# https://x.com/elioeFIN/status/2100977667596079156
# Systems 1,2,3 ghosts. System 4 = Gonzalo.
# System 5 = Fay. Hanna was missed.

fcst = [fcst;2.3];
climo = [climo;2.17];
actual = [actual;3];

aoifcst = [aoifcst;0.2;0.2;0.2;0.7;0.6;0];
aoiactual = [aoiactual;0;0;0;1;1;1];




