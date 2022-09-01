package net.guides.springboot.todomanagement.repository;

import net.guides.springboot.todomanagement.model.Accounts;
import net.guides.springboot.todomanagement.model.Todo;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AccountsRepository extends JpaRepository<Accounts, Long>{

}
