package br.com.alura.gerenciador.acao;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.alura.gerenciador.modelo.Banco;
import br.com.alura.gerenciador.modelo.Empresa;

public class MostraEmpresa implements IAcao{

	public String executa(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("Mostra Empresa");

		String paramId = request.getParameter("id");

		Integer id = Integer.valueOf(paramId);

		Banco banco = new Banco();

		Empresa empresa = banco.buscaEmpresaPelaId(id);

		request.setAttribute("empresa", empresa);
		
		// chamar o JSP
//		RequestDispatcher rd = request.getRequestDispatcher("/formAlteraEmpresa.jsp");
//		rd.forward(request, response);
		
		return "forward:formAlteraEmpresa.jsp";

	}

}
