--- 
title: vw_marketplace_agreements
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_marketplace_agreements
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

Creates, updates, deletes, gets or lists a <code>vw_marketplace_agreements</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_marketplace_agreements</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.marketplace_ordering.vw_marketplace_agreements" /></td></tr>
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
systemData as system_data,
type as type,
JSON_EXTRACT(properties, '$.publisher') as "publisher",
JSON_EXTRACT(properties, '$.product') as "product",
JSON_EXTRACT(properties, '$.plan') as "plan",
JSON_EXTRACT(properties, '$.licenseTextLink') as "license_text_link",
JSON_EXTRACT(properties, '$.privacyPolicyLink') as "privacy_policy_link",
JSON_EXTRACT(properties, '$.marketplaceTermsLink') as "marketplace_terms_link",
JSON_EXTRACT(properties, '$.retrieveDatetime') as "retrieve_datetime",
JSON_EXTRACT(properties, '$.signature') as "signature",
JSON_EXTRACT(properties, '$.accepted') as "accepted",
subscriptionId,
offerType,
publisherId,
offerId,
planId
FROM azure_extras.marketplace_ordering.marketplace_agreements
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
systemData as system_data,
type as type,
json_extract_path_text(properties, '$.publisher') as "publisher",
json_extract_path_text(properties, '$.product') as "product",
json_extract_path_text(properties, '$.plan') as "plan",
json_extract_path_text(properties, '$.licenseTextLink') as "license_text_link",
json_extract_path_text(properties, '$.privacyPolicyLink') as "privacy_policy_link",
json_extract_path_text(properties, '$.marketplaceTermsLink') as "marketplace_terms_link",
json_extract_path_text(properties, '$.retrieveDatetime') as "retrieve_datetime",
json_extract_path_text(properties, '$.signature') as "signature",
json_extract_path_text(properties, '$.accepted') as "accepted",
subscriptionId,
offerType,
publisherId,
offerId,
planId
FROM azure_extras.marketplace_ordering.marketplace_agreements
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
