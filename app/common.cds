using managent as ma from '../db/schema';

 annotate ma.t_tpc with {
    bukrs     @title : 'Società';
    vkorg     @title : 'Organizzazione commerciale';
    vtweg     @title : 'Canale di distribuzione';
    spart     @title : 'Settore merceologico';
    kschl     @title : 'Tipo di condizione';
    parvw     @title : 'Ruolo partner';
    ztpprv    @title : 'Tipo provvigione';
    znocon    @title : 'Provvigione da non contabilizzare';
    ztesto    @title : 'Descrizione';
    fieldname @title : 'Nome campo';
 } 

 annotate ma.t_tft with {
    vkorg     @title : 'Organizzazione commerciale';
    fkart     @title : 'Tipo di fattura';
    pstyv     @title : 'Categoria di posizione';
    zsegno    @title : 'Segno provvigione';
 } 