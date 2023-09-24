package com.example.demo.repository;
import java.util.List;

import com.example.demo.models.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
 //   List<User> findByUserName(String userName);

    User findByUserName(String userName);
   // List<User> findByLastName(String lastName);
    // Add other custom queries as needed
}

