--- 
title: vw_managed_database_security_alert_policies
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_managed_database_security_alert_policies
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

Creates, updates, deletes, gets or lists a <code>vw_managed_database_security_alert_policies</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_managed_database_security_alert_policies</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sql.vw_managed_database_security_alert_policies" /></td></tr>
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
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.disabledAlerts') as "disabled_alerts",
JSON_EXTRACT(properties, '$.emailAddresses') as "email_addresses",
JSON_EXTRACT(properties, '$.emailAccountAdmins') as "email_account_admins",
JSON_EXTRACT(properties, '$.storageEndpoint') as "storage_endpoint",
JSON_EXTRACT(properties, '$.storageAccountAccessKey') as "storage_account_access_key",
JSON_EXTRACT(properties, '$.retentionDays') as "retention_days",
JSON_EXTRACT(properties, '$.creationTime') as "creation_time",
subscriptionId,
resourceGroupName,
managedInstanceName,
databaseName,
securityAlertPolicyName
FROM azure.sql.managed_database_security_alert_policies
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND managedInstanceName = 'replace-me' AND databaseName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.disabledAlerts') as "disabled_alerts",
json_extract_path_text(properties, '$.emailAddresses') as "email_addresses",
json_extract_path_text(properties, '$.emailAccountAdmins') as "email_account_admins",
json_extract_path_text(properties, '$.storageEndpoint') as "storage_endpoint",
json_extract_path_text(properties, '$.storageAccountAccessKey') as "storage_account_access_key",
json_extract_path_text(properties, '$.retentionDays') as "retention_days",
json_extract_path_text(properties, '$.creationTime') as "creation_time",
subscriptionId,
resourceGroupName,
managedInstanceName,
databaseName,
securityAlertPolicyName
FROM azure.sql.managed_database_security_alert_policies
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND managedInstanceName = 'replace-me' AND databaseName = 'replace-me';
```

</TabItem>
</Tabs>
