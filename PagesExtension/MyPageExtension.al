pageextension 50110 MyPageExtension extends "Customer List"
{
    trigger OnOpenPage()
    begin
        Report.Run(Report::LAB_CustomerList);
    end;
}