--- 
title: vw_fqdn_list_local_rulestacks
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_fqdn_list_local_rulestacks
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

Creates, updates, deletes, gets or lists a <code>vw_fqdn_list_local_rulestacks</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_fqdn_list_local_rulestacks</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.paloalto.vw_fqdn_list_local_rulestacks" /></td></tr>
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
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.fqdnList') as "fqdn_list",
JSON_EXTRACT(properties, '$.etag') as "etag",
JSON_EXTRACT(properties, '$.auditComment') as "audit_comment",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
localRulestackName,
name
FROM azure_isv.paloalto.fqdn_list_local_rulestacks
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND localRulestackName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
systemData as system_data,
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.fqdnList') as "fqdn_list",
json_extract_path_text(properties, '$.etag') as "etag",
json_extract_path_text(properties, '$.auditComment') as "audit_comment",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
localRulestackName,
name
FROM azure_isv.paloalto.fqdn_list_local_rulestacks
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND localRulestackName = 'replace-me';
```

</TabItem>
</Tabs>
