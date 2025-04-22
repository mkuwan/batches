import java.util.Scanner;
public class learn_java010 {
    public static void main(String[] args) {
        try (Scanner sc = new Scanner(System.in)) {
            System.out.print("整数を入力してください: ");
            int num = Integer.parseInt(sc.nextLine());
            System.out.println("2倍: " + (num * 2));
        } catch (NumberFormatException e) {
            System.out.println("整数値を入力してください。");
        }
    }
}
