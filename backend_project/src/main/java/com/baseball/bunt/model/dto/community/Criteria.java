package com.baseball.bunt.model.dto.community;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.web.util.UriComponentsBuilder;

@AllArgsConstructor
@Getter
@Setter
public class Criteria {
    private int pageNum;
    private int amount;

    private String type;
    private String keyword;


    public Criteria() {
        this(1,10);
    }
    public Criteria(int pageNum, int amount) {
        super();
        this.pageNum = pageNum;
        this.amount = amount;
    }
    public String[] getTypeArr() {
        return type==null?new String[] {}:type.split("");

    }
    public String getListLink() {
        UriComponentsBuilder builder = UriComponentsBuilder.fromPath("")
                .queryParam("pageNum",this.pageNum)
                .queryParam("amount",this.getAmount())
                .queryParam("type",this.getType())
                .queryParam("keyword",this.getKeyword());
        return builder.toUriString();
    }
}
