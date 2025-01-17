# SFTP service - Read file

The SFTP service is used to receive file/directory changes that occur in a remote location using the SFTP protocol. This sample includes receiving file/directory related change events from a listener with default configurations using the default port.

::: code sftp_service_read.bal :::

## Prerequisites
- Start a [SFTP server](https://hub.docker.com/r/atmoz/sftp/) instance.

Run the program by executing the following command. Paths of the newly-added and newly-deleted files/directories during the latest polling will be printed for each of the polled events.

::: out sftp_service_read.out :::

>**Tip:** Run the SFTP client given in the [SFTP client - Write file](/learn/by-example/sftp-client-write) example to put a file in the SFTP server.

## Related links
- [`ftp:Listener` client object - API documentation](https://lib.ballerina.io/ballerina/ftp/latest/listeners/Listener)
- [SFTP service - Specification](/spec/ftp/#422-secure-listener)
