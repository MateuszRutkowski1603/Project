package pl.coderslab.information;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/trainingInformation")
public class TrainingInformationController {
    private final TrainingInformationRepository trainingInformationRepository;

    public TrainingInformationController(TrainingInformationRepository trainingInformationRepository) {
        this.trainingInformationRepository = trainingInformationRepository;
    }

    @GetMapping("/add")
    public String addTrainingInformation(Model model) {
        model.addAttribute("trainingInformation", new TrainingInformation());
        return "trainingInformation/add";
    }

    @PostMapping("/add")
    public String showAddTrainingInformation(@Valid @ModelAttribute TrainingInformation trainingInformation, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "trainingInformation/add";
        }
        trainingInformationRepository.save(trainingInformation);
        return "redirect:/trainingInformation/list";
    }

    @GetMapping("/list")
    public String listTrainingInformation(Model model) {
        List<TrainingInformation> trainingInformations = trainingInformationRepository.findAll();
        model.addAttribute("trainingInformation", trainingInformations);
        return "trainingInformation/list";
    }

    @GetMapping("/edit/{id}")
    public String showEditTrainingInformation(@PathVariable Long id, Model model) {
        Optional<TrainingInformation> trainingInformation = trainingInformationRepository.findById(id);
        if (trainingInformation.isPresent()) {
            model.addAttribute("trainingInformation", trainingInformation.get());
            return "trainingInformation/edit";
        } else {
            return "redirect:/trainingInformation/list";
        }
    }

    @PostMapping("/edit/{id}")
    public String editTrainingInformation(@PathVariable Long id, @Valid @ModelAttribute TrainingInformation trainingInformation, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "trainingInformation/edit";
        }
        TrainingInformation editedTrainingInformation = trainingInformationRepository.findById(id).orElseThrow(() -> new RuntimeException("TrainingInformation not found " + id));
        editedTrainingInformation.setCoach(trainingInformation.getCoach());
        editedTrainingInformation.setDescription(trainingInformation.getDescription());
        trainingInformationRepository.save(editedTrainingInformation);
        return "redirect:/trainingInformation/list";
    }

    @PostMapping("/delete/{id}")
    public String deleteTrainingInformation(@PathVariable Long id) {
        trainingInformationRepository.deleteById(id);
        return "redirect:/trainingInformation/list";
    }
}
