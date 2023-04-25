package pl.coderslab.zarmex.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.zarmex.model.Client;
import pl.coderslab.zarmex.model.Departed;
import pl.coderslab.zarmex.model.Funeral;
import pl.coderslab.zarmex.service.ClientService;
import pl.coderslab.zarmex.service.DepartedService;
import pl.coderslab.zarmex.service.FuneralService;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/funeral")
@RequiredArgsConstructor
public class FuneralController {

    private final FuneralService funeralService;
    private final DepartedService departedService;
    private final ClientService clientService;

    @ModelAttribute
    public List<Funeral> getFunerals() {
        return funeralService.findAllFunerals();
    }

    @ModelAttribute
    public List<Departed> getDepartedList() {
        return departedService.findAllDepartedList();
    }

    @ModelAttribute
    public List<Client> getClients() {
        return clientService.findAll();
    }

    @RequestMapping("/all")
    public String findAll(Model model) {
        List<Funeral> funeralList = funeralService.findAllFunerals();
        model.addAttribute("funeral", funeralList);
        return "/funeral/list";
    }

    @GetMapping("/delete/{id}")
    public String delete (@PathVariable long id) {
        Funeral funeral = funeralService.funeralFindById(id);
        funeralService.funeralDelete(funeral);
        return "redirect:/funeral/all";
    }

    @GetMapping("/show/{id}")
    public String showFuneral(Model model, @PathVariable long id) {
        model.addAttribute("funeral", funeralService.funeralFindById(id));
        return "/funeral/show";
    }

    @InitBinder
    public void initBinder(WebDataBinder binder) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        dateFormat.setLenient(false);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
    }

}
