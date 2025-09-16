--- 
title: vw_shared_private_link_resources
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_shared_private_link_resources
  - web_pubsub
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

Creates, updates, deletes, gets or lists a <code>vw_shared_private_link_resources</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_shared_private_link_resources</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.web_pubsub.vw_shared_private_link_resources" /></td></tr>
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
JSON_EXTRACT(properties, '$.groupId') as "group_id",
JSON_EXTRACT(properties, '$.privateLinkResourceId') as "private_link_resource_id",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.requestMessage') as "request_message",
JSON_EXTRACT(properties, '$.fqdns') as "fqdns",
JSON_EXTRACT(properties, '$.status') as "status",
subscriptionId,
resourceGroupName,
resourceName,
sharedPrivateLinkResourceName
FROM azure.web_pubsub.shared_private_link_resources
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.groupId') as "group_id",
json_extract_path_text(properties, '$.privateLinkResourceId') as "private_link_resource_id",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.requestMessage') as "request_message",
json_extract_path_text(properties, '$.fqdns') as "fqdns",
json_extract_path_text(properties, '$.status') as "status",
subscriptionId,
resourceGroupName,
resourceName,
sharedPrivateLinkResourceName
FROM azure.web_pubsub.shared_private_link_resources
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me';
```

</TabItem>
</Tabs>
