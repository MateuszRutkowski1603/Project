package pl.coderslab.exercise;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/exercise")
public class ExerciseController {
    private final ExerciseRepository exerciseRepository;

    public ExerciseController(ExerciseRepository exerciseRepository) {
        this.exerciseRepository = exerciseRepository;
    }
    @GetMapping("/add")
    public String addExercise(Model model) {
        model.addAttribute("exercise", new Exercise());
        return "exercise/add";
    }
    @PostMapping("/add")
    public String showAddExercise(@Valid @ModelAttribute Exercise exercise, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "exercise/add";
        }
        exerciseRepository.save(exercise);
        return "redirect:/exercise/add";
    }
    @GetMapping("/list")
    public String listExercises(Model model) {
        List<Exercise> exercises = exerciseRepository.findAll();
        model.addAttribute("exercises", exercises);
        return "exercise/list";
    }
    @GetMapping("/edit/{id}")
    public String showEditExercise(@PathVariable Long id, Model model) {
        Optional<Exercise> exercise = exerciseRepository.findById(id);
        if (exercise.isPresent()) {
            model.addAttribute("exercise", exercise.get());
            return "exercise/edit";
        } else {
            return "redirect:/exercise/list";
        }
    }
    @PostMapping("/edit/{id}")
    public String editExercise(@PathVariable Long id, @Valid @ModelAttribute Exercise exercise, BindingResult bindingResult){
        if (bindingResult.hasErrors()) {
            return "exercise/edit";
        }
        Exercise editedExercise = exerciseRepository.findById(id).orElseThrow(()->new RuntimeException("Exercise not found" + id));
        editedExercise.setName(exercise.getName());
        editedExercise.setDescription(exercise.getDescription());
        editedExercise.setDuration(exercise.getDuration());
        editedExercise.setType(exercise.getType());
        exerciseRepository.save(editedExercise);
        return "redirect:/exercise/list";
    }
    @PostMapping("/delete/{id}")
    public String deleteExercise(@PathVariable Long id) {
        exerciseRepository.deleteById(id);
        return "redirect:/exercise/list";
    }
}
