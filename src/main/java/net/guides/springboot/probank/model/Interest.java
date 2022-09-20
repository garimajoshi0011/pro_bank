package net.guides.springboot.probank.model;

import lombok.Data;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

import javax.persistence.*;
import java.util.Date;

@Data
@RequiredArgsConstructor
@Entity
@Table(name = "INTEREST")
public class Interest {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private long interestId;
    @NonNull
    private String accountNumber;
    @NonNull
    private int balance;
    @NonNull
    private Date date;
    @NonNull
    private int oldBalance;
    @NonNull
    private int totalBalance;
    @NonNull
    private int interest;
    @NonNull
    private Date createDate;
    @NonNull
    private Date updateDate;
    @NonNull
    private String status;
}