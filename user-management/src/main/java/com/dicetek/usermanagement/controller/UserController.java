package com.dicetek.usermanagement.controller;

import com.dicetek.usermanagement.entity.AuthRequest;
import com.dicetek.usermanagement.service.UserDetailsServiceImpl;
import com.dicetek.usermanagement.util.JwtUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@Slf4j
@RestController
public class
UserController {
    @Autowired
    private AuthenticationManager authenticationManager;

    @Autowired
    private UserDetailsServiceImpl userDetailsService;
    @Autowired
    private JwtUtil jwtUtil;

    @GetMapping("/home")
    public String home(){
        return "This is Home";
    }

    @GetMapping("/admin")
    public String admin(){
        return "This is Admin";
    }

    @GetMapping("/user")
    public String user(){
        return "This is user";
    }


    @PostMapping("/authenticate")
    public String generateToken(@RequestBody AuthRequest authRequest) throws Exception {
        try {
            UserDetails userDetails = userDetailsService.loadUserByUsername(authRequest.getUserName());
            authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(authRequest.getUserName()
                    , authRequest.getPassword(), userDetails.getAuthorities())
            );
        } catch (Exception ex) {
            throw new Exception("inavalid username/password");
        }
        return jwtUtil.generateToken(authRequest.getUserName());
    }
}
