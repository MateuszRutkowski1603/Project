package pl.coderslab.player;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/player")
public class PlayerController {
    private final PlayerRepository playerRepository;

    public PlayerController(PlayerRepository playerRepository) {
        this.playerRepository = playerRepository;
    }

    @GetMapping("/add")
    public String addPlayer(Model model) {
        model.addAttribute("player", new Player());
        return "/player/add";
    }

    @PostMapping("/add")
    public String showAddPlayer(@Valid @ModelAttribute Player player, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "/player/add";
        }
        playerRepository.save(player);
        return "redirect:/player/list";
    }

    @GetMapping("/list")
    public String listPlayer(Model model) {
        List<Player> players = playerRepository.findAll();
        model.addAttribute("players", players);
        return "/player/list";
    }

    @GetMapping("/edit/{id}")
    public String showEditPlayer(@PathVariable Long id, Model model) {
        Optional<Player> player = playerRepository.findById(id);
        if (player.isPresent()) {
            model.addAttribute("player", player.get());
            return "/player/edit";
        } else {
            return "redirect:/player/list";
        }
    }

    @PostMapping("/edit/{id}")
    public String editPlayer(@PathVariable Long id, @Valid @ModelAttribute Player player, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "/player/edit";
        }
        Player editPlayer = playerRepository.findById(id).orElseThrow(() -> new RuntimeException("Player not found" + id));
        editPlayer.setFirstName(player.getFirstName());
        editPlayer.setLastName(player.getLastName());
        editPlayer.setAge(player.getAge());
        editPlayer.setHeight(player.getHeight());
        editPlayer.setWeight(player.getWeight());
        editPlayer.setLeadingLeg(player.getLeadingLeg());
        editPlayer.setRole(player.getRole());
        playerRepository.save(editPlayer);
        return "redirect:/player/list";
    }

    @PostMapping("/delete/{id}")
    public String deletePlayer(@PathVariable Long id) {
        playerRepository.deleteById(id);
        return "redirect:/player/list";
    }
}
