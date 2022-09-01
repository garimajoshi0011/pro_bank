package net.guides.springboot.todomanagement.repository;

import net.guides.springboot.todomanagement.model.Interest;
import net.guides.springboot.todomanagement.model.Todo;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface InterestRepository extends JpaRepository<Interest, Long>{

}
