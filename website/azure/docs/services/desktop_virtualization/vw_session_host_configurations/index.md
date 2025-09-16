--- 
title: vw_session_host_configurations
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_session_host_configurations
  - desktop_virtualization
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

Creates, updates, deletes, gets or lists a <code>vw_session_host_configurations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_session_host_configurations</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.desktop_virtualization.vw_session_host_configurations" /></td></tr>
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
type as type,
systemData as system_data,
JSON_EXTRACT(properties, '$.version') as "version",
JSON_EXTRACT(properties, '$.friendlyName') as "friendly_name",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.vmTags') as "vm_tags",
JSON_EXTRACT(properties, '$.vmLocation') as "vm_location",
JSON_EXTRACT(properties, '$.vmResourceGroup') as "vm_resource_group",
JSON_EXTRACT(properties, '$.vmNamePrefix') as "vm_name_prefix",
JSON_EXTRACT(properties, '$.availabilityZones') as "availability_zones",
JSON_EXTRACT(properties, '$.networkInfo') as "network_info",
JSON_EXTRACT(properties, '$.vmSizeId') as "vm_size_id",
JSON_EXTRACT(properties, '$.diskInfo') as "disk_info",
JSON_EXTRACT(properties, '$.customConfigurationScriptUrl') as "custom_configuration_script_url",
JSON_EXTRACT(properties, '$.imageInfo') as "image_info",
JSON_EXTRACT(properties, '$.domainInfo') as "domain_info",
JSON_EXTRACT(properties, '$.securityInfo') as "security_info",
JSON_EXTRACT(properties, '$.vmAdminCredentials') as "vm_admin_credentials",
JSON_EXTRACT(properties, '$.bootDiagnosticsInfo') as "boot_diagnostics_info",
subscriptionId,
resourceGroupName,
hostPoolName
FROM azure.desktop_virtualization.session_host_configurations
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND hostPoolName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.version') as "version",
json_extract_path_text(properties, '$.friendlyName') as "friendly_name",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.vmTags') as "vm_tags",
json_extract_path_text(properties, '$.vmLocation') as "vm_location",
json_extract_path_text(properties, '$.vmResourceGroup') as "vm_resource_group",
json_extract_path_text(properties, '$.vmNamePrefix') as "vm_name_prefix",
json_extract_path_text(properties, '$.availabilityZones') as "availability_zones",
json_extract_path_text(properties, '$.networkInfo') as "network_info",
json_extract_path_text(properties, '$.vmSizeId') as "vm_size_id",
json_extract_path_text(properties, '$.diskInfo') as "disk_info",
json_extract_path_text(properties, '$.customConfigurationScriptUrl') as "custom_configuration_script_url",
json_extract_path_text(properties, '$.imageInfo') as "image_info",
json_extract_path_text(properties, '$.domainInfo') as "domain_info",
json_extract_path_text(properties, '$.securityInfo') as "security_info",
json_extract_path_text(properties, '$.vmAdminCredentials') as "vm_admin_credentials",
json_extract_path_text(properties, '$.bootDiagnosticsInfo') as "boot_diagnostics_info",
subscriptionId,
resourceGroupName,
hostPoolName
FROM azure.desktop_virtualization.session_host_configurations
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND hostPoolName = 'replace-me';
```

</TabItem>
</Tabs>
