--- 
title: vw_authorization_policies
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_authorization_policies
  - customer_insights
  - azure_extras
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_extras resources using SQL
custom_edit_url: null
image: /img/stackql-azure_extras-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_authorization_policies</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_authorization_policies</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.customer_insights.vw_authorization_policies" /></td></tr>
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
type as type,
JSON_EXTRACT(properties, '$.policyName') as "policy_name",
JSON_EXTRACT(properties, '$.permissions') as "permissions",
JSON_EXTRACT(properties, '$.primaryKey') as "primary_key",
JSON_EXTRACT(properties, '$.secondaryKey') as "secondary_key",
subscriptionId,
resourceGroupName,
hubName,
authorizationPolicyName
FROM azure_extras.customer_insights.authorization_policies
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND hubName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.policyName') as "policy_name",
json_extract_path_text(properties, '$.permissions') as "permissions",
json_extract_path_text(properties, '$.primaryKey') as "primary_key",
json_extract_path_text(properties, '$.secondaryKey') as "secondary_key",
subscriptionId,
resourceGroupName,
hubName,
authorizationPolicyName
FROM azure_extras.customer_insights.authorization_policies
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND hubName = 'replace-me';
```

</TabItem>
</Tabs>
