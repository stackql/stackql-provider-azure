--- 
title: vw_connection_rai_policies
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_connection_rai_policies
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

Creates, updates, deletes, gets or lists a <code>vw_connection_rai_policies</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_connection_rai_policies</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.ml_services.vw_connection_rai_policies" /></td></tr>
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
JSON_EXTRACT(properties, '$.basePolicyName') as "base_policy_name",
JSON_EXTRACT(properties, '$.completionBlocklists') as "completion_blocklists",
JSON_EXTRACT(properties, '$.contentFilters') as "content_filters",
JSON_EXTRACT(properties, '$.mode') as "mode",
JSON_EXTRACT(properties, '$.promptBlocklists') as "prompt_blocklists",
JSON_EXTRACT(properties, '$.type') as "type",
subscriptionId,
resourceGroupName,
workspaceName,
connectionName,
raiPolicyName
FROM azure.ml_services.connection_rai_policies
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me' AND connectionName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.basePolicyName') as "base_policy_name",
json_extract_path_text(properties, '$.completionBlocklists') as "completion_blocklists",
json_extract_path_text(properties, '$.contentFilters') as "content_filters",
json_extract_path_text(properties, '$.mode') as "mode",
json_extract_path_text(properties, '$.promptBlocklists') as "prompt_blocklists",
json_extract_path_text(properties, '$.type') as "type",
subscriptionId,
resourceGroupName,
workspaceName,
connectionName,
raiPolicyName
FROM azure.ml_services.connection_rai_policies
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me' AND connectionName = 'replace-me';
```

</TabItem>
</Tabs>
