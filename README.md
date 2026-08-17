# Code

## nearby_series_submitted_redacted.sas

This file preserves the submitted SAS program while removing the university identification number.

The code:
- creates a SAS library;
- imports contract-specific CSV files;
- assigns the variables `symbol`, `date`, `open`, `high`, `low`, `settle`, `volume`, and `open_interest`;
- sorts each dataset by date;
- stacks the contracts;
- creates a submitted `nearby` dataset;
- exports the result to Excel;
- plots the settlement-price series.

## nearby_series_portable.sas

This copy changes machine-specific paths to repository-relative paths so the project structure is understandable outside the original computer.

It intentionally does **not** silently rewrite the submitted contract-roll algorithm.

See `../docs/REPRODUCIBILITY_NOTES.md`.
