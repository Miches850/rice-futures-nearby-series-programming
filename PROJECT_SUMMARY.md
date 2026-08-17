# Project Summary

## Objective

Use SAS to integrate multiple rough-rice futures contract files and create a settlement-price time series representing a "Nearby" futures contract.

## Programming workflow

1. Define a SAS project library.
2. Import contract-specific CSV files.
3. Assign typed variables for symbol, date, OHLC prices, settlement price, volume, and open interest.
4. Sort contract datasets by date.
5. Stack the contract datasets into a combined dataset.
6. Apply submitted nearby-selection logic.
7. Export the resulting dataset to Excel.
8. Plot the nearby settlement-price series using `PROC SGPLOT`.
9. Discuss the implications of contract rollover for first differences.

## Professional relevance

The project demonstrates practical SAS data-programming skills, including repeated ingestion, schema definition, multi-file integration, BY-group processing, retained values, string parsing, debugging output, Excel export, and financial time-series visualization.
