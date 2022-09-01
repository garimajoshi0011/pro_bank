package net.guides.springboot.todomanagement.repository;

import net.guides.springboot.todomanagement.model.Complaints;
import net.guides.springboot.todomanagement.model.Todo;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ComplaintsRepository extends JpaRepository<Complaints, Long>{

}
