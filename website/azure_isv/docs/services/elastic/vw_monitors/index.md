--- 
title: vw_monitors
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_monitors
  - elastic
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

Creates, updates, deletes, gets or lists a <code>vw_monitors</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_monitors</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.elastic.vw_monitors" /></td></tr>
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
sku as sku,
identity as identity,
tags as tags,
systemData as system_data,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.monitoringStatus') as "monitoring_status",
JSON_EXTRACT(properties, '$.elasticProperties') as "elastic_properties",
JSON_EXTRACT(properties, '$.userInfo') as "user_info",
JSON_EXTRACT(properties, '$.planDetails') as "plan_details",
JSON_EXTRACT(properties, '$.version') as "version",
JSON_EXTRACT(properties, '$.subscriptionState') as "subscription_state",
JSON_EXTRACT(properties, '$.saaSAzureSubscriptionStatus') as "saa_s_azure_subscription_status",
JSON_EXTRACT(properties, '$.sourceCampaignName') as "source_campaign_name",
JSON_EXTRACT(properties, '$.sourceCampaignId') as "source_campaign_id",
JSON_EXTRACT(properties, '$.liftrResourceCategory') as "liftr_resource_category",
JSON_EXTRACT(properties, '$.liftrResourcePreference') as "liftr_resource_preference",
JSON_EXTRACT(properties, '$.generateApiKey') as "generate_api_key",
subscriptionId,
resourceGroupName,
monitorName
FROM azure_isv.elastic.monitors
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
sku as sku,
identity as identity,
tags as tags,
systemData as system_data,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.monitoringStatus') as "monitoring_status",
json_extract_path_text(properties, '$.elasticProperties') as "elastic_properties",
json_extract_path_text(properties, '$.userInfo') as "user_info",
json_extract_path_text(properties, '$.planDetails') as "plan_details",
json_extract_path_text(properties, '$.version') as "version",
json_extract_path_text(properties, '$.subscriptionState') as "subscription_state",
json_extract_path_text(properties, '$.saaSAzureSubscriptionStatus') as "saa_s_azure_subscription_status",
json_extract_path_text(properties, '$.sourceCampaignName') as "source_campaign_name",
json_extract_path_text(properties, '$.sourceCampaignId') as "source_campaign_id",
json_extract_path_text(properties, '$.liftrResourceCategory') as "liftr_resource_category",
json_extract_path_text(properties, '$.liftrResourcePreference') as "liftr_resource_preference",
json_extract_path_text(properties, '$.generateApiKey') as "generate_api_key",
subscriptionId,
resourceGroupName,
monitorName
FROM azure_isv.elastic.monitors
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
