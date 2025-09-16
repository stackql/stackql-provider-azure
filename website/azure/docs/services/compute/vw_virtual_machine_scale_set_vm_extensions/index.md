--- 
title: vw_virtual_machine_scale_set_vm_extensions
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_virtual_machine_scale_set_vm_extensions
  - compute
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

Creates, updates, deletes, gets or lists a <code>vw_virtual_machine_scale_set_vm_extensions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_virtual_machine_scale_set_vm_extensions</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.compute.vw_virtual_machine_scale_set_vm_extensions" /></td></tr>
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
JSON_EXTRACT(properties, '$.forceUpdateTag') as "force_update_tag",
JSON_EXTRACT(properties, '$.publisher') as "publisher",
JSON_EXTRACT(properties, '$.type') as "type",
JSON_EXTRACT(properties, '$.typeHandlerVersion') as "type_handler_version",
JSON_EXTRACT(properties, '$.autoUpgradeMinorVersion') as "auto_upgrade_minor_version",
JSON_EXTRACT(properties, '$.enableAutomaticUpgrade') as "enable_automatic_upgrade",
JSON_EXTRACT(properties, '$.settings') as "settings",
JSON_EXTRACT(properties, '$.protectedSettings') as "protected_settings",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.instanceView') as "instance_view",
JSON_EXTRACT(properties, '$.suppressFailures') as "suppress_failures",
JSON_EXTRACT(properties, '$.protectedSettingsFromKeyVault') as "protected_settings_from_key_vault",
JSON_EXTRACT(properties, '$.provisionAfterExtensions') as "provision_after_extensions",
subscriptionId,
resourceGroupName,
vmScaleSetName,
instanceId,
vmExtensionName
FROM azure.compute.virtual_machine_scale_set_vm_extensions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND vmScaleSetName = 'replace-me' AND instanceId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
json_extract_path_text(properties, '$.forceUpdateTag') as "force_update_tag",
json_extract_path_text(properties, '$.publisher') as "publisher",
json_extract_path_text(properties, '$.type') as "type",
json_extract_path_text(properties, '$.typeHandlerVersion') as "type_handler_version",
json_extract_path_text(properties, '$.autoUpgradeMinorVersion') as "auto_upgrade_minor_version",
json_extract_path_text(properties, '$.enableAutomaticUpgrade') as "enable_automatic_upgrade",
json_extract_path_text(properties, '$.settings') as "settings",
json_extract_path_text(properties, '$.protectedSettings') as "protected_settings",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.instanceView') as "instance_view",
json_extract_path_text(properties, '$.suppressFailures') as "suppress_failures",
json_extract_path_text(properties, '$.protectedSettingsFromKeyVault') as "protected_settings_from_key_vault",
json_extract_path_text(properties, '$.provisionAfterExtensions') as "provision_after_extensions",
subscriptionId,
resourceGroupName,
vmScaleSetName,
instanceId,
vmExtensionName
FROM azure.compute.virtual_machine_scale_set_vm_extensions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND vmScaleSetName = 'replace-me' AND instanceId = 'replace-me';
```

</TabItem>
</Tabs>
