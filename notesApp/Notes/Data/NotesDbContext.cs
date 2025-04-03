using Microsoft.EntityFrameworkCore;
using Notes.Models;

namespace Notes.Data;
public class NotesDbContext : DbContext
{

    public NotesDbContext()
    { }
    public NotesDbContext(DbContextOptions options) : base(options)
    { }

    public DbSet<Note> Notes { get; set; }

}
