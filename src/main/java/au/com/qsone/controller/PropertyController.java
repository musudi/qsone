package au.com.qsone.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import au.com.qsone.entity.Property;
import au.com.qsone.service.PropertyService;

/**
 * 
 * @author Kiran Musudi
 *
 */
@Controller
@RequestMapping("/property")
public class PropertyController {
	
	@Autowired
	private PropertyService propertyService;

	@RequestMapping("/index")
	public String index(Model model) {

		// get last seen
		String username = "";
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if (principal instanceof UserDetails) {
			username = ((UserDetails) principal).getUsername();
			String Pass = ((UserDetails) principal).getPassword();
			System.out.println("One + " + username + "   " + Pass);
		} else {
			username = principal.toString();
			System.out.println("Two + " + username);
		}

		return "qsone/index";
	}

	@RequestMapping("/add")
	public String add(Model model) {
		Property property = new Property();
		model.addAttribute("property", property);
		model.addAttribute("pageTitle", "Add New Property");
		return "property/addProperty";
	}
	
	@RequestMapping("/edit")
	public String edit(Model model) {
		Property property = new Property();
		model.addAttribute("property", property);
		model.addAttribute("pageTitle", "Edit Property");
		return "property/addProperty";
	}
	
	@RequestMapping("/save")
	public String save(@ModelAttribute("property") Property property) {
		propertyService.save(property);
		return "property/listProperty";
	}

	@RequestMapping("/list")
	public String list(Model model) {

		List<Property> list = propertyService.findAll();
		model.addAttribute("pageTitle", "Search Properties");
		// add to the spring model
		model.addAttribute("properties", list);

		return "property/listProperty";

	}
}
