****;
* Term Project for Michael Shannon, UIN: [redacted];
****;



****;
* Clearing the log window and resetting log line numbering;
**;
dm 'Log' clear;
resetline;
****;



****;
* Creating my libname and data steps;
**;
libname PP 'C:\Users\micha\iCloudDrive\TAMU Stuff\Fall 2024\Ecmt 673.600\SAS Programming Project\Project Data';
**;
**;
* Importing Janurary Contracts- Month Code 'F';
	* This section imports the January contracts for each year from 2007 to 2010 into separate datasets;
**;
data PP.jan2007;
	infile 'C:\Users\micha\iCloudDrive\TAMU Stuff\Fall 2024\Ecmt 673.600\SAS Programming Project\Project Data\RR2007F.csv' dsd missover;
	input symbol $ date:mmddyy10. open high low settle volume open_interest;
	run;
data PP.jan2008;
	infile 'C:\Users\micha\iCloudDrive\TAMU Stuff\Fall 2024\Ecmt 673.600\SAS Programming Project\Project Data\RR2008F.csv' dsd missover;
	input symbol $ date:mmddyy10. open high low settle volume open_interest;
	run;
data PP.jan2009;
    infile 'C:\Users\micha\iCloudDrive\TAMU Stuff\Fall 2024\Ecmt 673.600\SAS Programming Project\Project Data\RR2009F.csv' dsd missover;
    input symbol $ date:mmddyy10. open high low settle volume open_interest;
	run;
data PP.jan2010;
	infile 'C:\Users\micha\iCloudDrive\TAMU Stuff\Fall 2024\Ecmt 673.600\SAS Programming Project\Project Data\RR2010F.csv' dsd missover;
	input symbol $ date:mmddyy10. open high low settle volume open_interest;
	run;
**;
**;
* Importing March Contracts- Month Code 'H';
	* This section imports the March contracts for each year from 2007 to 2010 into separate datasets;
**;
data PP.mar2007;
    infile 'C:\Users\micha\iCloudDrive\TAMU Stuff\Fall 2024\Ecmt 673.600\SAS Programming Project\Project Data\RR2007H.csv' dsd missover;
    input symbol $ date:mmddyy10. open high low settle volume open_interest;
	run;
data PP.mar2008;
    infile 'C:\Users\micha\iCloudDrive\TAMU Stuff\Fall 2024\Ecmt 673.600\SAS Programming Project\Project Data\RR2008H.csv' dsd missover;
    input symbol $ date:mmddyy10. open high low settle volume open_interest;
	run;
data PP.mar2009;
    infile 'C:\Users\micha\iCloudDrive\TAMU Stuff\Fall 2024\Ecmt 673.600\SAS Programming Project\Project Data\RR2009H.csv' dsd missover;
    input symbol $ date:mmddyy10. open high low settle volume open_interest;
	run;
data PP.mar2010;
	infile 'C:\Users\micha\iCloudDrive\TAMU Stuff\Fall 2024\Ecmt 673.600\SAS Programming Project\Project Data\RR2010H.csv' dsd missover;
	input symbol $ date:mmddyy10. open high low settle volume open_interest;
	run;
**;
**;
* Importing May Contracts- Month Code 'K';
	* This section imports the May contracts for each year from 2007 to 2009 into separate datasets;
**;
data PP.may2007;
    infile 'C:\Users\micha\iCloudDrive\TAMU Stuff\Fall 2024\Ecmt 673.600\SAS Programming Project\Project Data\RR2007K.csv' dsd missover;
    input symbol $ date:mmddyy10. open high low settle volume open_interest;
	run;
data PP.may2008;
    infile 'C:\Users\micha\iCloudDrive\TAMU Stuff\Fall 2024\Ecmt 673.600\SAS Programming Project\Project Data\RR2008K.csv' dsd missover;
    input symbol $ date:mmddyy10. open high low settle volume open_interest;
	run;
data PP.may2009;
    infile 'C:\Users\micha\iCloudDrive\TAMU Stuff\Fall 2024\Ecmt 673.600\SAS Programming Project\Project Data\RR2009K.csv' dsd missover;
    input symbol $ date:mmddyy10. open high low settle volume open_interest;
	run;
**;
**;
* Importing July Contracts- Month Code 'N';
	* This section imports the July contracts for each year from 2007 to 2009 into separate datasets;
**;
data PP.jul2007;
    infile 'C:\Users\micha\iCloudDrive\TAMU Stuff\Fall 2024\Ecmt 673.600\SAS Programming Project\Project Data\RR2007N.csv' dsd missover;
    input symbol $ date:mmddyy10. open high low settle volume open_interest;
	run;
data PP.jul2008;
    infile 'C:\Users\micha\iCloudDrive\TAMU Stuff\Fall 2024\Ecmt 673.600\SAS Programming Project\Project Data\RR2008N.csv' dsd missover;
    input symbol $ date:mmddyy10. open high low settle volume open_interest;
	run;
data PP.jul2009;
    infile 'C:\Users\micha\iCloudDrive\TAMU Stuff\Fall 2024\Ecmt 673.600\SAS Programming Project\Project Data\RR2009N.csv' dsd missover;
    input symbol $ date:mmddyy10. open high low settle volume open_interest;
	run;
**;
**;
* Importing September Contracts- Month Code 'U';
	* This section imports the September contracts for each year from 2007 to 2009 into separate datasets;
**;
data PP.sep2007;
    infile 'C:\Users\micha\iCloudDrive\TAMU Stuff\Fall 2024\Ecmt 673.600\SAS Programming Project\Project Data\RR2007U.csv' dsd missover;
    input symbol $ date:mmddyy10. open high low settle volume open_interest;
	run;
data PP.sep2008;
    infile 'C:\Users\micha\iCloudDrive\TAMU Stuff\Fall 2024\Ecmt 673.600\SAS Programming Project\Project Data\RR2008U.csv' dsd missover;
    input symbol $ date:mmddyy10. open high low settle volume open_interest;
	run;
data PP.sep2009;
    infile 'C:\Users\micha\iCloudDrive\TAMU Stuff\Fall 2024\Ecmt 673.600\SAS Programming Project\Project Data\RR2009U.csv' dsd missover;
    input symbol $ date:mmddyy10. open high low settle volume open_interest;
	run;
**;
**;
* Importing November Contracts- Month Code 'X';
	* This section imports the November contracts for each year from 2007 to 2009 into separate datasets;
**;
data PP.nov2007;
    infile 'C:\Users\micha\iCloudDrive\TAMU Stuff\Fall 2024\Ecmt 673.600\SAS Programming Project\Project Data\RR2007X.csv' dsd missover;
    input symbol $ date:mmddyy10. open high low settle volume open_interest;
	run;
data PP.nov2008;
    infile 'C:\Users\micha\iCloudDrive\TAMU Stuff\Fall 2024\Ecmt 673.600\SAS Programming Project\Project Data\RR2008X.csv' dsd missover;
    input symbol $ date:mmddyy10. open high low settle volume open_interest;
	run;
data PP.nov2009;
    infile 'C:\Users\micha\iCloudDrive\TAMU Stuff\Fall 2024\Ecmt 673.600\SAS Programming Project\Project Data\RR2009X.csv' dsd missover;
    input symbol $ date:mmddyy10. open high low settle volume open_interest;
	run;
****;


****;
* Sorting the datasets by their date for each contract group;
**;
proc sort data=PP.jan2007; by date; run;
proc sort data=PP.jan2008; by date; run;
proc sort data=PP.jan2009; by date; run;
proc sort data=PP.jan2010; by date; run;

proc sort data=PP.mar2007; by date; run;
proc sort data=PP.mar2008; by date; run;
proc sort data=PP.mar2009; by date; run;
proc sort data=PP.mar2010; by date; run;

proc sort data=PP.may2007; by date; run;
proc sort data=PP.may2008; by date; run;
proc sort data=PP.may2009; by date; run;

proc sort data=PP.jul2007; by date; run;
proc sort data=PP.jul2008; by date; run;
proc sort data=PP.jul2009; by date; run;

proc sort data=PP.sep2007; by date; run;
proc sort data=PP.sep2008; by date; run;
proc sort data=PP.sep2009; by date; run;

proc sort data=PP.nov2007; by date; run;
proc sort data=PP.nov2008; by date; run;
proc sort data=PP.nov2009; by date; run;
****;


****;
* Combining all datasets into a single dataset for further analysis;
**;
data combined;
    set PP.jan2007 PP.jan2008 PP.jan2009 PP.jan2010
        PP.mar2007 PP.mar2008 PP.mar2009 PP.mar2010
        PP.may2007 PP.may2008 PP.may2009
        PP.jul2007 PP.jul2008 PP.jul2009
        PP.sep2007 PP.sep2008 PP.sep2009
        PP.nov2007 PP.nov2008 PP.nov2009;
    format date mmddyy10.;
run;
**;

**;
* Step to check the combined dataset;
****;
proc print data=combined (obs=10);
    var date symbol settle;
    title "Check of Combined Dataset - First 10 Rows";
run;
****;




****;
* Creating the Nearby series by identifying the contract closest to expiration;
	* This section switches between contracts based on the date to maintain the "Nearby" series continuity.
**;
proc sort data=combined; by date; run;

data nearby;
    set combined;
    by date;
    retain nearby_settle nearby_symbol;

    * Define the expiration month codes for switching contracts;
    array expiration_months[6] $1 _temporary_ ('H', 'K', 'N', 'U', 'X', 'F');

    * Extract the last character from the symbol to determine the contract month code;
    month_code = substr(symbol, length(symbol), 1);

    if first.date then do;
        * Check if the current contract is valid for the given month;
        if month_code in expiration_months then do;
            nearby_settle = settle;
            nearby_symbol = symbol;
        end;
        else do;
            * Debug print in case no matching contract is found;
            put "WARNING: No valid nearby contract found for date=" date " with symbol=" symbol;
        end;
    end;

    * Print each assignment for debugging;
    put "INFO: Assigning nearby_settle=" nearby_settle " for date=" date;
    
    output;
run;
****;


****;
* Exporting the resulting Nearby series to an Excel file for further analysis;
**;
proc export data=nearby
    outfile='C:\Users\micha\iCloudDrive\TAMU Stuff\Fall 2024\Ecmt 673.600\SAS Programming Project\Nearby_Series.xlsx'
    dbms=xlsx replace;
run;
****;


****;
* Plotting the Nearby series to visualize trends in rice futures;
	* The plot helps to understand price fluctuations over the period.;
**;
proc sgplot data=nearby;
    series x=date y=nearby_settle / lineattrs=(thickness=2);
    xaxis label='Date';
    yaxis label='Nearby Settle Price';
    title 'Nearby Series for Rice Futures';
run;
****;
