package com.valonge.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.valonge.connection.Conexao;



public class DestinoDAO {
	private String sql;
	private Connection conexao;
	
	public void createDestino(Destino destino) {
		sql = "INSERT INTO destino (detalhes, estado, "
				+ "pais, img, cidade) VALUES "
				+ "(?, ?, ?,?, ?)";
		conexao = Conexao.conectar();
		try(PreparedStatement pstm = conexao.prepareStatement(sql)){
			pstm.setString(1, destino.getDetalhes());
			pstm.setString(2, destino.getEstado());
			pstm.setString(3, destino.getPais());
			pstm.setString(4, destino.getImg());
			pstm.setString(5, destino.getCidade());
			pstm.executeUpdate();
			
			System.out.println("Destino " + destino.getCidade() + " Cadastrado com sucesso");
		}catch (SQLException e) {
			System.out.println(e.getMessage());
		}
	}
	
	public List<Destino> readDestino() {
		sql = "SELECT * FROM destino";
		conexao = Conexao.conectar();
		ResultSet rset = null;
		List<Destino> destinos = new ArrayList<Destino>();
		try(PreparedStatement pstm = conexao.prepareStatement(sql)){
			
			rset = pstm.executeQuery();
			while(rset.next()) {
				
				Destino destino = new Destino();
				
				destino.setId_destino(rset.getInt("id_destino"));
				destino.setCidade(rset.getString("cidade"));
				destino.setDetalhes(rset.getString("detalhes"));
				destino.setEstado(rset.getString("estado"));
				destino.setImg(rset.getString("img"));
				destino.setPais(rset.getString("pais"));
				destinos.add(destino);
			}		
		}catch (SQLException e) {
		System.out.println(e.getMessage());
		}
			return destinos;
	}
	
	public Destino searchDestino(int id) {
		conexao = Conexao.conectar();
		sql = "SELECT * FROM destino WHERE id_destino = " + id;
		ResultSet rset = null;
		Destino destino = new Destino();
		try (PreparedStatement pstm = conexao.prepareStatement(sql)) {
			rset = pstm.executeQuery();

			while (rset.next()) {
				destino.setId_destino(rset.getInt("id_destino"));
				destino.setCidade(rset.getString("cidade"));
				destino.setDetalhes(rset.getString("detalhes"));
				destino.setEstado(rset.getString("estado"));
				destino.setImg(rset.getString("img"));
				destino.setPais(rset.getString("pais"));

				
			}

		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		
		return destino;
	}
	
	public void updateDestino(Destino destino) {
		conexao = Conexao.conectar();
		sql = "UPDATE destino SET cidade = ?, detalhes = ?, estado = ?,"
				+ "img = ?,pais = ? WHERE id_destino = ?";

		try (PreparedStatement pstm = conexao.prepareStatement(sql)) {

					pstm.setString(1, destino.getCidade());
					pstm.setString(2, destino.getDetalhes());
					pstm.setString(3, destino.getEstado());
					pstm.setString(4, destino.getImg());
					pstm.setString(5, destino.getPais());
					pstm.setInt(6, destino.getId_destino());
					pstm.executeUpdate();
			
				System.out.println("Destino Atualizado com sucesso");

		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
	}
	
	public void deleteDestino(int id) {
		conexao = Conexao.conectar();
		sql = "DELETE FROM destino WHERE id_destino = ?";

		try (PreparedStatement pstm = conexao.prepareStatement(sql)) {

			pstm.setInt(1, id);
			pstm.execute();
			
			System.out.println("Destino deletado com sucesso");
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}

	}
}
