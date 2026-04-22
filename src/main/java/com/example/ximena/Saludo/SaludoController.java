package com.example.ximena.Saludo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class SaludoController {
    @GetMapping("/saludo")
    public String Saludo(){
        return "Hola Mundo!!!";
    }
}
