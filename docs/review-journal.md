# Review Journal

The cases below are the review handles I would use before changing the implementation.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its simulations focus without claiming live deployment or external usage.

## Cases

- `baseline`: `input pressure`, score 118, lane `watch`
- `stress`: `state drift`, score 211, lane `ship`
- `edge`: `review cost`, score 172, lane `ship`
- `recovery`: `decision risk`, score 180, lane `ship`
- `stale`: `input pressure`, score 118, lane `watch`

## Note

A future change should add new cases before it changes the scoring rule.
