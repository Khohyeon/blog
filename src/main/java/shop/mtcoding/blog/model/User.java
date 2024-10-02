package shop.mtcoding.blog.model;

import java.sql.Timestamp;
import java.time.LocalDateTime;

import lombok.Generated;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Getter
@Setter
@NoArgsConstructor
@Table(name = "USERS")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String username;
    private String password;
    private String email;
    @Column
    private LocalDateTime created_at;

    public User(String username, String password, String email) {}
}
