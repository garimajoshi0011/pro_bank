package net.guides.springboot.probank.repository;

import net.guides.springboot.probank.model.Account;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AccountRepository extends JpaRepository<Account, Long> {

}
