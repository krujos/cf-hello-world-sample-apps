@RestController
class HelloWorldApp {

    @RequestMapping("/")
    String home() {
        return "Hello World!"
    }

}
