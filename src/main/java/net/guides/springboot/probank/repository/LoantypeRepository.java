package net.guides.springboot.probank.repository;

import net.guides.springboot.probank.model.Loantype;
import org.springframework.data.jpa.repository.JpaRepository;

public interface LoantypeRepository extends JpaRepository<Loantype, Long> {

}
