report 50110 LAB_CustomerList
{
    Caption = 'LAB_CustomerList';
    RDLCLayout = 'Layouts/LAB_CustomerList.rdl';
    WordLayout = 'Layouts/LAB_CustomerList.docx';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    //DefaultLayout = Word ó RDLC;

    PreviewMode = Normal;
    WordMergeDataItem = Customer;


    dataset
    {
        dataitem(Customer; Customer)
        {
            DataItemTableView = sorting(Name);

            column(No; "No.")
            {
                IncludeCaption = true;
            }
            column(Name; Name)
            {
                IncludeCaption = true;
            }
            column(Balance; Balance)
            {
                IncludeCaption = true;
            }
        }
    }


}