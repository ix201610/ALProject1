report 50101 Vehiculos
{
    Caption = 'Reporte Vehiculos';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = 'Vehiculo_Repport.rdl';

    dataset
    {

        dataitem(Vehiculo; Vehiculo)
        {
            column(codigo; Codigo)
            {

            }
            column(codigoMarca; CodigoMarca)
            {

            }
            column(tipo; tipo)
            {

            }
            column(cantidadDeRuedas; cantidadDeRuedas)
            {

            }
        }
    }


}