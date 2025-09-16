--- 
title: vw_deleted_services
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_deleted_services
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

Creates, updates, deletes, gets or lists a <code>vw_deleted_services</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_deleted_services</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.api_management.vw_deleted_services" /></td></tr>
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
JSON_EXTRACT(properties, '$.serviceId') as "service_id",
JSON_EXTRACT(properties, '$.scheduledPurgeDate') as "scheduled_purge_date",
JSON_EXTRACT(properties, '$.deletionDate') as "deletion_date",
subscriptionId,
location,
serviceName
FROM azure.api_management.deleted_services
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
json_extract_path_text(properties, '$.serviceId') as "service_id",
json_extract_path_text(properties, '$.scheduledPurgeDate') as "scheduled_purge_date",
json_extract_path_text(properties, '$.deletionDate') as "deletion_date",
subscriptionId,
location,
serviceName
FROM azure.api_management.deleted_services
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
