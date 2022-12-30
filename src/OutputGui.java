import javax.swing.*;
import java.awt.event.WindowEvent;
import java.awt.event.WindowListener;
import java.io.File;
import java.io.IOException;
import java.util.Scanner;
public class OutputGui extends JFrame{
    JFrame frame ;
    JTextArea area;
    OutputGui(String path) throws IOException {
        frame = new JFrame("outputField");
        area=new JTextArea();
        area.setBounds(10,30, 200,200);
        area.setFont(area.getFont().deriveFont(16f));
        area.setEditable(false);
        area.setText(writeFromFile(path));
        frame.add(area);
        frame.setSize(300, 300);
        frame.show();
    }
    String writeFromFile(String fPath) throws IOException {
        File file = new File(fPath);
        Scanner sc = new Scanner(file);
        String data="";
        while (sc.hasNextLine())
            data+=sc.nextLine()+'\n';
        sc.close();
        return data;
    }
}
