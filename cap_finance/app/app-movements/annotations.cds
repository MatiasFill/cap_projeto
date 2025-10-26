using movements as service from '../../srv/movements-service';
annotate service.Movements with {
    wallet @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Wallets',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : wallet_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'createdAt',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'name',
            }
        ],
    }
};

