public class prac8 {
    public static void main(String args[]){
        
        display d = new display();
        d.setdata(1, "Nirma University");
        d.displayDetails();
    }
}
class college{
    String collegeName;
    int collegeid;
    void setdata(int collegeid, String collegeName){
        this.collegeid = collegeid;
        this.collegeName = collegeName;
    }
}
class display extends college{
    void displayDetails(){
        System.out.println("College Id is: "+collegeid);
        System.out.println("College Name is: "+collegeName);
    }
}
