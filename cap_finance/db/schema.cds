namespace cap.schema;

//  usign gera o ID automatico e managed cria os campos de auditoria.
using {
    managed,
    cuid

} from '@sap/cds/common';

// todas tabelas começa com o entity
entity Wallets : cuid, managed {
    @title: 'Nome'
    name      : String(50);
    createdAt : DateTime;

}

entity Categories : cuid, managed {
    @title: 'Nome'
    name  : String(50);

    @title: 'Ícone'
    icon  : String(50);

    @title: 'Cor'
    color : String(10);

}

entity Movements : cuid, managed {
    @title: 'Titulo'
    title     : String(50);

    @title: 'Valor'
    amount    : Decimal(15, 2);

    @title: 'Data'
    date      : Date;

    @title: 'Tipo'
    type      : Association to MovementType;

    @title: 'Carteira'
    wallet    : Association to Wallets;

    @title: 'Categoria'
    category  : Association to Categories;

    @title: 'Nota'
    note      : String(50);
    createdAt : DateTime;

}

entity MovementType : cuid, managed {
    description : String(50);
    name        : String(50);

}