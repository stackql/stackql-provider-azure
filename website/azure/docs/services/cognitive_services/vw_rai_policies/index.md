--- 
title: vw_rai_policies
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_rai_policies
  - cognitive_services
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

Creates, updates, deletes, gets or lists a <code>vw_rai_policies</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_rai_policies</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cognitive_services.vw_rai_policies" /></td></tr>
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
etag as etag,
tags as tags,
JSON_EXTRACT(properties, '$.type') as "type",
JSON_EXTRACT(properties, '$.mode') as "mode",
JSON_EXTRACT(properties, '$.basePolicyName') as "base_policy_name",
JSON_EXTRACT(properties, '$.contentFilters') as "content_filters",
JSON_EXTRACT(properties, '$.customBlocklists') as "custom_blocklists",
subscriptionId,
resourceGroupName,
accountName,
raiPolicyName
FROM azure.cognitive_services.rai_policies
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
systemData as system_data,
etag as etag,
tags as tags,
json_extract_path_text(properties, '$.type') as "type",
json_extract_path_text(properties, '$.mode') as "mode",
json_extract_path_text(properties, '$.basePolicyName') as "base_policy_name",
json_extract_path_text(properties, '$.contentFilters') as "content_filters",
json_extract_path_text(properties, '$.customBlocklists') as "custom_blocklists",
subscriptionId,
resourceGroupName,
accountName,
raiPolicyName
FROM azure.cognitive_services.rai_policies
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
</Tabs>
