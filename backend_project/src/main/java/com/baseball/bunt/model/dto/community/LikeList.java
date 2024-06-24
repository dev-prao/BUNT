package com.baseball.bunt.model.dto.community;

import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import java.sql.Date;

@Tag(name = "게시글 좋아요 기능 DTO")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class LikeList {
    private String userId;
    private int boardId;
    private Date regDate;
    private String title;
}
