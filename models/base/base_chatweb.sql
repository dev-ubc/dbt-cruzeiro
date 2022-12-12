with base_chatweb as (

    select 
        idremessa,
        dtremessa,
        idcampanha,
        desccampanha,
        sitcampanha,
        datatinicio,
        datafim,
        idaluno,
        rgmaluno,
        cpf,
        nome,
        celular,
        foneres,
        fonecom,
        prioridade,
        situacao,
        classificacao,
        urlatendimento,
        tipoensino,
        tipocampanha,
        anoleti,
        semleti,
        nomecampus,
        email,
        agrupador,
        sitmatric,
        codcurso,
        desccurso,
        serie,
        atraso,
        titulosvencidos,
        valordivida,
        oferta,
        data
    from {{ source('raw_chatweb', 'chat_web') }}
)

select * from base_chatweb