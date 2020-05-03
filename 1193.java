import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int num = scanner.nextInt();

        boolean flag = false;
        int x = 1;
        int y = 1;
        for (int i = 0; i < num - 1; i++) {
            if (flag) {
                x++;
                y--;
                if (y == 0) {
                    flag = false;
                    y++;
                }
            } else {
                x--;
                y++;
                if (x == 0) {
                    flag = true;
                    x++;
                }
            }
        }

        System.out.println(x + "/" + y);
        scanner.close();
    }
}