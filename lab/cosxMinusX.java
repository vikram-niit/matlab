import java.lang.Math;

public class cosxMinusX
{
	public static void main(String[] args)
	{
		System.out.println("Hello world");
		
		int k = 0;
		double[] solutions = new double[5];
		double radians = 0.017460317 * 60;
		System.out.println("cos(60) = "+Math.cos(radians));
		
		for(double i = -6.285714286; i <= 6.285714286; i = i + 0.017460)
		{
			double angle = i / 0.017460317;
			System.out.println("i = "+i+" cos("+angle+") = "+ Math.cos(i));
			
			double function = (double)(Math.cos(i)) - i;
			System.out.println("f("+i+") = "+function);
			
			
			if(function <= 0.01 && function >= -0.01)
			{
				System.out.println("Solution = "+i);
				solutions[k++] = i;
			}
		}
		
		System.out.println("Solution to cosx - x = 0 ");
		for(int j = 0; j<k; j++)
			System.out.println("Solution "+j+" = "+solutions[j]);
		
	}
}
