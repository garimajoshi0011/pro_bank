package net.guides.springboot.todomanagement.model;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "USERS")
@Data
@RequiredArgsConstructor
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private long customerId;
    private String userName;
    private String password;
    private String email;
    private String phoneNumber;
    private String address;
    private Date dob;
    private String nationality;
    private String gender;
    private Date createDate;
    private Date updateDate;
}