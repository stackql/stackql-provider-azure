--- 
title: vw_solutions
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_solutions
  - ag_food_platform
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

Creates, updates, deletes, gets or lists a <code>vw_solutions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_solutions</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.ag_food_platform.vw_solutions" /></td></tr>
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
eTag as e_tag,
JSON_EXTRACT(properties, '$.partnerId') as "partner_id",
JSON_EXTRACT(properties, '$.saasSubscriptionId') as "saas_subscription_id",
JSON_EXTRACT(properties, '$.saasSubscriptionName') as "saas_subscription_name",
JSON_EXTRACT(properties, '$.marketplacePublisherId') as "marketplace_publisher_id",
JSON_EXTRACT(properties, '$.planId') as "plan_id",
JSON_EXTRACT(properties, '$.roleAssignmentId') as "role_assignment_id",
JSON_EXTRACT(properties, '$.offerId') as "offer_id",
JSON_EXTRACT(properties, '$.termId') as "term_id",
subscriptionId,
resourceGroupName,
dataManagerForAgricultureResourceName,
solutionId
FROM azure_extras.ag_food_platform.solutions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND dataManagerForAgricultureResourceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
systemData as system_data,
eTag as e_tag,
json_extract_path_text(properties, '$.partnerId') as "partner_id",
json_extract_path_text(properties, '$.saasSubscriptionId') as "saas_subscription_id",
json_extract_path_text(properties, '$.saasSubscriptionName') as "saas_subscription_name",
json_extract_path_text(properties, '$.marketplacePublisherId') as "marketplace_publisher_id",
json_extract_path_text(properties, '$.planId') as "plan_id",
json_extract_path_text(properties, '$.roleAssignmentId') as "role_assignment_id",
json_extract_path_text(properties, '$.offerId') as "offer_id",
json_extract_path_text(properties, '$.termId') as "term_id",
subscriptionId,
resourceGroupName,
dataManagerForAgricultureResourceName,
solutionId
FROM azure_extras.ag_food_platform.solutions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND dataManagerForAgricultureResourceName = 'replace-me';
```

</TabItem>
</Tabs>
