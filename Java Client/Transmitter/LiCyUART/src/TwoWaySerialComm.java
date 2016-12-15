import gnu.io.CommPort;
import gnu.io.CommPortIdentifier;
import gnu.io.SerialPort;

import java.io.FileDescriptor;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Scanner;

public class TwoWaySerialComm
{
	private static final String DEMO_CAPIVARA = "CAPIVARA";
	private static final String ONE_WAY_CHAT_ROOM = "ONE WAY";
	
	private static String CURRENT_DEMO = ONE_WAY_CHAT_ROOM;
    public TwoWaySerialComm()
    {
        super();
    }
    
    void connect ( String portName ) throws Exception
    {
        CommPortIdentifier portIdentifier = CommPortIdentifier.getPortIdentifier(portName);
        if ( portIdentifier.isCurrentlyOwned() )
        {
            System.out.println("Error: Port is currently in use");
        }
        else
        {
            CommPort commPort = portIdentifier.open(this.getClass().getName(),2000);
            
            if ( commPort instanceof SerialPort )
            {
                SerialPort serialPort = (SerialPort) commPort;
                serialPort.setSerialPortParams(
                		115200,
                		SerialPort.DATABITS_8,
                		SerialPort.STOPBITS_1,
                		SerialPort.PARITY_NONE);
                
                InputStream in = serialPort.getInputStream();
                OutputStream out = serialPort.getOutputStream();
                
                (new Thread(new SerialReader(in))).start();
                (new Thread(new SerialWriter(out))).start();

            }
            else
            {
                System.out.println("Error: Only serial ports are handled by this example.");
            }
        }     
    }
    
    /** */
    public static class SerialReader implements Runnable 
    {
        InputStream in;
        
        public SerialReader ( InputStream in )
        {
            this.in = in;
        }
        
        public void run ()
        {
            byte[] buffer = new byte[1024];
            int len = -1;
            try
            {
                while ( ( len = this.in.read(buffer)) > -1 )
                {
                	String input = new String(buffer,0,len);
                	if (len > 0)
                		System.out.println("["+input+"]");
                	
                	if (len > 4) {
                		System.out.print(input.charAt(0) + "" + input.charAt(2) + ""+ input.charAt(4));
                	}
                }
            }
            catch ( IOException e )
            {
                e.printStackTrace();
            }            
        }
    }

    /** */
    public static class SerialWriter implements Runnable 
    {
        OutputStream out;
        String capybara = "     /)--/)"+'\n'+
        		"  __/      \\"+'\n'+" /     •  • \\"+'\n'+"|        v   |"+'\n'+
        		"| __ ____| __/"+'\n'+" U  U     U"+'\n'+""; 
        public SerialWriter ( OutputStream out )
        {
            this.out = out;
        }
        
        public void run ()
        {
            Scanner scanner = new Scanner(System.in);
        	System.out.println("Hey there, welcome to the LiCy Transmitter.\nPress [Enter] to start!");
            try
            {                
                while ( true )
                {
                	String sentence = scanner.nextLine();
                	if (CURRENT_DEMO == DEMO_CAPIVARA) {
	                	for (int i = 0; i < capybara.length() / 3; i++) {
	                		String v = capybara.charAt(3*i) +"" + capybara.charAt(3*i + 1) +""+ capybara.charAt(3*i + 2);
	                		this.out.write(v.getBytes());
	                		Thread.sleep(90);
	                	}
                	} else if (CURRENT_DEMO == ONE_WAY_CHAT_ROOM) {
                		if (sentence.length()%3==2) {
                			sentence = sentence + " ";
                		} else if (sentence.length()%3==1) {
                			sentence = sentence + "  ";
                		}
	                	for (int i = 0; i < sentence.length() / 3; i++) {
	                		String v = sentence.charAt(3*i) +"" + sentence.charAt(3*i + 1) +""+ sentence.charAt(3*i + 2);
	                		this.out.write(v.getBytes());
	                		Thread.sleep(90);
	                	}
                	}
                }                
            }
            catch ( Exception e )
            {
                e.printStackTrace();
            }            
        }
    }
    
    public static void main ( String[] args )
    {
        try
        {
            (new TwoWaySerialComm()).connect("COM3");
        }
        catch ( Exception e )
        {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
}