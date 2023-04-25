package pl.coderslab.zarmex.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.zarmex.model.Departed;
import pl.coderslab.zarmex.model.Funeral;
import pl.coderslab.zarmex.service.DepartedService;
import pl.coderslab.zarmex.service.FuneralService;

import javax.validation.Valid;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Optional;

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
    public String addSave(@Valid Departed departed, BindingResult result) {
        if (result.hasErrors()) {
            return "/departed/addForm";
        }
        departedService.departedSave(departed);
        return "redirect:/departed/all";
    }

    @GetMapping("/edit/{id}")
    public String edit(@PathVariable long id, Model model) {
        model.addAttribute("departed", departedService.departedFindById(id));
        return "/departed/addForm";
    }

    @PostMapping("/edit/{id}")
    public String update(@PathVariable long id, @Valid Departed departed, BindingResult result) {
        if (result.hasErrors()) {
            return "/departed/addForm";
        }
        departedService.departedUpdate(departed);
        return "redirect:/departed/all";
    }

    @GetMapping("/delete/{id}")
    public String delete (@PathVariable long id) {
        Departed departed = departedService.departedFindById(id);
        departedService.departedDelete(departed);
        return "redirect:/departed/all";
    }


    @InitBinder
    public void initBinder(WebDataBinder binder) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        dateFormat.setLenient(false);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
    }

}
