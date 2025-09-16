--- 
title: vw_tenant_action_groups
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_tenant_action_groups
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

Creates, updates, deletes, gets or lists a <code>vw_tenant_action_groups</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_tenant_action_groups</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.monitor.vw_tenant_action_groups" /></td></tr>
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
JSON_EXTRACT(properties, '$.groupShortName') as "group_short_name",
JSON_EXTRACT(properties, '$.enabled') as "enabled",
JSON_EXTRACT(properties, '$.emailReceivers') as "email_receivers",
JSON_EXTRACT(properties, '$.smsReceivers') as "sms_receivers",
JSON_EXTRACT(properties, '$.webhookReceivers') as "webhook_receivers",
JSON_EXTRACT(properties, '$.azureAppPushReceivers') as "azure_app_push_receivers",
JSON_EXTRACT(properties, '$.voiceReceivers') as "voice_receivers",
managementGroupId,
tenantActionGroupName,
"x-ms-client-tenant-id"
FROM azure.monitor.tenant_action_groups
WHERE managementGroupId = 'replace-me' AND "x-ms-client-tenant-id" = 'replace-me';
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
json_extract_path_text(properties, '$.groupShortName') as "group_short_name",
json_extract_path_text(properties, '$.enabled') as "enabled",
json_extract_path_text(properties, '$.emailReceivers') as "email_receivers",
json_extract_path_text(properties, '$.smsReceivers') as "sms_receivers",
json_extract_path_text(properties, '$.webhookReceivers') as "webhook_receivers",
json_extract_path_text(properties, '$.azureAppPushReceivers') as "azure_app_push_receivers",
json_extract_path_text(properties, '$.voiceReceivers') as "voice_receivers",
managementGroupId,
tenantActionGroupName,
"x-ms-client-tenant-id"
FROM azure.monitor.tenant_action_groups
WHERE managementGroupId = 'replace-me' AND "x-ms-client-tenant-id" = 'replace-me';
```

</TabItem>
</Tabs>
