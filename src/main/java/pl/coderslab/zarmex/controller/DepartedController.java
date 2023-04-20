package pl.coderslab.zarmex.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.zarmex.model.Departed;
import pl.coderslab.zarmex.service.DepartedService;

import java.util.List;

@Controller
@RequestMapping("/departed")
@RequiredArgsConstructor
public class DepartedController {

    private final DepartedService departedService;

    @ModelAttribute
    public List<Departed> getDepartedList() {
        return departedService.findAllDepartedList();
    }

    @RequestMapping("/all")
    public String findAll(Model model) {
        List<Departed> departedList = departedService.findAllDepartedList();
        model.addAttribute("departed", departedList);
        return "/departed/list";
    }

    @GetMapping("/add")
    public String add(Model model) {
        model.addAttribute("departed", new Departed());
        return "/departed/addForm";
    }

    @PostMapping("/add")
    public String addSave(Departed departed) {
        departedService.departedSave(departed);
        return "redirect:/departed/all";
    }
}
