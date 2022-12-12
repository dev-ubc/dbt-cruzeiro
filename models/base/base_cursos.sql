with base_cursos as (

    select 
       instituicao,
        campus,
        curso,
        cursoAjustado,
        grau,
        semestre,
        manha,
        tarde,
        noite
    from {{ source('raw_chatweb', 'cursos') }}

)

select * from base_cursos