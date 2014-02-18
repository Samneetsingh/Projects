package compression;
import java.io.*;
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
public class EveComp extends JPanel implements ActionListener,ItemListener,EveGuiConstants{
	final String REFRESH = "\t\t              ----- Status -----";
	private JTextField txtSource,txtDestination ;
	private JTextArea txtStatus;
	private JButton btnSource,btnDestination,btnAction,btnClear,btnBack;
	private JRadioButton rbtnCompress,rbtnDecompress;
	private ButtonGroup btnGroup;
	private JFileChooser fc = new JFileChooser();
	private int algoSelected = COMP_HUFFMAN;
	private JFrame owner;
	EveComp(JFrame parent,boolean isDblBuf){
		super(isDblBuf);		
		owner = parent;
		buildBasicPanel();
		rbtnCompress.addItemListener(this);
		rbtnDecompress.addItemListener(this);
		btnSource.addActionListener(this);
		btnDestination.addActionListener(this);
		btnClear.addActionListener(this);
		btnAction.addActionListener(this);
                btnBack.addActionListener(this);
		txtStatus.setText(REFRESH);
		}
		void buildBasicPanel(){
                 owner.setUndecorated(true);
		 JPanel panel = this;
		 GridBagLayout gridbag = new GridBagLayout();
		 GridBagConstraints constraints = new GridBagConstraints();
		 JLabel lblTest;
		 panel.setLayout(gridbag);
                 panel.setBackground(new Color(0,51,51));
		 constraints.insets = new Insets(3,3,3,3);  
		 buildConstraints(constraints,0,0,1,1,5,33);
		 lblTest = new JLabel("Source : ");
                 lblTest.setForeground(new Color(204,204,0));
                 lblTest.setFont(new Font("Times New Roman",Font.PLAIN,18));
		 gridbag.setConstraints(lblTest,constraints) ;
		 panel.add(lblTest);
		 buildConstraints(constraints,1,0,2,1,95,33);
		 txtSource = new JTextField(250);
		 gridbag.setConstraints(txtSource,constraints) ;
		 panel.add(txtSource);
		 buildConstraints(constraints,3,0,1,1,0,0);
		 btnSource = new JButton("Browse");
                 btnSource.setContentAreaFilled(false);
                 btnSource.setBorderPainted(false);
                 btnSource.setFont(new Font("Times New Roman",Font.PLAIN & Font.CENTER_BASELINE,18));
                 btnSource.setForeground(new Color(204,204,0));
                 btnSource.setBackground(new Color(0,51,51));
		 gridbag.setConstraints(btnSource,constraints) ;
		 panel.add(btnSource);
		 		  
		 buildConstraints(constraints,0,1,1,1,0,33);
		 lblTest = new JLabel("Destination : ");
                 lblTest.setForeground(new Color(204,204,0));
                 lblTest.setFont(new Font("Times New Roman",Font.PLAIN,18));
		 gridbag.setConstraints(lblTest,constraints) ;
		 panel.add(lblTest);
		 buildConstraints(constraints,1,1,2,1,95,33);
		 txtDestination = new JTextField(250);
		 gridbag.setConstraints(txtDestination,constraints) ;
		 panel.add(txtDestination);
		 buildConstraints(constraints,3,1,1,1,0,0);
		 btnDestination = new JButton("Browse");
                 btnDestination.setContentAreaFilled(false);
                 btnDestination.setBorderPainted(false);
                 btnDestination.setFont(new Font("Times New Roman",Font.PLAIN,18));
                 btnDestination.setForeground(new Color(204,204,0));
                 btnDestination.setBackground(new Color(0,51,51));
		 gridbag.setConstraints(btnDestination,constraints) ;
		 panel.add(btnDestination);
		  buildConstraints(constraints,0,2,1,1,0,33);
		 lblTest = new JLabel("");
                 gridbag.setConstraints(lblTest,constraints) ;
		 panel.add(lblTest);
		 buildConstraints(constraints,1,2,3,1,0,0);
		 buildConstraints(constraints,0,3,1,1,0,33);
		 lblTest = new JLabel("Select your option :");
                 lblTest.setForeground(new Color(204,204,0));
                 lblTest.setFont(new Font("Times New Roman",Font.PLAIN,18));
		 gridbag.setConstraints(lblTest,constraints) ;
		 panel.add(lblTest);
		 constraints.anchor = GridBagConstraints.CENTER;
		 buildConstraints(constraints,1,3,1,1,0,33);
		 rbtnCompress = new JRadioButton(" Compress ",true);
                 gridbag.setConstraints(rbtnCompress ,constraints) ;
		 panel.add(rbtnCompress );
		 buildConstraints(constraints,2,3,1,1,0,33);
		 rbtnDecompress = new JRadioButton("Decompress");
		 gridbag.setConstraints(rbtnDecompress,constraints) ;
		 panel.add(rbtnDecompress);
		 buildConstraints(constraints,0,4,1,1,0,0);
		 lblTest = new JLabel("Status : ");
                 lblTest.setForeground(new Color(204,204,0));
                 lblTest.setFont(new Font("Times New Roman",Font.PLAIN,18));
		 gridbag.setConstraints(lblTest,constraints) ;
		 panel.add(lblTest);
		 buildConstraints(constraints,1,4,3,2,0,200);
		 constraints.fill = GridBagConstraints.BOTH;
		 txtStatus = new JTextArea(5,20);
                 txtStatus.setMargin(new Insets(5,5,5,5));
		 JScrollPane logScrollPane = new JScrollPane(txtStatus);
		 logScrollPane.setBorder(BorderFactory.createLineBorder(Color.black));
		 gridbag.setConstraints(logScrollPane,constraints) ;
		 panel.add(logScrollPane );
		 buildConstraints(constraints,1,6,1,1,40,25);
		 btnAction = new JButton(" Compress ");
                 btnAction.setContentAreaFilled(false);
                 btnAction.setBorderPainted(false);
                 btnAction.setFont(new Font("Times New Roman",Font.PLAIN,18));
                 btnAction.setForeground(new Color(204,204,0));
                 btnAction.setBackground(new Color(0,51,51));
		 gridbag.setConstraints(btnAction ,constraints) ;
		 panel.add(btnAction );
		 buildConstraints(constraints,2,6,1,1,40,25);
		 btnClear = new JButton("Clear");
                 btnClear.setContentAreaFilled(false);
                 btnClear.setBorderPainted(false);
                 btnClear.setFont(new Font("Times New Roman",Font.PLAIN,18));
                 btnClear.setForeground(new Color(204,204,0));
                 btnClear.setBackground(new Color(0,51,51));
		 gridbag.setConstraints(btnClear,constraints) ;
		 panel.add(btnClear);
                 buildConstraints(constraints,3,6,1,1,40,25);
		 btnBack = new JButton("Back");
                 btnBack.setContentAreaFilled(false);
                 btnBack.setBorderPainted(false);
                 btnBack.setFont(new Font("Times New Roman",Font.PLAIN,18));
                 btnBack.setForeground(new Color(204,204,0));
                 btnBack.setBackground(new Color(0,51,51));
		 gridbag.setConstraints(btnBack,constraints) ;
		 panel.add(btnBack);
                 txtSource.setEditable(false);
		 txtStatus.setEditable(false);
		 txtDestination.setEditable(false);
		 btnGroup = new ButtonGroup();
		 btnGroup.add(rbtnCompress);
		 btnGroup.add(rbtnDecompress);
		}
		void log(String stuff){
		if(txtStatus.getDocument().getLength() > 3000) txtStatus.setText(REFRESH);
		txtStatus.append("\n" + stuff);
		txtStatus.setCaretPosition(txtStatus.getDocument().getLength());
		}
                void buildConstraints(GridBagConstraints gbc, int gx, int gy,
		int gw, int gh, int wx, int wy) {
		gbc.fill = GridBagConstraints.HORIZONTAL;
		gbc.gridx = gx;
		gbc.gridy = gy;
		gbc.gridwidth = gw;
		gbc.gridheight = gh;
		gbc.weightx = wx;
		gbc.weighty = wy;
		}
		public void actionPerformed(ActionEvent e) {
                Object obj = e.getSource();
		if(obj instanceof JButton){
			if(obj == btnSource){
				int returnVal = fc.showOpenDialog(this);
                                if (returnVal == JFileChooser.APPROVE_OPTION) {
	            	txtSource.setText("");
	            	txtDestination.setText("");
    	            File file = fc.getSelectedFile();
    	            if(file.exists()){
             	    	log("Source : [" +  file.getName() + "]");
            	    	txtSource.setText(file.getPath());
            	    	suggestDestination();
            	    	}
            		}
			}else
			if(obj == btnDestination){
	            int returnVal = fc.showSaveDialog(this);
                    if (returnVal == JFileChooser.APPROVE_OPTION) {
    	        	txtDestination.setText("");
        	        File file = fc.getSelectedFile();
                	log("Destination : [" + file.getName() + "]");
                	txtDestination.setText(file.getPath());
                        }
                        }else
			if(obj == btnClear){
				clearDetails();
				rbtnCompress.setSelected(true);}
                        else
			if(obj == btnBack){
				new Welcome_1().setVisible(true);
				owner.setVisible(false);
			}
                        else
			if(obj == btnAction){
				if(txtSource.getText().length() == 0 || txtDestination.getText().length() == 0){
					log("Fill all Fields!");
					return;
					}
                                EveWorkingDlg dlg = new EveWorkingDlg (owner);
				int mode = (rbtnCompress.isSelected())? COMPRESS : DECOMPRESS;
				dlg.doWork(txtSource.getText(),txtDestination.getText(),mode,algoSelected);
				log(dlg.getSummary());		
			}
		}
		else
		if(obj instanceof JComboBox){
			suggestDestination();
            
		}
    	}

	public void itemStateChanged(ItemEvent e) {
		
		Object obj = e.getSource();
		
		
		if(obj instanceof JRadioButton){
			JRadioButton rbtn = (JRadioButton)obj;
			if(rbtn.isSelected()) btnAction.setText(rbtn.getText());
			suggestDestination();
			}
		}
		
	void clearDetails(){
		txtStatus.setText(REFRESH);
		txtSource.setText("");
		txtDestination.setText("");
		}
		
	void suggestDestination(){
		if(txtSource.getText().length() == 0) return ;
		if(rbtnCompress.isSelected()){
            	    	txtDestination.setText(txtSource.getText() + extensionArray[algoSelected]);
            	    }else
            	    if(txtSource.getText().endsWith(extensionArray[algoSelected])){
            	    	String buf = txtSource.getText().substring(0,txtSource.getText().lastIndexOf(extensionArray[algoSelected]));
            	    	txtDestination.setText(buf);
            	    }else{
            	    	txtDestination.setText(txtSource.getText() + extensionArray[algoSelected]);
                    }
		}
}

