package net.guides.springboot.todomanagement.service;

import net.guides.springboot.todomanagement.model.Complaint;
import net.guides.springboot.todomanagement.model.FundTransfer;
import net.guides.springboot.todomanagement.repository.FundtransferRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class FundTransferService {

	@Autowired
	private FundtransferRepository fundtransferRepository;

	public  void saveFundTransfer(FundTransfer fundTransfer){
		fundtransferRepository.save(fundTransfer);
	}


	public List<FundTransfer> getfundTransfer() {
		return fundtransferRepository.findAll();
	}


	public void updateStatus(long id, String status) {
		Optional<FundTransfer> fundTransfer = fundtransferRepository.findById(id);
		if (fundTransfer.isPresent()) {
			FundTransfer fundTransfer1 = fundTransfer.get();
			fundTransfer1.setStatus(status);
			fundtransferRepository.save(fundTransfer1);
		}
	}

	public void deleteFundTransfer(long id) {
		Optional<FundTransfer> fundTransfer = fundtransferRepository.findById(id);
		if (fundTransfer.isPresent()) {
			FundTransfer fundTransfer1 = fundTransfer.get();
			fundtransferRepository.delete(fundTransfer1);
		}
	}



}