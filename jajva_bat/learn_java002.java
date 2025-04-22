import java.util.Scanner;
public class learn_java002 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        try {
            System.out.print("お名前を入力してください: ");
            String name = sc.nextLine();
            System.out.println("こんにちは、" + name + "さん！");
        } finally {
            sc.close();
        }
    }
}
