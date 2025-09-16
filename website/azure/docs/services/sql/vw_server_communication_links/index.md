--- 
title: vw_server_communication_links
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_server_communication_links
  - sql
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

Creates, updates, deletes, gets or lists a <code>vw_server_communication_links</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_server_communication_links</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sql.vw_server_communication_links" /></td></tr>
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
kind as kind,
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.partnerServer') as "partner_server",
subscriptionId,
resourceGroupName,
serverName,
communicationLinkName
FROM azure.sql.server_communication_links
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serverName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
kind as kind,
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.partnerServer') as "partner_server",
subscriptionId,
resourceGroupName,
serverName,
communicationLinkName
FROM azure.sql.server_communication_links
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serverName = 'replace-me';
```

</TabItem>
</Tabs>
