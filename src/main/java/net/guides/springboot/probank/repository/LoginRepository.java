package net.guides.springboot.probank.repository;

import net.guides.springboot.probank.model.Login;
import org.springframework.data.jpa.repository.JpaRepository;

public interface LoginRepository extends JpaRepository<Login, Long> {

}
