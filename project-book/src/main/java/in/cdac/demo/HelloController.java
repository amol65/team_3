package in.cdac.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloController {

	@Autowired
	private UserDao userDao;
	
	@GetMapping("/signup")                              //
	public  ModelAndView signupPage()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("signup");                    //signup.jsp
		
		return mv;
	}
	
	@PostMapping("/signup")
	public  ModelAndView registerUserToDb(User user)
	{
		
		this.userDao.create(user);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("sigin");
		
		return mv;
	}
	
	
	@GetMapping("/signin")
	public  ModelAndView signinPage(User user)
	{
		
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("sigin");
		
		return mv;
	}
	
	@PostMapping("/signin")
	public  ModelAndView validateUser(User user)
	{
		ModelAndView mv =null;
		
		try {
			
			boolean auth = this.userDao.validateUser(user);
			  mv = new ModelAndView(); 
			if(auth)
			{
				mv.setViewName("home");
			}else
			{
				mv.setViewName("sigin");
			}
			
			return mv;
			
		}catch(Exception e)
		{
			mv.setViewName("sigin");
		}
		
		
		return mv;
	}
	
	
	@GetMapping("/demo1")
	public String demo1()
	{
		return "signup";
	}
	
	
	@GetMapping("/demo2")
	public ModelAndView demo2()
	{
		ModelAndView mv = new ModelAndView();
		mv.addObject("TITLE","SPRING WEB MVC");
		mv.addObject("USERNAME","SPRING  MVC");
		mv.setViewName("signup");
		
		return mv;
		
	}
	
	
	
	
}
