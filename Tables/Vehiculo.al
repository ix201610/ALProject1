/// <summary>
/// Table Vehiculo (ID 50101).
/// </summary>
table 50101 Vehiculo
{
    DataClassification = ToBeClassified;
    DrillDownPageId = Vehiculos;
    LookupPageId = Vehiculos;

    fields
    {
        field(1; codigo; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Código';

        }
        field(2; codigoMarca; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Marca;
            ValidateTableRelation = true;
            Caption = 'Marca';
        }
        field(3; tipo; Option)
        {
            DataClassification = ToBeClassified;
            Caption = 'Tipo';
            OptionMembers = ,Auto,Moto;
            trigger OnValidate()

            begin
                /*
                 if tipo = tipo::Auto then
                     cantidadDeRuedas := 4
                 else
                     if tipo = tipo::Moto then
                         cantidadDeRuedas := 2;
                 */
                cantidadDeRuedas := codeunitReglas.CantidadDeRuedas(Format(tipo::Auto));

            end;
        }
        field(4; cantidadDeRuedas; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Cantidad de Ruedas';
        }
    }

    keys
    {
        key(Key1; codigo)
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    begin

        //Message('Nuevo Vehiculo Creado');
        Message(codeunitMensajes.Mensajes('OnInsert', ''));
    end;

    trigger OnModify()
    begin
        //Message('El vehiculo fue modificado');
        Message(codeunitMensajes.Mensajes('OnModify', ''));
    end;

    trigger OnDelete()
    begin
        /*
        if (tipo = tipo::Auto) or (tipo = tipo::Moto) then
            error('No se puede eliminar estre registro, tipo debe ser vacio');
            */
        Message(codeunitMensajes.Mensajes('OnDelete', Format(tipo)));
    end;

    trigger OnRename()
    begin

    end;

    var
        codeunitReglas: Codeunit Reglas;
        codeunitMensajes: Codeunit Mensajes;

}