--- 
title: vw_pricings
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_pricings
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

Creates, updates, deletes, gets or lists a <code>vw_pricings</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_pricings</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.security.vw_pricings" /></td></tr>
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
JSON_EXTRACT(properties, '$.pricingTier') as "pricing_tier",
JSON_EXTRACT(properties, '$.subPlan') as "sub_plan",
JSON_EXTRACT(properties, '$.freeTrialRemainingTime') as "free_trial_remaining_time",
JSON_EXTRACT(properties, '$.enablementTime') as "enablement_time",
JSON_EXTRACT(properties, '$.enforce') as "enforce",
JSON_EXTRACT(properties, '$.inherited') as "inherited",
JSON_EXTRACT(properties, '$.inheritedFrom') as "inherited_from",
JSON_EXTRACT(properties, '$.resourcesCoverageStatus') as "resources_coverage_status",
JSON_EXTRACT(properties, '$.extensions') as "extensions",
JSON_EXTRACT(properties, '$.deprecated') as "deprecated",
JSON_EXTRACT(properties, '$.replacedBy') as "replaced_by",
scopeId,
pricingName
FROM azure.security.pricings
WHERE scopeId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.pricingTier') as "pricing_tier",
json_extract_path_text(properties, '$.subPlan') as "sub_plan",
json_extract_path_text(properties, '$.freeTrialRemainingTime') as "free_trial_remaining_time",
json_extract_path_text(properties, '$.enablementTime') as "enablement_time",
json_extract_path_text(properties, '$.enforce') as "enforce",
json_extract_path_text(properties, '$.inherited') as "inherited",
json_extract_path_text(properties, '$.inheritedFrom') as "inherited_from",
json_extract_path_text(properties, '$.resourcesCoverageStatus') as "resources_coverage_status",
json_extract_path_text(properties, '$.extensions') as "extensions",
json_extract_path_text(properties, '$.deprecated') as "deprecated",
json_extract_path_text(properties, '$.replacedBy') as "replaced_by",
scopeId,
pricingName
FROM azure.security.pricings
WHERE scopeId = 'replace-me';
```

</TabItem>
</Tabs>
