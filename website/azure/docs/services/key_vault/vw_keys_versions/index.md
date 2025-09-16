--- 
title: vw_keys_versions
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_keys_versions
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

Creates, updates, deletes, gets or lists a <code>vw_keys_versions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_keys_versions</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.key_vault.vw_keys_versions" /></td></tr>
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
JSON_EXTRACT(properties, '$.attributes') as "attributes",
JSON_EXTRACT(properties, '$.kty') as "kty",
JSON_EXTRACT(properties, '$.keyOps') as "key_ops",
JSON_EXTRACT(properties, '$.keySize') as "key_size",
JSON_EXTRACT(properties, '$.curveName') as "curve_name",
JSON_EXTRACT(properties, '$.keyUri') as "key_uri",
JSON_EXTRACT(properties, '$.keyUriWithVersion') as "key_uri_with_version",
JSON_EXTRACT(properties, '$.rotationPolicy') as "rotation_policy",
JSON_EXTRACT(properties, '$.release_policy') as "release_policy",
subscriptionId,
resourceGroupName,
vaultName,
keyName,
keyVersion
FROM azure.key_vault.keys_versions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND vaultName = 'replace-me' AND keyName = 'replace-me';
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
json_extract_path_text(properties, '$.attributes') as "attributes",
json_extract_path_text(properties, '$.kty') as "kty",
json_extract_path_text(properties, '$.keyOps') as "key_ops",
json_extract_path_text(properties, '$.keySize') as "key_size",
json_extract_path_text(properties, '$.curveName') as "curve_name",
json_extract_path_text(properties, '$.keyUri') as "key_uri",
json_extract_path_text(properties, '$.keyUriWithVersion') as "key_uri_with_version",
json_extract_path_text(properties, '$.rotationPolicy') as "rotation_policy",
json_extract_path_text(properties, '$.release_policy') as "release_policy",
subscriptionId,
resourceGroupName,
vaultName,
keyName,
keyVersion
FROM azure.key_vault.keys_versions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND vaultName = 'replace-me' AND keyName = 'replace-me';
```

</TabItem>
</Tabs>
