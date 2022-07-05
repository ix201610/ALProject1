page 50100 Marca
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Marca;


    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Codigo; Rec.Codigo)
                {
                    ApplicationArea = All;
                    //caption = 'Código';
                }
                field(Descripcion; Rec.Descripcion)
                {
                    ApplicationArea = All;
                    //caption = 'Desccripción';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

}