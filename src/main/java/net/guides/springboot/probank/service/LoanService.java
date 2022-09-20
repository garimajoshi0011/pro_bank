package net.guides.springboot.probank.service;

import net.guides.springboot.probank.model.Loan;
import net.guides.springboot.probank.repository.LoanRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class LoanService {

    @Autowired
    private LoanRepository loanRepository;

    public void saveLoan(Loan loan) {
        loanRepository.save(loan);
    }

    public List<Loan> getLoans() {
        return loanRepository.findAll();
    }


    public void updateStatus(long id, String status) {
        Optional<Loan> loan = loanRepository.findById(id);
        if (loan.isPresent()) {
            Loan loan1 = loan.get();
            loan1.setStatus(status);
            loanRepository.save(loan1);
        }
    }

    public void deleteLoan(long id) {
        Optional<Loan> loan = loanRepository.findById(id);
        if (loan.isPresent()) {
            Loan loan1 = loan.get();
            loanRepository.delete(loan1);
        }
    }

    public Loan getloanById(long id) {
        Optional<Loan> loan = loanRepository.findById(id);
        Loan loan1 = loan.get();
        return loan1;
    }
}