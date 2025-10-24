# Create a new score board with an initial entry.
#   input: none.
#   output: a score board object with a default player and score.
def create_score_board:
  {"The Best Ever": 1000000};

# Add a player to a score board.
#   input: a score board object.
#   output: the score board with the new player added.
def add_player(player; score):
  . + {(player): score};

# Remove a player from a score board.
#   input: a score board object.
#   output: the score board with the player removed, if they exist.
def remove_player(player):
  . | del(.[player]);

# Increase a player's score by the given amount.
#   input: a score board object.
#   output: the score board with the player's score increased;
#           add the player to the board if needed.
def update_score(player; points):
  if (. | has(player)) then 
    .[player] += points
  else
    .[player] = points
  end;

# Apply 100 bonus points to all players on the board.
#   input: a score board object.
#   output: the score board with each player's score increased.
def apply_monday_bonus:
  map_values(. + 100);

# Calculate the total score of all players.
#   input: a score board object.
#   output: the sum of all scores, or zero for an empty board.
def total_score:
  if (. | length | . == 0)
  then 0
  else
    to_entries
    | map(.value) 
    | add
  end;
