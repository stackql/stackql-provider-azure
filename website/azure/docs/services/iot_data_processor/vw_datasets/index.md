--- 
title: vw_datasets
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_datasets
  - iot_data_processor
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

Creates, updates, deletes, gets or lists a <code>vw_datasets</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_datasets</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.iot_data_processor.vw_datasets" /></td></tr>
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
extendedLocation as extended_location,
tags as tags,
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.payload') as "payload",
JSON_EXTRACT(properties, '$.timestamp') as "timestamp",
JSON_EXTRACT(properties, '$.ttl') as "ttl",
JSON_EXTRACT(properties, '$.keys') as "keys",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
instanceName,
datasetName
FROM azure.iot_data_processor.datasets
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND instanceName = 'replace-me' AND datasetName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
extendedLocation as extended_location,
tags as tags,
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.payload') as "payload",
json_extract_path_text(properties, '$.timestamp') as "timestamp",
json_extract_path_text(properties, '$.ttl') as "ttl",
json_extract_path_text(properties, '$.keys') as "keys",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
instanceName,
datasetName
FROM azure.iot_data_processor.datasets
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND instanceName = 'replace-me' AND datasetName = 'replace-me';
```

</TabItem>
</Tabs>
