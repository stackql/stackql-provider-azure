--- 
title: vw_alert_incidents
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_alert_incidents
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

Creates, updates, deletes, gets or lists a <code>vw_alert_incidents</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_alert_incidents</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.authorization.vw_alert_incidents" /></td></tr>
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
JSON_EXTRACT(properties, '$.alertIncidentType') as "alert_incident_type",
scope,
alertId,
alertIncidentId
FROM azure.authorization.alert_incidents
WHERE scope = 'replace-me' AND alertId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.alertIncidentType') as "alert_incident_type",
scope,
alertId,
alertIncidentId
FROM azure.authorization.alert_incidents
WHERE scope = 'replace-me' AND alertId = 'replace-me';
```

</TabItem>
</Tabs>
