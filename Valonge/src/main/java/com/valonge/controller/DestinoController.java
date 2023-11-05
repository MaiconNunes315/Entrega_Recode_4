package com.valonge.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.valonge.model.Destino;
import com.valonge.model.DestinoDAO;

/**
 * Servlet implementation class DestinoController
 */
@WebServlet("/destino")
public class DestinoController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		DestinoDAO dao = new DestinoDAO();
		
		List<Destino> destinos = dao.readDestino();
		
		req.setAttribute("destinos", destinos);
		RequestDispatcher dispatcher = req.getRequestDispatcher("destino/mostrarDestinos.jsp");
		dispatcher.forward(req, res);
		
	}

}
