--- 
title: vw_pipelines
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_pipelines
  - data_transfer
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

Creates, updates, deletes, gets or lists a <code>vw_pipelines</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_pipelines</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_transfer.vw_pipelines" /></td></tr>
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
JSON_EXTRACT(properties, '$.remoteCloud') as "remote_cloud",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.connections') as "connections",
JSON_EXTRACT(properties, '$.subscribers') as "subscribers",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.policies') as "policies",
JSON_EXTRACT(properties, '$.flowTypes') as "flow_types",
subscriptionId,
resourceGroupName,
pipelineName
FROM azure.data_transfer.pipelines
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.remoteCloud') as "remote_cloud",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.connections') as "connections",
json_extract_path_text(properties, '$.subscribers') as "subscribers",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.policies') as "policies",
json_extract_path_text(properties, '$.flowTypes') as "flow_types",
subscriptionId,
resourceGroupName,
pipelineName
FROM azure.data_transfer.pipelines
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
