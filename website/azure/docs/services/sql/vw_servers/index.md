--- 
title: vw_servers
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_servers
  - sql
  - azure
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure resources using SQL
custom_edit_url: null
image: /img/stackql-azure-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_servers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_servers</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sql.vw_servers" /></td></tr>
</tbody></table>

## Fields

See the SQL Definition (view DDL) for fields returned by this view.

## SQL Definition

<Tabs
defaultValue="Sqlite3"
values={[
{ label: 'Sqlite3', value: 'Sqlite3' },
{ label: 'Postgres', value: 'Postgres' }
]}
>
<TabItem value="Sqlite3">

```sql
SELECT
location as location,
tags as tags,
identity as identity,
kind as kind,
JSON_EXTRACT(properties, '$.administratorLogin') as "administrator_login",
JSON_EXTRACT(properties, '$.administratorLoginPassword') as "administrator_login_password",
JSON_EXTRACT(properties, '$.version') as "version",
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.fullyQualifiedDomainName') as "fully_qualified_domain_name",
JSON_EXTRACT(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
JSON_EXTRACT(properties, '$.minimalTlsVersion') as "minimal_tls_version",
JSON_EXTRACT(properties, '$.publicNetworkAccess') as "public_network_access",
JSON_EXTRACT(properties, '$.workspaceFeature') as "workspace_feature",
JSON_EXTRACT(properties, '$.primaryUserAssignedIdentityId') as "primary_user_assigned_identity_id",
JSON_EXTRACT(properties, '$.federatedClientId') as "federated_client_id",
JSON_EXTRACT(properties, '$.keyId') as "key_id",
JSON_EXTRACT(properties, '$.administrators') as "administrators",
JSON_EXTRACT(properties, '$.restrictOutboundNetworkAccess') as "restrict_outbound_network_access",
JSON_EXTRACT(properties, '$.isIPv6Enabled') as "is_ipv6_enabled",
JSON_EXTRACT(properties, '$.externalGovernanceStatus') as "external_governance_status",
subscriptionId,
resourceGroupName,
serverName
FROM azure.sql.servers
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
identity as identity,
kind as kind,
json_extract_path_text(properties, '$.administratorLogin') as "administrator_login",
json_extract_path_text(properties, '$.administratorLoginPassword') as "administrator_login_password",
json_extract_path_text(properties, '$.version') as "version",
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.fullyQualifiedDomainName') as "fully_qualified_domain_name",
json_extract_path_text(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
json_extract_path_text(properties, '$.minimalTlsVersion') as "minimal_tls_version",
json_extract_path_text(properties, '$.publicNetworkAccess') as "public_network_access",
json_extract_path_text(properties, '$.workspaceFeature') as "workspace_feature",
json_extract_path_text(properties, '$.primaryUserAssignedIdentityId') as "primary_user_assigned_identity_id",
json_extract_path_text(properties, '$.federatedClientId') as "federated_client_id",
json_extract_path_text(properties, '$.keyId') as "key_id",
json_extract_path_text(properties, '$.administrators') as "administrators",
json_extract_path_text(properties, '$.restrictOutboundNetworkAccess') as "restrict_outbound_network_access",
json_extract_path_text(properties, '$.isIPv6Enabled') as "is_ipv6_enabled",
json_extract_path_text(properties, '$.externalGovernanceStatus') as "external_governance_status",
subscriptionId,
resourceGroupName,
serverName
FROM azure.sql.servers
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
