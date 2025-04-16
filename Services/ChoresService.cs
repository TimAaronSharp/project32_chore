
namespace project32_chore.Services;

public class ChoresService
{
  private readonly ChoresRepository _choresRepository;

  public ChoresService(ChoresRepository choresRepository)
  {
    _choresRepository = choresRepository;
  }

  public List<Chore> GetAllChores()
  {
    List<Chore> chores = _choresRepository.getAllChores();
    return chores;
  }
}