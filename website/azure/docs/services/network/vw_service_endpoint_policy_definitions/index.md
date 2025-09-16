--- 
title: vw_service_endpoint_policy_definitions
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_service_endpoint_policy_definitions
  - network
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

Creates, updates, deletes, gets or lists a <code>vw_service_endpoint_policy_definitions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_service_endpoint_policy_definitions</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_service_endpoint_policy_definitions" /></td></tr>
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
etag as etag,
type as type,
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.service') as "service",
JSON_EXTRACT(properties, '$.serviceResources') as "service_resources",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
serviceEndpointPolicyName,
serviceEndpointPolicyDefinitionName
FROM azure.network.service_endpoint_policy_definitions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceEndpointPolicyName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
etag as etag,
type as type,
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.service') as "service",
json_extract_path_text(properties, '$.serviceResources') as "service_resources",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
serviceEndpointPolicyName,
serviceEndpointPolicyDefinitionName
FROM azure.network.service_endpoint_policy_definitions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceEndpointPolicyName = 'replace-me';
```

</TabItem>
</Tabs>
