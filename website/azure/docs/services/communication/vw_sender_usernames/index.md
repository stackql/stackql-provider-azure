--- 
title: vw_sender_usernames
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_sender_usernames
  - communication
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

Creates, updates, deletes, gets or lists a <code>vw_sender_usernames</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_sender_usernames</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.communication.vw_sender_usernames" /></td></tr>
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
JSON_EXTRACT(properties, '$.dataLocation') as "data_location",
JSON_EXTRACT(properties, '$.username') as "username",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
emailServiceName,
domainName,
senderUsername
FROM azure.communication.sender_usernames
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND emailServiceName = 'replace-me' AND domainName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.dataLocation') as "data_location",
json_extract_path_text(properties, '$.username') as "username",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
emailServiceName,
domainName,
senderUsername
FROM azure.communication.sender_usernames
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND emailServiceName = 'replace-me' AND domainName = 'replace-me';
```

</TabItem>
</Tabs>
