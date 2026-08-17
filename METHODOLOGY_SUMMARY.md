# Methodology Summary

## Contract universe

The project specification provided rough-rice futures contracts with delivery months:

- January (`F`)
- March (`H`)
- May (`K`)
- July (`N`)
- September (`U`)
- November (`X`)

The supplied contract set spans expirations from January 2007 through March 2010.

## Source schema

Each raw contract file uses the fields:

- `symbol`
- `date`
- `open`
- `high`
- `low`
- `settle`
- `volume`
- `open_interest`

## Nearby-series concept

The assignment defines the nearby series as the price of the contract **closest to expiration but prior to the first trading day of its expiration month**.

Example logic from the assignment:
- January and February 2007 use the March 2007 contract.
- March and April 2007 use the May 2007 contract.

## Submitted implementation

The retained SAS code imports individual contract files, combines them, extracts month codes, retains a settlement price/symbol, exports to Excel, and plots the result.

Because the exact submitted implementation does not clearly enforce the assignment's stated rollover rule, it is preserved for provenance and flagged for final validation rather than silently rewritten.
