package shop.mtcoding.spring_test2.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import shop.mtcoding.spring_test2.model.Board;
import shop.mtcoding.spring_test2.model.BoardRepository;
import shop.mtcoding.spring_test2.model.User;

@Controller
public class BoardController {
    @Autowired
    BoardRepository boardRepository;

    @Autowired
    HttpSession session;

    @GetMapping("/")
    public String home(Model model) {
        List<Board> allBoardList = boardRepository.findAll(); //
        model.addAttribute("allBoardList", allBoardList);
        model.addAttribute("headtitle", "전체 글 목록");
        return "board/home";
    }

    @GetMapping("/list/{id}")
    public String list(Model model) {
        // 인증
        User principal = (User) session.getAttribute("principal");
        if (principal == null) {
            return "redirect:/notfound";
        }
        int id = principal.getId();
        List<Board> list = boardRepository.findById(id);
        model.addAttribute("boardList", list);
        model.addAttribute("headtitle", "내 글 목록");
        return "board/list";
    }

    @GetMapping("/notfound")
    public String error() {
        return "error/error";
    }

}