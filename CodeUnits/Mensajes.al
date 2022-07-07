codeunit 50102 Mensajes
{
    trigger OnRun()
    begin

    end;


    local procedure Mensajes_(accion: Text; tipo: Text) Mensaje: Text
    var
        myInt: Integer;
    begin

        if (Format(accion) = 'OnInsert') then Mensaje := '***Nuevo Vehiculo Creado';
        if (Format(accion) = 'OnModify') then Mensaje := '***El vehiculo fue modificado';
        if (Format(accion) = 'OnDelete') and (tipo <> '') then Mensaje := '***No se puede eliminar estre registro, tipo debe ser vacio';

    end;

    procedure Mensajes(accion: Text; tipo: Text) Mensaje: Text
    var
        myInt: Integer;
    begin
        Mensaje := Mensajes_(accion, tipo);
    end;



}