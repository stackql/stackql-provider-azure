--- 
title: vw_postgres_instances
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_postgres_instances
  - azure_arc_data
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

Creates, updates, deletes, gets or lists a <code>vw_postgres_instances</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_postgres_instances</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.azure_arc_data.vw_postgres_instances" /></td></tr>
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
extendedLocation as extended_location,
sku as sku,
JSON_EXTRACT(properties, '$.dataControllerId') as "data_controller_id",
JSON_EXTRACT(properties, '$.admin') as "admin",
JSON_EXTRACT(properties, '$.basicLoginInformation') as "basic_login_information",
JSON_EXTRACT(properties, '$.k8sRaw') as "k8s_raw",
JSON_EXTRACT(properties, '$.lastUploadedDate') as "last_uploaded_date",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
postgresInstanceName
FROM azure.azure_arc_data.postgres_instances
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
extendedLocation as extended_location,
sku as sku,
json_extract_path_text(properties, '$.dataControllerId') as "data_controller_id",
json_extract_path_text(properties, '$.admin') as "admin",
json_extract_path_text(properties, '$.basicLoginInformation') as "basic_login_information",
json_extract_path_text(properties, '$.k8sRaw') as "k8s_raw",
json_extract_path_text(properties, '$.lastUploadedDate') as "last_uploaded_date",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
postgresInstanceName
FROM azure.azure_arc_data.postgres_instances
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
