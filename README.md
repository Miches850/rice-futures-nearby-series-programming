# Rice Futures Nearby Series Programming

**Course:** ECMT 673 - Economic Analytics  
**Primary tool:** SAS  
**Project focus:** Commodity-futures data ingestion, contract-file integration, nearby-series construction, Excel export, and time-series visualization

## Project overview

This repository documents a SAS programming project built around rough-rice futures contracts traded on the Chicago Board of Trade.

The assignment provided 20 contract-level CSV files covering rice futures contracts expiring from January 2007 through March 2010. Each contract file contained:

- contract symbol;
- trading date;
- open;
- high;
- low;
- settlement price;
- trading volume;
- open interest.

The programming objective was to combine contract-level files and construct a single **Nearby** series based on settlement prices, then export the resulting series to Excel and visualize it as a time series.

## What this project demonstrates

- SAS `DATA` step programming
- `INFILE` / `INPUT` workflows for headerless CSV files
- Explicit variable typing and date informats
- SAS library management
- Repeated ingestion of multiple contract files
- `PROC SORT` and BY-group processing
- Stacking multiple contract datasets with `SET`
- `RETAIN` logic
- temporary SAS arrays
- string extraction with `SUBSTR`
- diagnostic `PUT` statements
- Excel export with `PROC EXPORT`
- time-series visualization with `PROC SGPLOT`
- awareness of futures-contract rollover effects when first-differencing prices

## Futures contract month codes

| Delivery month | Code |
|---|---|
| January | F |
| March | H |
| May | K |
| July | N |
| September | U |
| November | X |

## Submitted output

The retained project artifact includes an Excel workbook named:

`data/derived/Nearby_Series.xlsx`

and the submitted time-series plot:

![Nearby Series for Rice Futures](figures/nearby_series_plot.png)

The plot illustrates substantial movement in rice-futures settlement prices over the retained series, including the pronounced run-up and decline around 2008.

## First-difference consideration

The submitted project discussion correctly identified an important time-series issue: a continuous futures series can contain discontinuities around contract rollovers. Therefore, a first difference such as:

`P_t - P_(t-1)`

may reflect both a true market-price movement and a difference between two distinct futures contracts.

That makes rollover-date identification and continuity checks important before interpreting large first differences as economic price shocks.

## Repository structure

```text
4_rice-futures-nearby-series-programming/
├── README.md
├── LICENSE_CODE.txt
├── .gitignore
├── code/
│   ├── nearby_series_submitted_redacted.sas
│   ├── nearby_series_portable.sas
│   └── README.md
├── data/
│   ├── raw/
│   │   └── README.md
│   └── derived/
│       ├── Nearby_Series.xlsx
│       └── README.md
├── figures/
│   ├── nearby_series_plot.png
│   └── README.md
├── report/
│   ├── Rice_Futures_Nearby_Series_Project_Submission_Public.docx
│   └── README.md
├── docs/
│   ├── PROJECT_SUMMARY.md
│   ├── METHODOLOGY_SUMMARY.md
│   ├── DATA_DICTIONARY.md
│   ├── REPRODUCIBILITY_NOTES.md
│   └── GITHUB_UPLOAD_GUIDE.md
├── outputs/
│   └── README.md
└── reference/
    └── README.md
```

## Code versions

### `nearby_series_submitted_redacted.sas`

Preserves the submitted SAS program while removing the student identification number.

### `nearby_series_portable.sas`

Preserves the submitted analytical logic but replaces personal machine paths with repository-relative paths.

The portable version is **not presented as a corrected nearby-roll implementation**. See `docs/REPRODUCIBILITY_NOTES.md`.

## Reproducibility status

**Portfolio-ready, but not fully reproducible from the retained files.**

The original 20 contract-level CSV input files are not part of the retained artifact set. In addition, the submitted nearby-selection code should be validated against the exact contract-roll definition before the repository is described as a fully verified continuous-futures construction.

The derived Excel output, submitted code, public/redacted report, and plot are preserved so the project can still demonstrate the SAS programming workflow honestly.

## Suggested GitHub description

> SAS programming project integrating rough-rice futures contract files to build and visualize a nearby settlement-price series, with contract-rollover and first-difference considerations.

## Suggested topics

`SAS` `commodity-futures` `rice-futures` `data-engineering` `time-series` `data-cleaning` `financial-data` `futures-contracts` `sas-programming`

## Attribution and privacy

The original course submission contained a university identification number. The public portfolio versions included here redact that identifier.

The original assignment document is not included in the public repository package; only a project-methodology summary is retained.

## Disclaimer

This repository documents an academic programming project and is not a trading system, futures recommendation, or investment strategy.
