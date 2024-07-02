package pl.coderslab.trainingSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.place.PlaceRepository;
import pl.coderslab.player.PlayerRepository;

import javax.validation.Valid;
import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/trainingSession")
public class TrainingSessionController {
    private final TrainingSessionRepository trainingSessionRepository;
    private final PlaceRepository placeRepository;
    private final PlayerRepository playerRepository;



    public TrainingSessionController(TrainingSessionRepository trainingSessionRepository, PlaceRepository placeRepository, PlayerRepository playerRepository) {
        this.trainingSessionRepository = trainingSessionRepository;
        this.placeRepository = placeRepository;
        this.playerRepository = playerRepository;
    }

    @GetMapping("/add")
    public String addTrainingSession(Model model) {
        model.addAttribute("trainingSession", new TrainingSession());
        model.addAttribute("places", placeRepository.findAll());
        model.addAttribute("players", playerRepository.findAll());
        return "trainingSession/add";
    }

    @PostMapping("/add")
    public String showAddTrainingSession(@Valid @ModelAttribute TrainingSession trainingSession,Model model, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            model.addAttribute("places", placeRepository.findAll());
            model.addAttribute("players", playerRepository.findAll());
            return "place/add";
        }
        trainingSessionRepository.save(trainingSession);
        return "redirect:/trainingSession/list";
    }

    @GetMapping("/list")
    public String listTrainingSession(Model model) {
        List<TrainingSession> trainingSessions = trainingSessionRepository.findAll();
        model.addAttribute("trainingSession", trainingSessions);
        return "/trainingSession/list";
    }

    @GetMapping("/edit/{id}")
    public String showEditTrainingSession(@PathVariable Long id, Model model) {
        Optional<TrainingSession> trainingSession = trainingSessionRepository.findById(id);
        if (trainingSession.isPresent()) {
            model.addAttribute("trainingSession", trainingSession.get());
            model.addAttribute("places", placeRepository.findAll());
            model.addAttribute("players", playerRepository.findAll());
            return "/trainingSession/edit";
        } else {
            return "redirect:/trainingSession/list";
        }
    }

    @PostMapping("/edit/{id}")
    public String editTrainingSession(@PathVariable Long id, @Valid @ModelAttribute TrainingSession trainingSession, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "/trainingSession/edit";
        }
        TrainingSession trainingSessionEdit = trainingSessionRepository.findById(id).orElseThrow(() -> new RuntimeException("TrainingSession not found" + id));
        trainingSessionEdit.setDuration(trainingSession.getDuration());
        trainingSessionEdit.setType(trainingSession.getType());
        trainingSessionEdit.setStartTime(trainingSession.getStartTime());
        trainingSessionEdit.setPlace(trainingSession.getPlace());
        trainingSessionEdit.setPlayers(trainingSession.getPlayers());
        trainingSessionRepository.save(trainingSessionEdit);
        return "redirect:/trainingSession/list";
    }
    @PostMapping("/delete/{id}")
    public String deleteTrainingSession(@PathVariable Long id) {
        trainingSessionRepository.deleteById(id);
        return "redirect:/trainingSession/list";
    }
}
