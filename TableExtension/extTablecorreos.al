tableextension 50130 correos extends Customer
{
    fields
    {
        field(50000; "E-Mail_trabajo"; Text[80])
        {
            DataClassification = ToBeClassified;
            Caption = 'E-Mail-trabajo';
        }
        field(50001; "E-Mail_Alternativo"; Text[80])
        {
            DataClassification = ToBeClassified;
            Caption = 'E-Mail_Alternativo';
        }
        field(50002; "E-Mail2"; Text[80])
        {
            DataClassification = ToBeClassified;
            Caption = 'E-Mail2';
        }
        field(50003; "E-Mail3"; Text[80])
        {
            DataClassification = ToBeClassified;
            Caption = 'E-Mail3';
        }

    }


}