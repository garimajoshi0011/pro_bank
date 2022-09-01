package net.guides.springboot.todomanagement.model;

import lombok.*;
import lombok.RequiredArgsConstructor;

import javax.persistence.*;
import java.util.Date;

@Data
@RequiredArgsConstructor
@Entity
@Table(name = "FUND_TRANSACTION")
@NoArgsConstructor
public class Fundtransaction {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private long customerId;
    @NonNull
    private String debitAccountNumber;
    @NonNull
    private String creditAccountNumber;
    @NonNull
    private Date date;
    @NonNull
    private int balance;
    @NonNull
    private int amount;
    @NonNull
    private Date createDate;
    @NonNull
    private Date updateDate;
}