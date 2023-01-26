package shop.mtcoding.spring_test2.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import shop.mtcoding.spring_test2.model.BoardRepository;
import shop.mtcoding.spring_test2.model.User;
import shop.mtcoding.spring_test2.model.UserRepository;

@Controller
public class UserController {
    @Autowired
    UserRepository userRepository;

    @Autowired
    private HttpSession session;

    @GetMapping("/logout")
    public String logout() {
        session.invalidate();
         return "redirect:/loginForm";
    }

    @GetMapping("/loginForm")
    public String loginForm(Model model) {
        model.addAttribute("headtitle", "로그인 페이지");
        return "user/loginForm";
    }

    @GetMapping("/joinForm")
    public String joinForm(Model model) {
        model.addAttribute("headtitle", "회원가입 페이지");
        return "user/joinForm";
    }

    @PostMapping("/join")
    public String join(String username, String password, String email) {
        int result = userRepository.insert(username, password, email);
        if (result == 1) {
            return "redirect:/loginForm";
        } else {
            return "redirect:/joinForm";
        }
    }

    @PostMapping("/login")
    public String login(String username, String password) {
        User user = userRepository.findByUsernameAndPassword(username, password);
        if (user == null) {
            System.out.println("로그인 실패");
            return "redirect:/loginForm";
        } else {
            session.setAttribute("principal", user);
            return "redirect:/";

        }
    }

    @GetMapping("/userUpdateForm")
    public String userUpdateForm(Model model){
        model.addAttribute("headtitle", "회원정보 수정");
        return "user/userUpdate";
    }
    
    @PostMapping("/userUpdate")
    public String userUpdate(String password, String email){
        User principal = (User) session.getAttribute("principal");
        int id = principal.getId();
        int result = userRepository.updateById(id, password, email);
        if (result == 1) {
            System.out.println("변경 완료");
            return "redirect:/loginForm";
        } else{
            System.out.println("변경 실패");
            return "redirect:/userUpdateForm";
        }
        
    }

}