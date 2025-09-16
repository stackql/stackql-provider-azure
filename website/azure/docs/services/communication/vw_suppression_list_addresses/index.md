--- 
title: vw_suppression_list_addresses
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_suppression_list_addresses
  - communication
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

Creates, updates, deletes, gets or lists a <code>vw_suppression_list_addresses</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_suppression_list_addresses</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.communication.vw_suppression_list_addresses" /></td></tr>
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
JSON_EXTRACT(properties, '$.email') as "email",
JSON_EXTRACT(properties, '$.firstName') as "first_name",
JSON_EXTRACT(properties, '$.lastName') as "last_name",
JSON_EXTRACT(properties, '$.notes') as "notes",
JSON_EXTRACT(properties, '$.lastModified') as "last_modified",
JSON_EXTRACT(properties, '$.dataLocation') as "data_location",
subscriptionId,
resourceGroupName,
emailServiceName,
domainName,
suppressionListName,
addressId
FROM azure.communication.suppression_list_addresses
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND emailServiceName = 'replace-me' AND domainName = 'replace-me' AND suppressionListName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.email') as "email",
json_extract_path_text(properties, '$.firstName') as "first_name",
json_extract_path_text(properties, '$.lastName') as "last_name",
json_extract_path_text(properties, '$.notes') as "notes",
json_extract_path_text(properties, '$.lastModified') as "last_modified",
json_extract_path_text(properties, '$.dataLocation') as "data_location",
subscriptionId,
resourceGroupName,
emailServiceName,
domainName,
suppressionListName,
addressId
FROM azure.communication.suppression_list_addresses
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND emailServiceName = 'replace-me' AND domainName = 'replace-me' AND suppressionListName = 'replace-me';
```

</TabItem>
</Tabs>
