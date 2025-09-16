--- 
title: vw_serial_ports
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_serial_ports
  - serial_console
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

Creates, updates, deletes, gets or lists a <code>vw_serial_ports</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_serial_ports</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.serial_console.vw_serial_ports" /></td></tr>
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
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.connectionState') as "connection_state",
subscriptionId,
resourceGroupName,
resourceProviderNamespace,
parentResourceType,
parentResource,
serialPort
FROM azure.serial_console.serial_ports
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.connectionState') as "connection_state",
subscriptionId,
resourceGroupName,
resourceProviderNamespace,
parentResourceType,
parentResource,
serialPort
FROM azure.serial_console.serial_ports
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
