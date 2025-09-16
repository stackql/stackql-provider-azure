--- 
title: vw_instances
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_instances
  - iot_orchestrator
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

Creates, updates, deletes, gets or lists a <code>vw_instances</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_instances</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.iot_orchestrator.vw_instances" /></td></tr>
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
JSON_EXTRACT(properties, '$.scope') as "scope",
JSON_EXTRACT(properties, '$.solution') as "solution",
JSON_EXTRACT(properties, '$.target') as "target",
JSON_EXTRACT(properties, '$.reconciliationPolicy') as "reconciliation_policy",
JSON_EXTRACT(properties, '$.version') as "version",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
name
FROM azure.iot_orchestrator.instances
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
extendedLocation as extended_location,
tags as tags,
json_extract_path_text(properties, '$.scope') as "scope",
json_extract_path_text(properties, '$.solution') as "solution",
json_extract_path_text(properties, '$.target') as "target",
json_extract_path_text(properties, '$.reconciliationPolicy') as "reconciliation_policy",
json_extract_path_text(properties, '$.version') as "version",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
name
FROM azure.iot_orchestrator.instances
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
