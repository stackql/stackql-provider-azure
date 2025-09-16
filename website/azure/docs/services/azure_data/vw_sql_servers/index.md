--- 
title: vw_sql_servers
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_sql_servers
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

Creates, updates, deletes, gets or lists a <code>vw_sql_servers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_sql_servers</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.azure_data.vw_sql_servers" /></td></tr>
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
JSON_EXTRACT(properties, '$.cores') as "cores",
JSON_EXTRACT(properties, '$.version') as "version",
JSON_EXTRACT(properties, '$.edition') as "edition",
JSON_EXTRACT(properties, '$.registrationID') as "registration_id",
JSON_EXTRACT(properties, '$.propertyBag') as "property_bag",
subscriptionId,
resourceGroupName,
sqlServerRegistrationName,
sqlServerName
FROM azure.azure_data.sql_servers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND sqlServerRegistrationName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.cores') as "cores",
json_extract_path_text(properties, '$.version') as "version",
json_extract_path_text(properties, '$.edition') as "edition",
json_extract_path_text(properties, '$.registrationID') as "registration_id",
json_extract_path_text(properties, '$.propertyBag') as "property_bag",
subscriptionId,
resourceGroupName,
sqlServerRegistrationName,
sqlServerName
FROM azure.azure_data.sql_servers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND sqlServerRegistrationName = 'replace-me';
```

</TabItem>
</Tabs>
