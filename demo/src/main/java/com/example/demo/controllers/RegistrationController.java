package com.example.demo.controllers;

import com.example.demo.dto.RegisterRequest;
import com.example.demo.dto.RegisterResponse;
import com.example.demo.service.RegisterService;
import com.example.demo.service.UserService;
import com.example.demo.models.User;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
public class RegistrationController {
    private UserService userService;

    public RegistrationController(UserService userService) {
        this.userService = userService;
    }

    @PostMapping("/register")
    public ResponseEntity<RegisterResponse> register(@RequestBody RegisterRequest registerRequest) {
        // Validate and process registration request

        User user = new User();
        user.setFirstName(registerRequest.getFirstName());
        user.setLastName(registerRequest.getLastName());
        user.setUserName(registerRequest.getUserName());
        user.setPassword(registerRequest.getPassword());
        user.setPhone(registerRequest.getPhone());
        

        User savedUser = userService.saveUser(user);

        // Create and return response
        RegisterResponse response = new RegisterResponse();
        response.setSuccess(true);
        response.setMessage("Registration successful ok");

        return new ResponseEntity<>(response, HttpStatus.OK);
    }
    // @GetMapping("/users/{id}")
    // public ResponseEntity<User> getUserById(@PathVariable Long id) {
    //     User user = userService.getUserById(id);

    //     if (user != null) {
    //         return new ResponseEntity<>(user, HttpStatus.OK);
    //     } else {
    //         return new ResponseEntity<>(HttpStatus.NOT_FOUND);
    //     }
    // }
}
