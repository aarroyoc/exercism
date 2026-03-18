# Globals for the directions
# Change the values as you see fit
EAST = 0
NORTH = 1
WEST = 2
SOUTH = 3


class Robot:
    def __init__(self, direction=NORTH, x_pos=0, y_pos=0):
        self.direction = direction
        self.coordinates = (x_pos, y_pos)

    def advance(self):
        x, y = self.coordinates
        if self.direction == EAST:
            self.coordinates = (x + 1, y)
        elif self.direction == NORTH:
            self.coordinates = (x, y + 1)
        elif self.direction == SOUTH:
            self.coordinates = (x, y - 1)
        else:
            self.coordinates = (x - 1, y)

    def move(self, command):
        for c in command:
            match c:
                case "R":
                    self.direction = (self.direction - 1) % 4
                case "L":
                    self.direction = (self.direction + 1) % 4
                case "A":
                    self.advance()
