
namespace project32_chore.Repositories;

public class ChoresRepository
{
  private readonly IDbConnection _db;

  public ChoresRepository(IDbConnection db)
  {
    _db = db;
  }
  public List<Chore> getAllChores()
  {
    string sql = "SELECT * FROM chores";

    List<Chore> chores = _db.Query<Chore>(sql).ToList();
    return chores;
  }
}