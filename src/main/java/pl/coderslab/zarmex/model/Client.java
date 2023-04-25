package pl.coderslab.zarmex.model;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "clients")
@Data
public class Client {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    //    1. Imię
    @NotEmpty(message = "Podaj imie")
    private String firstName;

    //    2. Nazwisko
    @NotEmpty(message = "Podaj nazwisko")
    private String lastName;

    //    3. Telefon kontaktowy
    @Size(min = 9, max = 9, message = "Podaj telefon kontaktowy: 111222333")
    private String phoneNumber;

    //    4. Pogrzeby danego klienta
    @OneToMany(fetch = FetchType.EAGER)
    @JoinTable(name = "clients_funerals",
    joinColumns = @JoinColumn(name = "client_id"),
    inverseJoinColumns = @JoinColumn(name = "funeral_id"))
    private List<Funeral> funerals = new ArrayList<>();

    private String fullName;
}
