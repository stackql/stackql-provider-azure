--- 
title: vw_alert_processing_rules
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_alert_processing_rules
  - alerts_management
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

Creates, updates, deletes, gets or lists a <code>vw_alert_processing_rules</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_alert_processing_rules</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.alerts_management.vw_alert_processing_rules" /></td></tr>
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
systemData as system_data,
JSON_EXTRACT(properties, '$.scopes') as "scopes",
JSON_EXTRACT(properties, '$.conditions') as "conditions",
JSON_EXTRACT(properties, '$.schedule') as "schedule",
JSON_EXTRACT(properties, '$.actions') as "actions",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.enabled') as "enabled",
subscriptionId,
resourceGroupName,
alertProcessingRuleName
FROM azure.alerts_management.alert_processing_rules
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
systemData as system_data,
json_extract_path_text(properties, '$.scopes') as "scopes",
json_extract_path_text(properties, '$.conditions') as "conditions",
json_extract_path_text(properties, '$.schedule') as "schedule",
json_extract_path_text(properties, '$.actions') as "actions",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.enabled') as "enabled",
subscriptionId,
resourceGroupName,
alertProcessingRuleName
FROM azure.alerts_management.alert_processing_rules
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
