*******************************
Programmer: Shazad Ahmed
Purpose: Site counts of sites giving ART to kids and adults (TX_CURR, MCAD)
*******************************;
/* This bundle ships the %artcount macro unchanged except that its infile
   (originally an absolute Windows path, one .txt per operating unit) reads an
   inline tab-delimited sample built to the macro's own input schema. The macro
   is then invoked once, for Rwanda, and the result summarised. */
options compress = yes;

%macro artcount(ou, nxtx);


/*Choosing country;*/
/******** 1) Pulling data *******************************/


/*Pulling the data using appropriate length statments to avoid truncation*/
data &ou;
infile datalines dlm='09'x MISSOVER DSD lrecl=32767;
informat orgUnitUID $50. ;
informat SiteName  $100. ;
informat Region $255. ;
informat RegionUID $50. ;
informat OperatingUnit $255. ;
informat OperatingUnitUID $50. ;
informat CountryName $255. ;
informat SNU1 $255. ;
informat SNU1UID $50. ;
informat PSNU $255. ;
informat PSNUuid $50. ;
informat SNUPrioritization  $26. ;
informat typeMilitary $1. ;
informat mechanismUID $28. ;
informat PrimePartner $250. ;
informat FundingAgency $30. ;
informat MechanismID $50. ;
informat ImplementingMechanismName $350. ;
informat CommunityUID $50. ; 
informat Community $75.;   
informat CommunityPrioritization $50.;   
informat FacilityUID $50. ;
informat Facility $75.;  
informat FacilityPrioritization  $50.;
informat SiteType $20. ;  
informat dataElementUID $255. ;
informat indicator $255. ;
informat numeratorDenom $2. ;
informat indicatorType $25. ;
informat disaggregate $50. ;
informat standardizedDisaggregate $100. ;
informat categoryOptionComboUID $255. ;
informat categoryOptionComboName $55. ;
informat AgeAsEntered $50. ;
informat AgeFine $50. ;
informat AgeSemiFine $50. ;
informat AgeCoarse $50. ;
informat Sex $50. ;
informat resultStatus $50. ;
informat otherDisaggregate $55. ;
informat coarseDisaggregate $50. ;
informat modality $100.;
informat isMCAD $5.;
/*informat FY2015Q2 BEST32.;*/
/*informat FY2015Q3 BEST32.;*/
/*informat FY2015Q4 BEST32.;*/
/*informat FY2015APR BEST32.;*/
/*informat FY2016_TARGETS BEST32.;*/
/*informat FY2016Q1 BEST32.;*/
/*informat FY2016Q2 BEST32.;*/
/*informat FY2016Q3 BEST32.;*/
/*informat FY2016Q4 BEST32.;*/
/*informat FY2016APR BEST32.;*/
informat FY2017_TARGETS BEST32.;
informat FY2017Q1 BEST32.;
informat FY2017Q2 BEST32.;
informat FY2017Q3 BEST32.;
informat FY2017Q4 BEST32.;
informat FY2017APR BEST32.;
informat FY2018_TARGETS BEST32.;
informat FY2018Q1 BEST32.;
informat FY2018Q2 BEST32.;



format orgUnitUID $50. ;
format SiteName $100. ;
format Region $255. ;
format RegionUID $50. ;
format OperatingUnit $255. ;
format OperatingUnitUID $50. ;
format CountryName $255. ;
format SNU1 $255. ;
format SNU1UID $50. ;
format PSNU $255. ;
format PSNUuid $50. ;
format SNUPrioritization  $26. ;
format typeMilitary $1. ;
format mechanismUID $28. ;
format PrimePartner $250. ;
format FundingAgency $30. ;
format MechanismID $50. ;
format ImplementingMechanismName $350. ;
format CommunityUID $50. ; 
format Community $75.;   
format CommunityPrioritization $50.;   
format FacilityUID $50. ;   
format Facility $75. ; 
format FacilityPrioritization  $50.;
format SiteType $20. ;   
format dataElementUID $255. ;
format indicator $255. ;
format numeratorDenom $2. ;
format indicatorType $25. ;
format disaggregate $50. ;
format standardizedDisaggregate $100. ;
format categoryOptionComboUID $255. ;
format categoryOptionComboName $55. ;
format AgeAsEntered $50. ;
format AgeFine $50. ;
format AgeSemiFine $50. ;
format AgeCoarse $50. ;
format Sex $50. ;
format resultStatus $50. ;
format otherDisaggregate $55. ;
format coarseDisaggregate $50. ;
format modality $100.;
format isMCAD $5.;
/*format FY2015Q2 BEST32.;*/
/*format FY2015Q3 BEST32.;*/
/*format FY2015Q4 BEST32.;*/
/*format FY2015APR BEST32.;*/
/*format FY2016_TARGETS BEST32.;*/
/*format FY2016Q1 BEST32.;*/
/*format FY2016Q2 BEST32.;*/
/*format FY2016Q3 BEST32.;*/
/*format FY2016Q4 BEST32.;*/
/*format FY2016APR BEST32.;*/
format FY2017_TARGETS BEST32.;
format FY2017Q1 BEST32.;
format FY2017Q2 BEST32.;
format FY2017Q3 BEST32.;
format FY2017Q4 BEST32.;
format FY2017APR BEST32.;
format FY2018_TARGETS BEST32.;
format FY2018Q1 BEST32.;
format FY2018Q2 BEST32.;

input 
orgUnitUID $
SiteName $
Region $
RegionUID $
OperatingUnit $
OperatingUnitUID $
CountryName $
SNU1 $
SNU1UID $
PSNU $
PSNUuid $
SNUPrioritization $
typeMilitary $
mechanismUID $
PrimePartner $
FundingAgency $
MechanismID $
ImplementingMechanismName $
CommunityUID $
Community $
CommunityPrioritization $
FacilityUID $
Facility $
FacilityPrioritization $
SiteType $
dataElementUID $
indicator $
numeratorDenom $
indicatorType $
disaggregate $
standardizedDisaggregate $
categoryOptionComboUID $
categoryOptionComboName $
AgeAsEntered $
AgeFine $
AgeSemiFine $
AgeCoarse $
Sex $
resultStatus $
otherDisaggregate $
coarseDisaggregate $
modality $
isMCAD $
/*FY2015Q2*/
/*FY2015Q3*/
/*FY2015Q4*/
/*FY2015APR*/
/*FY2016_TARGETS*/
/*FY2016Q1*/
/*FY2016Q2*/
/*FY2016Q3*/
/*FY2016Q4*/
/*FY2016APR*/
FY2017_TARGETS
FY2017Q1 
FY2017Q2
FY2017Q3
FY2017Q4
FY2017APR 
FY2018_TARGETS
FY2018Q1
FY2018Q2;

datalines;
RW80239	Site 13			Rwanda		Rwanda	Western		Western District		1 - Scale-Up: Saturation	N	M1950	Alpha Health	HHS/CDC	10614	IM Program							Facility		TX_CURR	N	Direct		Age/Sex/HIVStatus						15+	Female					Y					120			220	90
RW21889	Site 71			Rwanda		Rwanda	Northern		Northern District		1 - Scale-Up: Saturation	N	M1968	Alpha Health	USAID	13657	IM Program							Facility		TX_CURR	N	Direct		Age/Sex/HIVStatus						15+	Female					Y					0			220	90
RW82963	Site 110			Rwanda		Rwanda	Eastern		Eastern District		1 - Scale-Up: Saturation	N	M5744	Beta Care	USAID	12363	IM Program							Facility		TX_CURR	N	Direct		Age/Sex/HIVStatus						15+	Female					Y					0			0	0
RW58810	Site 13			Rwanda		Rwanda	Southern		Southern District		1 - Scale-Up: Saturation	N	M2028	Alpha Health	USAID	13374	IM Program							Facility		TX_CURR	N	Direct		Age/Sex/HIVStatus						15+	Female					Y					340			150	90
RW57393	Site 39			Rwanda		Rwanda	Eastern		Eastern District		1 - Scale-Up: Saturation	N	M3945	Alpha Health	HHS/CDC	11341	IM Program							Facility		TX_CURR	N	Direct		Age/Sex/HIVStatus						<15	Female					Y					0			0	0
RW89817	Site 10			Rwanda		Rwanda	Kigali		Kigali District		1 - Scale-Up: Saturation	N	M9387	Beta Care	HHS/CDC	12702	IM Program							Facility		TX_CURR	N	Direct		Age/Sex/HIVStatus						<15	Female					Y					0			0	0
RW97584	Site 10			Rwanda		Rwanda	Southern		Southern District		1 - Scale-Up: Saturation	N	M6140	Beta Care	HHS/CDC	15737	IM Program							Facility		TX_CURR	N	Direct		Age/Sex/HIVStatus						15+	Female					Y					120			220	0
RW72141	Site 90			Rwanda		Rwanda	Kigali		Kigali District		1 - Scale-Up: Saturation	N	M1994	Beta Care	HHS/CDC	19469	IM Program							Facility		TX_CURR	N	Direct		Age/Sex/HIVStatus						<15	Female					Y					0			0	90
RW70515	Site 46			Rwanda		Rwanda	Eastern		Eastern District		1 - Scale-Up: Saturation	N	M2918	Beta Care	HHS/CDC	10965	IM Program							Facility		TX_CURR	N	Direct		Age/Sex/HIVStatus						15+	Female					Y					340			220	410
RW61242	Site 118			Rwanda		Rwanda	Northern		Northern District		1 - Scale-Up: Saturation	N	M2320	Alpha Health	USAID	17359	IM Program							Facility		TX_CURR	N	Direct		Age/Sex/HIVStatus						<15	Female					Y					340			150	0
RW62644	Site 71			Rwanda		Rwanda	Western		Western District		1 - Scale-Up: Saturation	N	M3243	Beta Care	Dedup	19014	IM Program							Facility		TX_CURR	N	Direct		Age/Sex/HIVStatus						15+	Female					Y					99			99	99
RW46493	Site 91			Rwanda		Rwanda	Northern		Northern District		1 - Scale-Up: Saturation	N	M6878	Beta Care	Dedup	13780	IM Program							Facility		TX_CURR	N	Direct		Age/Sex/HIVStatus						15+	Female					Y					99			99	99
RW29781	Site 11			Rwanda		Rwanda	Eastern		Eastern District		1 - Scale-Up: Saturation	N	M3478	Alpha Health	Dedup	13822	IM Program							Facility		TX_CURR	N	Direct		Age/Sex/HIVStatus						15+	Female					Y					99			99	99
RW11581	Site 63			Rwanda		Rwanda	Southern		Southern District		1 - Scale-Up: Saturation	N	M3987	Beta Care	USAID	14619	IM Program							Facility		TX_CURR	N	Direct		Age/Sex/HIVStatus						15+	Female					N					50			60	70
RW10536	Site 19			Rwanda		Rwanda	Northern		Northern District		1 - Scale-Up: Saturation	N	M9758	Beta Care	USAID	19991	IM Program							Facility		TX_CURR	N	Direct		Age/Sex/HIVStatus						15+	Female					N					50			60	70
RW84231	Site 41			Rwanda		Rwanda	Eastern		Eastern District		1 - Scale-Up: Saturation	N	M9445	Alpha Health	USAID	17481	IM Program							Facility		TX_CURR	N	Direct		Age/Sex/HIVStatus						15+	Female					N					50			60	70
RW99204	Site 103			Rwanda		Rwanda	Southern		Southern District		1 - Scale-Up: Saturation	N	M7428	Beta Care	USAID	16536	IM Program							Facility		HTS_TST_POS	N	Direct		Age/Sex/HIVStatus						15+	Female					Y					5			6	7
RW61658	Site 14			Rwanda		Rwanda	Northern		Northern District		1 - Scale-Up: Saturation	N	M7560	Alpha Health	USAID	13122	IM Program							Facility		HTS_TST_POS	N	Direct		Age/Sex/HIVStatus						15+	Female					Y					5			6	7
RW18827	Site 27			Rwanda		Rwanda	Northern		Northern District		1 - Scale-Up: Saturation	N	M3659	Alpha Health	USAID	15571	IM Program							Facility		HTS_TST_POS	N	Direct		Age/Sex/HIVStatus						15+	Female					Y					5			6	7
RW88738	Site 7			Rwanda		Rwanda	Kigali		Kigali District		1 - Scale-Up: Saturation	N	M1003	Alpha Health	USAID	18791	IM Program							Facility		TX_CURR	N	Direct		Age/Sex/HIVStatus						15+	Female					Y					0			0	0
RW23299	Site 47			Rwanda		Rwanda	Southern		Southern District		1 - Scale-Up: Saturation	N	M1417	Alpha Health	USAID	13407	IM Program							Facility		TX_CURR	N	Direct		Age/Sex/HIVStatus						15+	Female					Y					0			0	0
;
RUN;



/*Creating SiteID variable from Facility, Community, and Military UID
  Creating */
data &ou._1;
set &ou;
where indicator = "TX_CURR" AND isMCAD = "Y";
rename orgUnitUID = SiteID;
if fundingagency = "Dedup" then delete;
RUN;



***Only Fy18 uses age/sex/result and age aggregated/sex/result, so keep only those rows for Fy18. Drop Fy17 values for those disaggs**;
 data &ou._2;
 set &ou._1;
drop FY2017_TARGETS
FY2017Q1
FY2017Q2
FY2017Q3
FY2017APR
FY2018_TARGETS;
 run;


 ***deleting blank rows from FactView to shorten file size***;
data &ou._3;
set &ou._2;
if Fy2017Q4 = 0 then Fy2017Q4 = .;
if Fy2018Q1 = 0 then Fy2018Q1 = .;
if Fy2018Q2 = 0 then Fy2018Q2 = .;
if FY2017Q4 = . & Fy2018Q1 = . & Fy2018Q2 =. then delete;
run; 


/*Arranging the data for output*/
data &ou._4;
retain
OperatingUnit
SNU1
PSNU
PrimePartner
FundingAgency
MechanismID
ImplementingMechanismName
indicator
numeratorDenom
indicatorType
standardizeddisaggregate
FY2017Q4
FY2018Q1
Fy2018Q2
SiteID
SiteType
SiteName
isMCAD
agecoarse;
set &ou._3;
keep 
OperatingUnit
SNU1
PSNU
PrimePartner
FundingAgency
MechanismID
ImplementingMechanismName
indicator
numeratorDenom
indicatorType
standardizeddisaggregate
FY2017Q4
FY2018Q1
Fy2018Q2
SiteID
SiteType
SiteName
isMCAD
agecoarse;
RUN;


***make time periods into long format***;

data &ou._17q4;
length timeperiod $10. value $10.;
set &ou._4;
drop Fy2018Q1 Fy2018q2;
timeperiod = "FY2017Q4";
value = FY2017Q4;

data &ou._18Q1;
length timeperiod $10. value $10.;
set &ou._4;
drop FY2017Q4 FY2018Q2;
timeperiod = "FY2018Q1";
value = FY2018Q1;

data &ou._18Q2;
length timeperiod $10. value $10.;
set &ou._4;
drop FY2017Q4 FY2018Q1;
timeperiod = "FY2018Q2";
value  = FY2018Q2;
run; 


data &ou;
set &ou._17q4 &ou._18q1 &ou._18q2;
drop FY2017Q4 FY2018Q1 FY2018Q2;
if value = . then delete;
drop value;
sitecount = 1;
run;

proc sort data = &ou nodupkey;
by sitename mechanismID timeperiod agecoarse;
run;

proc datasets library=work nolist;
delete &ou._1 &ou._2 &ou._3 &ou._4 &ou._17q4 &ou._18q1 &ou._18q2;
run;
quit;


%mend artcount;

/* invoke the macro for one operating unit against the inline sample */
%artcount (Rwanda, 'Rwanda');

/* self-verify: the long-format site counts the macro produced */
proc freq data = Rwanda;
  tables timeperiod agecoarse / nocum;
run;
proc print data = Rwanda (obs=20); run;
