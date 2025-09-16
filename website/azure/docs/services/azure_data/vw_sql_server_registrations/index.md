--- 
title: vw_sql_server_registrations
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_sql_server_registrations
  - azure_data
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

Creates, updates, deletes, gets or lists a <code>vw_sql_server_registrations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_sql_server_registrations</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.azure_data.vw_sql_server_registrations" /></td></tr>
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
systemData as system_data,
JSON_EXTRACT(properties, '$.subscriptionId') as "subscription_id",
JSON_EXTRACT(properties, '$.resourceGroup') as "resource_group",
JSON_EXTRACT(properties, '$.propertyBag') as "property_bag",
subscriptionId,
resourceGroupName,
sqlServerRegistrationName
FROM azure.azure_data.sql_server_registrations
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
systemData as system_data,
json_extract_path_text(properties, '$.subscriptionId') as "subscription_id",
json_extract_path_text(properties, '$.resourceGroup') as "resource_group",
json_extract_path_text(properties, '$.propertyBag') as "property_bag",
subscriptionId,
resourceGroupName,
sqlServerRegistrationName
FROM azure.azure_data.sql_server_registrations
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
