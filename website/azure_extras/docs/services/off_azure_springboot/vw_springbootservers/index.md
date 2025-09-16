--- 
title: vw_springbootservers
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_springbootservers
  - off_azure_springboot
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

Creates, updates, deletes, gets or lists a <code>vw_springbootservers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_springbootservers</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.off_azure_springboot.vw_springbootservers" /></td></tr>
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
JSON_EXTRACT(properties, '$.port') as "port",
JSON_EXTRACT(properties, '$.server') as "server",
JSON_EXTRACT(properties, '$.fqdnAndIpAddressList') as "fqdn_and_ip_address_list",
JSON_EXTRACT(properties, '$.machineArmId') as "machine_arm_id",
JSON_EXTRACT(properties, '$.totalApps') as "total_apps",
JSON_EXTRACT(properties, '$.springBootApps') as "spring_boot_apps",
JSON_EXTRACT(properties, '$.errors') as "errors",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.labels') as "labels",
subscriptionId,
resourceGroupName,
siteName,
springbootserversName
FROM azure_extras.off_azure_springboot.springbootservers
WHERE subscriptionId = 'replace-me' AND siteName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.port') as "port",
json_extract_path_text(properties, '$.server') as "server",
json_extract_path_text(properties, '$.fqdnAndIpAddressList') as "fqdn_and_ip_address_list",
json_extract_path_text(properties, '$.machineArmId') as "machine_arm_id",
json_extract_path_text(properties, '$.totalApps') as "total_apps",
json_extract_path_text(properties, '$.springBootApps') as "spring_boot_apps",
json_extract_path_text(properties, '$.errors') as "errors",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.labels') as "labels",
subscriptionId,
resourceGroupName,
siteName,
springbootserversName
FROM azure_extras.off_azure_springboot.springbootservers
WHERE subscriptionId = 'replace-me' AND siteName = 'replace-me';
```

</TabItem>
</Tabs>
