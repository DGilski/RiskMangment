using RiskService as service from '../../srv/risk-service';
annotate service.Risks with @(
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
                Label : 'owner',
                Value : owner,
            },
            {
                $Type : 'UI.DataField',
                Label : 'prio_code',
                Value : prio_code,
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
                Label : 'PrioCriticality',
                Value : PrioCriticality,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>RiskOverwiew}',
            ID : 'RiskOverwiew',
            Target : '@UI.FieldGroup#RiskOverwiew',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>RiskDeatils}',
            ID : 'RiskDeatils',
            Target : '@UI.FieldGroup#RiskDeatils',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>MitifationDetails}',
            ID : 'MitifationDetails',
            Target : '@UI.FieldGroup#MitifationDetails',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Title}',
            Value : title,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Owner}',
            Value : owner,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Priority}',
            Value : prio_code,
            Criticality : PrioCriticality,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Impact}',
            Value : impact,
            Criticality : criticality,
        },
        {
            $Type : 'UI.DataField',
            Value : miti.descr,
            Label : '{i18n>Description}',
        },
        {
            $Type : 'UI.DataFieldForAnnotation',
            Target : '@Communication.Contact#contact',
            Label : '{i18n>BuisnesPartner}',
        },
    ],
    UI.SelectionFields : [
        prio_code,
    ],
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : title,
        },
        TypeName : '',
        TypeNamePlural : '',
        Description : {
            $Type : 'UI.DataField',
            Value : descr,
        },
        TypeImageUrl : 'sap-icon://alert',
    },
    UI.FieldGroup #RiskOverwiew : {
        $Type : 'UI.FieldGroupType',
        Data : [
        ],
    },
    UI.FieldGroup #RiskDeatils : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : title,
            },
            {
                $Type : 'UI.DataField',
                Value : owner,
            },
            {
                $Type : 'UI.DataField',
                Value : descr,
                Label : '{i18n>Description}',
            },
            {
                $Type : 'UI.DataField',
                Value : prio_code,
            },
            {
                $Type : 'UI.DataField',
                Value : impact,
                Label : '{i18n>Impact}',
            },
            {
                $Type : 'UI.DataFieldForAnnotation',
                Target : '@Communication.Contact#contact1',
                Label : '{i18n>BuisnesPartner}',
            },
        ],
    },
    UI.FieldGroup #MitifationDetails : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : miti_ID,
                Label : '{i18n>Mitigation}',
            },
            {
                $Type : 'UI.DataField',
                Value : miti.owner,
                Label : '{i18n>Owner}',
            },
            {
                $Type : 'UI.DataField',
                Value : miti.timeline,
                Label : '{i18n>Timeline}',
            },
        ],
    },
    Communication.Contact #contact : {
        $Type : 'Communication.ContactType',
        fn : bp_BusinessPartner,
    },
    Communication.Contact #contact1 : {
        $Type : 'Communication.ContactType',
        fn : bp_BusinessPartner,
    },
);

annotate service.Risks with {
    miti @(
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Mitigations',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : miti_ID,
                    ValueListProperty : 'ID',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'descr',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'owner',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'timeline',
                },
            ],
            Label : 'Mitigation',
        },
        Common.Text : descr,
        Common.ValueListWithFixedValues : true,
    )
};

annotate service.Risks with {
    prio @Common.Label : '{i18n>Priority}'
};

annotate service.Risks with {
    title @Common.Label : '{i18n>Title}'
};

annotate service.Risks with {
    owner @Common.Label : '{i18n>Owner}'
};

annotate service.Mitigations with {
    ID @Common.Text : descr
};

