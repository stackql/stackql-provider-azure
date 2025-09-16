--- 
title: vw_services
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_services
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

Creates, updates, deletes, gets or lists a <code>vw_services</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_services</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.communication.vw_services" /></td></tr>
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
identity as identity,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.hostName') as "host_name",
JSON_EXTRACT(properties, '$.dataLocation') as "data_location",
JSON_EXTRACT(properties, '$.notificationHubId') as "notification_hub_id",
JSON_EXTRACT(properties, '$.version') as "version",
JSON_EXTRACT(properties, '$.immutableResourceId') as "immutable_resource_id",
JSON_EXTRACT(properties, '$.linkedDomains') as "linked_domains",
subscriptionId,
resourceGroupName,
communicationServiceName
FROM azure.communication.services
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
identity as identity,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.hostName') as "host_name",
json_extract_path_text(properties, '$.dataLocation') as "data_location",
json_extract_path_text(properties, '$.notificationHubId') as "notification_hub_id",
json_extract_path_text(properties, '$.version') as "version",
json_extract_path_text(properties, '$.immutableResourceId') as "immutable_resource_id",
json_extract_path_text(properties, '$.linkedDomains') as "linked_domains",
subscriptionId,
resourceGroupName,
communicationServiceName
FROM azure.communication.services
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
