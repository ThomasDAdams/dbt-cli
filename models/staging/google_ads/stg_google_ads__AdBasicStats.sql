with source as (
    
    select
    
        AdGroupId
        ,BaseAdGroupId
        ,BaseCampaignId
        ,CampaignId
        ,CreativeId
        ,CriterionId
        ,ExternalCustomerId
        ,ActiveViewImpressions
        ,ActiveViewMeasurability
        ,{{ divide_by_one_million('ActiveViewMeasurableCost') }}
        ,ActiveViewMeasurableImpressions
        ,ActiveViewViewability
        ,AdNetworkType1
        ,AdNetworkType2
        ,AveragePosition
        ,Clicks
        ,ConversionValue
        ,Conversions
        ,{{ divide_by_one_million('Cost') }}
        ,CriterionType
        ,Date
        ,Device
        ,Impressions
        ,InteractionTypes
        ,Interactions
        ,IsNegative
        ,Slot
        ,ViewThroughConversions
        ,_LATEST_DATE
        ,_DATA_DATE

    
    from {{ source('raw-google-ads', 'AdBasicStats_2646285303') }}
),

renamed as (
    
    select
        *
    from source

)

select * from renamed
