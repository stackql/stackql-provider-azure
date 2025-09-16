--- 
title: vw_addresses
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_addresses
  - edge_order
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

Creates, updates, deletes, gets or lists a <code>vw_addresses</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_addresses</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.edge_order.vw_addresses" /></td></tr>
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
JSON_EXTRACT(properties, '$.addressClassification') as "address_classification",
JSON_EXTRACT(properties, '$.shippingAddress') as "shipping_address",
JSON_EXTRACT(properties, '$.contactDetails') as "contact_details",
JSON_EXTRACT(properties, '$.addressValidationStatus') as "address_validation_status",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
addressName
FROM azure_extras.edge_order.addresses
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.addressClassification') as "address_classification",
json_extract_path_text(properties, '$.shippingAddress') as "shipping_address",
json_extract_path_text(properties, '$.contactDetails') as "contact_details",
json_extract_path_text(properties, '$.addressValidationStatus') as "address_validation_status",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
addressName
FROM azure_extras.edge_order.addresses
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
