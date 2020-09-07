// The table extension object allows you to add additional fields or to change some properties on a table provided by the Dynamics 365 Business Central service.

tableextension 50102 CustomerTableExt extends Customer
{
    fields
    {
        field(50100; "Reward ID"; Code[30])
        {
            // Set links to the "Reward ID" from the Reward table.
            TableRelation = Reward."Reward ID";

            // Set whether to validate a table relationship.
            ValidateTableRelation = true;

            // "OnValidate" trigger executes when data is entered in a field.
            trigger OnValidate();
            begin

                // If the "Reward ID" changed and the new record is blocked, an error is thrown. 
                if (Rec."Reward ID" <> xRec."Reward ID") and
                    (Rec.Blocked <> Blocked::" ") then begin
                    Error('Cannot update the rewards status of a blocked customer.')
                end;
            end;
        }

        field(10001; RewardPoints; Integer)
        {
            MinValue = 0;
        }
    }
}