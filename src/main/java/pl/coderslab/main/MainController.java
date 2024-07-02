package pl.coderslab.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {


    @GetMapping("/")
    public String home() {
        return "/main/index";
    }

    @GetMapping("/about")
    public String about() {
        return "/main/about";
    }

    @GetMapping("/contact")
    public String contact() {
        return "/main/contact";
    }
}
