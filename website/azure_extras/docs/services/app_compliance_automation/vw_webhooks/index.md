--- 
title: vw_webhooks
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_webhooks
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

Creates, updates, deletes, gets or lists a <code>vw_webhooks</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_webhooks</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.app_compliance_automation.vw_webhooks" /></td></tr>
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
JSON_EXTRACT(properties, '$.webhookId') as "webhook_id",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.tenantId') as "tenant_id",
JSON_EXTRACT(properties, '$.sendAllEvents') as "send_all_events",
JSON_EXTRACT(properties, '$.events') as "events",
JSON_EXTRACT(properties, '$.payloadUrl') as "payload_url",
JSON_EXTRACT(properties, '$.contentType') as "content_type",
JSON_EXTRACT(properties, '$.webhookKey') as "webhook_key",
JSON_EXTRACT(properties, '$.updateWebhookKey') as "update_webhook_key",
JSON_EXTRACT(properties, '$.webhookKeyEnabled') as "webhook_key_enabled",
JSON_EXTRACT(properties, '$.enableSslVerification') as "enable_ssl_verification",
JSON_EXTRACT(properties, '$.deliveryStatus') as "delivery_status",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
reportName,
webhookName
FROM azure_extras.app_compliance_automation.webhooks
WHERE reportName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.webhookId') as "webhook_id",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.tenantId') as "tenant_id",
json_extract_path_text(properties, '$.sendAllEvents') as "send_all_events",
json_extract_path_text(properties, '$.events') as "events",
json_extract_path_text(properties, '$.payloadUrl') as "payload_url",
json_extract_path_text(properties, '$.contentType') as "content_type",
json_extract_path_text(properties, '$.webhookKey') as "webhook_key",
json_extract_path_text(properties, '$.updateWebhookKey') as "update_webhook_key",
json_extract_path_text(properties, '$.webhookKeyEnabled') as "webhook_key_enabled",
json_extract_path_text(properties, '$.enableSslVerification') as "enable_ssl_verification",
json_extract_path_text(properties, '$.deliveryStatus') as "delivery_status",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
reportName,
webhookName
FROM azure_extras.app_compliance_automation.webhooks
WHERE reportName = 'replace-me';
```

</TabItem>
</Tabs>
