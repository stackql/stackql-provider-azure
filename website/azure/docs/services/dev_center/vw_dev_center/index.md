--- 
title: vw_dev_center
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_dev_center
  - dev_center
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

Creates, updates, deletes, gets or lists a <code>vw_dev_center</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_dev_center</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.dev_center.vw_dev_center" /></td></tr>
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
identity as identity,
JSON_EXTRACT(properties, '$.planId') as "plan_id",
JSON_EXTRACT(properties, '$.encryption') as "encryption",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.projectCatalogSettings') as "project_catalog_settings",
JSON_EXTRACT(properties, '$.networkSettings') as "network_settings",
JSON_EXTRACT(properties, '$.devBoxProvisioningSettings') as "dev_box_provisioning_settings",
JSON_EXTRACT(properties, '$.restrictedResourceTypes') as "restricted_resource_types",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.devCenterUri') as "dev_center_uri",
subscriptionId,
resourceGroupName,
devCenterName
FROM azure.dev_center.dev_center
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
identity as identity,
json_extract_path_text(properties, '$.planId') as "plan_id",
json_extract_path_text(properties, '$.encryption') as "encryption",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.projectCatalogSettings') as "project_catalog_settings",
json_extract_path_text(properties, '$.networkSettings') as "network_settings",
json_extract_path_text(properties, '$.devBoxProvisioningSettings') as "dev_box_provisioning_settings",
json_extract_path_text(properties, '$.restrictedResourceTypes') as "restricted_resource_types",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.devCenterUri') as "dev_center_uri",
subscriptionId,
resourceGroupName,
devCenterName
FROM azure.dev_center.dev_center
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
