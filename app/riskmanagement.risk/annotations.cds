using RiskManagementService as service from '../../srv/service';
annotate service.Risk with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'title',
                Value : title,
            },
            {
                $Type : 'UI.DataField',
                Label : 'prio',
                Value : prio,
            },
            {
                $Type : 'UI.DataField',
                Label : 'descr',
                Value : descr,
            },
            {
                $Type : 'UI.DataField',
                Label : 'impact',
                Value : impact,
            },
            {
                $Type : 'UI.DataField',
                Label : 'criticality',
                Value : criticality,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Supplier_BusinessPartner',
                Value : Supplier_BusinessPartner,
            },
            {
                $Type : 'UI.DataField',
                Value : Supplier.BusinessPartnerFullName,
                Label : 'BusinessPartnerFullName',
            },
            {
                $Type : 'UI.DataField',
                Value : Supplier.BusinessPartnerIsBlocked,
                Label : 'BusinessPartnerIsBlocked',
            },
            {
                $Type : 'UI.DataField',
                Value : miti_ID,
                Label : 'miti_ID',
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'title',
            Value : title,
        },
        {
            $Type : 'UI.DataField',
            Label : 'prio',
            Value : prio,
        },
        {
            $Type : 'UI.DataField',
            Label : 'descr',
            Value : descr,
        },
        {
            $Type : 'UI.DataField',
            Label : 'impact',
            Value : impact,
        },
        {
            $Type : 'UI.DataField',
            Label : 'criticality',
            Value : criticality,
        },
        {
            $Type : 'UI.DataField',
            Value : Supplier_BusinessPartner,
            Label : 'Supplier_BusinessPartner',
        },
    ],
);

annotate service.Risk with {
    mitigations @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Mitigations',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : mitigations_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'createdAt',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'createdBy',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'description',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'owner',
            },
        ],
    }
};

annotate service.Risk with {
    Supplier @(
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'A_BusinessPartner',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : Supplier_BusinessPartner,
                    ValueListProperty : 'BusinessPartner',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'Customer',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'Supplier',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'BusinessPartnerCategory',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'BusinessPartnerFullName',
                },
            ],
        },
        Common.ValueListWithFixedValues : true,
    )
};

