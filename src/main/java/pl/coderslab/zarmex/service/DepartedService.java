package pl.coderslab.zarmex.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import pl.coderslab.zarmex.dao.DepartedDao;
import pl.coderslab.zarmex.model.Departed;

import java.util.List;

@Service
@RequiredArgsConstructor
public class DepartedService {

    private final DepartedDao departedDao;

    public void departedSave (Departed departed) {
        departedDao.save(departed);
    }

    public Departed departedFindById(long id) {
        return departedDao.findById(id);
    }

    public void departedUpdate(Departed departed) {
        departedDao.update(departed);
    }

    public void departedDelete(Departed departed) {
        departedDao.delete(departed);
    }

    public List<Departed> findAllDepartedList() {
        return departedDao.findAllDepartedList();
    }

    public List<Departed> findAllDepartedWithoutFuneralList() {
        return departedDao.findAllDepartedWithoutFuneralList();
    }

    public Departed findDepartedByFuneralId(long funeralId) {
        return departedDao.findDepartedByFuneralId(funeralId);
    }
}