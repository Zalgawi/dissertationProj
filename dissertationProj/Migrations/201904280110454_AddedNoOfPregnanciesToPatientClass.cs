namespace dissertationProj.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddedNoOfPregnanciesToPatientClass : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Patients", "noOfPregnancies", c => c.Int(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.Patients", "noOfPregnancies");
        }
    }
}
