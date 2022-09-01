package net.guides.springboot.todomanagement.model;

import lombok.*;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;

import javax.persistence.*;
import java.util.Date;

@Data
@Entity
@RequiredArgsConstructor
@NoArgsConstructor
public class Complaints {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private long complaintId;
    @NonNull
     private  int serialNo;
    @NonNull
     private String complaintsTo;
    @NonNull
    private String complaintsFrom;
    @NonNull
    private String subject;
    @NonNull
    private String complaint;
    @NonNull
    private Date complaintsDate;
    @NonNull
    private Date createDate;
    @NonNull
    private Date updateDate;
}