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
            //action(ActionName)
            action(Test)
            {

                ApplicationArea = All;
                //Caption = 'Saludo';
                Caption = 'Test';

                trigger OnAction()
                begin
                    codeunitPrueba.MyProcedureGlobal();
                    //codeunitPrueba.sumaGlobal();
                end;
            }
            action(Suma)
            {

                ApplicationArea = All;
                Caption = 'Suma';

                trigger OnAction()
                var
                    numero1: Integer;
                    numero2: Integer;
                    Resultado: Integer;
                begin

                    //Message(Format(codeunitPrueba.sumaGlobal(1, 2)));
                    numero1 := 1;
                    numero2 := 2;
                    Resultado := codeunitPrueba.sumaGlobal(numero1, numero2);
                    Message('Resultado suma de ' + format(numero1) + '+' + format(numero2) + ':' + Format(Resultado));
                end;
            }
            action(Resta)
            {

                ApplicationArea = All;
                Caption = 'Resta';

                trigger OnAction()
                var
                    Resultado: Integer;
                begin
                    numero1 := 100;
                    numero2 := 77;
                    Resultado := codeunitPrueba.restaGlobal(numero1, numero2);
                    Message('Resultado resta de ' + format(numero1) + '-' + format(numero2) + ':' + Format(Resultado));

                end;
            }

            action(Multiplicacion)
            {

                ApplicationArea = All;
                Caption = 'Multiplicacion';

                trigger OnAction()
                var
                    Resultado: Integer;
                begin
                    txtNumero1 := '25';
                    txtNumero2 := '5';
                    Resultado := codeunitPrueba.multiplicacionGlobal(txtNumero1, txtNumero2);
                    Message('Resultado multi de ' + txtNumero1 + '*' + txtNumero2 + ':' + Format(Resultado));

                end;
            }
            action(Division)
            {
                ApplicationArea = All;
                Caption = 'Division';

                trigger OnAction()
                var
                    Resultado: Text;
                begin
                    txtNumero1 := '25';
                    txtNumero2 := '5';
                    Resultado := codeunitPrueba.divisionGlobal(txtNumero1, txtNumero2);
                    Message('Resultado divi de ' + txtNumero1 + '/' + txtNumero2 + ':' + Resultado);


                end;
            }
        }
    }
    var
        numero1: Integer;
        numero2: Integer;

        txtNumero1: Text;
        txtNumero2: Text;
        codeunitPrueba: Codeunit TestCodeunit;
}