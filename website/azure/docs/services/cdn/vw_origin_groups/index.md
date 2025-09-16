--- 
title: vw_origin_groups
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_origin_groups
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

Creates, updates, deletes, gets or lists a <code>vw_origin_groups</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_origin_groups</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cdn.vw_origin_groups" /></td></tr>
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
JSON_EXTRACT(properties, '$.healthProbeSettings') as "health_probe_settings",
JSON_EXTRACT(properties, '$.origins') as "origins",
JSON_EXTRACT(properties, '$.trafficRestorationTimeToHealedOrNewEndpointsInMinutes') as "traffic_restoration_time_to_healed_or_new_endpoints_in_minutes",
JSON_EXTRACT(properties, '$.responseBasedOriginErrorDetectionSettings') as "response_based_origin_error_detection_settings",
JSON_EXTRACT(properties, '$.resourceState') as "resource_state",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
profileName,
endpointName,
originGroupName
FROM azure.cdn.origin_groups
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND profileName = 'replace-me' AND endpointName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.healthProbeSettings') as "health_probe_settings",
json_extract_path_text(properties, '$.origins') as "origins",
json_extract_path_text(properties, '$.trafficRestorationTimeToHealedOrNewEndpointsInMinutes') as "traffic_restoration_time_to_healed_or_new_endpoints_in_minutes",
json_extract_path_text(properties, '$.responseBasedOriginErrorDetectionSettings') as "response_based_origin_error_detection_settings",
json_extract_path_text(properties, '$.resourceState') as "resource_state",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
profileName,
endpointName,
originGroupName
FROM azure.cdn.origin_groups
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND profileName = 'replace-me' AND endpointName = 'replace-me';
```

</TabItem>
</Tabs>
