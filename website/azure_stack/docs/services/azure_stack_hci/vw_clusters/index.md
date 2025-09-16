--- 
title: vw_clusters
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_clusters
  - azure_stack_hci
  - azure_stack
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_stack resources using SQL
custom_edit_url: null
image: /img/stackql-azure_stack-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_clusters</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_clusters</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.azure_stack_hci.vw_clusters" /></td></tr>
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
identity as identity,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.connectivityStatus') as "connectivity_status",
JSON_EXTRACT(properties, '$.cloudId') as "cloud_id",
JSON_EXTRACT(properties, '$.cloudManagementEndpoint') as "cloud_management_endpoint",
JSON_EXTRACT(properties, '$.aadClientId') as "aad_client_id",
JSON_EXTRACT(properties, '$.aadTenantId') as "aad_tenant_id",
JSON_EXTRACT(properties, '$.aadApplicationObjectId') as "aad_application_object_id",
JSON_EXTRACT(properties, '$.aadServicePrincipalObjectId') as "aad_service_principal_object_id",
JSON_EXTRACT(properties, '$.softwareAssuranceProperties') as "software_assurance_properties",
JSON_EXTRACT(properties, '$.desiredProperties') as "desired_properties",
JSON_EXTRACT(properties, '$.reportedProperties') as "reported_properties",
JSON_EXTRACT(properties, '$.isolatedVmAttestationConfiguration') as "isolated_vm_attestation_configuration",
JSON_EXTRACT(properties, '$.trialDaysRemaining') as "trial_days_remaining",
JSON_EXTRACT(properties, '$.billingModel') as "billing_model",
JSON_EXTRACT(properties, '$.registrationTimestamp') as "registration_timestamp",
JSON_EXTRACT(properties, '$.lastSyncTimestamp') as "last_sync_timestamp",
JSON_EXTRACT(properties, '$.lastBillingTimestamp') as "last_billing_timestamp",
JSON_EXTRACT(properties, '$.serviceEndpoint') as "service_endpoint",
JSON_EXTRACT(properties, '$.resourceProviderObjectId') as "resource_provider_object_id",
subscriptionId,
resourceGroupName,
clusterName
FROM azure_stack.azure_stack_hci.clusters
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
identity as identity,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.connectivityStatus') as "connectivity_status",
json_extract_path_text(properties, '$.cloudId') as "cloud_id",
json_extract_path_text(properties, '$.cloudManagementEndpoint') as "cloud_management_endpoint",
json_extract_path_text(properties, '$.aadClientId') as "aad_client_id",
json_extract_path_text(properties, '$.aadTenantId') as "aad_tenant_id",
json_extract_path_text(properties, '$.aadApplicationObjectId') as "aad_application_object_id",
json_extract_path_text(properties, '$.aadServicePrincipalObjectId') as "aad_service_principal_object_id",
json_extract_path_text(properties, '$.softwareAssuranceProperties') as "software_assurance_properties",
json_extract_path_text(properties, '$.desiredProperties') as "desired_properties",
json_extract_path_text(properties, '$.reportedProperties') as "reported_properties",
json_extract_path_text(properties, '$.isolatedVmAttestationConfiguration') as "isolated_vm_attestation_configuration",
json_extract_path_text(properties, '$.trialDaysRemaining') as "trial_days_remaining",
json_extract_path_text(properties, '$.billingModel') as "billing_model",
json_extract_path_text(properties, '$.registrationTimestamp') as "registration_timestamp",
json_extract_path_text(properties, '$.lastSyncTimestamp') as "last_sync_timestamp",
json_extract_path_text(properties, '$.lastBillingTimestamp') as "last_billing_timestamp",
json_extract_path_text(properties, '$.serviceEndpoint') as "service_endpoint",
json_extract_path_text(properties, '$.resourceProviderObjectId') as "resource_provider_object_id",
subscriptionId,
resourceGroupName,
clusterName
FROM azure_stack.azure_stack_hci.clusters
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
