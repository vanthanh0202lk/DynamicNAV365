report 50130 "Customer List"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    CaptionML = ENU = 'Customer List Report';
    RDLCLayout = 'ReportLayouts/CustomerListReportRdl.rdl';
    // WordLayout='ReportLayouts/MyReportWord.docx';
    // DefaultLayout=Word;

    dataset
    {
        dataitem(DataItemName; Customer)
        {
            RequestFilterFields = "No.", "Search Name", "Customer Posting Group";
            column(CustomerNo; "No.")
            {
            }
            column(CustomerName; Name)
            {
            }
            column(CustomerSearchName; "Search Name")
            {
            }
            column(CustomerName2; "Name 2")
            {
            }
            column(CustomerAddress; Address)
            {
            }
            column(CustomerAddres2; "Address 2")
            {
            }
            column(CustomerCity; City)
            {
            }
            column(CustomerContact; Contact)
            {
            }
            column(CustomerPhoneNo; "Phone No.")
            {
            }
            column(CustomerTelexNo; "Telex No.")
            {
            }
            column(CustomerDocSendingProfile; "Document Sending Profile")
            {
            }
            column(HideDetails; HideDetails)
            {
            }
        }
    }


    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                    field(HideDetails; HideDetails)
                    {
                    }
                }
            }
        }
        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                }
            }
        }
    }
    var
        HideDetails: Boolean;
}