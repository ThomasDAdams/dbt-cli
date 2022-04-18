with ranker as (
    
    select 
        rank() over (partition by surr_key order by extrct_dt desc) as rnk
        ,surr_key
        ,loc_id
        ,loc_grp_nm
        ,loc_grp_val
        ,extrct_dt
    
    from {{ ref('base__papa_ginos_groups') }}
    
),

latest as (
    
    select
        * except(rnk)
    
    from ranker
    where rnk = 1

)

select * from latest
