*******************************
Programmer: Shazad Ahmed
Purpose: Key-population site list & KP share of HTS_TST (FY19)
*******************************;
/* Ships the %kp macro and the SQL aggregation that follows it, unchanged
   except that the macro's infile (an absolute-path .txt per operating unit)
   reads an inline sample built to the script's own input schema, and the
   35-operating-unit stack is reduced to the one unit invoked here (Rwanda). */
options compress = yes;

%macro kp (nxt);

data test;
infile datalines dlm='09'x MISSOVER DSD lrecl=32767;
informat orgunituid $50. ;
informat SiteName $100. ;
informat Region $255. ;
informat RegionUID $50. ;
informat OperatingUnit $255. ;
informat OperatingUnitUID $50. ;
informat CountryName $255. ;
informat SNU1 $255. ;
informat SNU1Uid $50. ;
informat PSNU $255. ;
informat PSNUuid $50. ;
informat SNUPrioritization $26. ;
informat typeMilitary $1. ;
informat DREAMS $10. ;
informat PrimePartner $250. ;
informat FundingAgency $30. ;
informat mech_code $32.;
informat mech_name $350. ;
informat pre_rgnlztn_hq_mech_code $50.;
informat prime_partner_duns $50. ; 
informat award_number $50. ; 
informat CommunityUID $50. ; 
informat Community $75.;   
informat CommunityPrioritization $50.;   
informat FacilityUID $50. ;
informat Facility $75.;  
informat FacilityPrioritization  $50.;
informat SiteType $20. ;  
informat indicator $255. ;
informat numeratorDenom $2. ;
informat indicatorType $25. ;
informat disaggregate $50. ;
informat standardizeddisaggregate $55. ;
informat categoryOptionComboName $50. ;
informat AgeAsEntered $50. ;
informat TrendsFine $50. ;
informat TrendsSemiFine $50. ;
informat TrendsCoarse $50. ;
informat Sex $50. ;
informat StatusHIV $50. ;
informat StatusTB $50. ;
informat StatusCX $50. ;
informat hiv_treatment_status $25. ; 
informat population $50. ;
informat otherDisaggregate $50. ;
informat coarseDisaggregate $10. ;
informat modality $50.;
informat Fiscal_year $15.; 
informat TARGETS BEST32.;
informat Qtr1 BEST32.;
informat Qtr2 BEST32.;
informat Qtr3 BEST32.;
informat Qtr4 BEST32.;
informat Cumulative BEST32.;


format orgunituid $50. ;
format SiteName $100. ;
format Region $255. ;
format RegionUID $50. ;
format OperatingUnit $255. ;
format OperatingUnitUID $50. ;
format CountryName $255. ;
format SNU1 $255. ;
format SNU1Uid $50. ;
format PSNU $255. ;
format PSNUuid $50. ;
format SNUPrioritization $26. ;
format typeMilitary $1. ;
format DREAMS $10. ;
format PrimePartner $250. ;
format FundingAgency $30. ;
format mech_code $32.;
format mech_name $350. ;
format pre_rgnlztn_hq_mech_code $50.;
format prime_partner_duns $50. ; 
format award_number $50. ; 
format CommunityUID $50. ; 
format Community $75.;   
format CommunityPrioritization $50.;   
format FacilityUID $50. ;
format Facility $75.;  
format FacilityPrioritization  $50.;
format SiteType $20. ;  
format indicator $255. ;
format numeratorDenom $2. ;
format indicatorType $25. ;
format disaggregate $50. ;
format standardizeddisaggregate $55. ;
format categoryOptionComboName $50. ;
format AgeAsEntered $50. ;
format TrendsFine $50. ;
format TrendsSemiFine $50. ;
format TrendsCoarse $50. ;
format Sex $50. ;
format StatusHIV $50. ;
format StatusTB $50. ;
format StatusCX $50. ;
format hiv_treatment_status $25. ; 
format population $50. ;
format otherDisaggregate $50. ;
format coarseDisaggregate $10. ;
format modality $50.;
format Fiscal_year $15.; 
format TARGETS BEST32.;
format Qtr1 BEST32.;
format Qtr2 BEST32.;
format Qtr3 BEST32.;
format Qtr4 BEST32.;
format Cumulative BEST32.;




input 
orgunituid $
SiteName $
Region $
RegionUID $
OperatingUnit $
OperatingUnitUID $
CountryName $
SNU1 $
SNU1Uid $
PSNU $
PSNUuid $
SNUPrioritization $
typeMilitary $
DREAMS $
PrimePartner $
FundingAgency $
mech_code $
mech_name $
pre_rgnlztn_hq_mech_code $
prime_partner_duns $
award_number $ 
CommunityUID $
Community $   
CommunityPrioritization $   
FacilityUID $
Facility $
FacilityPrioritization  $
SiteType $
indicator $
numeratorDenom $
indicatorType $
disaggregate $
standardizeddisaggregate $
categoryOptionComboName $
AgeAsEntered $
TrendsFine $
TrendsSemiFine $
TrendsCoarse $
Sex $
StatusHIV $
StatusTB $
StatusCX $
hiv_treatment_status $ 
population $ 
otherDisaggregate $
coarseDisaggregate $
modality $
Fiscal_year $ 
TARGETS
Qtr1
Qtr2
Qtr3
Qtr4
Cumulative;
datalines;
RW01000	Site 0			Rwanda		Rwanda	Kigali		PSNU 0			N		Alpha Health	USAID	71000	IM Program										Facility	HTS_TST	N	Direct		Total Numerator						Female									2019						631
RW01000	Site 0			Rwanda		Rwanda	Kigali		PSNU 0			N		Alpha Health	USAID	71000	IM Program										Facility	HTS_TST	N	Direct		KeyPop/Result						Female									2019						111
RW01000	Site 0			Rwanda		Rwanda	Kigali		PSNU 0			N		Alpha Health	USAID	71000	IM Program										Facility	HTS_TST	N	Direct		KeyPop/Result						Female									2019						99
RW01000	Site 0			Rwanda		Rwanda	Kigali		PSNU 0			N		Alpha Health	USAID	71000	IM Program										Facility	KP_PREV	N	Direct		KeyPop						Female									2019						67
RW01000	Site 0			Rwanda		Rwanda	Kigali		PSNU 0			N		Alpha Health	USAID	71000	IM Program										Facility	HTS_TST	N	Direct		Age/Sex						Female									2019						37
RW01000	Site 0			Rwanda		Rwanda	Kigali		PSNU 0			N		Alpha Health	USAID	71000	IM Program										Facility	TB_STAT	N	Direct		Total Numerator						Female									2019						42
RW01000	Site 0			Rwanda		Rwanda	Kigali		PSNU 0			N		Alpha Health	USAID	71000	IM Program										Facility	HTS_TST	N	Direct		Total Numerator						Female									2018						17
RW01000	Site 0			Rwanda		Rwanda	Kigali		PSNU 0			N		Alpha Health	USAID	71000	IM Program										Community	HTS_TST	N	Direct		Total Numerator						Female									2019						16
RW01001	Site 1			Rwanda		Rwanda	Kigali		PSNU 1			N		Alpha Health	USAID	71001	IM Program										Facility	HTS_TST	N	Direct		Total Numerator						Female									2019						811
RW01001	Site 1			Rwanda		Rwanda	Kigali		PSNU 1			N		Alpha Health	USAID	71001	IM Program										Facility	HTS_TST	N	Direct		KeyPop/Result						Female									2019						105
RW01001	Site 1			Rwanda		Rwanda	Kigali		PSNU 1			N		Alpha Health	USAID	71001	IM Program										Facility	HTS_TST	N	Direct		KeyPop/Result						Female									2019						100
RW01001	Site 1			Rwanda		Rwanda	Kigali		PSNU 1			N		Alpha Health	USAID	71001	IM Program										Facility	KP_PREV	N	Direct		KeyPop						Female									2019						90
RW01001	Site 1			Rwanda		Rwanda	Kigali		PSNU 1			N		Alpha Health	USAID	71001	IM Program										Facility	HTS_TST	N	Direct		Age/Sex						Female									2019						44
RW01001	Site 1			Rwanda		Rwanda	Kigali		PSNU 1			N		Alpha Health	USAID	71001	IM Program										Facility	TB_STAT	N	Direct		Total Numerator						Female									2019						16
RW01001	Site 1			Rwanda		Rwanda	Kigali		PSNU 1			N		Alpha Health	USAID	71001	IM Program										Facility	HTS_TST	N	Direct		Total Numerator						Female									2018						11
RW01001	Site 1			Rwanda		Rwanda	Kigali		PSNU 1			N		Alpha Health	USAID	71001	IM Program										Community	HTS_TST	N	Direct		Total Numerator						Female									2019						33
RW01002	Site 2			Rwanda		Rwanda	Kigali		PSNU 2			N		Alpha Health	USAID	71002	IM Program										Facility	HTS_TST	N	Direct		Total Numerator						Female									2019						555
RW01002	Site 2			Rwanda		Rwanda	Kigali		PSNU 2			N		Alpha Health	USAID	71002	IM Program										Facility	HTS_TST	N	Direct		KeyPop/Result						Female									2019						58
RW01002	Site 2			Rwanda		Rwanda	Kigali		PSNU 2			N		Alpha Health	USAID	71002	IM Program										Facility	HTS_TST	N	Direct		KeyPop/Result						Female									2019						51
RW01002	Site 2			Rwanda		Rwanda	Kigali		PSNU 2			N		Alpha Health	USAID	71002	IM Program										Facility	KP_PREV	N	Direct		KeyPop						Female									2019						78
RW01002	Site 2			Rwanda		Rwanda	Kigali		PSNU 2			N		Alpha Health	USAID	71002	IM Program										Facility	HTS_TST	N	Direct		Age/Sex						Female									2019						49
RW01002	Site 2			Rwanda		Rwanda	Kigali		PSNU 2			N		Alpha Health	USAID	71002	IM Program										Facility	TB_STAT	N	Direct		Total Numerator						Female									2019						45
RW01002	Site 2			Rwanda		Rwanda	Kigali		PSNU 2			N		Alpha Health	USAID	71002	IM Program										Facility	HTS_TST	N	Direct		Total Numerator						Female									2018						7
RW01002	Site 2			Rwanda		Rwanda	Kigali		PSNU 2			N		Alpha Health	USAID	71002	IM Program										Community	HTS_TST	N	Direct		Total Numerator						Female									2019						43
RW01003	Site 3			Rwanda		Rwanda	Kigali		PSNU 3			N		Alpha Health	USAID	71003	IM Program										Facility	HTS_TST	N	Direct		Total Numerator						Female									2019						602
RW01003	Site 3			Rwanda		Rwanda	Kigali		PSNU 3			N		Alpha Health	USAID	71003	IM Program										Facility	HTS_TST	N	Direct		KeyPop/Result						Female									2019						97
RW01003	Site 3			Rwanda		Rwanda	Kigali		PSNU 3			N		Alpha Health	USAID	71003	IM Program										Facility	HTS_TST	N	Direct		KeyPop/Result						Female									2019						118
RW01003	Site 3			Rwanda		Rwanda	Kigali		PSNU 3			N		Alpha Health	USAID	71003	IM Program										Facility	KP_PREV	N	Direct		KeyPop						Female									2019						30
RW01003	Site 3			Rwanda		Rwanda	Kigali		PSNU 3			N		Alpha Health	USAID	71003	IM Program										Facility	HTS_TST	N	Direct		Age/Sex						Female									2019						44
RW01003	Site 3			Rwanda		Rwanda	Kigali		PSNU 3			N		Alpha Health	USAID	71003	IM Program										Facility	TB_STAT	N	Direct		Total Numerator						Female									2019						5
RW01003	Site 3			Rwanda		Rwanda	Kigali		PSNU 3			N		Alpha Health	USAID	71003	IM Program										Facility	HTS_TST	N	Direct		Total Numerator						Female									2018						38
RW01003	Site 3			Rwanda		Rwanda	Kigali		PSNU 3			N		Alpha Health	USAID	71003	IM Program										Community	HTS_TST	N	Direct		Total Numerator						Female									2019						9
RW01004	Site 4			Rwanda		Rwanda	Kigali		PSNU 0			N		Alpha Health	USAID	71004	IM Program										Facility	HTS_TST	N	Direct		Total Numerator						Female									2019						430
RW01004	Site 4			Rwanda		Rwanda	Kigali		PSNU 0			N		Alpha Health	USAID	71004	IM Program										Facility	HTS_TST	N	Direct		KeyPop/Result						Female									2019						44
RW01004	Site 4			Rwanda		Rwanda	Kigali		PSNU 0			N		Alpha Health	USAID	71004	IM Program										Facility	HTS_TST	N	Direct		KeyPop/Result						Female									2019						64
RW01004	Site 4			Rwanda		Rwanda	Kigali		PSNU 0			N		Alpha Health	USAID	71004	IM Program										Facility	KP_PREV	N	Direct		KeyPop						Female									2019						40
RW01004	Site 4			Rwanda		Rwanda	Kigali		PSNU 0			N		Alpha Health	USAID	71004	IM Program										Facility	HTS_TST	N	Direct		Age/Sex						Female									2019						43
RW01004	Site 4			Rwanda		Rwanda	Kigali		PSNU 0			N		Alpha Health	USAID	71004	IM Program										Facility	TB_STAT	N	Direct		Total Numerator						Female									2019						6
RW01004	Site 4			Rwanda		Rwanda	Kigali		PSNU 0			N		Alpha Health	USAID	71004	IM Program										Facility	HTS_TST	N	Direct		Total Numerator						Female									2018						34
RW01004	Site 4			Rwanda		Rwanda	Kigali		PSNU 0			N		Alpha Health	USAID	71004	IM Program										Community	HTS_TST	N	Direct		Total Numerator						Female									2019						25
RW01005	Site 5			Rwanda		Rwanda	Kigali		PSNU 1			N		Alpha Health	USAID	71005	IM Program										Facility	HTS_TST	N	Direct		Total Numerator						Female									2019						625
RW01005	Site 5			Rwanda		Rwanda	Kigali		PSNU 1			N		Alpha Health	USAID	71005	IM Program										Facility	HTS_TST	N	Direct		KeyPop/Result						Female									2019						115
RW01005	Site 5			Rwanda		Rwanda	Kigali		PSNU 1			N		Alpha Health	USAID	71005	IM Program										Facility	HTS_TST	N	Direct		KeyPop/Result						Female									2019						65
RW01005	Site 5			Rwanda		Rwanda	Kigali		PSNU 1			N		Alpha Health	USAID	71005	IM Program										Facility	KP_PREV	N	Direct		KeyPop						Female									2019						76
RW01005	Site 5			Rwanda		Rwanda	Kigali		PSNU 1			N		Alpha Health	USAID	71005	IM Program										Facility	HTS_TST	N	Direct		Age/Sex						Female									2019						19
RW01005	Site 5			Rwanda		Rwanda	Kigali		PSNU 1			N		Alpha Health	USAID	71005	IM Program										Facility	TB_STAT	N	Direct		Total Numerator						Female									2019						45
RW01005	Site 5			Rwanda		Rwanda	Kigali		PSNU 1			N		Alpha Health	USAID	71005	IM Program										Facility	HTS_TST	N	Direct		Total Numerator						Female									2018						23
RW01005	Site 5			Rwanda		Rwanda	Kigali		PSNU 1			N		Alpha Health	USAID	71005	IM Program										Community	HTS_TST	N	Direct		Total Numerator						Female									2019						36
;
run;



data test2;
set test;
where indicator IN ("HTS_RECENT", "HTS_SELF", "HTS_TST", "TX_NEW", "PrEP_CURR", "PrEP_NEW", "KP_PREV");
keep orgUnitUID siteName OperatingUnit SNU1 PSNU PrimePartner fundingagency mech_code mech_name indicator standardizedDisaggregate otherDisaggregate 
sitetype Fiscal_year -- Cumulative;
if Sitetype NE "Facility" then delete;
run;

data test3;
set test2;
if indicator = "HTS_TST" & standardizedDisaggregate NOTIN ("KeyPop/Result", "Total Numerator") then delete;
if indicator = "HTS_RECENT" & standardizedDisaggregate NOTIN ("KeyPop/HIVStatus", "Total Numerator") then delete;
if indicator = "HTS_SELF" & standardizedDisaggregate NOTIN ("KeyPop/HIVSelfTest", "Total Numerator") then delete;
if indicator = "KP_PREV" & standardizedDisaggregate NOTIN ("KeyPop", "Total Numerator") then delete;
if indicator = "PrEP_CURR" & standardizedDisaggregate NOTIN ("KeyPop", "Total Numerator") then delete;
if indicator = "PrEP_NEW" & standardizedDisaggregate NOTIN ("KeyPopAbr", "Total Numerator") then delete;
if indicator = "TX_NEW" & standardizedDisaggregate NOTIN ("KeyPop/HIVStatus", "Total Numerator") then delete;
run;


proc sort data = test3  out = &nxt;
by orgunitUID;
run;

%mend kp;

/* invoke the KP subset macro for one operating unit */
%kp (Rwanda);

data master;
set Rwanda;
run; 

data master2;
set master;
if Targets = . then Targets = 0;
if qtr1 = . then qtr1 = 0;
if qtr2 = . then qtr2 = 0;
if qtr3 = . then qtr3 = 0;
if qtr4 = . then qtr4 = 0;
if cumulative = . then cumulative = 0;
run;

data master3;
set master2;
if (targets = 0 & qtr1 = 0 & qtr2 = 0 & qtr3 = 0 & qtr4 = 0 & cumulative = 0) then delete;
run;



data master19;
set master3;
where fiscal_year = "2019";
drop targets;
run;


*split into indicator datasets**;


*HTS;
data master19hts;
set master19;
where indicator = "HTS_TST";

data master19hts_tn;
set master19hts;
where standardizeddisaggregate = "Total Numerator"; 

data master19hts_kp;
set master19hts;
where standardizeddisaggregate NE "Total Numerator";
run;

proc sql;
create table master19hts_kp as
select orgunituid, sitename, operatingunit, psnu, indicator, sum(cumulative) as kp_cumulative
from master19hts_kp
group by orgunituid;
Quit;

proc sort data = master19hts_kp nodupkey;
by orgunituid;
run;

proc sql;
create table master19hts_tn as
select orgunituid, indicator, sum(cumulative) as tn_cumulative
from master19hts_tn
group by orgunituid;
Quit;

proc sort data = master19hts_tn nodupkey;
by orgunituid;
run;

data master19hts2;
merge master19hts_kp (in=a) master19hts_tn (in=b);
by orgunituid;
if a;
run;

data master19hts3;
set master19hts2;
kp_ratio = (kp_cumulative/tn_cumulative);
run;

data master19hts3;
set master19hts3;
if kp_ratio LT .1 then delete;
run;

/* self-verify: per-site KP share of HTS_TST from the SQL aggregation */
proc print data = master19hts3; run;
