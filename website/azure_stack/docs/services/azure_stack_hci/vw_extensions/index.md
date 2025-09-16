--- 
title: vw_extensions
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_extensions
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

Creates, updates, deletes, gets or lists a <code>vw_extensions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_extensions</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.azure_stack_hci.vw_extensions" /></td></tr>
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
JSON_EXTRACT(properties, '$.extensionParameters') as "extension_parameters",
JSON_EXTRACT(properties, '$.aggregateState') as "aggregate_state",
JSON_EXTRACT(properties, '$.perNodeExtensionDetails') as "per_node_extension_details",
JSON_EXTRACT(properties, '$.managedBy') as "managed_by",
subscriptionId,
resourceGroupName,
clusterName,
arcSettingName,
extensionName
FROM azure_stack.azure_stack_hci.extensions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND clusterName = 'replace-me' AND arcSettingName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.extensionParameters') as "extension_parameters",
json_extract_path_text(properties, '$.aggregateState') as "aggregate_state",
json_extract_path_text(properties, '$.perNodeExtensionDetails') as "per_node_extension_details",
json_extract_path_text(properties, '$.managedBy') as "managed_by",
subscriptionId,
resourceGroupName,
clusterName,
arcSettingName,
extensionName
FROM azure_stack.azure_stack_hci.extensions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND clusterName = 'replace-me' AND arcSettingName = 'replace-me';
```

</TabItem>
</Tabs>
