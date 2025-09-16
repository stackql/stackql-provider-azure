--- 
title: vw_replication_alert_settings
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_replication_alert_settings
  - recovery_services_site_recovery
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

Creates, updates, deletes, gets or lists a <code>vw_replication_alert_settings</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_replication_alert_settings</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.recovery_services_site_recovery.vw_replication_alert_settings" /></td></tr>
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
JSON_EXTRACT(properties, '$.sendToOwners') as "send_to_owners",
JSON_EXTRACT(properties, '$.customEmailAddresses') as "custom_email_addresses",
JSON_EXTRACT(properties, '$.locale') as "locale",
subscriptionId,
resourceGroupName,
resourceName,
alertSettingName
FROM azure.recovery_services_site_recovery.replication_alert_settings
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
json_extract_path_text(properties, '$.sendToOwners') as "send_to_owners",
json_extract_path_text(properties, '$.customEmailAddresses') as "custom_email_addresses",
json_extract_path_text(properties, '$.locale') as "locale",
subscriptionId,
resourceGroupName,
resourceName,
alertSettingName
FROM azure.recovery_services_site_recovery.replication_alert_settings
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me';
```

</TabItem>
</Tabs>
