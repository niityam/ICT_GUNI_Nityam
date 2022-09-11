import java.util.*;

class OOP_PRPROB15
{
    static int complete_sal(int years, int salaries[]){
        int totalsalary=0;
        for(int i=0; i<years; i++){
            totalsalary += salaries[i];
        }
        return totalsalary;
    }
    static int overall_sal(int years, int salaries[]){
        int totalsalary=0;
        for(int i=0; i<years; i++){
            totalsalary += salaries[i];
        }
        return totalsalary/years;
    }

	public static void main (String args[]) throws java.lang.Exception
	{
		Scanner sc = new Scanner(System.in);
		int eid, totalyears;
		String ename;
		eid = sc.nextInt();
		ename = sc.next();
		totalyears = sc.nextInt();
		int salaries[] = new int[totalyears];
		for (int i=0; i<totalyears; i++){
		    salaries[i] = sc.nextInt();
		}
		System.out.println(complete_sal(totalyears, salaries));
		System.out.println(overall_sal(totalyears, salaries));
		sc.close();
	}
}
