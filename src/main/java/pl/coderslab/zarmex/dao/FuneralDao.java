package pl.coderslab.zarmex.dao;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import pl.coderslab.zarmex.model.Funeral;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;

@Repository
@Transactional
public class FuneralDao {

    @PersistenceContext
    EntityManager entityManager;

// brak zapisu do tabeli clients_funerals .
    public void save (Funeral funeral) {
        entityManager.persist(funeral);
    }

    public Funeral findById (long id) {
        return entityManager.find(Funeral.class, id);
    }

    public void update (Funeral funeral) {
        entityManager.merge(funeral);
    }

    public void delete (Funeral funeral) {
        entityManager.remove(entityManager.contains(funeral) ?
                funeral : entityManager.merge(funeral));
    }

    public List<Funeral> findAllFunerals () {
        Query query = entityManager.createQuery("SELECT b FROM Funeral b ORDER BY b.id DESC");
        List<Funeral> funerals = query.getResultList();
        return funerals;
    }

}
