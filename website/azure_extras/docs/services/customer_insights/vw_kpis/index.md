--- 
title: vw_kpis
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_kpis
  - customer_insights
  - azure_extras
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_extras resources using SQL
custom_edit_url: null
image: /img/stackql-azure_extras-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_kpis</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_kpis</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.customer_insights.vw_kpis" /></td></tr>
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
JSON_EXTRACT(properties, '$.entityType') as "entity_type",
JSON_EXTRACT(properties, '$.entityTypeName') as "entity_type_name",
JSON_EXTRACT(properties, '$.tenantId') as "tenant_id",
JSON_EXTRACT(properties, '$.kpiName') as "kpi_name",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.calculationWindow') as "calculation_window",
JSON_EXTRACT(properties, '$.calculationWindowFieldName') as "calculation_window_field_name",
JSON_EXTRACT(properties, '$.function') as "function",
JSON_EXTRACT(properties, '$.expression') as "expression",
JSON_EXTRACT(properties, '$.unit') as "unit",
JSON_EXTRACT(properties, '$.filter') as "filter",
JSON_EXTRACT(properties, '$.groupBy') as "group_by",
JSON_EXTRACT(properties, '$.groupByMetadata') as "group_by_metadata",
JSON_EXTRACT(properties, '$.participantProfilesMetadata') as "participant_profiles_metadata",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.thresHolds') as "thres_holds",
JSON_EXTRACT(properties, '$.aliases') as "aliases",
JSON_EXTRACT(properties, '$.extracts') as "extracts",
subscriptionId,
resourceGroupName,
hubName,
kpiName
FROM azure_extras.customer_insights.kpis
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND hubName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.entityType') as "entity_type",
json_extract_path_text(properties, '$.entityTypeName') as "entity_type_name",
json_extract_path_text(properties, '$.tenantId') as "tenant_id",
json_extract_path_text(properties, '$.kpiName') as "kpi_name",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.calculationWindow') as "calculation_window",
json_extract_path_text(properties, '$.calculationWindowFieldName') as "calculation_window_field_name",
json_extract_path_text(properties, '$.function') as "function",
json_extract_path_text(properties, '$.expression') as "expression",
json_extract_path_text(properties, '$.unit') as "unit",
json_extract_path_text(properties, '$.filter') as "filter",
json_extract_path_text(properties, '$.groupBy') as "group_by",
json_extract_path_text(properties, '$.groupByMetadata') as "group_by_metadata",
json_extract_path_text(properties, '$.participantProfilesMetadata') as "participant_profiles_metadata",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.thresHolds') as "thres_holds",
json_extract_path_text(properties, '$.aliases') as "aliases",
json_extract_path_text(properties, '$.extracts') as "extracts",
subscriptionId,
resourceGroupName,
hubName,
kpiName
FROM azure_extras.customer_insights.kpis
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND hubName = 'replace-me';
```

</TabItem>
</Tabs>
