--- 
title: vw_site_network_services
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_site_network_services
  - hybrid_network
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

Creates, updates, deletes, gets or lists a <code>vw_site_network_services</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_site_network_services</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.hybrid_network.vw_site_network_services" /></td></tr>
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
identity as identity,
sku as sku,
tags as tags,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.managedResourceGroupConfiguration') as "managed_resource_group_configuration",
JSON_EXTRACT(properties, '$.siteReference') as "site_reference",
JSON_EXTRACT(properties, '$.publisherName') as "publisher_name",
JSON_EXTRACT(properties, '$.publisherScope') as "publisher_scope",
JSON_EXTRACT(properties, '$.networkServiceDesignGroupName') as "network_service_design_group_name",
JSON_EXTRACT(properties, '$.networkServiceDesignVersionName') as "network_service_design_version_name",
JSON_EXTRACT(properties, '$.networkServiceDesignVersionOfferingLocation') as "network_service_design_version_offering_location",
JSON_EXTRACT(properties, '$.networkServiceDesignVersionResourceReference') as "network_service_design_version_resource_reference",
JSON_EXTRACT(properties, '$.desiredStateConfigurationGroupValueReferences') as "desired_state_configuration_group_value_references",
JSON_EXTRACT(properties, '$.lastStateNetworkServiceDesignVersionName') as "last_state_network_service_design_version_name",
JSON_EXTRACT(properties, '$.lastStateConfigurationGroupValueReferences') as "last_state_configuration_group_value_references",
subscriptionId,
resourceGroupName,
siteNetworkServiceName
FROM azure.hybrid_network.site_network_services
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
identity as identity,
sku as sku,
tags as tags,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.managedResourceGroupConfiguration') as "managed_resource_group_configuration",
json_extract_path_text(properties, '$.siteReference') as "site_reference",
json_extract_path_text(properties, '$.publisherName') as "publisher_name",
json_extract_path_text(properties, '$.publisherScope') as "publisher_scope",
json_extract_path_text(properties, '$.networkServiceDesignGroupName') as "network_service_design_group_name",
json_extract_path_text(properties, '$.networkServiceDesignVersionName') as "network_service_design_version_name",
json_extract_path_text(properties, '$.networkServiceDesignVersionOfferingLocation') as "network_service_design_version_offering_location",
json_extract_path_text(properties, '$.networkServiceDesignVersionResourceReference') as "network_service_design_version_resource_reference",
json_extract_path_text(properties, '$.desiredStateConfigurationGroupValueReferences') as "desired_state_configuration_group_value_references",
json_extract_path_text(properties, '$.lastStateNetworkServiceDesignVersionName') as "last_state_network_service_design_version_name",
json_extract_path_text(properties, '$.lastStateConfigurationGroupValueReferences') as "last_state_configuration_group_value_references",
subscriptionId,
resourceGroupName,
siteNetworkServiceName
FROM azure.hybrid_network.site_network_services
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
