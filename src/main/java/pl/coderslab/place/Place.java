package pl.coderslab.place;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import pl.coderslab.trainingSession.TrainingSession;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import java.util.List;

@Getter
@Setter
@AllArgsConstructor
@Entity
@NoArgsConstructor
public class Place {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotBlank(message = "Miejsce treningu nie może być puste")
    private String placeName;
    @NotBlank(message = "adres nie może być pusty")
    private String address;

    @OneToMany(mappedBy = "place")
    private List<TrainingSession> trainingSessions;



}
