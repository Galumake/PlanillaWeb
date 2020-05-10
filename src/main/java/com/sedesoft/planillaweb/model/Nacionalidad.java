package com.sedesoft.planillaweb.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
@Entity
@Table(name="nacionalidad")
public class Nacionalidad {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@NotEmpty(message = "Este campo no debe quedar en blanco")
	private String nombre; 
	private String id_user;
	private String date;
	
	public Nacionalidad() {
		// TODO Auto-generated constructor stub
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getId_user() {
		return id_user;
	}

	public void setId_user(String id_user) {
		this.id_user = id_user;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "Nacionalidad [id=" + id + ", nombre=" + nombre + ", id_user=" + id_user + ", date=" + date + "]";
	}
	
	
}
