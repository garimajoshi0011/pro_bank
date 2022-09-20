package net.guides.springboot.probank.service;

import net.guides.springboot.probank.repository.LoantypeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoantypeService {

    @Autowired
    private LoantypeRepository loantypeRepository;

}