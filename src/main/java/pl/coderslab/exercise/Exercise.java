package pl.coderslab.exercise;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import pl.coderslab.playerExercise.PlayerExercise;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.util.List;

@Getter
@Setter
@AllArgsConstructor
@Entity
@NoArgsConstructor
public class Exercise {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotBlank(message = "Nazwa nie może być pusta")
    private String name;
    @NotBlank(message = "Opis nie może być pusty")
    private String description;
    @NotNull(message = "Czas trwania nie może być pusty")
    private Integer duration;
    @NotBlank(message = "Typ ćwiczenia nie może być pusty")
    private String type;


    @OneToMany(mappedBy = "exercise")
    private List<PlayerExercise> playerExercises;
}
