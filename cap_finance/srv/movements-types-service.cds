using cap.schema from '../db/schema';


service movementTypes {
    @UI: {
        SelectionFields  : [description],
        LineItem         : [{
            Value: description,
            Label: 'Descrição'
        }, ],
        Facets           : [{
            $Type : 'UI.ReferenceFacet',
            Label : 'Detalhes da Cartegoria',
            Target: '@UI.FieldGroup#Main'
        }],
        FieldGroups #Main: {Data: [{
            Value: description,
            Label: 'Descrição'
        }, ]}

    }
    entity MovementTypes @(Capabilities: {
        InsertRestrictions: {
            $Type: 'Capabilities.InsertRestrictionsType',
            Insertable
        },

        UpdateRestrictions: {
            $Type: 'Capabilities.UpdateRestrictionsType',
            Updatable
        },
        DeleteRestrictions: {
            $Type: 'Capabilities.DeleteRestrictionsType',
            Deletable
        },

    }) as projection on schema.MovementTypes;

    annotate MovementTypes with @odata.draft.enabled;

}
