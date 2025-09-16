--- 
title: vw_clusters
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_clusters
  - log_analytics
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

Creates, updates, deletes, gets or lists a <code>vw_clusters</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_clusters</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.log_analytics.vw_clusters" /></td></tr>
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
identity as identity,
sku as sku,
tags as tags,
JSON_EXTRACT(properties, '$.clusterId') as "cluster_id",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.isDoubleEncryptionEnabled') as "is_double_encryption_enabled",
JSON_EXTRACT(properties, '$.isAvailabilityZonesEnabled') as "is_availability_zones_enabled",
JSON_EXTRACT(properties, '$.billingType') as "billing_type",
JSON_EXTRACT(properties, '$.keyVaultProperties') as "key_vault_properties",
JSON_EXTRACT(properties, '$.lastModifiedDate') as "last_modified_date",
JSON_EXTRACT(properties, '$.createdDate') as "created_date",
JSON_EXTRACT(properties, '$.associatedWorkspaces') as "associated_workspaces",
JSON_EXTRACT(properties, '$.capacityReservationProperties') as "capacity_reservation_properties",
subscriptionId,
resourceGroupName,
clusterName
FROM azure.log_analytics.clusters
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
identity as identity,
sku as sku,
tags as tags,
json_extract_path_text(properties, '$.clusterId') as "cluster_id",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.isDoubleEncryptionEnabled') as "is_double_encryption_enabled",
json_extract_path_text(properties, '$.isAvailabilityZonesEnabled') as "is_availability_zones_enabled",
json_extract_path_text(properties, '$.billingType') as "billing_type",
json_extract_path_text(properties, '$.keyVaultProperties') as "key_vault_properties",
json_extract_path_text(properties, '$.lastModifiedDate') as "last_modified_date",
json_extract_path_text(properties, '$.createdDate') as "created_date",
json_extract_path_text(properties, '$.associatedWorkspaces') as "associated_workspaces",
json_extract_path_text(properties, '$.capacityReservationProperties') as "capacity_reservation_properties",
subscriptionId,
resourceGroupName,
clusterName
FROM azure.log_analytics.clusters
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
