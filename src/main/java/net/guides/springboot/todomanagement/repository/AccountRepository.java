package net.guides.springboot.todomanagement.repository;

import net.guides.springboot.todomanagement.model.Account;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AccountRepository extends JpaRepository<Account, Long>{

}
