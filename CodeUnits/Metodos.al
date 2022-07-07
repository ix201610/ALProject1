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
        //Resultado := numero1 + numero2;
        Message('Estoy enlocal:');
    end;

    procedure sumaGlobal(numero1: Integer; numero2: Integer) Resultado: Integer
    var

    begin
        Resultado := sumaLocal(numero1, numero2);
    end;

    local Procedure sumaLocal(numero1: integer; numero2: integer) Resultado: Integer
    begin
        Resultado := numero1 + numero2;
        //Message(Format(Resultado));
    end;

    local procedure restaLocal(numero1: Integer; numero2: Integer) Resultado: Integer
    var
        ResultadoResta: Integer;
    begin
        ResultadoResta := numero2 - numero1;
        Resultado := ResultadoResta;
    end;

    procedure restaGlobal(numero1: Integer; numero2: Integer) Resultado: Integer
    var
        ResultadoResta: Integer;
    begin
        ResultadoResta := restaLocal(numero1, numero2);
        Resultado := ResultadoResta;
    end;

    procedure multiplicacionGlobal(txtNumero1: Text[50]; txtNumero2: Text[50]) Resultado: Integer
    var
        numero1: Integer;
        numero2: Integer;

        ResultadoMultiplicacion: Integer;

    begin
        Evaluate(numero1, txtNumero1);
        Evaluate(numero2, txtNumero2);
        ResultadoMultiplicacion := multiplicacionLocal(numero1, numero2);
        Resultado := ResultadoMultiplicacion;
    end;

    local procedure multiplicacionLocal(numero1: Integer; numero2: Integer) Resultado: Integer
    var
        ResultadoMultiplicacion: Integer;
    begin
        ResultadoMultiplicacion := numero1 * numero2;
        Resultado := ResultadoMultiplicacion;
    end;

    local procedure divisionLocal(txtNumero1: Text; txtNumero2: Text) Resultado: Integer
    var
        ResultadoDivision: Integer;
        numero1: Integer;
        numero2: Integer;
    begin
        Evaluate(numero1, txtNumero1);
        Evaluate(numero2, txtNumero2);
        ResultadoDivision := numero1 / numero2;
        Resultado := ResultadoDivision;
    end;

    procedure divisionGlobal(txtNumero1: Text; txtNumero2: Text) txtResultado: Text
    var
        ResultadoInt: Integer;
    begin
        ResultadoInt := divisionLocal(txtNumero1, txtNumero2);
        txtResultado := Format(ResultadoInt);
    end;
}