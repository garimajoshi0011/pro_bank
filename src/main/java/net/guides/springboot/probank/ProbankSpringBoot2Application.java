package net.guides.springboot.probank;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

import java.io.IOException;

@SpringBootApplication
@ComponentScan(basePackages = "net.guides.springboot.probank")
@EnableJpaRepositories(basePackages = "net.guides.springboot.probank.repository")
public class ProbankSpringBoot2Application {

    public static void main(String[] args) throws Exception{
        SpringApplication.run(ProbankSpringBoot2Application.class, args);
	}

    private static void openHomePage() throws IOException {
        String url = "http://localhost:8086/";
        Runtime rt = Runtime.getRuntime();
        rt.exec("rundll32 url.dll,FileProtocolHandler " + url);
    }
}
