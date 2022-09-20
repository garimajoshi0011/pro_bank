package net.guides.springboot.probank.model;

import lombok.Data;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

import javax.persistence.*;
import java.util.Date;

@Data
@RequiredArgsConstructor
@Entity
@Table(name = "LOAN_ACCEPT")
public class LoanAccept {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private long loanAccepId;
    @NonNull
    private String loanId;
    @NonNull
    private String typeOfLoan;
    @NonNull
    private int amount;
    @NonNull
    private int duration;
    @NonNull
    private Date startDate;
    @NonNull
    private int monthlyInstallment;
    @NonNull
    private Date createDate;
    @NonNull
    private Date updateDate;
    @NonNull
    private String status;
}