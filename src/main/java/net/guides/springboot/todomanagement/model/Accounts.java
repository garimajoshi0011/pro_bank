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
@Table(name = "ACCOUNTS")
public class Accounts {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private long accountId;
    @NonNull
    private String accountType;
    @NonNull
    private int balance;
    @NonNull
    private Date createDate;
    @NonNull
    private Date updateDate;
}