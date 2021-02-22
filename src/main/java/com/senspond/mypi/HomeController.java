package com.senspond.mypi;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;

@Controller
@RequestMapping("/")
public class HomeController {
    
    @RequestMapping({ "/v/**"})
    public String forward() {
        return "forward:/";
    }
}
