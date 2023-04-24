package pl.coderslab.zarmex.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.zarmex.model.Client;
import pl.coderslab.zarmex.model.Departed;
import pl.coderslab.zarmex.model.Funeral;
import pl.coderslab.zarmex.service.ClientService;
import pl.coderslab.zarmex.service.DepartedService;
import pl.coderslab.zarmex.service.FuneralService;

import javax.validation.Valid;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/funeral/form")
@RequiredArgsConstructor
public class FuneralFormController {

    private final FuneralService funeralService;
    private final DepartedService departedService;
    private final ClientService clientService;

    @ModelAttribute
    public List<Funeral> getFunerals() {
        return funeralService.findAllFunerals();
    }

    @ModelAttribute
    public List<Departed> getDepartedList() {
        return departedService.findAllDepartedWithoutFuneralList();
    }

    @ModelAttribute
    public List<Client> getClients() {
        return clientService.findAll();
    }

    @GetMapping("/add")
    public String add(Model model) {
        List<Departed> departedes = departedService.findAllDepartedWithoutFuneralList();
        for (Departed departed : departedes) {
            departed.setFullName(departed.getFirstName() + " " + departed.getLastName());
        }
        model.addAttribute("departedes", departedes);
        model.addAttribute("funeral", new Funeral());
        return "/funeral/addForm";
    }

    @PostMapping("/add")
    public String addSave(@Valid Funeral funeral, BindingResult result) {
        if (result.hasErrors()) {
            return "/funeral/addForm";
        }
        Departed departed = departedService.departedFindById(funeral.getDeparted().getId());
        funeral.setDeparted(departed);
        departed.setFuneral(funeral);
        departedService.departedSave(departed);
        Client client = clientService.clientFindById(funeral.getClient().getId());
        funeral.setClient(client);
        client.getFunerals().add(funeral);
        clientService.clientSave(client);
        funeralService.funeralSave(funeral);
        return "redirect:/funeral/all";
    }

    @GetMapping("/edit/{id}")
    public String edit(@PathVariable long id, Model model) {
        model.addAttribute("funeral", funeralService.funeralFindById(id));
        return "/funeral/addForm";
    }

    @PostMapping("/edit/{id}")
    public String update(@PathVariable long id, @Valid Funeral funeral, BindingResult result) {
        if (result.hasErrors()) {
            return "/funeral/addForm";
        }
        funeralService.funeralUpdate(funeral);
        return "redirect:/funeral/all";
    }

    @InitBinder
    public void initBinder(WebDataBinder binder) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        dateFormat.setLenient(false);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
    }
}
