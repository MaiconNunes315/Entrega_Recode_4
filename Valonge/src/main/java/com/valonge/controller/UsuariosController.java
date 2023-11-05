package com.valonge.controller;

import java.io.IOException;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.valonge.enums.Estado;
import com.valonge.model.Usuario;
import com.valonge.model.UsuarioDAO;


@WebServlet("/usuario")
public class UsuariosController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	UsuarioDAO usersDao = new UsuarioDAO();
  
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		List<Usuario> users = usersDao.readUsuarios();
		req.setAttribute("users", users);
		req.setAttribute("Estados", Estado.values());
		RequestDispatcher dispatcher = req.getRequestDispatcher("usuario/mostraUsuarios.jsp");
		dispatcher.forward(req, res);		
		
	}

}
