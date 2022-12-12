with base_mailing as (

    select 
        id,
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
    from {{ source('raw_mailing', 'mailing') }}

)

select * from base_mailing