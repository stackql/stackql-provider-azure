--- 
title: vw_activations
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_activations
  - azure_bridge_admin
  - azure_stack
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_stack resources using SQL
custom_edit_url: null
image: /img/stackql-azure_stack-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_activations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_activations</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.azure_bridge_admin.vw_activations" /></td></tr>
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
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.azureRegistrationResourceIdentifier') as "azure_registration_resource_identifier",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.expiration') as "expiration",
JSON_EXTRACT(properties, '$.marketplaceSyndicationEnabled') as "marketplace_syndication_enabled",
JSON_EXTRACT(properties, '$.usageReportingEnabled') as "usage_reporting_enabled",
subscriptionId,
resourceGroupName,
activationName
FROM azure_stack.azure_bridge_admin.activations
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me';
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
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.azureRegistrationResourceIdentifier') as "azure_registration_resource_identifier",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.expiration') as "expiration",
json_extract_path_text(properties, '$.marketplaceSyndicationEnabled') as "marketplace_syndication_enabled",
json_extract_path_text(properties, '$.usageReportingEnabled') as "usage_reporting_enabled",
subscriptionId,
resourceGroupName,
activationName
FROM azure_stack.azure_bridge_admin.activations
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me';
```

</TabItem>
</Tabs>
