--- 
title: vw_private_link_services_for_mip_policy_syncs
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_private_link_services_for_mip_policy_syncs
  - m365_security_and_compliance
  - azure_extras
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_extras resources using SQL
custom_edit_url: null
image: /img/stackql-azure_extras-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_private_link_services_for_mip_policy_syncs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_private_link_services_for_mip_policy_syncs</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.m365_security_and_compliance.vw_private_link_services_for_mip_policy_syncs" /></td></tr>
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
id as id,
name as name,
location as location,
type as type,
systemData as system_data,
kind as kind,
tags as tags,
etag as etag,
identity as identity,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.accessPolicies') as "access_policies",
JSON_EXTRACT(properties, '$.cosmosDbConfiguration') as "cosmos_db_configuration",
JSON_EXTRACT(properties, '$.authenticationConfiguration') as "authentication_configuration",
JSON_EXTRACT(properties, '$.corsConfiguration') as "cors_configuration",
JSON_EXTRACT(properties, '$.exportConfiguration') as "export_configuration",
JSON_EXTRACT(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
JSON_EXTRACT(properties, '$.publicNetworkAccess') as "public_network_access",
subscriptionId,
resourceGroupName,
resourceName
FROM azure_extras.m365_security_and_compliance.private_link_services_for_mip_policy_syncs
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
systemData as system_data,
kind as kind,
tags as tags,
etag as etag,
identity as identity,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.accessPolicies') as "access_policies",
json_extract_path_text(properties, '$.cosmosDbConfiguration') as "cosmos_db_configuration",
json_extract_path_text(properties, '$.authenticationConfiguration') as "authentication_configuration",
json_extract_path_text(properties, '$.corsConfiguration') as "cors_configuration",
json_extract_path_text(properties, '$.exportConfiguration') as "export_configuration",
json_extract_path_text(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
json_extract_path_text(properties, '$.publicNetworkAccess') as "public_network_access",
subscriptionId,
resourceGroupName,
resourceName
FROM azure_extras.m365_security_and_compliance.private_link_services_for_mip_policy_syncs
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
