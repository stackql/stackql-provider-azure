--- 
title: vw_customization_policies
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_customization_policies
  - vmware_cloud_simple
  - azure_isv
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_isv resources using SQL
custom_edit_url: null
image: /img/stackql-azure_isv-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_customization_policies</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_customization_policies</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.vmware_cloud_simple.vw_customization_policies" /></td></tr>
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
location as location,
type as type,
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.privateCloudId') as "private_cloud_id",
JSON_EXTRACT(properties, '$.specification') as "specification",
JSON_EXTRACT(properties, '$.type') as "type",
JSON_EXTRACT(properties, '$.version') as "version",
subscriptionId,
regionId,
pcName,
customizationPolicyName
FROM azure_isv.vmware_cloud_simple.customization_policies
WHERE subscriptionId = 'replace-me' AND regionId = 'replace-me' AND pcName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.privateCloudId') as "private_cloud_id",
json_extract_path_text(properties, '$.specification') as "specification",
json_extract_path_text(properties, '$.type') as "type",
json_extract_path_text(properties, '$.version') as "version",
subscriptionId,
regionId,
pcName,
customizationPolicyName
FROM azure_isv.vmware_cloud_simple.customization_policies
WHERE subscriptionId = 'replace-me' AND regionId = 'replace-me' AND pcName = 'replace-me';
```

</TabItem>
</Tabs>
