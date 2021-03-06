# README

## Scoring Bowling

```
┌───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┐
│ 1 │ 4 │ 4 │ 5 │ 6 │ / │ 5 │ / │   │ * │ 0 │ 1 │ 7 │ / │ 6 │ / │   │ * │ 2 │ / │ 6 │
│   └───┤   └───┤   └───┤   └───┤   └───┤   └───┤   └───┤   └───┤   └───┤   └───┴───┤
│   5   │   14  │  29   │  49   │  60   │   61  │   77  │   97  │  117  │    133    │
└───────┴───────┴───────┴───────┴───────┴───────┴───────┴───────┴───────┴───────────┘

/ marks a Spare and * marks a Strike
```

The game consists of 10 frames as shown above. In each frame the player has two opportunities to knock down 10 pins.
The score for the frame is the total number of pins knocked down, plus bonuses for strikes and spares.

A spare is when the player knocks down all 10 pins in two tries. The bonus for that frame is the number of pins knocked
down by the next roll. So in frame 3 above, the score is 10 (the total number knocked down) plus a bonus of 5 (the
number of pins knocked down on the next roll.)

A strike is when the player knocks down all 10 pins on their first try. The bonus for that frame is the value of the
next two balls rolled.

In the tenth frame a player who rolls a spare or strike is allowed to roll the extra balls to complete the frame.
However no more than three balls can be rolled in tenth frame.

## The Five Tests

1. Gutter game - 0 pins for all rolls giving a score of 0.
2. All ones - 1 pin for each roll giving a score of 20.
3. One spare - 5, 5 and 3 pins then 0 for the next 17 rolls giving a score of 16.
4. One strike - a strike, 3 and 4 pins then 0 for the next 16 rolls giving a score of 24.
5. Perfect game - 12 strikes for a score of 300.

## References

* [Uncle Bob - The Bowling Game Kata](http://www.butunclebob.com/ArticleS.UncleBob.TheBowlingGameKata)
* [Wikipedia - Ten-pin bowling scoring](https://en.wikipedia.org/wiki/Ten-pin_bowling#Scoring)
