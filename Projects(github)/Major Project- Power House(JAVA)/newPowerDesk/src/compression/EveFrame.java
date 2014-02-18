package compression;
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
public class EveFrame extends JFrame{	
	private EveComp  panCompression;
	private EveAbout panAbout;
	private JLabel  lblBanner;	
	void centerWindow(){
		Dimension screensize = Toolkit.getDefaultToolkit().getScreenSize();
        
        setLocation((screensize.width / 2) - (getSize().width / 2),
                    (screensize.height / 2) - (getSize().height / 2));
		}
	
	EveFrame(){
		 setTitle(" POWERDESK--Compression & Decompression ");
		 setSize(764,664);
		 centerWindow();
		 setLayout(new BorderLayout(5,5));
		 lblBanner = new JLabel("POWERDESK",SwingConstants.CENTER);
		 lblBanner.setSize(400,95);
		 lblBanner.setFont(new Font("Times New ",Font.BOLD,78));
                 lblBanner.setForeground(new Color(204,204,255));
		 panCompression = new EveComp(this,false);
		 panAbout = new EveAbout(this,false);
                 this.getContentPane().setBackground(new Color(0,51,51));
		 this.getContentPane().add(lblBanner,BorderLayout.NORTH );
		 this.getContentPane().add(panCompression,BorderLayout.CENTER);
                 this.setResizable(false);
                 this.getContentPane().setBackground(new Color(0,51,51));
                 this.setVisible(true);
                  }
    protected void processWindowEvent(WindowEvent e) {

        if (e.getID() == WindowEvent.WINDOW_CLOSING) {
            int exit = JOptionPane.showConfirmDialog(this, "Are you sure?","Confirm Exit?",JOptionPane.YES_NO_OPTION);
            if (exit == JOptionPane.YES_OPTION) {
                System.exit(0);
            }
            
        } else {
            super.processWindowEvent(e);
        }
    }
    }
