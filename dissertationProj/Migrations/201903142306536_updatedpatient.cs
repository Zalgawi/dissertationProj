namespace dissertationProj.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class updatedpatient : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Patients", "Id", c => c.String(maxLength: 128));
            CreateIndex("dbo.Patients", "Id");
            AddForeignKey("dbo.Patients", "Id", "dbo.AspNetUsers", "Id");
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Patients", "Id", "dbo.AspNetUsers");
            DropIndex("dbo.Patients", new[] { "Id" });
            DropColumn("dbo.Patients", "Id");
        }
    }
}
