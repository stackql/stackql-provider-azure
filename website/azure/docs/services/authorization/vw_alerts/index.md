--- 
title: vw_alerts
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_alerts
  - authorization
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

Creates, updates, deletes, gets or lists a <code>vw_alerts</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_alerts</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.authorization.vw_alerts" /></td></tr>
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
JSON_EXTRACT(properties, '$.scope') as "scope",
JSON_EXTRACT(properties, '$.isActive') as "is_active",
JSON_EXTRACT(properties, '$.incidentCount') as "incident_count",
JSON_EXTRACT(properties, '$.lastModifiedDateTime') as "last_modified_date_time",
JSON_EXTRACT(properties, '$.lastScannedDateTime') as "last_scanned_date_time",
JSON_EXTRACT(properties, '$.alertDefinition') as "alert_definition",
JSON_EXTRACT(properties, '$.alertIncidents') as "alert_incidents",
JSON_EXTRACT(properties, '$.alertConfiguration') as "alert_configuration",
scope,
alertId
FROM azure.authorization.alerts
WHERE scope = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.scope') as "scope",
json_extract_path_text(properties, '$.isActive') as "is_active",
json_extract_path_text(properties, '$.incidentCount') as "incident_count",
json_extract_path_text(properties, '$.lastModifiedDateTime') as "last_modified_date_time",
json_extract_path_text(properties, '$.lastScannedDateTime') as "last_scanned_date_time",
json_extract_path_text(properties, '$.alertDefinition') as "alert_definition",
json_extract_path_text(properties, '$.alertIncidents') as "alert_incidents",
json_extract_path_text(properties, '$.alertConfiguration') as "alert_configuration",
scope,
alertId
FROM azure.authorization.alerts
WHERE scope = 'replace-me';
```

</TabItem>
</Tabs>
