package net.guides.springboot.todomanagement.model;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

import javax.persistence.*;
import java.util.Date;
@Data
@RequiredArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "TRANSACTION")
public class Transaction {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private long customerId;
    @NonNull
    private int transactionId;
    @NonNull
    private int transactionType;
    @NonNull
    private String transactionMode;
    @NonNull
    private Date date;
    @NonNull
    private int chequeNo;
    @NonNull
    private int accountNo;
    @NonNull
    private int amount;
    @NonNull
    private int currentBalance;
    @NonNull
    private String remarks;
    @NonNull
    private Date createDate;
    @NonNull
    private Date updateDate;
    @NonNull
    private String status;
}