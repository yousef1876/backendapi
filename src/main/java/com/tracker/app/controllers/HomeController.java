package com.tracker.app.controllers;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HomeController {
 
   @Autowired
   private MessageSource messageSource;
 
   @RequestMapping("/msg")
   public String msg(@RequestHeader("Accept-Language") Locale locale){
      return messageSource.getMessage("msg",null,locale);
   }
}
