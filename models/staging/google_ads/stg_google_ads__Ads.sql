with source as (
    
    select
    
        AdGroupId
        ,CampaignId
        ,CreativeId
        ,EnhancedDisplayCreativeLandscapeLogoImageMediaId
        ,EnhancedDisplayCreativeLogoImageMediaId
        ,EnhancedDisplayCreativeMarketingImageMediaId
        ,EnhancedDisplayCreativeMarketingImageSquareMediaId
        ,ExternalCustomerId
        ,GmailCreativeHeaderImageMediaId
        ,GmailCreativeLogoImageMediaId
        ,GmailCreativeMarketingImageMediaId
        ,AccentColor
        ,AdStrengthInfo
        ,AdType
        ,AllowFlexibleColor
        ,Automated
        ,BusinessName
        ,CallOnlyPhoneNumber
        ,CallToActionText
        ,CombinedApprovalStatus
        ,CreativeDestinationUrl
        ,CreativeFinalAppUrls
        ,CreativeFinalMobileUrls
        ,CreativeFinalUrls
        ,CreativeTrackingUrlTemplate
        ,CreativeUrlCustomParameters
        ,Description
        ,Description1
        ,Description2
        ,DevicePreference
        ,DisplayUrl
        ,ExpandedDynamicSearchCreativeDescription2
        ,ExpandedTextAdDescription2
        ,ExpandedTextAdHeadlinePart3
        ,FormatSetting
        ,GmailTeaserBusinessName
        ,GmailTeaserDescription
        ,GmailTeaserHeadline
        ,Headline
        ,HeadlinePart1
        ,HeadlinePart2
        ,ImageAdUrl
        ,ImageCreativeImageHeight
        ,ImageCreativeImageWidth
        ,ImageCreativeMimeType
        ,ImageCreativeName
        ,LabelIds
        ,Labels
        ,LongHeadline
        ,MainColor
        ,MarketingImageCallToActionText
        ,MarketingImageCallToActionTextColor
        ,MarketingImageDescription
        ,MarketingImageHeadline
        ,MultiAssetResponsiveDisplayAdAccentColor
        ,MultiAssetResponsiveDisplayAdBusinessName
        ,MultiAssetResponsiveDisplayAdCallToActionText
        ,MultiAssetResponsiveDisplayAdDescriptions
        ,MultiAssetResponsiveDisplayAdDynamicSettingsPricePrefix
        ,MultiAssetResponsiveDisplayAdDynamicSettingsPromoText
        ,MultiAssetResponsiveDisplayAdFormatSetting
        ,MultiAssetResponsiveDisplayAdHeadlines
        ,MultiAssetResponsiveDisplayAdLandscapeLogoImages
        ,MultiAssetResponsiveDisplayAdLogoImages
        ,MultiAssetResponsiveDisplayAdLongHeadline
        ,MultiAssetResponsiveDisplayAdMainColor
        ,MultiAssetResponsiveDisplayAdMarketingImages
        ,MultiAssetResponsiveDisplayAdSquareMarketingImages
        ,MultiAssetResponsiveDisplayAdYouTubeVideos
        ,Path1
        ,Path2
        ,PolicySummary
        ,PricePrefix
        ,PromoText
        ,ResponsiveSearchAdDescriptions
        ,ResponsiveSearchAdHeadlines
        ,ResponsiveSearchAdPath1
        ,ResponsiveSearchAdPath2
        ,ShortHeadline
        ,Status
        ,SystemManagedEntitySource
        ,UniversalAppAdDescriptions
        ,UniversalAppAdHeadlines
        ,UniversalAppAdHtml5MediaBundles
        ,UniversalAppAdImages
        ,UniversalAppAdMandatoryAdText
        ,UniversalAppAdYouTubeVideos
        ,_LATEST_DATE
        ,_DATA_DATE
    
    from {{ source('raw-google-ads', 'Ad_2646285303') }}
),

renamed as (
    
    select
        *
    from source

)

select * from renamed