--- 
title: vw_asset_endpoint_profiles
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_asset_endpoint_profiles
  - device_registry
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

Creates, updates, deletes, gets or lists a <code>vw_asset_endpoint_profiles</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_asset_endpoint_profiles</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.device_registry.vw_asset_endpoint_profiles" /></td></tr>
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
JSON_EXTRACT(properties, '$.uuid') as "uuid",
JSON_EXTRACT(properties, '$.targetAddress') as "target_address",
JSON_EXTRACT(properties, '$.endpointProfileType') as "endpoint_profile_type",
JSON_EXTRACT(properties, '$.authentication') as "authentication",
JSON_EXTRACT(properties, '$.additionalConfiguration') as "additional_configuration",
JSON_EXTRACT(properties, '$.discoveredAssetEndpointProfileRef') as "discovered_asset_endpoint_profile_ref",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
assetEndpointProfileName
FROM azure.device_registry.asset_endpoint_profiles
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
extendedLocation as extended_location,
tags as tags,
json_extract_path_text(properties, '$.uuid') as "uuid",
json_extract_path_text(properties, '$.targetAddress') as "target_address",
json_extract_path_text(properties, '$.endpointProfileType') as "endpoint_profile_type",
json_extract_path_text(properties, '$.authentication') as "authentication",
json_extract_path_text(properties, '$.additionalConfiguration') as "additional_configuration",
json_extract_path_text(properties, '$.discoveredAssetEndpointProfileRef') as "discovered_asset_endpoint_profile_ref",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
assetEndpointProfileName
FROM azure.device_registry.asset_endpoint_profiles
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
