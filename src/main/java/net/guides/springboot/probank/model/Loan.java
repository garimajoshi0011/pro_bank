package net.guides.springboot.probank.model;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

import javax.persistence.*;
import java.util.Date;

@Data
@RequiredArgsConstructor
@Entity
@Table(name = "LOAN")
@NoArgsConstructor
public class Loan {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private long loanId;
    @NonNull
    private String loanType;
    @NonNull
    private int loanAmount;
    @NonNull
    private int duration;
    @NonNull
    private String name;
    @NonNull
    private String address;
    @NonNull
    private int income;
    @NonNull
    private String phoneNumber;
    @NonNull
    private String email;
    @NonNull
    private String profession;
    @NonNull
    private String requestDate;
    private String status;
    @NonNull
    private Date createDate;
    @NonNull
    private Date updateDate;
    private long customerId;


}