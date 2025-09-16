--- 
title: vw_zones
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_zones
  - dns
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

Creates, updates, deletes, gets or lists a <code>vw_zones</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_zones</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.dns.vw_zones" /></td></tr>
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
systemData as system_data,
type as type,
JSON_EXTRACT(properties, '$.maxNumberOfRecordSets') as "max_number_of_record_sets",
JSON_EXTRACT(properties, '$.maxNumberOfRecordsPerRecordSet') as "max_number_of_records_per_record_set",
JSON_EXTRACT(properties, '$.numberOfRecordSets') as "number_of_record_sets",
JSON_EXTRACT(properties, '$.nameServers') as "name_servers",
JSON_EXTRACT(properties, '$.zoneType') as "zone_type",
JSON_EXTRACT(properties, '$.registrationVirtualNetworks') as "registration_virtual_networks",
JSON_EXTRACT(properties, '$.resolutionVirtualNetworks') as "resolution_virtual_networks",
JSON_EXTRACT(properties, '$.signingKeys') as "signing_keys",
subscriptionId,
resourceGroupName,
zoneName
FROM azure.dns.zones
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
etag as etag,
systemData as system_data,
type as type,
json_extract_path_text(properties, '$.maxNumberOfRecordSets') as "max_number_of_record_sets",
json_extract_path_text(properties, '$.maxNumberOfRecordsPerRecordSet') as "max_number_of_records_per_record_set",
json_extract_path_text(properties, '$.numberOfRecordSets') as "number_of_record_sets",
json_extract_path_text(properties, '$.nameServers') as "name_servers",
json_extract_path_text(properties, '$.zoneType') as "zone_type",
json_extract_path_text(properties, '$.registrationVirtualNetworks') as "registration_virtual_networks",
json_extract_path_text(properties, '$.resolutionVirtualNetworks') as "resolution_virtual_networks",
json_extract_path_text(properties, '$.signingKeys') as "signing_keys",
subscriptionId,
resourceGroupName,
zoneName
FROM azure.dns.zones
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
