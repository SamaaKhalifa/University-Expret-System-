import java.awt.event.*;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import javax.swing.*;
class QueryGUI extends JFrame  {
    public static String input ;
    // JTextField
    static JTextField t;
    // JFrame
    static JFrame f;
    // JButton
    static JButton b;
    static JLabel l;


    public static JTextField getT() {
        return t;
    }

    public String getInput() {
        return input;
    }

    // default constructor
    QueryGUI(String queryMessage,String factName)
    {

        f = new JFrame("Queries");
        l=new JLabel(queryMessage);
        l.setBounds(50,50,300,20);
        // create a new button
        b = new JButton("ok");
        // addActionListener to button
        b.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                String s = e.getActionCommand();
                if (s.equals("ok")) {
                    // set the text of the label to the text of the field
                    input= t.getText();
                    if(!input.isEmpty()){
                        t.setText(" ");
                        clearFile("out.dat");
                        input=fact_constructor(input,factName);
                        f.dispose();
                    }
                }
            }
        });

        // create a object of JTextField with 16 columns
        t = new JTextField(16);

        // create a panel to add buttons and textfield
        JPanel p = new JPanel();

        // add buttons and textfield to panel
        p.add(l);
        p.add(t);
        p.add(b);
        addWindowListener(new MyWindowListener());
        f.add(p);
        // set the size of frame
        f.setSize(300, 300);

        f.show();


    }
    public void clearFile(String path){
        FileWriter fwOb;
        try {
            fwOb = new FileWriter(path, false);
            PrintWriter pwOb = new PrintWriter(fwOb, false);
            pwOb.flush();
            pwOb.close();
            fwOb.close();
        } catch (IOException ex) {
            throw new RuntimeException(ex);
        }
    }
    public static String fact_constructor(String input,String factName){
        //(factName input)
        System.out.println( "("+factName+" "+"\""+input+"\""+")");
        return "("+factName+" "+"\""+input+"\""+")";
    }


    private class MyWindowListener implements WindowListener {
        @Override
        public void windowClosing(WindowEvent evt) {
            System.exit(0);  // Terminate the program
        }
        @Override public void windowOpened(WindowEvent evt) { }
        @Override public void windowClosed(WindowEvent evt) { }
        @Override public void windowIconified(WindowEvent evt) { System.out.println("Window Iconified"); }
        @Override public void windowDeiconified(WindowEvent evt) { System.out.println("Window Deiconified"); }
        @Override public void windowActivated(WindowEvent evt) { System.out.println("Window Activated"); }
        @Override public void windowDeactivated(WindowEvent evt) { System.out.println("Window Deactivated"); }
    }

}
















