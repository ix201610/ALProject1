codeunit 50101 Reglas
{
    trigger OnRun()
    begin

    end;

    var
        myInt: Integer;

    local procedure CantidadDeRuedasLocal_(tipo: Text) cantidadDeRuedas: Integer
    begin
        if tipo = 'Auto' then
            cantidadDeRuedas := 4
        else
            if tipo = 'Moto' then
                cantidadDeRuedas := 2;
    end;

    procedure CantidadDeRuedas(tipo: Text) cantidadDeRuedas: Integer
    begin
        cantidadDeRuedas := CantidadDeRuedasLocal_(tipo);
    end;
}