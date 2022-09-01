package net.guides.springboot.todomanagement.model;

import lombok.*;
import lombok.NoArgsConstructor;
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
    private long customerId;
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
}