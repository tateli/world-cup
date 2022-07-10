#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "TRUNCATE TABLE games, teams")

cat games.csv | while IFS=',' read YEAR ROUND WINNER OPPONENT WG OG

do
  WNAMES=$($PSQL "SELECT name FROM teams WHERE name='$WINNER'")
  if [[ $WINNER != 'winner' ]]
    then
    if [[ -z $WNAMES ]]
      then
      INSERT_WINNER=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
      if [[ INSERT_WINNER == "INSERT 0 1" ]]
        then
        echo INSERTED INTO TEAMS: $TEAM
      fi
    fi
  fi

  ONAMES=$($PSQL "SELECT name FROM teams WHERE name='$OPPONENT'")
  if [[ $OPPONENT != 'opponent' ]]
    then
    if [[ -z $ONAMES ]]
      then
      INSERT_OPPONENT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
      if [[ INSERT_OPPONENT == "INSERT 0 1" ]]
        then
        echo INSERT INTO TEAMS: $TEAM
      fi
    fi
  fi

  WTEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$WINNER'")
  OTEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$OPPONENT'")

  if [[ -n $WTEAM_ID || -n $OTEAM_ID ]]
    then
    if [[ $YEAR != 'year' ]]
      then
      INSERT_GAMES=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $WTEAM_ID, $OTEAM_ID, $WG, $OG)")
      if [[ INSERT_GAMES == "INSERT 0 1" ]]
        then
        echo INSERTED INTO GAMES $WINNER v $OPPONENT, $YEAR
      fi
    fi
  fi

done
