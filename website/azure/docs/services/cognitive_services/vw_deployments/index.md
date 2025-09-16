--- 
title: vw_deployments
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_deployments
  - cognitive_services
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

Creates, updates, deletes, gets or lists a <code>vw_deployments</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_deployments</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cognitive_services.vw_deployments" /></td></tr>
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
sku as sku,
systemData as system_data,
etag as etag,
tags as tags,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.model') as "model",
JSON_EXTRACT(properties, '$.scaleSettings') as "scale_settings",
JSON_EXTRACT(properties, '$.capabilities') as "capabilities",
JSON_EXTRACT(properties, '$.raiPolicyName') as "rai_policy_name",
JSON_EXTRACT(properties, '$.callRateLimit') as "call_rate_limit",
JSON_EXTRACT(properties, '$.rateLimits') as "rate_limits",
JSON_EXTRACT(properties, '$.versionUpgradeOption') as "version_upgrade_option",
JSON_EXTRACT(properties, '$.dynamicThrottlingEnabled') as "dynamic_throttling_enabled",
JSON_EXTRACT(properties, '$.currentCapacity') as "current_capacity",
JSON_EXTRACT(properties, '$.capacitySettings') as "capacity_settings",
subscriptionId,
resourceGroupName,
accountName,
deploymentName
FROM azure.cognitive_services.deployments
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
sku as sku,
systemData as system_data,
etag as etag,
tags as tags,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.model') as "model",
json_extract_path_text(properties, '$.scaleSettings') as "scale_settings",
json_extract_path_text(properties, '$.capabilities') as "capabilities",
json_extract_path_text(properties, '$.raiPolicyName') as "rai_policy_name",
json_extract_path_text(properties, '$.callRateLimit') as "call_rate_limit",
json_extract_path_text(properties, '$.rateLimits') as "rate_limits",
json_extract_path_text(properties, '$.versionUpgradeOption') as "version_upgrade_option",
json_extract_path_text(properties, '$.dynamicThrottlingEnabled') as "dynamic_throttling_enabled",
json_extract_path_text(properties, '$.currentCapacity') as "current_capacity",
json_extract_path_text(properties, '$.capacitySettings') as "capacity_settings",
subscriptionId,
resourceGroupName,
accountName,
deploymentName
FROM azure.cognitive_services.deployments
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
</Tabs>
