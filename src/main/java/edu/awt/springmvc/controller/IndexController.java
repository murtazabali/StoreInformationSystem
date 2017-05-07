package edu.awt.springmvc.controller;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.sun.org.apache.xerces.internal.parsers.IntegratedParserConfiguration;

import edu.awt.springmvc.service.SISservice;

@Controller
public class IndexController {

	@Autowired
	SISservice sis;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String Index() {
		return "index";
	}

	@RequestMapping(value = "/", method = RequestMethod.POST)
	public String Details(
			@RequestParam(required = false) Integer orderid,
			@RequestParam(required = false) Integer productid, 
			@RequestParam String cmd, 
			@RequestParam String cmd2,
			@RequestParam Integer quantity, 
			ModelMap map) {
		if (cmd.equals("New")) {
			sis.InsertOrder();
			map.addAttribute("order", sis.getMaxOrderId());
		}
		if (cmd.equals("Add")) {
			sis.InsertProduct(orderid, productid, quantity);
		}
		if (orderid != null && cmd2.equals("notmax")) {
			map.addAttribute("order", sis.getOrderById(orderid));
			map.addAttribute("orderdetails", sis.getOrders(orderid));
			List<Map<String, Object>> list = sis.listOrders(orderid);
			list.forEach(row -> {
				BigDecimal total = (BigDecimal) row.get("total");
				map.addAttribute("total", total);
			});
		}
		if (productid != null) {
			map.addAttribute("order", sis.getOrderById(orderid));
			map.addAttribute("orderdetails", sis.getOrders(orderid));
			map.addAttribute("product", sis.getProduct(productid));
		}
		return "index";
	}

}
