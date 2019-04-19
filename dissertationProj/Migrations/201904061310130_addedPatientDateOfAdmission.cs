namespace dissertationProj.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class addedPatientDateOfAdmission : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Patients", "dateOfAdmission", c => c.DateTime(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.Patients", "dateOfAdmission");
        }
    }
}
