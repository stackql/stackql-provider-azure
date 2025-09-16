--- 
title: vw_lab_plans
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_lab_plans
  - lab_services
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

Creates, updates, deletes, gets or lists a <code>vw_lab_plans</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_lab_plans</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.lab_services.vw_lab_plans" /></td></tr>
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
identity as identity,
JSON_EXTRACT(properties, '$.defaultConnectionProfile') as "default_connection_profile",
JSON_EXTRACT(properties, '$.defaultAutoShutdownProfile') as "default_auto_shutdown_profile",
JSON_EXTRACT(properties, '$.defaultNetworkProfile') as "default_network_profile",
JSON_EXTRACT(properties, '$.allowedRegions') as "allowed_regions",
JSON_EXTRACT(properties, '$.sharedGalleryId') as "shared_gallery_id",
JSON_EXTRACT(properties, '$.supportInfo') as "support_info",
JSON_EXTRACT(properties, '$.linkedLmsInstance') as "linked_lms_instance",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.resourceOperationError') as "resource_operation_error",
subscriptionId,
resourceGroupName,
labPlanName
FROM azure.lab_services.lab_plans
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
systemData as system_data,
identity as identity,
json_extract_path_text(properties, '$.defaultConnectionProfile') as "default_connection_profile",
json_extract_path_text(properties, '$.defaultAutoShutdownProfile') as "default_auto_shutdown_profile",
json_extract_path_text(properties, '$.defaultNetworkProfile') as "default_network_profile",
json_extract_path_text(properties, '$.allowedRegions') as "allowed_regions",
json_extract_path_text(properties, '$.sharedGalleryId') as "shared_gallery_id",
json_extract_path_text(properties, '$.supportInfo') as "support_info",
json_extract_path_text(properties, '$.linkedLmsInstance') as "linked_lms_instance",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.resourceOperationError') as "resource_operation_error",
subscriptionId,
resourceGroupName,
labPlanName
FROM azure.lab_services.lab_plans
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
