# HTTP client - Payload data binding

Through client payload data binding, the response payload can be accessed directly. The payload type is inferred from the contextually-expected type or from the `targetType` argument. An `anydata` type or `http:Response` is expected as the return value type along with the error. When the user expects client data binding to happen, the HTTP error responses (`4XX`, `5XX`) will be categorized as an `error` (`http:ClientRequestError`, `http:RemoteServerError`) of the client remote operation.

::: code http_client_data_binding.bal :::

## Prerequisites
- Run the HTTP service given in the [Basic REST service](/learn/by-example/http-basic-rest-service/) example.

Run the client program by executing the following command.

::: out http_client_data_binding.out :::

## Related links
- [`http` package - API documentation](https://lib.ballerina.io/ballerina/http/latest/)
- [HTTP client return types - Specification](/spec/http/#243-client-action-return-types)
