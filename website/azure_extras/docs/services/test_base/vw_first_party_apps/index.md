--- 
title: vw_first_party_apps
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_first_party_apps
  - test_base
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

Creates, updates, deletes, gets or lists a <code>vw_first_party_apps</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_first_party_apps</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.test_base.vw_first_party_apps" /></td></tr>
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
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.mediaType') as "media_type",
JSON_EXTRACT(properties, '$.architecture') as "architecture",
JSON_EXTRACT(properties, '$.channel') as "channel",
JSON_EXTRACT(properties, '$.ring') as "ring",
JSON_EXTRACT(properties, '$.supportedProducts') as "supported_products",
subscriptionId,
resourceGroupName,
testBaseAccountName,
firstPartyAppResourceName
FROM azure_extras.test_base.first_party_apps
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND testBaseAccountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.mediaType') as "media_type",
json_extract_path_text(properties, '$.architecture') as "architecture",
json_extract_path_text(properties, '$.channel') as "channel",
json_extract_path_text(properties, '$.ring') as "ring",
json_extract_path_text(properties, '$.supportedProducts') as "supported_products",
subscriptionId,
resourceGroupName,
testBaseAccountName,
firstPartyAppResourceName
FROM azure_extras.test_base.first_party_apps
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND testBaseAccountName = 'replace-me';
```

</TabItem>
</Tabs>
