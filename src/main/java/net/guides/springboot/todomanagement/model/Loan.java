package net.guides.springboot.todomanagement.model;

import lombok.*;
import lombok.NoArgsConstructor;
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
    private long customerId;
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
    private Date requestDate;
    @NonNull
    private String status;
    @NonNull
    private Date createDate;
    @NonNull
    private Date updateDate;
}