codeunit 50121 "Customer Rewards Install Logic"
{
    // Customer Rewards Install Logic 
    Subtype = Install;

    trigger OnInstallAppPerCompany();
    begin
        SetDefaultCustomerRewardsExtMgtCodeunit;
    end;

    procedure SetDefaultCustomerRewardsExtMgtCodeunit();
    var
        CustomerRewardsExtMgtSetup: Record "Customer Rewards Mgt. Setup";
    begin
        CustomerRewardsExtMgtSetup.DeleteAll;
        CustomerRewardsExtMgtSetup.Init;
        // Default Customer Rewards Ext. Mgt codeunit to use for handling events  
        CustomerRewardsExtMgtSetup."Cus Rewards Ext. Mgt. CU ID" := Codeunit::"Customer Rewards Ext. Mgt.";
        CustomerRewardsExtMgtSetup.Insert;
    end;
}