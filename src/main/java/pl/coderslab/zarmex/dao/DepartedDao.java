package pl.coderslab.zarmex.dao;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import pl.coderslab.zarmex.model.Departed;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;
import java.util.stream.Collectors;

@Repository
@Transactional
public class DepartedDao {

    @PersistenceContext
    EntityManager entityManager;

    public void save (Departed departed) {
        entityManager.persist(departed);
    }

    public Departed findById (long id) {
        return entityManager.find(Departed.class, id);
    }

    public void update (Departed departed) {
        entityManager.merge(departed);
    }

    public void delete (Departed departed) {
        entityManager.remove(entityManager.contains(departed) ? departed : entityManager.merge(departed));
    }

    public List<Departed> findAllDepartedList () {
        Query query = entityManager.createQuery("SELECT b FROM Departed b order by b.id desc");
        List<Departed> departedList = query.getResultList();
        return departedList;
    }

    public List<Departed> findAllDepartedWithoutFuneralList() {
        List<Departed> filteredList = findAllDepartedList().stream()
                .filter(d -> d.getFuneral() == null)
                .collect(Collectors.toList());

        return filteredList;
    }

    public Departed findDepartedByFuneralId(long funeralId) {
        Query query = entityManager.createQuery("SELECT f.departed FROM Funeral f WHERE f.id = :funeralId", Departed.class);
        query.setParameter("funeralId", funeralId);
        return (Departed) query.getSingleResult();
    }

}