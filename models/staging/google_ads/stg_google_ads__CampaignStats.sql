with source as (
    
    select

        BaseCampaignId
        ,CampaignGroupId
        ,CampaignId
        ,ExternalCustomerId
        ,{{ divide_by_one_million('ActiveViewCpm') }}
        ,ActiveViewCtr
        ,ActiveViewImpressions
        ,ActiveViewMeasurability
        ,{{ divide_by_one_million('ActiveViewMeasurableCost') }}
        ,ActiveViewMeasurableImpressions
        ,ActiveViewViewability
        ,AdNetworkType1
        ,AdNetworkType2
        ,{{ divide_by_one_million('AverageCost') }}
        ,{{ divide_by_one_million('AverageCpc') }}
        ,{{ divide_by_one_million('AverageCpm') }}
        ,AveragePosition
        ,ClickType
        ,Clicks
        ,ConversionRate
        ,ConversionValue
        ,Conversions
        ,{{ divide_by_one_million('Cost') }}
        ,{{ divide_by_one_million('CostPerConversion') }}
        ,{{ divide_by_one_million('CostPerCurrentModelAttributedConversion') }}
        ,Ctr
        ,CurrentModelAttributedConversionValue
        ,CurrentModelAttributedConversions
        ,Date
        ,DayOfWeek
        ,Device
        ,GmailForwards
        ,GmailSaves
        ,GmailSecondaryClicks
        ,Impressions
        ,InteractionRate
        ,InteractionTypes
        ,Interactions
        ,extract(MONTH From Month) Month
        ,MonthOfYear
        ,extract(QUARTER From Date) Quarter
        ,Slot
        ,ValuePerConversion
        ,ValuePerCurrentModelAttributedConversion
        ,extract(ISOWEEK From Date) IsoWeek
        ,Year
        ,_LATEST_DATE
        ,_DATA_DATE

    
    from {{ source('raw-google-ads', 'CampaignStats_2646285303') }}
),

renamed as (
    
    select
        *
    from source

)

select * from renamed
