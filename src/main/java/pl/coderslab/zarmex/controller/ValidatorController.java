package pl.coderslab.zarmex.controller;


import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import pl.coderslab.zarmex.model.Client;
import pl.coderslab.zarmex.model.Departed;
import pl.coderslab.zarmex.model.Funeral;

import javax.validation.ConstraintViolation;
import javax.validation.Validator;
import java.util.Set;

@Controller
@RequiredArgsConstructor
public class ValidatorController {

    private final Validator validator;

    @RequestMapping("/validate")
    @ResponseBody
    public String validate(Model model) {
        Funeral funeral = new Funeral();
        Set<ConstraintViolation<Funeral>> violations = validator.validate(funeral);
        if (!violations.isEmpty()) {
            for (ConstraintViolation<Funeral> violation : violations) {
                System.out.println(violation.getPropertyPath() + " "
                + violation.getMessage());
            }
        }
        model.addAttribute("errors", violations);
        return "/validations/list";
    }

    @RequestMapping("/validate/funeral")
    public String funeralValidate(Model model) {
        Funeral funeral = new Funeral();
        Set<ConstraintViolation<Funeral>> violations = validator.validate(funeral);
        model.addAttribute("errors", violations);
        return "/validations/list";
    }

    @RequestMapping("/validate/funeral/form")
    public String funeralFormValidate(Model model) {
        Funeral funeral = new Funeral();
        Set<ConstraintViolation<Funeral>> violations = validator.validate(funeral);
        model.addAttribute("errors", violations);
        return "/validations/list";
    }

    @RequestMapping("/validate/client")
    public String clientValidate(Model model) {
        Client client = new Client();
        Set<ConstraintViolation<Client>> violations = validator.validate(client);
        model.addAttribute("errors", violations);
        return "/validations/list";
    }

    @RequestMapping("/validate/departed")
    public String departedValidate(Model model) {
        Departed departed = new Departed();
        Set<ConstraintViolation<Departed>> violations = validator.validate(departed);
        model.addAttribute("errors", violations);
        return "/validations/list";
    }
}
