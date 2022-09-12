package net.guides.springboot.todomanagement.model;

import lombok.*;
import lombok.RequiredArgsConstructor;

import javax.persistence.*;
import java.util.Date;

@Data
@Entity
@RequiredArgsConstructor
@Table(name = "COMPLAINT")
public class Complaint {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private long complaintId;
    private String complaintsTo;
    private String complaintsFrom;
    private String subject;
    private String description;
    private String complaintsDate;
    private Date createDate;
    private Date updateDate;
    private String status;
}
//Statrus