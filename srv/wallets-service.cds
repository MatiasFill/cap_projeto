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
        },

    }) as
        projection on schema.Movements {
            ID,
            title,
            amount,
            @Common.ValueList      : {
                Label         : 'Tipo de Movimento',
                CollectionPath: 'MovementTypes',
                Parameters    : [
                    {
                        $Type            : 'Common.ValueListParameterInOut',
                        LocalDataProperty: 'type_ID',
                        ValueListProperty: 'ID'
                    },
                    {
                        $Type            : 'Common.ValueListParameterDisplayOnly',
                        ValueListProperty: 'description'
                    }
                ]
            }
            @Common.TextArrangement: #TextOnly
            @Common.Text           : type_name
            type,
            type.description                      as type_name,
            @Common.ValueList: {
                Label         : 'Carteira',
                CollectionPath: 'wallets',
                Parameters    : [
                    {
                        $Type            : 'Common.ValueListParameterInOut',
                        LocalDataProperty: 'wallet_ID',
                        ValueListProperty: 'ID'
                    },
                    {
                        $Type            : 'Common.ValueListParameterDisplayOnly',
                        ValueListProperty: 'name'
                    }
                ]
            }
            @Common.TextArrangement: #TextOnly 
            @Common.Text           : wallet_name
            wallet,
            wallet.name                           as wallet_name,
            category,
            category.icon || ' ' || category.name as category_name : String(50),
        };

    annotate wallets with @odata.draft.enabled;

}
