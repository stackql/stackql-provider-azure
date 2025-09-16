--- 
title: vw_virtual_machines
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_virtual_machines
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

Creates, updates, deletes, gets or lists a <code>vw_virtual_machines</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_virtual_machines</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.vmware_cloud_simple.vw_virtual_machines" /></td></tr>
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
tags as tags,
type as type,
JSON_EXTRACT(properties, '$.amountOfRam') as "amount_of_ram",
JSON_EXTRACT(properties, '$.controllers') as "controllers",
JSON_EXTRACT(properties, '$.customization') as "customization",
JSON_EXTRACT(properties, '$.disks') as "disks",
JSON_EXTRACT(properties, '$.dnsname') as "dnsname",
JSON_EXTRACT(properties, '$.exposeToGuestVM') as "expose_to_guest_vm",
JSON_EXTRACT(properties, '$.folder') as "folder",
JSON_EXTRACT(properties, '$.guestOS') as "guest_os",
JSON_EXTRACT(properties, '$.guestOSType') as "guest_os_type",
JSON_EXTRACT(properties, '$.nics') as "nics",
JSON_EXTRACT(properties, '$.numberOfCores') as "number_of_cores",
JSON_EXTRACT(properties, '$.password') as "password",
JSON_EXTRACT(properties, '$.privateCloudId') as "private_cloud_id",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.publicIP') as "public_ip",
JSON_EXTRACT(properties, '$.resourcePool') as "resource_pool",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.templateId') as "template_id",
JSON_EXTRACT(properties, '$.username') as "username",
JSON_EXTRACT(properties, '$.vSphereNetworks') as "v_sphere_networks",
JSON_EXTRACT(properties, '$.vmId') as "vm_id",
JSON_EXTRACT(properties, '$.vmwaretools') as "vmwaretools",
subscriptionId,
resourceGroupName,
virtualMachineName
FROM azure_isv.vmware_cloud_simple.virtual_machines
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
tags as tags,
type as type,
json_extract_path_text(properties, '$.amountOfRam') as "amount_of_ram",
json_extract_path_text(properties, '$.controllers') as "controllers",
json_extract_path_text(properties, '$.customization') as "customization",
json_extract_path_text(properties, '$.disks') as "disks",
json_extract_path_text(properties, '$.dnsname') as "dnsname",
json_extract_path_text(properties, '$.exposeToGuestVM') as "expose_to_guest_vm",
json_extract_path_text(properties, '$.folder') as "folder",
json_extract_path_text(properties, '$.guestOS') as "guest_os",
json_extract_path_text(properties, '$.guestOSType') as "guest_os_type",
json_extract_path_text(properties, '$.nics') as "nics",
json_extract_path_text(properties, '$.numberOfCores') as "number_of_cores",
json_extract_path_text(properties, '$.password') as "password",
json_extract_path_text(properties, '$.privateCloudId') as "private_cloud_id",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.publicIP') as "public_ip",
json_extract_path_text(properties, '$.resourcePool') as "resource_pool",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.templateId') as "template_id",
json_extract_path_text(properties, '$.username') as "username",
json_extract_path_text(properties, '$.vSphereNetworks') as "v_sphere_networks",
json_extract_path_text(properties, '$.vmId') as "vm_id",
json_extract_path_text(properties, '$.vmwaretools') as "vmwaretools",
subscriptionId,
resourceGroupName,
virtualMachineName
FROM azure_isv.vmware_cloud_simple.virtual_machines
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
