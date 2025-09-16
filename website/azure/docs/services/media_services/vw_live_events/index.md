--- 
title: vw_live_events
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_live_events
  - media_services
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

Creates, updates, deletes, gets or lists a <code>vw_live_events</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_live_events</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.media_services.vw_live_events" /></td></tr>
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
tags as tags,
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.input') as "input",
JSON_EXTRACT(properties, '$.preview') as "preview",
JSON_EXTRACT(properties, '$.encoding') as "encoding",
JSON_EXTRACT(properties, '$.transcriptions') as "transcriptions",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.resourceState') as "resource_state",
JSON_EXTRACT(properties, '$.crossSiteAccessPolicies') as "cross_site_access_policies",
JSON_EXTRACT(properties, '$.useStaticHostname') as "use_static_hostname",
JSON_EXTRACT(properties, '$.hostnamePrefix') as "hostname_prefix",
JSON_EXTRACT(properties, '$.streamOptions') as "stream_options",
JSON_EXTRACT(properties, '$.created') as "created",
JSON_EXTRACT(properties, '$.lastModified') as "last_modified",
subscriptionId,
resourceGroupName,
accountName,
liveEventName
FROM azure.media_services.live_events
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
systemData as system_data,
tags as tags,
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.input') as "input",
json_extract_path_text(properties, '$.preview') as "preview",
json_extract_path_text(properties, '$.encoding') as "encoding",
json_extract_path_text(properties, '$.transcriptions') as "transcriptions",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.resourceState') as "resource_state",
json_extract_path_text(properties, '$.crossSiteAccessPolicies') as "cross_site_access_policies",
json_extract_path_text(properties, '$.useStaticHostname') as "use_static_hostname",
json_extract_path_text(properties, '$.hostnamePrefix') as "hostname_prefix",
json_extract_path_text(properties, '$.streamOptions') as "stream_options",
json_extract_path_text(properties, '$.created') as "created",
json_extract_path_text(properties, '$.lastModified') as "last_modified",
subscriptionId,
resourceGroupName,
accountName,
liveEventName
FROM azure.media_services.live_events
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
</Tabs>
