package spring_form.update.dao;

import org.springframework.jdbc.core.RowMapper;

import spring_form.update.entity.Book;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Arrays;

public class BookRowMapper implements RowMapper<Book> {

    @Override
    public Book mapRow(ResultSet rs, int rowNum) throws SQLException {
        Book book = new Book();
        book.setId(rs.getInt("id"));
        book.setTitle(rs.getString("title"));
        book.setAuthor(rs.getString("author"));
        book.setGenre(rs.getString("genre"));
        book.setDescription(rs.getString("description"));
        book.setAvailable(rs.getBoolean("available"));
        
        // Assuming tags is a JSON or comma-separated string in the database
        String tags = rs.getString("tags");
        if (tags != null && !tags.isEmpty()) {
            book.setTags(Arrays.asList(tags.split(",")));
        }
        
        book.setFormat(rs.getString("format"));
        book.setLanguage(rs.getString("language"));
        book.setRating(rs.getInt("rating"));
        
        return book;
    }
}
