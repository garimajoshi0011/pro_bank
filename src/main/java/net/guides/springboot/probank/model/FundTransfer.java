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
@Table(name = "FUND_TRANSFER")
@NoArgsConstructor
public class FundTransfer {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private long fundTransferId;
    @NonNull
    private String debitAccountNumber;
    @NonNull
    private String date;
    @NonNull
    private int balance;
    @NonNull
    private Date createDate;
    @NonNull
    private Date updateDate;
    @NonNull
    private int transferAmount;
    @NonNull
    private String status;
    private long customerId;
}
