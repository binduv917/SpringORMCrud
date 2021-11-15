package springorm.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import springorm.beans.Stud;
@Transactional
@Repository


public class StudDao
{
	HibernateTemplate template;  
	  
	public void setTemplate(HibernateTemplate template) {  
		this.template = template;  
	}  
	public void save(Stud p){  
		  
		template.save(p);  
	}  
	public void update(Stud p){   
				template.update(p);  
	} 
	public void delete(Stud p){ 
		
	   template.delete(p);  
	}  
	public Stud getStudById(int id){
		 
	   Stud p=(Stud)this.template.get(Stud.class,id);
	    return p;
	}
	public List<Stud> getStudent(){  
		  
	   List<Stud> list=new ArrayList<Stud>();
	   list=template.loadAll(Stud.class);
	   return list;
	}

}
