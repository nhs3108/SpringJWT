package com.nhs3108.models;

/**
 * Created by nhs3108 on 4/2/17.
 */
public class News {
    public String title;
    public String content;
    public String author;

    public News(String title, String content, String author) {
        this.title = title;
        this.content = content;
        this.author = author;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }
}
