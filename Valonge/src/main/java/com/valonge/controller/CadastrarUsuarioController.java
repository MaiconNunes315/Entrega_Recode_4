package com.valonge.controller;

import java.io.IOException;
import java.time.LocalDate;
import java.time.LocalDateTime;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.valonge.enums.Estado;
import com.valonge.model.Usuario;
import com.valonge.model.UsuarioDAO;


@WebServlet("/usuario/cadastrar")
public class CadastrarUsuarioController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		req.setAttribute("Estados", Estado.values());
		RequestDispatcher dispatcher = req.getRequestDispatcher("cadastrarUsuario.jsp");
		dispatcher.forward(req, res);		
		
	}
       
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		Usuario usuario = new Usuario();
		UsuarioDAO usersDao = new UsuarioDAO();
		
		
		usuario.setNome(req.getParameter("inputNome"));
		usuario.setCpf(req.getParameter("inputCpf"));
		usuario.setRg(req.getParameter("inputRg"));
		usuario.setEmail(req.getParameter("inputEmail"));
		usuario.setEstado(req.getParameter("inputEstado"));
		usuario.setSenha(req.getParameter("inputSenha"));
		usuario.setTelefone(req.getParameter("inputTel"));
		usuario.setTipoUsuario(req.getParameter("inputUsuario"));
		usuario.setEndereco(req.getParameter("inputEndereco"));
		LocalDate nascimento = LocalDate.parse(req.getParameter("inputNascimento"));
		usuario.setDataNascimento(nascimento);
		usuario.setCriado_em(LocalDateTime.now());
		usuario.setModificado_em(LocalDateTime.now());
		String endereco = req.getParameter("inputEndereco")+
							"; " + req.getParameter("inputComplemento")
							+"; " +req.getParameter("inputCidade")
							+"; " +req.getParameter("inputCep");
		usuario.setEndereco(endereco);
		
		usersDao.creatUsuario(usuario);
			res.sendRedirect("../usuario");
		
}

}
