package com.codigo.ecommerce.infrastructure.controller;

import com.codigo.ecommerce.infrastructure.security.JwtTokenProvider;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping("/api")
public class ApiController {

    @Autowired
    private JwtTokenProvider jwtTokenProvider;

    @GetMapping("/token")
    public ResponseEntity<String> generateToken() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        UserDetails userDetails = (UserDetails) authentication.getPrincipal();
        String token = jwtTokenProvider.generateToken(userDetails);
        return ResponseEntity.ok(token);
    }

    @GetMapping("/secured")
    public ResponseEntity<String> securedEndpoint() {
        // Aquí puedes agregar lógica para acceder al recurso protegido
        return ResponseEntity.ok("Acceso permitido al recurso protegido.");
    }
}
