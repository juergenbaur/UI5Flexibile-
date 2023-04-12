using TravelService as service from '../../srv/travel-service';

annotate service.Travel with @(
    UI.SelectionFields : [
        to_Agency.AgencyID,
        to_Customer.CustomerID,
        TravelStatus.code,
    ],
    UI.LineItem: [
     {
        $Type : 'UI.DataField',
        Value : TravelID,
        Label : 'TravelID'
     },
     {
        $Type : 'UI.DataField',
        Value : TravelStatus_code,
        Criticalitiy  : TravelStatus.Criticalitiy,
                Label : 'Status'
     },
          {
        $Type : 'UI.DataField',
        Value : BeginDate,
                Label : 'Begin'
     },
          {
        $Type : 'UI.DataField',
        Value : EndDate,
                Label : 'End'
     },
          {
        $Type : 'UI.DataField',
        Value : to_Agency_AgencyID,
                Label : 'Agency ID'
     },
               {
        $Type : 'UI.DataField',
        Value : to_Customer_CustomerID,
                Label : 'Customer ID'
     },
               {
        $Type : 'UI.DataField',
        Value : TotalPrice,
                Label : 'Price'
     },
                    {
        $Type : 'UI.DataFieldForAction',
        Label : '{i18n>AcceptTravel}',
        Action : 'TravelService.AcceptTravel',
     },
                    {
        $Type : 'UI.DataFieldForAction',
        Label : '{i18n>RejectTravel}',
        Action : 'TravelService.RejectTravel',
     },
    ],
);
