# Swiss Tournament
This program keeps track on the players, matches and set a new match acording to the scores
>"In a swiss style game players are not eliminated when they lose a match, everyone gets to play in every round with someone with about the same scores"

## Installations
Before using the program, is needed to install the following:
Virtualbox : https://www.virtualbox.org/wiki/Downloads
Vagrant: https://www.vagrantup.com/downloads

## Fork and Cloning
The repository to fork and clone is in the following link: https://github.com/p00gz/udacity-swiss-tournament.git
once is cloned into your machine, direct to the vagrant folder
```
$ cd udacity-swiss-tournament
$ cd vagrant
```

## Launching Vagrant
```
$ vagrant up   
$ vagrant ssh
$ cd /		#moving to tournament
$ cd vagrant
$ cd tournament
```

## Setting up the database
to initialize the tournament database, the commands are inside the **tournament.sql** file, so we need to run 

```
psql -f tournament.sql
```

## Modifying tournament.py
In the **tournament.py** there are instructions in each module in order to success the test.

## Runing test
to check if the python file has all the requisites, we need to run
```
$ python tournament_test.py
```
once every point is achieved, a message of success will come

```
1. countPlayers() returns 0 af
2. countPlayers() returns 1 af
3. countPlayers() returns 2 af
4. countPlayers() returns zero
5. Player records successfully
6. Newly registered players ap
7. After a match, players have
8. After match deletion, playe
9. Matches are properly delete
10. After one match, players w
Success!  All tests pass!
```

this means that the goal has been reached.

## Closing Vagrant 
to close vagrant and close
```
$ vagrant halt
```

## Licence

read Licence

