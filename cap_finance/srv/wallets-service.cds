using cap.schema from '../db/schema';

service wallets {
    @UI: {
        SelectionFields  : [name],
        LineItem         : [{
            Value: name,
            Label: 'Nome'
        }],
        Facets           : [{
            $Type : 'UI.ReferenceFacet',
            Label : 'Detalhes da Carteira',
            Target: '@UI.FieldGroup#Main'
        }],
        FieldGroups #Main: {Data: [{
            Value: name,
            Label: 'Nome'
        }]}
    }

    entity Wallets @(Capabilities: {
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
        }
    }) as
        projection on schema.wallets {
            ID,
            name,
            createdAt
        };

    annotate Wallets with @odata.draft.enabled;
}
