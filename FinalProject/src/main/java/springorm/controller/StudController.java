package springorm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import springorm.beans.Stud;

import springorm.dao.StudDao;


@Controller
public class StudController
{
	
	 @Autowired  
	   StudDao dao;
	 
	 @RequestMapping("/index")
	 public  String index()
	 {
		 return "index";
	 }
	 
	 @RequestMapping("/studform")  
	    public String showform(Model m){  
	    	m.addAttribute("command", new Stud());
	    	return "studform"; 
	    }  
	 
	 @RequestMapping(value="/save",method = RequestMethod.POST)  
	    public String save(@ModelAttribute("p") Stud p){  
	        dao.save(p);  
	        return "redirect:/viewstud";
	    }  
	 
	 @RequestMapping("/viewstud")  
	    public String viewstud(Model m){  
	        List<Stud> list=dao.getStudent();  
	        m.addAttribute("list",list);
	        return "viewstud";  
	    }  
	 
	 @RequestMapping(value="/editstud/{id}")  
	    public String edit(@PathVariable int id, Model m){  
	        Stud p=dao.getStudById(id);  
	        m.addAttribute("command",p);
	        return "studeditform";  
	    } 
	 
	 @RequestMapping(value="/editsave",method = RequestMethod.POST)  
	    public String editsave(@ModelAttribute("p") Stud p){  
	        dao.update(p);  
	        return "redirect:/viewstud";  
	    }  

	 @RequestMapping(value="/deletestud/{id}",method = RequestMethod.GET)  
	    public String delete(@ModelAttribute("p") Stud p){  
	        dao.delete(p);  
	        return "redirect:/viewstud";  
	    }   
	 
	
}
