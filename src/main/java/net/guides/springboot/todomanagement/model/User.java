package net.guides.springboot.todomanagement.model;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "USER")
@Data
@RequiredArgsConstructor
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private long userId;
    private String userName;
    private String password;
    private String email;
    private String phoneNumber;
    private String address;
    private String dob;
    private String nationality;
    private String gender;
    private Date createDate;
    private Date updateDate;
    private String status;
    private String userType;
    private long createdBy;

}