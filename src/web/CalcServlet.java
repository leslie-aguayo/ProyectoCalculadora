package web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CalcServlet extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest peticion, HttpServletResponse respuesta) 
	throws ServletException, IOException{
		
		int op = Integer.parseInt(peticion.getParameter("cboOperacion")); 
		double numero1 = Double.parseDouble(peticion.getParameter("numero1"));
		double numero2 = Double.parseDouble(peticion.getParameter("numero2"));
		String resultado = "";
		
		
		switch (op) {
		case 1:
			resultado = ""+(numero1 + numero2);
			break;
		case 2:
			resultado = ""+(numero1-numero2);
			break;
		case 3:
			resultado = ""+(numero1*numero2);
			break;
		case 4:
			if(numero2==0) {
				resultado="No se puede dividir por 0";
			}else {
				resultado=""+(numero1/numero2);
			}
			break;
		}
		peticion.getSession().setAttribute("resultado", resultado);
		respuesta.sendRedirect("index.jsp");
		
	}

}
