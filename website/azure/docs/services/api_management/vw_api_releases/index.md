--- 
title: vw_api_releases
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_api_releases
  - api_management
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

Creates, updates, deletes, gets or lists a <code>vw_api_releases</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_api_releases</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.api_management.vw_api_releases" /></td></tr>
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
JSON_EXTRACT(properties, '$.apiId') as "api_id",
JSON_EXTRACT(properties, '$.createdDateTime') as "created_date_time",
JSON_EXTRACT(properties, '$.updatedDateTime') as "updated_date_time",
JSON_EXTRACT(properties, '$.notes') as "notes",
subscriptionId,
resourceGroupName,
serviceName,
apiId,
releaseId
FROM azure.api_management.api_releases
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me' AND apiId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.apiId') as "api_id",
json_extract_path_text(properties, '$.createdDateTime') as "created_date_time",
json_extract_path_text(properties, '$.updatedDateTime') as "updated_date_time",
json_extract_path_text(properties, '$.notes') as "notes",
subscriptionId,
resourceGroupName,
serviceName,
apiId,
releaseId
FROM azure.api_management.api_releases
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me' AND apiId = 'replace-me';
```

</TabItem>
</Tabs>
