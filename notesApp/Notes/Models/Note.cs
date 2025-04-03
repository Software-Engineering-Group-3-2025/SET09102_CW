using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Notes.Models;

[Table("note")]
[PrimaryKey(nameof(Id))]
public class Note
{
    public int Id { get; set; }
    [Required]
    public string Text { get; set; }
    [Required]
    public DateTime Date { get; set; }
}
