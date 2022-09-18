package net.guides.springboot.todomanagement.repository;

import net.guides.springboot.todomanagement.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;


public interface UserRepository extends JpaRepository<User, Long>{

    public List<User> findUserByUserName(String name);
}
