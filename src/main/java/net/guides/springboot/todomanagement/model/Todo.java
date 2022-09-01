package net.guides.springboot.todomanagement.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


import lombok.*;
import org.springframework.beans.factory.annotation.Value;

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