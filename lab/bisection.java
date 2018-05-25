import java.lang.Math;

public class bisection
{
	public static void main(String[] args)
	{
		System.out.println("Hello world");
		
		int k = 0;

		double a = -1;
		double b = 1;
		double i = 0.0;
		double function = 1.0;
		double[] solutions = new double[5];
		double radians = 0.017460317 * 60;
		System.out.println("cos(60) = "+Math.cos(radians));
		
		while(true)
		{
			if(function <= 0.00001 && function >=-0.00001)
			break;
			
			i = (a + b)/2;
			double angle = i / 0.017460317;
			System.out.println("i = "+i+" cos("+angle+") = "+ Math.cos(i));
			
			function = (double)(Math.cos(i)) - i;
			System.out.println("f("+i+") = "+function);		
			
			if(function > 0)
			{
				a = i;
			}
			else if(function < 0)
			{
				b = i;
			}
						
			
		}
		
		System.out.println("Solution to cosx - x = 0 ");
		for(int j = 0; j<k; j++)
			System.out.println("Solution "+j+" = "+solutions[j]);

		System.out.println("function = "+function+"i="+i);
		
	}
}
