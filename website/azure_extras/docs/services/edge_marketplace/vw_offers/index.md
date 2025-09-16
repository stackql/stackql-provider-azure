--- 
title: vw_offers
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_offers
  - edge_marketplace
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

Creates, updates, deletes, gets or lists a <code>vw_offers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_offers</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.edge_marketplace.vw_offers" /></td></tr>
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
JSON_EXTRACT(properties, '$.contentVersion') as "content_version",
JSON_EXTRACT(properties, '$.contentUrl') as "content_url",
JSON_EXTRACT(properties, '$.offerContent') as "offer_content",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.marketplaceSkus') as "marketplace_skus",
resourceUri,
offerId,
subscriptionId
FROM azure_extras.edge_marketplace.offers
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.contentVersion') as "content_version",
json_extract_path_text(properties, '$.contentUrl') as "content_url",
json_extract_path_text(properties, '$.offerContent') as "offer_content",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.marketplaceSkus') as "marketplace_skus",
resourceUri,
offerId,
subscriptionId
FROM azure_extras.edge_marketplace.offers
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
