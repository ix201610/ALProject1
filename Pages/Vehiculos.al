page 50101 Vehiculos
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Vehiculo;
    CardPageId = Vehiculo;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(codigo; Rec.codigo)
                {
                    ApplicationArea = All;
                    caption = 'Código';

                }
                field(codigoMarca; Rec.codigoMarca)
                {
                    ApplicationArea = All;
                    caption = 'Código Marca';

                }
                field(tipo; Rec.tipo)
                {
                    ApplicationArea = All;
                    caption = 'Tipo';

                }
                field(cantidadDeRuedas; Rec.cantidadDeRuedas)
                {
                    ApplicationArea = All;
                    caption = 'Cantidad de ruedas';

                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}