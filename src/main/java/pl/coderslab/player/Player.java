package pl.coderslab.player;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import pl.coderslab.playerExercise.PlayerExercise;
import pl.coderslab.trainingSession.TrainingSession;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.util.List;

@Getter
@Setter
@AllArgsConstructor
@Entity
@NoArgsConstructor
public class Player {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotBlank(message = "Imię nie może być puste")
    private String firstName;
    @NotBlank(message = "Nazwisko nie może być puste")
    private String lastName;
    @NotNull(message = "Wiek nie może być pusty")
    private Integer age;
    @NotNull(message = "Wzrost nie może być pusty")
    private Integer height;
    @NotNull(message = "Waga nie może być pusta")
    private Integer weight;
    @NotBlank(message = "Wiodąca noga nie może być pusta")
    private String leadingLeg;
    @NotBlank(message = "Rola na boisku nie może być pusta")
    private String role;

    @OneToMany(mappedBy = "player")
    private List<PlayerExercise> playerExercises;

    @ManyToMany(mappedBy = "players")
    private List<TrainingSession> trainingSessions;



}
