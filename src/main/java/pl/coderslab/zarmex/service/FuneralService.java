package pl.coderslab.zarmex.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import pl.coderslab.zarmex.dao.FuneralDao;
import pl.coderslab.zarmex.model.Funeral;

import java.util.List;

@Service
@RequiredArgsConstructor
public class FuneralService {

    private final FuneralDao funeralDao;

    public void funeralSave (Funeral funeral) {
        funeralDao.save(funeral);
    }

    public Funeral funeralFindById(long id) {
        return funeralDao.findById(id);
    }

    public void funeralUpdate(Funeral funeral) {
        funeralDao.update(funeral);
    }

    public void funeralDelete(Funeral funeral) {
        funeralDao.delete(funeral);
    }

    public List<Funeral> findAllFunerals() {
        return funeralDao.findAllFunerals();
    }

}
