package com.sedesoft.planillaweb;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(scanBasePackages = { "com.sedesoft.planillaweb"})
public class PlanillaWebApplication {

	public static void main(String[] args) {
		SpringApplication.run(PlanillaWebApplication.class, args);
	}

}
