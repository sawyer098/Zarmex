package pl.coderslab.zarmex.converter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import pl.coderslab.zarmex.model.Departed;
import pl.coderslab.zarmex.service.DepartedService;

public class DepartedConverter implements Converter<String, Departed> {

    @Autowired
    private DepartedService departedService;


    @Override
    public Departed convert(String s) {
        return departedService.departedFindById(Long.parseLong(s));
    }

}
