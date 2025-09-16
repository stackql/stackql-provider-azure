--- 
title: vw_brokers
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_brokers
  - iotoperations
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

Creates, updates, deletes, gets or lists a <code>vw_brokers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_brokers</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.iotoperations.vw_brokers" /></td></tr>
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
extendedLocation as extended_location,
JSON_EXTRACT(properties, '$.advanced') as "advanced",
JSON_EXTRACT(properties, '$.cardinality') as "cardinality",
JSON_EXTRACT(properties, '$.diagnostics') as "diagnostics",
JSON_EXTRACT(properties, '$.diskBackedMessageBuffer') as "disk_backed_message_buffer",
JSON_EXTRACT(properties, '$.generateResourceLimits') as "generate_resource_limits",
JSON_EXTRACT(properties, '$.memoryProfile') as "memory_profile",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
instanceName,
brokerName
FROM azure.iotoperations.brokers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND instanceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
extendedLocation as extended_location,
json_extract_path_text(properties, '$.advanced') as "advanced",
json_extract_path_text(properties, '$.cardinality') as "cardinality",
json_extract_path_text(properties, '$.diagnostics') as "diagnostics",
json_extract_path_text(properties, '$.diskBackedMessageBuffer') as "disk_backed_message_buffer",
json_extract_path_text(properties, '$.generateResourceLimits') as "generate_resource_limits",
json_extract_path_text(properties, '$.memoryProfile') as "memory_profile",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
instanceName,
brokerName
FROM azure.iotoperations.brokers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND instanceName = 'replace-me';
```

</TabItem>
</Tabs>
