package net.guides.springboot.probank.repository;

import net.guides.springboot.probank.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;


public interface UserRepository extends JpaRepository<User, Long> {

    List<User> findUserByUserName(String name);
}
