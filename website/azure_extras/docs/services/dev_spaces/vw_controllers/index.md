--- 
title: vw_controllers
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_controllers
  - dev_spaces
  - azure_extras
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_extras resources using SQL
custom_edit_url: null
image: /img/stackql-azure_extras-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_controllers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_controllers</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.dev_spaces.vw_controllers" /></td></tr>
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
sku as sku,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.hostSuffix') as "host_suffix",
JSON_EXTRACT(properties, '$.dataPlaneFqdn') as "data_plane_fqdn",
JSON_EXTRACT(properties, '$.targetContainerHostApiServerFqdn') as "target_container_host_api_server_fqdn",
JSON_EXTRACT(properties, '$.targetContainerHostResourceId') as "target_container_host_resource_id",
JSON_EXTRACT(properties, '$.targetContainerHostCredentialsBase64') as "target_container_host_credentials_base64",
subscriptionId,
resourceGroupName,
name
FROM azure_extras.dev_spaces.controllers
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
sku as sku,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.hostSuffix') as "host_suffix",
json_extract_path_text(properties, '$.dataPlaneFqdn') as "data_plane_fqdn",
json_extract_path_text(properties, '$.targetContainerHostApiServerFqdn') as "target_container_host_api_server_fqdn",
json_extract_path_text(properties, '$.targetContainerHostResourceId') as "target_container_host_resource_id",
json_extract_path_text(properties, '$.targetContainerHostCredentialsBase64') as "target_container_host_credentials_base64",
subscriptionId,
resourceGroupName,
name
FROM azure_extras.dev_spaces.controllers
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
