# juliaqueue

`juliaqueue` keeps a focused Julia implementation around simulations. The project goal is to simulate queueing systems and percentile summaries.

## Use Case

I want this repository to be useful as a quick reading exercise: fixtures first, implementation second, verifier last.

## Juliaqueue Review Notes

Start with `state drift` and `input pressure`. Those cases create the widest score spread in this repo, so they are the best quick check when the model changes.

## Highlights

- `fixtures/domain_review.csv` adds cases for input pressure and state drift.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/juliaqueue-walkthrough.md` walks through the case spread.
- The Julia code includes a review path for `state drift` and `input pressure`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Code Layout

The implementation keeps the scoring rule plain: reward signal and confidence, preserve slack, penalize drag, then classify the result into a review lane.

The Julia code keeps the review rule close to the tests.

## Run The Check

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Regression Path

The check exercises the source code and the review fixture. `stress` is the high score at 211; `baseline` is the low score at 118.

## Future Work

No external service is required. A deeper version would add more negative cases and a clearer boundary around invalid input.
