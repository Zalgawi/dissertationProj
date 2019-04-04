namespace dissertationProj.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class addedRiskScore : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Patients", "riskAssessmentScore", c => c.Int(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.Patients", "riskAssessmentScore");
        }
    }
}
