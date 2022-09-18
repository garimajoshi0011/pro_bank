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
@Table(name = "LOAN_TYPE")
public class Loantype {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private long loantypeId;
    @NonNull
    private String loanType;
    @NonNull
    private int duration;
    @NonNull
    private int loanAmount;
    @NonNull
    private Date createDate;
    @NonNull
    private Date updateDate;
    @NonNull
    private String status;
}
