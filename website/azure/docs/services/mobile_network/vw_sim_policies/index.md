--- 
title: vw_sim_policies
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_sim_policies
  - mobile_network
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

Creates, updates, deletes, gets or lists a <code>vw_sim_policies</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_sim_policies</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.mobile_network.vw_sim_policies" /></td></tr>
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
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.siteProvisioningState') as "site_provisioning_state",
JSON_EXTRACT(properties, '$.ueAmbr') as "ue_ambr",
JSON_EXTRACT(properties, '$.defaultSlice') as "default_slice",
JSON_EXTRACT(properties, '$.rfspIndex') as "rfsp_index",
JSON_EXTRACT(properties, '$.registrationTimer') as "registration_timer",
JSON_EXTRACT(properties, '$.sliceConfigurations') as "slice_configurations",
subscriptionId,
resourceGroupName,
mobileNetworkName,
simPolicyName
FROM azure.mobile_network.sim_policies
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND mobileNetworkName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.siteProvisioningState') as "site_provisioning_state",
json_extract_path_text(properties, '$.ueAmbr') as "ue_ambr",
json_extract_path_text(properties, '$.defaultSlice') as "default_slice",
json_extract_path_text(properties, '$.rfspIndex') as "rfsp_index",
json_extract_path_text(properties, '$.registrationTimer') as "registration_timer",
json_extract_path_text(properties, '$.sliceConfigurations') as "slice_configurations",
subscriptionId,
resourceGroupName,
mobileNetworkName,
simPolicyName
FROM azure.mobile_network.sim_policies
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND mobileNetworkName = 'replace-me';
```

</TabItem>
</Tabs>
