package com.dicetek.usermanagement.security;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class passwordGenerator {
    public static void main(String[] args) {
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
        String rawPass = "Ste123";
        String encodedPass = encoder.encode(rawPass);
        System.out.println("Encoed pass is "+encodedPass);


        //BCryptPasswordEncoder decoder = encoder.d
    }
}
