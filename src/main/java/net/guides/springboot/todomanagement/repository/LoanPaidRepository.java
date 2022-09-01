package net.guides.springboot.todomanagement.repository;

import net.guides.springboot.todomanagement.model.LoanPaid;
import org.springframework.data.jpa.repository.JpaRepository;

public interface LoanPaidRepository extends JpaRepository<LoanPaid, Long>{

}
