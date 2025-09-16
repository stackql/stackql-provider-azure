--- 
title: vw_configuration_stores_deleted
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_configuration_stores_deleted
  - app_configuration
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

Creates, updates, deletes, gets or lists a <code>vw_configuration_stores_deleted</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_configuration_stores_deleted</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.app_configuration.vw_configuration_stores_deleted" /></td></tr>
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
id as id,
name as name,
type as type,
JSON_EXTRACT(properties, '$.configurationStoreId') as "configuration_store_id",
JSON_EXTRACT(properties, '$.location') as "location",
JSON_EXTRACT(properties, '$.deletionDate') as "deletion_date",
JSON_EXTRACT(properties, '$.scheduledPurgeDate') as "scheduled_purge_date",
JSON_EXTRACT(properties, '$.tags') as "tags",
JSON_EXTRACT(properties, '$.purgeProtectionEnabled') as "purge_protection_enabled",
subscriptionId,
location,
configStoreName
FROM azure.app_configuration.configuration_stores_deleted
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.configurationStoreId') as "configuration_store_id",
json_extract_path_text(properties, '$.location') as "location",
json_extract_path_text(properties, '$.deletionDate') as "deletion_date",
json_extract_path_text(properties, '$.scheduledPurgeDate') as "scheduled_purge_date",
json_extract_path_text(properties, '$.tags') as "tags",
json_extract_path_text(properties, '$.purgeProtectionEnabled') as "purge_protection_enabled",
subscriptionId,
location,
configStoreName
FROM azure.app_configuration.configuration_stores_deleted
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
