
import java.io.*;
import java.util.HashMap;

public class Replace {

    public static void main(String[] args) {
        try {
            HashMap<String, String> map = new HashMap<>();
            for (int i = 1; i <= args.length; i++) {
                map.put("col" + i, args[i - 1]);
                System.out.println("col" + i + " " + args[i - 1]);
            }
            File file = new File("colors.txt");
            BufferedReader x = new BufferedReader(new FileReader(file));
            String str = x.readLine();
            while (str != null) {
                for (String i : map.keySet()) {
                    str = str.replaceAll(i, map.get(i));
                }
                System.out.println(str);
                str = x.readLine();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
