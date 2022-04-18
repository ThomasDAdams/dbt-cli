with source as (
    
    select
        restaurant as loc_id
        ,restaurant_name as restaurant_nm
        ,vp_ops
        ,area_manager
        ,catering_specialist
        ,restaurant_phone
        ,address
        ,city as city_nm
        ,state as state_cd
        ,zip_code as zip_cd
        ,store_type
        ,general_manager
        ,delivery
        ,special
        ,msa as msa_cd
        ,dma as dma_cd
        ,market
        ,tier
        ,menuboard_size
        ,ifnull(text_program, false) as text_program
        ,ifnull(traditional_menuboard_setup, false) as traditional_menuboard_setup
        ,ifnull(mall_location_, false) as mall_location
        ,ifnull(franchise_location, false) as franchise_location
        ,fountain_removal_bottles_only
        ,ifnull(beer___wine, false) as beer_wine
        ,ifnull(online_ordering, false) as online_ordering
        ,door_dash_ as door_dash
        ,fresh_bread_distributor
    
    from {{ ref('base__papa_ginos_franchisecorp') }}
    
),

renamed as (
    
    select
        *
    from source

)

select * from renamed
