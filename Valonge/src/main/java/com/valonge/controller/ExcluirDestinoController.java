package com.valonge.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.valonge.model.DestinoDAO;

/**
 * Servlet implementation class ExcluirDestinoController
 */
@WebServlet("/destino/excluir")
public class ExcluirDestinoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		DestinoDAO destino = new DestinoDAO();
		
		destino.deleteDestino(Integer.parseInt(req.getParameter("id")));
		res.sendRedirect("../destino");
	}

}
