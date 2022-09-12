package net.guides.springboot.todomanagement.repository;

import net.guides.springboot.todomanagement.model.Complaint;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ComplaintRepository extends JpaRepository<Complaint, Long>{

}
