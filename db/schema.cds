namespace RiskManagement;

using { BusinessPartnerA2X } from '../srv/external/BusinessPartnerA2X.cds';

entity Risk
{
    key ID : UUID;
    title : String(100);
    prio : String;
    descr : String(100);
    impact : Integer;
    criticality : Integer;
    Supplier : Association to one BusinessPartnerA2X.A_BusinessPartner;
    miti : Association to one Mitigations;
}

entity Mitigations
{
    key ID : UUID;
    createdAt : String(100);
    createdBy : String(100);
    description : String(100);
    owner : String(100);
    timeline : String(100);
    risk1 : Association to one Risk on risk1.miti = $self;
    risk : Association to one Risk;
}
