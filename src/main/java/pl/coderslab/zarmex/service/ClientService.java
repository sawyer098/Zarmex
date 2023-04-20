package pl.coderslab.zarmex.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import pl.coderslab.zarmex.dao.ClientDao;
import pl.coderslab.zarmex.model.Client;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ClientService {

    private final ClientDao clientDao;

    public void clientSave (Client client) {
        clientDao.save(client);
    }

    public Client clientFindById(long id) {
        return clientDao.findById(id);
    }

    public void clientUpdate(Client client) {
        clientDao.update(client);
    }

    public void clientDelete(Client client) {
        clientDao.delete(client);
    }

    public List<Client> findAll() {
        return clientDao.findAll();
    }

}
