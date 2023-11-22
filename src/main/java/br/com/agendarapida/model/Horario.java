package br.com.agendarapida.model;

public class Horario {
	public String dia;
	public String descricao;
	
	public  Horario() {}
	public Horario(String dia, String descricao) {
		super();
		this.dia = dia;
		this.descricao = descricao;
	}
	public String getDia() {
		return dia;
	}
	public void setDia(String dia) {
		this.dia = dia;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	 @Override
	    public String toString() {
	        return "Horario [dia=" + dia + ", descricao=" + descricao + "]";
	    }
}
