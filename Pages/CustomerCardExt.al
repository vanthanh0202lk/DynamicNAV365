pageextension 50115 CustomerCardExt extends "Customer Card"
{

    layout
    {

        // The "addlast" construct adds the field control as the last control in the General 
        // group.
        addlast(General)
        {
            field("Reward ID"; "Reward ID")
            {
                ApplicationArea = All;

                // Lookup property is used to provide a lookup window for 
                // a text box. It is set to true, because a lookup for 
                // the field is needed.
                Lookup = true;
            }
        }


        modify("No.")
        {
            Caption = 'New No.';
        }


        addafter(Name)
        {
            field(RewardLevel; RewardLevel)
            {
                ApplicationArea = All;
                Caption = 'Reward Level';
                Description = 'Reward level of the customer.';
                Editable = false;
            }

            field(RewardPoints; RewardPoints)
            {
                ApplicationArea = All;
                Caption = 'Reward Points';
                Description = 'Reward points accrued by customer';
                Editable = false;
            }
        }
    }

    actions
    {

        // The "addfirst" construct will add the action as the first action
        // in the Navigation group.
        addfirst(Navigation)
        {
            action("Rewards")
            {
                ApplicationArea = All;

                // "RunObject" sets the "Reward List" page as the object 
                // that will run when the action is activated.
                RunObject = page "Reward List";
            }
        }

        addlast("&Customer")
        {
            action("Show Name")
            {
                RunObject = codeunit ShowCustomerName;
                RunPageOnRec = True;
                Image = Alerts;
                PromotedCategory = Category8;
                Promoted = true;
                ApplicationArea = All;
            }
        }
    }

    trigger OnAfterGetRecord();
    var
        CustomerRewardsMgtExt: Codeunit "Customer Rewards Ext. Mgt.";
    begin
        // Get the reward level associated with reward points 
        RewardLevel := CustomerRewardsMgtExt.GetRewardLevel(RewardPoints);
    end;

    var
        RewardLevel: Text;
}



