namespace project32_chore.Controllers;

[ApiController]
[Route("api/chores")] //NOTE Like a Super('api/route')
public class ChoresController : ControllerBase
{
  // NOTE Controller dependency injection. Declaring _choresService as a member of the ChoresController class that is private (member access modifier. Only accessible within the body of the class or the struct(?) in which they are declared. ie - this cannot be accessed from outside this controller), readonly (assignment can only occur as part of the declaration or in a constructor in the same class), and of datatype(?)/class of ChoresService.
  private readonly ChoresService _choresService;
  // NOTE Constructor for a ChoresController. Takes in a ChoresService type parameter (which is provided above)
  public ChoresController(ChoresService choresService)
  {
    _choresService = choresService;
  }

  [HttpGet]
  public ActionResult<List<Chore>> GetAllChores()
  {
    try
    {
      List<Chore> chores = _choresService.GetAllChores();
      return Ok(chores); //NOTE Returns a 200 OK response, passing through chores
    }
    catch (Exception error)
    {
      return BadRequest(error.Message);
    }
  }
}
