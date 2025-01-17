# REST service - Send different status codes

The resource method can return `StatusCodeResponse` record. Ballerina provides built in records for each HTTP status codes. The `StatusCodeResponse` constants are available to send the a response without a body or headers.

::: code http_send_different_status_codes.bal :::

Run the service as follows.

::: out http_send_different_status_codes.server.out :::

Invoke the service by executing the following cURL command in a new terminal.

::: out http_send_different_status_codes.client.out :::

## Related links
- [`http` package - API documentation](https://lib.ballerina.io/ballerina/http/latest/)
- [HTTP service status code response - Specification](/spec/http/#2351-status-code-response)
