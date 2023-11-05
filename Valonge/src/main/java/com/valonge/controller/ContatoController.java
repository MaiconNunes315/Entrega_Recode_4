package com.valonge.controller;

import java.io.IOException;
import java.time.LocalDateTime;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.valonge.model.Contato;
import com.valonge.model.ContatoDAO;

/**
 * Servlet implementation class ContatoController
 */
@WebServlet("/contato")
public class ContatoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		Contato contato = new Contato();
		ContatoDAO dao = new ContatoDAO();
		contato.setData(LocalDateTime.now());
		contato.setEmail(req.getParameter("inputEmail"));
		contato.setMensagem(req.getParameter("inputMensagem"));
		contato.setNome(req.getParameter("inputNome"));
		contato.setTelefone(req.getParameter("inputTel"));
		
		dao.createContato(contato);
		res.sendRedirect("index.jsp");
		
	}

}