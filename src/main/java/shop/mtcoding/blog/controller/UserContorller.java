package shop.mtcoding.blog.controller;

import java.security.Principal;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import shop.mtcoding.blog.dto.UserJoinDto;
import shop.mtcoding.blog.model.User;
import shop.mtcoding.blog.model.UserRepository;
import shop.mtcoding.blog.util.Script;

@Controller
public class UserContorller {

    @Autowired
    private UserRepository userRepository;
    @Autowired
    private HttpSession session;

    @GetMapping()
    public String main() {
        return "board/main";
    }

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
        Optional<User> optionalUser = userRepository.findByUsernameAndPassword(username, password);
        if (optionalUser.isEmpty()) {
            return Script.back("로그인 정보가 없습니다. 확인 부탁드립니다.");
        }
        session.setAttribute("principal", optionalUser.get());
        return Script.href("board/list");
    }

    @GetMapping("/joinForm")
    public String joinForm() {
        return "user/joinForm";
    }

    @PostMapping("/join")
    @ResponseBody
    public String join(UserJoinDto userJoinDto) {

        Optional<User> optionalUsername = userRepository.findByUsername(userJoinDto.username());
        if (optionalUsername.isPresent()) {
            return Script.back("회원가입 실패! 중복된 유저이름 입니다.");
        }

        Optional<User> optionalUserEmail = userRepository.findByEmail(userJoinDto.email());
        if (optionalUserEmail.isPresent()) {
            return Script.back("회원가입 실패! 중복된 이메일 입니다.");
        }
        userRepository.save(userJoinDto.toEntity());
        return Script.href("/loginForm");
    }

    @GetMapping("/updateForm")
    public String updateForm() {
        return "user/updateForm";
    }
}
