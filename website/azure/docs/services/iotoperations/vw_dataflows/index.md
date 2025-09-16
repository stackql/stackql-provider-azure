--- 
title: vw_dataflows
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_dataflows
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

Creates, updates, deletes, gets or lists a <code>vw_dataflows</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_dataflows</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.iotoperations.vw_dataflows" /></td></tr>
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
JSON_EXTRACT(properties, '$.mode') as "mode",
JSON_EXTRACT(properties, '$.operations') as "operations",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
instanceName,
dataflowProfileName,
dataflowName
FROM azure.iotoperations.dataflows
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND instanceName = 'replace-me' AND dataflowProfileName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
extendedLocation as extended_location,
json_extract_path_text(properties, '$.mode') as "mode",
json_extract_path_text(properties, '$.operations') as "operations",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
instanceName,
dataflowProfileName,
dataflowName
FROM azure.iotoperations.dataflows
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND instanceName = 'replace-me' AND dataflowProfileName = 'replace-me';
```

</TabItem>
</Tabs>
