/// <summary>
/// Table Marca (ID 50100).
/// </summary>
table 50100 Marca
{
    DataClassification = ToBeClassified;
    DrillDownPageId = Marca;
    fields
    {
        field(1; Codigo; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Código';

        }
        field(2; Descripcion; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Descripción';
        }
    }

    keys
    {
        key(Key1; Codigo)
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}