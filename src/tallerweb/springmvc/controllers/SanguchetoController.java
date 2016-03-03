package tallerweb.springmvc.controllers;


import java.util.LinkedList;
import java.util.Map;
import java.util.Set;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import tallerweb.springmvc.model.Sanguchetto;
import tallerweb.springmvc.model.Ingrediente;
import tallerweb.springmvc.model.Stock;
import tallerweb.springmvc.model.TipoIngrediente;

@Controller
public class SanguchetoController {
	
	@RequestMapping("/sangucheto")
	public String crearSangucheto(Model model) {
		
		
		Stock stock = Stock.getInstance();
		Set<Ingrediente> aux = stock.listarIngredientesDisponibles();
		LinkedList<Ingrediente> ingredientes = new LinkedList<Ingrediente>();
		ingredientes.addAll(aux);
		model.addAttribute("lista", ingredientes);
		
		
		return "Sangucheto";
	}
	
	
	@RequestMapping("/stock")
	public String mostrarStock(Model model) {
		
		Stock stock = Stock.getInstance();
		Map<Ingrediente, Integer> ingredientes = stock.obtenerStock();
		model.addAttribute("lista", ingredientes);
		return "stock";				// stock teniamos antes 
	
	}
	
	@RequestMapping("/altaproducto")
	public String altaProducto(Ingrediente ingrediente) {
		
		
		return "altaproducto";
	
	}

	@RequestMapping("/agregarproducto")
	public String agregarProducto(Ingrediente ingrediente) {
		
		Stock stock = Stock.getInstance();
		stock.agregarIngrediente(ingrediente);
		
		return "redirect:stock"; // return "stock";
	
	}
	
	//clave es el ingrediente 
	//valor la cantidad
}
