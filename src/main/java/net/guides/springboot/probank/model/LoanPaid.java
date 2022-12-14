package net.guides.springboot.probank.model;

import lombok.Data;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

import javax.persistence.*;
import java.util.Date;

@Data
@RequiredArgsConstructor
@Entity
@Table(name = "LOAN_PAID")
public class LoanPaid {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private long loanpaidId;
    @NonNull
    private String loanId;
    @NonNull
    private Date installmentDate;
    @NonNull
    private Date payDate;
    @NonNull
    private int dueAmount;
    @NonNull
    private int installmentAmount;
    @NonNull
    private int balance;
    @NonNull
    private String status;
    @NonNull
    private Date createDate;
    @NonNull
    private Date updateDate;

}
