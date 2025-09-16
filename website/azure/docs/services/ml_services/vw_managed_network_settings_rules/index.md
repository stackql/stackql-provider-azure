--- 
title: vw_managed_network_settings_rules
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_managed_network_settings_rules
  - ml_services
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

Creates, updates, deletes, gets or lists a <code>vw_managed_network_settings_rules</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_managed_network_settings_rules</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.ml_services.vw_managed_network_settings_rules" /></td></tr>
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
JSON_EXTRACT(properties, '$.category') as "category",
JSON_EXTRACT(properties, '$.parentRuleNames') as "parent_rule_names",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.type') as "type",
subscriptionId,
resourceGroupName,
workspaceName,
ruleName
FROM azure.ml_services.managed_network_settings_rules
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.category') as "category",
json_extract_path_text(properties, '$.parentRuleNames') as "parent_rule_names",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.type') as "type",
subscriptionId,
resourceGroupName,
workspaceName,
ruleName
FROM azure.ml_services.managed_network_settings_rules
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
</Tabs>
