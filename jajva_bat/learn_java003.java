import java.util.Scanner;
public class learn_java003 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("数字を2つ入力してください（スペース区切り）: ");
        int a = sc.nextInt();
        int b = sc.nextInt();
        System.out.println("加算: " + (a + b));
        System.out.println("減算: " + (a - b));
        System.out.println("乗算: " + (a * b));
        // 除算は0で割るとエラーになるので、条件分岐を使ってエラーハンドリングを行う
        if (b != 0) {
            System.out.println("除算: " + (a / b));
            System.out.println("余り: " + (a % b));
        } else {
            System.out.println("除算と余り: 0で割れません");
            sc.close();
        }
    }
}
