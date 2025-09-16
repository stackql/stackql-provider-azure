--- 
title: vw_components
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_components
  - hybrid_network
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

Creates, updates, deletes, gets or lists a <code>vw_components</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_components</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.hybrid_network.vw_components" /></td></tr>
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
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.deploymentProfile') as "deployment_profile",
JSON_EXTRACT(properties, '$.deploymentStatus') as "deployment_status",
subscriptionId,
resourceGroupName,
networkFunctionName,
componentName
FROM azure.hybrid_network.components
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND networkFunctionName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.deploymentProfile') as "deployment_profile",
json_extract_path_text(properties, '$.deploymentStatus') as "deployment_status",
subscriptionId,
resourceGroupName,
networkFunctionName,
componentName
FROM azure.hybrid_network.components
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND networkFunctionName = 'replace-me';
```

</TabItem>
</Tabs>
