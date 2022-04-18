{{ config(materialized='ephemeral') }}

with source as (
    
    select * from {{ source('raw-papa-ginos', 'loc-franchisecorp-extract') }}
    
),

base as (
    
    select
        *
    from source

)

select * from base
