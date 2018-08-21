import java.util.Scanner;

 

public class sumofnumbers

{

    public static void main(String[] arg) {


        System.out.println("Enter a positive number");  

        Scanner scan = new Scanner(System.in);

        int n = scan.nextInt();

 


        int sum = 0;

        for(int i = 0;i <= n; i++)

        {   
            sum=sum+i;
        }   

        System.out.println("Sum is " + sum);
 
    }

}   

