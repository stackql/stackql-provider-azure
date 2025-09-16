--- 
title: vw_firewalls
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_firewalls
  - paloalto
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

Creates, updates, deletes, gets or lists a <code>vw_firewalls</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_firewalls</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.paloalto.vw_firewalls" /></td></tr>
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
systemData as system_data,
identity as identity,
tags as tags,
JSON_EXTRACT(properties, '$.panEtag') as "pan_etag",
JSON_EXTRACT(properties, '$.networkProfile') as "network_profile",
JSON_EXTRACT(properties, '$.isPanoramaManaged') as "is_panorama_managed",
JSON_EXTRACT(properties, '$.isStrataCloudManaged') as "is_strata_cloud_managed",
JSON_EXTRACT(properties, '$.panoramaConfig') as "panorama_config",
JSON_EXTRACT(properties, '$.strataCloudManagerConfig') as "strata_cloud_manager_config",
JSON_EXTRACT(properties, '$.associatedRulestack') as "associated_rulestack",
JSON_EXTRACT(properties, '$.dnsSettings') as "dns_settings",
JSON_EXTRACT(properties, '$.frontEndSettings') as "front_end_settings",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.planData') as "plan_data",
JSON_EXTRACT(properties, '$.marketplaceDetails') as "marketplace_details",
subscriptionId,
resourceGroupName,
firewallName
FROM azure_isv.paloalto.firewalls
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
systemData as system_data,
identity as identity,
tags as tags,
json_extract_path_text(properties, '$.panEtag') as "pan_etag",
json_extract_path_text(properties, '$.networkProfile') as "network_profile",
json_extract_path_text(properties, '$.isPanoramaManaged') as "is_panorama_managed",
json_extract_path_text(properties, '$.isStrataCloudManaged') as "is_strata_cloud_managed",
json_extract_path_text(properties, '$.panoramaConfig') as "panorama_config",
json_extract_path_text(properties, '$.strataCloudManagerConfig') as "strata_cloud_manager_config",
json_extract_path_text(properties, '$.associatedRulestack') as "associated_rulestack",
json_extract_path_text(properties, '$.dnsSettings') as "dns_settings",
json_extract_path_text(properties, '$.frontEndSettings') as "front_end_settings",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.planData') as "plan_data",
json_extract_path_text(properties, '$.marketplaceDetails') as "marketplace_details",
subscriptionId,
resourceGroupName,
firewallName
FROM azure_isv.paloalto.firewalls
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
