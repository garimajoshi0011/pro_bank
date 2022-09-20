package net.guides.springboot.probank.repository;

import net.guides.springboot.probank.model.LoanPaid;
import org.springframework.data.jpa.repository.JpaRepository;

public interface LoanPaidRepository extends JpaRepository<LoanPaid, Long> {

}
