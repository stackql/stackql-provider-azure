--- 
title: vw_afd_origin_groups
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_afd_origin_groups
  - cdn
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

Creates, updates, deletes, gets or lists a <code>vw_afd_origin_groups</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_afd_origin_groups</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cdn.vw_afd_origin_groups" /></td></tr>
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
JSON_EXTRACT(properties, '$.profileName') as "profile_name",
JSON_EXTRACT(properties, '$.loadBalancingSettings') as "load_balancing_settings",
JSON_EXTRACT(properties, '$.healthProbeSettings') as "health_probe_settings",
JSON_EXTRACT(properties, '$.trafficRestorationTimeToHealedOrNewEndpointsInMinutes') as "traffic_restoration_time_to_healed_or_new_endpoints_in_minutes",
JSON_EXTRACT(properties, '$.sessionAffinityState') as "session_affinity_state",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.deploymentStatus') as "deployment_status",
subscriptionId,
resourceGroupName,
profileName,
originGroupName
FROM azure.cdn.afd_origin_groups
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND profileName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.profileName') as "profile_name",
json_extract_path_text(properties, '$.loadBalancingSettings') as "load_balancing_settings",
json_extract_path_text(properties, '$.healthProbeSettings') as "health_probe_settings",
json_extract_path_text(properties, '$.trafficRestorationTimeToHealedOrNewEndpointsInMinutes') as "traffic_restoration_time_to_healed_or_new_endpoints_in_minutes",
json_extract_path_text(properties, '$.sessionAffinityState') as "session_affinity_state",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.deploymentStatus') as "deployment_status",
subscriptionId,
resourceGroupName,
profileName,
originGroupName
FROM azure.cdn.afd_origin_groups
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND profileName = 'replace-me';
```

</TabItem>
</Tabs>
