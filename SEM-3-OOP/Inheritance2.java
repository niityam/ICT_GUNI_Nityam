class member{
    String name;
    int age;
    String phone;
    String address;
    float salary;
    member(String n, int a, String p, String ad, float s){
        name = n;
        age = a;
        phone = p;
        address = ad;
        salary = s;
    }
    void printSalary(){
        System.out.println("Salary: "+salary);
    }
}
class employee extends member{
    String specialization;
    employee(String n, int a, String p, String ad, float s, String sp){
        super(n, a, p, ad, s);
        specialization = sp;
    }
}
class manager extends member{
    String department;
    manager(String n, int a, String p, String ad, float s, String d){
        super(n, a, p, ad, s);
        department = d;
    }
}

public class INHERITANCE2 {
    public static void main(String[] args){
        employee e = new employee("Nityam", 20, "1234567890", "Pune", 900000, "Java");
        manager m = new manager("Harsh", 20, "1234567890", "Pune", 100000, "Computer");
        e.printSalary();
        m.printSalary();
    }
}
