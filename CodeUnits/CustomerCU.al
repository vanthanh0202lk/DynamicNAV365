codeunit 50123 ShowCustomerName
{
    TableNo = Customer;

    trigger OnRun();
    begin
        Message('%1%2', 'Hello: ', Rec.Name);
    end;
}