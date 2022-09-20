package net.guides.springboot.probank.model;

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
@Table(name = "REJECTED_INFORMATION")
public class Rejectedinformation {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private long rejectedinformationId;
    @NonNull
    private String information;
    @NonNull
    private Date createDate;
    @NonNull
    private Date updateDate;
    @NonNull
    private String status;
}