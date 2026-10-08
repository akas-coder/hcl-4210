package cont;
import mypc.Akash;
public class Hello {
    void show1(){
        System.out.print("ddd");
    }
    public static void main(String[] args) {
//        Akash ob1 =new Akash();
       Akash.show();
      //  args[0]="1";
        for(int i=0;i<args.length;i++){
            System.out.println(args[i]);
        }
    }
}
