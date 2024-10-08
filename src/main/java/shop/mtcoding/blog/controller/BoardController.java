package shop.mtcoding.blog.controller;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.RequestParam;
import shop.mtcoding.blog.model.Board;
import shop.mtcoding.blog.model.BoardRepository;
import shop.mtcoding.blog.model.User;
import shop.mtcoding.blog.util.Script;

@Controller
public class BoardController {

    @Autowired
    private BoardRepository boardRepository;
    @Autowired
    private HttpSession session;

    @GetMapping("/board/list")
    public String list(Model model) {
        User principal = (User) session.getAttribute("principal");
        if (principal == null) {
            return "redirect:/loginForm";
        }
        List<Board> boardList = boardRepository.findAllByUserId(principal.getId());
        model.addAttribute("boardList", boardList);
        return "board/list";
    }

    @GetMapping("/board/detail")
    public String boardDetail(@RequestParam("id") Integer id, Model model) {
        // id를 이용해 게시물 정보를 조회합니다.
        Optional<Board> board = boardRepository.findById(id);
        if (board.isEmpty()) {
            return Script.back("현재 존재하지 않는 게시판 입니다.");
        }

        // 모델에 게시물 정보를 추가하여 JSP로 전달합니다.
        model.addAttribute("board", board.get());

        // 상세보기 페이지의 JSP 이름을 반환합니다.
        return "board/detail"; // "boardDetail"은 boardDetail.jsp 파일의 이름입니다.
    }
}
