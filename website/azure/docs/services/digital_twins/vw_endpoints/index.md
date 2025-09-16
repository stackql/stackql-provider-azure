--- 
title: vw_endpoints
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_endpoints
  - digital_twins
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

Creates, updates, deletes, gets or lists a <code>vw_endpoints</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_endpoints</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.digital_twins.vw_endpoints" /></td></tr>
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
type as type,
systemData as system_data,
JSON_EXTRACT(properties, '$.endpointType') as "endpoint_type",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.createdTime') as "created_time",
JSON_EXTRACT(properties, '$.authenticationType') as "authentication_type",
JSON_EXTRACT(properties, '$.deadLetterSecret') as "dead_letter_secret",
JSON_EXTRACT(properties, '$.deadLetterUri') as "dead_letter_uri",
JSON_EXTRACT(properties, '$.identity') as "identity",
subscriptionId,
resourceGroupName,
resourceName,
endpointName
FROM azure.digital_twins.endpoints
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.endpointType') as "endpoint_type",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.createdTime') as "created_time",
json_extract_path_text(properties, '$.authenticationType') as "authentication_type",
json_extract_path_text(properties, '$.deadLetterSecret') as "dead_letter_secret",
json_extract_path_text(properties, '$.deadLetterUri') as "dead_letter_uri",
json_extract_path_text(properties, '$.identity') as "identity",
subscriptionId,
resourceGroupName,
resourceName,
endpointName
FROM azure.digital_twins.endpoints
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me';
```

</TabItem>
</Tabs>
