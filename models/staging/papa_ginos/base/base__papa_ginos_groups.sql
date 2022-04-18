{{ config(materialized='ephemeral') }}

with source as (
    
    select 
        {{ dbt_utils.surrogate_key(['loc_id', 'loc_grp_nm']) }} as SURR_KEY
        ,* 
    
    from {{ source('raw-papa-ginos', 'loc-grp-extract') }}
    
),

base as (
    
    select
        *
    from source

)

select * from base
