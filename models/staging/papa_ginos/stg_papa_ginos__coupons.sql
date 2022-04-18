with ranker as (

  select
    rank() over (partition by rpt_id order by extrct_dt desc) as rnk,
    rpt_id,
    loc_id,
    brnd_nm,
    init_nm,
    ofr_nm,
    dscnt_cd,
    fisc_dt,
    tran_cnt,
    tot_net_sls_amt,
    tot_extd_cst_amt,
    tot_net_margin,
    extrct_dt

  from {{ ref('base__papa_ginos_coupons') }}

),
  
latest as (

  select 
    * EXCEPT(rnk) 
  
  from ranker
  where rnk = 1

)

select * from latest
