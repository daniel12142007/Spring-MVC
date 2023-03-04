package Spring.control;

import Spring.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

import static java.util.Arrays.asList;

@Controller
public class Control {

    private static List<User> list = asList(
            new User(1, "Marlen", 17),
            new User(2, "Bakyt", 16),
            new User(3, "Elbek", 16),
            new User(4, "Daniel", 15),
            new User(5, "Medina", 15),
            new User(6, "Dastan", 15),
            new User(7, "Sardor", 17),
            new User(8, "Ariet", 17),
            new User(9, "Kurmanbek", 15),
            new User(10, "Aiken", 17),
            new User(11, "Bekbolsun", 15)
    );

    @GetMapping("/table")
    public String table(Model model) {
        model.addAttribute("tnt", list);
        return "table";
    }

    @PostMapping("/save")
    private String savestudent(@RequestParam String name, @RequestParam int age) {
        User user = new User();
        user.setId(list.size() + 1);
        user.setName(name);
        user.setAge(age);
        list.add(user);
        return "redirect:/";
    }

    @GetMapping("studentForm")
    public String from() {
        return "studentform";
    }

    @GetMapping("/get/{id}")
    public String getbyid(@PathVariable int id, Model model) {
        for (int i = 0; i <= list.size(); i++) {
            if (list.get(i).getId() == id) {
                model.addAttribute("index", list.get(i));
                break;
            }
        }
        return "getbyid";
    }

    @GetMapping("delete/by/{id}")
    public String deletebyid(@PathVariable int id) {
        for (int i = 0; i <= list.size(); i++) {
            if (list.get(i).getId() == id) {
                list.remove(i);
                break;
            }
        }
        return "redirect:/";
    }
}
