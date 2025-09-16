--- 
title: vw_open_shift_clusters
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_open_shift_clusters
  - openshift_clusters
  - azure_isv
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_isv resources using SQL
custom_edit_url: null
image: /img/stackql-azure_isv-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_open_shift_clusters</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_open_shift_clusters</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.openshift_clusters.vw_open_shift_clusters" /></td></tr>
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
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.clusterProfile') as "cluster_profile",
JSON_EXTRACT(properties, '$.consoleProfile') as "console_profile",
JSON_EXTRACT(properties, '$.servicePrincipalProfile') as "service_principal_profile",
JSON_EXTRACT(properties, '$.networkProfile') as "network_profile",
JSON_EXTRACT(properties, '$.masterProfile') as "master_profile",
JSON_EXTRACT(properties, '$.workerProfiles') as "worker_profiles",
JSON_EXTRACT(properties, '$.workerProfilesStatus') as "worker_profiles_status",
JSON_EXTRACT(properties, '$.apiserverProfile') as "apiserver_profile",
JSON_EXTRACT(properties, '$.ingressProfiles') as "ingress_profiles",
subscriptionId,
resourceGroupName,
resourceName
FROM azure_isv.openshift_clusters.open_shift_clusters
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
systemData as system_data,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.clusterProfile') as "cluster_profile",
json_extract_path_text(properties, '$.consoleProfile') as "console_profile",
json_extract_path_text(properties, '$.servicePrincipalProfile') as "service_principal_profile",
json_extract_path_text(properties, '$.networkProfile') as "network_profile",
json_extract_path_text(properties, '$.masterProfile') as "master_profile",
json_extract_path_text(properties, '$.workerProfiles') as "worker_profiles",
json_extract_path_text(properties, '$.workerProfilesStatus') as "worker_profiles_status",
json_extract_path_text(properties, '$.apiserverProfile') as "apiserver_profile",
json_extract_path_text(properties, '$.ingressProfiles') as "ingress_profiles",
subscriptionId,
resourceGroupName,
resourceName
FROM azure_isv.openshift_clusters.open_shift_clusters
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
