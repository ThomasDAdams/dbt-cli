with ranker as (
    select
        rank() over (partition by loc_id order by extrct_dt desc) as rnk
        ,loc_id
        ,loc_nm
        ,loc_sts_cd
        ,chain_cd
        ,rstnt_grp_nm
        ,dma_cd
        ,adi_nm
        ,addr_ln_1_txt as address
        ,cty_nm as city_nm
        ,st_cd as state_cd
        ,zip_cd
        ,lon_val
        ,lat_val
        ,re_typ_desc as re_type_desc
        ,catr_rgn_nm
        ,extrct_dt

    from {{ ref('base__papa_ginos_locations') }}

),

latest as (

    select
        * EXCEPT(rnk)
    
    from ranker
    where rnk = 1

)

select * from latest
