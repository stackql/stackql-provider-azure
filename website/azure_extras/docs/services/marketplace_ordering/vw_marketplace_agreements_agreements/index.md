--- 
title: vw_marketplace_agreements_agreements
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_marketplace_agreements_agreements
  - marketplace_ordering
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

Creates, updates, deletes, gets or lists a <code>vw_marketplace_agreements_agreements</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_marketplace_agreements_agreements</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.marketplace_ordering.vw_marketplace_agreements_agreements" /></td></tr>
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
JSON_EXTRACT(properties, '$.id') as "id",
JSON_EXTRACT(properties, '$.publisher') as "publisher",
JSON_EXTRACT(properties, '$.offer') as "offer",
JSON_EXTRACT(properties, '$.signDate') as "sign_date",
JSON_EXTRACT(properties, '$.cancelDate') as "cancel_date",
JSON_EXTRACT(properties, '$.state') as "state",
subscriptionId,
publisherId,
offerId,
planId
FROM azure_extras.marketplace_ordering.marketplace_agreements_agreements
WHERE subscriptionId = 'replace-me' AND publisherId = 'replace-me' AND offerId = 'replace-me' AND planId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.id') as "id",
json_extract_path_text(properties, '$.publisher') as "publisher",
json_extract_path_text(properties, '$.offer') as "offer",
json_extract_path_text(properties, '$.signDate') as "sign_date",
json_extract_path_text(properties, '$.cancelDate') as "cancel_date",
json_extract_path_text(properties, '$.state') as "state",
subscriptionId,
publisherId,
offerId,
planId
FROM azure_extras.marketplace_ordering.marketplace_agreements_agreements
WHERE subscriptionId = 'replace-me' AND publisherId = 'replace-me' AND offerId = 'replace-me' AND planId = 'replace-me';
```

</TabItem>
</Tabs>
