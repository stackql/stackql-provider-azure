--- 
title: vw_discovered_assets
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_discovered_assets
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

Creates, updates, deletes, gets or lists a <code>vw_discovered_assets</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_discovered_assets</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.device_registry.vw_discovered_assets" /></td></tr>
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
JSON_EXTRACT(properties, '$.assetEndpointProfileRef') as "asset_endpoint_profile_ref",
JSON_EXTRACT(properties, '$.discoveryId') as "discovery_id",
JSON_EXTRACT(properties, '$.version') as "version",
JSON_EXTRACT(properties, '$.manufacturer') as "manufacturer",
JSON_EXTRACT(properties, '$.manufacturerUri') as "manufacturer_uri",
JSON_EXTRACT(properties, '$.model') as "model",
JSON_EXTRACT(properties, '$.productCode') as "product_code",
JSON_EXTRACT(properties, '$.hardwareRevision') as "hardware_revision",
JSON_EXTRACT(properties, '$.softwareRevision') as "software_revision",
JSON_EXTRACT(properties, '$.documentationUri') as "documentation_uri",
JSON_EXTRACT(properties, '$.serialNumber') as "serial_number",
JSON_EXTRACT(properties, '$.defaultDatasetsConfiguration') as "default_datasets_configuration",
JSON_EXTRACT(properties, '$.defaultEventsConfiguration') as "default_events_configuration",
JSON_EXTRACT(properties, '$.defaultTopic') as "default_topic",
JSON_EXTRACT(properties, '$.datasets') as "datasets",
JSON_EXTRACT(properties, '$.events') as "events",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
discoveredAssetName
FROM azure.device_registry.discovered_assets
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
extendedLocation as extended_location,
tags as tags,
json_extract_path_text(properties, '$.assetEndpointProfileRef') as "asset_endpoint_profile_ref",
json_extract_path_text(properties, '$.discoveryId') as "discovery_id",
json_extract_path_text(properties, '$.version') as "version",
json_extract_path_text(properties, '$.manufacturer') as "manufacturer",
json_extract_path_text(properties, '$.manufacturerUri') as "manufacturer_uri",
json_extract_path_text(properties, '$.model') as "model",
json_extract_path_text(properties, '$.productCode') as "product_code",
json_extract_path_text(properties, '$.hardwareRevision') as "hardware_revision",
json_extract_path_text(properties, '$.softwareRevision') as "software_revision",
json_extract_path_text(properties, '$.documentationUri') as "documentation_uri",
json_extract_path_text(properties, '$.serialNumber') as "serial_number",
json_extract_path_text(properties, '$.defaultDatasetsConfiguration') as "default_datasets_configuration",
json_extract_path_text(properties, '$.defaultEventsConfiguration') as "default_events_configuration",
json_extract_path_text(properties, '$.defaultTopic') as "default_topic",
json_extract_path_text(properties, '$.datasets') as "datasets",
json_extract_path_text(properties, '$.events') as "events",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
discoveredAssetName
FROM azure.device_registry.discovered_assets
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
