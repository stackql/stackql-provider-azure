--- 
title: vw_global_rulestacks
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_global_rulestacks
  - paloalto
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

Creates, updates, deletes, gets or lists a <code>vw_global_rulestacks</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_global_rulestacks</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.paloalto.vw_global_rulestacks" /></td></tr>
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
identity as identity,
JSON_EXTRACT(properties, '$.panEtag') as "pan_etag",
JSON_EXTRACT(properties, '$.panLocation') as "pan_location",
JSON_EXTRACT(properties, '$.scope') as "scope",
JSON_EXTRACT(properties, '$.associatedSubscriptions') as "associated_subscriptions",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.defaultMode') as "default_mode",
JSON_EXTRACT(properties, '$.minAppIdVersion') as "min_app_id_version",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.securityServices') as "security_services",
globalRulestackName
FROM azure_isv.paloalto.global_rulestacks
WHERE globalRulestackName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
systemData as system_data,
identity as identity,
json_extract_path_text(properties, '$.panEtag') as "pan_etag",
json_extract_path_text(properties, '$.panLocation') as "pan_location",
json_extract_path_text(properties, '$.scope') as "scope",
json_extract_path_text(properties, '$.associatedSubscriptions') as "associated_subscriptions",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.defaultMode') as "default_mode",
json_extract_path_text(properties, '$.minAppIdVersion') as "min_app_id_version",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.securityServices') as "security_services",
globalRulestackName
FROM azure_isv.paloalto.global_rulestacks
WHERE globalRulestackName = 'replace-me';
```

</TabItem>
</Tabs>
