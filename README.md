# Ironclaw scripts
A collection of programs I wrote to support with the table-top role-playing game [Ironclaw: Squaring the Circle](http://www.sanguinegames.com/ironclaw/).

## ironclaw_roller.rb
Example output:
```
$ ruby ironclaw_roller.rb 
Please provide your dice.
46802 for d4's, d6's, d8's, d10's and d12's respectively.

$ ruby ironclaw_roller.rb 886 5
 -- rolling d8, d8, d6 vs.5 -- 

Player: I rolled 2
Host: Too bad.

$ ruby ironclaw_roller.rb 2208864
 -- rolling d12, d12, d10, d8, d8, d6, d4 vs.3 -- 

Player: I rolled 8
Host: Nice! How many above 3?
Player: Err, 5
```

## icr.rb
Example output:
```
$ ruby icr.rb
Please provide your dice.
46802 for d4's, d6's, d8's, d10's and d12's respectively.

$ ruby icr.rb 886 5
 -- rolling d8, d8, d6 -- 

[7, 5, 2]

$ ruby icr.rb 2208864
 -- rolling d12, d12, d10, d8, d8, d6, d4 -- 

[11, 6, 4, 2, 2, 2, 1]
```
