--- 
title: vw_iac_profiles
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_iac_profiles
  - developer_hub
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

Creates, updates, deletes, gets or lists a <code>vw_iac_profiles</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_iac_profiles</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.developer_hub.vw_iac_profiles" /></td></tr>
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
etag as etag,
JSON_EXTRACT(properties, '$.githubProfile') as "github_profile",
JSON_EXTRACT(properties, '$.terraformProfile') as "terraform_profile",
JSON_EXTRACT(properties, '$.stages') as "stages",
JSON_EXTRACT(properties, '$.templates') as "templates",
subscriptionId,
resourceGroupName,
iacProfileName
FROM azure_extras.developer_hub.iac_profiles
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
etag as etag,
json_extract_path_text(properties, '$.githubProfile') as "github_profile",
json_extract_path_text(properties, '$.terraformProfile') as "terraform_profile",
json_extract_path_text(properties, '$.stages') as "stages",
json_extract_path_text(properties, '$.templates') as "templates",
subscriptionId,
resourceGroupName,
iacProfileName
FROM azure_extras.developer_hub.iac_profiles
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
