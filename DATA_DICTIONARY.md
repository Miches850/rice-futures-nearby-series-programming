# Data Dictionary

## Raw contract fields

| Variable | Meaning |
|---|---|
| `symbol` | Rough-rice futures contract symbol |
| `date` | Trading date |
| `open` | Daily opening price |
| `high` | Daily high price |
| `low` | Daily low price |
| `settle` | Daily settlement/closing price |
| `volume` | Daily trading volume |
| `open_interest` | Outstanding open positions |

## Submitted derived fields

| Variable | Meaning |
|---|---|
| `month_code` | Last character of the contract symbol, used to identify delivery month |
| `nearby_settle` | Retained settlement-price value assigned by the submitted nearby logic |
| `nearby_symbol` | Retained contract symbol assigned by the submitted nearby logic |

## Month codes

| Month | Code |
|---|---|
| January | F |
| March | H |
| May | K |
| July | N |
| September | U |
| November | X |
