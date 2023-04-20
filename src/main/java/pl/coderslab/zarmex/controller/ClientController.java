package pl.coderslab.zarmex.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.zarmex.model.Client;
import pl.coderslab.zarmex.service.ClientService;

import java.util.List;

@Controller
@RequestMapping("/client")
@RequiredArgsConstructor
public class ClientController {

    private final ClientService clientService;

    @ModelAttribute
    public List<Client> getClients() {
        return clientService.findAll();
    }

    @RequestMapping("/all")
    public String findAll(Model model) {
        List<Client> clients = clientService.findAll();
        model.addAttribute("client", clients);
        return "/client/list";
    }

    @GetMapping("/add")
    public String add(Model model) {
        model.addAttribute("client", new Client());
        return "/client/addForm";
    }

    @PostMapping("/add")
//    @ResponseBody
    public String addSave(Client client) {
        clientService.clientSave(client);
//        return client.toString();
//        return "redirect:/departed/add";
        return "redirect:/client/all";
    }
}
