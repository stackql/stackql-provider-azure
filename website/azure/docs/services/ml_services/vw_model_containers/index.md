--- 
title: vw_model_containers
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_model_containers
  - ml_services
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

Creates, updates, deletes, gets or lists a <code>vw_model_containers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_model_containers</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.ml_services.vw_model_containers" /></td></tr>
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
JSON_EXTRACT(properties, '$.isArchived') as "is_archived",
JSON_EXTRACT(properties, '$.latestVersion') as "latest_version",
JSON_EXTRACT(properties, '$.nextVersion') as "next_version",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
workspaceName,
name
FROM azure.ml_services.model_containers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.isArchived') as "is_archived",
json_extract_path_text(properties, '$.latestVersion') as "latest_version",
json_extract_path_text(properties, '$.nextVersion') as "next_version",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
workspaceName,
name
FROM azure.ml_services.model_containers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
</Tabs>
