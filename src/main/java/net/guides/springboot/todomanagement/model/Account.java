package net.guides.springboot.todomanagement.model;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

import javax.persistence.*;
import java.util.Date;

@Data
@RequiredArgsConstructor
@Entity
@Table(name = "ACCOUNTS")
public class Account {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private long accountId;
    private long customerId;
    private String accountType;
    private int balance;
    private Date createDate;
    private Date updateDate;
    private String status;
}
//Status