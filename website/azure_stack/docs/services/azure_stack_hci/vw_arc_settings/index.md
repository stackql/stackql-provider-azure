--- 
title: vw_arc_settings
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_arc_settings
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

Creates, updates, deletes, gets or lists a <code>vw_arc_settings</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_arc_settings</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.azure_stack_hci.vw_arc_settings" /></td></tr>
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
JSON_EXTRACT(properties, '$.arcInstanceResourceGroup') as "arc_instance_resource_group",
JSON_EXTRACT(properties, '$.arcApplicationClientId') as "arc_application_client_id",
JSON_EXTRACT(properties, '$.arcApplicationTenantId') as "arc_application_tenant_id",
JSON_EXTRACT(properties, '$.arcServicePrincipalObjectId') as "arc_service_principal_object_id",
JSON_EXTRACT(properties, '$.arcApplicationObjectId') as "arc_application_object_id",
JSON_EXTRACT(properties, '$.aggregateState') as "aggregate_state",
JSON_EXTRACT(properties, '$.perNodeDetails') as "per_node_details",
JSON_EXTRACT(properties, '$.connectivityProperties') as "connectivity_properties",
JSON_EXTRACT(properties, '$.defaultExtensions') as "default_extensions",
subscriptionId,
resourceGroupName,
clusterName,
arcSettingName
FROM azure_stack.azure_stack_hci.arc_settings
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND clusterName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.arcInstanceResourceGroup') as "arc_instance_resource_group",
json_extract_path_text(properties, '$.arcApplicationClientId') as "arc_application_client_id",
json_extract_path_text(properties, '$.arcApplicationTenantId') as "arc_application_tenant_id",
json_extract_path_text(properties, '$.arcServicePrincipalObjectId') as "arc_service_principal_object_id",
json_extract_path_text(properties, '$.arcApplicationObjectId') as "arc_application_object_id",
json_extract_path_text(properties, '$.aggregateState') as "aggregate_state",
json_extract_path_text(properties, '$.perNodeDetails') as "per_node_details",
json_extract_path_text(properties, '$.connectivityProperties') as "connectivity_properties",
json_extract_path_text(properties, '$.defaultExtensions') as "default_extensions",
subscriptionId,
resourceGroupName,
clusterName,
arcSettingName
FROM azure_stack.azure_stack_hci.arc_settings
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND clusterName = 'replace-me';
```

</TabItem>
</Tabs>
