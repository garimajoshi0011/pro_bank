package net.guides.springboot.probank.model;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "todos")
@Data
@RequiredArgsConstructor
@NoArgsConstructor
public class Todo {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private long id;

    @NonNull
    private String userName;

    @NonNull
    private String description;
    @NonNull
    private Date targetDate;
    @NonNull
    private boolean done;


}