--- 
title: vw_health_reports
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_health_reports
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

Creates, updates, deletes, gets or lists a <code>vw_health_reports</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_health_reports</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.security.vw_health_reports" /></td></tr>
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
JSON_EXTRACT(properties, '$.resourceDetails') as "resource_details",
JSON_EXTRACT(properties, '$.environmentDetails') as "environment_details",
JSON_EXTRACT(properties, '$.healthDataClassification') as "health_data_classification",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.affectedDefendersPlans') as "affected_defenders_plans",
JSON_EXTRACT(properties, '$.affectedDefendersSubPlans') as "affected_defenders_sub_plans",
JSON_EXTRACT(properties, '$.reportAdditionalData') as "report_additional_data",
JSON_EXTRACT(properties, '$.issues') as "issues",
resourceId,
healthReportName,
scope
FROM azure.security.health_reports
WHERE scope = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.resourceDetails') as "resource_details",
json_extract_path_text(properties, '$.environmentDetails') as "environment_details",
json_extract_path_text(properties, '$.healthDataClassification') as "health_data_classification",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.affectedDefendersPlans') as "affected_defenders_plans",
json_extract_path_text(properties, '$.affectedDefendersSubPlans') as "affected_defenders_sub_plans",
json_extract_path_text(properties, '$.reportAdditionalData') as "report_additional_data",
json_extract_path_text(properties, '$.issues') as "issues",
resourceId,
healthReportName,
scope
FROM azure.security.health_reports
WHERE scope = 'replace-me';
```

</TabItem>
</Tabs>
