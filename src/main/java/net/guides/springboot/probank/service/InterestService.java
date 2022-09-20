package net.guides.springboot.probank.service;

import net.guides.springboot.probank.repository.InterestRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class InterestService {

    @Autowired
    private InterestRepository interestRepository;

}