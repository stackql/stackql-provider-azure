--- 
title: vw_appliances
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_appliances
  - resource_connector
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

Creates, updates, deletes, gets or lists a <code>vw_appliances</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_appliances</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.resource_connector.vw_appliances" /></td></tr>
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
tags as tags,
JSON_EXTRACT(properties, '$.distro') as "distro",
JSON_EXTRACT(properties, '$.infrastructureConfig') as "infrastructure_config",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.publicKey') as "public_key",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.version') as "version",
subscriptionId,
resourceGroupName,
resourceName
FROM azure.resource_connector.appliances
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
identity as identity,
tags as tags,
json_extract_path_text(properties, '$.distro') as "distro",
json_extract_path_text(properties, '$.infrastructureConfig') as "infrastructure_config",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.publicKey') as "public_key",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.version') as "version",
subscriptionId,
resourceGroupName,
resourceName
FROM azure.resource_connector.appliances
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
