namespace java com.chymeravr.schemas.eventreceiver

enum ResponseCode {
    OK,
    ERROR
}

enum EventType {
    ERROR,
    AD_LOAD,
    AD_SHOW,
    AD_CLOSE,
    AD_CLICK,
    AD_VIEW_METRICS
}

struct AdServingMeta {
    1: required string servingId;
    2: required i32 instanceId;
}

struct RuntimeAdMeta {
    1: required string servingId;
    2: required i32 instanceId;
}

struct SDKEvent {
    1: required i64 timestamp;
    2: required EventType eventType;
    3: required RuntimeAdMeta adMeta;
    4: optional map<string, string> paramsMap;
}

struct EventPing {
    1: required i64 timestamp;
    2: required i16 sdkVersion;
    3: required string appId;
    4: required list<SDKEvent> events;
}

struct EventResponse {

}

struct EventLog {
    1: required i64 timestamp;
    2: required string appId;
    3: required i32 sdkVersion;
    4: required EventType eventType;
    5: required AdServingMeta adServingMeta;
    6: required ResponseCode responseCode;
    7: required map<string, string> paramMap;
}