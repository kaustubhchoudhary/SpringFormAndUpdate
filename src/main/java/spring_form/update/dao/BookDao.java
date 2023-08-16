package spring_form.update.dao;

import java.util.List;

import spring_form.update.entity.Book;

public interface BookDao {
	int addBook(Book book);
	List<Book> getAllBooks();
	Book getBook(int bookId);
	int updateBook(Book book);
}
