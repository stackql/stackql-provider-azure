--- 
title: vw_commitment_plans
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_commitment_plans
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

Creates, updates, deletes, gets or lists a <code>vw_commitment_plans</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_commitment_plans</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cognitive_services.vw_commitment_plans" /></td></tr>
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
etag as etag,
kind as kind,
sku as sku,
tags as tags,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.commitmentPlanGuid') as "commitment_plan_guid",
JSON_EXTRACT(properties, '$.hostingModel') as "hosting_model",
JSON_EXTRACT(properties, '$.planType') as "plan_type",
JSON_EXTRACT(properties, '$.current') as "current",
JSON_EXTRACT(properties, '$.autoRenew') as "auto_renew",
JSON_EXTRACT(properties, '$.next') as "next",
JSON_EXTRACT(properties, '$.last') as "last",
JSON_EXTRACT(properties, '$.provisioningIssues') as "provisioning_issues",
subscriptionId,
resourceGroupName,
accountName,
commitmentPlanName
FROM azure.cognitive_services.commitment_plans
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
systemData as system_data,
etag as etag,
kind as kind,
sku as sku,
tags as tags,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.commitmentPlanGuid') as "commitment_plan_guid",
json_extract_path_text(properties, '$.hostingModel') as "hosting_model",
json_extract_path_text(properties, '$.planType') as "plan_type",
json_extract_path_text(properties, '$.current') as "current",
json_extract_path_text(properties, '$.autoRenew') as "auto_renew",
json_extract_path_text(properties, '$.next') as "next",
json_extract_path_text(properties, '$.last') as "last",
json_extract_path_text(properties, '$.provisioningIssues') as "provisioning_issues",
subscriptionId,
resourceGroupName,
accountName,
commitmentPlanName
FROM azure.cognitive_services.commitment_plans
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
</Tabs>
