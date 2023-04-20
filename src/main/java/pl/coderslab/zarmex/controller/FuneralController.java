package pl.coderslab.zarmex.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.zarmex.model.Funeral;
import pl.coderslab.zarmex.service.FuneralService;

import java.util.List;

@Controller
@RequestMapping("/funeral")
@RequiredArgsConstructor
public class FuneralController {

    private final FuneralService funeralService;

    @ModelAttribute
    public List<Funeral> getFunerals() {
        return funeralService.findAllFunerals();
    }

    @RequestMapping("/all")
    public String findAll(Model model) {
        List<Funeral> funerals = funeralService.findAllFunerals();
        model.addAttribute("funeral", funerals);
        return "/funeral/list";
    }

    @GetMapping("/add")
    public String add(Model model) {
        model.addAttribute("funeral", new Funeral());
        return "/funeral/addForm";
    }

    @PostMapping("/add")
//    @ResponseBody
    public String addSave(Funeral funeral) {
        funeralService.funeralSave(funeral);
//        return funeral.toString();
        return "redirect:/funeral/all";
    }


}
