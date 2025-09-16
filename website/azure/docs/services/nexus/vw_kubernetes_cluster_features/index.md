--- 
title: vw_kubernetes_cluster_features
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_kubernetes_cluster_features
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

Creates, updates, deletes, gets or lists a <code>vw_kubernetes_cluster_features</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_kubernetes_cluster_features</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.nexus.vw_kubernetes_cluster_features" /></td></tr>
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
JSON_EXTRACT(properties, '$.availabilityLifecycle') as "availability_lifecycle",
JSON_EXTRACT(properties, '$.detailedStatus') as "detailed_status",
JSON_EXTRACT(properties, '$.detailedStatusMessage') as "detailed_status_message",
JSON_EXTRACT(properties, '$.options') as "options",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.required') as "required",
JSON_EXTRACT(properties, '$.version') as "version",
subscriptionId,
resourceGroupName,
kubernetesClusterName,
featureName
FROM azure.nexus.kubernetes_cluster_features
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND kubernetesClusterName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.availabilityLifecycle') as "availability_lifecycle",
json_extract_path_text(properties, '$.detailedStatus') as "detailed_status",
json_extract_path_text(properties, '$.detailedStatusMessage') as "detailed_status_message",
json_extract_path_text(properties, '$.options') as "options",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.required') as "required",
json_extract_path_text(properties, '$.version') as "version",
subscriptionId,
resourceGroupName,
kubernetesClusterName,
featureName
FROM azure.nexus.kubernetes_cluster_features
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND kubernetesClusterName = 'replace-me';
```

</TabItem>
</Tabs>
