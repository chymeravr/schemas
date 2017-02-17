namespace java com.chymeravr.schemas.serving

enum ResponseCode {
    SERVED,
    NO_AD,
    BAD_REQUEST
}

enum ErrorCode {
    APP_ID_NOT_SET,
    AD_FORMAT_NOT_SET,
    INACTIVE_APP,
    HMD_NOT_SET,
}

enum AdFormat {
    IMG_360,
    VID_360
}

enum PricingModel {
	CPC,
	CPM
}

struct Placement {
    1: required string id;
    2: required AdFormat adFormat;
}

struct Location {
    1: required double lat;
    2: required double lon;
    3: required double accu;
}

struct Demographics {
    1: required string dob;
    2: required string gender;
    3: required string email;
}

struct Device {
    1: required string manufacturer;
    2: required string model;
    3: required string ram;
}

struct ServingRequest {
    1: required i64 timestamp;
    2: required i16 sdkVersion;
    3: required string appId;
    4: required list<Placement> placements;
    5: required string osId;
    6: required string osVersion;
    7: required string userId;
    8: required i32 hmdId;
    9: optional Location location;
    10: optional Demographics demographics;
    11: optional Device device;
    12: optional string connectivity;
    13: optional string wifiName;
}

struct AdMeta {
    1: required string servingId;
    2: required string mediaUrl;
}

struct ServingResponse {
   1: required ResponseCode responseCode;
   2: required map<string, AdMeta> ads;
   3: required string requestId;
   4: optional ErrorCode errorCode;
}

struct RequestInfo {
    1: required string appId;
    2: required list<Placement> placementIds;
    3: required i32 HmdId;
    4: required string OsId;
    5: required string OsVersion;
    6: required string deviceId;
}

struct ImpressionInfo {
    1: required string servingId;
    2: required string advertiserId;
    3: required string adgroupId;
    4: required string adId;
    5: required double costPrice;
    6: required double sellingPrice;
    7: required string creativeUrl;
	8: required PricingModel pricingModel;
}

struct ResponseLog {
	1: required i64 timestamp;
	2: required string requestId;
	3: required i32 sdkVersion;
	4: required list<i32> experimentIds;
	5: required RequestInfo requestInfo;
	6: required ResponseCode responseCode;
	7: required map<string, ImpressionInfo> impressionInfoMap;
}

struct ImpressionLog {
    1: required i64 timestamp;
    2: required string requestId;
    3: required i32 sdkVersion;
    4: required list<i32> experimentIds;
    5: required RequestInfo requestInfo;
    6: required ResponseCode responseCode;
    7: required string placementId;
    8: required ImpressionInfo impressionInfo;
}

