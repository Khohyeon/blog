package shop.mtcoding.blog.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BoardRepository extends JpaRepository<Board, Integer> {
    List<Board> findAllByUserId(Integer userId);
//    public List<Board> findAll();
//
//    public List<Board> findList(int id);
}
