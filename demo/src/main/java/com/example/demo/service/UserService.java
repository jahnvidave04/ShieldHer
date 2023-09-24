// package com.example.demo.service;
// import java.util.Optional;

// import com.example.demo.models.User;
// import com.example.demo.repository.UserRepository;
// import org.springframework.beans.factory.annotation.Autowired;
// import org.springframework.stereotype.Service;

// @Service
// public class UserService {
//     @Autowired
//     private UserRepository userRepository;

//     public User saveUser(User user) {
//         return userRepository.save(user);
//     }

//     // public User getUserById(Long id) {
//     //     return userRepository.findById(id).orElse(null);
//     // }
//     public User getUserById(Long id) {
//         Optional<User> userOptional = userRepository.findById(id);
//         return userOptional.orElse(null);
//     }
    

//     // Other methods as needed
// }
package com.example.demo.service;
import java.util.List;
import java.util.Optional;
import com.example.demo.models.User;
import com.example.demo.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;
       public User saveUser(User user) {
       return userRepository.save(user);
    }
    public User getUsersByUserName(String userName) {
        return userRepository.findByUserName(userName);
    }
    public User login(String userName, String password) {
        // Find the users by username
        User user = userRepository.findByUserName(userName);
      //  List<User> users = getUsersByUserName(userName);
     // User user = userRepository.findByUserName(userName);
        // Iterate through the list and check if the provided password is correct
       // for (User user : users) {
            if (user != null && user.getPassword().equals(password)) {
                return user;
            }
        

        return null; // Return null if login is unsuccessful
    }

    // public User login(String userName, String password) {
    //     // Find the user by username
    //     User user = userRepository.findByUserName(userName);

    //     // Check if the user exists and the provided password is correct
    //     if (user != null && user.getPassword().equals(password)) {
    //         return user;
    //     }

    //     return null; // Return null if login is unsuccessful
    // }
}
