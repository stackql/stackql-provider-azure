--- 
title: vw_services
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_services
  - service_fabric
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

Creates, updates, deletes, gets or lists a <code>vw_services</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_services</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.service_fabric.vw_services" /></td></tr>
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
id as id,
name as name,
location as location,
type as type,
tags as tags,
etag as etag,
systemData as system_data,
JSON_EXTRACT(properties, '$.placementConstraints') as "placement_constraints",
JSON_EXTRACT(properties, '$.correlationScheme') as "correlation_scheme",
JSON_EXTRACT(properties, '$.serviceLoadMetrics') as "service_load_metrics",
JSON_EXTRACT(properties, '$.servicePlacementPolicies') as "service_placement_policies",
JSON_EXTRACT(properties, '$.defaultMoveCost') as "default_move_cost",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.serviceKind') as "service_kind",
JSON_EXTRACT(properties, '$.serviceTypeName') as "service_type_name",
JSON_EXTRACT(properties, '$.partitionDescription') as "partition_description",
JSON_EXTRACT(properties, '$.servicePackageActivationMode') as "service_package_activation_mode",
JSON_EXTRACT(properties, '$.serviceDnsName') as "service_dns_name",
subscriptionId,
resourceGroupName,
clusterName,
applicationName,
serviceName
FROM azure.service_fabric.services
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND clusterName = 'replace-me' AND applicationName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
tags as tags,
etag as etag,
systemData as system_data,
json_extract_path_text(properties, '$.placementConstraints') as "placement_constraints",
json_extract_path_text(properties, '$.correlationScheme') as "correlation_scheme",
json_extract_path_text(properties, '$.serviceLoadMetrics') as "service_load_metrics",
json_extract_path_text(properties, '$.servicePlacementPolicies') as "service_placement_policies",
json_extract_path_text(properties, '$.defaultMoveCost') as "default_move_cost",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.serviceKind') as "service_kind",
json_extract_path_text(properties, '$.serviceTypeName') as "service_type_name",
json_extract_path_text(properties, '$.partitionDescription') as "partition_description",
json_extract_path_text(properties, '$.servicePackageActivationMode') as "service_package_activation_mode",
json_extract_path_text(properties, '$.serviceDnsName') as "service_dns_name",
subscriptionId,
resourceGroupName,
clusterName,
applicationName,
serviceName
FROM azure.service_fabric.services
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND clusterName = 'replace-me' AND applicationName = 'replace-me';
```

</TabItem>
</Tabs>
