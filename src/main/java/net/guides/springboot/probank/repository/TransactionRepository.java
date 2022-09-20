package net.guides.springboot.probank.repository;

import net.guides.springboot.probank.model.Transaction;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TransactionRepository extends JpaRepository<Transaction, Long> {

}
