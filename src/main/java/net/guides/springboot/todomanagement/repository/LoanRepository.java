package net.guides.springboot.todomanagement.repository;

import net.guides.springboot.todomanagement.model.Loan;
import net.guides.springboot.todomanagement.model.Todo;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface LoanRepository extends JpaRepository<Loan, Long>{

}
