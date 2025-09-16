--- 
title: vw_cluster_services
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_cluster_services
  - mobile_packet_core
  - azure_extras
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_extras resources using SQL
custom_edit_url: null
image: /img/stackql-azure_extras-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_cluster_services</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_cluster_services</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.mobile_packet_core.vw_cluster_services" /></td></tr>
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
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.deploymentType') as "deployment_type",
JSON_EXTRACT(properties, '$.releaseVersion') as "release_version",
JSON_EXTRACT(properties, '$.clusterTypeSpecificData') as "cluster_type_specific_data",
JSON_EXTRACT(properties, '$.componentParameters') as "component_parameters",
JSON_EXTRACT(properties, '$.operationalStatus') as "operational_status",
subscriptionId,
resourceGroupName,
clusterServiceName
FROM azure_extras.mobile_packet_core.cluster_services
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.deploymentType') as "deployment_type",
json_extract_path_text(properties, '$.releaseVersion') as "release_version",
json_extract_path_text(properties, '$.clusterTypeSpecificData') as "cluster_type_specific_data",
json_extract_path_text(properties, '$.componentParameters') as "component_parameters",
json_extract_path_text(properties, '$.operationalStatus') as "operational_status",
subscriptionId,
resourceGroupName,
clusterServiceName
FROM azure_extras.mobile_packet_core.cluster_services
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
