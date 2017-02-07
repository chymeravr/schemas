namespace java com.chymeravr.dfs.records

struct HourlyTimestamp {
    1: required i16 year;
    2: required i16 month;
    3: required i16 day;
    4: required i16 hour;
}

struct DailyTimestamp {
    1: required i16 year;
    2: required i16 month;
    3: required i16 day;
}

struct MonthlyTimestamp {
    1: required i16 year;
    2: required i16 month;
}

struct HourlyDimension {
    1: required HourlyTimestamp ts;
    2: required string objectId;
}

struct Metrics {
    1: optional i32 impressions=0;
    2: optional i32 clicks=0;
	# Change to int
    3: optional double amount=0;
	4: optional i32 close=0;
	5: optional i32 errors=0;
}
