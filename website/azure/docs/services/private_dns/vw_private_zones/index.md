--- 
title: vw_private_zones
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_private_zones
  - private_dns
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

Creates, updates, deletes, gets or lists a <code>vw_private_zones</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_private_zones</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.private_dns.vw_private_zones" /></td></tr>
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
etag as etag,
tags as tags,
JSON_EXTRACT(properties, '$.maxNumberOfRecordSets') as "max_number_of_record_sets",
JSON_EXTRACT(properties, '$.numberOfRecordSets') as "number_of_record_sets",
JSON_EXTRACT(properties, '$.maxNumberOfVirtualNetworkLinks') as "max_number_of_virtual_network_links",
JSON_EXTRACT(properties, '$.numberOfVirtualNetworkLinks') as "number_of_virtual_network_links",
JSON_EXTRACT(properties, '$.maxNumberOfVirtualNetworkLinksWithRegistration') as "max_number_of_virtual_network_links_with_registration",
JSON_EXTRACT(properties, '$.numberOfVirtualNetworkLinksWithRegistration') as "number_of_virtual_network_links_with_registration",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.internalId') as "internal_id",
subscriptionId,
resourceGroupName,
privateZoneName
FROM azure.private_dns.private_zones
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
etag as etag,
tags as tags,
json_extract_path_text(properties, '$.maxNumberOfRecordSets') as "max_number_of_record_sets",
json_extract_path_text(properties, '$.numberOfRecordSets') as "number_of_record_sets",
json_extract_path_text(properties, '$.maxNumberOfVirtualNetworkLinks') as "max_number_of_virtual_network_links",
json_extract_path_text(properties, '$.numberOfVirtualNetworkLinks') as "number_of_virtual_network_links",
json_extract_path_text(properties, '$.maxNumberOfVirtualNetworkLinksWithRegistration') as "max_number_of_virtual_network_links_with_registration",
json_extract_path_text(properties, '$.numberOfVirtualNetworkLinksWithRegistration') as "number_of_virtual_network_links_with_registration",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.internalId') as "internal_id",
subscriptionId,
resourceGroupName,
privateZoneName
FROM azure.private_dns.private_zones
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
