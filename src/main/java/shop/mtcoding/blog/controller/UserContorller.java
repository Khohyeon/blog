package shop.mtcoding.blog.controller;

import java.security.Principal;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import shop.mtcoding.blog.model.User;
import shop.mtcoding.blog.model.UserRepository;
import shop.mtcoding.blog.util.Script;

@Controller
public class UserContorller {

    @Autowired
    private UserRepository userRepository;
    @Autowired
    private HttpSession session;

    @GetMapping("/logout")
    public String logout() {
        session.invalidate();
        return "redirect:/loginForm";
    }

    @GetMapping("/loginForm")
    public String loginForm() {
        return "user/loginForm";
    }

    @PostMapping("/login")
    @ResponseBody
    public String login(String username, String password) {
        User principal = userRepository.findByUsernameAndPassword(username, password);
        if (principal == null) {
            return Script.back("로그인 다시해라 틀렸다 이 새끼야");
        }
        session.setAttribute("principal", principal);
        return Script.href("board/list");
    }

    @GetMapping("/joinForm")
    public String joinForm() {
        return "user/joinForm";
    }

    @PostMapping("/join")
    @ResponseBody
    public String join(String username, String password, String email) {
        int result = userRepository.insert(username, password, email);
        if (result != 1) {
            return Script.back("회원가입 실패! 다시 하도록!");
        }
        return Script.href("/loginForm");
    }

    @GetMapping("/updateForm")
    public String updateForm() {
        return "user/updateForm";
    }
}
