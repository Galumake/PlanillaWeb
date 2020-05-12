package com.sedesoft.planillaweb.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.Size;
@Entity
@Table(name="persona")
public class Persona {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@Column(unique = true)
	@Size(min = 9, max = 9)
	private String cedula;
	@Column(nullable = false)
	private String nombre;
	@Column(nullable = false)
	private String apellido;
	@Column(nullable = false)
	private String apellido2;
	private Date nacimiento;
	@Size(max = 9)
	private String sexo;
	@Size(max = 40)
	private String estado_civil;
	@Size(max = 60)
	private String nacionalidad;
	private Integer edad;
	@Size(max = 600)
	private String direccion;
	@Size(max = 14)
	private String celular;
	@Size(max = 14)
	private String telHabitacion;
	@Size(max = 14)
	private String telContacto;
	@Size(max = 30)
	private String nombre_contacto;
	@Size(max = 60)
	private String educacion;
	@Size(max = 150)
	private String correo;
	@Size(max = 100)
	private String padecimiento;
	@Size(max = 600)
	private String observacion;
	@Size(max = 150)
	private String estadoContrato;
	private Boolean vigencia;
	private Date fechaContratacion;
	private String tipo_contrato;
	@OneToOne
	@JoinColumn(name="puestoId")
	private Puesto puesto;
	@OneToOne
	@JoinColumn(name="departamentoId")
	private Departamento dpto;
	@OneToOne
	@JoinColumn(name="sedeId")
	private Sede sede;
	@Size(max = 30)
	private String forma_pago;
	@Size(max = 30)
	private String tipo_jornada;
	private Double jornada_diaria;
	private Double jornada_semanal;
	private Boolean asumeHoraAlmuerzo;
	private Double costo_hora;
	private Double costo_extra;
	private Double costo_doble;
	private Double salario_base;
	private Double salario_neto;
	private Double salabrio_bruto;
	@Size(max = 30)
	private String tipo_seguro;
	private Double monto_aporte;
	private Double pago_bonificacion;
	private Double pago_celular;
	private Double pago_transporte;
	@Size(max = 30)
	private String moneda;
	@Size(max = 50)
	private String medio_pago;
	@Size(max = 60)
	private String banco;
	@Size(max = 22)
	private String iban;
	private Date fecha_extincion;
	@Size(max = 600)
	private String detalle_extincion;
	@OneToOne
	@JoinColumn(name="userId")
	private User user;
	private Date fecha;

	public Persona() {
		// TODO Auto-generated constructor stub
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getCedula() {
		return cedula;
	}

	public void setCedula(String cedula) {
		this.cedula = cedula;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public String getApellido2() {
		return apellido2;
	}

	public void setApellido2(String apellido2) {
		this.apellido2 = apellido2;
	}

	public Date getNacimiento() {
		return nacimiento;
	}

	public void setNacimiento(Date nacimiento) {
		this.nacimiento = nacimiento;
	}

	public String getSexo() {
		return sexo;
	}

	public void setSexo(String sexo) {
		this.sexo = sexo;
	}

	public String getEstado_civil() {
		return estado_civil;
	}

	public void setEstado_civil(String estado_civil) {
		this.estado_civil = estado_civil;
	}

	public String getNacionalidad() {
		return nacionalidad;
	}

	public void setNacionalidad(String nacionalidad) {
		this.nacionalidad = nacionalidad;
	}

	public Integer getEdad() {
		return edad;
	}

	public void setEdad(Integer edad) {
		this.edad = edad;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getCelular() {
		return celular;
	}

	public void setCelular(String celular) {
		this.celular = celular;
	}

	public String getTelHabitacion() {
		return telHabitacion;
	}

	public void setTelHabitacion(String telHabitacion) {
		this.telHabitacion = telHabitacion;
	}

	public String getTelContacto() {
		return telContacto;
	}

	public void setTelContacto(String telContacto) {
		this.telContacto = telContacto;
	}

	public String getNombre_contacto() {
		return nombre_contacto;
	}

	public void setNombre_contacto(String nombre_contacto) {
		this.nombre_contacto = nombre_contacto;
	}

	public String getEducacion() {
		return educacion;
	}

	public void setEducacion(String educacion) {
		this.educacion = educacion;
	}

	public String getCorreo() {
		return correo;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}

	public String getPadecimiento() {
		return padecimiento;
	}

	public void setPadecimiento(String padecimiento) {
		this.padecimiento = padecimiento;
	}

	public String getObservacion() {
		return observacion;
	}

	public void setObservacion(String observacion) {
		this.observacion = observacion;
	}

	public String getEstadoContrato() {
		return estadoContrato;
	}

	public void setEstadoContrato(String estadoContrato) {
		this.estadoContrato = estadoContrato;
	}

	public Boolean getVigencia() {
		return vigencia;
	}

	public void setVigencia(Boolean vigencia) {
		this.vigencia = vigencia;
	}

	public Date getFechaContratacion() {
		return fechaContratacion;
	}

	public void setFechaContratacion(Date fechaContratacion) {
		this.fechaContratacion = fechaContratacion;
	}

	public String getTipo_contrato() {
		return tipo_contrato;
	}

	public void setTipo_contrato(String tipo_contrato) {
		this.tipo_contrato = tipo_contrato;
	}

	public Puesto getPuesto() {
		return puesto;
	}

	public void setPuesto(Puesto puesto) {
		this.puesto = puesto;
	}

	public Departamento getDpto() {
		return dpto;
	}

	public void setDpto(Departamento dpto) {
		this.dpto = dpto;
	}

	public Sede getSede() {
		return sede;
	}

	public void setSede(Sede sede) {
		this.sede = sede;
	}

	public String getForma_pago() {
		return forma_pago;
	}

	public void setForma_pago(String forma_pago) {
		this.forma_pago = forma_pago;
	}

	public String getTipo_jornada() {
		return tipo_jornada;
	}

	public void setTipo_jornada(String tipo_jornada) {
		this.tipo_jornada = tipo_jornada;
	}

	public Double getJornada_diaria() {
		return jornada_diaria;
	}

	public void setJornada_diaria(Double jornada_diaria) {
		this.jornada_diaria = jornada_diaria;
	}

	public Double getJornada_semanal() {
		return jornada_semanal;
	}

	public void setJornada_semanal(Double jornada_semanal) {
		this.jornada_semanal = jornada_semanal;
	}

	public Boolean getAsumeHoraAlmuerzo() {
		return asumeHoraAlmuerzo;
	}

	public void setAsumeHoraAlmuerzo(Boolean asumeHoraAlmuerzo) {
		this.asumeHoraAlmuerzo = asumeHoraAlmuerzo;
	}

	public Double getCosto_hora() {
		return costo_hora;
	}

	public void setCosto_hora(Double costo_hora) {
		this.costo_hora = costo_hora;
	}

	public Double getCosto_extra() {
		return costo_extra;
	}

	public void setCosto_extra(Double costo_extra) {
		this.costo_extra = costo_extra;
	}

	public Double getCosto_doble() {
		return costo_doble;
	}

	public void setCosto_doble(Double costo_doble) {
		this.costo_doble = costo_doble;
	}

	public Double getSalario_base() {
		return salario_base;
	}

	public void setSalario_base(Double salario_base) {
		this.salario_base = salario_base;
	}

	public Double getSalario_neto() {
		return salario_neto;
	}

	public void setSalario_neto(Double salario_neto) {
		this.salario_neto = salario_neto;
	}

	public Double getSalabrio_bruto() {
		return salabrio_bruto;
	}

	public void setSalabrio_bruto(Double salabrio_bruto) {
		this.salabrio_bruto = salabrio_bruto;
	}

	public String getTipo_seguro() {
		return tipo_seguro;
	}

	public void setTipo_seguro(String tipo_seguro) {
		this.tipo_seguro = tipo_seguro;
	}

	public Double getMonto_aporte() {
		return monto_aporte;
	}

	public void setMonto_aporte(Double monto_aporte) {
		this.monto_aporte = monto_aporte;
	}

	public Double getPago_bonificacion() {
		return pago_bonificacion;
	}

	public void setPago_bonificacion(Double pago_bonificacion) {
		this.pago_bonificacion = pago_bonificacion;
	}

	public Double getPago_celular() {
		return pago_celular;
	}

	public void setPago_celular(Double pago_celular) {
		this.pago_celular = pago_celular;
	}

	public Double getPago_transporte() {
		return pago_transporte;
	}

	public void setPago_transporte(Double pago_transporte) {
		this.pago_transporte = pago_transporte;
	}

	public String getMoneda() {
		return moneda;
	}

	public void setMoneda(String moneda) {
		this.moneda = moneda;
	}

	public String getMedio_pago() {
		return medio_pago;
	}

	public void setMedio_pago(String medio_pago) {
		this.medio_pago = medio_pago;
	}

	public String getBanco() {
		return banco;
	}

	public void setBanco(String banco) {
		this.banco = banco;
	}

	public String getIban() {
		return iban;
	}

	public void setIban(String iban) {
		this.iban = iban;
	}

	public Date getFecha_extincion() {
		return fecha_extincion;
	}

	public void setFecha_extincion(Date fecha_extincion) {
		this.fecha_extincion = fecha_extincion;
	}

	public String getDetalle_extincion() {
		return detalle_extincion;
	}

	public void setDetalle_extincion(String detalle_extincion) {
		this.detalle_extincion = detalle_extincion;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Date getFecha() {
		return fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}

	@Override
	public String toString() {
		return "Persona [id=" + id + ", cedula=" + cedula + ", nombre=" + nombre + ", apellido=" + apellido
				+ ", apellido2=" + apellido2 + ", nacimiento=" + nacimiento + ", sexo=" + sexo + ", estado_civil="
				+ estado_civil + ", nacionalidad=" + nacionalidad + ", edad=" + edad + ", direccion=" + direccion
				+ ", celular=" + celular + ", telHabitacion=" + telHabitacion + ", telContacto=" + telContacto
				+ ", nombre_contacto=" + nombre_contacto + ", educacion=" + educacion + ", correo=" + correo
				+ ", padecimiento=" + padecimiento + ", observacion=" + observacion + ", estadoContrato="
				+ estadoContrato + ", vigencia=" + vigencia + ", fechaContratacion=" + fechaContratacion
				+ ", tipo_contrato=" + tipo_contrato + ", puesto=" + puesto + ", dpto=" + dpto + ", sede=" + sede
				+ ", forma_pago=" + forma_pago + ", tipo_jornada=" + tipo_jornada + ", jornada_diaria=" + jornada_diaria
				+ ", jornada_semanal=" + jornada_semanal + ", asumeHoraAlmuerzo=" + asumeHoraAlmuerzo + ", costo_hora="
				+ costo_hora + ", costo_extra=" + costo_extra + ", costo_doble=" + costo_doble + ", salario_base="
				+ salario_base + ", salario_neto=" + salario_neto + ", salabrio_bruto=" + salabrio_bruto
				+ ", tipo_seguro=" + tipo_seguro + ", monto_aporte=" + monto_aporte + ", pago_bonificacion="
				+ pago_bonificacion + ", pago_celular=" + pago_celular + ", pago_transporte=" + pago_transporte
				+ ", moneda=" + moneda + ", medio_pago=" + medio_pago + ", banco=" + banco + ", iban=" + iban
				+ ", fecha_extincion=" + fecha_extincion + ", detalle_extincion=" + detalle_extincion + ", user=" + user
				+ ", fecha=" + fecha + "]";
	}

	
	
}
