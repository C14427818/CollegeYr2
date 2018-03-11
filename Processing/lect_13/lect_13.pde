Board board;

void setup()
{
  size(500, 500);
  
  board = new Board(50, 50);
  
  board.set(0, 5, true);
  board.set(1, 7, true);
  board.set(5, 3, true);
  board.set(6, 3, true);
}


void draw()
{
  board.render();
  
}
