package pl.coderslab.playerExercise;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.exercise.ExerciseRepository;
import pl.coderslab.player.PlayerRepository;
import pl.coderslab.trainingSession.TrainingSession;

import javax.validation.Valid;
import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/playerExercise")
public class PlayerExerciseController {
    private final PlayerExerciseRepository playerExerciseRepository;
    private final ExerciseRepository exerciseRepository;
    private final PlayerRepository playerRepository;

    public PlayerExerciseController(PlayerExerciseRepository playerExerciseRepository, ExerciseRepository exerciseRepository, PlayerRepository playerRepository) {
        this.playerExerciseRepository = playerExerciseRepository;
        this.exerciseRepository = exerciseRepository;
        this.playerRepository = playerRepository;
    }

    @GetMapping("/add")
    public String addPlayerExercise(Model model) {
        model.addAttribute("playerExercise", new PlayerExercise());
        model.addAttribute("exercises", exerciseRepository.findAll());
        model.addAttribute("players", playerRepository.findAll());
        return "playerExercise/add";
    }

    @PostMapping("/add")
    public String savePlayerExercise(@Valid @ModelAttribute("playerExercise") PlayerExercise playerExercise, BindingResult bindingResult, Model model) {
        if (bindingResult.hasErrors()) {
            model.addAttribute("exercises", exerciseRepository.findAll());
            model.addAttribute("players", playerRepository.findAll());
            return "playerExercise/add";
        }
        playerExerciseRepository.save(playerExercise);
        return "redirect:/playerExercise/list";
    }

    @GetMapping("/list")
    public String listPlayerExercises(Model model) {
        List<PlayerExercise> playerExercises = playerExerciseRepository.findAll();
        model.addAttribute("playerExercises", playerExercises);
        return "playerExercise/list";
    }

    @GetMapping("/edit/{id}")
    public String showEditPlayerExercise(@PathVariable Long id, Model model) {
        Optional<PlayerExercise> playerExercise = playerExerciseRepository.findById(id);
        if (playerExercise.isPresent()) {
            model.addAttribute("playerExercise", playerExercise.get());
            model.addAttribute("exercises", exerciseRepository.findAll());
            model.addAttribute("players", playerRepository.findAll());
            return "/playerExercise/edit";
        } else {
            return "redirect:/playerExercise/list";
        }
    }

    @PostMapping("/edit/{id}")
    public String editPlayerExercise(@PathVariable Long id, @Valid @ModelAttribute PlayerExercise playerExercise, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "/playerExercise/edit";
        }
        PlayerExercise playerExerciseEdit = playerExerciseRepository.findById(id).orElseThrow(() -> new RuntimeException("PlayerExercise not found" + id));
        playerExerciseEdit.setFeedback(playerExercise.getFeedback());
        playerExerciseEdit.setExercise(playerExercise.getExercise());
        playerExerciseEdit.setPlayer(playerExercise.getPlayer());
        playerExerciseRepository.save(playerExerciseEdit);
        return "redirect:/playerExercise/list";
    }

    @PostMapping("/delete/{id}")
    public String deletePlayerExercise(@PathVariable Long id) {
        playerExerciseRepository.deleteById(id);
        return "redirect:/playerExercise/list";
    }


}
