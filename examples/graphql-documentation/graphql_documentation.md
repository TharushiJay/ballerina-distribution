# GraphQL service - Documentation

A GraphQL schema can include documentation for the schema. These documentation can help you to understand the schema. In Ballerina, the Ballerina doc comments can be used to add documentation to various schema members.

This example shows how to add doc comments to the GraphQL service so that the generated schema will include them as the documentation.

::: code graphql_documentation.bal :::

Run the service by executing the following command.

::: out graphql_documentation.server.out :::

Send the following document with an introspection query to test how the documentation is added to the schema.

::: code graphql_documentation.graphql :::

To send the document, use the following cURL command in a separate terminal.

::: out graphql_documentation.client.out :::

>**Tip:** You can invoke the above service via the [GraphQL client](/learn/by-example/graphql-client-query-endpoint/).

## Related links
- [`graphql` package - API documentation](https://lib.ballerina.io/ballerina/graphql/latest)
- [GraphQL documentation - Specification](/spec/graphql/#35-documentation)
