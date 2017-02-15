namespace java com.chymeravr.schemas.kafka
include "serving.thrift"
include "eventreceiver.thrift"

struct AttributedEvent {
    1: required serving.ImpressionLog impressionLog;
    2: required eventreceiver.EventLog eventLog;
}


