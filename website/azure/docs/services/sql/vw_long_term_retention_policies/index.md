--- 
title: vw_long_term_retention_policies
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_long_term_retention_policies
  - sql
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

Creates, updates, deletes, gets or lists a <code>vw_long_term_retention_policies</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_long_term_retention_policies</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sql.vw_long_term_retention_policies" /></td></tr>
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
JSON_EXTRACT(properties, '$.makeBackupsImmutable') as "make_backups_immutable",
JSON_EXTRACT(properties, '$.backupStorageAccessTier') as "backup_storage_access_tier",
JSON_EXTRACT(properties, '$.weeklyRetention') as "weekly_retention",
JSON_EXTRACT(properties, '$.monthlyRetention') as "monthly_retention",
JSON_EXTRACT(properties, '$.yearlyRetention') as "yearly_retention",
JSON_EXTRACT(properties, '$.weekOfYear') as "week_of_year",
subscriptionId,
resourceGroupName,
serverName,
databaseName,
policyName
FROM azure.sql.long_term_retention_policies
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serverName = 'replace-me' AND databaseName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.makeBackupsImmutable') as "make_backups_immutable",
json_extract_path_text(properties, '$.backupStorageAccessTier') as "backup_storage_access_tier",
json_extract_path_text(properties, '$.weeklyRetention') as "weekly_retention",
json_extract_path_text(properties, '$.monthlyRetention') as "monthly_retention",
json_extract_path_text(properties, '$.yearlyRetention') as "yearly_retention",
json_extract_path_text(properties, '$.weekOfYear') as "week_of_year",
subscriptionId,
resourceGroupName,
serverName,
databaseName,
policyName
FROM azure.sql.long_term_retention_policies
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serverName = 'replace-me' AND databaseName = 'replace-me';
```

</TabItem>
</Tabs>
