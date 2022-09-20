package net.guides.springboot.probank.repository;

import net.guides.springboot.probank.model.FundTransfer;
import org.springframework.data.jpa.repository.JpaRepository;

public interface FundtransferRepository extends JpaRepository<FundTransfer, Long> {

}
