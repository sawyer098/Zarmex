package pl.coderslab.zarmex.model;

import lombok.Data;
import org.hibernate.annotations.CreationTimestamp;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "funerals")
@Data
public class Funeral {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

//    1. Zmarły danego pogrzebu
//    @NotEmpty(message = "Wybierz zmarłego")
    @OneToOne
    @JoinColumn(name = "departed_id")
    private Departed departed;

    //    2. Cena trumny
    private long coffin;
    //    3. Cena tabliczki na trumnę
    private long plateOnCoffin;
    //    4. Cena nekrologu
    private long necrology;
    //    5. Cena transportu
    private long transport;
    //    6. Cena obsługi pogrzebu
    private long funeralService;
    //    7. Cena dób chłodni
    private long freezer;
    //    8. Cena ubierania zmarłego
    private long dressing;
    //    9. Cena ubranie dla zmarłego
    private long clothes;
    //    10. Cena książeczki
    private long book;
    //    11. Cena różańca
    private long rosary;
    //    12. Suma
    private long cost;
    //    13. Data pogrzebu
    @Temporal(TemporalType.DATE)
    private Date funeralDate;
    //    Godzina pogrzebu
    private String funeralTime;
    //    14. Miejsce pogrzebu
    private String funeralPlace;
    //    15. Data utworzenia
    @Temporal(TemporalType.DATE)
    @CreationTimestamp
    private Date created;

    //    16. Klient danego pogrzebu
//    @NotEmpty(message = "Wybierz klienta")
    @ManyToOne
    private Client client;

}

