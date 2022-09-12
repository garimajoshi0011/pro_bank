package net.guides.springboot.todomanagement;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

import java.util.Date;

@SpringBootApplication
@ComponentScan(basePackages = "net.guides.springboot.todomanagement")
@EnableJpaRepositories(basePackages = "net.guides.springboot.todomanagement.repository")
public class TodoManagementSpringBoot2Application {

	public static void main(String[] args) {

		SpringApplication.run(TodoManagementSpringBoot2Application.class, args);
;	}
}
