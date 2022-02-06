****ASSIGNMENT PROBLEM SET 1
**GROUP 2: BLOOMINGTON 

***DUE DATE 
*02/9/2022

***GIVE A TITLE
* Group2_PS1_IR602A1_Spring22.do

** GROUP 2 ORANGE
** GROUP MEMBER NAMES
*1 Maggie Toombs
*2 Cori Barnes
*3 Alex Gurrola
*4 Shihan Liu

****begin working in STATA

*OPEN your dataset
*-----------------

*Set a working directory for STATA

* Alex
*cd "\\casfs.bu.edu\class_folders\ir_602_a1\Students\agurrola\STATA\Raw_Data"

* Cori
cd "/Users/corrinbarnes/IR602/RawData/"


*Open raw dataset in STATA using the "use" command
use PS1_P1_G2_Hate_Crimes_Bloomington.dta, clear


*Change directory to clean data

* Alex
*cd "\\casfs.bu.edu\class_folders\ir_602_a1\Students\agurrola\STATA\Clean_Data"

*Cori
cd "/Users/corrinbarnes/IR602/CleanData/"


*Save file to clean data
*-----------------------

save PS1_P1_G2_Hate_Crimes_Bloomington_Clean.dta, replace


*NOW EXPLORE the data 
*--------------------



*Clean the data 
*--------------

* This is where you create new variables, clean any other variables that you need for your analysis, and save a clean data set in the Clean Data folder for analysis.

*ADD YOUR COMMANDS HERE, FOR EXAMPLE:
*Rename variables for convenience

rename location_type LocationType
rename VictimGender VictimSex
rename Sex_N SexBinary

label variable LocationType "location of crime (bar, park, school, etc)" 
label variable MotivationofCrime "bias motivating the crime (race, religion, gender, sexual orientation, ethnicity, etc)"
label variable OffenseType "type (category) of offense (harassment, assault, vandalism etc)"
label variable VictimRace "race of complaintant (Black, White, Hispanic, Asian, etc)"
label variable VictimSex "sex of complaintant (male, female)"
label variable SexBinary "0 is male, 1 is female"


***QUESTION 1
*Create a single table to report variables (sex)

sum VictimSex



***QUESTION 2
*Tabulate Location, Motivation, Offense Type, Race

tab LocationType 
tab MotivationofCrime 
tab OffenseType 
tab VictimRace

***QUESTION 3
* A) Report the racial and gender profiles of the complainants i.e. total number of men and women by race. 

* males by race
tab VictimRace if SexBinary==0 
* females by race
tab VictimRace if SexBinary==1

* B) Report the racial and gender profiles of complainants reporting Physical Abuse.
tab VictimRace VictimSex if OffenseType=="Aggravated Battery"|OffenseType=="Aggravated Battery (att)"|OffenseType=="Simple Assault"|OffenseType=="Simple Assault/DC"

* C) Of the Black female complainants in the dataset, what proportion of Black women reported Abuse of Authority and Physical Abuse respectively? 
tab OffenseType if VictimRace=="B"&VictimSex=="F"








