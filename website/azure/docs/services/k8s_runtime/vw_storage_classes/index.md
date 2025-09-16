--- 
title: vw_storage_classes
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_storage_classes
  - k8s_runtime
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

Creates, updates, deletes, gets or lists a <code>vw_storage_classes</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_storage_classes</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.k8s_runtime.vw_storage_classes" /></td></tr>
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
JSON_EXTRACT(properties, '$.allowVolumeExpansion') as "allow_volume_expansion",
JSON_EXTRACT(properties, '$.mountOptions') as "mount_options",
JSON_EXTRACT(properties, '$.provisioner') as "provisioner",
JSON_EXTRACT(properties, '$.volumeBindingMode') as "volume_binding_mode",
JSON_EXTRACT(properties, '$.accessModes') as "access_modes",
JSON_EXTRACT(properties, '$.dataResilience') as "data_resilience",
JSON_EXTRACT(properties, '$.failoverSpeed') as "failover_speed",
JSON_EXTRACT(properties, '$.limitations') as "limitations",
JSON_EXTRACT(properties, '$.performance') as "performance",
JSON_EXTRACT(properties, '$.priority') as "priority",
JSON_EXTRACT(properties, '$.typeProperties') as "type_properties",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
resourceUri,
storageClassName
FROM azure.k8s_runtime.storage_classes
WHERE resourceUri = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.allowVolumeExpansion') as "allow_volume_expansion",
json_extract_path_text(properties, '$.mountOptions') as "mount_options",
json_extract_path_text(properties, '$.provisioner') as "provisioner",
json_extract_path_text(properties, '$.volumeBindingMode') as "volume_binding_mode",
json_extract_path_text(properties, '$.accessModes') as "access_modes",
json_extract_path_text(properties, '$.dataResilience') as "data_resilience",
json_extract_path_text(properties, '$.failoverSpeed') as "failover_speed",
json_extract_path_text(properties, '$.limitations') as "limitations",
json_extract_path_text(properties, '$.performance') as "performance",
json_extract_path_text(properties, '$.priority') as "priority",
json_extract_path_text(properties, '$.typeProperties') as "type_properties",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
resourceUri,
storageClassName
FROM azure.k8s_runtime.storage_classes
WHERE resourceUri = 'replace-me';
```

</TabItem>
</Tabs>
