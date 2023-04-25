package pl.coderslab.zarmex.dao;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import pl.coderslab.zarmex.model.Client;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;

@Repository
@Transactional
public class ClientDao {

    @PersistenceContext
    EntityManager entityManager;

    public void save (Client client) {
        entityManager.persist(client);
    }

    public Client findById (long id) {
        return entityManager.find(Client.class, id);
    }

    public void update (Client client) {
        entityManager.merge(client);
    }

    public void delete (Client client) {
        entityManager.remove(entityManager.contains(client) ?
                client : entityManager.merge(client));
    }

    public List<Client> findAll () {
        Query query = entityManager.createQuery("SELECT b FROM Client b ORDER BY b.id DESC");
        List<Client> clients = query.getResultList();
        return clients;
    }
}
