--- 
title: vw_iot_connectors
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_iot_connectors
  - healthcare
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

Creates, updates, deletes, gets or lists a <code>vw_iot_connectors</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_iot_connectors</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.healthcare.vw_iot_connectors" /></td></tr>
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
identity as identity,
systemData as system_data,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.ingestionEndpointConfiguration') as "ingestion_endpoint_configuration",
JSON_EXTRACT(properties, '$.deviceMapping') as "device_mapping",
subscriptionId,
resourceGroupName,
workspaceName,
iotConnectorName
FROM azure_extras.healthcare.iot_connectors
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
identity as identity,
systemData as system_data,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.ingestionEndpointConfiguration') as "ingestion_endpoint_configuration",
json_extract_path_text(properties, '$.deviceMapping') as "device_mapping",
subscriptionId,
resourceGroupName,
workspaceName,
iotConnectorName
FROM azure_extras.healthcare.iot_connectors
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
</Tabs>
