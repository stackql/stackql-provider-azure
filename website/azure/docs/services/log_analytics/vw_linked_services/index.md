--- 
title: vw_linked_services
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_linked_services
  - log_analytics
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

Creates, updates, deletes, gets or lists a <code>vw_linked_services</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_linked_services</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.log_analytics.vw_linked_services" /></td></tr>
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
tags as tags,
JSON_EXTRACT(properties, '$.resourceId') as "resource_id",
JSON_EXTRACT(properties, '$.writeAccessResourceId') as "write_access_resource_id",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
workspaceName,
linkedServiceName
FROM azure.log_analytics.linked_services
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
tags as tags,
json_extract_path_text(properties, '$.resourceId') as "resource_id",
json_extract_path_text(properties, '$.writeAccessResourceId') as "write_access_resource_id",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
workspaceName,
linkedServiceName
FROM azure.log_analytics.linked_services
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
</Tabs>
