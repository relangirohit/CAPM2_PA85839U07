namespace scp.cloud;

using
{
    sap.common.CodeList,
    cuid,
    managed
}
from '@sap/cds/common';

entity RequestUI : cuid, managed
{
    key RequestID : String(10)
        @title : 'Request ID';
    RequestType : Association to RequestTypes
        @title : 'Request Type';
    RequesterEmail : String(40)
        @title : 'Requester Email';
    FirstName : String(40)
        @title : 'First Name';
    LastName : String(40)
        @title : 'Last Name';
    GlobalRegion : Association to GlobalRegions
        @title : 'Global Region';
    BusinessUnit : String(20)
        @title : 'Business Unit';
    Function : String(20)
        @title : 'Function';
    Country : Association to Countries
        @title : 'Country';
    ExpectedDueDate : Date
        @title : 'Expected Due Date';
    Priority : Association to Priorities
        @title : 'Priotrity';
    CreatedOnDate : Date
        @title : 'Created On Date';
    Comments : String(250)
        @title : 'Comments';
}

entity RequestTypes : CodeList
{
    key code : String(40);
}

entity GlobalRegions : CodeList
{
    key code : String(40);
}

entity Priorities : CodeList
{
    key code : String(40);
}

entity Countries : CodeList
{
    key code : String(40);
}
