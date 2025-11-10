using cap.schema from '../db/schema';


service movementType {
    @UI: {
        SelectionFields : [description],
        LineItem        : [{
            Value: description,
            Label: 'Descrição'
        }, ],
        Facets          : [{
            $Type : 'UI.ReferenceFacet',
            Label : 'Detalhes da Cartegoria',
            Target: '@UI.FieldGroup#Main'
        }],
        FieldGroup #Main: {Data: [{
            Value: description,
            Label: 'Descrição'
        }]}

    }
    entity MovementType @(Capabilities: {
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

    }) as projection on schema.MovementType;

    annotate MovementType with @odata.draft.enabled;

}