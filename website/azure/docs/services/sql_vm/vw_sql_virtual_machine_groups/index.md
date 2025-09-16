--- 
title: vw_sql_virtual_machine_groups
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_sql_virtual_machine_groups
  - sql_vm
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

Creates, updates, deletes, gets or lists a <code>vw_sql_virtual_machine_groups</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_sql_virtual_machine_groups</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sql_vm.vw_sql_virtual_machine_groups" /></td></tr>
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
systemData as system_data,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.sqlImageOffer') as "sql_image_offer",
JSON_EXTRACT(properties, '$.sqlImageSku') as "sql_image_sku",
JSON_EXTRACT(properties, '$.scaleType') as "scale_type",
JSON_EXTRACT(properties, '$.clusterManagerType') as "cluster_manager_type",
JSON_EXTRACT(properties, '$.clusterConfiguration') as "cluster_configuration",
JSON_EXTRACT(properties, '$.wsfcDomainProfile') as "wsfc_domain_profile",
subscriptionId,
resourceGroupName,
sqlVirtualMachineGroupName
FROM azure.sql_vm.sql_virtual_machine_groups
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
systemData as system_data,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.sqlImageOffer') as "sql_image_offer",
json_extract_path_text(properties, '$.sqlImageSku') as "sql_image_sku",
json_extract_path_text(properties, '$.scaleType') as "scale_type",
json_extract_path_text(properties, '$.clusterManagerType') as "cluster_manager_type",
json_extract_path_text(properties, '$.clusterConfiguration') as "cluster_configuration",
json_extract_path_text(properties, '$.wsfcDomainProfile') as "wsfc_domain_profile",
subscriptionId,
resourceGroupName,
sqlVirtualMachineGroupName
FROM azure.sql_vm.sql_virtual_machine_groups
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
