package pl.coderslab.zarmex.model;

import lombok.Data;

import javax.persistence.*;

@Entity
@Table(name = "clients")
@Data
public class Client {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

//    1. Imię
    private String firstName;
//    2. Nazwisko
    private String lastName;
//    3. Telefon kontaktowy
    private long phoneNumber;

//    @OneToMany(fetch = FetchType.EAGER)
//    @JoinTable(name="clients_funerals",
//    joinColumns = @JoinColumn(name = "client_id"),
//    inverseJoinColumns = @JoinColumn(name="funeral_id"))
//    private List<Funeral> funerals = new ArrayList<>();

}
