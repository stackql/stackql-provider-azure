--- 
title: vw_prometheus_rule_groups
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_prometheus_rule_groups
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

Creates, updates, deletes, gets or lists a <code>vw_prometheus_rule_groups</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_prometheus_rule_groups</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.alerts_management.vw_prometheus_rule_groups" /></td></tr>
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
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.enabled') as "enabled",
JSON_EXTRACT(properties, '$.clusterName') as "cluster_name",
JSON_EXTRACT(properties, '$.scopes') as "scopes",
JSON_EXTRACT(properties, '$.interval') as "interval",
JSON_EXTRACT(properties, '$.rules') as "rules",
subscriptionId,
resourceGroupName,
ruleGroupName
FROM azure.alerts_management.prometheus_rule_groups
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.enabled') as "enabled",
json_extract_path_text(properties, '$.clusterName') as "cluster_name",
json_extract_path_text(properties, '$.scopes') as "scopes",
json_extract_path_text(properties, '$.interval') as "interval",
json_extract_path_text(properties, '$.rules') as "rules",
subscriptionId,
resourceGroupName,
ruleGroupName
FROM azure.alerts_management.prometheus_rule_groups
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
