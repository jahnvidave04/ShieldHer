package com.example.demo.controllers;

import com.example.demo.models.User;
import com.example.demo.service.UserService;
import com.example.demo.dto.LoginRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.http.ResponseEntity;
import org.springframework.http.HttpStatus;

@RestController
public class LoginController {

    @Autowired
    private UserService userService;

    @PostMapping("/login")
    public ResponseEntity<String> login(@RequestBody LoginRequest request) {
        String userName = request.getUserName();
        String password = request.getPassword();
        User user = userService.login(userName, password);

        if (user != null) {
            // Login successful
            return new ResponseEntity<>("Login successful", HttpStatus.OK);
        } else {
            // Login failed
            return new ResponseEntity<>("Invalid username or password", HttpStatus.UNAUTHORIZED);
        }
    }
}
