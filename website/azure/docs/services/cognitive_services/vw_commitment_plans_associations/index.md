--- 
title: vw_commitment_plans_associations
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_commitment_plans_associations
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

Creates, updates, deletes, gets or lists a <code>vw_commitment_plans_associations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_commitment_plans_associations</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cognitive_services.vw_commitment_plans_associations" /></td></tr>
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
JSON_EXTRACT(properties, '$.accountId') as "account_id",
subscriptionId,
resourceGroupName,
commitmentPlanName,
commitmentPlanAssociationName
FROM azure.cognitive_services.commitment_plans_associations
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND commitmentPlanName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
systemData as system_data,
etag as etag,
tags as tags,
json_extract_path_text(properties, '$.accountId') as "account_id",
subscriptionId,
resourceGroupName,
commitmentPlanName,
commitmentPlanAssociationName
FROM azure.cognitive_services.commitment_plans_associations
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND commitmentPlanName = 'replace-me';
```

</TabItem>
</Tabs>
