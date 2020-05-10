package com.sedesoft.planillaweb.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;

@Entity
@Table(name="sede")
public class Sede {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long sedeId;
	@NotEmpty(message = "Este campo no debe quedar en blanco" )
	private String nombre;
	private String estado;
	private Long userId;
	private String date;
	
	public Sede() {
		// TODO Auto-generated constructor stub
	}

	public Long getSedeId() {
		return sedeId;
	}

	public void setSedeId(Long sedeId) {
		this.sedeId = sedeId;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "Sede [sedeId=" + sedeId + ", nombre=" + nombre + ", estado=" + estado + ", userId=" + userId + ", date="
				+ date + "]";
	}

}