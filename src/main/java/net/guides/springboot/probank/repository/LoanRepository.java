package net.guides.springboot.probank.repository;

import net.guides.springboot.probank.model.Loan;
import org.springframework.data.jpa.repository.JpaRepository;

public interface LoanRepository extends JpaRepository<Loan, Long> {

}
