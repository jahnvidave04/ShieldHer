package com.example.demo.service;
import com.example.demo.dto.RegisterRequest;
import com.example.demo.dto.RegisterResponse;
import com.example.demo.models.User;
import com.example.demo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RegisterService {

    @Autowired
    private UserService userService;

    public boolean validateRegisterRequest(RegisterRequest registerRequest) {
        // Add validation logic here
        return true; // Assuming validation is successful
    }

    public RegisterResponse saveCustomerData(RegisterRequest registerRequest) {
        // Assuming RegisterRequest contains necessary fields (firstName, lastName, etc.)
        User user = new User();
        user.setFirstName(registerRequest.getFirstName());
        user.setLastName(registerRequest.getLastName());
        //user.setUsername(registerRequest.getUsername()); // Add username if needed
        user.setPassword(registerRequest.getPassword()); // Add password if needed

        User savedUser = userService.saveUser(user);

        RegisterResponse response = new RegisterResponse();
        response.setSuccess(true);
        response.setMessage("Registration successful");
        return response;
    }
}
