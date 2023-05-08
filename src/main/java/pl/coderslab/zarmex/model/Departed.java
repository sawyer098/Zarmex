package pl.coderslab.zarmex.model;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import java.util.Date;

@Entity
@Table(name = "departedList")
@Data
public class Departed {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    //    1. Imię zmarłego
    @NotEmpty(message = "Podaj imię")
    private String firstName;

    //    2. Nazwisko zmarłego
    @NotEmpty(message = "Podaj nazwisko")
    private String lastName;

    //    3. Data urodzenia zmarłego
    @Temporal(TemporalType.DATE)
    private Date dateOfBirth;

    //    4. Wiek zmarłego
    private int age;

    //    5. Data śmierci zmarłego
    @Temporal(TemporalType.DATE)
    private Date dateOfDeath;

    //    6. Miejsce zamieszkania zmarłego
    private String placeOfLive;

    //    7. Pogrzeb danego zmarłego
    @OneToOne(mappedBy = "departed")
    private Funeral funeral;

    private String fullName;



}

