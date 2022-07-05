page 50102 Vehiculo
{
    PageType = Card;
    //ApplicationArea = All;Porque no quiero que aparezca
    UsageCategory = Administration;
    SourceTable = Vehiculo;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(codigo; Rec.codigo)
                {
                    ApplicationArea = All;
                    Caption = 'Código';
                }

                field(codigoMarca; Rec.codigoMarca)
                {
                    ApplicationArea = All;
                    Caption = 'Código Marca';
                }
                field(tipo; Rec.tipo)
                {
                    ApplicationArea = All;
                    Caption = 'Código';
                }
                field(cantidadDeRuedas; Rec.cantidadDeRuedas)
                {
                    ApplicationArea = All;
                    Caption = 'Cantidad de ruedas';
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

    var
        myInt: Integer;
}