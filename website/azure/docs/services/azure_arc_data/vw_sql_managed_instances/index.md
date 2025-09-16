--- 
title: vw_sql_managed_instances
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_sql_managed_instances
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

Creates, updates, deletes, gets or lists a <code>vw_sql_managed_instances</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_sql_managed_instances</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.azure_arc_data.vw_sql_managed_instances" /></td></tr>
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
JSON_EXTRACT(properties, '$.startTime') as "start_time",
JSON_EXTRACT(properties, '$.endTime') as "end_time",
JSON_EXTRACT(properties, '$.k8sRaw') as "k8s_raw",
JSON_EXTRACT(properties, '$.basicLoginInformation') as "basic_login_information",
JSON_EXTRACT(properties, '$.lastUploadedDate') as "last_uploaded_date",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.activeDirectoryInformation') as "active_directory_information",
JSON_EXTRACT(properties, '$.licenseType') as "license_type",
JSON_EXTRACT(properties, '$.clusterId') as "cluster_id",
JSON_EXTRACT(properties, '$.extensionId') as "extension_id",
subscriptionId,
resourceGroupName,
sqlManagedInstanceName
FROM azure.azure_arc_data.sql_managed_instances
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
json_extract_path_text(properties, '$.startTime') as "start_time",
json_extract_path_text(properties, '$.endTime') as "end_time",
json_extract_path_text(properties, '$.k8sRaw') as "k8s_raw",
json_extract_path_text(properties, '$.basicLoginInformation') as "basic_login_information",
json_extract_path_text(properties, '$.lastUploadedDate') as "last_uploaded_date",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.activeDirectoryInformation') as "active_directory_information",
json_extract_path_text(properties, '$.licenseType') as "license_type",
json_extract_path_text(properties, '$.clusterId') as "cluster_id",
json_extract_path_text(properties, '$.extensionId') as "extension_id",
subscriptionId,
resourceGroupName,
sqlManagedInstanceName
FROM azure.azure_arc_data.sql_managed_instances
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
