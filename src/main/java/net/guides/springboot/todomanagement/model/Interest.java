package net.guides.springboot.todomanagement.model;

import lombok.*;
import lombok.NoArgsConstructor;
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
    private long customerId;
    @NonNull
    private String accountNumber;
    @NonNull
    private int balance;
    @NonNull
    private Date date ;
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
}