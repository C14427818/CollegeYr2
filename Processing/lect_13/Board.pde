class Board
{
  int rows;
  int cols;
  
  float cellWidth;
  float cellHeight;
 
  boolean[][] cells;
  boolean[][] nextCells;
  
  void set(int row, int col, boolean value)
  {
    if(row >= 0 && row < rows && col >= 0 && col < cols)
    {
      cells[row][col] = true;
      nextCells = new boolean[rows][cols];
    }
    
  }
  
  
  boolean get(int row, int col)
  {
     if(row >= 0 && row < rows && col >= 0 && col < cols)
    {
      return cells[row][col];
    }
    else
    {
      return false;
    }
    
  }
  Board(int rows, int cols)
  {
    this.rows = rows;
    this.cols = cols;
    cells = new boolean[rows][cols];
    
    cellWidth = width / cols;
    cellHeight = height / rows;
    
  }
  
  void update()
  {
    // < 2 neughbours cell dies
    // 2 or 3 neighbours cell lives
    // > 3 neighbours dies
    // if dead and has 3 neighbours cell is born 
     for (int row = 0 ; row < height / cellHeight ; row ++)
    {
      for (int col = 0 ; col < width / cellWidth ; col ++)
      {
       
        if (cells[row][col])
        {
            if (count<2)
                  {
                    cells[row][col] = false;
                  } 
                  else if ((count == 2) || (count == 3))
                  {
                    cells[row][col] = true;
                  }
                  else if (count > 3)
                  {
                    cells[row][col] = false;
                  }
                
                  else
                  {
                    if (count == 3)
                    {
                      cells[row][col] = true;
                    }
                  }
    
    boolean[][] temp = cells;
    cells = nextCells;
    nextCells = temp;
    
  }
  
  int count = 0;
  
  int countLiveCells(int row, int col)
  {
    
    for(int i = row - 1; i <= row + 1; i++)
    {
      for( int j = col - 1; j < col + 1; j++)
      {
        if(!(i == row && j == col) && get(i , j))
        {
          count ++;
        }
      }
    }
    return count;
  }
  
  void render()
  {
    for(int row = 0; row < rows; row++)
    {
      for(int col = 0; col < cols; col++)
      {
        float x = col * cellWidth;
        float y = row * cellHeight;
        
        stroke(127);
        
        if(get(row, col))
        {
          fill(0, 255, 255);
        }
        else
        {
          noFill();
        }
        rect(x, y, cellWidth, cellHeight);
      }
    }
    
  }
  
}
