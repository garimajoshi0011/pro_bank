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
public class FundTransfer {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private long fundTransferId;
    @NonNull
    private String debitAccountNumber;
    @NonNull
    private String creditAccountNumber;
    @NonNull
    private String date;
    @NonNull
    private int balance;
    @NonNull
    private int amount;
    @NonNull
    private Date createDate;
    @NonNull
    private Date updateDate;
    @NonNull
    private String status;
}
