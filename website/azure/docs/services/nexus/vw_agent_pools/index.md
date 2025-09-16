--- 
title: vw_agent_pools
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_agent_pools
  - nexus
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

Creates, updates, deletes, gets or lists a <code>vw_agent_pools</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_agent_pools</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.nexus.vw_agent_pools" /></td></tr>
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
extendedLocation as extended_location,
tags as tags,
JSON_EXTRACT(properties, '$.administratorConfiguration') as "administrator_configuration",
JSON_EXTRACT(properties, '$.agentOptions') as "agent_options",
JSON_EXTRACT(properties, '$.attachedNetworkConfiguration') as "attached_network_configuration",
JSON_EXTRACT(properties, '$.availabilityZones') as "availability_zones",
JSON_EXTRACT(properties, '$.count') as "count",
JSON_EXTRACT(properties, '$.detailedStatus') as "detailed_status",
JSON_EXTRACT(properties, '$.detailedStatusMessage') as "detailed_status_message",
JSON_EXTRACT(properties, '$.kubernetesVersion') as "kubernetes_version",
JSON_EXTRACT(properties, '$.labels') as "labels",
JSON_EXTRACT(properties, '$.mode') as "mode",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.taints') as "taints",
JSON_EXTRACT(properties, '$.upgradeSettings') as "upgrade_settings",
JSON_EXTRACT(properties, '$.vmSkuName') as "vm_sku_name",
subscriptionId,
resourceGroupName,
kubernetesClusterName,
agentPoolName
FROM azure.nexus.agent_pools
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND kubernetesClusterName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
extendedLocation as extended_location,
tags as tags,
json_extract_path_text(properties, '$.administratorConfiguration') as "administrator_configuration",
json_extract_path_text(properties, '$.agentOptions') as "agent_options",
json_extract_path_text(properties, '$.attachedNetworkConfiguration') as "attached_network_configuration",
json_extract_path_text(properties, '$.availabilityZones') as "availability_zones",
json_extract_path_text(properties, '$.count') as "count",
json_extract_path_text(properties, '$.detailedStatus') as "detailed_status",
json_extract_path_text(properties, '$.detailedStatusMessage') as "detailed_status_message",
json_extract_path_text(properties, '$.kubernetesVersion') as "kubernetes_version",
json_extract_path_text(properties, '$.labels') as "labels",
json_extract_path_text(properties, '$.mode') as "mode",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.taints') as "taints",
json_extract_path_text(properties, '$.upgradeSettings') as "upgrade_settings",
json_extract_path_text(properties, '$.vmSkuName') as "vm_sku_name",
subscriptionId,
resourceGroupName,
kubernetesClusterName,
agentPoolName
FROM azure.nexus.agent_pools
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND kubernetesClusterName = 'replace-me';
```

</TabItem>
</Tabs>
