namespace project32_chore.Models;

public class Chore
{
  public int Id { get; set; }
  public string description { get; set; }
  public bool isComplete { get; set; }
  public string createdAt { get; set; }
  public string deadline { get; set; }
  public bool hasStarted { get; set; }
  public string priority { get; set; }
}

