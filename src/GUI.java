import net.sf.clipsrules.jni.CLIPSException;

import net.sf.clipsrules.jni.Environment;
import javax.swing.*;
import java.awt.event.*;
import java.io.IOException;
import java.util.ArrayList;

public class GUI extends JFrame implements ActionListener{
    public static Environment clips = new Environment();


    JLabel l;
    
    ArrayList<JRadioButton>cb=new ArrayList<>(5);
    JButton b;
    QueryGUI q;

    GUI(){
        setTitle("University Expert System");

        l=new JLabel("Choose the query");
        l.setBounds(50,50,300,20);
        cb.add(new JRadioButton("Get all TAs belonging to a department "));
        cb.get(0).setBounds(100,100,400,20);
        cb.get(0).addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                if(cb.get(0).isSelected()){
                     q=new QueryGUI("Enter department","GetTas");
                }

            }
        });
        cb.add(new JRadioButton("Get the courses a student is currently studying"));
        cb.get(1).setBounds(100,150,400,20);
        cb.get(1).addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                if(cb.get(1).isSelected()){
                    q=new QueryGUI("Enter Student","GetCours");
                }
            }
        });
        cb.add(new JRadioButton("Get all the courses offered by a certain faculty "));
        cb.get(2).setBounds(100,200,400,20);
        cb.get(2).addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                if(cb.get(2).isSelected()){
                    q=new QueryGUI("Enter Faculty","GetCoursFaculty");
                }
            }
        });
        cb.add(new JRadioButton("Get Lecturers of a faculty"));
        cb.get(3).setBounds(100,250,400,20);
        cb.get(3).addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                if(cb.get(3).isSelected()){
                    q=new QueryGUI("Enter Faculty","GetLectFaculty");
                }
            }
        });
        cb.add(new JRadioButton("Get all faculties of a university"));
        cb.get(4).setBounds(100,300,400,20);
        cb.get(4).addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                if(cb.get(4).isSelected()){
                    q=new QueryGUI("Enter University","GetFacultyuni");
                }
            }
        });
        ButtonGroup btG=new ButtonGroup();
        for (int i = 0; i < 5; i++) {
            add(cb.get(i));
            btG.add(cb.get(i));
        }
        b=new JButton("RUN");
        b.setBounds(100,350,80,30);
        b.addActionListener(this);
        add(l);add(b);
        setSize(450,450);
        setLayout(null);
        setVisible(true);
        setDefaultCloseOperation(EXIT_ON_CLOSE);
    }
    public void clipsRun() throws CLIPSException {
        if ( q.getInput() != null) {
            clips.clear();
            clips.load("project.clp");
            clips.reset();
            clips.assertString(q.getInput());
            clips.run();
                try {
                    new OutputGui("out.dat");
                } catch (IOException ex) {
                    throw new RuntimeException(ex);
                }
            clips.clear();
            q.clearFile("out.dat");
        }
    }
    public void actionPerformed(ActionEvent e){
        try {
            clipsRun();
        } catch(CLIPSException ex){
            JOptionPane.showMessageDialog(this,"NOT FOUND IN THIS EXPERT SYSTEM");

            //ex.printStackTrace();
        }

    }


}