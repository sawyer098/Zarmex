package pl.coderslab.zarmex.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.zarmex.model.Client;
import pl.coderslab.zarmex.model.Funeral;
import pl.coderslab.zarmex.service.ClientService;
import pl.coderslab.zarmex.service.FuneralService;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/client")
@RequiredArgsConstructor
public class ClientController {

    private final ClientService clientService;
    private final FuneralService funeralService;

    @ModelAttribute
    public List<Client> getClientList() {
        return clientService.findAll();
    }

//    @ModelAttribute
//    public List<Funeral> getFuneralList() {
//        return funeralService.findAllFunerals();
//    }

//    @RequestMapping("/all")
//    public String findAll(Model model) {
//        List<Client> clientList = clientService.findAll();
////        for (Client client : clientList) {
////            List<Funeral> funeralList = funeralService.getFuneralsByClientId(client.getId());
////            model.addAttribute("funeral", funeralList);
////        }
//        model.addAttribute("client", clientList);
//        return "/client/list";
//    }

    @RequestMapping("/all")
    public String findAll(Model model) {
        List<Client> clientList = clientService.findAll();
        List<List<Funeral>> funeralList = new ArrayList<>();
        for (Client client : clientList) {
            List<Funeral> clientFunerals = funeralService.getFuneralsByClientId(client.getId());
            funeralList.add(clientFunerals);
        }
        model.addAttribute("funeral", funeralList);
        model.addAttribute("client", clientList);
        return "/client/list";
    }

    @GetMapping("/add")
    public String add(Model model) {
        model.addAttribute("client", new Client());
        return "/client/addForm";
    }

    @PostMapping("/add")
    public String addSave(@Valid Client client, BindingResult result) {
        if (result.hasErrors()) {
            return "/client/addForm";
        }
        clientService.clientSave(client);
        return "redirect:/client/all";
    }

    @GetMapping("/edit/{id}")
    public String edit(@PathVariable long id, Model model) {
        model.addAttribute("client", clientService.clientFindById(id));
        return "/client/addForm";
    }

    @PostMapping("/edit/{id}")
    public String update(@PathVariable long id, @Valid Client client, BindingResult result) {
        if (result.hasErrors()) {
            return "/client/addForm";
        }
        clientService.clientUpdate(client);
        return "redirect:/client/all";
    }

    @GetMapping("/delete/{id}")
    public String delete (@PathVariable long id) {
        Client client = clientService.clientFindById(id);
        clientService.clientDelete(client);
        return "redirect:/client/all";
    }
}
