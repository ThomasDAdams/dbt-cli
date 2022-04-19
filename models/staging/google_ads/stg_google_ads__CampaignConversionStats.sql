with source as (
    
    select

        BaseCampaignId
        ,CampaignGroupId
        ,CampaignId
        ,ConversionTrackerId
        ,ExternalCustomerId
        ,AdNetworkType1
        ,AdNetworkType2
        ,ClickType
        ,ConversionAttributionEventType
        ,ConversionCategoryName
        ,ConversionTypeName
        ,ConversionValue
        ,Conversions
        ,Date
        ,DayOfWeek
        ,Device
        ,extract(MONTH From Month) Month
        ,MonthOfYear
        ,extract(QUARTER From Date) Quarter
        ,Slot
        ,ValuePerConversion
        ,extract(ISOWEEK From Date) IsoWeek
        ,Year
        ,{{ divide_by_one_million('CostPerConversion') }}
        ,ConversionRate
        ,_LATEST_DATE
        ,_DATA_DATE
    
    from {{ source('raw-google-ads', 'CampaignConversionStats_2646285303') }}
),

renamed as (
    
    select
        *
    from source

)

select * from renamed