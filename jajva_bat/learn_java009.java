import java.io.FileWriter;
import java.io.IOException;
public class learn_java009 {
    public static void main(String[] args) {
        try {
            FileWriter fw = new FileWriter("output.txt");
            fw.write("ファイル書き込みテスト\n");
            fw.close();
            System.out.println("output.txt に書き込みました。");
        } catch (IOException e) {
            System.out.println("エラー: " + e.getMessage());
        }
    }
}
