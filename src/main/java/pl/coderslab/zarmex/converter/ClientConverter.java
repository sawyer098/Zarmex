package pl.coderslab.zarmex.converter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import pl.coderslab.zarmex.model.Client;
import pl.coderslab.zarmex.service.ClientService;

public class ClientConverter implements Converter<String, Client> {
    @Autowired
    private ClientService clientService;

    @Override
    public Client convert(String s) {
        return clientService.clientFindById(Long.parseLong(s));
    }
}