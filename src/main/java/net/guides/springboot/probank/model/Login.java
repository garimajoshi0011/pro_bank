package net.guides.springboot.probank.model;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "LOGIN")
@Data
@RequiredArgsConstructor
@NoArgsConstructor
public class Login {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private long LoginId;
    @NonNull
    private String userName;
    @NonNull
    private String password;
    @NonNull
    private Date createDate;
    @NonNull
    private Date updateDate;
    @NonNull
    private String status;
}