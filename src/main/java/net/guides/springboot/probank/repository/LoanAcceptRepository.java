package net.guides.springboot.probank.repository;

import net.guides.springboot.probank.model.LoanAccept;
import org.springframework.data.jpa.repository.JpaRepository;

public interface LoanAcceptRepository extends JpaRepository<LoanAccept, Long> {

}
