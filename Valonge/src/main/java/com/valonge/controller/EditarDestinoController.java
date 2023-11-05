package com.valonge.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.valonge.enums.Estado;
import com.valonge.model.Destino;
import com.valonge.model.DestinoDAO;
import com.valonge.model.Usuario;

/**
 * Servlet implementation class EditarDestino
 */
@WebServlet("/destino/editar")
public class EditarDestinoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DestinoDAO destinos = new DestinoDAO();
       
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		Destino destino =  destinos.searchDestino(id);	
			req.setAttribute("destino", destino);

			RequestDispatcher dispatcher = req.getRequestDispatcher("editarDestino.jsp");
			dispatcher.forward(req, res);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		Destino destino = new Destino();
		
		destino.setCidade(req.getParameter("inputCidade"));
		destino.setEstado(req.getParameter("inputEstado"));
		destino.setPais(req.getParameter("inputPais"));
		destino.setDetalhes(req.getParameter("inputDetalhes"));
		destino.setImg(req.getParameter("inputImg"));
		
	destinos.updateDestino(destino, Integer.parseInt(req.getParameter("id")));;
		res.sendRedirect("../destino");
	}

}
