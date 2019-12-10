import 'abstract_message_with_payload.dart';

class Publish extends AbstractMessageWithPayload {
    int requestId;
    PublishOptions options;
    String topic;
    Publish(this.requestId, this.topic, {this.options, List<Object> arguments, Map<String, Object> argumentsKeywords}) {
        this.arguments = arguments;
        this.argumentsKeywords = argumentsKeywords;
    }
}

class PublishOptions{
    bool acknowledge;
    // subscriber_blackwhite_listing == true
    List<int> exclude;
    List<String> exclude_authid;
    List<String> exclude_authrole;
    List<int> eligible;
    List<String> eligible_authid;
    List<String> eligible_authrole;
    // publisher_exclusion == true
    bool exclude_me;
    // publisher_identification == true
    bool disclose_me;
}