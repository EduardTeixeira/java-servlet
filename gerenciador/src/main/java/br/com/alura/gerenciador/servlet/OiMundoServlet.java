package br.com.alura.gerenciador.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet(urlPatterns = "/oi", loadOnStartup = 1)
public class OiMundoServlet extends HttpServlet {
	
	public OiMundoServlet() {
		System.out.println("Criou OiMundoServlet !!!");
	}

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws IOException {

		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<body>");
		out.println("Oi mundo !!!");
		out.println("</body>");
		out.println("</html>");
		
		System.out.println("Servlet OiMundoServlet foi chamado");

	}

}
