--- 
title: vw_trunked_networks
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_trunked_networks
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

Creates, updates, deletes, gets or lists a <code>vw_trunked_networks</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_trunked_networks</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.nexus.vw_trunked_networks" /></td></tr>
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
JSON_EXTRACT(properties, '$.associatedResourceIds') as "associated_resource_ids",
JSON_EXTRACT(properties, '$.clusterId') as "cluster_id",
JSON_EXTRACT(properties, '$.detailedStatus') as "detailed_status",
JSON_EXTRACT(properties, '$.detailedStatusMessage') as "detailed_status_message",
JSON_EXTRACT(properties, '$.hybridAksClustersAssociatedIds') as "hybrid_aks_clusters_associated_ids",
JSON_EXTRACT(properties, '$.hybridAksPluginType') as "hybrid_aks_plugin_type",
JSON_EXTRACT(properties, '$.interfaceName') as "interface_name",
JSON_EXTRACT(properties, '$.isolationDomainIds') as "isolation_domain_ids",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.virtualMachinesAssociatedIds') as "virtual_machines_associated_ids",
JSON_EXTRACT(properties, '$.vlans') as "vlans",
subscriptionId,
resourceGroupName,
trunkedNetworkName
FROM azure.nexus.trunked_networks
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
extendedLocation as extended_location,
tags as tags,
json_extract_path_text(properties, '$.associatedResourceIds') as "associated_resource_ids",
json_extract_path_text(properties, '$.clusterId') as "cluster_id",
json_extract_path_text(properties, '$.detailedStatus') as "detailed_status",
json_extract_path_text(properties, '$.detailedStatusMessage') as "detailed_status_message",
json_extract_path_text(properties, '$.hybridAksClustersAssociatedIds') as "hybrid_aks_clusters_associated_ids",
json_extract_path_text(properties, '$.hybridAksPluginType') as "hybrid_aks_plugin_type",
json_extract_path_text(properties, '$.interfaceName') as "interface_name",
json_extract_path_text(properties, '$.isolationDomainIds') as "isolation_domain_ids",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.virtualMachinesAssociatedIds') as "virtual_machines_associated_ids",
json_extract_path_text(properties, '$.vlans') as "vlans",
subscriptionId,
resourceGroupName,
trunkedNetworkName
FROM azure.nexus.trunked_networks
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
