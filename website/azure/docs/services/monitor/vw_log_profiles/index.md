--- 
title: vw_log_profiles
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_log_profiles
  - monitor
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

Creates, updates, deletes, gets or lists a <code>vw_log_profiles</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_log_profiles</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.monitor.vw_log_profiles" /></td></tr>
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
location as location,
type as type,
tags as tags,
JSON_EXTRACT(properties, '$.storageAccountId') as "storage_account_id",
JSON_EXTRACT(properties, '$.serviceBusRuleId') as "service_bus_rule_id",
JSON_EXTRACT(properties, '$.locations') as "locations",
JSON_EXTRACT(properties, '$.categories') as "categories",
JSON_EXTRACT(properties, '$.retentionPolicy') as "retention_policy",
subscriptionId,
logProfileName
FROM azure.monitor.log_profiles
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
tags as tags,
json_extract_path_text(properties, '$.storageAccountId') as "storage_account_id",
json_extract_path_text(properties, '$.serviceBusRuleId') as "service_bus_rule_id",
json_extract_path_text(properties, '$.locations') as "locations",
json_extract_path_text(properties, '$.categories') as "categories",
json_extract_path_text(properties, '$.retentionPolicy') as "retention_policy",
subscriptionId,
logProfileName
FROM azure.monitor.log_profiles
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
