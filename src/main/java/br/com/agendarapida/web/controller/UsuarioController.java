package br.com.agendarapida.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.agendarapida.dao.HorarioDAO;
import br.com.agendarapida.model.Horario;
import br.com.agendarapida.model.Usuario;

@Controller
public class UsuarioController {
	@Autowired
	private HorarioDAO dao;

	@RequestMapping(value = "/pg1", method = RequestMethod.GET)
	public ModelAndView bemvindo(Model model) {
		model.addAttribute("usuario", new Usuario());
		return new ModelAndView("bemvindo");
	}

	@RequestMapping(value = "/pg1", method = RequestMethod.POST)
	public ModelAndView fazerlogin(@ModelAttribute Usuario usuario) {

		ModelAndView view = new ModelAndView("bemvindo");
		

		return view;
	}
	@RequestMapping(value = "/inicio", method = RequestMethod.GET)
	public ModelAndView inicio(Model model) {
		model.addAttribute("horario", new Horario());
		return new ModelAndView ("inicio");
	}
	
	@RequestMapping(value ="/inicio", method = RequestMethod.POST)
	public ModelAndView exibetarefas(@ModelAttribute Horario horario) {
		ModelAndView view = new ModelAndView("inicio");
		view.addObject("mensagem", horario.getDia() + "você tera o compromisso "+ horario.getDescricao());
		return view;
	}
	
	@PostMapping(value= "/cadastro")
	public ModelAndView cadastrarHorario(@ModelAttribute Horario horario) {
		
		dao.salvar(horario);
		
		ModelAndView view = new ModelAndView("inicio");
		view.addObject("mensagem","Compromisso cadastrado com sucesso!");
		view.addObject("horarios", dao.getAll());
		return view;
	}
	@GetMapping(value= "/cadastro")
	public ModelAndView retornarAposExcluir(@ModelAttribute Horario horario) {
		
		
		
		ModelAndView view = new ModelAndView("inicio");
		view.addObject("mensagem","Compromisso cadastrado com sucesso!");
		view.addObject("horarios", dao.getAll());
		return view;
	}
	
	@GetMapping(value = "/excluir/{id}")
	public String excluirHorarios(@PathVariable("id") int id, Model model) {
		dao.excluir(id);
		
		ModelAndView view = new ModelAndView("inicio");
		
		view.addObject("mensagem", "Horario Excluido com sucesso!");
		view.addObject("horarios", dao.getAll());
		
		model.addAttribute("horario", new Horario());
		
		return "redirect:../cadastro";
	}
	
	@GetMapping(value = "/editar/{id}")
	public ModelAndView editarHorario(@PathVariable("id") int id, Model model) {
		
		ModelAndView view = new ModelAndView("editar");
		model.addAttribute("horario", dao.getId(id));
		
		return view;
	}
	
	@PostMapping(value ="/update/{id}")
	public String updateHorario(@PathVariable("id")int id, @ModelAttribute Horario horario) {
		
		dao.editar(id, horario);
		
		return "redirect:../cadastro";
	}
}
	    

