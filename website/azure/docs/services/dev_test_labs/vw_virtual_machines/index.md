--- 
title: vw_virtual_machines
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_virtual_machines
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

Creates, updates, deletes, gets or lists a <code>vw_virtual_machines</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_virtual_machines</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.dev_test_labs.vw_virtual_machines" /></td></tr>
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
JSON_EXTRACT(properties, '$.notes') as "notes",
JSON_EXTRACT(properties, '$.ownerObjectId') as "owner_object_id",
JSON_EXTRACT(properties, '$.ownerUserPrincipalName') as "owner_user_principal_name",
JSON_EXTRACT(properties, '$.createdByUserId') as "created_by_user_id",
JSON_EXTRACT(properties, '$.createdByUser') as "created_by_user",
JSON_EXTRACT(properties, '$.createdDate') as "created_date",
JSON_EXTRACT(properties, '$.computeId') as "compute_id",
JSON_EXTRACT(properties, '$.customImageId') as "custom_image_id",
JSON_EXTRACT(properties, '$.osType') as "os_type",
JSON_EXTRACT(properties, '$.size') as "size",
JSON_EXTRACT(properties, '$.userName') as "user_name",
JSON_EXTRACT(properties, '$.password') as "password",
JSON_EXTRACT(properties, '$.sshKey') as "ssh_key",
JSON_EXTRACT(properties, '$.isAuthenticationWithSshKey') as "is_authentication_with_ssh_key",
JSON_EXTRACT(properties, '$.fqdn') as "fqdn",
JSON_EXTRACT(properties, '$.labSubnetName') as "lab_subnet_name",
JSON_EXTRACT(properties, '$.labVirtualNetworkId') as "lab_virtual_network_id",
JSON_EXTRACT(properties, '$.disallowPublicIpAddress') as "disallow_public_ip_address",
JSON_EXTRACT(properties, '$.artifacts') as "artifacts",
JSON_EXTRACT(properties, '$.artifactDeploymentStatus') as "artifact_deployment_status",
JSON_EXTRACT(properties, '$.galleryImageReference') as "gallery_image_reference",
JSON_EXTRACT(properties, '$.planId') as "plan_id",
JSON_EXTRACT(properties, '$.computeVm') as "compute_vm",
JSON_EXTRACT(properties, '$.networkInterface') as "network_interface",
JSON_EXTRACT(properties, '$.applicableSchedule') as "applicable_schedule",
JSON_EXTRACT(properties, '$.expirationDate') as "expiration_date",
JSON_EXTRACT(properties, '$.allowClaim') as "allow_claim",
JSON_EXTRACT(properties, '$.storageType') as "storage_type",
JSON_EXTRACT(properties, '$.virtualMachineCreationSource') as "virtual_machine_creation_source",
JSON_EXTRACT(properties, '$.environmentId') as "environment_id",
JSON_EXTRACT(properties, '$.dataDiskParameters') as "data_disk_parameters",
JSON_EXTRACT(properties, '$.scheduleParameters') as "schedule_parameters",
JSON_EXTRACT(properties, '$.lastKnownPowerState') as "last_known_power_state",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.uniqueIdentifier') as "unique_identifier",
subscriptionId,
resourceGroupName,
labName,
name
FROM azure.dev_test_labs.virtual_machines
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND labName = 'replace-me';
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
json_extract_path_text(properties, '$.notes') as "notes",
json_extract_path_text(properties, '$.ownerObjectId') as "owner_object_id",
json_extract_path_text(properties, '$.ownerUserPrincipalName') as "owner_user_principal_name",
json_extract_path_text(properties, '$.createdByUserId') as "created_by_user_id",
json_extract_path_text(properties, '$.createdByUser') as "created_by_user",
json_extract_path_text(properties, '$.createdDate') as "created_date",
json_extract_path_text(properties, '$.computeId') as "compute_id",
json_extract_path_text(properties, '$.customImageId') as "custom_image_id",
json_extract_path_text(properties, '$.osType') as "os_type",
json_extract_path_text(properties, '$.size') as "size",
json_extract_path_text(properties, '$.userName') as "user_name",
json_extract_path_text(properties, '$.password') as "password",
json_extract_path_text(properties, '$.sshKey') as "ssh_key",
json_extract_path_text(properties, '$.isAuthenticationWithSshKey') as "is_authentication_with_ssh_key",
json_extract_path_text(properties, '$.fqdn') as "fqdn",
json_extract_path_text(properties, '$.labSubnetName') as "lab_subnet_name",
json_extract_path_text(properties, '$.labVirtualNetworkId') as "lab_virtual_network_id",
json_extract_path_text(properties, '$.disallowPublicIpAddress') as "disallow_public_ip_address",
json_extract_path_text(properties, '$.artifacts') as "artifacts",
json_extract_path_text(properties, '$.artifactDeploymentStatus') as "artifact_deployment_status",
json_extract_path_text(properties, '$.galleryImageReference') as "gallery_image_reference",
json_extract_path_text(properties, '$.planId') as "plan_id",
json_extract_path_text(properties, '$.computeVm') as "compute_vm",
json_extract_path_text(properties, '$.networkInterface') as "network_interface",
json_extract_path_text(properties, '$.applicableSchedule') as "applicable_schedule",
json_extract_path_text(properties, '$.expirationDate') as "expiration_date",
json_extract_path_text(properties, '$.allowClaim') as "allow_claim",
json_extract_path_text(properties, '$.storageType') as "storage_type",
json_extract_path_text(properties, '$.virtualMachineCreationSource') as "virtual_machine_creation_source",
json_extract_path_text(properties, '$.environmentId') as "environment_id",
json_extract_path_text(properties, '$.dataDiskParameters') as "data_disk_parameters",
json_extract_path_text(properties, '$.scheduleParameters') as "schedule_parameters",
json_extract_path_text(properties, '$.lastKnownPowerState') as "last_known_power_state",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.uniqueIdentifier') as "unique_identifier",
subscriptionId,
resourceGroupName,
labName,
name
FROM azure.dev_test_labs.virtual_machines
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND labName = 'replace-me';
```

</TabItem>
</Tabs>
