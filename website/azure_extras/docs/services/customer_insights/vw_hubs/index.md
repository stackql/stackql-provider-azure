--- 
title: vw_hubs
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_hubs
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

Creates, updates, deletes, gets or lists a <code>vw_hubs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_hubs</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.customer_insights.vw_hubs" /></td></tr>
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
tags as tags,
JSON_EXTRACT(properties, '$.apiEndpoint') as "api_endpoint",
JSON_EXTRACT(properties, '$.webEndpoint') as "web_endpoint",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.tenantFeatures') as "tenant_features",
JSON_EXTRACT(properties, '$.hubBillingInfo') as "hub_billing_info",
subscriptionId,
resourceGroupName,
hubName
FROM azure_extras.customer_insights.hubs
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
tags as tags,
json_extract_path_text(properties, '$.apiEndpoint') as "api_endpoint",
json_extract_path_text(properties, '$.webEndpoint') as "web_endpoint",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.tenantFeatures') as "tenant_features",
json_extract_path_text(properties, '$.hubBillingInfo') as "hub_billing_info",
subscriptionId,
resourceGroupName,
hubName
FROM azure_extras.customer_insights.hubs
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
