import ballerina/http;
import ballerina/io;

public function main() returns error? {
    // The circuit breaker looks for errors across a rolling time window.
    // After the circuit is broken, it does not send requests to
    // the backend until the `resetTime`.
    http:Client httpClient = check new ("localhost:9090",
        // Configuration options that control the behavior of the circuit
        // breaker.
        circuitBreaker = {
            // Failure calculation window. This is how long the circuit
            // breaker keeps the statistics for the operations.
            rollingWindow: {

                // Time period in seconds for which the failure
                // threshold is calculated.
                timeWindow: 10,

                // The granularity (in seconds) at which the time
                // window slides. The `RollingWindow` is divided into
                // buckets and slides by these increments.
                bucketSize: 2,

                // Minimum number of requests in the `RollingWindow` that
                // will trip the circuit.
                requestVolumeThreshold: 0

            },
            // The threshold for request failures.
            // When this threshold exceeds, the circuit trips. This is the
            // ratio between failures and total requests. The ratio is
            // calculated using the requests received within the given
            // rolling window.
            failureThreshold: 0.2,

            // The time period (in seconds) to wait before attempting to
            // make another request to the upstream service.
            resetTime: 10,

            // HTTP response status codes that are considered as failures
            statusCodes: [400, 404, 500]

        }
    );
    string payload = check httpClient->/albums;
    io:println(payload);
}
