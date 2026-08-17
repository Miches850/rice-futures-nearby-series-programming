# Reproducibility Notes

This repository preserves the submitted project honestly, but several items should be resolved before calling it a fully validated nearby-futures implementation.

## 1. Missing raw contract CSV files

The project originally used 20 CSV files. They were not retained with the current artifact set.

The derived workbook, code, report, and plot remain available, but the full pipeline cannot presently be rerun from raw source files.

## 2. Submitted contract-selection logic requires validation

The project specification defines the Nearby contract as the contract closest to expiration **before the first trading day of the expiration month**.

The submitted code:
- stacks contracts;
- sorts by date;
- extracts the last symbol character;
- checks whether the code belongs to the valid month-code set;
- assigns the first row encountered for each date.

Because every listed delivery-month code is considered valid, this does not by itself rank contracts by time to expiration or explicitly exclude a contract once its expiration month begins.

This should be corrected in a final reproducibility pass rather than silently altered here.

## 3. Multiple observations can be output for the same date

The `output;` statement occurs for every row in the combined dataset, while `nearby_settle` and `nearby_symbol` are retained.

This can produce repeated rows for a date carrying the same retained nearby values.

A validated nearby dataset should normally contain one observation per trading date.

## 4. Requested analysis period vs. submitted plot

The project specification requests a nearby series from the first trading day of 2007 through the last trading day of 2009.

The submitted plot visibly spans roughly late 2005 through early 2010.

The final correction pass should filter the validated nearby series to the requested 2007-2009 period.

## 5. Date-format wording is inconsistent

The assignment text describes dates as `DD/MM/YYYY`, while its own SAS example uses `mmddyy10.` and the submitted code also uses `mmddyy10.`

The original CSV files are needed to verify the correct parsing convention directly.

## 6. First-difference interpretation

The submitted discussion appropriately notes that contract rollovers can create artificial jumps in a continuous futures series.

Once the nearby roll logic is corrected, rollover dates should be marked explicitly before interpreting first differences, volatility spikes, or price discontinuities.

## Recommended publication position

The repository is useful now as evidence of SAS programming, multi-file ingestion, data integration, Excel export, and time-series visualization.

Until the raw files and rollover logic are restored and validated, describe it as a **submitted academic programming project** rather than a fully audited continuous-futures data pipeline.
