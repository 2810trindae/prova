package br.edu.ifgoiano.controle;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import br.edu.ifgoiano.servico.LivroService;
import br.edu.ifgoiano.servico.LivroServiceImpl;

@Controller
public class LivrosController{

 private LivroService livroServiceImpl = null;

public void LivroCotroller(LivroServiceImpl livroServiceIml){

	this.livroServiceImpl = livroServiceImpl;

}

@GetMapping("/livros")
public String listarLivros(Model model){

	model.addAttribute("livros", livroServiceImpl.listarLivros());
	return "listar-livros";

}
}
