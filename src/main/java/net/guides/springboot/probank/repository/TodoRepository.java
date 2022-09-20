package net.guides.springboot.probank.repository;

import net.guides.springboot.probank.model.Todo;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface TodoRepository extends JpaRepository<Todo, Long> {
    List<Todo> findByUserName(String user);
}
