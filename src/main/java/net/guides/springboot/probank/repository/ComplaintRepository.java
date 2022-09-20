package net.guides.springboot.probank.repository;

import net.guides.springboot.probank.model.Complaint;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ComplaintRepository extends JpaRepository<Complaint, Long> {

}
