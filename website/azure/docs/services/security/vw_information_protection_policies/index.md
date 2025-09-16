--- 
title: vw_information_protection_policies
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_information_protection_policies
  - security
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

Creates, updates, deletes, gets or lists a <code>vw_information_protection_policies</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_information_protection_policies</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.security.vw_information_protection_policies" /></td></tr>
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
systemData as system_data,
JSON_EXTRACT(properties, '$.lastModifiedUtc') as "last_modified_utc",
JSON_EXTRACT(properties, '$.version') as "version",
JSON_EXTRACT(properties, '$.labels') as "labels",
JSON_EXTRACT(properties, '$.informationTypes') as "information_types",
scope,
informationProtectionPolicyName
FROM azure.security.information_protection_policies
WHERE scope = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.lastModifiedUtc') as "last_modified_utc",
json_extract_path_text(properties, '$.version') as "version",
json_extract_path_text(properties, '$.labels') as "labels",
json_extract_path_text(properties, '$.informationTypes') as "information_types",
scope,
informationProtectionPolicyName
FROM azure.security.information_protection_policies
WHERE scope = 'replace-me';
```

</TabItem>
</Tabs>
