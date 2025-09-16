--- 
title: vw_secrets
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_secrets
  - key_vault
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

Creates, updates, deletes, gets or lists a <code>vw_secrets</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_secrets</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.key_vault.vw_secrets" /></td></tr>
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
JSON_EXTRACT(properties, '$.value') as "value",
JSON_EXTRACT(properties, '$.contentType') as "content_type",
JSON_EXTRACT(properties, '$.attributes') as "attributes",
JSON_EXTRACT(properties, '$.secretUri') as "secret_uri",
JSON_EXTRACT(properties, '$.secretUriWithVersion') as "secret_uri_with_version",
subscriptionId,
resourceGroupName,
vaultName,
secretName
FROM azure.key_vault.secrets
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND vaultName = 'replace-me';
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
json_extract_path_text(properties, '$.value') as "value",
json_extract_path_text(properties, '$.contentType') as "content_type",
json_extract_path_text(properties, '$.attributes') as "attributes",
json_extract_path_text(properties, '$.secretUri') as "secret_uri",
json_extract_path_text(properties, '$.secretUriWithVersion') as "secret_uri_with_version",
subscriptionId,
resourceGroupName,
vaultName,
secretName
FROM azure.key_vault.secrets
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND vaultName = 'replace-me';
```

</TabItem>
</Tabs>
