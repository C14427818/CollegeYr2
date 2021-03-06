package ie.dit;

public class Matrix{

		private float [][] elements;

		private int rows;
		private int cols;


		public int getRows(){

			return rows;
		}

		public int getCols(){

			return cols;
		}

		public Matrix(int rows, int cols){

			this.rows = rows;
			this.cols = cols;
			elements = new float[rows][cols];
		}//Contructor


		public float getElement(int row, int col){

			return elements[row][col];
		}


		public void add(Matrix b){

			for(int row = 0; row < rows; row++){

				for(int col = 0; col < cols; col++){

					elements[row][col] += b.elements[row][col];
					//setElement(row, col, getElement(row, col) Also Works
					//+ b.getElement(row, col));

				}
			}
		}

		public static Matrix add(Matrix a, Matrix b){

			Matrix ret = new Matrix(a.getRows(), a.getCols());

			for(int row = 0; row < a.rows; row ++){


				for(int col = 0; col < a.cols; col ++){

					ret.elements[row][col] = a.elements[row][col] + b.elements[row][col];

					/*ret.elements[row][col] -
					a.elements[row][col] 
					+ b.elements[row][col];*/


				}
			}
			return ret;
		}


		public static Matrix mult(Matrix a, Matrix b){

			Matrix multab = new Matrix(a.getRows(), a.getCols());

			for(int row = 0; row < a.rows; row++ ){


				for(int col = 0; col < b.cols; col++ ){

					float count = 0;

					for(int i = 0; i < a.cols; i++){

					count += a.getElement(row, i) * b.getElement(i, col);
				}
				multab.setElement(row, col, count);

			}
			
		}
		return multab;
	}


		public void setElement(int row, int col, float value){

			elements[row][col] = value;
		}

		public void identity(){

		for (int row = 0; row < rows; row ++){
		
			for (int col = 0; col < cols; col ++){

					
					if (row == col){

						setElement(row, col, 1);
					}
					else{
					
						setElement(row, col, 2);
					}

				}
			}
		} 

		public String toString(){

			StringBuffer sb = new StringBuffer();

			for(int row = 0; row < rows; row++){

				for(int col = 0; col< cols; col++){

					sb.append(elements[row][col]);
					sb.append("\t");
				}
				sb.append("\n");
			}
			return sb.toString();
		}
}