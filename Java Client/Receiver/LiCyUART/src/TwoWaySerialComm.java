import gnu.io.CommPort;
import gnu.io.CommPortIdentifier;
import gnu.io.SerialPort;

import java.io.FileDescriptor;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class TwoWaySerialComm
{
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
            int dupe = 0;
            String rcvPartial = "";
            try
            {
                while ( ( len = this.in.read(buffer)) > -1 )
                {
                	String rcv = new String(buffer,0,len);
                	if (len > 0) {
                		for (int i = 0; i < len; i++) {
                			if (dupe == 1) {
                				rcvPartial = "";
                				dupe = 0;
                			} else {
                				System.out.print(rcv.charAt(i)+"");
                				dupe++;
                			}
                		}
                	}
                }
            }
            catch ( IOException e )
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