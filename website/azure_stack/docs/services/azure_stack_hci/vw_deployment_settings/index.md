--- 
title: vw_deployment_settings
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_deployment_settings
  - azure_stack_hci
  - azure_stack
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_stack resources using SQL
custom_edit_url: null
image: /img/stackql-azure_stack-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_deployment_settings</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_deployment_settings</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.azure_stack_hci.vw_deployment_settings" /></td></tr>
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
JSON_EXTRACT(properties, '$.arcNodeResourceIds') as "arc_node_resource_ids",
JSON_EXTRACT(properties, '$.deploymentMode') as "deployment_mode",
JSON_EXTRACT(properties, '$.deploymentConfiguration') as "deployment_configuration",
JSON_EXTRACT(properties, '$.reportedProperties') as "reported_properties",
subscriptionId,
resourceGroupName,
clusterName,
deploymentSettingsName
FROM azure_stack.azure_stack_hci.deployment_settings
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND clusterName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.arcNodeResourceIds') as "arc_node_resource_ids",
json_extract_path_text(properties, '$.deploymentMode') as "deployment_mode",
json_extract_path_text(properties, '$.deploymentConfiguration') as "deployment_configuration",
json_extract_path_text(properties, '$.reportedProperties') as "reported_properties",
subscriptionId,
resourceGroupName,
clusterName,
deploymentSettingsName
FROM azure_stack.azure_stack_hci.deployment_settings
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND clusterName = 'replace-me';
```

</TabItem>
</Tabs>
