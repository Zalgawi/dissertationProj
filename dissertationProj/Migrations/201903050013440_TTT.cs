namespace dissertationProj.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class TTT : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Patients", "weight", c => c.Int(nullable: false));
            AddColumn("dbo.Patients", "parity", c => c.Int(nullable: false));
            AddColumn("dbo.Patients", "civilStatus", c => c.String());
            AddColumn("dbo.Patients", "previousVTE", c => c.Boolean(nullable: false));
            AddColumn("dbo.Patients", "surgeryVTE", c => c.Boolean(nullable: false));
            AddColumn("dbo.Patients", "highRiskThrombophilia", c => c.Boolean(nullable: false));
            AddColumn("dbo.Patients", "cancer", c => c.Boolean(nullable: false));
            AddColumn("dbo.Patients", "heartFailure", c => c.Boolean(nullable: false));
            AddColumn("dbo.Patients", "activeSystemicLupusErythematosus", c => c.Boolean(nullable: false));
            AddColumn("dbo.Patients", "inflammatoryPolyarthropathy", c => c.Boolean(nullable: false));
            AddColumn("dbo.Patients", "inflammatoryBowelDisease", c => c.Boolean(nullable: false));
            AddColumn("dbo.Patients", "nephroticSyndrome", c => c.Boolean(nullable: false));
            AddColumn("dbo.Patients", "typeIDiabetesMellitusWithNephropathy", c => c.Boolean(nullable: false));
            AddColumn("dbo.Patients", "sickleCellDisease", c => c.Boolean(nullable: false));
            AddColumn("dbo.Patients", "currentInratvenousDrugUser", c => c.Boolean(nullable: false));
            AddColumn("dbo.Patients", "familyHistoryVTEFirstDegreeRelative", c => c.Boolean(nullable: false));
            AddColumn("dbo.Patients", "lowRiskThrombophilia", c => c.Boolean(nullable: false));
            AddColumn("dbo.Patients", "smoker", c => c.Boolean(nullable: false));
            AddColumn("dbo.Patients", "grossVaricoseVeins", c => c.Boolean(nullable: false));
            AddColumn("dbo.Patients", "obesity", c => c.Int(nullable: false));
            AddColumn("dbo.Patients", "preEclampsiaInCurrentPregnancy", c => c.Boolean(nullable: false));
            AddColumn("dbo.Patients", "ARTorIVF", c => c.Boolean(nullable: false));
            AddColumn("dbo.Patients", "multiplePregnancy", c => c.Boolean(nullable: false));
            AddColumn("dbo.Patients", "caesareanSectionInLabour", c => c.Boolean(nullable: false));
            AddColumn("dbo.Patients", "electiveCaesareanSection", c => c.Boolean(nullable: false));
            AddColumn("dbo.Patients", "operativeDelivery", c => c.Boolean(nullable: false));
            AddColumn("dbo.Patients", "prolongedLabour", c => c.Boolean(nullable: false));
            AddColumn("dbo.Patients", "PPH", c => c.Boolean(nullable: false));
            AddColumn("dbo.Patients", "pretermBirth", c => c.Boolean(nullable: false));
            AddColumn("dbo.Patients", "stillBirth", c => c.Boolean(nullable: false));
            AddColumn("dbo.Patients", "surgicalProcedure", c => c.Boolean(nullable: false));
            AddColumn("dbo.Patients", "Hyperemesis", c => c.Boolean(nullable: false));
            AddColumn("dbo.Patients", "OHSS", c => c.Boolean(nullable: false));
            AddColumn("dbo.Patients", "currentSystemicInfection", c => c.Boolean(nullable: false));
            AddColumn("dbo.Patients", "immobilityOrDehydration", c => c.Boolean(nullable: false));
            DropColumn("dbo.Patients", "Id");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Patients", "Id", c => c.Int(nullable: false));
            DropColumn("dbo.Patients", "immobilityOrDehydration");
            DropColumn("dbo.Patients", "currentSystemicInfection");
            DropColumn("dbo.Patients", "OHSS");
            DropColumn("dbo.Patients", "Hyperemesis");
            DropColumn("dbo.Patients", "surgicalProcedure");
            DropColumn("dbo.Patients", "stillBirth");
            DropColumn("dbo.Patients", "pretermBirth");
            DropColumn("dbo.Patients", "PPH");
            DropColumn("dbo.Patients", "prolongedLabour");
            DropColumn("dbo.Patients", "operativeDelivery");
            DropColumn("dbo.Patients", "electiveCaesareanSection");
            DropColumn("dbo.Patients", "caesareanSectionInLabour");
            DropColumn("dbo.Patients", "multiplePregnancy");
            DropColumn("dbo.Patients", "ARTorIVF");
            DropColumn("dbo.Patients", "preEclampsiaInCurrentPregnancy");
            DropColumn("dbo.Patients", "obesity");
            DropColumn("dbo.Patients", "grossVaricoseVeins");
            DropColumn("dbo.Patients", "smoker");
            DropColumn("dbo.Patients", "lowRiskThrombophilia");
            DropColumn("dbo.Patients", "familyHistoryVTEFirstDegreeRelative");
            DropColumn("dbo.Patients", "currentInratvenousDrugUser");
            DropColumn("dbo.Patients", "sickleCellDisease");
            DropColumn("dbo.Patients", "typeIDiabetesMellitusWithNephropathy");
            DropColumn("dbo.Patients", "nephroticSyndrome");
            DropColumn("dbo.Patients", "inflammatoryBowelDisease");
            DropColumn("dbo.Patients", "inflammatoryPolyarthropathy");
            DropColumn("dbo.Patients", "activeSystemicLupusErythematosus");
            DropColumn("dbo.Patients", "heartFailure");
            DropColumn("dbo.Patients", "cancer");
            DropColumn("dbo.Patients", "highRiskThrombophilia");
            DropColumn("dbo.Patients", "surgeryVTE");
            DropColumn("dbo.Patients", "previousVTE");
            DropColumn("dbo.Patients", "civilStatus");
            DropColumn("dbo.Patients", "parity");
            DropColumn("dbo.Patients", "weight");
        }
    }
}
