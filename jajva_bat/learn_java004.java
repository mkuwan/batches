import java.util.Scanner;
public class learn_java004 {
    public static void main(String[] args) {
        try (Scanner sc = new Scanner(System.in)) {
            System.out.print("年齢を入力してください: ");
            // 入力が整数でない場合は例外をキャッチする
            // 例外が発生した場合は、エラーメッセージを表示する
            // 例外が発生しなかった場合は、年齢に応じてメッセージを表示する
            // 例外が発生した場合は、年齢に応じてメッセージを表示する
            try {
                int age = Integer.parseInt(sc.nextLine());
                if (age < 0) {
                    System.out.println("年齢は0以上でなければなりません。");
                } else if (age < 18) {
                    System.out.println("未成年です。");
                } else if (age > 120) {
                    System.out.println("超人です。");
                } else {
                    System.out.println("成人です。");
                }
            } catch (NumberFormatException e) {
                System.out.println("整数の最大値は2147483647です。");
                System.out.println("整数値を入力してください。");
            }
        }
    }
}
