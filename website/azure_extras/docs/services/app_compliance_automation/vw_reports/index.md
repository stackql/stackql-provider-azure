--- 
title: vw_reports
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_reports
  - app_compliance_automation
  - azure_extras
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_extras resources using SQL
custom_edit_url: null
image: /img/stackql-azure_extras-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_reports</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_reports</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.app_compliance_automation.vw_reports" /></td></tr>
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
JSON_EXTRACT(properties, '$.triggerTime') as "trigger_time",
JSON_EXTRACT(properties, '$.timeZone') as "time_zone",
JSON_EXTRACT(properties, '$.resources') as "resources",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.errors') as "errors",
JSON_EXTRACT(properties, '$.tenantId') as "tenant_id",
JSON_EXTRACT(properties, '$.offerGuid') as "offer_guid",
JSON_EXTRACT(properties, '$.nextTriggerTime') as "next_trigger_time",
JSON_EXTRACT(properties, '$.lastTriggerTime') as "last_trigger_time",
JSON_EXTRACT(properties, '$.subscriptions') as "subscriptions",
JSON_EXTRACT(properties, '$.complianceStatus') as "compliance_status",
JSON_EXTRACT(properties, '$.storageInfo') as "storage_info",
JSON_EXTRACT(properties, '$.certRecords') as "cert_records",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
reportName
FROM azure_extras.app_compliance_automation.reports
WHERE reportName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.triggerTime') as "trigger_time",
json_extract_path_text(properties, '$.timeZone') as "time_zone",
json_extract_path_text(properties, '$.resources') as "resources",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.errors') as "errors",
json_extract_path_text(properties, '$.tenantId') as "tenant_id",
json_extract_path_text(properties, '$.offerGuid') as "offer_guid",
json_extract_path_text(properties, '$.nextTriggerTime') as "next_trigger_time",
json_extract_path_text(properties, '$.lastTriggerTime') as "last_trigger_time",
json_extract_path_text(properties, '$.subscriptions') as "subscriptions",
json_extract_path_text(properties, '$.complianceStatus') as "compliance_status",
json_extract_path_text(properties, '$.storageInfo') as "storage_info",
json_extract_path_text(properties, '$.certRecords') as "cert_records",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
reportName
FROM azure_extras.app_compliance_automation.reports
WHERE reportName = 'replace-me';
```

</TabItem>
</Tabs>
