package pl.coderslab.place;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;


import javax.validation.Valid;
import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/place")
public class PlaceController {
    private final PlaceRepository placeRepository;

    public PlaceController(PlaceRepository placeRepository) {
        this.placeRepository = placeRepository;
    }

    @GetMapping("/add")
    public String addPlace(Model model) {
        model.addAttribute("place", new Place());
        return "place/add";
    }

    @PostMapping("/add")
    public String showAddPlace(@Valid @ModelAttribute Place place, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "place/add";
        }
        placeRepository.save(place);
        return "redirect:/place/list";
    }

    @GetMapping("/list")
    public String listPlace(Model model) {
        List<Place> places = placeRepository.findAll();
        model.addAttribute("places", places);
        return "/place/list";
    }

    @GetMapping("/edit/{id}")
    public String showEditPlace(@PathVariable Long id, Model model) {
        Optional<Place> place = placeRepository.findById(id);
        if (place.isPresent()) {
            model.addAttribute("place", place.get());
            return "/place/edit";
        } else {
            return "redirect:/place/list";
        }
    }

    @PostMapping("/edit/{id}")
    public String editPlace(@PathVariable Long id, @Valid @ModelAttribute Place place, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "/place/edit";
        }
        Place placeEdited = placeRepository.findById(id).orElseThrow(() -> new RuntimeException("Place not found" + id));
        placeEdited.setPlaceName(place.getPlaceName());
        placeEdited.setAddress(place.getAddress());
        placeRepository.save(placeEdited);
        return "redirect:/place/list";
    }

    @PostMapping("/delete/{id}")
    public String deletePlace(@PathVariable Long id) {
        placeRepository.deleteById(id);
        return "redirect:/place/list";
    }
}
