package Student_Crud_Operation_Servlet;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
@Table(name="Student")
public class Student {
	@Id
	@GeneratedValue
	private int id;
	private String name;
	private String email;
	private long mobile;
	private double fees;
	

}
