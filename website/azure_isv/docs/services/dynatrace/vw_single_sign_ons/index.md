--- 
title: vw_single_sign_ons
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_single_sign_ons
  - dynatrace
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

Creates, updates, deletes, gets or lists a <code>vw_single_sign_ons</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_single_sign_ons</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.dynatrace.vw_single_sign_ons" /></td></tr>
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
systemData as system_data,
JSON_EXTRACT(properties, '$.singleSignOnState') as "single_sign_on_state",
JSON_EXTRACT(properties, '$.enterpriseAppId') as "enterprise_app_id",
JSON_EXTRACT(properties, '$.singleSignOnUrl') as "single_sign_on_url",
JSON_EXTRACT(properties, '$.aadDomains') as "aad_domains",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
monitorName,
configurationName
FROM azure_isv.dynatrace.single_sign_ons
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND monitorName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
systemData as system_data,
json_extract_path_text(properties, '$.singleSignOnState') as "single_sign_on_state",
json_extract_path_text(properties, '$.enterpriseAppId') as "enterprise_app_id",
json_extract_path_text(properties, '$.singleSignOnUrl') as "single_sign_on_url",
json_extract_path_text(properties, '$.aadDomains') as "aad_domains",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
monitorName,
configurationName
FROM azure_isv.dynatrace.single_sign_ons
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND monitorName = 'replace-me';
```

</TabItem>
</Tabs>
