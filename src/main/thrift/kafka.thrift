namespace java com.chymeravr.schemas.kafka
include "serving.thrift"
include "eventreceiver.thrift"

struct JoinedEvent {
    1: required serving.ServingLog servingLog;
    2: required eventreceiver.EventLog eventLog;
}


