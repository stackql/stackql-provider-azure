--- 
title: vw_pools
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_pools
  - devops_infrastructure
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

Creates, updates, deletes, gets or lists a <code>vw_pools</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_pools</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.devops_infrastructure.vw_pools" /></td></tr>
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
identity as identity,
tags as tags,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.maximumConcurrency') as "maximum_concurrency",
JSON_EXTRACT(properties, '$.organizationProfile') as "organization_profile",
JSON_EXTRACT(properties, '$.agentProfile') as "agent_profile",
JSON_EXTRACT(properties, '$.fabricProfile') as "fabric_profile",
JSON_EXTRACT(properties, '$.devCenterProjectResourceId') as "dev_center_project_resource_id",
subscriptionId,
resourceGroupName,
poolName
FROM azure.devops_infrastructure.pools
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
identity as identity,
tags as tags,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.maximumConcurrency') as "maximum_concurrency",
json_extract_path_text(properties, '$.organizationProfile') as "organization_profile",
json_extract_path_text(properties, '$.agentProfile') as "agent_profile",
json_extract_path_text(properties, '$.fabricProfile') as "fabric_profile",
json_extract_path_text(properties, '$.devCenterProjectResourceId') as "dev_center_project_resource_id",
subscriptionId,
resourceGroupName,
poolName
FROM azure.devops_infrastructure.pools
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
