package pl.coderslab.playerExercise;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import pl.coderslab.exercise.Exercise;
import pl.coderslab.player.Player;

import javax.persistence.*;
@Getter
@Setter
@AllArgsConstructor
@Entity
@NoArgsConstructor
public class PlayerExercise {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "exercise_id")
    private Exercise exercise;

    @ManyToOne
    @JoinColumn(name = "player_id")
    private Player player;

    private String feedback;
}
