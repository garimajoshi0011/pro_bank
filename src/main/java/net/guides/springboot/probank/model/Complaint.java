package net.guides.springboot.probank.model;

import lombok.Data;
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
    private String complaintType;
    private String complaintFrom;
    private String subject;
    private String description;
    private String complaintDate;
    private Date createDate;
    private Date updateDate;
    private String status;
}
//Statrus