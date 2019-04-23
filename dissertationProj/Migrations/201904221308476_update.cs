namespace dissertationProj.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class update : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Patients",
                c => new
                    {
                        patientId = c.Int(nullable: false, identity: true),
                        Id = c.String(),
                        firstName = c.String(),
                        middleName = c.String(),
                        lastName = c.String(),
                        gender = c.String(),
                        birthdate = c.DateTime(),
                        weight = c.Decimal(nullable: false, precision: 18, scale: 2),
                        height = c.Decimal(nullable: false, precision: 18, scale: 2),
                        civilStatus = c.String(),
                        bmi = c.Decimal(nullable: false, precision: 18, scale: 2),
                        dateOfAdmission = c.DateTime(),
                        preExistingFactors_parity_riskName = c.String(),
                        preExistingFactors_parity_riskValue = c.Int(nullable: false),
                        preExistingFactors_parity_riskSelected = c.Boolean(nullable: false),
                        preExistingFactors_previousVTE_riskName = c.String(),
                        preExistingFactors_previousVTE_riskValue = c.Int(nullable: false),
                        preExistingFactors_previousVTE_riskSelected = c.Boolean(nullable: false),
                        preExistingFactors_surgeryVTE_riskName = c.String(),
                        preExistingFactors_surgeryVTE_riskValue = c.Int(nullable: false),
                        preExistingFactors_surgeryVTE_riskSelected = c.Boolean(nullable: false),
                        preExistingFactors_highRiskThrombophilia_riskName = c.String(),
                        preExistingFactors_highRiskThrombophilia_riskValue = c.Int(nullable: false),
                        preExistingFactors_highRiskThrombophilia_riskSelected = c.Boolean(nullable: false),
                        preExistingFactors_cancer_riskName = c.String(),
                        preExistingFactors_cancer_riskValue = c.Int(nullable: false),
                        preExistingFactors_cancer_riskSelected = c.Boolean(nullable: false),
                        preExistingFactors_heartFailure_riskName = c.String(),
                        preExistingFactors_heartFailure_riskValue = c.Int(nullable: false),
                        preExistingFactors_heartFailure_riskSelected = c.Boolean(nullable: false),
                        preExistingFactors_activeSystemicLupusErythematosus_riskName = c.String(),
                        preExistingFactors_activeSystemicLupusErythematosus_riskValue = c.Int(nullable: false),
                        preExistingFactors_activeSystemicLupusErythematosus_riskSelected = c.Boolean(nullable: false),
                        preExistingFactors_inflammatoryPolyarthropathy_riskName = c.String(),
                        preExistingFactors_inflammatoryPolyarthropathy_riskValue = c.Int(nullable: false),
                        preExistingFactors_inflammatoryPolyarthropathy_riskSelected = c.Boolean(nullable: false),
                        preExistingFactors_inflammatoryBowelDisease_riskName = c.String(),
                        preExistingFactors_inflammatoryBowelDisease_riskValue = c.Int(nullable: false),
                        preExistingFactors_inflammatoryBowelDisease_riskSelected = c.Boolean(nullable: false),
                        preExistingFactors_nephroticSyndrome_riskName = c.String(),
                        preExistingFactors_nephroticSyndrome_riskValue = c.Int(nullable: false),
                        preExistingFactors_nephroticSyndrome_riskSelected = c.Boolean(nullable: false),
                        preExistingFactors_typeIDiabetesMellitusWithNephropathy_riskName = c.String(),
                        preExistingFactors_typeIDiabetesMellitusWithNephropathy_riskValue = c.Int(nullable: false),
                        preExistingFactors_typeIDiabetesMellitusWithNephropathy_riskSelected = c.Boolean(nullable: false),
                        preExistingFactors_sickleCellDisease_riskName = c.String(),
                        preExistingFactors_sickleCellDisease_riskValue = c.Int(nullable: false),
                        preExistingFactors_sickleCellDisease_riskSelected = c.Boolean(nullable: false),
                        preExistingFactors_currentIntravenousDrugUser_riskName = c.String(),
                        preExistingFactors_currentIntravenousDrugUser_riskValue = c.Int(nullable: false),
                        preExistingFactors_currentIntravenousDrugUser_riskSelected = c.Boolean(nullable: false),
                        preExistingFactors_familyHistoryVTEFirstDegreeRelative_riskName = c.String(),
                        preExistingFactors_familyHistoryVTEFirstDegreeRelative_riskValue = c.Int(nullable: false),
                        preExistingFactors_familyHistoryVTEFirstDegreeRelative_riskSelected = c.Boolean(nullable: false),
                        preExistingFactors_lowRiskThrombophilia_riskName = c.String(),
                        preExistingFactors_lowRiskThrombophilia_riskValue = c.Int(nullable: false),
                        preExistingFactors_lowRiskThrombophilia_riskSelected = c.Boolean(nullable: false),
                        preExistingFactors_smoker_riskName = c.String(),
                        preExistingFactors_smoker_riskValue = c.Int(nullable: false),
                        preExistingFactors_smoker_riskSelected = c.Boolean(nullable: false),
                        preExistingFactors_grossVaricoseVeins_riskName = c.String(),
                        preExistingFactors_grossVaricoseVeins_riskValue = c.Int(nullable: false),
                        preExistingFactors_grossVaricoseVeins_riskSelected = c.Boolean(nullable: false),
                        ObstetricFactors_preEclampsiaInCurrentPregnancy_riskName = c.String(),
                        ObstetricFactors_preEclampsiaInCurrentPregnancy_riskValue = c.Int(nullable: false),
                        ObstetricFactors_preEclampsiaInCurrentPregnancy_riskSelected = c.Boolean(nullable: false),
                        ObstetricFactors_ARTorIVF_riskName = c.String(),
                        ObstetricFactors_ARTorIVF_riskValue = c.Int(nullable: false),
                        ObstetricFactors_ARTorIVF_riskSelected = c.Boolean(nullable: false),
                        ObstetricFactors_multiplePregnancy_riskName = c.String(),
                        ObstetricFactors_multiplePregnancy_riskValue = c.Int(nullable: false),
                        ObstetricFactors_multiplePregnancy_riskSelected = c.Boolean(nullable: false),
                        ObstetricFactors_caesareanSectionInLabour_riskName = c.String(),
                        ObstetricFactors_caesareanSectionInLabour_riskValue = c.Int(nullable: false),
                        ObstetricFactors_caesareanSectionInLabour_riskSelected = c.Boolean(nullable: false),
                        ObstetricFactors_electiveCaesareanSection_riskName = c.String(),
                        ObstetricFactors_electiveCaesareanSection_riskValue = c.Int(nullable: false),
                        ObstetricFactors_electiveCaesareanSection_riskSelected = c.Boolean(nullable: false),
                        ObstetricFactors_operativeDelivery_riskName = c.String(),
                        ObstetricFactors_operativeDelivery_riskValue = c.Int(nullable: false),
                        ObstetricFactors_operativeDelivery_riskSelected = c.Boolean(nullable: false),
                        ObstetricFactors_prolongedLabour_riskName = c.String(),
                        ObstetricFactors_prolongedLabour_riskValue = c.Int(nullable: false),
                        ObstetricFactors_prolongedLabour_riskSelected = c.Boolean(nullable: false),
                        ObstetricFactors_PPH_riskName = c.String(),
                        ObstetricFactors_PPH_riskValue = c.Int(nullable: false),
                        ObstetricFactors_PPH_riskSelected = c.Boolean(nullable: false),
                        ObstetricFactors_pretermBirth_riskName = c.String(),
                        ObstetricFactors_pretermBirth_riskValue = c.Int(nullable: false),
                        ObstetricFactors_pretermBirth_riskSelected = c.Boolean(nullable: false),
                        ObstetricFactors_stillBirth_riskName = c.String(),
                        ObstetricFactors_stillBirth_riskValue = c.Int(nullable: false),
                        ObstetricFactors_stillBirth_riskSelected = c.Boolean(nullable: false),
                        TransientFactors_surgicalProcedure_riskName = c.String(),
                        TransientFactors_surgicalProcedure_riskValue = c.Int(nullable: false),
                        TransientFactors_surgicalProcedure_riskSelected = c.Boolean(nullable: false),
                        TransientFactors_Hyperemesis_riskName = c.String(),
                        TransientFactors_Hyperemesis_riskValue = c.Int(nullable: false),
                        TransientFactors_Hyperemesis_riskSelected = c.Boolean(nullable: false),
                        TransientFactors_OHSS_riskName = c.String(),
                        TransientFactors_OHSS_riskValue = c.Int(nullable: false),
                        TransientFactors_OHSS_riskSelected = c.Boolean(nullable: false),
                        TransientFactors_currentSystemicInfection_riskName = c.String(),
                        TransientFactors_currentSystemicInfection_riskValue = c.Int(nullable: false),
                        TransientFactors_currentSystemicInfection_riskSelected = c.Boolean(nullable: false),
                        TransientFactors_immobilityOrDehydration_riskName = c.String(),
                        TransientFactors_immobilityOrDehydration_riskValue = c.Int(nullable: false),
                        TransientFactors_immobilityOrDehydration_riskSelected = c.Boolean(nullable: false),
                        riskAssessmentScore = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.patientId);
            
            CreateTable(
                "dbo.AspNetRoles",
                c => new
                    {
                        Id = c.String(nullable: false, maxLength: 128),
                        Name = c.String(nullable: false, maxLength: 256),
                    })
                .PrimaryKey(t => t.Id)
                .Index(t => t.Name, unique: true, name: "RoleNameIndex");
            
            CreateTable(
                "dbo.AspNetUserRoles",
                c => new
                    {
                        UserId = c.String(nullable: false, maxLength: 128),
                        RoleId = c.String(nullable: false, maxLength: 128),
                    })
                .PrimaryKey(t => new { t.UserId, t.RoleId })
                .ForeignKey("dbo.AspNetRoles", t => t.RoleId, cascadeDelete: true)
                .ForeignKey("dbo.AspNetUsers", t => t.UserId, cascadeDelete: true)
                .Index(t => t.UserId)
                .Index(t => t.RoleId);
            
            CreateTable(
                "dbo.AspNetUsers",
                c => new
                    {
                        Id = c.String(nullable: false, maxLength: 128),
                        firstName = c.String(),
                        secondName = c.String(),
                        lastName = c.String(),
                        Email = c.String(maxLength: 256),
                        EmailConfirmed = c.Boolean(nullable: false),
                        PasswordHash = c.String(),
                        SecurityStamp = c.String(),
                        PhoneNumber = c.String(),
                        PhoneNumberConfirmed = c.Boolean(nullable: false),
                        TwoFactorEnabled = c.Boolean(nullable: false),
                        LockoutEndDateUtc = c.DateTime(),
                        LockoutEnabled = c.Boolean(nullable: false),
                        AccessFailedCount = c.Int(nullable: false),
                        UserName = c.String(nullable: false, maxLength: 256),
                        ApplicationUser_Id = c.String(maxLength: 128),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.AspNetUsers", t => t.ApplicationUser_Id)
                .Index(t => t.UserName, unique: true, name: "UserNameIndex")
                .Index(t => t.ApplicationUser_Id);
            
            CreateTable(
                "dbo.AspNetUserClaims",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        UserId = c.String(nullable: false, maxLength: 128),
                        ClaimType = c.String(),
                        ClaimValue = c.String(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.AspNetUsers", t => t.UserId, cascadeDelete: true)
                .Index(t => t.UserId);
            
            CreateTable(
                "dbo.AspNetUserLogins",
                c => new
                    {
                        LoginProvider = c.String(nullable: false, maxLength: 128),
                        ProviderKey = c.String(nullable: false, maxLength: 128),
                        UserId = c.String(nullable: false, maxLength: 128),
                    })
                .PrimaryKey(t => new { t.LoginProvider, t.ProviderKey, t.UserId })
                .ForeignKey("dbo.AspNetUsers", t => t.UserId, cascadeDelete: true)
                .Index(t => t.UserId);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.AspNetUserRoles", "UserId", "dbo.AspNetUsers");
            DropForeignKey("dbo.AspNetUserLogins", "UserId", "dbo.AspNetUsers");
            DropForeignKey("dbo.AspNetUserClaims", "UserId", "dbo.AspNetUsers");
            DropForeignKey("dbo.AspNetUsers", "ApplicationUser_Id", "dbo.AspNetUsers");
            DropForeignKey("dbo.AspNetUserRoles", "RoleId", "dbo.AspNetRoles");
            DropIndex("dbo.AspNetUserLogins", new[] { "UserId" });
            DropIndex("dbo.AspNetUserClaims", new[] { "UserId" });
            DropIndex("dbo.AspNetUsers", new[] { "ApplicationUser_Id" });
            DropIndex("dbo.AspNetUsers", "UserNameIndex");
            DropIndex("dbo.AspNetUserRoles", new[] { "RoleId" });
            DropIndex("dbo.AspNetUserRoles", new[] { "UserId" });
            DropIndex("dbo.AspNetRoles", "RoleNameIndex");
            DropTable("dbo.AspNetUserLogins");
            DropTable("dbo.AspNetUserClaims");
            DropTable("dbo.AspNetUsers");
            DropTable("dbo.AspNetUserRoles");
            DropTable("dbo.AspNetRoles");
            DropTable("dbo.Patients");
        }
    }
}
