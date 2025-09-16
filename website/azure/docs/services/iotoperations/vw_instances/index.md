--- 
title: vw_instances
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_instances
  - iotoperations
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

Creates, updates, deletes, gets or lists a <code>vw_instances</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_instances</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.iotoperations.vw_instances" /></td></tr>
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
identity as identity,
tags as tags,
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.version') as "version",
JSON_EXTRACT(properties, '$.schemaRegistryNamespace') as "schema_registry_namespace",
JSON_EXTRACT(properties, '$.components') as "components",
subscriptionId,
resourceGroupName,
instanceName
FROM azure.iotoperations.instances
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
extendedLocation as extended_location,
identity as identity,
tags as tags,
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.version') as "version",
json_extract_path_text(properties, '$.schemaRegistryNamespace') as "schema_registry_namespace",
json_extract_path_text(properties, '$.components') as "components",
subscriptionId,
resourceGroupName,
instanceName
FROM azure.iotoperations.instances
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
