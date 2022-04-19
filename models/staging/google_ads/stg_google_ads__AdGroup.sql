with source as (
    
    select
    
        AdGroupId
        ,BiddingStrategyId
        ,CampaignId
        ,CpcBid
        ,CpvBid
        ,ExternalCustomerId
        ,AdGroupDesktopBidModifier
        ,AdGroupMobileBidModifier
        ,AdGroupName
        ,AdGroupStatus
        ,AdGroupTabletBidModifier
        ,AdGroupType
        ,AdRotationMode
        ,BiddingStrategyName
        ,BiddingStrategySource
        ,BiddingStrategyType
        ,ContentBidCriterionTypeGroup
        ,CpmBidStr
        ,EffectiveTargetRoas
        ,EffectiveTargetRoasSource
        ,EnhancedCpcEnabled
        ,LabelIds
        ,Labels
        ,TargetCpa
        ,TargetCpaBidSource
        ,TrackingUrlTemplate
        ,UrlCustomParameters
        ,_LATEST_DATE
        ,_DATA_DATE

    
    from {{ source('raw-google-ads', 'AdGroup_2646285303') }}
),

renamed as (
    
    select
        *
    from source

)

select * from renamed
