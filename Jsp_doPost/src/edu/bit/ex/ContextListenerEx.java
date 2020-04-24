package edu.bit.ex;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Servlet implementation class ContextListenerEx
 */
@WebListener
public class ContextListenerEx implements ServletContextListener {
	
	public ContextListenerEx() {

	}
	
	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		System.out.println("ContextDestroyed");
	}
	
	@Override
	public void contextInitialized(ServletContextEvent sce) {
		System.out.println("ContextInitialized");
	}

}
