namespace dissertationProj.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddedLastEditedDateAndIdToPatientClass : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Patients", "lastEditedId", c => c.String());
            AddColumn("dbo.Patients", "dateOfLastEdit", c => c.DateTime());
            AddColumn("dbo.Patients", "preExistingFactors_medicalComorbities_riskName", c => c.String());
            AddColumn("dbo.Patients", "preExistingFactors_medicalComorbities_riskValue", c => c.Int(nullable: false));
            AddColumn("dbo.Patients", "preExistingFactors_medicalComorbities_riskSelected", c => c.Boolean(nullable: false));
            DropColumn("dbo.Patients", "preExistingFactors_cancer_riskName");
            DropColumn("dbo.Patients", "preExistingFactors_cancer_riskValue");
            DropColumn("dbo.Patients", "preExistingFactors_cancer_riskSelected");
            DropColumn("dbo.Patients", "preExistingFactors_heartFailure_riskName");
            DropColumn("dbo.Patients", "preExistingFactors_heartFailure_riskValue");
            DropColumn("dbo.Patients", "preExistingFactors_heartFailure_riskSelected");
            DropColumn("dbo.Patients", "preExistingFactors_activeSystemicLupusErythematosus_riskName");
            DropColumn("dbo.Patients", "preExistingFactors_activeSystemicLupusErythematosus_riskValue");
            DropColumn("dbo.Patients", "preExistingFactors_activeSystemicLupusErythematosus_riskSelected");
            DropColumn("dbo.Patients", "preExistingFactors_inflammatoryPolyarthropathy_riskName");
            DropColumn("dbo.Patients", "preExistingFactors_inflammatoryPolyarthropathy_riskValue");
            DropColumn("dbo.Patients", "preExistingFactors_inflammatoryPolyarthropathy_riskSelected");
            DropColumn("dbo.Patients", "preExistingFactors_inflammatoryBowelDisease_riskName");
            DropColumn("dbo.Patients", "preExistingFactors_inflammatoryBowelDisease_riskValue");
            DropColumn("dbo.Patients", "preExistingFactors_inflammatoryBowelDisease_riskSelected");
            DropColumn("dbo.Patients", "preExistingFactors_nephroticSyndrome_riskName");
            DropColumn("dbo.Patients", "preExistingFactors_nephroticSyndrome_riskValue");
            DropColumn("dbo.Patients", "preExistingFactors_nephroticSyndrome_riskSelected");
            DropColumn("dbo.Patients", "preExistingFactors_typeIDiabetesMellitusWithNephropathy_riskName");
            DropColumn("dbo.Patients", "preExistingFactors_typeIDiabetesMellitusWithNephropathy_riskValue");
            DropColumn("dbo.Patients", "preExistingFactors_typeIDiabetesMellitusWithNephropathy_riskSelected");
            DropColumn("dbo.Patients", "preExistingFactors_sickleCellDisease_riskName");
            DropColumn("dbo.Patients", "preExistingFactors_sickleCellDisease_riskValue");
            DropColumn("dbo.Patients", "preExistingFactors_sickleCellDisease_riskSelected");
            DropColumn("dbo.Patients", "preExistingFactors_currentIntravenousDrugUser_riskName");
            DropColumn("dbo.Patients", "preExistingFactors_currentIntravenousDrugUser_riskValue");
            DropColumn("dbo.Patients", "preExistingFactors_currentIntravenousDrugUser_riskSelected");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Patients", "preExistingFactors_currentIntravenousDrugUser_riskSelected", c => c.Boolean(nullable: false));
            AddColumn("dbo.Patients", "preExistingFactors_currentIntravenousDrugUser_riskValue", c => c.Int(nullable: false));
            AddColumn("dbo.Patients", "preExistingFactors_currentIntravenousDrugUser_riskName", c => c.String());
            AddColumn("dbo.Patients", "preExistingFactors_sickleCellDisease_riskSelected", c => c.Boolean(nullable: false));
            AddColumn("dbo.Patients", "preExistingFactors_sickleCellDisease_riskValue", c => c.Int(nullable: false));
            AddColumn("dbo.Patients", "preExistingFactors_sickleCellDisease_riskName", c => c.String());
            AddColumn("dbo.Patients", "preExistingFactors_typeIDiabetesMellitusWithNephropathy_riskSelected", c => c.Boolean(nullable: false));
            AddColumn("dbo.Patients", "preExistingFactors_typeIDiabetesMellitusWithNephropathy_riskValue", c => c.Int(nullable: false));
            AddColumn("dbo.Patients", "preExistingFactors_typeIDiabetesMellitusWithNephropathy_riskName", c => c.String());
            AddColumn("dbo.Patients", "preExistingFactors_nephroticSyndrome_riskSelected", c => c.Boolean(nullable: false));
            AddColumn("dbo.Patients", "preExistingFactors_nephroticSyndrome_riskValue", c => c.Int(nullable: false));
            AddColumn("dbo.Patients", "preExistingFactors_nephroticSyndrome_riskName", c => c.String());
            AddColumn("dbo.Patients", "preExistingFactors_inflammatoryBowelDisease_riskSelected", c => c.Boolean(nullable: false));
            AddColumn("dbo.Patients", "preExistingFactors_inflammatoryBowelDisease_riskValue", c => c.Int(nullable: false));
            AddColumn("dbo.Patients", "preExistingFactors_inflammatoryBowelDisease_riskName", c => c.String());
            AddColumn("dbo.Patients", "preExistingFactors_inflammatoryPolyarthropathy_riskSelected", c => c.Boolean(nullable: false));
            AddColumn("dbo.Patients", "preExistingFactors_inflammatoryPolyarthropathy_riskValue", c => c.Int(nullable: false));
            AddColumn("dbo.Patients", "preExistingFactors_inflammatoryPolyarthropathy_riskName", c => c.String());
            AddColumn("dbo.Patients", "preExistingFactors_activeSystemicLupusErythematosus_riskSelected", c => c.Boolean(nullable: false));
            AddColumn("dbo.Patients", "preExistingFactors_activeSystemicLupusErythematosus_riskValue", c => c.Int(nullable: false));
            AddColumn("dbo.Patients", "preExistingFactors_activeSystemicLupusErythematosus_riskName", c => c.String());
            AddColumn("dbo.Patients", "preExistingFactors_heartFailure_riskSelected", c => c.Boolean(nullable: false));
            AddColumn("dbo.Patients", "preExistingFactors_heartFailure_riskValue", c => c.Int(nullable: false));
            AddColumn("dbo.Patients", "preExistingFactors_heartFailure_riskName", c => c.String());
            AddColumn("dbo.Patients", "preExistingFactors_cancer_riskSelected", c => c.Boolean(nullable: false));
            AddColumn("dbo.Patients", "preExistingFactors_cancer_riskValue", c => c.Int(nullable: false));
            AddColumn("dbo.Patients", "preExistingFactors_cancer_riskName", c => c.String());
            DropColumn("dbo.Patients", "preExistingFactors_medicalComorbities_riskSelected");
            DropColumn("dbo.Patients", "preExistingFactors_medicalComorbities_riskValue");
            DropColumn("dbo.Patients", "preExistingFactors_medicalComorbities_riskName");
            DropColumn("dbo.Patients", "dateOfLastEdit");
            DropColumn("dbo.Patients", "lastEditedId");
        }
    }
}
