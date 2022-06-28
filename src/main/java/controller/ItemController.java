package controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import entity.Item;

@Controller
public class ItemController {
	
	private ArrayList<Item> ilist = new ArrayList<Item>();
	
	@RequestMapping("/addItem")
	@ResponseBody
//	public String addItem(int id, String name, float cost)
	public String addItem(Item i)
	{
	//	Item i = new Item(id,name,cost);
		ilist.add(i);
		return "Item Added Successfully";
	}
	
	@RequestMapping("/viewItem")
	public ModelAndView viewItem(int id)
	{
		ModelAndView mvc = new ModelAndView();
		mvc.setViewName("view.jsp");
		mvc.addObject("mode","single");
		for(Item i: ilist)
		{
			if(i.getId() == id)
			{
				mvc.addObject("item", i);
				mvc.addObject("flag", true);
				return mvc;
			}
		}
		mvc.addObject("flag", false);
		return mvc;
	}
	
	@RequestMapping("/viewAllItem")
	public ModelAndView viewAllItem()
	{
		ModelAndView mvc = new ModelAndView();
		mvc.addObject("mode","list");
		mvc.setViewName("view.jsp");
		mvc.addObject("flag", true);
		mvc.addObject("item", ilist);
		return mvc;
	}
	
	@RequestMapping("/updateItem")
	@ResponseBody
//	public String addItem(int id, String name, float cost)
	public String updateItem(Item i)
	{
	//	Item i = new Item(id,name,cost);
		for(Item i1: ilist)
		{
			if(i1.getId() == i.getId())
			{
				i1.setName(i.getName());
				i1.setCost(i.getCost());
			}
		}
		return "Item Update Successfully";
	}
	
	@RequestMapping("/deleteItem")
	@ResponseBody
	public String deleteItem(int id)
	{
		
		for(int i=0; i<ilist.size();i++)
		{
			if(ilist.get(i).getId() == id)
			{
				ilist.remove(ilist.get(i));
			}
		}
		
		return "Item Deleted Successfully";
	}
}
