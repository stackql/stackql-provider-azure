--- 
title: vw_services
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_services
  - service_fabric_mesh
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
<tr><td><b>Id</b></td><td><CopyableCode code="azure.service_fabric_mesh.vw_services" /></td></tr>
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
type as type,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.osType') as "os_type",
JSON_EXTRACT(properties, '$.codePackages') as "code_packages",
JSON_EXTRACT(properties, '$.networkRefs') as "network_refs",
JSON_EXTRACT(properties, '$.diagnostics') as "diagnostics",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.replicaCount') as "replica_count",
JSON_EXTRACT(properties, '$.autoScalingPolicies') as "auto_scaling_policies",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.statusDetails') as "status_details",
JSON_EXTRACT(properties, '$.healthState') as "health_state",
JSON_EXTRACT(properties, '$.unhealthyEvaluation') as "unhealthy_evaluation",
subscriptionId,
resourceGroupName,
applicationResourceName,
serviceResourceName
FROM azure.service_fabric_mesh.services
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND applicationResourceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.osType') as "os_type",
json_extract_path_text(properties, '$.codePackages') as "code_packages",
json_extract_path_text(properties, '$.networkRefs') as "network_refs",
json_extract_path_text(properties, '$.diagnostics') as "diagnostics",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.replicaCount') as "replica_count",
json_extract_path_text(properties, '$.autoScalingPolicies') as "auto_scaling_policies",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.statusDetails') as "status_details",
json_extract_path_text(properties, '$.healthState') as "health_state",
json_extract_path_text(properties, '$.unhealthyEvaluation') as "unhealthy_evaluation",
subscriptionId,
resourceGroupName,
applicationResourceName,
serviceResourceName
FROM azure.service_fabric_mesh.services
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND applicationResourceName = 'replace-me';
```

</TabItem>
</Tabs>
