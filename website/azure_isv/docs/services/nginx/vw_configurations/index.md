--- 
title: vw_configurations
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_configurations
  - nginx
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

Creates, updates, deletes, gets or lists a <code>vw_configurations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_configurations</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.nginx.vw_configurations" /></td></tr>
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
systemData as system_data,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.files') as "files",
JSON_EXTRACT(properties, '$.protectedFiles') as "protected_files",
JSON_EXTRACT(properties, '$.package') as "package",
JSON_EXTRACT(properties, '$.rootFile') as "root_file",
subscriptionId,
resourceGroupName,
deploymentName,
configurationName
FROM azure_isv.nginx.configurations
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND deploymentName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.files') as "files",
json_extract_path_text(properties, '$.protectedFiles') as "protected_files",
json_extract_path_text(properties, '$.package') as "package",
json_extract_path_text(properties, '$.rootFile') as "root_file",
subscriptionId,
resourceGroupName,
deploymentName,
configurationName
FROM azure_isv.nginx.configurations
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND deploymentName = 'replace-me';
```

</TabItem>
</Tabs>
