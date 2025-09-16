--- 
title: vw_private_clouds
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_private_clouds
  - vmware
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

Creates, updates, deletes, gets or lists a <code>vw_private_clouds</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_private_clouds</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.vmware.vw_private_clouds" /></td></tr>
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
JSON_EXTRACT(properties, '$.managementCluster') as "management_cluster",
JSON_EXTRACT(properties, '$.internet') as "internet",
JSON_EXTRACT(properties, '$.identitySources') as "identity_sources",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.circuit') as "circuit",
JSON_EXTRACT(properties, '$.endpoints') as "endpoints",
JSON_EXTRACT(properties, '$.networkBlock') as "network_block",
JSON_EXTRACT(properties, '$.managementNetwork') as "management_network",
JSON_EXTRACT(properties, '$.provisioningNetwork') as "provisioning_network",
JSON_EXTRACT(properties, '$.vmotionNetwork') as "vmotion_network",
JSON_EXTRACT(properties, '$.vcenterPassword') as "vcenter_password",
JSON_EXTRACT(properties, '$.nsxtPassword') as "nsxt_password",
JSON_EXTRACT(properties, '$.vcenterCertificateThumbprint') as "vcenter_certificate_thumbprint",
JSON_EXTRACT(properties, '$.nsxtCertificateThumbprint') as "nsxt_certificate_thumbprint",
subscriptionId,
resourceGroupName,
privateCloudName
FROM azure_isv.vmware.private_clouds
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
sku as sku,
json_extract_path_text(properties, '$.managementCluster') as "management_cluster",
json_extract_path_text(properties, '$.internet') as "internet",
json_extract_path_text(properties, '$.identitySources') as "identity_sources",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.circuit') as "circuit",
json_extract_path_text(properties, '$.endpoints') as "endpoints",
json_extract_path_text(properties, '$.networkBlock') as "network_block",
json_extract_path_text(properties, '$.managementNetwork') as "management_network",
json_extract_path_text(properties, '$.provisioningNetwork') as "provisioning_network",
json_extract_path_text(properties, '$.vmotionNetwork') as "vmotion_network",
json_extract_path_text(properties, '$.vcenterPassword') as "vcenter_password",
json_extract_path_text(properties, '$.nsxtPassword') as "nsxt_password",
json_extract_path_text(properties, '$.vcenterCertificateThumbprint') as "vcenter_certificate_thumbprint",
json_extract_path_text(properties, '$.nsxtCertificateThumbprint') as "nsxt_certificate_thumbprint",
subscriptionId,
resourceGroupName,
privateCloudName
FROM azure_isv.vmware.private_clouds
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
