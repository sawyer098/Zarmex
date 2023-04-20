package pl.coderslab.zarmex.model;

import lombok.Data;
import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "departedList")
@Data
public class Departed {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

//    @OneToOne
//    private Funeral funeral;

    //    1. Imię zmarłego
    private String firstName;
    //    2. Nazwisko zmarłego
    private String lastName;
    //    3. Data urodzenia zmarłego
    private Date dateOfBirth;
    //    4. Wiek zmarłego
    private int age;
    //    5. Data śmierci zmarłego
    private Date dateOfDeath;
    //    6. Miejsce zamieszkania zmarłego
    private String placeOfLive;

//  Prawdopodobnie formatowanie daty z formularza do bazy nie ma.
//  Można by spróbować stworzyć departed bez "Date" lub funeral bez relacji.
//    Done.
}

