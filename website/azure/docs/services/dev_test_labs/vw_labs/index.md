--- 
title: vw_labs
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_labs
  - dev_test_labs
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

Creates, updates, deletes, gets or lists a <code>vw_labs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_labs</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.dev_test_labs.vw_labs" /></td></tr>
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
tags as tags,
JSON_EXTRACT(properties, '$.defaultStorageAccount') as "default_storage_account",
JSON_EXTRACT(properties, '$.defaultPremiumStorageAccount') as "default_premium_storage_account",
JSON_EXTRACT(properties, '$.artifactsStorageAccount') as "artifacts_storage_account",
JSON_EXTRACT(properties, '$.premiumDataDiskStorageAccount') as "premium_data_disk_storage_account",
JSON_EXTRACT(properties, '$.vaultName') as "vault_name",
JSON_EXTRACT(properties, '$.labStorageType') as "lab_storage_type",
JSON_EXTRACT(properties, '$.mandatoryArtifactsResourceIdsLinux') as "mandatory_artifacts_resource_ids_linux",
JSON_EXTRACT(properties, '$.mandatoryArtifactsResourceIdsWindows') as "mandatory_artifacts_resource_ids_windows",
JSON_EXTRACT(properties, '$.createdDate') as "created_date",
JSON_EXTRACT(properties, '$.premiumDataDisks') as "premium_data_disks",
JSON_EXTRACT(properties, '$.environmentPermission') as "environment_permission",
JSON_EXTRACT(properties, '$.announcement') as "announcement",
JSON_EXTRACT(properties, '$.support') as "support",
JSON_EXTRACT(properties, '$.vmCreationResourceGroup') as "vm_creation_resource_group",
JSON_EXTRACT(properties, '$.publicIpId') as "public_ip_id",
JSON_EXTRACT(properties, '$.loadBalancerId') as "load_balancer_id",
JSON_EXTRACT(properties, '$.networkSecurityGroupId') as "network_security_group_id",
JSON_EXTRACT(properties, '$.extendedProperties') as "extended_properties",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.uniqueIdentifier') as "unique_identifier",
subscriptionId,
resourceGroupName,
name
FROM azure.dev_test_labs.labs
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
tags as tags,
json_extract_path_text(properties, '$.defaultStorageAccount') as "default_storage_account",
json_extract_path_text(properties, '$.defaultPremiumStorageAccount') as "default_premium_storage_account",
json_extract_path_text(properties, '$.artifactsStorageAccount') as "artifacts_storage_account",
json_extract_path_text(properties, '$.premiumDataDiskStorageAccount') as "premium_data_disk_storage_account",
json_extract_path_text(properties, '$.vaultName') as "vault_name",
json_extract_path_text(properties, '$.labStorageType') as "lab_storage_type",
json_extract_path_text(properties, '$.mandatoryArtifactsResourceIdsLinux') as "mandatory_artifacts_resource_ids_linux",
json_extract_path_text(properties, '$.mandatoryArtifactsResourceIdsWindows') as "mandatory_artifacts_resource_ids_windows",
json_extract_path_text(properties, '$.createdDate') as "created_date",
json_extract_path_text(properties, '$.premiumDataDisks') as "premium_data_disks",
json_extract_path_text(properties, '$.environmentPermission') as "environment_permission",
json_extract_path_text(properties, '$.announcement') as "announcement",
json_extract_path_text(properties, '$.support') as "support",
json_extract_path_text(properties, '$.vmCreationResourceGroup') as "vm_creation_resource_group",
json_extract_path_text(properties, '$.publicIpId') as "public_ip_id",
json_extract_path_text(properties, '$.loadBalancerId') as "load_balancer_id",
json_extract_path_text(properties, '$.networkSecurityGroupId') as "network_security_group_id",
json_extract_path_text(properties, '$.extendedProperties') as "extended_properties",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.uniqueIdentifier') as "unique_identifier",
subscriptionId,
resourceGroupName,
name
FROM azure.dev_test_labs.labs
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
