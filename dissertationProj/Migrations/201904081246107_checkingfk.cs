namespace dissertationProj.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class checkingfk : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.Patients", "Id", "dbo.AspNetUsers");
            DropIndex("dbo.Patients", new[] { "Id" });
            AlterColumn("dbo.Patients", "Id", c => c.String());
        }
        
        public override void Down()
        {
            AlterColumn("dbo.Patients", "Id", c => c.String(maxLength: 128));
            CreateIndex("dbo.Patients", "Id");
            AddForeignKey("dbo.Patients", "Id", "dbo.AspNetUsers", "Id");
        }
    }
}
