package com.kbstar.controller;

import com.kbstar.dto.Review;
import com.kbstar.service.ReviewService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Slf4j
@Controller
public class MainController {

    @Autowired
    ReviewService reviewService;

    @RequestMapping("/")
    public String main(Model model) {
        return "index";
    }

    @RequestMapping("/shop")
    public String shop(Model model) {
        model.addAttribute("center","shop");
        return "index";
    }

    @RequestMapping("/contact")
    public String contact(Model model) {
        model.addAttribute("center","contact");
        return "index";
    }

    @RequestMapping("/signin")
    public String signin(Model model) {
        model.addAttribute("center","signin");
        return "index";
    }

    @RequestMapping("/login")
    public String login(Model model) {
        model.addAttribute("center","login");
        return "index";
    }

    @RequestMapping("/checkout")
    public String checkout(Model model) {
        model.addAttribute("center","checkout");
        return "index";
    }

    @RequestMapping("/cart")
    public String cart(Model model) {
        model.addAttribute("center","shopping-cart");
        return "index";
    }

    @RequestMapping("/review")
    public String review(Model model) {
        model.addAttribute("center","review");
        return "index";
    }

    @RequestMapping("/reviewall")
    public String reviewall(Model model) {
        List<Review> list = null;
        try {
            list = reviewService.get();
        } catch (Exception e) {
            throw new RuntimeException("리뷰 목록을 불러오지 못하였습니다.");
        }
        model.addAttribute("center","reviewall");
        model.addAttribute("reviewlist",list);

        return "index";
    }

}
