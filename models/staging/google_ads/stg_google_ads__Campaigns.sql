with source as (
    
    select
    
        BiddingStrategyId
        ,BudgetId
        ,CampaignGroupId
        ,CampaignId
        ,ExternalCustomerId
        ,AdvertisingChannelSubType
        ,AdvertisingChannelType
        ,{{ divide_by_one_million('Amount') }}
        ,BiddingStrategyName
        ,BiddingStrategyType
        ,CampaignDesktopBidModifier
        ,CampaignMobileBidModifier
        ,CampaignName
        ,CampaignStatus
        ,CampaignTabletBidModifier
        ,CampaignTrialType
        ,EndDate
        ,EnhancedCpcEnabled
        ,HasRecommendedBudget
        ,IsBudgetExplicitlyShared
        ,LabelIds
        ,Labels
        ,MaximizeConversionValueTargetRoas
        ,Period
        ,RecommendedBudgetAmount
        ,ServingStatus
        ,StartDate
        ,TotalAmount
        ,TrackingUrlTemplate
        ,UrlCustomParameters
        ,_LATEST_DATE
        ,_DATA_DATE

    
    from {{ source('raw-google-ads', 'Campaign_2646285303') }}
),

renamed as (
    
    select
        *
    from source

)

select * from renamed
