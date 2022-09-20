package net.guides.springboot.probank.repository;

import net.guides.springboot.probank.model.Interest;
import org.springframework.data.jpa.repository.JpaRepository;

public interface InterestRepository extends JpaRepository<Interest, Long> {

}
