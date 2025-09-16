--- 
title: vw_load_balancer_probes
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_load_balancer_probes
  - network
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

Creates, updates, deletes, gets or lists a <code>vw_load_balancer_probes</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_load_balancer_probes</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_load_balancer_probes" /></td></tr>
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
etag as etag,
type as type,
JSON_EXTRACT(properties, '$.loadBalancingRules') as "load_balancing_rules",
JSON_EXTRACT(properties, '$.protocol') as "protocol",
JSON_EXTRACT(properties, '$.port') as "port",
JSON_EXTRACT(properties, '$.intervalInSeconds') as "interval_in_seconds",
JSON_EXTRACT(properties, '$.noHealthyBackendsBehavior') as "no_healthy_backends_behavior",
JSON_EXTRACT(properties, '$.numberOfProbes') as "number_of_probes",
JSON_EXTRACT(properties, '$.probeThreshold') as "probe_threshold",
JSON_EXTRACT(properties, '$.requestPath') as "request_path",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
loadBalancerName,
probeName
FROM azure.network.load_balancer_probes
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND loadBalancerName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
etag as etag,
type as type,
json_extract_path_text(properties, '$.loadBalancingRules') as "load_balancing_rules",
json_extract_path_text(properties, '$.protocol') as "protocol",
json_extract_path_text(properties, '$.port') as "port",
json_extract_path_text(properties, '$.intervalInSeconds') as "interval_in_seconds",
json_extract_path_text(properties, '$.noHealthyBackendsBehavior') as "no_healthy_backends_behavior",
json_extract_path_text(properties, '$.numberOfProbes') as "number_of_probes",
json_extract_path_text(properties, '$.probeThreshold') as "probe_threshold",
json_extract_path_text(properties, '$.requestPath') as "request_path",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
loadBalancerName,
probeName
FROM azure.network.load_balancer_probes
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND loadBalancerName = 'replace-me';
```

</TabItem>
</Tabs>
