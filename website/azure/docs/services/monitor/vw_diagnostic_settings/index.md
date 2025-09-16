--- 
title: vw_diagnostic_settings
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_diagnostic_settings
  - monitor
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

Creates, updates, deletes, gets or lists a <code>vw_diagnostic_settings</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_diagnostic_settings</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.monitor.vw_diagnostic_settings" /></td></tr>
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
systemData as system_data,
JSON_EXTRACT(properties, '$.storageAccountId') as "storage_account_id",
JSON_EXTRACT(properties, '$.serviceBusRuleId') as "service_bus_rule_id",
JSON_EXTRACT(properties, '$.eventHubAuthorizationRuleId') as "event_hub_authorization_rule_id",
JSON_EXTRACT(properties, '$.eventHubName') as "event_hub_name",
JSON_EXTRACT(properties, '$.metrics') as "metrics",
JSON_EXTRACT(properties, '$.logs') as "logs",
JSON_EXTRACT(properties, '$.workspaceId') as "workspace_id",
JSON_EXTRACT(properties, '$.marketplacePartnerId') as "marketplace_partner_id",
JSON_EXTRACT(properties, '$.logAnalyticsDestinationType') as "log_analytics_destination_type",
resourceUri,
name
FROM azure.monitor.diagnostic_settings
WHERE resourceUri = 'replace-me';
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
systemData as system_data,
json_extract_path_text(properties, '$.storageAccountId') as "storage_account_id",
json_extract_path_text(properties, '$.serviceBusRuleId') as "service_bus_rule_id",
json_extract_path_text(properties, '$.eventHubAuthorizationRuleId') as "event_hub_authorization_rule_id",
json_extract_path_text(properties, '$.eventHubName') as "event_hub_name",
json_extract_path_text(properties, '$.metrics') as "metrics",
json_extract_path_text(properties, '$.logs') as "logs",
json_extract_path_text(properties, '$.workspaceId') as "workspace_id",
json_extract_path_text(properties, '$.marketplacePartnerId') as "marketplace_partner_id",
json_extract_path_text(properties, '$.logAnalyticsDestinationType') as "log_analytics_destination_type",
resourceUri,
name
FROM azure.monitor.diagnostic_settings
WHERE resourceUri = 'replace-me';
```

</TabItem>
</Tabs>
