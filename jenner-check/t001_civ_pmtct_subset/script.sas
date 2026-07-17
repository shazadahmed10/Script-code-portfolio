***********************************************
Purpose: Subsetting CIV site data for TX_NEW, HTS_POS and all PMTCT indicators
Date: 6/18/2018
Step: Import, subset, trim down file size, export
**********************************************;

/*STEP 1: Import Site Level Data*/
/* infile path redirected from an absolute Windows path to an inline sample
   (tab-delimited, same MSD column layout the original read); logic unchanged. */

data CIV;
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
informat PrimePartner $100. ;
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
informat indicator $100. ;
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
format PrimePartner $100. ;
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
format indicator $100. ;
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
OU13278	Site 190	Comoe	RG350	Cote d'Ivoire	CIV001	Cote d'Ivoire	Comoe	S38	Comoe District	P242	1 - Scale-Up: Saturation	N	M2679	Gamma Clinic Network	USAID	19674	IM Program	C532	Community 3		F130	Facility 6		Facility	DE4582	TX_NEW	N	Direct	Age/Sex	Age/Sex	CO338	15-19, Female	15-19	15-19	15-19	15+	Female			15+		Y	13	366	279	229	414	388	357	142	
OU23396	Site 24	Denguele	RG199	Cote d'Ivoire	CIV001	Cote d'Ivoire	Denguele	S55	Denguele District	P967	1 - Scale-Up: Saturation	N	M6635	Gamma Clinic Network	HHS/CDC	10711	IM Program	C847	Community 30		F649	Facility 8		Facility	DE7201	PMTCT_STAT	N	Direct	Age/Sex	Age/Sex	CO180	15-19, Female	15-19	15-19	15-19	15+	Female			15+		Y	424	453	295			395			
OU59823	Site 72	Denguele	RG750	Cote d'Ivoire	CIV001	Cote d'Ivoire	Denguele	S56	Denguele District	P266	1 - Scale-Up: Saturation	N	M7065	Beta Care	USAID	14374	IM Program	C818	Community 44		F763	Facility 5		Facility	DE3803	TX_NEW	N	Direct	Age/Sex	Age/Sex	CO646	15-19, Female	15-19	15-19	15-19	15+	Female			15+		Y	83	138	327	112	431	28			137
OU37653	Site 146	Comoe	RG317	Cote d'Ivoire	CIV001	Cote d'Ivoire	Comoe	S93	Comoe District	P611	1 - Scale-Up: Saturation	N	M7482	Gamma Clinic Network	HHS/CDC	12340	IM Program	C371	Community 9		F352	Facility 48		Facility	DE9830	TX_NEW	N	Direct	Age/Sex	Age/Sex	CO369	15-19, Female	15-19	15-19	15-19	15+	Female			15+		Y	219	204	70	46	440		405	305	
OU88104	Site 120	Goh-Djiboua	RG357	Cote d'Ivoire	CIV001	Cote d'Ivoire	Goh-Djiboua	S80	Goh-Djiboua District	P981	1 - Scale-Up: Saturation	N	M1188	Gamma Clinic Network	USAID	18797	IM Program	C868	Community 18		F887	Facility 42		Facility	DE6573	PMTCT_ART	N	Direct	Age/Sex	Age/Sex	CO214	15-19, Female	15-19	15-19	15-19	15+	Female			15+		Y				368		91	54	152	259
OU36071	Site 40	Comoe	RG880	Cote d'Ivoire	CIV001	Cote d'Ivoire	Comoe	S30	Comoe District	P652	1 - Scale-Up: Saturation	N	M9689	Alpha Health	HHS/CDC	18005	IM Program	C119	Community 8		F471	Facility 20		Facility	DE4923	PMTCT_EID	N	Direct	Age/Sex	Age/Sex	CO159	15-19, Female	15-19	15-19	15-19	15+	Female			15+		Y		40		35	272	65	484	135	310
OU37760	Site 139	Bas-Sassandra	RG830	Cote d'Ivoire	CIV001	Cote d'Ivoire	Bas-Sassandra	S49	Bas-Sassandra District	P508	1 - Scale-Up: Saturation	N	M7118	Beta Care	HHS/CDC	11982	IM Program	C353	Community 15		F165	Facility 22		Facility	DE1344	PMTCT_ART	N	Direct	Age/Sex	Age/Sex	CO702	15-19, Female	15-19	15-19	15-19	15+	Female			15+		Y	301			117			263		109
OU27342	Site 186	Goh-Djiboua	RG690	Cote d'Ivoire	CIV001	Cote d'Ivoire	Goh-Djiboua	S70	Goh-Djiboua District	P348	1 - Scale-Up: Saturation	N	M8749	Beta Care	USAID	11545	IM Program	C199	Community 43		F541	Facility 23		Facility	DE7939	PMTCT_EID	N	Direct	Age/Sex	Age/Sex	CO520	15-19, Female	15-19	15-19	15-19	15+	Female			15+		Y	373		330		173	55			216
OU46509	Site 119	Bas-Sassandra	RG995	Cote d'Ivoire	CIV001	Cote d'Ivoire	Bas-Sassandra	S19	Bas-Sassandra District	P553	1 - Scale-Up: Saturation	N	M2604	Alpha Health	USAID	11528	IM Program	C871	Community 16		F270	Facility 27		Facility	DE8956	HTS_TST_POS	N	Direct	Age/Sex	Age/Sex	CO592	15-19, Female	15-19	15-19	15-19	15+	Female			15+		Y		30			474	232		374	284
OU30289	Site 49	Comoe	RG322	Cote d'Ivoire	CIV001	Cote d'Ivoire	Comoe	S17	Comoe District	P693	1 - Scale-Up: Saturation	N	M9883	Alpha Health	HHS/CDC	10936	IM Program	C151	Community 38		F588	Facility 33		Facility	DE9701	PMTCT_ART	N	Direct	Age/Sex	Age/Sex	CO261	15-19, Female	15-19	15-19	15-19	15+	Female			15+		Y		435		345	206		126	20	214
OU84085	Site 134	Comoe	RG367	Cote d'Ivoire	CIV001	Cote d'Ivoire	Comoe	S36	Comoe District	P785	1 - Scale-Up: Saturation	N	M6147	Alpha Health	HHS/CDC	16484	IM Program	C234	Community 43		F760	Facility 20		Facility	DE8491	PMTCT_EID	N	Direct	Age/Sex	Age/Sex	CO423	15-19, Female	15-19	15-19	15-19	15+	Female			15+		Y	479		288	37	259		451		
OU30676	Site 113	Goh-Djiboua	RG820	Cote d'Ivoire	CIV001	Cote d'Ivoire	Goh-Djiboua	S48	Goh-Djiboua District	P726	1 - Scale-Up: Saturation	N	M9666	Alpha Health	HHS/CDC	11697	IM Program	C999	Community 9		F370	Facility 8		Facility	DE2753	PMTCT_STAT	N	Direct	Age/Sex	Age/Sex	CO860	15-19, Female	15-19	15-19	15-19	15+	Female			15+		Y	139			351	135	128	433		424
OU15778	Site 1	Comoe	RG889	Cote d'Ivoire	CIV001	Cote d'Ivoire	Comoe	S26	Comoe District	P752	1 - Scale-Up: Saturation	N	M5291	Alpha Health	HHS/CDC	19038	IM Program	C822	Community 28		F674	Facility 1		Facility	DE2832	PMTCT_STAT	N	Direct	Age/Sex	Age/Sex	CO177	15-19, Female	15-19	15-19	15-19	15+	Female			15+		Y	353	279		282			460	497	460
OU37535	Site 175	Bas-Sassandra	RG782	Cote d'Ivoire	CIV001	Cote d'Ivoire	Bas-Sassandra	S23	Bas-Sassandra District	P462	1 - Scale-Up: Saturation	N	M7658	Gamma Clinic Network	USAID	13878	IM Program	C985	Community 11		F919	Facility 12		Facility	DE7755	PMTCT_STAT	N	Direct	Age/Sex	Age/Sex	CO125	15-19, Female	15-19	15-19	15-19	15+	Female			15+		Y		400	410	376	136		195	439	102
OU55830	Site 79	Bas-Sassandra	RG328	Cote d'Ivoire	CIV001	Cote d'Ivoire	Bas-Sassandra	S13	Bas-Sassandra District	P775	1 - Scale-Up: Saturation	N	M4164	Beta Care	HHS/CDC	14564	IM Program	C985	Community 5		F891	Facility 18		Facility	DE6753	PMTCT_ART	N	Direct	Age/Sex	Age/Sex	CO756	15-19, Female	15-19	15-19	15-19	15+	Female			15+		Y									
OU62386	Site 174	Goh-Djiboua	RG439	Cote d'Ivoire	CIV001	Cote d'Ivoire	Goh-Djiboua	S13	Goh-Djiboua District	P218	1 - Scale-Up: Saturation	N	M5279	Alpha Health	HHS/CDC	10626	IM Program	C211	Community 39		F544	Facility 23		Facility	DE6139	PMTCT_EID	N	Direct	Age/Sex	Age/Sex	CO546	15-19, Female	15-19	15-19	15-19	15+	Female			15+		Y									
OU77033	Site 30	Denguele	RG690	Cote d'Ivoire	CIV001	Cote d'Ivoire	Denguele	S34	Denguele District	P360	1 - Scale-Up: Saturation	N	M1727	Gamma Clinic Network	HHS/CDC	10027	IM Program	C632	Community 35		F803	Facility 47		Facility	DE4228	PMTCT_EID	N	Direct	Age/Sex	Age/Sex	CO472	15-19, Female	15-19	15-19	15-19	15+	Female			15+		Y									
OU19171	Site 171	Comoe	RG738	Cote d'Ivoire	CIV001	Cote d'Ivoire	Comoe	S50	Comoe District	P779	1 - Scale-Up: Saturation	N	M3041	Gamma Clinic Network	HHS/CDC	18308	IM Program	C416	Community 43		F518	Facility 21		Facility	DE7592	OVC_SERV	N	Direct	Age/Sex	Age/Sex	CO813	15-19, Female	15-19	15-19	15-19	15+	Female			15+		Y			481	383	315	207	0	107	296
OU70946	Site 114	Denguele	RG791	Cote d'Ivoire	CIV001	Cote d'Ivoire	Denguele	S37	Denguele District	P623	1 - Scale-Up: Saturation	N	M8752	Gamma Clinic Network	USAID	11389	IM Program	C390	Community 33		F779	Facility 41		Facility	DE6491	TX_CURR	N	Direct	Age/Sex	Age/Sex	CO195	15-19, Female	15-19	15-19	15-19	15+	Female			15+		Y	384		412				435	233	322
OU60328	Site 127	Denguele	RG349	Cote d'Ivoire	CIV001	Cote d'Ivoire	Denguele	S28	Denguele District	P771	1 - Scale-Up: Saturation	N	M1090	Alpha Health	HHS/CDC	13585	IM Program	C280	Community 45		F630	Facility 30		Facility	DE1822	VMMC_CIRC	N	Direct	Age/Sex	Age/Sex	CO670	15-19, Female	15-19	15-19	15-19	15+	Female			15+		Y		233		271	304	386	313	456	425
OU30861	Site 191	Denguele	RG560	Cote d'Ivoire	CIV001	Cote d'Ivoire	Denguele	S43	Denguele District	P869	1 - Scale-Up: Saturation	N	M5050	Gamma Clinic Network	HHS/CDC	18540	IM Program	C596	Community 41		F344	Facility 18		Facility	DE8206	OVC_SERV	N	Direct	Age/Sex	Age/Sex	CO179	15-19, Female	15-19	15-19	15-19	15+	Female			15+		Y	120		276			78	32	169	212
OU37110	Site 108	Denguele	RG888	Cote d'Ivoire	CIV001	Cote d'Ivoire	Denguele	S84	Denguele District	P812	1 - Scale-Up: Saturation	N	M1320	Gamma Clinic Network	HHS/CDC	17814	IM Program	C106	Community 23		F405	Facility 49		Facility	DE7389	TB_STAT	N	Direct	Age/Sex	Age/Sex	CO973	15-19, Female	15-19	15-19	15-19	15+	Female			15+		Y	427	382	409	112	139	14	342	207	430
OU26728	Site 160	Goh-Djiboua	RG127	Cote d'Ivoire	CIV001	Cote d'Ivoire	Goh-Djiboua	S60	Goh-Djiboua District	P706	1 - Scale-Up: Saturation	N	M1444	Alpha Health	HHS/CDC	12223	IM Program	C987	Community 30		F286	Facility 4		Facility	DE5262	OVC_SERV	N	Direct	Age/Sex	Age/Sex	CO488	15-19, Female	15-19	15-19	15-19	15+	Female			15+		Y	232	389	142	425	427			487	332
;
RUN;

/*STEP 2: Subset for inidicators needed*/

data civ2;
set civ;
where indicator IN ("TX_NEW", "HTS_TST_POS") OR substr(indicator, 1, 5) = 'PMTCT';
run;

/*STEP 3: drop unnecessary variables and empty rows*/

data civ3;
set civ2;
drop region regionuid operatingunituid snu1uid psnuuid mechanismuid communityuid facilityuid dataelementuid operatingunit countryname;
if (FY2017_TARGETS = . & FY2017Q1 = . & FY2017Q2 = . & FY2017Q3 = . & FY2017Q4 = . & FY2017APR = . & FY2018_TARGETS = . &
FY2018Q1 = . & FY2018Q2 = .) then delete;
run;


/*STEP 4: Export as excel dataset*/

/*STEP 4: Export subset (path redirected to a relative CSV for this bundle)*/
proc export data = civ3
  dbms = csv outfile = "./CIV_PMTCT.csv"
  replace;
run;

/* show the subset in the listing so the run is self-verifying */
proc print data = civ3 (obs=20); run;
