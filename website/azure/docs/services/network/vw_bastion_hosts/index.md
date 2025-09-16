--- 
title: vw_bastion_hosts
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_bastion_hosts
  - network
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

Creates, updates, deletes, gets or lists a <code>vw_bastion_hosts</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_bastion_hosts</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_bastion_hosts" /></td></tr>
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
zones as zones,
etag as etag,
sku as sku,
type as type,
systemData as system_data,
JSON_EXTRACT(properties, '$.ipConfigurations') as "ip_configurations",
JSON_EXTRACT(properties, '$.dnsName') as "dns_name",
JSON_EXTRACT(properties, '$.virtualNetwork') as "virtual_network",
JSON_EXTRACT(properties, '$.networkAcls') as "network_acls",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.scaleUnits') as "scale_units",
JSON_EXTRACT(properties, '$.disableCopyPaste') as "disable_copy_paste",
JSON_EXTRACT(properties, '$.enableFileCopy') as "enable_file_copy",
JSON_EXTRACT(properties, '$.enableIpConnect') as "enable_ip_connect",
JSON_EXTRACT(properties, '$.enableShareableLink') as "enable_shareable_link",
JSON_EXTRACT(properties, '$.enableTunneling') as "enable_tunneling",
JSON_EXTRACT(properties, '$.enableKerberos') as "enable_kerberos",
JSON_EXTRACT(properties, '$.enableSessionRecording') as "enable_session_recording",
subscriptionId,
resourceGroupName,
bastionHostName
FROM azure.network.bastion_hosts
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
zones as zones,
etag as etag,
sku as sku,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.ipConfigurations') as "ip_configurations",
json_extract_path_text(properties, '$.dnsName') as "dns_name",
json_extract_path_text(properties, '$.virtualNetwork') as "virtual_network",
json_extract_path_text(properties, '$.networkAcls') as "network_acls",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.scaleUnits') as "scale_units",
json_extract_path_text(properties, '$.disableCopyPaste') as "disable_copy_paste",
json_extract_path_text(properties, '$.enableFileCopy') as "enable_file_copy",
json_extract_path_text(properties, '$.enableIpConnect') as "enable_ip_connect",
json_extract_path_text(properties, '$.enableShareableLink') as "enable_shareable_link",
json_extract_path_text(properties, '$.enableTunneling') as "enable_tunneling",
json_extract_path_text(properties, '$.enableKerberos') as "enable_kerberos",
json_extract_path_text(properties, '$.enableSessionRecording') as "enable_session_recording",
subscriptionId,
resourceGroupName,
bastionHostName
FROM azure.network.bastion_hosts
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
