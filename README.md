# Toy Robot Simulator

### Description:
The application is a simulation of a toy robot moving on a square tabletop, of dimensions 5
units x 5 units. There are no other obstructions on the table surface. The robot is free to roam around the surface of the table, but must be prevented from falling to destruction. Any movement that would result in the robot falling from the table must be prevented, however further valid movement commands must still be allowed.

**Application can read in commands of the following form**

```
PLACE X,Y,F
MOVE
LEFT
RIGHT
REPORT
```

- `PLACE` puts the toy robot on the table in position `X,Y` and facing `NORTH`, `SOUTH`, `EAST` or
`WEST`.
- The origin (0,0) is considered to be the `SOUTH WEST` most corner.
- The first valid command to the robot is a `PLACE` command, after that, any sequence of
commands may be issued, in any order, including another `PLACE` command. The application
discards all commands in the sequence until a valid `PLACE` command has been
executed.
- `MOVE` moves the toy robot one unit forward in the direction it is currently facing.
- `LEFT` and `RIGHT` rotate the robot 90 degrees in the specified direction without changing
the position of the robot.
- `REPORT` announces the `X,Y and F` of the robot.
- A robot that is not on the table ignores the `MOVE`, `LEFT`, `RIGHT` and `REPORT`
commands.
- Input also can be from a file, or from standard input (using -i or -f modes).
- Any move that would cause the robot to fall is ignored.

### Example Input and Output:
- **a)**

```
PLACE 0,0,NORTH
MOVE
REPORT
Output: 0,1,NORTH
```

- **b)**

```
PLACE 0,0,NORTH
LEFT
REPORT
Output: 0,0,WEST
```

- **c)**

```
PLACE 1,2,EAST
MOVE
MOVE
LEFT
MOVE
REPORT
Output: 3,3,NORTH
```
