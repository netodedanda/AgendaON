package br.com.agendarapida.dao;

import java.util.LinkedList;
import java.util.List;

import org.springframework.stereotype.Repository;

import br.com.agendarapida.model.Horario;

@Repository
public class HorarioDAO {

	private static List<Horario> horarios;

	public HorarioDAO() {
		horarios = new LinkedList<Horario>();
	}

	public void salvar(Horario horario) {
		horarios.add(horario);
		System.out.println(horarios);
	}

	public List<Horario> getAll() {
		return horarios;
	}
	public Horario getId(int id) {
		return horarios.get(id);
	}

	public void excluir(int id) {
		horarios.remove(id);
	}
	public void editar(int id, Horario horario) {
		horarios.get(id).setDia(horario.dia);
		horarios.get(id).setDescricao(horario.descricao);
	}
}
