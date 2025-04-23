import java.io.*;

public class SampleApp001 {
    public static void main(String[] args) {
        if (args.length < 1) {
            System.out.println("ファイル名を引数で指定してください。");
            return;
        }
        String filename = args[0];
        int lineCount = 0;
        int wordCount = 0;
        try (BufferedReader br = new BufferedReader(new InputStreamReader(new FileInputStream(filename), "UTF-8"))) {
            String line;
            while ((line = br.readLine()) != null) {
                lineCount++;
                wordCount += line.trim().isEmpty() ? 0 : line.trim().split("\\s+").length;
            }
            System.out.println("行数: " + lineCount);
            System.out.println("単語数: " + wordCount);
        } catch (IOException e) {
            System.out.println("ファイルの読み込みに失敗しました: " + e.getMessage());
        }
    }
}
