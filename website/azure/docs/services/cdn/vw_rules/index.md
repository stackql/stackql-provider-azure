--- 
title: vw_rules
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_rules
  - cdn
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

Creates, updates, deletes, gets or lists a <code>vw_rules</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_rules</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cdn.vw_rules" /></td></tr>
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
JSON_EXTRACT(properties, '$.ruleSetName') as "rule_set_name",
JSON_EXTRACT(properties, '$.order') as "order",
JSON_EXTRACT(properties, '$.conditions') as "conditions",
JSON_EXTRACT(properties, '$.actions') as "actions",
JSON_EXTRACT(properties, '$.matchProcessingBehavior') as "match_processing_behavior",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.deploymentStatus') as "deployment_status",
subscriptionId,
resourceGroupName,
profileName,
ruleSetName,
ruleName
FROM azure.cdn.rules
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND profileName = 'replace-me' AND ruleSetName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.ruleSetName') as "rule_set_name",
json_extract_path_text(properties, '$.order') as "order",
json_extract_path_text(properties, '$.conditions') as "conditions",
json_extract_path_text(properties, '$.actions') as "actions",
json_extract_path_text(properties, '$.matchProcessingBehavior') as "match_processing_behavior",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.deploymentStatus') as "deployment_status",
subscriptionId,
resourceGroupName,
profileName,
ruleSetName,
ruleName
FROM azure.cdn.rules
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND profileName = 'replace-me' AND ruleSetName = 'replace-me';
```

</TabItem>
</Tabs>
