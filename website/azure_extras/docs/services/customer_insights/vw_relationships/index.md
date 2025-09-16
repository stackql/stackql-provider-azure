--- 
title: vw_relationships
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_relationships
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

Creates, updates, deletes, gets or lists a <code>vw_relationships</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_relationships</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.customer_insights.vw_relationships" /></td></tr>
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
JSON_EXTRACT(properties, '$.cardinality') as "cardinality",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.expiryDateTimeUtc') as "expiry_date_time_utc",
JSON_EXTRACT(properties, '$.fields') as "fields",
JSON_EXTRACT(properties, '$.lookupMappings') as "lookup_mappings",
JSON_EXTRACT(properties, '$.profileType') as "profile_type",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.relationshipName') as "relationship_name",
JSON_EXTRACT(properties, '$.relatedProfileType') as "related_profile_type",
JSON_EXTRACT(properties, '$.relationshipGuidId') as "relationship_guid_id",
JSON_EXTRACT(properties, '$.tenantId') as "tenant_id",
subscriptionId,
resourceGroupName,
hubName,
relationshipName
FROM azure_extras.customer_insights.relationships
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND hubName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.cardinality') as "cardinality",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.expiryDateTimeUtc') as "expiry_date_time_utc",
json_extract_path_text(properties, '$.fields') as "fields",
json_extract_path_text(properties, '$.lookupMappings') as "lookup_mappings",
json_extract_path_text(properties, '$.profileType') as "profile_type",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.relationshipName') as "relationship_name",
json_extract_path_text(properties, '$.relatedProfileType') as "related_profile_type",
json_extract_path_text(properties, '$.relationshipGuidId') as "relationship_guid_id",
json_extract_path_text(properties, '$.tenantId') as "tenant_id",
subscriptionId,
resourceGroupName,
hubName,
relationshipName
FROM azure_extras.customer_insights.relationships
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND hubName = 'replace-me';
```

</TabItem>
</Tabs>
