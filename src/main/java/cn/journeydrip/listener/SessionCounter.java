package cn.journeydrip.listener;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * Application Lifecycle Listener implementation class SessionCounter
 *
 */
public class SessionCounter implements HttpSessionListener {

	private static int activeSessions =0;
	
    /**
     * Default constructor. 
     */
    public SessionCounter() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see HttpSessionListener#sessionCreated(HttpSessionEvent)
     */
    public void sessionCreated(HttpSessionEvent arg0)  { 

    	activeSessions++;
    }

	/**
     * @see HttpSessionListener#sessionDestroyed(HttpSessionEvent)
     */
    public void sessionDestroyed(HttpSessionEvent arg0)  { 
    	if (activeSessions>0) {
    	activeSessions--;
		}
      
    }


    
    /**
     * 获得当前的会话数
     * @return
     */
    public static int getActiveSessions(){
    	return activeSessions;
		
	}
	
}
