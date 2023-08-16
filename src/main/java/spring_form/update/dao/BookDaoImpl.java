package spring_form.update.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import spring_form.update.entity.Book;

public class BookDaoImpl implements BookDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	@Override
	public int addBook(Book book) {
		String insertQuery = "INSERT INTO books "
				+ "(title, author, genre, description, "
				+ "available, tags, format, language, rating) "
				+ "VALUES (?,?,?,?,?,?,?,?,?)";
		return jdbcTemplate.update(insertQuery,
                book.getTitle(),
                book.getAuthor(),
                book.getGenre(),
                book.getDescription(),
                book.isAvailable(),
                String.join(",", book.getTags()), // Convert tags List to comma-separated string
                book.getFormat(),
                book.getLanguage(),
                book.getRating());
	}
	
	@Override
	public List<Book> getAllBooks() {
		String getAllBooksQuery = "SELECT * FROM books";
		return jdbcTemplate.query(getAllBooksQuery, new BookRowMapper());
	}

	@Override
	public Book getBook(int bookId) {
		String getBookQuery = "SELECT * FROM books WHERE id = ?";
		
		return jdbcTemplate
				.queryForObject(getBookQuery, 
						new BookRowMapper(), bookId);
	}

	@Override
	public int updateBook(Book book) {
		String insertQuery = "UPDATE books SET title = ?, author = ?, genre = ? , description = ?, "
				+ "available = ?, tags = ?, format = ?, language = ?, rating =? WHERE id = ?";
		return jdbcTemplate.update(insertQuery,
                book.getTitle(),
                book.getAuthor(),
                book.getGenre(),
                book.getDescription(),
                book.isAvailable(),
                String.join(",", book.getTags()),
                book.getFormat(),
                book.getLanguage(),
                book.getRating(),
                book.getId()
				);
	}

	

}
