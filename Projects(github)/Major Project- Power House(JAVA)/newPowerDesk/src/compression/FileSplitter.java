package compression;
import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.FileDialog;
import java.awt.GridLayout;
import java.awt.Image;
import java.awt.Toolkit;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyEvent;
import java.io.File;
import java.net.URL;
import java.util.Observable;
import java.util.Observer;
import javax.swing.BorderFactory;
import javax.swing.Box;
import javax.swing.BoxLayout;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JCheckBox;
import javax.swing.JComboBox;
import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JProgressBar;
import javax.swing.JTextField;
import javax.swing.SwingConstants;
import javax.swing.UIManager;
import javax.swing.JMenuBar;
import javax.swing.JMenu;
import javax.swing.JMenuItem;
import javax.swing.SwingUtilities;
import javax.swing.filechooser.FileFilter;
import compression.*;
public class FileSplitter extends JFrame implements ActionListener, Observer {
	private static final String SPLIT = "SPLIT";
        private static final String BACK = "BACK";
        private static final String MERGE = "MERGE";
        private static final String SPLIT_SOURCE = "SPLIT_SOURCE";
        private static final String SPLIT_DESTINATION = "SPLIT_DESTINATION";
        private static final String MERGE_SOURCE = "MERGE_SOURCE";
	private static final String MERGE_DESTINATION = "MERGE_DESTINATION";
	private ImageIcon fileIcon;
	private JLabel splitSourceFileLabel;
	private JLabel splitDestinationFileLabel;
	private JLabel splitSizeLabel;
	private JTextField splitSourceFileField;
	private JTextField splitDestinationFileField;
	private JTextField splitSizeField;
	private JButton splitSourceFileButton;
	private JButton splitDestinationFileButton;
	private JButton splitButton;
	private JComboBox unitsCombo;
	private JLabel mergeSourceFileLabel;
	private JLabel mergeDestinationFileLabel;
	private JTextField mergeSourceFileField;
	private JTextField mergeDestinationFileField;
	private JButton mergeSourceFileButton;
	private JButton mergeDestinationFileButton;
	private JButton mergeButton;
        private JButton button = new JButton("Back");
	private JCheckBox deleteCheckBox;
	private JProgressBar progressBar;
	private File selectedFile = null;
	public FileSplitter() {
		URL url = FileSplitter.class.getResource("browse1.png");
		fileIcon = new ImageIcon(url);
		setLayout(new GridLayout(3, 1));
		addSplitPanel();
		addMergePanel();
		addStatusPanel();
                
	}
	public void update(Observable obs, Object obj) {
		if (obs instanceof SplitterThread) {
			SplitterThread splitThread = (SplitterThread) obs;
			if (splitThread.hasFinishedSplitting()) {
				enableButtons();
			}
			progressBar.setValue(splitThread.getProgressCount());
		} else if (obs instanceof MergerThread) {
			MergerThread mergeThread = (MergerThread) obs;
			if (mergeThread.hasFinishedMerging()) {
				enableButtons();
			}
			if (mergeThread.hasError()) {
			  showMessage(mergeThread.getError().toString());
			}
			progressBar.setValue(mergeThread.getProgressCount());
		}
	}
	private void addSplitPanel() {
		createSplitPanelComponents();
		JPanel splitPanel = new JPanel();
                splitPanel.setBackground(new Color(0,59,59));
		BorderLayout bl = new BorderLayout();
		bl.setVgap(8);
		splitPanel.setLayout(bl);
		splitPanel.setBorder(BorderFactory.createCompoundBorder(BorderFactory
				.createTitledBorder("Split File"), BorderFactory
				.createEmptyBorder(5, 5, 5, 5)));
		JPanel panel1 = new JPanel();
                panel1.setBackground(new Color(0,59,59));
		panel1.setLayout(new BoxLayout(panel1, BoxLayout.X_AXIS));
		panel1.add(splitSourceFileLabel);
		panel1.add(Box.createRigidArea(new Dimension(10, 0)));
		panel1.add(splitSourceFileField);
		panel1.add(splitSourceFileButton);
		panel1.add(Box.createRigidArea(new Dimension(20, 0)));
		panel1.add(splitDestinationFileLabel);
		panel1.add(Box.createRigidArea(new Dimension(10, 0)));
		panel1.add(splitDestinationFileField);
		panel1.add(splitDestinationFileButton);
		JPanel panel2 = new JPanel();
                panel2.setBackground(new Color(0,59,59));
		panel2.setLayout(new BoxLayout(panel2, BoxLayout.X_AXIS));
		panel2.add(splitSizeLabel);
		panel2.add(Box.createRigidArea(new Dimension(20, 0)));
		panel2.add(splitSizeField);
		panel2.add(unitsCombo);
		JPanel panel3 = new JPanel();
                panel3.setBackground(new Color(0,59,59));
		panel3.setLayout(new BorderLayout());
		panel3.add(splitButton, BorderLayout.EAST);
		panel2.add(panel3);
		splitPanel.add(panel1, BorderLayout.NORTH);
		splitPanel.add(panel2, BorderLayout.SOUTH);
		add(splitPanel);
	}
	private void addMergePanel() {
            createMergePanelComponents();
        	JPanel mergePanel = new JPanel();
                mergePanel.setBackground(new Color(0,59,59));
		BorderLayout bl = new BorderLayout();
		bl.setVgap(8);
		mergePanel.setLayout(bl);
		mergePanel.setBorder(BorderFactory.createCompoundBorder(BorderFactory
				.createTitledBorder("Merge File"), BorderFactory
				.createEmptyBorder(5, 5, 5, 5)));
		JPanel panel1 = new JPanel();
                panel1.setBackground(new Color(0,59,59));
		panel1.setLayout(new BoxLayout(panel1, BoxLayout.X_AXIS));
		panel1.add(mergeSourceFileLabel);
		panel1.add(Box.createRigidArea(new Dimension(5, 0)));
		panel1.add(mergeSourceFileField);
		panel1.add(mergeSourceFileButton);
		panel1.add(Box.createRigidArea(new Dimension(20, 0)));
		panel1.add(mergeDestinationFileLabel);
		panel1.add(Box.createRigidArea(new Dimension(10, 0)));
		panel1.add(mergeDestinationFileField);
		panel1.add(mergeDestinationFileButton);
		JPanel panel2 = new JPanel();
                panel2.setBackground(new Color(0,59,59));
		panel2.setLayout(new BorderLayout());
		deleteCheckBox = new JCheckBox("Delete segment files");
                deleteCheckBox.setBackground(new Color(0,59,59));
                deleteCheckBox.setForeground(new Color(255,255,0));
		panel2.add(deleteCheckBox, BorderLayout.WEST);
		panel2.add(mergeButton, BorderLayout.EAST);
		mergePanel.add(panel1, BorderLayout.NORTH);
		mergePanel.add(panel2, BorderLayout.SOUTH);
		add(mergePanel);
	}
        private JLabel messageLabel;
	private void addStatusPanel() {
		progressBar = new JProgressBar();
		progressBar.setMinimum(0);
		progressBar.setValue(0);
		progressBar.setIndeterminate(false);
		progressBar.setStringPainted(false);
		JPanel statusPanel = new JPanel();
                statusPanel.setBackground(new Color(0,59,59));
		statusPanel.add(Box.createRigidArea(new Dimension(20, 20)));
		statusPanel.setLayout(new BoxLayout(statusPanel, BoxLayout.Y_AXIS));
		statusPanel.add(progressBar);
		statusPanel.add(Box.createRigidArea(new Dimension(20, 10)));
		messageLabel = new JLabel("", SwingConstants.CENTER);
		messageLabel.setMaximumSize(new Dimension(600, 20));
		messageLabel.setMinimumSize(new Dimension(600, 20));
		messageLabel.setForeground(Color.red);
		statusPanel.add(messageLabel);
                statusPanel.add(button);
                button.setLocation(680, 508);
                button.addActionListener(this);
                button.setActionCommand(BACK);
		add(statusPanel);
	}
	private void createSplitPanelComponents() {
		splitSourceFileLabel = new JLabel("Source File");
                splitSourceFileLabel.setBackground(new Color(0,59,59));
                splitSourceFileLabel.setForeground(new Color(255,255,0));
        	splitDestinationFileLabel = new JLabel("Destination Folder");
                splitDestinationFileLabel.setBackground(new Color(0,59,59));
                splitDestinationFileLabel.setForeground(new Color(255,255,0));
                splitSizeLabel = new JLabel("Split Size");
                splitSizeLabel.setBackground(new Color(0,59,59));
                splitSizeLabel.setForeground(new Color(255,255,0));
                splitSourceFileField = new JTextField();
		splitDestinationFileField = new JTextField();
                splitSizeField = new JTextField(4);
		splitSizeField.setMaximumSize(new Dimension(80, 25));
		splitSizeField.setMinimumSize(new Dimension(60, 25));
		splitSourceFileButton = new JButton(fileIcon);
		splitSourceFileButton.setActionCommand(SPLIT_SOURCE);
		splitSourceFileButton.addActionListener(this);
		splitDestinationFileButton = new JButton(fileIcon);
		splitDestinationFileButton.setActionCommand(SPLIT_DESTINATION);
		splitDestinationFileButton.addActionListener(this);
		splitButton = new JButton("Split");
		splitButton.addActionListener(this);
		splitButton.setActionCommand(SPLIT);
		String[] units = { "KB", "MB", "GB" };
		unitsCombo = new JComboBox(units);
		unitsCombo.setSize(new Dimension(20, 25));
		unitsCombo.setPreferredSize(new Dimension(50, 25));
	}
	private void createMergePanelComponents() {
		mergeSourceFileLabel = new JLabel("Segment File");
                mergeSourceFileLabel.setBackground(new Color(0,59,59));
                mergeSourceFileLabel.setForeground(new Color(255,255,0));
                mergeDestinationFileLabel = new JLabel("Destination Folder");
                mergeDestinationFileLabel.setBackground(new Color(0,59,59));
                mergeDestinationFileLabel.setForeground(new Color(255,255,0));
                mergeSourceFileField = new JTextField();
		mergeDestinationFileField = new JTextField();
		mergeSourceFileButton = new JButton(fileIcon);
		mergeSourceFileButton.setActionCommand(MERGE_SOURCE);
		mergeSourceFileButton.addActionListener(this);
		mergeDestinationFileButton = new JButton(fileIcon);
		mergeDestinationFileButton.setActionCommand(MERGE_DESTINATION);
		mergeDestinationFileButton.addActionListener(this);
		mergeButton = new JButton("Merge");
		mergeButton.addActionListener(this);
		mergeButton.setActionCommand(MERGE);
	}

	private static JFrame frame;
	public static void main(String[] args) throws Exception {
		try {
			UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
		} catch (Exception e) {
			System.err.println("Failed to set look and feel :" + e);
		}

		FileSplitter mainPanel = new FileSplitter();

		frame.getContentPane().add(mainPanel, BorderLayout.NORTH);
		frame.setSize(600, 320);
                frame.setBackground(new Color(0,59,59));
		setIcon();
		centralizeFrame();
		frame.setVisible(true);
	}
	private static void setLookAndFeel(JFrame frame, String lnfName){
		try {
			UIManager.setLookAndFeel(lnfName);
		} catch (Exception e) {
			System.err.println("Failed to set look and feel :" + e);
			return;
		}
		SwingUtilities.updateComponentTreeUI(frame);
		frame.pack();
	}
	private static void centralizeFrame() {
		Dimension screenSize = Toolkit.getDefaultToolkit().getScreenSize();
		int screenWidth = screenSize.width, screenHeight = screenSize.height;
		Dimension frameSize = frame.getSize();
		int x = (screenWidth - frameSize.width) / 2, y = (screenHeight - frameSize.height) / 2;
		frame.setLocation(x, y);
	}
	private static void setIcon() {
		URL url = FileSplitter.class.getResource("seg_folder.gif");
		Image icon = Toolkit.getDefaultToolkit().getImage(url);
	}
	private void showFilteredFiles(JTextField target1, JTextField target2) {
		JFileChooser chooser = new JFileChooser();
		chooser.setDialogTitle("Select File");
		chooser.setFileFilter(new MetaFileFilter());
		chooser.setFileSelectionMode(JFileChooser.FILES_AND_DIRECTORIES);
		if (chooser.showOpenDialog(this) == JFileChooser.APPROVE_OPTION) {
			target1.setText(chooser.getSelectedFile().getPath());
			target2.setText(chooser.getCurrentDirectory().getPath());
		}
	}
	private void showFileChooser(JTextField target1, JTextField target2) {

		FileDialog fd = new FileDialog(frame, "Select File");
		fd.show();
		if (fd.getFile() != null) {
			String filename = fd.getDirectory() + fd.getFile();
			target1.setText(filename);
			target2.setText(fd.getDirectory());
		}
	}
	private void showDirChooser(JTextField target) {
		JFileChooser chooser = new JFileChooser();
		if (!target.getText().equals("")) {
			File f = new File(target.getText());
			if (f.isDirectory())
				chooser.setCurrentDirectory(new java.io.File(target.getText()));
		}

		chooser.setDialogTitle("Select directory");
		chooser.setFileSelectionMode(JFileChooser.DIRECTORIES_ONLY);

		if (chooser.showOpenDialog(this) == JFileChooser.APPROVE_OPTION) {
			target.setText(chooser.getSelectedFile().toString());
		}

	}

	public void actionPerformed(ActionEvent ae) {

		String command = ae.getActionCommand();
		showMessage("");
		progressBar.setValue(0);
		progressBar.setStringPainted(false);
		if (SPLIT_SOURCE.equals(command)) {
			showFileChooser(splitSourceFileField, splitDestinationFileField);
			splitSourceFileField.requestFocus();
		} else if (MERGE_SOURCE.equals(command)) {
			showFilteredFiles(mergeSourceFileField, mergeDestinationFileField);
			mergeSourceFileField.requestFocus();
		} else if (SPLIT_DESTINATION.equals(command)) {
			showDirChooser(splitDestinationFileField);
			splitDestinationFileField.requestFocus();
		} else if (MERGE_DESTINATION.equals(command)) {
			showDirChooser(mergeDestinationFileField);
			mergeDestinationFileField.requestFocus();
		} else if (SPLIT.equals(command)) {
			if (notValidSplitFields())
				return;
			progressBar.setStringPainted(true);
			disableButtons();
			splitFile();
		} else if (MERGE.equals(command)) {
			if (notValidMergeFields())
				return;
			progressBar.setStringPainted(true);
			disableButtons();
			mergeFile();
		}
                else if(BACK.equals(command))
                {
                     new Welcome_1().setVisible(true);
                       this.dispose();
                }
	}
	private void disableButtons() {
		splitButton.setEnabled(false);
		mergeButton.setEnabled(false);
	}
    	private void enableButtons() {
		splitButton.setEnabled(true);
		mergeButton.setEnabled(true);
                button.setEnabled(true);
	}
                private boolean notValidSplitFields() {
		if (!(new File(splitSourceFileField.getText()).isFile())) {
			showMessage("Please select a valid source File.");
			return true;
		} else if (!(new File(splitDestinationFileField.getText())
				.isDirectory())) {
			showMessage("Please select a valid Destination Folder.");
			return true;
		} else if (notValidSplitSize()) {
			showMessage("Please enter a valid split size.");
			return true;
		}
		return false;
	}
	private boolean notValidSplitSize() {
		try {
			Long.parseLong(splitSizeField.getText());
		} catch (Exception e) {
			return true;
		}
		return false;
	}

	private boolean notValidMergeFields() {
		if (notValidMetaFile()) {
			showMessage("Please select a valid meta File.");
			return true;
		} else if (!(new File(mergeDestinationFileField.getText())
				.isDirectory())) {
			showMessage("Please select a valid Destination Folder.");
			return true;
		}
		return false;
	}

	private boolean notValidMetaFile() {
		File f = new File(mergeSourceFileField.getText());
		if (f.isFile() && f.getName().endsWith("split.meta"))
			return false;

		return true;
	}

	private void splitFile() {
		long splitSize = getSplitSize(splitSizeField.getText(),
				(String) unitsCombo.getSelectedItem());
		SplitterThread splitThread = new SplitterThread(splitSourceFileField
				.getText(), splitDestinationFileField.getText(), splitSize);
		splitThread.addObserver(this);
                progressBar.setMaximum((int) splitThread.getNoOfPieces());
		splitThread.split();
	}
	private void mergeFile() {
		try {
			MergerThread mergeThread = new MergerThread(mergeSourceFileField
					.getText(), mergeDestinationFileField.getText(),
					deleteCheckBox.isSelected());
            mergeThread.addObserver(this);
			progressBar.setMaximum((int) mergeThread.getNoOfPieces());
			mergeThread.merge();
	    } catch (MetaFileParseException me) {
		  showMessage("Not a valid meta file.");
		}
	}

	private long getSplitSize(String size, String units) {
		long longUnits = 1024;
		if ("MB".equals(units))
			longUnits = longUnits * longUnits;
		else if ("GB".equals(units))
			longUnits = longUnits * longUnits * longUnits;
		return Long.parseLong(size) * longUnits;
	}
	private void showMessage(String message) {
		messageLabel.setText(message);
	}
	class MetaFileFilter extends FileFilter{
		public boolean accept(File pathname){
			if(pathname == null || pathname.isDirectory()){
				return true;
			}
			return pathname.toString().endsWith("meta");
		}
		public String getDescription() {
			return "*.meta";
		}
	}
}
