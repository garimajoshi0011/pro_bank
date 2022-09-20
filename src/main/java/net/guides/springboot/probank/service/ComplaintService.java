package net.guides.springboot.probank.service;

import net.guides.springboot.probank.model.Complaint;
import net.guides.springboot.probank.repository.ComplaintRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ComplaintService {

    @Autowired
    private ComplaintRepository complaintRepository;

    public void saveComplaint(Complaint complaint) {
        complaintRepository.save(complaint);
    }

    public List<Complaint> getComplaints() {
        return complaintRepository.findAll();
    }


    public void updateStatus(long id, String status) {
        Optional<Complaint> complaint = complaintRepository.findById(id);
        if (complaint.isPresent()) {
            Complaint complaint1 = complaint.get();
            complaint1.setStatus(status);
            complaintRepository.save(complaint1);
        }
    }

    public void deleteComplaint(long id) {
        Optional<Complaint> complaint = complaintRepository.findById(id);
        if (complaint.isPresent()) {
            Complaint complaint1 = complaint.get();
            complaintRepository.delete(complaint1);
        }
    }

    //Added

    public Complaint getComplaintById(long id) {
        Optional<Complaint> complaint = complaintRepository.findById(id);
        Complaint complaint1 = complaint.get();
        return complaint1;
    }

}