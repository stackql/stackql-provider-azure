--- 
title: vw_verified_partners
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_verified_partners
  - event_grid
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

Creates, updates, deletes, gets or lists a <code>vw_verified_partners</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_verified_partners</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.event_grid.vw_verified_partners" /></td></tr>
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
JSON_EXTRACT(properties, '$.partnerRegistrationImmutableId') as "partner_registration_immutable_id",
JSON_EXTRACT(properties, '$.organizationName') as "organization_name",
JSON_EXTRACT(properties, '$.partnerDisplayName') as "partner_display_name",
JSON_EXTRACT(properties, '$.partnerTopicDetails') as "partner_topic_details",
JSON_EXTRACT(properties, '$.partnerDestinationDetails') as "partner_destination_details",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
verifiedPartnerName
FROM azure.event_grid.verified_partners
WHERE verifiedPartnerName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.partnerRegistrationImmutableId') as "partner_registration_immutable_id",
json_extract_path_text(properties, '$.organizationName') as "organization_name",
json_extract_path_text(properties, '$.partnerDisplayName') as "partner_display_name",
json_extract_path_text(properties, '$.partnerTopicDetails') as "partner_topic_details",
json_extract_path_text(properties, '$.partnerDestinationDetails') as "partner_destination_details",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
verifiedPartnerName
FROM azure.event_grid.verified_partners
WHERE verifiedPartnerName = 'replace-me';
```

</TabItem>
</Tabs>
