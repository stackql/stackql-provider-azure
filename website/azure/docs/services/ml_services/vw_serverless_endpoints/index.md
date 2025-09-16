--- 
title: vw_serverless_endpoints
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_serverless_endpoints
  - ml_services
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

Creates, updates, deletes, gets or lists a <code>vw_serverless_endpoints</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_serverless_endpoints</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.ml_services.vw_serverless_endpoints" /></td></tr>
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
tags as tags,
identity as identity,
kind as kind,
sku as sku,
JSON_EXTRACT(properties, '$.authMode') as "auth_mode",
JSON_EXTRACT(properties, '$.contentSafety') as "content_safety",
JSON_EXTRACT(properties, '$.endpointState') as "endpoint_state",
JSON_EXTRACT(properties, '$.inferenceEndpoint') as "inference_endpoint",
JSON_EXTRACT(properties, '$.marketplaceSubscriptionId') as "marketplace_subscription_id",
JSON_EXTRACT(properties, '$.modelSettings') as "model_settings",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
workspaceName,
name
FROM azure.ml_services.serverless_endpoints
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
identity as identity,
kind as kind,
sku as sku,
json_extract_path_text(properties, '$.authMode') as "auth_mode",
json_extract_path_text(properties, '$.contentSafety') as "content_safety",
json_extract_path_text(properties, '$.endpointState') as "endpoint_state",
json_extract_path_text(properties, '$.inferenceEndpoint') as "inference_endpoint",
json_extract_path_text(properties, '$.marketplaceSubscriptionId') as "marketplace_subscription_id",
json_extract_path_text(properties, '$.modelSettings') as "model_settings",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
workspaceName,
name
FROM azure.ml_services.serverless_endpoints
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
</Tabs>
