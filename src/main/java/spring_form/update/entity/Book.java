package spring_form.update.entity;

import java.util.List;

public class Book {
	private int id;
	private String title;
	private String author;
	private String genre;
	private String description;
	private boolean available;
	private List<String> tags;
	private String format;
	private String language;
	private int rating;

	public Book() {
		super();
	}

	public Book(int id, String title, String author, String genre, String description, boolean available,
			List<String> tags, String format, String language, int rating) {
		super();
		this.id = id;
		this.title = title;
		this.author = author;
		this.genre = genre;
		this.description = description;
		this.available = available;
		this.tags = tags;
		this.format = format;
		this.language = language;
		this.rating = rating;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public boolean isAvailable() {
		return available;
	}

	public void setAvailable(boolean available) {
		this.available = available;
	}

	public List<String> getTags() {
		return tags;
	}

	public void setTags(List<String> tags) {
		this.tags = tags;
	}

	public String getFormat() {
		return format;
	}

	public void setFormat(String format) {
		this.format = format;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	@Override
	public String toString() {
		return "Book [id=" + id + ", title=" + title + ", author=" + author + ", genre=" + genre + ", description="
				+ description + ", available=" + available + ", tags=" + tags + ", format=" + format + ", language="
				+ language + ", rating=" + rating + "]";
	}

}
