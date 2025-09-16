--- 
title: vw_provider_instances
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_provider_instances
  - hana_on_azure
  - azure_isv
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_isv resources using SQL
custom_edit_url: null
image: /img/stackql-azure_isv-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_provider_instances</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_provider_instances</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.hana_on_azure.vw_provider_instances" /></td></tr>
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
JSON_EXTRACT(properties, '$.type') as "type",
JSON_EXTRACT(properties, '$.properties') as "properties",
JSON_EXTRACT(properties, '$.metadata') as "metadata",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
sapMonitorName,
providerInstanceName
FROM azure_isv.hana_on_azure.provider_instances
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND sapMonitorName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.type') as "type",
json_extract_path_text(properties, '$.properties') as "properties",
json_extract_path_text(properties, '$.metadata') as "metadata",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
sapMonitorName,
providerInstanceName
FROM azure_isv.hana_on_azure.provider_instances
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND sapMonitorName = 'replace-me';
```

</TabItem>
</Tabs>
