package pl.coderslab.zarmex.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.coderslab.zarmex.model.Funeral;

import java.util.List;

@Repository
public interface FuneralRepository extends JpaRepository<Funeral, Long> {

    List<Funeral> findByClientId(Long clientId);
}
