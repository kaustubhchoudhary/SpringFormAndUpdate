package spring_form.update;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import spring_form.update.dao.BookDao;
import spring_form.update.entity.Book;

@Controller
public class HomeController {
		
	@Autowired
	BookDao bookDao;
	
	@GetMapping(value = "/")
	public String showBooksList(Model model) {
		List<Book> booksList = bookDao.getAllBooks();
		
		model.addAttribute("myList", booksList);
		
		return "list_books";
	}
	
	@GetMapping(value = "/showAddBookFormPage")
	public String showAddBookFormPage() {
		return "add_book";
	}
	
	@PostMapping("/addBook")
    public String addBook(@ModelAttribute Book book) {
       
        System.out.println("Received Book: " + book);
        
        int result = bookDao.addBook(book);
        
        if(result == 1) {
        	return "redirect:/";
        } else {
        	return "add_book";
        }
    }
	
	@GetMapping(value = "/showUpdateBookFormPage/{id}")
	public ModelAndView showUpdateBookFormPage(@PathVariable("id") int id) {

		Book bookToUpdate = bookDao.getBook(id);
		System.out.println("------------------");
		System.out.println(bookToUpdate);
			
		ModelAndView mView = new ModelAndView("update_book", "book", bookToUpdate);
		
		return mView;
	}
	
	@PostMapping(value="/updateBook")
    public String updateBook(@ModelAttribute Book book) {
       
        System.out.println("Received Book: " + book);
        
        int result = bookDao.updateBook(book);
        
        if(result == 1) {
        	return "redirect:/";
        } else {
        	return "update_book";
        }
    }
}
