--- 
title: vw_prefixes
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_prefixes
  - peering
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

Creates, updates, deletes, gets or lists a <code>vw_prefixes</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_prefixes</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.peering.vw_prefixes" /></td></tr>
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
JSON_EXTRACT(properties, '$.prefix') as "prefix",
JSON_EXTRACT(properties, '$.prefixValidationState') as "prefix_validation_state",
JSON_EXTRACT(properties, '$.learnedType') as "learned_type",
JSON_EXTRACT(properties, '$.errorMessage') as "error_message",
JSON_EXTRACT(properties, '$.events') as "events",
JSON_EXTRACT(properties, '$.peeringServicePrefixKey') as "peering_service_prefix_key",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
peeringServiceName,
prefixName
FROM azure.peering.prefixes
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND peeringServiceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.prefix') as "prefix",
json_extract_path_text(properties, '$.prefixValidationState') as "prefix_validation_state",
json_extract_path_text(properties, '$.learnedType') as "learned_type",
json_extract_path_text(properties, '$.errorMessage') as "error_message",
json_extract_path_text(properties, '$.events') as "events",
json_extract_path_text(properties, '$.peeringServicePrefixKey') as "peering_service_prefix_key",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
peeringServiceName,
prefixName
FROM azure.peering.prefixes
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND peeringServiceName = 'replace-me';
```

</TabItem>
</Tabs>
