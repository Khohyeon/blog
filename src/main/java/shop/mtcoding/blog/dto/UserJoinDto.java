package shop.mtcoding.blog.dto;

import shop.mtcoding.blog.model.User;

public record UserJoinDto(
        String username,
        String password,
        String email
) {
    public User toEntity() {
        return new User(username, password, email);
    }

}
