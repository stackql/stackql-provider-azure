--- 
title: vw_agent_pools_upgrade_profiles
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_agent_pools_upgrade_profiles
  - aks
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

Creates, updates, deletes, gets or lists a <code>vw_agent_pools_upgrade_profiles</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_agent_pools_upgrade_profiles</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.aks.vw_agent_pools_upgrade_profiles" /></td></tr>
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
JSON_EXTRACT(properties, '$.kubernetesVersion') as "kubernetes_version",
JSON_EXTRACT(properties, '$.osType') as "os_type",
JSON_EXTRACT(properties, '$.upgrades') as "upgrades",
JSON_EXTRACT(properties, '$.latestNodeImageVersion') as "latest_node_image_version",
subscriptionId,
resourceGroupName,
resourceName,
agentPoolName
FROM azure.aks.agent_pools_upgrade_profiles
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me' AND agentPoolName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.kubernetesVersion') as "kubernetes_version",
json_extract_path_text(properties, '$.osType') as "os_type",
json_extract_path_text(properties, '$.upgrades') as "upgrades",
json_extract_path_text(properties, '$.latestNodeImageVersion') as "latest_node_image_version",
subscriptionId,
resourceGroupName,
resourceName,
agentPoolName
FROM azure.aks.agent_pools_upgrade_profiles
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me' AND agentPoolName = 'replace-me';
```

</TabItem>
</Tabs>
