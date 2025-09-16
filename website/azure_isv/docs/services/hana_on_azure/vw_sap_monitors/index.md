--- 
title: vw_sap_monitors
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_sap_monitors
  - hana_on_azure
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

Creates, updates, deletes, gets or lists a <code>vw_sap_monitors</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_sap_monitors</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.hana_on_azure.vw_sap_monitors" /></td></tr>
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
JSON_EXTRACT(properties, '$.managedResourceGroupName') as "managed_resource_group_name",
JSON_EXTRACT(properties, '$.logAnalyticsWorkspaceArmId') as "log_analytics_workspace_arm_id",
JSON_EXTRACT(properties, '$.enableCustomerAnalytics') as "enable_customer_analytics",
JSON_EXTRACT(properties, '$.logAnalyticsWorkspaceId') as "log_analytics_workspace_id",
JSON_EXTRACT(properties, '$.logAnalyticsWorkspaceSharedKey') as "log_analytics_workspace_shared_key",
JSON_EXTRACT(properties, '$.sapMonitorCollectorVersion') as "sap_monitor_collector_version",
JSON_EXTRACT(properties, '$.monitorSubnet') as "monitor_subnet",
subscriptionId,
resourceGroupName,
sapMonitorName
FROM azure_isv.hana_on_azure.sap_monitors
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.managedResourceGroupName') as "managed_resource_group_name",
json_extract_path_text(properties, '$.logAnalyticsWorkspaceArmId') as "log_analytics_workspace_arm_id",
json_extract_path_text(properties, '$.enableCustomerAnalytics') as "enable_customer_analytics",
json_extract_path_text(properties, '$.logAnalyticsWorkspaceId') as "log_analytics_workspace_id",
json_extract_path_text(properties, '$.logAnalyticsWorkspaceSharedKey') as "log_analytics_workspace_shared_key",
json_extract_path_text(properties, '$.sapMonitorCollectorVersion') as "sap_monitor_collector_version",
json_extract_path_text(properties, '$.monitorSubnet') as "monitor_subnet",
subscriptionId,
resourceGroupName,
sapMonitorName
FROM azure_isv.hana_on_azure.sap_monitors
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
