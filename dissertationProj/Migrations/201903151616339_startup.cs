namespace dissertationProj.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class startup : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Patients",
                c => new
                    {
                        patientId = c.Int(nullable: false, identity: true),
                        Id = c.String(maxLength: 128),
                        firstName = c.String(),
                        middleName = c.String(),
                        lastName = c.String(),
                        gender = c.String(),
                        birthdate = c.DateTime(nullable: false),
                        weight = c.Decimal(nullable: false, precision: 18, scale: 2),
                        height = c.Decimal(nullable: false, precision: 18, scale: 2),
                        parity = c.Int(nullable: false),
                        civilStatus = c.String(),
                        previousVTE = c.Boolean(nullable: false),
                        surgeryVTE = c.Boolean(nullable: false),
                        highRiskThrombophilia = c.Boolean(nullable: false),
                        cancer = c.Boolean(nullable: false),
                        heartFailure = c.Boolean(nullable: false),
                        activeSystemicLupusErythematosus = c.Boolean(nullable: false),
                        inflammatoryPolyarthropathy = c.Boolean(nullable: false),
                        inflammatoryBowelDisease = c.Boolean(nullable: false),
                        nephroticSyndrome = c.Boolean(nullable: false),
                        typeIDiabetesMellitusWithNephropathy = c.Boolean(nullable: false),
                        sickleCellDisease = c.Boolean(nullable: false),
                        currentIntravenousDrugUser = c.Boolean(nullable: false),
                        familyHistoryVTEFirstDegreeRelative = c.Boolean(nullable: false),
                        lowRiskThrombophilia = c.Boolean(nullable: false),
                        smoker = c.Boolean(nullable: false),
                        grossVaricoseVeins = c.Boolean(nullable: false),
                        obesity = c.String(),
                        preEclampsiaInCurrentPregnancy = c.Boolean(nullable: false),
                        ARTorIVF = c.Boolean(nullable: false),
                        multiplePregnancy = c.Boolean(nullable: false),
                        caesareanSectionInLabour = c.Boolean(nullable: false),
                        electiveCaesareanSection = c.Boolean(nullable: false),
                        operativeDelivery = c.Boolean(nullable: false),
                        prolongedLabour = c.Boolean(nullable: false),
                        PPH = c.Boolean(nullable: false),
                        pretermBirth = c.Boolean(nullable: false),
                        stillBirth = c.Boolean(nullable: false),
                        surgicalProcedure = c.Boolean(nullable: false),
                        Hyperemesis = c.Boolean(nullable: false),
                        OHSS = c.Boolean(nullable: false),
                        currentSystemicInfection = c.Boolean(nullable: false),
                        immobilityOrDehydration = c.Boolean(nullable: false),
                    })
                .PrimaryKey(t => t.patientId)
                .ForeignKey("dbo.AspNetUsers", t => t.Id)
                .Index(t => t.Id);
            
            CreateTable(
                "dbo.AspNetUsers",
                c => new
                    {
                        Id = c.String(nullable: false, maxLength: 128),
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
                    })
                .PrimaryKey(t => t.Id)
                .Index(t => t.UserName, unique: true, name: "UserNameIndex");
            
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
            
            CreateTable(
                "dbo.AspNetUserRoles",
                c => new
                    {
                        UserId = c.String(nullable: false, maxLength: 128),
                        RoleId = c.String(nullable: false, maxLength: 128),
                    })
                .PrimaryKey(t => new { t.UserId, t.RoleId })
                .ForeignKey("dbo.AspNetUsers", t => t.UserId, cascadeDelete: true)
                .ForeignKey("dbo.AspNetRoles", t => t.RoleId, cascadeDelete: true)
                .Index(t => t.UserId)
                .Index(t => t.RoleId);
            
            CreateTable(
                "dbo.AspNetRoles",
                c => new
                    {
                        Id = c.String(nullable: false, maxLength: 128),
                        Name = c.String(nullable: false, maxLength: 256),
                    })
                .PrimaryKey(t => t.Id)
                .Index(t => t.Name, unique: true, name: "RoleNameIndex");
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.AspNetUserRoles", "RoleId", "dbo.AspNetRoles");
            DropForeignKey("dbo.Patients", "Id", "dbo.AspNetUsers");
            DropForeignKey("dbo.AspNetUserRoles", "UserId", "dbo.AspNetUsers");
            DropForeignKey("dbo.AspNetUserLogins", "UserId", "dbo.AspNetUsers");
            DropForeignKey("dbo.AspNetUserClaims", "UserId", "dbo.AspNetUsers");
            DropIndex("dbo.AspNetRoles", "RoleNameIndex");
            DropIndex("dbo.AspNetUserRoles", new[] { "RoleId" });
            DropIndex("dbo.AspNetUserRoles", new[] { "UserId" });
            DropIndex("dbo.AspNetUserLogins", new[] { "UserId" });
            DropIndex("dbo.AspNetUserClaims", new[] { "UserId" });
            DropIndex("dbo.AspNetUsers", "UserNameIndex");
            DropIndex("dbo.Patients", new[] { "Id" });
            DropTable("dbo.AspNetRoles");
            DropTable("dbo.AspNetUserRoles");
            DropTable("dbo.AspNetUserLogins");
            DropTable("dbo.AspNetUserClaims");
            DropTable("dbo.AspNetUsers");
            DropTable("dbo.Patients");
        }
    }
}
