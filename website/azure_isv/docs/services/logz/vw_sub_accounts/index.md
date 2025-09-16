--- 
title: vw_sub_accounts
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_sub_accounts
  - logz
  - azure_isv
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_isv resources using SQL
custom_edit_url: null
image: /img/stackql-azure_isv-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_sub_accounts</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_sub_accounts</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.logz.vw_sub_accounts" /></td></tr>
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
systemData as system_data,
type as type,
identity as identity,
tags as tags,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.monitoringStatus') as "monitoring_status",
JSON_EXTRACT(properties, '$.marketplaceSubscriptionStatus') as "marketplace_subscription_status",
JSON_EXTRACT(properties, '$.logzOrganizationProperties') as "logz_organization_properties",
JSON_EXTRACT(properties, '$.userInfo') as "user_info",
JSON_EXTRACT(properties, '$.planData') as "plan_data",
JSON_EXTRACT(properties, '$.liftrResourceCategory') as "liftr_resource_category",
JSON_EXTRACT(properties, '$.liftrResourcePreference') as "liftr_resource_preference",
subscriptionId,
resourceGroupName,
monitorName,
subAccountName
FROM azure_isv.logz.sub_accounts
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND monitorName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
systemData as system_data,
type as type,
identity as identity,
tags as tags,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.monitoringStatus') as "monitoring_status",
json_extract_path_text(properties, '$.marketplaceSubscriptionStatus') as "marketplace_subscription_status",
json_extract_path_text(properties, '$.logzOrganizationProperties') as "logz_organization_properties",
json_extract_path_text(properties, '$.userInfo') as "user_info",
json_extract_path_text(properties, '$.planData') as "plan_data",
json_extract_path_text(properties, '$.liftrResourceCategory') as "liftr_resource_category",
json_extract_path_text(properties, '$.liftrResourcePreference') as "liftr_resource_preference",
subscriptionId,
resourceGroupName,
monitorName,
subAccountName
FROM azure_isv.logz.sub_accounts
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND monitorName = 'replace-me';
```

</TabItem>
</Tabs>
