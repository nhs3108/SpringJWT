package com.nhs3108.controllers;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by nhs3108 on 16/03/2017.
 */
@RestController
@RequestMapping(value = "/users")
public class MainController {
    @RequestMapping(method = RequestMethod.GET)
    public String users() {
        return "{\"users\":[{\"firstname\":\"Richard\", \"lastname\":\"Feynman\"}," +
                "{\"firstname\":\"Marie\",\"lastname\":\"Curie\"}]}";
    }
}
