pageextension 50130 CustomerEmail extends "Customer Card"
{
    layout
    {
        addafter("E-Mail")
        {
            field("E-Mail_trabajo"; Rec."E-Mail_trabajo")
            {
                ApplicationArea = All;
                Caption = 'Agregue su correo de trabajo';
                Description = 'Si desea recibir ...';
                ToolTip = 'Introduzca el correo de trabajo ';
                Editable = true;
            }
        }
        // Add changes to page layout here
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}