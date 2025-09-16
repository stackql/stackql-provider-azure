--- 
title: vw_connections
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_connections
  - data_transfer
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

Creates, updates, deletes, gets or lists a <code>vw_connections</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_connections</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_transfer.vw_connections" /></td></tr>
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
JSON_EXTRACT(properties, '$.pipeline') as "pipeline",
JSON_EXTRACT(properties, '$.direction') as "direction",
JSON_EXTRACT(properties, '$.justification') as "justification",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.statusReason') as "status_reason",
JSON_EXTRACT(properties, '$.linkStatus') as "link_status",
JSON_EXTRACT(properties, '$.linkedConnectionId') as "linked_connection_id",
JSON_EXTRACT(properties, '$.flowTypes') as "flow_types",
JSON_EXTRACT(properties, '$.requirementId') as "requirement_id",
JSON_EXTRACT(properties, '$.remoteSubscriptionId') as "remote_subscription_id",
JSON_EXTRACT(properties, '$.approver') as "approver",
JSON_EXTRACT(properties, '$.pin') as "pin",
JSON_EXTRACT(properties, '$.dateSubmitted') as "date_submitted",
JSON_EXTRACT(properties, '$.primaryContact') as "primary_contact",
JSON_EXTRACT(properties, '$.secondaryContacts') as "secondary_contacts",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.policies') as "policies",
JSON_EXTRACT(properties, '$.schemas') as "schemas",
subscriptionId,
resourceGroupName,
connectionName
FROM azure.data_transfer.connections
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.pipeline') as "pipeline",
json_extract_path_text(properties, '$.direction') as "direction",
json_extract_path_text(properties, '$.justification') as "justification",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.statusReason') as "status_reason",
json_extract_path_text(properties, '$.linkStatus') as "link_status",
json_extract_path_text(properties, '$.linkedConnectionId') as "linked_connection_id",
json_extract_path_text(properties, '$.flowTypes') as "flow_types",
json_extract_path_text(properties, '$.requirementId') as "requirement_id",
json_extract_path_text(properties, '$.remoteSubscriptionId') as "remote_subscription_id",
json_extract_path_text(properties, '$.approver') as "approver",
json_extract_path_text(properties, '$.pin') as "pin",
json_extract_path_text(properties, '$.dateSubmitted') as "date_submitted",
json_extract_path_text(properties, '$.primaryContact') as "primary_contact",
json_extract_path_text(properties, '$.secondaryContacts') as "secondary_contacts",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.policies') as "policies",
json_extract_path_text(properties, '$.schemas') as "schemas",
subscriptionId,
resourceGroupName,
connectionName
FROM azure.data_transfer.connections
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
