package com.example.Bench.Management.Project.Model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Data
public class Login {
   @Id
   private long id;
   private long empId;
   private String email;
   private long role;
   private String secretKey;
}
