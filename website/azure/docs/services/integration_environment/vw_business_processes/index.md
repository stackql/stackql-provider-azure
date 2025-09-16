--- 
title: vw_business_processes
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_business_processes
  - integration_environment
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

Creates, updates, deletes, gets or lists a <code>vw_business_processes</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_business_processes</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.integration_environment.vw_business_processes" /></td></tr>
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
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.version') as "version",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.tableName') as "table_name",
JSON_EXTRACT(properties, '$.trackingDataStoreReferenceName') as "tracking_data_store_reference_name",
JSON_EXTRACT(properties, '$.identifier') as "identifier",
JSON_EXTRACT(properties, '$.businessProcessStages') as "business_process_stages",
JSON_EXTRACT(properties, '$.businessProcessMapping') as "business_process_mapping",
subscriptionId,
resourceGroupName,
spaceName,
applicationName,
businessProcessName
FROM azure.integration_environment.business_processes
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND spaceName = 'replace-me' AND applicationName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.version') as "version",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.tableName') as "table_name",
json_extract_path_text(properties, '$.trackingDataStoreReferenceName') as "tracking_data_store_reference_name",
json_extract_path_text(properties, '$.identifier') as "identifier",
json_extract_path_text(properties, '$.businessProcessStages') as "business_process_stages",
json_extract_path_text(properties, '$.businessProcessMapping') as "business_process_mapping",
subscriptionId,
resourceGroupName,
spaceName,
applicationName,
businessProcessName
FROM azure.integration_environment.business_processes
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND spaceName = 'replace-me' AND applicationName = 'replace-me';
```

</TabItem>
</Tabs>
