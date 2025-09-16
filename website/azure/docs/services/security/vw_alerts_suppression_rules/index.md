--- 
title: vw_alerts_suppression_rules
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_alerts_suppression_rules
  - security
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

Creates, updates, deletes, gets or lists a <code>vw_alerts_suppression_rules</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_alerts_suppression_rules</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.security.vw_alerts_suppression_rules" /></td></tr>
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
systemData as system_data,
JSON_EXTRACT(properties, '$.alertType') as "alert_type",
JSON_EXTRACT(properties, '$.lastModifiedUtc') as "last_modified_utc",
JSON_EXTRACT(properties, '$.expirationDateUtc') as "expiration_date_utc",
JSON_EXTRACT(properties, '$.reason') as "reason",
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.comment') as "comment",
JSON_EXTRACT(properties, '$.suppressionAlertsScope') as "suppression_alerts_scope",
subscriptionId,
alertsSuppressionRuleName
FROM azure.security.alerts_suppression_rules
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.alertType') as "alert_type",
json_extract_path_text(properties, '$.lastModifiedUtc') as "last_modified_utc",
json_extract_path_text(properties, '$.expirationDateUtc') as "expiration_date_utc",
json_extract_path_text(properties, '$.reason') as "reason",
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.comment') as "comment",
json_extract_path_text(properties, '$.suppressionAlertsScope') as "suppression_alerts_scope",
subscriptionId,
alertsSuppressionRuleName
FROM azure.security.alerts_suppression_rules
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
