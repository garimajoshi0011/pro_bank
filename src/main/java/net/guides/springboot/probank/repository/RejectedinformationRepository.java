package net.guides.springboot.probank.repository;

import net.guides.springboot.probank.model.Rejectedinformation;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RejectedinformationRepository extends JpaRepository<Rejectedinformation, Long> {

}
