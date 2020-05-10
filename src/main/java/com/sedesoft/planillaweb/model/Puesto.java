package com.sedesoft.planillaweb.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;

@Entity
@Table(name="puesto")
public class Puesto {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long puestoId;
	@NotEmpty(message = "Este campo no debe quedar en blanco" )
	private String nombre;
	private String estado;
	private String date;
	private Long userId;
	
	public Puesto() {
		// TODO Auto-generated constructor stub
	}

	public Long getPuestoId() {
		return puestoId;
	}

	public void setPuestoId(Long puestoId) {
		this.puestoId = puestoId;
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

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	@Override
	public String toString() {
		return "Puesto [puestoId=" + puestoId + ", nombre=" + nombre + ", estado=" + estado + ", date=" + date
				+ ", userId=" + userId + "]";
	}

	
}