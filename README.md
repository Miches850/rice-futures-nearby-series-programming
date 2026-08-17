# Raw Contract Data

The original 20 contract CSV files were not retained in the supplied artifact set.

The submitted SAS code references the following files:

- `RR2007F.csv`
- `RR2008F.csv`
- `RR2009F.csv`
- `RR2010F.csv`
- `RR2007H.csv`
- `RR2008H.csv`
- `RR2009H.csv`
- `RR2010H.csv`
- `RR2007K.csv`
- `RR2008K.csv`
- `RR2009K.csv`
- `RR2007N.csv`
- `RR2008N.csv`
- `RR2009N.csv`
- `RR2007U.csv`
- `RR2008U.csv`
- `RR2009U.csv`
- `RR2007X.csv`
- `RR2008X.csv`
- `RR2009X.csv`

Each source file is described by the project specification as containing:
`Symbol`, `Date`, `Open`, `High`, `Low`, `Settle`, `Volume`, and `Open_interest`.

To restore full reproducibility, place the original files in this folder and then validate the rollover logic before running the portable script.
