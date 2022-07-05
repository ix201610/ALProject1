codeunit 50130 TestCodeunit
{
    trigger OnRun()
    begin

    end;

    procedure MyProcedureGlobal()
    var
        Saludo: Text[50];
    begin
        Message('HolaGlobal');
        MyProcedureLocal(20, 30);
    end;

    local procedure MyProcedureLocal(numero1: integer; numero2: integer)
    var
        Resultado: Integer;
    begin
        Resultado := numero1 + numero2;
        Message('Resultado:' + Format(Resultado));
    end;

}