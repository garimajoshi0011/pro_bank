package net.guides.springboot.probank.service;

import net.guides.springboot.probank.repository.RejectedinformationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RejectedinformationService {

    @Autowired
    private RejectedinformationRepository rejectedinformationRepository;

}